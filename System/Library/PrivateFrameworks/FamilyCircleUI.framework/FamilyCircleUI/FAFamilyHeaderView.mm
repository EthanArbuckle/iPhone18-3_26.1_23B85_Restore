@interface FAFamilyHeaderView
- (FAFamilyHeaderView)initWithCoder:(id)coder;
- (FAFamilyHeaderView)initWithFamilyCircle:(id)circle profilePictureStore:(id)store;
- (FAFamilyHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation FAFamilyHeaderView

- (FAFamilyHeaderView)initWithCoder:(id)coder
{
  [(FAFamilyHeaderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FAFamilyHeaderView)initWithFrame:(CGRect)frame
{
  [(FAFamilyHeaderView *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (FAFamilyHeaderView)initWithFamilyCircle:(id)circle profilePictureStore:(id)store
{
  v43[7] = *MEMORY[0x277D85DE8];
  circleCopy = circle;
  storeCopy = store;
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
    v16 = [[FAMugshotMarqueeView alloc] initWithFamilyCircle:circleCopy profilePictureStore:storeCopy];
    mugShots = v8->_mugShots;
    v8->_mugShots = v16;

    [(FAMugshotMarqueeView *)v8->_mugShots setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FAFamilyHeaderView *)v8 addSubview:v8->_mugShots];
    leftAnchor = [(FAMugshotMarqueeView *)v8->_mugShots leftAnchor];
    leftAnchor2 = [(FAFamilyHeaderView *)v8 leftAnchor];
    v39 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:8.0];
    v43[0] = v39;
    rightAnchor = [(FAMugshotMarqueeView *)v8->_mugShots rightAnchor];
    rightAnchor2 = [(FAFamilyHeaderView *)v8 rightAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-8.0];
    v43[1] = v36;
    topAnchor = [(FAMugshotMarqueeView *)v8->_mugShots topAnchor];
    topAnchor2 = [(FAFamilyHeaderView *)v8 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
    v43[2] = v33;
    firstBaselineAnchor = [(UILabel *)v8->_familyHeaderLabel firstBaselineAnchor];
    bottomAnchor = [(FAMugshotMarqueeView *)v8->_mugShots bottomAnchor];
    v30 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:40.0];
    v43[3] = v30;
    leadingAnchor = [(UILabel *)v8->_familyHeaderLabel leadingAnchor];
    leadingAnchor2 = [(FAFamilyHeaderView *)v8 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v43[4] = v18;
    trailingAnchor = [(UILabel *)v8->_familyHeaderLabel trailingAnchor];
    trailingAnchor2 = [(FAFamilyHeaderView *)v8 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v43[5] = v21;
    firstBaselineAnchor2 = [(UILabel *)v8->_familyHeaderLabel firstBaselineAnchor];
    bottomAnchor2 = [(FAFamilyHeaderView *)v8 bottomAnchor];
    v24 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
    v43[6] = v24;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];

    [MEMORY[0x277CCAAD0] activateConstraints:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

@end