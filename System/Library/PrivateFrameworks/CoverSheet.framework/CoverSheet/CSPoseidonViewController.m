@interface CSPoseidonViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)hasBiometricAuthenticationCapabilityEnabled;
- (BOOL)isBiometricLockedOut;
- (UIView)poseidonView;
- (void)aggregateAppearance:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(CSPoseidonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SBUIPoseidonContainerViewController *)self->_poseidonContainerViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (UIView)poseidonView
{
  v2 = [(CSPoseidonViewController *)self poseidonContainerViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)isBiometricLockedOut
{
  v2 = [(CSPoseidonViewController *)self biometricResource];
  v3 = [v2 biometricLockoutState] != 0;

  return v3;
}

- (BOOL)hasBiometricAuthenticationCapabilityEnabled
{
  v2 = [(CSPoseidonViewController *)self biometricResource];
  v3 = [v2 hasBiometricAuthenticationCapabilityEnabled];

  return v3;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CSPoseidonViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v19, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 13)
    {
      if (v6 > 10)
      {
        if (v6 != 11)
        {
          if (v6 != 13)
          {
            goto LABEL_27;
          }

          v11 = [v4 value];
          v12 = [v11 BOOLValue];

          v8 = [(CSPoseidonViewController *)self poseidonContainerViewController];
          [v8 setAuthenticated:v12];
          goto LABEL_25;
        }

        v7 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        v8 = v7;
        v9 = 0;
        goto LABEL_23;
      }

      if (v6 != 1)
      {
        if (v6 != 10)
        {
          goto LABEL_27;
        }

        v7 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        v8 = v7;
        v9 = 1;
LABEL_23:
        [v7 setResignActive:v9];
        goto LABEL_25;
      }

      v15 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
      v16 = [v15 legibilitySettings];

      v17 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [v17 setLegibilitySettings:v16];

LABEL_26:
      v5 = 0;
      goto LABEL_27;
    }

    if (v6 > 24)
    {
      if (v6 == 25)
      {
        v8 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        [v8 setScreenOn:0];
        goto LABEL_25;
      }

      if (v6 != 36)
      {
        goto LABEL_27;
      }

      v13 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      v14 = [v13 isAuthenticated];

      if (!v14)
      {
        goto LABEL_26;
      }

      v8 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [v8 startRestToOpenCoaching:0 withCompletion:0];
    }

    else
    {
      if (v6 != 14)
      {
        if (v6 != 24)
        {
          goto LABEL_27;
        }

        v10 = [(CSPoseidonViewController *)self poseidonContainerViewController];
        [v10 setScreenOn:1];

        [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
        goto LABEL_26;
      }

      v8 = [(CSPoseidonViewController *)self poseidonContainerViewController];
      [v8 setBioLockout:1];
    }

LABEL_25:

    goto LABEL_26;
  }

  v5 = [v4 isConsumable];
LABEL_27:

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CSPoseidonViewController;
  [(CSCoverSheetViewControllerBase *)&v29 aggregateAppearance:v4];
  v5 = [(CSPoseidonViewController *)self poseidonContainerViewController];
  v6 = [v5 coachingActive];

  if (v6)
  {
    v7 = +[CSComponent footerCallToActionLabel];
    v8 = [v7 priority:60];
    v9 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v10 = [v8 identifier:v9];
    v11 = [v10 hidden:1];
    [v4 addComponent:v11];

    v12 = objc_opt_new();
    v13 = [v12 priority:60];
    v14 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    v15 = [v13 identifier:v14];
    v16 = [v15 suppressTeachableMomentsAnimation:1];
    [v4 addComponent:v16];

    v17 = [(CSPoseidonViewController *)self view];
    v18 = [v17 window];
    v19 = [v18 _toWindowOrientation];

    if (v19 == 1)
    {
      v20 = objc_opt_new();
      v21 = [v20 priority:60];
      v22 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
      v23 = [v21 identifier:v22];

      [v23 setHidden:1];
      [v23 setFakeStatusBar:0];
      [v23 setPriority:60];
      [v4 addComponent:v23];
      v24 = +[CSComponent controlCenterGrabber];
      v25 = [v24 priority:60];
      v26 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
      v27 = [v25 identifier:v26];
      v28 = [v27 hidden:1];
      [v4 addComponent:v28];
    }
  }
}

@end