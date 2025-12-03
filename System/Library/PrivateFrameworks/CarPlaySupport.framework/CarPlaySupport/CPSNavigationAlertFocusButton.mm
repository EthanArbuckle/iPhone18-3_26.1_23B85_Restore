@interface CPSNavigationAlertFocusButton
+ (CPSNavigationAlertFocusButton)buttonWithAction:(id)action progressView:(id)view isPrimary:(BOOL)primary;
- (CGSize)intrinsicContentSize;
- (CPAlertAction)alertAction;
- (CPSNavigationAlertProgressView)progressView;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation CPSNavigationAlertFocusButton

+ (CPSNavigationAlertFocusButton)buttonWithAction:(id)action progressView:(id)view isPrimary:(BOOL)primary
{
  v46[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v43 = 0;
  objc_storeStrong(&v43, view);
  primaryCopy = primary;
  v41 = [selfCopy buttonWithType:?];
  v28 = CPSBackgroundColorForAlertAction(location[0], primary);
  [v41 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v28);
  v29 = CPSLabelColorForAlertAction(location[0], primary);
  [v41 setTitleColor:? forState:?];
  MEMORY[0x277D82BD8](v29);
  v30 = CPSLabelColorForAlertAction(location[0], primary);
  [v41 setTitleColor:? forState:?];
  *&v5 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  title = [location[0] title];
  [v41 setTitle:? forState:?];
  titleLabel = [v41 titleLabel];
  v32 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [titleLabel setFont:?];
  MEMORY[0x277D82BD8](v32);
  titleLabel2 = [v41 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];
  titleLabel3 = [v41 titleLabel];
  [titleLabel3 setMinimumScaleFactor:0.899999976];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](titleLabel3).n128_f64[0]}];
  [v41 setAlertAction:location[0]];
  [v41 setIsPrimary:primary];
  layer = [v41 layer];
  [layer setCornerRadius:18.0];
  layer2 = [v41 layer];
  [layer2 setMaskedCorners:15];
  *&v6 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
  v38 = *MEMORY[0x277CDA138];
  layer3 = [v41 layer];
  [layer3 setCornerCurve:v38];
  layer4 = [v41 layer];
  [layer4 setMasksToBounds:1];
  *&v7 = MEMORY[0x277D82BD8](layer4).n128_u64[0];
  if (v43)
  {
    [v41 setProgressView:{v43, v7}];
    [v41 addSubview:v43];
    titleLabel4 = [v41 titleLabel];
    [v41 bringSubviewToFront:?];
    *&v8 = MEMORY[0x277D82BD8](titleLabel4).n128_u64[0];
    v12 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v43 leadingAnchor];
    leadingAnchor2 = [v41 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:?];
    v46[0] = v23;
    trailingAnchor = [v43 trailingAnchor];
    trailingAnchor2 = [v41 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:?];
    v46[1] = v20;
    topAnchor = [v43 topAnchor];
    topAnchor2 = [v41 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:?];
    v46[2] = v17;
    bottomAnchor = [v43 bottomAnchor];
    bottomAnchor2 = [v41 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:?];
    v46[3] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
  }

  v10 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, began);
  v6 = 0;
  objc_storeStrong(&v6, event);
  v5.receiver = selfCopy;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesBegan:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)selfCopy setHighlighted:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ended);
  v6 = 0;
  objc_storeStrong(&v6, event);
  v5.receiver = selfCopy;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesEnded:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)selfCopy setHighlighted:0];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  v6 = 0;
  objc_storeStrong(&v6, event);
  v5.receiver = selfCopy;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesCancelled:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)selfCopy setHighlighted:0];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  CGSizeMake_9();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CPAlertAction)alertAction
{
  WeakRetained = objc_loadWeakRetained(&self->_alertAction);

  return WeakRetained;
}

- (CPSNavigationAlertProgressView)progressView
{
  WeakRetained = objc_loadWeakRetained(&self->_progressView);

  return WeakRetained;
}

@end