@interface CSCoverSheetExternalViewControllerBase
- (CSCoverSheetViewController)coverSheetViewController;
- (id)_presenter;
- (void)_registerAsExternalProviderIfNeeded;
- (void)_unregisterAsExternalProvider;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CSCoverSheetExternalViewControllerBase

- (id)_presenter
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetExternalViewControllerBase;
  _presenter = [(CSCoverSheetViewControllerBase *)&v5 _presenter];
  if (!_presenter)
  {
    _presenter = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
  }

  return _presenter;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetExternalViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:appear];
  [(CSCoverSheetExternalViewControllerBase *)self _registerAsExternalProviderIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetExternalViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:disappear];
  [(CSCoverSheetExternalViewControllerBase *)self _unregisterAsExternalProvider];
}

- (void)_registerAsExternalProviderIfNeeded
{
  if (([(CSCoverSheetExternalViewControllerBase *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return;
  }

  presentingViewController = [(CSCoverSheetExternalViewControllerBase *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  parentViewController = [(CSCoverSheetExternalViewControllerBase *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:

    return;
  }

  v9.receiver = self;
  v9.super_class = CSCoverSheetExternalViewControllerBase;
  _presenter = [(CSCoverSheetViewControllerBase *)&v9 _presenter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    self->_externalToDashBoard = 1;
    coverSheetViewController = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
    v7 = coverSheetViewController;
    if (coverSheetViewController)
    {
      [coverSheetViewController registerExternalAppearanceProvider:self];
      [v7 registerExternalBehaviorProvider:self];
      [v7 registerExternalPresentationProvider:self];
      [v7 registerExternalEventHandler:self];
    }
  }
}

- (void)_unregisterAsExternalProvider
{
  if (([(CSCoverSheetExternalViewControllerBase *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return;
  }

  presentingViewController = [(CSCoverSheetExternalViewControllerBase *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  parentViewController = [(CSCoverSheetExternalViewControllerBase *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:

    return;
  }

  v9.receiver = self;
  v9.super_class = CSCoverSheetExternalViewControllerBase;
  _presenter = [(CSCoverSheetViewControllerBase *)&v9 _presenter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    self->_externalToDashBoard = 0;
    coverSheetViewController = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
    v7 = coverSheetViewController;
    if (coverSheetViewController)
    {
      [coverSheetViewController unregisterExternalAppearanceProvider:self];
      [v7 unregisterExternalBehaviorProvider:self];
      [v7 unregisterExternalPresentationProvider:self];
      [v7 unregisterExternalEventHandler:self];
    }
  }
}

- (CSCoverSheetViewController)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

@end