@interface NTKUpNextHeaderView
- (NTKUpNextHeaderView)initWithFrame:(CGRect)frame;
- (void)setTextProvider:(id)provider;
@end

@implementation NTKUpNextHeaderView

- (NTKUpNextHeaderView)initWithFrame:(CGRect)frame
{
  v34[3] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = NTKUpNextHeaderView;
  v3 = [(NTKUpNextHeaderView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    v6 = ___LayoutConstants_block_invoke_23(device, device);
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v18 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v3->_label;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CLKUIColoringLabel *)v20 setBackgroundColor:clearColor];

    [(CLKUIColoringLabel *)v3->_label setTextAlignment:0];
    [(NTKUpNextHeaderView *)v3 addSubview:v3->_label];
    leadingAnchor = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(NTKUpNextHeaderView *)v3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
    v34[0] = v23;
    trailingAnchor = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [(NTKUpNextHeaderView *)v3 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v12 * -1.5];
    v34[1] = v26;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_label lastBaselineAnchor];
    bottomAnchor = [(NTKUpNextHeaderView *)v3 bottomAnchor];
    v29 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v8];
    v34[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v30];
  }

  return v3;
}

- (void)setTextProvider:(id)provider
{
  v4 = [provider copy];
  textProvider = self->_textProvider;
  self->_textProvider = v4;

  label = self->_label;
  v7 = self->_textProvider;

  [(CLKUIColoringLabel *)label setTextProvider:v7];
}

@end