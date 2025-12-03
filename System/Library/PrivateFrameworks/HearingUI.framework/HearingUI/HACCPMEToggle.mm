@interface HACCPMEToggle
- (HACCPMEToggle)initWithFrame:(CGRect)frame;
- (id)contentValue;
- (void)updateValue;
@end

@implementation HACCPMEToggle

- (HACCPMEToggle)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = HACCPMEToggle;
  v3 = [(HUICCCapsuleButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = paLocString();
    [(HUICCCapsuleButton *)v3 setTitleText:v4];

    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:23.0];
    v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"headphones" withConfiguration:v5];
    v7 = HUICCImageViewWithImage(v6);
    [(HUICCCapsuleButton *)v3 setIconView:v7];

    objc_initWeak(&location, v3);
    mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__HACCPMEToggle_initWithFrame___block_invoke;
    v10[3] = &unk_2796F6D18;
    objc_copyWeak(&v11, &location);
    [mEMORY[0x277D3A1D0] registerUpdateBlock:v10 forRetrieveSelector:sel_personalMediaEnabled withListener:v3];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__HACCPMEToggle_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

- (void)updateValue
{
  v5.receiver = self;
  v5.super_class = HACCPMEToggle;
  [(HUICCCapsuleButton *)&v5 updateValue];
  mEMORY[0x277D12E00] = [MEMORY[0x277D12E00] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__HACCPMEToggle_updateValue__block_invoke;
  v4[3] = &unk_2796F6DB8;
  v4[4] = self;
  [mEMORY[0x277D12E00] getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

void __28__HACCPMEToggle_updateValue__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277D3A1D0];
  v6 = a4;
  v7 = [v5 sharedInstance];
  [v7 accommodationTypesForRouteUID:v6];

  v8 = [MEMORY[0x277D3A1D0] sharedInstance];
  v9 = [v8 transparencyCustomizedForAddress:v6];

  v10 = paLocString();
  v11 = [MEMORY[0x277D3A1C8] sharedInstance];
  v12 = [v11 yodelEnabledForAddress:v6];

  if (!v12)
  {
    v16 = [MEMORY[0x277D3A1D0] sharedInstance];
    v17 = [v16 personalMediaEnabled];

    if ((v17 & 1) == 0)
    {
LABEL_6:
      v15 = paLocString();
      goto LABEL_12;
    }

    v18 = compoundAttributeContainsAttribute();
    if (v9)
    {
      if (v18)
      {
        goto LABEL_6;
      }

      if ((compoundAttributeContainsAttribute() & 1) != 0 || compoundAttributeContainsAttribute() || compoundAttributeContainsAttribute())
      {
LABEL_11:
        v19 = MEMORY[0x277CCACA8];
        v20 = paLocString();
        v21 = paLocString();
        v22 = paLocString();
        v15 = [v19 stringWithFormat:v20, v21, v22];

        goto LABEL_12;
      }
    }

    else if (v18)
    {
      goto LABEL_11;
    }

    if (!compoundAttributeContainsAttribute() && !compoundAttributeContainsAttribute() && !v9)
    {
      v15 = 0;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v13 = accessibilityHearingAidSupportBundle();
  v14 = [v13 localizedStringForKey:@"YodelFeatureName" value:@"YodelFeatureName" table:@"HearingProtection-Yodel"];

  v15 = 0;
  v10 = v14;
LABEL_12:
  v23 = [*(a1 + 32) subtitleLabel];
  v24 = [v23 text];
  v25 = v24 | v15;

  v26 = [*(a1 + 32) subtitleLabel];
  v27 = [v26 text];
  v28 = [v27 isEqualToString:v15];

  v29 = v10;
  v30 = v15;
  AXPerformBlockOnMainThread();
  if (v25 && (v28 & 1) == 0)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

uint64_t __28__HACCPMEToggle_updateValue__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTitleText:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setSubtitleText:v3];
}

void __28__HACCPMEToggle_updateValue__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 updateHeight];
}

- (id)contentValue
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D3A1D0], "personalMediaEnabled")}];

  return v4;
}

@end