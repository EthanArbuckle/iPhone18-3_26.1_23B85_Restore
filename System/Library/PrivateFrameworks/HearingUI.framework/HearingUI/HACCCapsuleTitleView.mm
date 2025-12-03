@interface HACCCapsuleTitleView
- (HACCCapsuleTitleView)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
@end

@implementation HACCCapsuleTitleView

- (HACCCapsuleTitleView)initWithFrame:(CGRect)frame
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = HACCCapsuleTitleView;
  v3 = [(HACCCapsuleTitleView *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v6 = [v4 initWithEffect:controlCenterSecondaryVibrancyEffect];
    titleContainer = v3->_titleContainer;
    v3->_titleContainer = v6;

    [(UIVisualEffectView *)v3->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HACCCapsuleTitleView *)v3 addSubview:v3->_titleContainer];
    v8 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HACCCapsuleTitleView semanticContentAttribute](v3, "semanticContentAttribute")}] == 1;
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    v50 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:32770 options:0];
    v11 = v3->_titleLabel;
    v12 = MEMORY[0x277D74300];
    [v50 pointSize];
    v13 = [v12 fontWithDescriptor:v50 size:?];
    [(UILabel *)v11 setFont:v13];

    v14 = v3->_titleLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v14 setTextColor:whiteColor];

    [(UILabel *)v3->_titleLabel setTextAlignment:2 * v8];
    [(UILabel *)v3->_titleLabel setClipsToBounds:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v17];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v3->_titleContainer contentView];
    [contentView addSubview:v3->_titleLabel];

    v38 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIVisualEffectView *)v3->_titleContainer leadingAnchor];
    leadingAnchor2 = [(HACCCapsuleTitleView *)v3 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v47;
    trailingAnchor = [(UIVisualEffectView *)v3->_titleContainer trailingAnchor];
    trailingAnchor2 = [(HACCCapsuleTitleView *)v3 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[1] = v44;
    topAnchor = [(UIVisualEffectView *)v3->_titleContainer topAnchor];
    topAnchor2 = [(HACCCapsuleTitleView *)v3 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[2] = v41;
    bottomAnchor = [(UIVisualEffectView *)v3->_titleContainer bottomAnchor];
    bottomAnchor2 = [(HACCCapsuleTitleView *)v3 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[3] = v37;
    leadingAnchor3 = [(UILabel *)v3->_titleLabel leadingAnchor];
    contentView2 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    leadingAnchor4 = [contentView2 leadingAnchor];
    CCUILayoutGutter();
    v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v52[4] = v33;
    trailingAnchor3 = [(UILabel *)v3->_titleLabel trailingAnchor];
    contentView3 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    trailingAnchor4 = [contentView3 trailingAnchor];
    CCUILayoutGutter();
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v19];
    v52[5] = v20;
    topAnchor3 = [(UILabel *)v3->_titleLabel topAnchor];
    contentView4 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    topAnchor4 = [contentView4 topAnchor];
    v24 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:10.0];
    v52[6] = v24;
    lastBaselineAnchor = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    lastBaselineAnchor2 = [(UIVisualEffectView *)v3->_titleContainer lastBaselineAnchor];
    v27 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:-10.0];
    v52[7] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
    [v38 activateConstraints:v28];
  }

  return v3;
}

- (id)accessibilityLabel
{
  titleLabel = [(HACCCapsuleTitleView *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

@end