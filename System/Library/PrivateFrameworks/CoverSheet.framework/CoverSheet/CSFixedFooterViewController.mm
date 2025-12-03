@interface CSFixedFooterViewController
- (BOOL)handleEvent:(id)event;
- (CSFixedFooterViewController)init;
- (void)_addStatusTextViewControllerIfNecessary;
- (void)_updateCallToActionTextAnimated:(BOOL)animated;
- (void)coverSheetStatusTextViewControllerContentDidChange:(id)change;
- (void)updateCallToActionForMesaMatchFailure;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appear];
  [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
  fixedFooterView = [(CSFixedFooterViewController *)self fixedFooterView];
  callToActionLabel = [fixedFooterView callToActionLabel];
  [callToActionLabel fadeIn];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSFixedFooterViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:disappear];
  fixedFooterView = [(CSFixedFooterViewController *)self fixedFooterView];
  callToActionLabel = [fixedFooterView callToActionLabel];
  [callToActionLabel fadeOut];
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

- (void)_updateCallToActionTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
  fixedFooterView = [(CSFixedFooterViewController *)self fixedFooterView];
  v12 = fixedFooterView;
  if (v10)
  {
    callToActionLabel = [fixedFooterView callToActionLabel];

    if (!callToActionLabel)
    {
      callToActionLabel = objc_alloc_init(MEMORY[0x277D67CA8]);
      fixedFooterView2 = [(CSFixedFooterViewController *)self fixedFooterView];
      [fixedFooterView2 setCallToActionLabel:callToActionLabel];
    }

    activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    v16 = [activeAppearance componentForType:9 property:1];
    isHidden = [v16 isHidden];

    [callToActionLabel setVisible:isHidden ^ 1u animated:animatedCopy];
    v18 = 1.0;
    if (isHidden)
    {
      v18 = 0.0;
    }

    [callToActionLabel setAlpha:v18];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    [callToActionLabel setText:v22 forLanguage:localeIdentifier animated:animatedCopy];

    v12 = callToActionLabel;
  }

  else
  {
    [fixedFooterView setCallToActionLabel:0];
  }

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)updateCallToActionForMesaMatchFailure
{
  fixedFooterView = [(CSFixedFooterViewController *)self fixedFooterView];
  callToActionShakeView = [fixedFooterView callToActionShakeView];

  fixedFooterView2 = [(CSFixedFooterViewController *)self fixedFooterView];
  callToActionLabel = [fixedFooterView2 callToActionLabel];

  self->_temporaryMesaFailureTextActive = 1;
  [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
  [callToActionLabel setVisible:1 animated:0];
  ++updateCallToActionForMesaMatchFailure___token;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__CSFixedFooterViewController_updateCallToActionForMesaMatchFailure__block_invoke;
  v8[3] = &unk_27838D500;
  v10 = updateCallToActionForMesaMatchFailure___token;
  v8[4] = self;
  v9 = callToActionLabel;
  v7 = callToActionLabel;
  [callToActionShakeView beginShakingWithCompletion:v8];
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

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v27.receiver = self;
  v27.super_class = CSFixedFooterViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v27, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    isConsumable = 0;
    if (type <= 10)
    {
      if (type > 5)
      {
        if (type != 6)
        {
          if (type != 8)
          {
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (type == 1)
      {
        [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
        [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
        activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
        legibilitySettings = [activeAppearance legibilitySettings];

        fixedFooterView = [(CSFixedFooterViewController *)self fixedFooterView];
        [fixedFooterView updateForLegibilitySettings:legibilitySettings];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_34;
        }

        [(CSFixedFooterViewController *)self _addStatusTextViewControllerIfNecessary];
      }
    }

    else
    {
      if (type > 15)
      {
        if (type == 16)
        {
          value = [eventCopy value];
          [value floatValue];
          v20 = v19;

          if (v20 <= 0.0)
          {
            fixedFooterView2 = [(CSFixedFooterViewController *)self fixedFooterView];
            callToActionLabel = [fixedFooterView2 callToActionLabel];
            [callToActionLabel fadeOut];
          }

          else
          {
            if (v20 <= 0.01)
            {
              goto LABEL_33;
            }

            [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
            fixedFooterView2 = [(CSFixedFooterViewController *)self fixedFooterView];
            callToActionLabel = [fixedFooterView2 callToActionLabel];
            [callToActionLabel fadeIn];
          }

LABEL_32:
          goto LABEL_33;
        }

        if (type != 25)
        {
          if (type != 34)
          {
            goto LABEL_34;
          }

          fixedFooterView3 = [(CSFixedFooterViewController *)self fixedFooterView];
          callToActionLabel2 = [fixedFooterView3 callToActionLabel];

          mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
          hasBiometricAuthenticationCapabilityEnabled = [mEMORY[0x277D67C98] hasBiometricAuthenticationCapabilityEnabled];

          if (hasBiometricAuthenticationCapabilityEnabled)
          {
            [callToActionLabel2 cancelFadeInTimerIfNecessary];
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
          v26 = callToActionLabel2;
          fixedFooterView2 = callToActionLabel2;
          dispatch_after(v23, MEMORY[0x277D85CD0], v25);

          goto LABEL_32;
        }

LABEL_22:
        self->_temporaryMesaFailureTextActive = 0;
        goto LABEL_23;
      }

      if (type == 11)
      {
LABEL_23:
        [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:0];
        goto LABEL_33;
      }

      if (type != 13)
      {
        goto LABEL_34;
      }

      value2 = [eventCopy value];
      bOOLValue = [value2 BOOLValue];

      [(CSFixedFooterViewController *)self _updateCallToActionTextAnimated:bOOLValue];
      if (bOOLValue)
      {
        self->_temporaryMesaFailureTextActive = 0;
        self->_authenticatedSinceFingerOn = 1;
        v14 = [CSAction actionWithType:3];
        [(CSCoverSheetViewControllerBase *)self handleAction:v14 fromSender:self];
      }
    }

LABEL_33:
    isConsumable = 0;
    goto LABEL_34;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_34:

  return isConsumable;
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

- (void)coverSheetStatusTextViewControllerContentDidChange:(id)change
{
  view = [(CSFixedFooterViewController *)self view];
  [view setNeedsLayout];

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

@end