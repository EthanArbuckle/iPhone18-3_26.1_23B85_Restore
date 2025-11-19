@interface SFPrivacyReportOverviewCellContentView
- (SFPrivacyReportOverviewCellContentView)initWithFrame:(CGRect)a3;
@end

@implementation SFPrivacyReportOverviewCellContentView

- (SFPrivacyReportOverviewCellContentView)initWithFrame:(CGRect)a3
{
  v52[8] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = SFPrivacyReportOverviewCellContentView;
  v3 = [(SFPrivacyReportOverviewCellView *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v12];

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
    v17 = [(SFPrivacyReportOverviewCellContentView *)v3 layoutMarginsGuide];
    v40 = MEMORY[0x1E696ACD8];
    v49 = [(UILabel *)v3->_titleLabel topAnchor];
    v48 = [v17 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v52[0] = v47;
    v46 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v18 = v17;
    v45 = [v17 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v52[1] = v44;
    v43 = [(UILabel *)v3->_titleLabel centerXAnchor];
    v42 = [(SFPrivacyReportOverviewCellContentView *)v3 centerXAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v52[2] = v41;
    v39 = [(UILabel *)v3->_subtitleLabel topAnchor];
    v38 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v37 = [v39 constraintGreaterThanOrEqualToAnchor:v38 constant:4.0];
    v52[3] = v37;
    v19 = [(UILabel *)v3->_subtitleLabel topAnchor];
    v20 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:4.0];

    LODWORD(v22) = 1131413504;
    [v21 setPriority:v22];
    v52[4] = v21;
    v35 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    v36 = v18;
    v23 = v18;
    v34 = [v18 leadingAnchor];
    v24 = [v35 constraintEqualToAnchor:v34];
    v52[5] = v24;
    v25 = [(UILabel *)v3->_subtitleLabel centerXAnchor];
    v26 = [(SFPrivacyReportOverviewCellContentView *)v3 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v52[6] = v27;
    v28 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    v29 = [v23 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v52[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
    [v40 activateConstraints:v31];

    v32 = v3;
  }

  return v3;
}

@end