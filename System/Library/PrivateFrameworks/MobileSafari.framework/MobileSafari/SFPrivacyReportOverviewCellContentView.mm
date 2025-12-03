@interface SFPrivacyReportOverviewCellContentView
- (SFPrivacyReportOverviewCellContentView)initWithFrame:(CGRect)frame;
@end

@implementation SFPrivacyReportOverviewCellContentView

- (SFPrivacyReportOverviewCellContentView)initWithFrame:(CGRect)frame
{
  v52[8] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = SFPrivacyReportOverviewCellContentView;
  v3 = [(SFPrivacyReportOverviewCellView *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setLineBreakStrategy:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v3->_titleLabel setFont:v11];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v13;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v3->_subtitleLabel setLineBreakStrategy:1];
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8]];
    v50 = [v15 fontDescriptorWithSymbolicTraits:2];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v50 size:0.0];
    [(UILabel *)v3->_subtitleLabel setFont:v16];

    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(SFPrivacyReportOverviewCellContentView *)v3 addSubview:v3->_titleLabel];
    [(SFPrivacyReportOverviewCellContentView *)v3 addSubview:v3->_subtitleLabel];
    layoutMarginsGuide = [(SFPrivacyReportOverviewCellContentView *)v3 layoutMarginsGuide];
    v40 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[0] = v47;
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    v18 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[1] = v44;
    centerXAnchor = [(UILabel *)v3->_titleLabel centerXAnchor];
    centerXAnchor2 = [(SFPrivacyReportOverviewCellContentView *)v3 centerXAnchor];
    v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v52[2] = v41;
    topAnchor3 = [(UILabel *)v3->_subtitleLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    v37 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:4.0];
    v52[3] = v37;
    topAnchor4 = [(UILabel *)v3->_subtitleLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v21 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:4.0];

    LODWORD(v22) = 1131413504;
    [v21 setPriority:v22];
    v52[4] = v21;
    leadingAnchor3 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    v36 = v18;
    v23 = v18;
    leadingAnchor4 = [v18 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v52[5] = v24;
    centerXAnchor3 = [(UILabel *)v3->_subtitleLabel centerXAnchor];
    centerXAnchor4 = [(SFPrivacyReportOverviewCellContentView *)v3 centerXAnchor];
    v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v52[6] = v27;
    bottomAnchor3 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    bottomAnchor4 = [v23 bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v52[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
    [v40 activateConstraints:v31];

    v32 = v3;
  }

  return v3;
}

@end