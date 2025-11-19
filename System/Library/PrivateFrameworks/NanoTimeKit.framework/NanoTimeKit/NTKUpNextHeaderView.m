@interface NTKUpNextHeaderView
- (NTKUpNextHeaderView)initWithFrame:(CGRect)a3;
- (void)setTextProvider:(id)a3;
@end

@implementation NTKUpNextHeaderView

- (NTKUpNextHeaderView)initWithFrame:(CGRect)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = NTKUpNextHeaderView;
  v3 = [(NTKUpNextHeaderView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];
    v6 = ___LayoutConstants_block_invoke_23(v5, v5);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [off_27877BEF8 alloc];
    v14 = [v13 initWithFrame:0 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v14;

    v16 = v3->_label;
    v17 = [MEMORY[0x277CBBB08] systemFontOfSize:v10 weight:*MEMORY[0x277D74420]];
    [(CLKUIColoringLabel *)v16 setFont:v17];

    v18 = v3->_label;
    v19 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v18 setTextColor:v19];

    [(CLKUIColoringLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v3->_label;
    v21 = [MEMORY[0x277D75348] clearColor];
    [(CLKUIColoringLabel *)v20 setBackgroundColor:v21];

    [(CLKUIColoringLabel *)v3->_label setTextAlignment:0];
    [(NTKUpNextHeaderView *)v3 addSubview:v3->_label];
    v32 = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    v22 = [(NTKUpNextHeaderView *)v3 leadingAnchor];
    v23 = [v32 constraintEqualToAnchor:v22 constant:v6];
    v34[0] = v23;
    v24 = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    v25 = [(NTKUpNextHeaderView *)v3 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:v12 * -1.5];
    v34[1] = v26;
    v27 = [(CLKUIColoringLabel *)v3->_label lastBaselineAnchor];
    v28 = [(NTKUpNextHeaderView *)v3 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-v8];
    v34[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v30];
  }

  return v3;
}

- (void)setTextProvider:(id)a3
{
  v4 = [a3 copy];
  textProvider = self->_textProvider;
  self->_textProvider = v4;

  label = self->_label;
  v7 = self->_textProvider;

  [(CLKUIColoringLabel *)label setTextProvider:v7];
}

@end