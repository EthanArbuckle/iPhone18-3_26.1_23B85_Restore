@interface PRXCardContentViewController(CARSetupPrompts)
- (id)carSetup_carPlayIconView;
- (void)carSetup_addCarPlayIconCenteredInMainContent;
- (void)carSetup_addMainContentCenteredView:()CARSetupPrompts size:;
@end

@implementation PRXCardContentViewController(CARSetupPrompts)

- (id)carSetup_carPlayIconView
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  v2 = [v0 _applicationIconImageForBundleIdentifier:@"com.apple.CarPlayApp" format:2 scale:?];

  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v2];

  return v3;
}

- (void)carSetup_addCarPlayIconCenteredInMainContent
{
  v2 = [a1 carSetup_carPlayIconView];
  [a1 carSetup_addMainContentCenteredView:v2 size:{98.0, 98.0}];
}

- (void)carSetup_addMainContentCenteredView:()CARSetupPrompts size:
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [a1 contentView];
  [v9 addSubview:v8];

  v10 = [a1 contentView];
  v11 = [v10 mainContentGuide];

  v28 = MEMORY[0x277CCAAD0];
  v29 = [v8 topAnchor];
  v12 = [v11 topAnchor];
  v13 = [v29 constraintEqualToAnchor:v12];
  v32[0] = v13;
  v14 = [v8 bottomAnchor];
  v15 = [v11 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v32[1] = v16;
  v17 = [v8 centerXAnchor];
  v30 = v11;
  v18 = [v11 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v32[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [v28 activateConstraints:v20];

  if (a2 != *MEMORY[0x277CBF3A8] || a3 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v21 = MEMORY[0x277CCAAD0];
    v22 = [v8 widthAnchor];
    v23 = [v22 constraintEqualToConstant:a2];
    v31[0] = v23;
    v24 = [v8 heightAnchor];
    v25 = [v24 constraintEqualToConstant:a3];
    v31[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v21 activateConstraints:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end