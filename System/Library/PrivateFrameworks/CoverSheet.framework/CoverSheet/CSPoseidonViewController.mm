@interface CSPoseidonViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)hasBiometricAuthenticationCapabilityEnabled;
- (BOOL)isBiometricLockedOut;
- (UIView)poseidonView;
- (void)aggregateAppearance:(id)appearance;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSPoseidonViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D67D48]) initWithAuthenticationInformationProvider:self];
  [v3 setDelegate:self];
  [(CSPoseidonViewController *)self bs_addChildViewController:v3];
  [(CSPoseidonViewController *)self setPoseidonContainerViewController:v3];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v13 viewDidLayoutSubviews];
  view = [(CSPoseidonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(SBUIPoseidonContainerViewController *)self->_poseidonContainerViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (UIView)poseidonView
{
  poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
  view = [poseidonContainerViewController view];

  return view;
}

- (BOOL)isBiometricLockedOut
{
  biometricResource = [(CSPoseidonViewController *)self biometricResource];
  v3 = [biometricResource biometricLockoutState] != 0;

  return v3;
}

- (BOOL)hasBiometricAuthenticationCapabilityEnabled
{
  biometricResource = [(CSPoseidonViewController *)self biometricResource];
  hasBiometricAuthenticationCapabilityEnabled = [biometricResource hasBiometricAuthenticationCapabilityEnabled];

  return hasBiometricAuthenticationCapabilityEnabled;
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = CSPoseidonViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v19, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    isConsumable = 0;
    if (type <= 13)
    {
      if (type > 10)
      {
        if (type != 11)
        {
          if (type != 13)
          {
            goto LABEL_27;
          }

          value = [eventCopy value];
          bOOLValue = [value BOOLValue];

          poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
          [poseidonContainerViewController setAuthenticated:bOOLValue];
          goto LABEL_25;
        }

        poseidonContainerViewController2 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        poseidonContainerViewController = poseidonContainerViewController2;
        v9 = 0;
        goto LABEL_23;
      }

      if (type != 1)
      {
        if (type != 10)
        {
          goto LABEL_27;
        }

        poseidonContainerViewController2 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        poseidonContainerViewController = poseidonContainerViewController2;
        v9 = 1;
LABEL_23:
        [poseidonContainerViewController2 setResignActive:v9];
        goto LABEL_25;
      }

      activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
      legibilitySettings = [activeAppearance legibilitySettings];

      poseidonContainerViewController3 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [poseidonContainerViewController3 setLegibilitySettings:legibilitySettings];

LABEL_26:
      isConsumable = 0;
      goto LABEL_27;
    }

    if (type > 24)
    {
      if (type == 25)
      {
        poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
        [poseidonContainerViewController setScreenOn:0];
        goto LABEL_25;
      }

      if (type != 36)
      {
        goto LABEL_27;
      }

      poseidonContainerViewController4 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      isAuthenticated = [poseidonContainerViewController4 isAuthenticated];

      if (!isAuthenticated)
      {
        goto LABEL_26;
      }

      poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [poseidonContainerViewController startRestToOpenCoaching:0 withCompletion:0];
    }

    else
    {
      if (type != 14)
      {
        if (type != 24)
        {
          goto LABEL_27;
        }

        poseidonContainerViewController5 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        [poseidonContainerViewController5 setScreenOn:1];

        [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
        goto LABEL_26;
      }

      poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [poseidonContainerViewController setBioLockout:1];
    }

LABEL_25:

    goto LABEL_26;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_27:

  return isConsumable;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v29.receiver = self;
  v29.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v29 aggregateAppearance:appearanceCopy];
  poseidonContainerViewController = [(CSPoseidonViewController *)self poseidonContainerViewController];
  coachingActive = [poseidonContainerViewController coachingActive];

  if (coachingActive)
  {
    v7 = +[CSComponent footerCallToActionLabel];
    v8 = [v7 priority:60];
    coverSheetIdentifier = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v10 = [v8 identifier:coverSheetIdentifier];
    v11 = [v10 hidden:1];
    [appearanceCopy addComponent:v11];

    v12 = objc_opt_new();
    v13 = [v12 priority:60];
    coverSheetIdentifier2 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v15 = [v13 identifier:coverSheetIdentifier2];
    v16 = [v15 suppressTeachableMomentsAnimation:1];
    [appearanceCopy addComponent:v16];

    view = [(CSPoseidonViewController *)self view];
    window = [view window];
    _toWindowOrientation = [window _toWindowOrientation];

    if (_toWindowOrientation == 1)
    {
      v20 = objc_opt_new();
      v21 = [v20 priority:60];
      appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
      v23 = [v21 identifier:appearanceIdentifier];

      [v23 setHidden:1];
      [v23 setFakeStatusBar:0];
      [v23 setPriority:60];
      [appearanceCopy addComponent:v23];
      v24 = +[CSComponent controlCenterGrabber];
      v25 = [v24 priority:60];
      coverSheetIdentifier3 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
      v27 = [v25 identifier:coverSheetIdentifier3];
      v28 = [v27 hidden:1];
      [appearanceCopy addComponent:v28];
    }
  }
}

@end