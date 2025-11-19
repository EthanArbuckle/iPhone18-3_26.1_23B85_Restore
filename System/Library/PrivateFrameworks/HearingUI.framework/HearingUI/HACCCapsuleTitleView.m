@interface HACCCapsuleTitleView
- (HACCCapsuleTitleView)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
@end

@implementation HACCCapsuleTitleView

- (HACCCapsuleTitleView)initWithFrame:(CGRect)a3
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = HACCCapsuleTitleView;
  v3 = [(HACCCapsuleTitleView *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D68]);
    v5 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v6 = [v4 initWithEffect:v5];
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
    v15 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v14 setTextColor:v15];

    [(UILabel *)v3->_titleLabel setTextAlignment:2 * v8];
    [(UILabel *)v3->_titleLabel setClipsToBounds:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v17];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    [v18 addSubview:v3->_titleLabel];

    v38 = MEMORY[0x277CCAAD0];
    v49 = [(UIVisualEffectView *)v3->_titleContainer leadingAnchor];
    v48 = [(HACCCapsuleTitleView *)v3 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v52[0] = v47;
    v46 = [(UIVisualEffectView *)v3->_titleContainer trailingAnchor];
    v45 = [(HACCCapsuleTitleView *)v3 trailingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v52[1] = v44;
    v43 = [(UIVisualEffectView *)v3->_titleContainer topAnchor];
    v42 = [(HACCCapsuleTitleView *)v3 topAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v52[2] = v41;
    v40 = [(UIVisualEffectView *)v3->_titleContainer bottomAnchor];
    v39 = [(HACCCapsuleTitleView *)v3 bottomAnchor];
    v37 = [v40 constraintEqualToAnchor:v39];
    v52[3] = v37;
    v35 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v36 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    v34 = [v36 leadingAnchor];
    CCUILayoutGutter();
    v33 = [v35 constraintEqualToAnchor:v34 constant:?];
    v52[4] = v33;
    v31 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v32 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    v30 = [v32 trailingAnchor];
    CCUILayoutGutter();
    v20 = [v31 constraintEqualToAnchor:v30 constant:-v19];
    v52[5] = v20;
    v21 = [(UILabel *)v3->_titleLabel topAnchor];
    v22 = [(UIVisualEffectView *)v3->_titleContainer contentView];
    v23 = [v22 topAnchor];
    v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:10.0];
    v52[6] = v24;
    v25 = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v26 = [(UIVisualEffectView *)v3->_titleContainer lastBaselineAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-10.0];
    v52[7] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
    [v38 activateConstraints:v28];
  }

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(HACCCapsuleTitleView *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end