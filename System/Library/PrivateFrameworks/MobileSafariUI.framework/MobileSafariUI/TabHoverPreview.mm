@interface TabHoverPreview
- (TabHoverPreview)initWithTabBar:(id)bar;
- (UIView)tabBar;
- (void)_setPositionalConstraintsActive:(BOOL)active;
- (void)_updateConstraintsWithItemView:(id)view forVerticalTabs:(BOOL)tabs;
- (void)dismissPreview;
- (void)setSecondaryTitleText:(id)text;
- (void)setSnapshotImage:(id)image metadata:(id)metadata;
- (void)setTitleText:(id)text;
- (void)showPreviewForItemView:(id)view forVerticalTabs:(BOOL)tabs;
@end

@implementation TabHoverPreview

- (TabHoverPreview)initWithTabBar:(id)bar
{
  v111[2] = *MEMORY[0x277D85DE8];
  barCopy = bar;
  v96.receiver = self;
  v96.super_class = TabHoverPreview;
  v5 = [(TabHoverPreview *)&v96 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBar, barCopy);
    [(TabHoverPreview *)v6 setUserInteractionEnabled:0];
    [(TabHoverPreview *)v6 setAlpha:0.0];
    layer = [(TabHoverPreview *)v6 layer];
    [layer setShadowRadius:8.0];
    v94 = layer;
    [layer setShadowPathIsBounds:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{0.0, 4.0}];
    LODWORD(v9) = 1039516303;
    [layer setShadowOpacity:v9];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [v10 layer];
    [layer2 setCornerRadius:10.0];

    v12 = *MEMORY[0x277CDA138];
    [v10 layer];
    v13 = v95 = barCopy;
    [v13 setCornerCurve:v12];

    layer3 = [v10 layer];
    [layer3 setMasksToBounds:1];

    [(TabHoverPreview *)v6 addSubview:v10];
    v93 = [MEMORY[0x277D75210] effectWithStyle:10];
    v15 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v93];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v15;
    [v10 addSubview:v15];
    v17 = objc_alloc_init(MEMORY[0x277D755E8]);
    snapshotView = v6->_snapshotView;
    v6->_snapshotView = v17;

    [(UIImageView *)v6->_snapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_snapshotView setClipsToBounds:1];
    [(UIImageView *)v6->_snapshotView setContentMode:2];
    [v10 addSubview:v6->_snapshotView];
    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v19;

    v21 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [(UILabel *)v6->_titleLabel setFont:v21];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v6->_titleLabel setTextColor:labelColor];

    [(UILabel *)v6->_titleLabel setNumberOfLines:5];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v6->_titleLabel setContentCompressionResistancePriority:1 forAxis:v23];
    [(UILabel *)v6->_titleLabel sizeToFit];
    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryTitleLabel = v6->_secondaryTitleLabel;
    v6->_secondaryTitleLabel = v24;

    v26 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    [(UILabel *)v6->_secondaryTitleLabel setFont:v26];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v6->_secondaryTitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v6->_secondaryTitleLabel setNumberOfLines:2];
    LODWORD(v28) = 1148846080;
    [(UILabel *)v6->_secondaryTitleLabel setContentCompressionResistancePriority:1 forAxis:v28];
    [(UILabel *)v6->_secondaryTitleLabel sizeToFit];
    v29 = objc_alloc(MEMORY[0x277D75A68]);
    v111[0] = v6->_titleLabel;
    v111[1] = v6->_secondaryTitleLabel;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
    v31 = [v29 initWithArrangedSubviews:v30];

    [v31 setAxis:1];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setLayoutMarginsRelativeArrangement:1];
    [v31 setDirectionalLayoutMargins:{12.0, 16.0, 12.0, 16.0}];
    LODWORD(v32) = 1144750080;
    [v31 setContentCompressionResistancePriority:1 forAxis:v32];
    v33 = v31;
    [v10 addSubview:v31];
    v75 = MEMORY[0x277CCAAD0];
    widthAnchor = [(TabHoverPreview *)v6 widthAnchor];
    v91 = [widthAnchor constraintEqualToConstant:240.0];
    v97[0] = v91;
    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [(TabHoverPreview *)v6 leadingAnchor];
    v88 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v97[1] = v88;
    topAnchor = [v10 topAnchor];
    topAnchor2 = [(TabHoverPreview *)v6 topAnchor];
    v85 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v97[2] = v85;
    widthAnchor2 = [v10 widthAnchor];
    widthAnchor3 = [(TabHoverPreview *)v6 widthAnchor];
    v82 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v97[3] = v82;
    heightAnchor = [v10 heightAnchor];
    heightAnchor2 = [(TabHoverPreview *)v6 heightAnchor];
    v36 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    heightConstraint = v6->_heightConstraint;
    v6->_heightConstraint = v36;

    v98 = v6->_heightConstraint;
    v80 = v98;
    leadingAnchor3 = [v16 leadingAnchor];
    leadingAnchor4 = [v10 leadingAnchor];
    v77 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v99 = v77;
    topAnchor3 = [v16 topAnchor];
    topAnchor4 = [v10 topAnchor];
    v73 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v100 = v73;
    v81 = v16;
    widthAnchor4 = [v16 widthAnchor];
    widthAnchor5 = [v10 widthAnchor];
    v70 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v101 = v70;
    heightAnchor3 = [v16 heightAnchor];
    heightAnchor4 = [v10 heightAnchor];
    v67 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v102 = v67;
    leadingAnchor5 = [(UIImageView *)v6->_snapshotView leadingAnchor];
    leadingAnchor6 = [v10 leadingAnchor];
    v64 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v103 = v64;
    topAnchor5 = [(UIImageView *)v6->_snapshotView topAnchor];
    topAnchor6 = [v10 topAnchor];
    v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v104 = v60;
    widthAnchor6 = [(UIImageView *)v6->_snapshotView widthAnchor];
    widthAnchor7 = [v10 widthAnchor];
    v57 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
    v105 = v57;
    leadingAnchor7 = [v33 leadingAnchor];
    leadingAnchor8 = [v10 leadingAnchor];
    v54 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v106 = v54;
    topAnchor7 = [v33 topAnchor];
    bottomAnchor = [(UIImageView *)v6->_snapshotView bottomAnchor];
    v51 = [topAnchor7 constraintEqualToAnchor:bottomAnchor];
    v107 = v51;
    v38 = v33;
    widthAnchor8 = [v33 widthAnchor];
    widthAnchor9 = [v10 widthAnchor];
    v39 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9];
    v108 = v39;
    v63 = v33;
    bottomAnchor2 = [v33 bottomAnchor];
    bottomAnchor3 = [v10 bottomAnchor];
    v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v109 = v42;
    bottomAnchor4 = [(UILabel *)v6->_secondaryTitleLabel bottomAnchor];
    bottomAnchor5 = [v38 bottomAnchor];
    v45 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-12.0];
    v110 = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:17];
    [v75 activateConstraints:v46];

    barCopy = v95;
    v47 = v6;
  }

  return v6;
}

- (void)setSnapshotImage:(id)image metadata:(id)metadata
{
  imageCopy = image;
  metadataCopy = metadata;
  image = [(UIImageView *)self->_snapshotView image];

  if (image != imageCopy)
  {
    [(UIImageView *)self->_snapshotView setImage:imageCopy];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v10 = v9;
    v12 = v11;

    if (imageCopy)
    {
      v13 = fmin((v12 + -100.0) / v10, 1.0);
    }

    else
    {
      v13 = 0.0;
    }

    [(NSLayoutConstraint *)self->_snapshotHeightWidthRatioConstraint setActive:0];
    heightAnchor = [(UIImageView *)self->_snapshotView heightAnchor];
    widthAnchor = [(UIImageView *)self->_snapshotView widthAnchor];
    v54 = v13;
    v16 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v13];
    snapshotHeightWidthRatioConstraint = self->_snapshotHeightWidthRatioConstraint;
    self->_snapshotHeightWidthRatioConstraint = v16;

    [(NSLayoutConstraint *)self->_snapshotHeightWidthRatioConstraint setActive:1];
    v18 = *MEMORY[0x277D768C8];
    v19 = *(MEMORY[0x277D768C8] + 8);
    v20 = *(MEMORY[0x277D768C8] + 16);
    v21 = *(MEMORY[0x277D768C8] + 24);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v24 = v23;

    if (metadataCopy)
    {
      [metadataCopy windowSize];
      if (v25 != 0.0)
      {
        [metadataCopy windowSize];
        if (v26 > 100.0)
        {
          [metadataCopy windowSize];
          v24 = v27;
          [metadataCopy horizontalObscuredInsets];
          v18 = v28;
          v19 = v29;
          v20 = v30;
          v21 = v31;
        }
      }
    }

    [imageCopy size];
    v33 = v24 / v32;
    [imageCopy size];
    v35 = v33 * v34;
    v36 = v19 + 0.0;
    v37 = v18 + 0.0;
    v38 = v24 - (v21 + v19);
    v39 = v35 - (v20 + v18);
    v58.origin.x = 0.0;
    v58.origin.y = 0.0;
    v58.size.width = v24;
    v58.size.height = v35;
    Height = CGRectGetHeight(v58);
    v59.origin.x = v36;
    v59.origin.y = v37;
    v59.size.width = v38;
    v59.size.height = v39;
    v41 = (Height - CGRectGetWidth(v59) * v54) * -0.5;
    v60.origin.x = v36;
    v60.origin.y = v37;
    v60.size.width = v38;
    v60.size.height = v39;
    v61 = CGRectOffset(v60, 0.0, v41);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    v45 = v61.size.height;
    MinX = CGRectGetMinX(v61);
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = v24;
    v62.size.height = v35;
    v55 = MinX / CGRectGetWidth(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = v45;
    MinY = CGRectGetMinY(v63);
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = v24;
    v64.size.height = v35;
    v48 = MinY / CGRectGetHeight(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = v45;
    v49 = CGRectGetWidth(v65);
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = v24;
    v66.size.height = v35;
    v50 = v49 / CGRectGetWidth(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = v45;
    v51 = CGRectGetHeight(v67);
    v68.origin.x = 0.0;
    v68.origin.y = 0.0;
    v68.size.width = v24;
    v68.size.height = v35;
    v52 = v51 / CGRectGetHeight(v68);
    layer = [(UIImageView *)self->_snapshotView layer];
    [layer setContentsRect:{v55, v48, v50, v52}];

    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_titleLabel text];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:textCopy];
    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)setSecondaryTitleText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_secondaryTitleLabel text];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_secondaryTitleLabel setText:textCopy];
    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)showPreviewForItemView:(id)view forVerticalTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  viewCopy = view;
  [(TabHoverPreview *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TabHoverPreview *)self _updateConstraintsWithItemView:viewCopy forVerticalTabs:tabsCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TabHoverPreview_showPreviewForItemView_forVerticalTabs___block_invoke;
  v7[3] = &unk_2781D4D40;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.25];
}

- (void)_updateConstraintsWithItemView:(id)view forVerticalTabs:(BOOL)tabs
{
  tabsCopy = tabs;
  v43[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(TabHoverPreview *)self _setPositionalConstraintsActive:0];
  if (tabsCopy)
  {
    WeakRetained = [(TabHoverPreview *)self leadingAnchor];
    trailingAnchor = [viewCopy trailingAnchor];
    v9 = [WeakRetained constraintEqualToAnchor:trailingAnchor constant:24.0];
    v43[0] = v9;
    topAnchor = [(TabHoverPreview *)self topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    bottomAnchor3 = topAnchor;
    v11 = [topAnchor constraintEqualToAnchor:?];
    LODWORD(v12) = 1144750080;
    v39 = v11;
    leadingAnchor3 = [v11 sf_withPriority:v12];
    v43[1] = leadingAnchor3;
    bottomAnchor = [(TabHoverPreview *)self bottomAnchor];
    window = [viewCopy window];

    bottomAnchor2 = [window bottomAnchor];
    trailingAnchor2 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-5.0];
    v43[2] = trailingAnchor2;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    positionalConstraints = self->_positionalConstraints;
    self->_positionalConstraints = v18;
  }

  else
  {
    if (self->_insetsPreviewFromTabBarEdge)
    {
      v20 = 5.0;
    }

    else
    {
      v20 = 0.0;
    }

    isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
    v22 = 10.0;
    if (!isSolariumEnabled)
    {
      v22 = v20;
    }

    v38 = v22;
    WeakRetained = objc_loadWeakRetained(&self->_tabBar);
    [viewCopy bounds];
    [WeakRetained convertRect:viewCopy fromView:?];

    [WeakRetained bounds];
    [(TabHoverPreview *)self _sf_usesLeftToRightLayout];
    _SFFlipRectInCoordinateSpace();
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    MinX = CGRectGetMinX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v28 = fmax(MinX, CGRectGetMidX(v45) + -120.0);
    leadingAnchor = [(TabHoverPreview *)self leadingAnchor];
    leadingAnchor2 = [WeakRetained leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v28];

    topAnchor3 = [(TabHoverPreview *)self topAnchor];
    bottomAnchor3 = [WeakRetained bottomAnchor];
    topAnchor2 = [topAnchor3 constraintEqualToAnchor:self->_topInset constant:?];
    v42[0] = topAnchor2;
    LODWORD(v31) = 1144750080;
    v39 = [v36 sf_withPriority:v31];
    v42[1] = v39;
    leadingAnchor3 = [(TabHoverPreview *)self leadingAnchor];
    bottomAnchor = [WeakRetained safeAreaLayoutGuide];
    window = [bottomAnchor leadingAnchor];
    bottomAnchor2 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:window constant:v38];
    v42[2] = bottomAnchor2;
    trailingAnchor2 = [(TabHoverPreview *)self trailingAnchor];
    positionalConstraints = [WeakRetained safeAreaLayoutGuide];
    trailingAnchor3 = [positionalConstraints trailingAnchor];
    v33 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-v38];
    v42[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    v35 = self->_positionalConstraints;
    self->_positionalConstraints = v34;

    v9 = topAnchor3;
    trailingAnchor = v36;
  }

  [(TabHoverPreview *)self _setPositionalConstraintsActive:1];
}

- (void)_setPositionalConstraintsActive:(BOOL)active
{
  activeCopy = active;
  positionalConstraints = self->_positionalConstraints;
  if (activeCopy)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:positionalConstraints];
  }

  else
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:positionalConstraints];
  }
}

- (void)dismissPreview
{
  if ([(NSArray *)self->_positionalConstraints count])
  {
    [(TabHoverPreview *)self setTranslatesAutoresizingMaskIntoConstraints:1];
    [(TabHoverPreview *)self _setPositionalConstraintsActive:0];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __33__TabHoverPreview_dismissPreview__block_invoke;
    v3[3] = &unk_2781D4D40;
    v3[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
  }
}

- (UIView)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

@end