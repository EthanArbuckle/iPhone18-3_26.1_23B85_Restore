@interface FAFamilyHeaderView
- (FAFamilyHeaderView)initWithCoder:(id)a3;
- (FAFamilyHeaderView)initWithFamilyCircle:(id)a3 profilePictureStore:(id)a4;
- (FAFamilyHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation FAFamilyHeaderView

- (FAFamilyHeaderView)initWithCoder:(id)a3
{
  [(FAFamilyHeaderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FAFamilyHeaderView)initWithFrame:(CGRect)a3
{
  [(FAFamilyHeaderView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (FAFamilyHeaderView)initWithFamilyCircle:(id)a3 profilePictureStore:(id)a4
{
  v43[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = FAFamilyHeaderView;
  v8 = [(FAFamilyHeaderView *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    familyHeaderLabel = v8->_familyHeaderLabel;
    v8->_familyHeaderLabel = v9;

    [(UILabel *)v8->_familyHeaderLabel setTextAlignment:1];
    v11 = v8->_familyHeaderLabel;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"FAMILY_SETTINGS_PAGE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
    [(UILabel *)v11 setText:v13];

    v14 = v8->_familyHeaderLabel;
    v15 = [MEMORY[0x277D74300] systemFontOfSize:24.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v14 setFont:v15];

    [(UILabel *)v8->_familyHeaderLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8->_familyHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FAFamilyHeaderView *)v8 addSubview:v8->_familyHeaderLabel];
    v16 = [[FAMugshotMarqueeView alloc] initWithFamilyCircle:v6 profilePictureStore:v7];
    mugShots = v8->_mugShots;
    v8->_mugShots = v16;

    [(FAMugshotMarqueeView *)v8->_mugShots setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FAFamilyHeaderView *)v8 addSubview:v8->_mugShots];
    v41 = [(FAMugshotMarqueeView *)v8->_mugShots leftAnchor];
    v40 = [(FAFamilyHeaderView *)v8 leftAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:8.0];
    v43[0] = v39;
    v38 = [(FAMugshotMarqueeView *)v8->_mugShots rightAnchor];
    v37 = [(FAFamilyHeaderView *)v8 rightAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:-8.0];
    v43[1] = v36;
    v35 = [(FAMugshotMarqueeView *)v8->_mugShots topAnchor];
    v34 = [(FAFamilyHeaderView *)v8 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:24.0];
    v43[2] = v33;
    v32 = [(UILabel *)v8->_familyHeaderLabel firstBaselineAnchor];
    v31 = [(FAMugshotMarqueeView *)v8->_mugShots bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:40.0];
    v43[3] = v30;
    v29 = [(UILabel *)v8->_familyHeaderLabel leadingAnchor];
    v28 = [(FAFamilyHeaderView *)v8 leadingAnchor];
    v18 = [v29 constraintEqualToAnchor:v28 constant:8.0];
    v43[4] = v18;
    v19 = [(UILabel *)v8->_familyHeaderLabel trailingAnchor];
    v20 = [(FAFamilyHeaderView *)v8 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];
    v43[5] = v21;
    v22 = [(UILabel *)v8->_familyHeaderLabel firstBaselineAnchor];
    v23 = [(FAFamilyHeaderView *)v8 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-24.0];
    v43[6] = v24;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];

    [MEMORY[0x277CCAAD0] activateConstraints:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

@end