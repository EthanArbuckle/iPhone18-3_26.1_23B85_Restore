@interface CSFocusActivityViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)isActivityIndicatorVisible;
- (CSActivityPickerViewController)activityPickerViewController;
- (CSFocusActivityViewControllerDelegate)delegate;
- (UIView)activityIndicator;
- (UIView)customFocusActivityPickerPresentingView;
- (id)_activityViewIfLoaded;
- (id)activityPickerViewControllerPresentingView:(id)a3;
- (void)_removeActivityViewIndicatorIfNecessary;
- (void)_updateActivityViewActivity;
- (void)_updateActivityViewBehavior;
- (void)_updateActivityViewLegibility;
- (void)_updatePreferredContentSize;
- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)a3;
- (void)focusActivityViewIndicatorPressed:(id)a3;
- (void)presentFocusActivityPickerViewControllerFromView:(id)a3 coverSheetViewPresenting:(id)a4;
- (void)setActivity:(id)a3;
- (void)setContainerSize:(CGSize)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CSFocusActivityViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CSFocusActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidLoad];
  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 focusSettings];
  [v4 addKeyObserver:self];

  [(CSFocusActivityViewController *)self _updateActivityViewBehavior];
  [(CSFocusActivityViewController *)self _updateActivityViewActivity];
  [(CSFocusActivityViewController *)self _updateActivityViewLegibility];
  v5 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [v5 setDelegate:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSFocusActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillLayoutSubviews];
  v3 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [(CSFocusActivityViewController *)self preferredContentSize];
  [v3 setSize:?];
}

- (void)focusActivityViewIndicatorPressed:(id)a3
{
  objc_storeWeak(&self->_customFocusActivityPickerPresentingView, 0);
  v4 = [CSAction actionWithType:12];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(CSFocusActivityViewController *)self delegate];
  [v4 focusActivityViewIndicatorDidChangeToVisible:v3];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSFocusActivityViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v9, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    v6 = [v4 type];
    switch(v6)
    {
      case 25:
        if (!self->_activity)
        {
          v7 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
          [v7 removeIndicator];
        }

        break;
      case 2:
        [(CSFocusActivityViewController *)self _updateActivityViewBehavior];
        break;
      case 1:
        [(CSFocusActivityViewController *)self _updateActivityViewLegibility];
        break;
    }

    v5 = 0;
  }

  return v5;
}

- (void)setContainerSize:(CGSize)a3
{
  if (self->_containerSize.width != a3.width || self->_containerSize.height != a3.height)
  {
    self->_containerSize = a3;
    [(CSFocusActivityViewController *)self _updatePreferredContentSize];
  }
}

- (id)activityPickerViewControllerPresentingView:(id)a3
{
  v4 = [(CSFocusActivityViewController *)self customFocusActivityPickerPresentingView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CSFocusActivityViewController *)self activityIndicator];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isActivityIndicatorVisible
{
  v2 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  v3 = [v2 isActivityIndicatorVisible];

  return v3;
}

- (void)setActivity:(id)a3
{
  v5 = a3;
  if (self->_activity != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activity, a3);
    [(CSFocusActivityViewController *)self _updateActivityViewActivity];
    [(CSFocusActivityViewController *)self _removeActivityViewIndicatorIfNecessary];
    v5 = v6;
  }
}

- (UIView)activityIndicator
{
  v2 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  v3 = [v2 activityIndicator];

  return v3;
}

- (CSActivityPickerViewController)activityPickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityPickerViewController);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(CSActivityPickerViewController);
    [(CSActivityPickerViewController *)WeakRetained setDelegate:self];
    objc_storeWeak(&self->_activityPickerViewController, WeakRetained);
  }

  return WeakRetained;
}

- (void)_updatePreferredContentSize
{
  +[CSFocusActivityView activityViewSize];
  width = self->_containerSize.width;

  [(CSFocusActivityViewController *)self setPreferredContentSize:width];
}

- (void)presentFocusActivityPickerViewControllerFromView:(id)a3 coverSheetViewPresenting:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_customFocusActivityPickerPresentingView, a3);
  v7 = [CSAction actionWithType:12];
  [v6 handleAction:v7 fromSender:self];
}

- (void)_updateActivityViewBehavior
{
  v3 = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:0x400000];

  v5 = +[CSLockScreenDomain rootSettings];
  v6 = [v5 focusSettings];
  v7 = [v6 gatesOnControlCenterAccess];

  v8 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [v8 setEnabled:v4 & v7 ^ 1u];
}

- (void)_updateActivityViewActivity
{
  v3 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [v3 setActivity:self->_activity];
}

- (void)_updateActivityViewLegibility
{
  v5 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  v3 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v4 = [v3 legibilitySettings];
  [v5 setLegibilitySettings:v4];
}

- (void)_removeActivityViewIndicatorIfNecessary
{
  v3 = [(CSFocusActivityViewController *)self activityPickerViewController];
  v4 = [v3 _appearState];

  if (v4 != 2 && !self->_activity)
  {
    v5 = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
    [v5 removeIndicator];
  }
}

- (id)_activityViewIfLoaded
{
  v2 = [(CSFocusActivityViewController *)self viewIfLoaded];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if ([a4 isEqualToString:@"gatesOnControlCenterAccess"])
  {

    [(CSFocusActivityViewController *)self _updateActivityViewBehavior];
  }
}

- (CSFocusActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)customFocusActivityPickerPresentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_customFocusActivityPickerPresentingView);

  return WeakRetained;
}

@end