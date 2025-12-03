@interface NTKUpNextAccessoryView
- (NTKUpNextAccessoryView)initWithFrame:(CGRect)frame;
- (void)configureWithDescription:(id)description;
@end

@implementation NTKUpNextAccessoryView

- (NTKUpNextAccessoryView)initWithFrame:(CGRect)frame
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = NTKUpNextAccessoryView;
  v3 = [(NTKUpNextAccessoryView *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    v6 = ___LayoutConstants_block_invoke_29(device, device);
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v15 setTextColor:whiteColor];

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
    layer = [(NTKUpNextAccessoryView *)v3 layer];
    [layer setCornerRadius:v8];

    layer2 = [(NTKUpNextAccessoryView *)v3 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [(NTKUpNextAccessoryView *)v3 addSubview:v3->_label];
    leadingAnchor = [(CLKUIColoringLabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(NTKUpNextAccessoryView *)v3 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    v40[0] = v36;
    trailingAnchor = [(CLKUIColoringLabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [(NTKUpNextAccessoryView *)v3 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];
    v40[1] = v24;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    bottomAnchor = [(NTKUpNextAccessoryView *)v3 bottomAnchor];
    v27 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v10];
    v40[2] = v27;
    topAnchor = [(NTKUpNextAccessoryView *)v3 topAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_label firstBaselineAnchor];
    [v11 capHeight];
    v31 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:-(v10 + v30)];
    v40[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v32];
  }

  return v3;
}

- (void)configureWithDescription:(id)description
{
  descriptionCopy = description;
  if (([(REAccessoryDescription *)self->_accessoryDescription isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryDescription, description);
    [(CLKUIColoringLabel *)self->_label setText:0];
    label = self->_label;
    textProvider = [(REAccessoryDescription *)self->_accessoryDescription textProvider];
    [(CLKUIColoringLabel *)label setTextProvider:textProvider];

    backgroundColor = [(REAccessoryDescription *)self->_accessoryDescription backgroundColor];
    [(NTKUpNextAccessoryView *)self setBackgroundColor:backgroundColor];
  }
}

@end