@interface CPSNavigationAlertFocusButton
+ (CPSNavigationAlertFocusButton)buttonWithAction:(id)a3 progressView:(id)a4 isPrimary:(BOOL)a5;
- (CGSize)intrinsicContentSize;
- (CPAlertAction)alertAction;
- (CPSNavigationAlertProgressView)progressView;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CPSNavigationAlertFocusButton

+ (CPSNavigationAlertFocusButton)buttonWithAction:(id)a3 progressView:(id)a4 isPrimary:(BOOL)a5
{
  v46[4] = *MEMORY[0x277D85DE8];
  v45 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = a5;
  v41 = [v45 buttonWithType:?];
  v28 = CPSBackgroundColorForAlertAction(location[0], a5);
  [v41 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v28);
  v29 = CPSLabelColorForAlertAction(location[0], a5);
  [v41 setTitleColor:? forState:?];
  MEMORY[0x277D82BD8](v29);
  v30 = CPSLabelColorForAlertAction(location[0], a5);
  [v41 setTitleColor:? forState:?];
  *&v5 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v31 = [location[0] title];
  [v41 setTitle:? forState:?];
  v33 = [v41 titleLabel];
  v32 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [v33 setFont:?];
  MEMORY[0x277D82BD8](v32);
  v34 = [v41 titleLabel];
  [v34 setAdjustsFontSizeToFitWidth:1];
  v35 = [v41 titleLabel];
  [v35 setMinimumScaleFactor:0.899999976];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](v35).n128_f64[0]}];
  [v41 setAlertAction:location[0]];
  [v41 setIsPrimary:a5];
  v36 = [v41 layer];
  [v36 setCornerRadius:18.0];
  v37 = [v41 layer];
  [v37 setMaskedCorners:15];
  *&v6 = MEMORY[0x277D82BD8](v37).n128_u64[0];
  v38 = *MEMORY[0x277CDA138];
  v39 = [v41 layer];
  [v39 setCornerCurve:v38];
  v40 = [v41 layer];
  [v40 setMasksToBounds:1];
  *&v7 = MEMORY[0x277D82BD8](v40).n128_u64[0];
  if (v43)
  {
    [v41 setProgressView:{v43, v7}];
    [v41 addSubview:v43];
    v11 = [v41 titleLabel];
    [v41 bringSubviewToFront:?];
    *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v12 = MEMORY[0x277CCAAD0];
    v25 = [v43 leadingAnchor];
    v24 = [v41 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:?];
    v46[0] = v23;
    v22 = [v43 trailingAnchor];
    v21 = [v41 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:?];
    v46[1] = v20;
    v19 = [v43 topAnchor];
    v18 = [v41 topAnchor];
    v17 = [v19 constraintEqualToAnchor:?];
    v46[2] = v17;
    v16 = [v43 bottomAnchor];
    v15 = [v41 bottomAnchor];
    v14 = [v16 constraintEqualToAnchor:?];
    v46[3] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
  }

  v10 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesBegan:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)v8 setHighlighted:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesEnded:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)v8 setHighlighted:0];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = CPSNavigationAlertFocusButton;
  [(CPSNavigationAlertFocusButton *)&v5 pressesCancelled:location[0] withEvent:v6];
  if (CPUIPressesContainsPressType(location[0], 4))
  {
    [(CPSNavigationAlertFocusButton *)v8 setHighlighted:0];
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