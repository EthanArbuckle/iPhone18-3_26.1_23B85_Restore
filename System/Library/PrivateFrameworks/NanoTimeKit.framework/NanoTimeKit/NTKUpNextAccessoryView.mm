@interface NTKUpNextAccessoryView
- (NTKUpNextAccessoryView)initWithFrame:(CGRect)a3;
- (void)configureWithDescription:(id)a3;
@end

@implementation NTKUpNextAccessoryView

- (NTKUpNextAccessoryView)initWithFrame:(CGRect)a3
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = NTKUpNextAccessoryView;
  v3 = [(NTKUpNextAccessoryView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];
    v6 = ___LayoutConstants_block_invoke_29(v5, v5);
    v8 = v7;
    v10 = v9;

    v11 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    v12 = [off_27877BEF8 alloc];
    v13 = [v12 initWithFrame:0 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v13;

    v34 = v11;
    [(CLKUIColoringLabel *)v3->_label setFont:v11];
    v15 = v3->_label;
    v16 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v15 setTextColor:v16];

    [(CLKUIColoringLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v3->_label setNowProvider:&__block_literal_global_84];
    LODWORD(v17) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentCompressionResistancePriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentCompressionResistancePriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentHuggingPriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(CLKUIColoringLabel *)v3->_label setContentHuggingPriority:0 forAxis:v20];
    v21 = [(NTKUpNextAccessoryView *)v3 layer];
    [v21 setCornerRadius:v8];

    v22 = [(NTKUpNextAccessoryView *)v3 layer];
    [v22 setCornerCurve:*MEMORY[0x277CDA138]];

    [(NTKUpNextAccessoryView *)v3 addSubview:v3->_label];
    v38 = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    v37 = [(NTKUpNextAccessoryView *)v3 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:v10];
    v40[0] = v36;
    v35 = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    v23 = [(NTKUpNextAccessoryView *)v3 trailingAnchor];
    v24 = [v35 constraintEqualToAnchor:v23 constant:-v10];
    v40[1] = v24;
    v25 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    v26 = [(NTKUpNextAccessoryView *)v3 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-v10];
    v40[2] = v27;
    v28 = [(NTKUpNextAccessoryView *)v3 topAnchor];
    v29 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    [v11 capHeight];
    v31 = [v28 constraintEqualToAnchor:v29 constant:-(v10 + v30)];
    v40[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v32];
  }

  return v3;
}

- (void)configureWithDescription:(id)a3
{
  v8 = a3;
  if (([(REAccessoryDescription *)self->_accessoryDescription isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryDescription, a3);
    [(CLKUIColoringLabel *)self->_label setText:0];
    label = self->_label;
    v6 = [(REAccessoryDescription *)self->_accessoryDescription textProvider];
    [(CLKUIColoringLabel *)label setTextProvider:v6];

    v7 = [(REAccessoryDescription *)self->_accessoryDescription backgroundColor];
    [(NTKUpNextAccessoryView *)self setBackgroundColor:v7];
  }
}

@end