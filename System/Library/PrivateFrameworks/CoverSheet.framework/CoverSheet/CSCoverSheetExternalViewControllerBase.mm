@interface CSCoverSheetExternalViewControllerBase
- (CSCoverSheetViewController)coverSheetViewController;
- (id)_presenter;
- (void)_registerAsExternalProviderIfNeeded;
- (void)_unregisterAsExternalProvider;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CSCoverSheetExternalViewControllerBase

- (id)_presenter
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetExternalViewControllerBase;
  v3 = [(CSCoverSheetViewControllerBase *)&v5 _presenter];
  if (!v3)
  {
    v3 = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetExternalViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(CSCoverSheetExternalViewControllerBase *)self _registerAsExternalProviderIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetExternalViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(CSCoverSheetExternalViewControllerBase *)self _unregisterAsExternalProvider];
}

- (void)_registerAsExternalProviderIfNeeded
{
  if (([(CSCoverSheetExternalViewControllerBase *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return;
  }

  v8 = [(CSCoverSheetExternalViewControllerBase *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  v3 = [(CSCoverSheetExternalViewControllerBase *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:

    return;
  }

  v9.receiver = self;
  v9.super_class = CSCoverSheetExternalViewControllerBase;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 _presenter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    self->_externalToDashBoard = 1;
    v6 = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
    v7 = v6;
    if (v6)
    {
      [v6 registerExternalAppearanceProvider:self];
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

  v8 = [(CSCoverSheetExternalViewControllerBase *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  v3 = [(CSCoverSheetExternalViewControllerBase *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:

    return;
  }

  v9.receiver = self;
  v9.super_class = CSCoverSheetExternalViewControllerBase;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 _presenter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    self->_externalToDashBoard = 0;
    v6 = [(CSCoverSheetExternalViewControllerBase *)self coverSheetViewController];
    v7 = v6;
    if (v6)
    {
      [v6 unregisterExternalAppearanceProvider:self];
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