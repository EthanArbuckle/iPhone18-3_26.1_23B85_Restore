@interface HACCSSLButton
- (BOOL)shouldAutoExpandForView:(id)a3;
- (HACCSSLButton)initWithFrame:(CGRect)a3;
- (id)accessibilityValue;
- (id)contentValue;
- (void)_updateButtonView;
- (void)buttonTapped;
- (void)removeExpandedView:(id)a3;
- (void)updateValue;
@end

@implementation HACCSSLButton

- (HACCSSLButton)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = HACCSSLButton;
  v3 = [(HUICCCapsuleButton *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = paLocString();
    [(HUICCCapsuleButton *)v3 setTitleText:v4];
    v5 = HUICCButtonVCWithSystemImageName(@"person.wave.2.fill");
    buttonVC = v3->_buttonVC;
    v3->_buttonVC = v5;

    [(CCUILabeledRoundButtonViewController *)v3->_buttonVC setTitle:v4];
    v7 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [v7 addTarget:v3 action:sel_buttonTapped forControlEvents:64];

    v8 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [(HUICCCapsuleButton *)v3 setIconView:v8];

    objc_initWeak(&location, v3);
    v9 = [MEMORY[0x277D3A1D0] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __31__HACCSSLButton_initWithFrame___block_invoke;
    v14[3] = &unk_2796F6D18;
    objc_copyWeak(&v15, &location);
    [v9 registerUpdateBlock:v14 forRetrieveSelector:sel_sslEnabled withListener:v3];

    v10 = [MEMORY[0x277D12E00] sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__HACCSSLButton_initWithFrame___block_invoke_2;
    v12[3] = &unk_2796F6FB8;
    objc_copyWeak(&v13, &location);
    [v10 registerDiscoveryBlock:v12 withListener:v3];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__HACCSSLButton_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

void __31__HACCSSLButton_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

- (BOOL)shouldAutoExpandForView:(id)a3
{
  v3 = [MEMORY[0x277D12E28] sharedInstance];
  v4 = [v3 shouldShowSSLFooterInCC];

  return v4;
}

- (void)removeExpandedView:(id)a3
{
  v4.receiver = self;
  v4.super_class = HACCSSLButton;
  [(HUICCCapsuleButton *)&v4 removeExpandedView:a3];
  v3 = [MEMORY[0x277D12E28] sharedInstance];
  [v3 setShouldShowSSLFooterInCC:0];
}

- (void)buttonTapped
{
  v3.receiver = self;
  v3.super_class = HACCSSLButton;
  [(HUICCCapsuleButton *)&v3 buttonTapped];
  v2 = [MEMORY[0x277D12E28] sharedInstance];
  [v2 setShouldShowSSLFooterInCC:0];
}

- (void)updateValue
{
  v3 = [MEMORY[0x277D12E00] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__HACCSSLButton_updateValue__block_invoke;
  v4[3] = &unk_2796F6DB8;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

void __28__HACCSSLButton_updateValue__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277D12E00];
  v6 = a4;
  v7 = [v5 sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HACCSSLButton_updateValue__block_invoke_2;
  v8[3] = &unk_2796F6FE0;
  v8[4] = *(a1 + 32);
  [v7 getSSLEnabledForAddress:v6 withCompletion:v8];
}

uint64_t __28__HACCSSLButton_updateValue__block_invoke_3(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = HACCSSLButton;
  objc_msgSendSuper2(&v3, sel_updateValue);
  [*(a1 + 32) setDimmingState:{objc_msgSend(*(a1 + 32), "enabled") ^ 1}];
  return [*(a1 + 32) _updateButtonView];
}

- (void)_updateButtonView
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(HACCSSLButton *)self contentValue];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    v17[0] = v5;
    v6 = v17;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    v16 = v5;
    v6 = &v16;
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v8 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v7];
  v9 = paLocString();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HACCSSLButton__updateButtonView__block_invoke;
  block[3] = &unk_2796F7008;
  block[4] = self;
  v13 = v8;
  v15 = v4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __34__HACCSSLButton__updateButtonView__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buttonVC];
  v3 = [*(a1 + 32) buttonVC];
  v4 = [v3 glyphImage];
  v5 = [v4 imageByApplyingSymbolConfiguration:*(a1 + 40)];
  [v2 setGlyphImage:v5];

  v6 = [*(a1 + 32) buttonVC];
  [v6 setEnabled:*(a1 + 56)];

  v7 = [*(a1 + 32) iconView];
  v9[0] = *(a1 + 48);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 setAccessibilityUserInputLabels:v8];
}

- (id)contentValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HACCSSLButton *)self sslEnabled];

  return [v2 numberWithBool:v3];
}

- (id)accessibilityValue
{
  v3 = hearingLocString();
  v4 = [(HACCSSLButton *)self contentValue];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = hearingLocString();

    v3 = v6;
  }

  return v3;
}

@end