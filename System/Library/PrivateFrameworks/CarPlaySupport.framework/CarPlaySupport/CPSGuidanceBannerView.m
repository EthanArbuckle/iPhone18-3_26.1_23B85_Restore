@interface CPSGuidanceBannerView
- (CPSGuidanceBannerView)initWithBannerItem:(id)a3;
- (void)_setGuidanceImageViewForImageSet:(id)a3;
- (void)_updateApplicationIconImage;
- (void)_updateBannerSelectedState;
- (void)_updateLabels;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBannerWithBannerItem:(id)a3;
@end

@implementation CPSGuidanceBannerView

- (CPSGuidanceBannerView)initWithBannerItem:(id)a3
{
  v94[11] = *MEMORY[0x277D85DE8];
  v92 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v92;
  v92 = 0;
  v90.receiver = v3;
  v90.super_class = CPSGuidanceBannerView;
  v92 = [(CPSBannerView *)&v90 initWithBannerItem:location[0]];
  objc_storeStrong(&v92, v92);
  if (v92)
  {
    v89 = [(CPSGuidanceBannerView *)v92 leadingAnchor];
    v88 = [MEMORY[0x277D75348] labelColor];
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    applicationIconImageView = v92->_applicationIconImageView;
    v92->_applicationIconImageView = v4;
    *&v6 = MEMORY[0x277D82BD8](applicationIconImageView).n128_u64[0];
    [(CPSGuidanceBannerView *)v92 _updateApplicationIconImage];
    [(UIImageView *)v92->_applicationIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSGuidanceBannerView *)v92 addSubview:v92->_applicationIconImageView];
    v7 = [(UIImageView *)v92->_applicationIconImageView trailingAnchor];
    v8 = v89;
    v89 = v7;
    MEMORY[0x277D82BD8](v8);
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    guidanceImageView = v92->_guidanceImageView;
    v92->_guidanceImageView = v9;
    *&v11 = MEMORY[0x277D82BD8](guidanceImageView).n128_u64[0];
    [(UIImageView *)v92->_guidanceImageView setTranslatesAutoresizingMaskIntoConstraints:0, v11];
    [(UIImageView *)v92->_guidanceImageView setContentMode:1];
    [(UIImageView *)v92->_guidanceImageView setContentCompressionResistancePriority:0 forAxis:?];
    v81 = [(UIImageView *)v92->_guidanceImageView widthAnchor];
    v87 = [v81 constraintLessThanOrEqualToConstant:92.0];
    v12 = MEMORY[0x277D82BD8](v81);
    v12.n128_u32[0] = 1148846080;
    [v87 setPriority:v12.n128_f64[0]];
    v82 = [(UIImageView *)v92->_guidanceImageView heightAnchor];
    v86 = [v82 constraintLessThanOrEqualToConstant:38.0];
    v13 = MEMORY[0x277D82BD8](v82);
    v13.n128_u32[0] = 1148846080;
    [v86 setPriority:v13.n128_f64[0]];
    v83 = [(CPSBannerView *)v92 bannerItem];
    v84 = [(CPSBannerItem *)v83 imageSet];
    MEMORY[0x277D82BD8](v84);
    *&v14 = MEMORY[0x277D82BD8](v83).n128_u64[0];
    if (v84)
    {
      v78 = v92;
      v80 = [(CPSBannerView *)v92 bannerItem];
      v79 = [(CPSBannerItem *)v80 imageSet];
      [(CPSGuidanceBannerView *)v78 _setGuidanceImageViewForImageSet:?];
      MEMORY[0x277D82BD8](v79);
      *&v15 = MEMORY[0x277D82BD8](v80).n128_u64[0];
      [(CPSGuidanceBannerView *)v92 addSubview:v92->_guidanceImageView, v15];
      v16 = [(UIImageView *)v92->_guidanceImageView trailingAnchor];
      v17 = v89;
      v89 = v16;
      MEMORY[0x277D82BD8](v17);
    }

    v85 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v85 setAxis:1];
    [v85 setBaselineRelativeArrangement:1];
    [v85 setSpacing:18.0];
    [v85 setAlignment:?];
    [(CPSGuidanceBannerView *)v92 addSubview:v85];
    objc_storeStrong(&v92->_labelStackView, v85);
    v18 = objc_alloc_init(CPSAbridgableLabel);
    guidanceTextLabel = v92->_guidanceTextLabel;
    v92->_guidanceTextLabel = v18;
    MEMORY[0x277D82BD8](guidanceTextLabel);
    v40 = v92->_guidanceTextLabel;
    v41 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:? weight:?];
    [(CPSAbridgableLabel *)v40 setFont:?];
    *&v20 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [(CPSAbridgableLabel *)v92->_guidanceTextLabel setTranslatesAutoresizingMaskIntoConstraints:0, v20];
    [(CPSAbridgableLabel *)v92->_guidanceTextLabel setContentHuggingPriority:0 forAxis:?];
    [(CPSAbridgableLabel *)v92->_guidanceTextLabel sizeToFit];
    [(CPSAbridgableLabel *)v92->_guidanceTextLabel setTextColor:v88];
    [v85 addArrangedSubview:v92->_guidanceTextLabel];
    v21 = objc_alloc_init(CPSAbridgableLabel);
    guidanceDetailTextLabel = v92->_guidanceDetailTextLabel;
    v92->_guidanceDetailTextLabel = v21;
    MEMORY[0x277D82BD8](guidanceDetailTextLabel);
    v42 = v92->_guidanceDetailTextLabel;
    v43 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [(CPSAbridgableLabel *)v42 setFont:?];
    *&v23 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    [(CPSAbridgableLabel *)v92->_guidanceDetailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0, v23];
    [(CPSAbridgableLabel *)v92->_guidanceDetailTextLabel sizeToFit];
    [(CPSAbridgableLabel *)v92->_guidanceDetailTextLabel setTextColor:v88];
    LODWORD(v24) = 1112014848;
    [(CPSAbridgableLabel *)v92->_guidanceDetailTextLabel setContentHuggingPriority:0 forAxis:v24];
    [v85 addArrangedSubview:v92->_guidanceDetailTextLabel];
    v92->_currentInterfaceStyle = 0;
    v25 = [MEMORY[0x277CF90D0] buttonWithChevronImage];
    actionButton = v92->_actionButton;
    v92->_actionButton = v25;
    *&v27 = MEMORY[0x277D82BD8](actionButton).n128_u64[0];
    [(CPUIBannerViewButton *)v92->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0, v27];
    [(CPSGuidanceBannerView *)v92 addSubview:v92->_actionButton];
    [(CPSGuidanceBannerView *)v92 _updateBannerSelectedState];
    v44 = MEMORY[0x277CCAAD0];
    v75 = [(UIImageView *)v92->_applicationIconImageView leadingAnchor];
    v74 = [(CPSGuidanceBannerView *)v92 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:16.0 constant:?];
    v94[0] = v73;
    v72 = [(UIImageView *)v92->_applicationIconImageView centerYAnchor];
    v71 = [(CPSGuidanceBannerView *)v92 centerYAnchor];
    v70 = [v72 constraintEqualToAnchor:?];
    v94[1] = v70;
    v69 = [(UIImageView *)v92->_applicationIconImageView widthAnchor];
    v68 = [v69 constraintEqualToConstant:?];
    v94[2] = v68;
    v67 = [(UIImageView *)v92->_applicationIconImageView heightAnchor];
    v66 = [v67 constraintEqualToConstant:29.0];
    v94[3] = v66;
    v65 = [(UIStackView *)v92->_labelStackView leadingAnchor];
    v64 = [v65 constraintEqualToAnchor:v89 constant:10.0];
    v94[4] = v64;
    v63 = [(UIStackView *)v92->_labelStackView centerYAnchor];
    v62 = [(CPSGuidanceBannerView *)v92 centerYAnchor];
    v61 = [v63 constraintEqualToAnchor:?];
    v94[5] = v61;
    v60 = [(UIStackView *)v92->_labelStackView topAnchor];
    v59 = [(CPSGuidanceBannerView *)v92 topAnchor];
    v58 = [v60 constraintGreaterThanOrEqualToAnchor:?];
    v94[6] = v58;
    v57 = [(UIStackView *)v92->_labelStackView bottomAnchor];
    v56 = [(CPSGuidanceBannerView *)v92 bottomAnchor];
    v55 = [v57 constraintLessThanOrEqualToAnchor:?];
    v94[7] = v55;
    v54 = [(UIStackView *)v92->_labelStackView trailingAnchor];
    v53 = [(CPUIBannerViewButton *)v92->_actionButton leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:-10.0 constant:?];
    v94[8] = v52;
    v51 = [(CPUIBannerViewButton *)v92->_actionButton trailingAnchor];
    v50 = [(CPSGuidanceBannerView *)v92 trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:-16.0 constant:?];
    v94[9] = v49;
    v48 = [(CPUIBannerViewButton *)v92->_actionButton centerYAnchor];
    v47 = [(CPSGuidanceBannerView *)v92 centerYAnchor];
    v46 = [v48 constraintEqualToAnchor:?];
    v94[10] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:11];
    [v44 activateConstraints:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    *&v28 = MEMORY[0x277D82BD8](v75).n128_u64[0];
    v76 = [(CPSBannerView *)v92 bannerItem];
    v77 = [(CPSBannerItem *)v76 imageSet];
    MEMORY[0x277D82BD8](v77);
    v29 = MEMORY[0x277D82BD8](v76).n128_u64[0];
    if (v77)
    {
      v32 = MEMORY[0x277CCAAD0];
      v39 = [(UIImageView *)v92->_guidanceImageView leadingAnchor];
      v38 = [(UIImageView *)v92->_applicationIconImageView trailingAnchor];
      v37 = [v39 constraintEqualToAnchor:10.0 constant:?];
      v93[0] = v37;
      v36 = [(UIImageView *)v92->_guidanceImageView centerYAnchor];
      v35 = [(CPSGuidanceBannerView *)v92 centerYAnchor];
      v34 = [v36 constraintEqualToAnchor:?];
      v93[1] = v34;
      v93[2] = v87;
      v93[3] = v86;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
      [v32 activateConstraints:?];
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      v29 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }

    [(CPSGuidanceBannerView *)v92 _updateLabels];
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v88, 0);
    objc_storeStrong(&v89, 0);
  }

  v31 = MEMORY[0x277D82BE0](v92);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v92, 0);
  return v31;
}

- (void)_updateLabels
{
  v24 = self;
  location[1] = a2;
  location[0] = [(CPSBannerView *)self bannerItem];
  guidanceTextLabel = v24->_guidanceTextLabel;
  v15 = [location[0] textVariants];
  [(CPUIAbridgableLabel *)guidanceTextLabel setTextVariants:?];
  v16 = [location[0] textVariants];
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (!v16 || (v22 = [location[0] textVariants], v21 = 1, v13 = 0, !objc_msgSend(v22, "count")))
  {
    v20 = [location[0] detailTextVariants];
    v19 = 1;
    v12 = 1;
    if (!v20)
    {
      v18 = [location[0] attributedDetailTextVariants];
      v17 = 1;
      v12 = v18 != 0;
    }

    v13 = v12;
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  *&v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v13)
  {
    [(CPSAbridgableLabel *)v24->_guidanceDetailTextLabel setNumberOfLines:2, v2];
  }

  else
  {
    [(CPSAbridgableLabel *)v24->_guidanceDetailTextLabel setNumberOfLines:1, v2];
  }

  v10 = [(CPSBannerView *)v24 bannerItem];
  v11 = [(CPSBannerItem *)v10 attributedDetailTextVariants];
  MEMORY[0x277D82BD8](v11);
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    guidanceDetailTextLabel = v24->_guidanceDetailTextLabel;
    v9 = [location[0] attributedDetailTextVariants];
    [(CPUIAbridgableLabel *)guidanceDetailTextLabel setAttributedTextVariants:?];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v7 = [location[0] detailTextVariants];
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v7)
    {
      v5 = v24->_guidanceDetailTextLabel;
      v6 = [location[0] detailTextVariants];
      [(CPUIAbridgableLabel *)v5 setTextVariants:?];
      MEMORY[0x277D82BD8](v6);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = CPSGuidanceBannerView;
  [(CPSGuidanceBannerView *)&v7 traitCollectionDidChange:location[0]];
  [(CPSGuidanceBannerView *)v9 _updateApplicationIconImage];
  v4 = v9;
  v6 = [(CPSBannerView *)v9 bannerItem];
  v5 = [(CPSBannerItem *)v6 imageSet];
  [(CPSGuidanceBannerView *)v4 _setGuidanceImageViewForImageSet:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSGuidanceBannerView *)v9 _updateBannerSelectedState];
  [(CPSGuidanceBannerView *)v9 _updateLabels];
  objc_storeStrong(location, 0);
}

- (void)updateBannerWithBannerItem:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = CPSGuidanceBannerView;
  [(CPSBannerView *)&v7 updateBannerWithBannerItem:location[0]];
  v4 = v9;
  v6 = [(CPSBannerView *)v9 bannerItem];
  v5 = [(CPSBannerItem *)v6 imageSet];
  [(CPSGuidanceBannerView *)v4 _setGuidanceImageViewForImageSet:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSGuidanceBannerView *)v9 _updateLabels];
  objc_storeStrong(location, 0);
}

- (void)_setGuidanceImageViewForImageSet:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(CPSGuidanceBannerView *)v11 traitCollection];
  v9 = [v8 userInterfaceStyle];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9 == 2)
  {
    guidanceImageView = v11->_guidanceImageView;
    v7 = [location[0] darkContentImage];
    [(UIImageView *)guidanceImageView setImage:?];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v5 = [location[0] lightContentImage];
    [v4 setImage:?];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateBannerSelectedState
{
  v3 = [(CPSGuidanceBannerView *)self traitCollection];
  v5 = 0;
  v4 = 1;
  if (([v3 interactionModel] & 2) != 2)
  {
    v6 = [(CPSGuidanceBannerView *)self traitCollection];
    v5 = 1;
    v4 = [v6 primaryInteractionModel] == 8;
  }

  v2 = [(CPSGuidanceBannerView *)self actionButton];
  [(CPUIBannerViewButton *)v2 setSelected:v4];
  MEMORY[0x277D82BD8](v2);
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
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