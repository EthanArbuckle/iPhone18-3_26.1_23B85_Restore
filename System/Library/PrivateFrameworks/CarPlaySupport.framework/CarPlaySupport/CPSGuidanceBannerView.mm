@interface CPSGuidanceBannerView
- (CPSGuidanceBannerView)initWithBannerItem:(id)item;
- (void)_setGuidanceImageViewForImageSet:(id)set;
- (void)_updateApplicationIconImage;
- (void)_updateBannerSelectedState;
- (void)_updateLabels;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBannerWithBannerItem:(id)item;
@end

@implementation CPSGuidanceBannerView

- (CPSGuidanceBannerView)initWithBannerItem:(id)item
{
  v94[11] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = selfCopy;
  selfCopy = 0;
  v90.receiver = v3;
  v90.super_class = CPSGuidanceBannerView;
  selfCopy = [(CPSBannerView *)&v90 initWithBannerItem:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    leadingAnchor = [(CPSGuidanceBannerView *)selfCopy leadingAnchor];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    applicationIconImageView = selfCopy->_applicationIconImageView;
    selfCopy->_applicationIconImageView = v4;
    *&v6 = MEMORY[0x277D82BD8](applicationIconImageView).n128_u64[0];
    [(CPSGuidanceBannerView *)selfCopy _updateApplicationIconImage];
    [(UIImageView *)selfCopy->_applicationIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSGuidanceBannerView *)selfCopy addSubview:selfCopy->_applicationIconImageView];
    trailingAnchor = [(UIImageView *)selfCopy->_applicationIconImageView trailingAnchor];
    v8 = leadingAnchor;
    leadingAnchor = trailingAnchor;
    MEMORY[0x277D82BD8](v8);
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    guidanceImageView = selfCopy->_guidanceImageView;
    selfCopy->_guidanceImageView = v9;
    *&v11 = MEMORY[0x277D82BD8](guidanceImageView).n128_u64[0];
    [(UIImageView *)selfCopy->_guidanceImageView setTranslatesAutoresizingMaskIntoConstraints:0, v11];
    [(UIImageView *)selfCopy->_guidanceImageView setContentMode:1];
    [(UIImageView *)selfCopy->_guidanceImageView setContentCompressionResistancePriority:0 forAxis:?];
    widthAnchor = [(UIImageView *)selfCopy->_guidanceImageView widthAnchor];
    v87 = [widthAnchor constraintLessThanOrEqualToConstant:92.0];
    v12 = MEMORY[0x277D82BD8](widthAnchor);
    v12.n128_u32[0] = 1148846080;
    [v87 setPriority:v12.n128_f64[0]];
    heightAnchor = [(UIImageView *)selfCopy->_guidanceImageView heightAnchor];
    v86 = [heightAnchor constraintLessThanOrEqualToConstant:38.0];
    v13 = MEMORY[0x277D82BD8](heightAnchor);
    v13.n128_u32[0] = 1148846080;
    [v86 setPriority:v13.n128_f64[0]];
    bannerItem = [(CPSBannerView *)selfCopy bannerItem];
    imageSet = [(CPSBannerItem *)bannerItem imageSet];
    MEMORY[0x277D82BD8](imageSet);
    *&v14 = MEMORY[0x277D82BD8](bannerItem).n128_u64[0];
    if (imageSet)
    {
      v78 = selfCopy;
      bannerItem2 = [(CPSBannerView *)selfCopy bannerItem];
      imageSet2 = [(CPSBannerItem *)bannerItem2 imageSet];
      [(CPSGuidanceBannerView *)v78 _setGuidanceImageViewForImageSet:?];
      MEMORY[0x277D82BD8](imageSet2);
      *&v15 = MEMORY[0x277D82BD8](bannerItem2).n128_u64[0];
      [(CPSGuidanceBannerView *)selfCopy addSubview:selfCopy->_guidanceImageView, v15];
      trailingAnchor2 = [(UIImageView *)selfCopy->_guidanceImageView trailingAnchor];
      v17 = leadingAnchor;
      leadingAnchor = trailingAnchor2;
      MEMORY[0x277D82BD8](v17);
    }

    v85 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v85 setAxis:1];
    [v85 setBaselineRelativeArrangement:1];
    [v85 setSpacing:18.0];
    [v85 setAlignment:?];
    [(CPSGuidanceBannerView *)selfCopy addSubview:v85];
    objc_storeStrong(&selfCopy->_labelStackView, v85);
    v18 = objc_alloc_init(CPSAbridgableLabel);
    guidanceTextLabel = selfCopy->_guidanceTextLabel;
    selfCopy->_guidanceTextLabel = v18;
    MEMORY[0x277D82BD8](guidanceTextLabel);
    v40 = selfCopy->_guidanceTextLabel;
    v41 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:? weight:?];
    [(CPSAbridgableLabel *)v40 setFont:?];
    *&v20 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [(CPSAbridgableLabel *)selfCopy->_guidanceTextLabel setTranslatesAutoresizingMaskIntoConstraints:0, v20];
    [(CPSAbridgableLabel *)selfCopy->_guidanceTextLabel setContentHuggingPriority:0 forAxis:?];
    [(CPSAbridgableLabel *)selfCopy->_guidanceTextLabel sizeToFit];
    [(CPSAbridgableLabel *)selfCopy->_guidanceTextLabel setTextColor:labelColor];
    [v85 addArrangedSubview:selfCopy->_guidanceTextLabel];
    v21 = objc_alloc_init(CPSAbridgableLabel);
    guidanceDetailTextLabel = selfCopy->_guidanceDetailTextLabel;
    selfCopy->_guidanceDetailTextLabel = v21;
    MEMORY[0x277D82BD8](guidanceDetailTextLabel);
    v42 = selfCopy->_guidanceDetailTextLabel;
    v43 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [(CPSAbridgableLabel *)v42 setFont:?];
    *&v23 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0, v23];
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel sizeToFit];
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel setTextColor:labelColor];
    LODWORD(v24) = 1112014848;
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel setContentHuggingPriority:0 forAxis:v24];
    [v85 addArrangedSubview:selfCopy->_guidanceDetailTextLabel];
    selfCopy->_currentInterfaceStyle = 0;
    buttonWithChevronImage = [MEMORY[0x277CF90D0] buttonWithChevronImage];
    actionButton = selfCopy->_actionButton;
    selfCopy->_actionButton = buttonWithChevronImage;
    *&v27 = MEMORY[0x277D82BD8](actionButton).n128_u64[0];
    [(CPUIBannerViewButton *)selfCopy->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0, v27];
    [(CPSGuidanceBannerView *)selfCopy addSubview:selfCopy->_actionButton];
    [(CPSGuidanceBannerView *)selfCopy _updateBannerSelectedState];
    v44 = MEMORY[0x277CCAAD0];
    leadingAnchor2 = [(UIImageView *)selfCopy->_applicationIconImageView leadingAnchor];
    leadingAnchor3 = [(CPSGuidanceBannerView *)selfCopy leadingAnchor];
    v73 = [leadingAnchor2 constraintEqualToAnchor:16.0 constant:?];
    v94[0] = v73;
    centerYAnchor = [(UIImageView *)selfCopy->_applicationIconImageView centerYAnchor];
    centerYAnchor2 = [(CPSGuidanceBannerView *)selfCopy centerYAnchor];
    v70 = [centerYAnchor constraintEqualToAnchor:?];
    v94[1] = v70;
    widthAnchor2 = [(UIImageView *)selfCopy->_applicationIconImageView widthAnchor];
    v68 = [widthAnchor2 constraintEqualToConstant:?];
    v94[2] = v68;
    heightAnchor2 = [(UIImageView *)selfCopy->_applicationIconImageView heightAnchor];
    v66 = [heightAnchor2 constraintEqualToConstant:29.0];
    v94[3] = v66;
    leadingAnchor4 = [(UIStackView *)selfCopy->_labelStackView leadingAnchor];
    v64 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor constant:10.0];
    v94[4] = v64;
    centerYAnchor3 = [(UIStackView *)selfCopy->_labelStackView centerYAnchor];
    centerYAnchor4 = [(CPSGuidanceBannerView *)selfCopy centerYAnchor];
    v61 = [centerYAnchor3 constraintEqualToAnchor:?];
    v94[5] = v61;
    topAnchor = [(UIStackView *)selfCopy->_labelStackView topAnchor];
    topAnchor2 = [(CPSGuidanceBannerView *)selfCopy topAnchor];
    v58 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
    v94[6] = v58;
    bottomAnchor = [(UIStackView *)selfCopy->_labelStackView bottomAnchor];
    bottomAnchor2 = [(CPSGuidanceBannerView *)selfCopy bottomAnchor];
    v55 = [bottomAnchor constraintLessThanOrEqualToAnchor:?];
    v94[7] = v55;
    trailingAnchor3 = [(UIStackView *)selfCopy->_labelStackView trailingAnchor];
    leadingAnchor5 = [(CPUIBannerViewButton *)selfCopy->_actionButton leadingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:-10.0 constant:?];
    v94[8] = v52;
    trailingAnchor4 = [(CPUIBannerViewButton *)selfCopy->_actionButton trailingAnchor];
    trailingAnchor5 = [(CPSGuidanceBannerView *)selfCopy trailingAnchor];
    v49 = [trailingAnchor4 constraintEqualToAnchor:-16.0 constant:?];
    v94[9] = v49;
    centerYAnchor5 = [(CPUIBannerViewButton *)selfCopy->_actionButton centerYAnchor];
    centerYAnchor6 = [(CPSGuidanceBannerView *)selfCopy centerYAnchor];
    v46 = [centerYAnchor5 constraintEqualToAnchor:?];
    v94[10] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:11];
    [v44 activateConstraints:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](centerYAnchor6);
    MEMORY[0x277D82BD8](centerYAnchor5);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](leadingAnchor3);
    *&v28 = MEMORY[0x277D82BD8](leadingAnchor2).n128_u64[0];
    bannerItem3 = [(CPSBannerView *)selfCopy bannerItem];
    imageSet3 = [(CPSBannerItem *)bannerItem3 imageSet];
    MEMORY[0x277D82BD8](imageSet3);
    v29 = MEMORY[0x277D82BD8](bannerItem3).n128_u64[0];
    if (imageSet3)
    {
      v32 = MEMORY[0x277CCAAD0];
      leadingAnchor6 = [(UIImageView *)selfCopy->_guidanceImageView leadingAnchor];
      trailingAnchor6 = [(UIImageView *)selfCopy->_applicationIconImageView trailingAnchor];
      v37 = [leadingAnchor6 constraintEqualToAnchor:10.0 constant:?];
      v93[0] = v37;
      centerYAnchor7 = [(UIImageView *)selfCopy->_guidanceImageView centerYAnchor];
      centerYAnchor8 = [(CPSGuidanceBannerView *)selfCopy centerYAnchor];
      v34 = [centerYAnchor7 constraintEqualToAnchor:?];
      v93[1] = v34;
      v93[2] = v87;
      v93[3] = v86;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
      [v32 activateConstraints:?];
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](centerYAnchor8);
      MEMORY[0x277D82BD8](centerYAnchor7);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](trailingAnchor6);
      v29 = MEMORY[0x277D82BD8](leadingAnchor6).n128_u64[0];
    }

    [(CPSGuidanceBannerView *)selfCopy _updateLabels];
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&labelColor, 0);
    objc_storeStrong(&leadingAnchor, 0);
  }

  v31 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v31;
}

- (void)_updateLabels
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(CPSBannerView *)self bannerItem];
  guidanceTextLabel = selfCopy->_guidanceTextLabel;
  textVariants = [location[0] textVariants];
  [(CPUIAbridgableLabel *)guidanceTextLabel setTextVariants:?];
  textVariants2 = [location[0] textVariants];
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (!textVariants2 || (v22 = [location[0] textVariants], v21 = 1, v13 = 0, !objc_msgSend(v22, "count")))
  {
    detailTextVariants = [location[0] detailTextVariants];
    v19 = 1;
    v12 = 1;
    if (!detailTextVariants)
    {
      attributedDetailTextVariants = [location[0] attributedDetailTextVariants];
      v17 = 1;
      v12 = attributedDetailTextVariants != 0;
    }

    v13 = v12;
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](attributedDetailTextVariants);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](detailTextVariants);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  *&v2 = MEMORY[0x277D82BD8](textVariants2).n128_u64[0];
  if (v13)
  {
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel setNumberOfLines:2, v2];
  }

  else
  {
    [(CPSAbridgableLabel *)selfCopy->_guidanceDetailTextLabel setNumberOfLines:1, v2];
  }

  bannerItem = [(CPSBannerView *)selfCopy bannerItem];
  attributedDetailTextVariants2 = [(CPSBannerItem *)bannerItem attributedDetailTextVariants];
  MEMORY[0x277D82BD8](attributedDetailTextVariants2);
  *&v3 = MEMORY[0x277D82BD8](bannerItem).n128_u64[0];
  if (attributedDetailTextVariants2)
  {
    guidanceDetailTextLabel = selfCopy->_guidanceDetailTextLabel;
    attributedDetailTextVariants3 = [location[0] attributedDetailTextVariants];
    [(CPUIAbridgableLabel *)guidanceDetailTextLabel setAttributedTextVariants:?];
    MEMORY[0x277D82BD8](attributedDetailTextVariants3);
  }

  else
  {
    detailTextVariants2 = [location[0] detailTextVariants];
    *&v4 = MEMORY[0x277D82BD8](detailTextVariants2).n128_u64[0];
    if (detailTextVariants2)
    {
      v5 = selfCopy->_guidanceDetailTextLabel;
      detailTextVariants3 = [location[0] detailTextVariants];
      [(CPUIAbridgableLabel *)v5 setTextVariants:?];
      MEMORY[0x277D82BD8](detailTextVariants3);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v7.receiver = selfCopy;
  v7.super_class = CPSGuidanceBannerView;
  [(CPSGuidanceBannerView *)&v7 traitCollectionDidChange:location[0]];
  [(CPSGuidanceBannerView *)selfCopy _updateApplicationIconImage];
  v4 = selfCopy;
  bannerItem = [(CPSBannerView *)selfCopy bannerItem];
  imageSet = [(CPSBannerItem *)bannerItem imageSet];
  [(CPSGuidanceBannerView *)v4 _setGuidanceImageViewForImageSet:?];
  MEMORY[0x277D82BD8](imageSet);
  *&v3 = MEMORY[0x277D82BD8](bannerItem).n128_u64[0];
  [(CPSGuidanceBannerView *)selfCopy _updateBannerSelectedState];
  [(CPSGuidanceBannerView *)selfCopy _updateLabels];
  objc_storeStrong(location, 0);
}

- (void)updateBannerWithBannerItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v7.receiver = selfCopy;
  v7.super_class = CPSGuidanceBannerView;
  [(CPSBannerView *)&v7 updateBannerWithBannerItem:location[0]];
  v4 = selfCopy;
  bannerItem = [(CPSBannerView *)selfCopy bannerItem];
  imageSet = [(CPSBannerItem *)bannerItem imageSet];
  [(CPSGuidanceBannerView *)v4 _setGuidanceImageViewForImageSet:?];
  MEMORY[0x277D82BD8](imageSet);
  *&v3 = MEMORY[0x277D82BD8](bannerItem).n128_u64[0];
  [(CPSGuidanceBannerView *)selfCopy _updateLabels];
  objc_storeStrong(location, 0);
}

- (void)_setGuidanceImageViewForImageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, set);
  traitCollection = [(CPSGuidanceBannerView *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (userInterfaceStyle == 2)
  {
    guidanceImageView = selfCopy->_guidanceImageView;
    darkContentImage = [location[0] darkContentImage];
    [(UIImageView *)guidanceImageView setImage:?];
    MEMORY[0x277D82BD8](darkContentImage);
  }

  else
  {
    lightContentImage = [location[0] lightContentImage];
    [v4 setImage:?];
    MEMORY[0x277D82BD8](lightContentImage);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateBannerSelectedState
{
  traitCollection = [(CPSGuidanceBannerView *)self traitCollection];
  v5 = 0;
  v4 = 1;
  if (([traitCollection interactionModel] & 2) != 2)
  {
    traitCollection2 = [(CPSGuidanceBannerView *)self traitCollection];
    v5 = 1;
    v4 = [traitCollection2 primaryInteractionModel] == 8;
  }

  actionButton = [(CPSGuidanceBannerView *)self actionButton];
  [(CPUIBannerViewButton *)actionButton setSelected:v4];
  MEMORY[0x277D82BD8](actionButton);
  if (v5)
  {
    MEMORY[0x277D82BD8](traitCollection2);
  }

  MEMORY[0x277D82BD8](traitCollection);
}

- (void)_updateApplicationIconImage
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __52__CPSGuidanceBannerView__updateApplicationIconImage__block_invoke;
  v7 = &unk_278D91AE0;
  v8[0] = MEMORY[0x277D82BE0](self);
  [(CPSBannerView *)self applicationIconImageWithCompletion:?];
  objc_storeStrong(v8, 0);
}

void __52__CPSGuidanceBannerView__updateApplicationIconImage__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__CPSGuidanceBannerView__updateApplicationIconImage__block_invoke_2;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __52__CPSGuidanceBannerView__updateApplicationIconImage__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) applicationIconImageView];
  [v3 setImage:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

@end