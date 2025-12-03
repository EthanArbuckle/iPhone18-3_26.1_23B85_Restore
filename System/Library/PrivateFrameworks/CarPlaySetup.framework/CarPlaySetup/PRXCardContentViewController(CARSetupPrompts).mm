@interface PRXCardContentViewController(CARSetupPrompts)
- (id)carSetup_carPlayIconView;
- (void)carSetup_addCarPlayIconCenteredInMainContent;
- (void)carSetup_addMainContentCenteredView:()CARSetupPrompts size:;
@end

@implementation PRXCardContentViewController(CARSetupPrompts)

- (id)carSetup_carPlayIconView
{
  v0 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v2 = [v0 _applicationIconImageForBundleIdentifier:@"com.apple.CarPlayApp" format:2 scale:?];

  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v2];

  return v3;
}

- (void)carSetup_addCarPlayIconCenteredInMainContent
{
  carSetup_carPlayIconView = [self carSetup_carPlayIconView];
  [self carSetup_addMainContentCenteredView:carSetup_carPlayIconView size:{98.0, 98.0}];
}

- (void)carSetup_addMainContentCenteredView:()CARSetupPrompts size:
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [self contentView];
  [contentView addSubview:v8];

  contentView2 = [self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  v28 = MEMORY[0x277CCAAD0];
  topAnchor = [v8 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v13;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[1] = v16;
  centerXAnchor = [v8 centerXAnchor];
  v30 = mainContentGuide;
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [v28 activateConstraints:v20];

  if (a2 != *MEMORY[0x277CBF3A8] || a3 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v21 = MEMORY[0x277CCAAD0];
    widthAnchor = [v8 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:a2];
    v31[0] = v23;
    heightAnchor = [v8 heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:a3];
    v31[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v21 activateConstraints:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end