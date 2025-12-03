@interface CPSLabeledValueView
- (CPSLabeledValueView)init;
- (void)setTextColor:(id)color;
@end

@implementation CPSLabeledValueView

- (CPSLabeledValueView)init
{
  v40[7] = *MEMORY[0x277D85DE8];
  v38 = a2;
  v39 = 0;
  v37.receiver = self;
  v37.super_class = CPSLabeledValueView;
  v39 = [(CPSLabeledValueView *)&v37 init];
  objc_storeStrong(&v39, v39);
  if (v39)
  {
    [(CPSLabeledValueView *)v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v35 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = v35;
    v8 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:? weight:?];
    [v7 setFont:?];
    *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v35 setTextAlignment:v2];
    [v35 setTextColor:whiteColor];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v39->_valueText, v35);
    [(CPSLabeledValueView *)v39 addSubview:v35];
    v34 = objc_alloc_init(MEMORY[0x277D756B8]);
    v9 = v34;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    [v9 setFont:?];
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [v34 setTextAlignment:{1, v3}];
    [v34 setTextColor:whiteColor];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v39->_label, v34);
    [(CPSLabeledValueView *)v39 addSubview:v34];
    firstBaselineAnchor = [v34 firstBaselineAnchor];
    lastBaselineAnchor = [v35 lastBaselineAnchor];
    v33 = [firstBaselineAnchor constraintEqualToAnchor:14.0 constant:?];
    MEMORY[0x277D82BD8](lastBaselineAnchor);
    v4 = MEMORY[0x277D82BD8](firstBaselineAnchor);
    v4.n128_u32[0] = 1148846080;
    [v33 setPriority:v4.n128_f64[0]];
    v13 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v35 centerXAnchor];
    centerXAnchor2 = [(CPSLabeledValueView *)v39 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:?];
    v40[0] = v30;
    centerXAnchor3 = [v34 centerXAnchor];
    centerXAnchor4 = [(CPSLabeledValueView *)v39 centerXAnchor];
    v27 = [centerXAnchor3 constraintEqualToAnchor:?];
    v40[1] = v27;
    widthAnchor = [(CPSLabeledValueView *)v39 widthAnchor];
    widthAnchor2 = [v35 widthAnchor];
    v24 = [widthAnchor constraintGreaterThanOrEqualToAnchor:?];
    v40[2] = v24;
    widthAnchor3 = [(CPSLabeledValueView *)v39 widthAnchor];
    widthAnchor4 = [v34 widthAnchor];
    v21 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:?];
    v40[3] = v21;
    v40[4] = v33;
    topAnchor = [v35 topAnchor];
    topAnchor2 = [(CPSLabeledValueView *)v39 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:?];
    v40[5] = v18;
    bottomAnchor = [(CPSLabeledValueView *)v39 bottomAnchor];
    bottomAnchor2 = [v34 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:?];
    v40[6] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:7];
    [v13 activateConstraints:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](widthAnchor4);
    MEMORY[0x277D82BD8](widthAnchor3);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&whiteColor, 0);
  }

  v6 = MEMORY[0x277D82BE0](v39);
  objc_storeStrong(&v39, 0);
  return v6;
}

- (void)setTextColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  valueText = [(CPSLabeledValueView *)selfCopy valueText];
  [(UILabel *)valueText setTextColor:location[0]];
  *&v3 = MEMORY[0x277D82BD8](valueText).n128_u64[0];
  label = [(CPSLabeledValueView *)selfCopy label];
  [(UILabel *)label setTextColor:location[0]];
  MEMORY[0x277D82BD8](label);
  objc_storeStrong(location, 0);
}

@end