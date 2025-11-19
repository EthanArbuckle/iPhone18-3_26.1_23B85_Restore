@interface CPSLabeledValueView
- (CPSLabeledValueView)init;
- (void)setTextColor:(id)a3;
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
    v36 = [MEMORY[0x277D75348] whiteColor];
    v35 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = v35;
    v8 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:? weight:?];
    [v7 setFont:?];
    *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v35 setTextAlignment:v2];
    [v35 setTextColor:v36];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v39->_valueText, v35);
    [(CPSLabeledValueView *)v39 addSubview:v35];
    v34 = objc_alloc_init(MEMORY[0x277D756B8]);
    v9 = v34;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    [v9 setFont:?];
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [v34 setTextAlignment:{1, v3}];
    [v34 setTextColor:v36];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v39->_label, v34);
    [(CPSLabeledValueView *)v39 addSubview:v34];
    v12 = [v34 firstBaselineAnchor];
    v11 = [v35 lastBaselineAnchor];
    v33 = [v12 constraintEqualToAnchor:14.0 constant:?];
    MEMORY[0x277D82BD8](v11);
    v4 = MEMORY[0x277D82BD8](v12);
    v4.n128_u32[0] = 1148846080;
    [v33 setPriority:v4.n128_f64[0]];
    v13 = MEMORY[0x277CCAAD0];
    v32 = [v35 centerXAnchor];
    v31 = [(CPSLabeledValueView *)v39 centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:?];
    v40[0] = v30;
    v29 = [v34 centerXAnchor];
    v28 = [(CPSLabeledValueView *)v39 centerXAnchor];
    v27 = [v29 constraintEqualToAnchor:?];
    v40[1] = v27;
    v26 = [(CPSLabeledValueView *)v39 widthAnchor];
    v25 = [v35 widthAnchor];
    v24 = [v26 constraintGreaterThanOrEqualToAnchor:?];
    v40[2] = v24;
    v23 = [(CPSLabeledValueView *)v39 widthAnchor];
    v22 = [v34 widthAnchor];
    v21 = [v23 constraintGreaterThanOrEqualToAnchor:?];
    v40[3] = v21;
    v40[4] = v33;
    v20 = [v35 topAnchor];
    v19 = [(CPSLabeledValueView *)v39 topAnchor];
    v18 = [v20 constraintEqualToAnchor:?];
    v40[5] = v18;
    v17 = [(CPSLabeledValueView *)v39 bottomAnchor];
    v16 = [v34 bottomAnchor];
    v15 = [v17 constraintEqualToAnchor:?];
    v40[6] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:7];
    [v13 activateConstraints:?];
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
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  v6 = MEMORY[0x277D82BE0](v39);
  objc_storeStrong(&v39, 0);
  return v6;
}

- (void)setTextColor:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSLabeledValueView *)v7 valueText];
  [(UILabel *)v4 setTextColor:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(CPSLabeledValueView *)v7 label];
  [(UILabel *)v5 setTextColor:location[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

@end