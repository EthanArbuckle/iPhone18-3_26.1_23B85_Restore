@interface CSFixedFooterViewController
- (BOOL)handleEvent:(id)a3;
- (CSFixedFooterViewController)init;
- (void)_addStatusTextViewControllerIfNecessary;
- (void)_updateCallToActionTextAnimated:(BOOL)a3;
- (void)coverSheetStatusTextViewControllerContentDidChange:(id)a3;
- (void)updateCallToActionForMesaMatchFailure;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSFixedFooterViewController

- (void)_addStatusTextViewControllerIfNecessary
{
  if (!self->_statusTextViewController)
  {
    v3 = objc_alloc_init(CSStatusTextViewController);
    statusTextViewController = self->_statusTextViewController;
    self->_statusTextViewController = v3;

    [(CSStatusTextViewController *)self->_statusTextViewController setDelegate:self];
    [(CSCoverSheetViewControllerBase *)self->_statusTextViewController setPresenter:self];
    v5 = self->_statusTextViewController;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__CSFixedFooterViewController__addStatusTextViewControllerIfNecessary__block_invoke;
    v6[3] = &unk_27838B798;
    v6[4] = self;
    [(CSFixedFooterViewController *)self bs_addChildViewController:v5 animated:0 transitionBlock:v6];
  }
}

- (CSFixedFooterViewController)init
{
  v7.receiver = self;
  v7.super_class = CSFixedFooterViewController;
  v2 = [(CSFixedFooterViewController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"AWAY_LOCK_TRY_AGAIN" value:&stru_28302FDA0 table:@"CoverSheet"];
    cachedMesaFailureText = v2->_cachedMesaFailureText;
    v2->_cachedMesaFailureText = v4;
  }

  return v2;
}

- (void)viewDidLoad
{
  [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
  v3.receiver = self;
  v3.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:a3];
  [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
  v4 = [(CSFixedFooterViewController *)self fixedFooterView];
  v5 = [v4 callToActionLabel];
  [v5 fadeIn];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:a3];
  v4 = [(CSFixedFooterViewController *)self fixedFooterView];
  v5 = [v4 callToActionLabel];
  [v5 fadeOut];
}

void __70__CSFixedFooterViewController__addStatusTextViewControllerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 fixedFooterView];
  v5 = [*(*(a1 + 32) + 1064) statusTextView];
  [v4 setStatusTextView:v5];

  v6[2]();
}

- (void)_updateCallToActionTextAnimated:(BOOL)a3
{
  v3 = a3;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    return;
  }

  if ([(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider isAuthenticated])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"PRESS_HOME_TO_OPEN";
    v8 = @"CoverSheetCommon";
LABEL_7:
    v21 = [v5 localizedStringForKey:v7 value:&stru_28302FDA0 table:v8];

    v9 = v21;
    goto LABEL_8;
  }

  if (!self->_temporaryMesaFailureTextActive)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"PRESS_HOME_TO_UNLOCK";
    v8 = @"CoverSheet";
    goto LABEL_7;
  }

  v9 = self->_cachedMesaFailureText;
LABEL_8:
  v22 = v9;
  v10 = [(NSString *)v9 length];
  v11 = [(CSFixedFooterViewController *)self fixedFooterView];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 callToActionLabel];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277D67CA8]);
      v14 = [(CSFixedFooterViewController *)self fixedFooterView];
      [v14 setCallToActionLabel:v13];
    }

    v15 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    v16 = [v15 componentForType:9 property:1];
    v17 = [v16 isHidden];

    [v13 setVisible:v17 ^ 1u animated:v3];
    v18 = 1.0;
    if (v17)
    {
      v18 = 0.0;
    }

    [v13 setAlpha:v18];
    v19 = [MEMORY[0x277CBEAF8] currentLocale];
    v20 = [v19 localeIdentifier];
    [v13 setText:v22 forLanguage:v20 animated:v3];

    v12 = v13;
  }

  else
  {
    [v11 setCallToActionLabel:0];
  }

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)updateCallToActionForMesaMatchFailure
{
  v3 = [(CSFixedFooterViewController *)self fixedFooterView];
  v4 = [v3 callToActionShakeView];

  v5 = [(CSFixedFooterViewController *)self fixedFooterView];
  v6 = [v5 callToActionLabel];

  self->_temporaryMesaFailureTextActive = 1;
  [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
  [v6 setVisible:1 animated:0];
  ++updateCallToActionForMesaMatchFailure___token;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__CSFixedFooterViewController_updateCallToActionForMesaMatchFailure__block_invoke;
  v8[3] = &unk_27838D500;
  v10 = updateCallToActionForMesaMatchFailure___token;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [v4 beginShakingWithCompletion:v8];
}

void __68__CSFixedFooterViewController_updateCallToActionForMesaMatchFailure__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CSFixedFooterViewController_updateCallToActionForMesaMatchFailure__block_invoke_2;
  block[3] = &unk_27838D500;
  v6 = *(a1 + 48);
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __68__CSFixedFooterViewController_updateCallToActionForMesaMatchFailure__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == updateCallToActionForMesaMatchFailure___token)
  {
    *(*(a1 + 32) + 1080) = 0;
    v2 = *(*(a1 + 32) + 1072);
    v3 = [*(a1 + 40) text];
    LODWORD(v2) = [v2 isEqualToString:v3];

    if (v2)
    {
      v4 = *(a1 + 32);

      [v4 _updateCallToActionTextAnimated:1];
    }
  }
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CSFixedFooterViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v27, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 10)
    {
      if (v6 > 5)
      {
        if (v6 != 6)
        {
          if (v6 != 8)
          {
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v6 == 1)
      {
        [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
        [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
        v15 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
        v16 = [v15 legibilitySettings];

        v17 = [(CSFixedFooterViewController *)self fixedFooterView];
        [v17 updateForLegibilitySettings:v16];
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_34;
        }

        [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
      }
    }

    else
    {
      if (v6 > 15)
      {
        if (v6 == 16)
        {
          v18 = [v4 value];
          [v18 floatValue];
          v20 = v19;

          if (v20 <= 0.0)
          {
            v21 = [(CSFixedFooterViewController *)self fixedFooterView];
            v22 = [v21 callToActionLabel];
            [v22 fadeOut];
          }

          else
          {
            if (v20 <= 0.01)
            {
              goto LABEL_33;
            }

            [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
            v21 = [(CSFixedFooterViewController *)self fixedFooterView];
            v22 = [v21 callToActionLabel];
            [v22 fadeIn];
          }

LABEL_32:
          goto LABEL_33;
        }

        if (v6 != 25)
        {
          if (v6 != 34)
          {
            goto LABEL_34;
          }

          v7 = [(CSFixedFooterViewController *)self fixedFooterView];
          v8 = [v7 callToActionLabel];

          v9 = [MEMORY[0x277D67C98] sharedInstance];
          v10 = [v9 hasBiometricAuthenticationCapabilityEnabled];

          if (v10)
          {
            [v8 cancelFadeInTimerIfNecessary];
            v11 = 1000000000;
          }

          else
          {
            v11 = 350000000;
          }

          v23 = dispatch_time(0, v11);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __43__CSFixedFooterViewController_handleEvent___block_invoke;
          v25[3] = &unk_27838B838;
          v25[4] = self;
          v26 = v8;
          v21 = v8;
          dispatch_after(v23, MEMORY[0x277D85CD0], v25);

          goto LABEL_32;
        }

LABEL_22:
        self->_temporaryMesaFailureTextActive = 0;
        goto LABEL_23;
      }

      if (v6 == 11)
      {
LABEL_23:
        [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
        goto LABEL_33;
      }

      if (v6 != 13)
      {
        goto LABEL_34;
      }

      v12 = [v4 value];
      v13 = [v12 BOOLValue];

      [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:v13];
      if (v13)
      {
        self->_temporaryMesaFailureTextActive = 0;
        self->_authenticatedSinceFingerOn = 1;
        v14 = [CSAction actionWithType:3];
        [(CSCoverSheetViewControllerBase *)self handleAction:v14 fromSender:self];
      }
    }

LABEL_33:
    v5 = 0;
    goto LABEL_34;
  }

  v5 = [v4 isConsumable];
LABEL_34:

  return v5;
}

_BYTE *__43__CSFixedFooterViewController_handleEvent___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1081] & 1) == 0)
  {
    [result _updateCallToActionTextAnimated:1];
    [*(a1 + 40) fadeInImmediately:1];
    result = *(a1 + 32);
  }

  result[1081] = 0;
  return result;
}

- (void)coverSheetStatusTextViewControllerContentDidChange:(id)a3
{
  v4 = [(CSFixedFooterViewController *)self view];
  [v4 setNeedsLayout];

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

@end