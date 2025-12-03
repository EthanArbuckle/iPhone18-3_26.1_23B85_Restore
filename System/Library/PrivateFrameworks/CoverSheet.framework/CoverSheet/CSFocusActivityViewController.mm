@interface CSFocusActivityViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)isActivityIndicatorVisible;
- (CSActivityPickerViewController)activityPickerViewController;
- (CSFocusActivityViewControllerDelegate)delegate;
- (UIView)activityIndicator;
- (UIView)customFocusActivityPickerPresentingView;
- (id)_activityViewIfLoaded;
- (id)activityPickerViewControllerPresentingView:(id)view;
- (void)_removeActivityViewIndicatorIfNecessary;
- (void)_updateActivityViewActivity;
- (void)_updateActivityViewBehavior;
- (void)_updateActivityViewLegibility;
- (void)_updatePreferredContentSize;
- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)visible;
- (void)focusActivityViewIndicatorPressed:(id)pressed;
- (void)presentFocusActivityPickerViewControllerFromView:(id)view coverSheetViewPresenting:(id)presenting;
- (void)setActivity:(id)activity;
- (void)setContainerSize:(CGSize)size;
- (void)settings:(id)settings changedValueForKey:(id)key;
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
  focusSettings = [v3 focusSettings];
  [focusSettings addKeyObserver:self];

  [(CSFocusActivityViewController *)self _updateActivityViewBehavior];
  [(CSFocusActivityViewController *)self _updateActivityViewActivity];
  [(CSFocusActivityViewController *)self _updateActivityViewLegibility];
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [_activityViewIfLoaded setDelegate:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSFocusActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillLayoutSubviews];
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [(CSFocusActivityViewController *)self preferredContentSize];
  [_activityViewIfLoaded setSize:?];
}

- (void)focusActivityViewIndicatorPressed:(id)pressed
{
  objc_storeWeak(&self->_customFocusActivityPickerPresentingView, 0);
  v4 = [CSAction actionWithType:12];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];
}

- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)visible
{
  visibleCopy = visible;
  delegate = [(CSFocusActivityViewController *)self delegate];
  [delegate focusActivityViewIndicatorDidChangeToVisible:visibleCopy];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = CSFocusActivityViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v9, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    type = [eventCopy type];
    switch(type)
    {
      case 25:
        if (!self->_activity)
        {
          _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
          [_activityViewIfLoaded removeIndicator];
        }

        break;
      case 2:
        [(CSFocusActivityViewController *)self _updateActivityViewBehavior];
        break;
      case 1:
        [(CSFocusActivityViewController *)self _updateActivityViewLegibility];
        break;
    }

    isConsumable = 0;
  }

  return isConsumable;
}

- (void)setContainerSize:(CGSize)size
{
  if (self->_containerSize.width != size.width || self->_containerSize.height != size.height)
  {
    self->_containerSize = size;
    [(CSFocusActivityViewController *)self _updatePreferredContentSize];
  }
}

- (id)activityPickerViewControllerPresentingView:(id)view
{
  customFocusActivityPickerPresentingView = [(CSFocusActivityViewController *)self customFocusActivityPickerPresentingView];
  v5 = customFocusActivityPickerPresentingView;
  if (customFocusActivityPickerPresentingView)
  {
    activityIndicator = customFocusActivityPickerPresentingView;
  }

  else
  {
    activityIndicator = [(CSFocusActivityViewController *)self activityIndicator];
  }

  v7 = activityIndicator;

  return v7;
}

- (BOOL)isActivityIndicatorVisible
{
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  isActivityIndicatorVisible = [_activityViewIfLoaded isActivityIndicatorVisible];

  return isActivityIndicatorVisible;
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  if (self->_activity != activityCopy)
  {
    v6 = activityCopy;
    objc_storeStrong(&self->_activity, activity);
    [(CSFocusActivityViewController *)self _updateActivityViewActivity];
    [(CSFocusActivityViewController *)self _removeActivityViewIndicatorIfNecessary];
    activityCopy = v6;
  }
}

- (UIView)activityIndicator
{
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  activityIndicator = [_activityViewIfLoaded activityIndicator];

  return activityIndicator;
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

- (void)presentFocusActivityPickerViewControllerFromView:(id)view coverSheetViewPresenting:(id)presenting
{
  presentingCopy = presenting;
  objc_storeWeak(&self->_customFocusActivityPickerPresentingView, view);
  v7 = [CSAction actionWithType:12];
  [presentingCopy handleAction:v7 fromSender:self];
}

- (void)_updateActivityViewBehavior
{
  activeBehavior = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v4 = [activeBehavior areRestrictedCapabilities:0x400000];

  v5 = +[CSLockScreenDomain rootSettings];
  focusSettings = [v5 focusSettings];
  gatesOnControlCenterAccess = [focusSettings gatesOnControlCenterAccess];

  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [_activityViewIfLoaded setEnabled:v4 & gatesOnControlCenterAccess ^ 1u];
}

- (void)_updateActivityViewActivity
{
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  [_activityViewIfLoaded setActivity:self->_activity];
}

- (void)_updateActivityViewLegibility
{
  _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  legibilitySettings = [activeAppearance legibilitySettings];
  [_activityViewIfLoaded setLegibilitySettings:legibilitySettings];
}

- (void)_removeActivityViewIndicatorIfNecessary
{
  activityPickerViewController = [(CSFocusActivityViewController *)self activityPickerViewController];
  _appearState = [activityPickerViewController _appearState];

  if (_appearState != 2 && !self->_activity)
  {
    _activityViewIfLoaded = [(CSFocusActivityViewController *)self _activityViewIfLoaded];
    [_activityViewIfLoaded removeIndicator];
  }
}

- (id)_activityViewIfLoaded
{
  viewIfLoaded = [(CSFocusActivityViewController *)self viewIfLoaded];
  v3 = objc_opt_class();
  v4 = viewIfLoaded;
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqualToString:@"gatesOnControlCenterAccess"])
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