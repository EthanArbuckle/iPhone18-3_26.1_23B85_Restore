@interface TabHoverPreview
- (TabHoverPreview)initWithTabBar:(id)a3;
- (UIView)tabBar;
- (void)_setPositionalConstraintsActive:(BOOL)a3;
- (void)_updateConstraintsWithItemView:(id)a3 forVerticalTabs:(BOOL)a4;
- (void)dismissPreview;
- (void)setSecondaryTitleText:(id)a3;
- (void)setSnapshotImage:(id)a3 metadata:(id)a4;
- (void)setTitleText:(id)a3;
- (void)showPreviewForItemView:(id)a3 forVerticalTabs:(BOOL)a4;
@end

@implementation TabHoverPreview

- (TabHoverPreview)initWithTabBar:(id)a3
{
  v111[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v96.receiver = self;
  v96.super_class = TabHoverPreview;
  v5 = [(TabHoverPreview *)&v96 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBar, v4);
    [(TabHoverPreview *)v6 setUserInteractionEnabled:0];
    [(TabHoverPreview *)v6 setAlpha:0.0];
    v7 = [(TabHoverPreview *)v6 layer];
    [v7 setShadowRadius:8.0];
    v94 = v7;
    [v7 setShadowPathIsBounds:1];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v7 setShadowColor:{objc_msgSend(v8, "CGColor")}];

    [v7 setShadowOffset:{0.0, 4.0}];
    LODWORD(v9) = 1039516303;
    [v7 setShadowOpacity:v9];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v10 layer];
    [v11 setCornerRadius:10.0];

    v12 = *MEMORY[0x277CDA138];
    [v10 layer];
    v13 = v95 = v4;
    [v13 setCornerCurve:v12];

    v14 = [v10 layer];
    [v14 setMasksToBounds:1];

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

    v22 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v6->_titleLabel setTextColor:v22];

    [(UILabel *)v6->_titleLabel setNumberOfLines:5];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v6->_titleLabel setContentCompressionResistancePriority:1 forAxis:v23];
    [(UILabel *)v6->_titleLabel sizeToFit];
    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryTitleLabel = v6->_secondaryTitleLabel;
    v6->_secondaryTitleLabel = v24;

    v26 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    [(UILabel *)v6->_secondaryTitleLabel setFont:v26];

    v27 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v6->_secondaryTitleLabel setTextColor:v27];

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
    v92 = [(TabHoverPreview *)v6 widthAnchor];
    v91 = [v92 constraintEqualToConstant:240.0];
    v97[0] = v91;
    v90 = [v10 leadingAnchor];
    v89 = [(TabHoverPreview *)v6 leadingAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v97[1] = v88;
    v87 = [v10 topAnchor];
    v86 = [(TabHoverPreview *)v6 topAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v97[2] = v85;
    v84 = [v10 widthAnchor];
    v83 = [(TabHoverPreview *)v6 widthAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v97[3] = v82;
    v34 = [v10 heightAnchor];
    v35 = [(TabHoverPreview *)v6 heightAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    heightConstraint = v6->_heightConstraint;
    v6->_heightConstraint = v36;

    v98 = v6->_heightConstraint;
    v80 = v98;
    v79 = [v16 leadingAnchor];
    v78 = [v10 leadingAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v99 = v77;
    v76 = [v16 topAnchor];
    v74 = [v10 topAnchor];
    v73 = [v76 constraintEqualToAnchor:v74];
    v100 = v73;
    v81 = v16;
    v72 = [v16 widthAnchor];
    v71 = [v10 widthAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v101 = v70;
    v69 = [v16 heightAnchor];
    v68 = [v10 heightAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v102 = v67;
    v66 = [(UIImageView *)v6->_snapshotView leadingAnchor];
    v65 = [v10 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v103 = v64;
    v62 = [(UIImageView *)v6->_snapshotView topAnchor];
    v61 = [v10 topAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v104 = v60;
    v59 = [(UIImageView *)v6->_snapshotView widthAnchor];
    v58 = [v10 widthAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v105 = v57;
    v56 = [v33 leadingAnchor];
    v55 = [v10 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v106 = v54;
    v53 = [v33 topAnchor];
    v52 = [(UIImageView *)v6->_snapshotView bottomAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v107 = v51;
    v38 = v33;
    v50 = [v33 widthAnchor];
    v49 = [v10 widthAnchor];
    v39 = [v50 constraintEqualToAnchor:v49];
    v108 = v39;
    v63 = v33;
    v40 = [v33 bottomAnchor];
    v41 = [v10 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v109 = v42;
    v43 = [(UILabel *)v6->_secondaryTitleLabel bottomAnchor];
    v44 = [v38 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:-12.0];
    v110 = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:17];
    [v75 activateConstraints:v46];

    v4 = v95;
    v47 = v6;
  }

  return v6;
}

- (void)setSnapshotImage:(id)a3 metadata:(id)a4
{
  v56 = a3;
  v6 = a4;
  v7 = [(UIImageView *)self->_snapshotView image];

  if (v7 != v56)
  {
    [(UIImageView *)self->_snapshotView setImage:v56];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    if (v56)
    {
      v13 = fmin((v12 + -100.0) / v10, 1.0);
    }

    else
    {
      v13 = 0.0;
    }

    [(NSLayoutConstraint *)self->_snapshotHeightWidthRatioConstraint setActive:0];
    v14 = [(UIImageView *)self->_snapshotView heightAnchor];
    v15 = [(UIImageView *)self->_snapshotView widthAnchor];
    v54 = v13;
    v16 = [v14 constraintEqualToAnchor:v15 multiplier:v13];
    snapshotHeightWidthRatioConstraint = self->_snapshotHeightWidthRatioConstraint;
    self->_snapshotHeightWidthRatioConstraint = v16;

    [(NSLayoutConstraint *)self->_snapshotHeightWidthRatioConstraint setActive:1];
    v18 = *MEMORY[0x277D768C8];
    v19 = *(MEMORY[0x277D768C8] + 8);
    v20 = *(MEMORY[0x277D768C8] + 16);
    v21 = *(MEMORY[0x277D768C8] + 24);
    v22 = [MEMORY[0x277D759A0] mainScreen];
    [v22 bounds];
    v24 = v23;

    if (v6)
    {
      [v6 windowSize];
      if (v25 != 0.0)
      {
        [v6 windowSize];
        if (v26 > 100.0)
        {
          [v6 windowSize];
          v24 = v27;
          [v6 horizontalObscuredInsets];
          v18 = v28;
          v19 = v29;
          v20 = v30;
          v21 = v31;
        }
      }
    }

    [v56 size];
    v33 = v24 / v32;
    [v56 size];
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
    v53 = [(UIImageView *)self->_snapshotView layer];
    [v53 setContentsRect:{v55, v48, v50, v52}];

    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:v6];
    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)setSecondaryTitleText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_secondaryTitleLabel text];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_secondaryTitleLabel setText:v6];
    [(TabHoverPreview *)self setNeedsLayout];
  }
}

- (void)showPreviewForItemView:(id)a3 forVerticalTabs:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(TabHoverPreview *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TabHoverPreview *)self _updateConstraintsWithItemView:v6 forVerticalTabs:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TabHoverPreview_showPreviewForItemView_forVerticalTabs___block_invoke;
  v7[3] = &unk_2781D4D40;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.25];
}

- (void)_updateConstraintsWithItemView:(id)a3 forVerticalTabs:(BOOL)a4
{
  v4 = a4;
  v43[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(TabHoverPreview *)self _setPositionalConstraintsActive:0];
  if (v4)
  {
    WeakRetained = [(TabHoverPreview *)self leadingAnchor];
    v8 = [v6 trailingAnchor];
    v9 = [WeakRetained constraintEqualToAnchor:v8 constant:24.0];
    v43[0] = v9;
    v10 = [(TabHoverPreview *)self topAnchor];
    v40 = [v6 topAnchor];
    v41 = v10;
    v11 = [v10 constraintEqualToAnchor:?];
    LODWORD(v12) = 1144750080;
    v39 = v11;
    v13 = [v11 sf_withPriority:v12];
    v43[1] = v13;
    v14 = [(TabHoverPreview *)self bottomAnchor];
    v15 = [v6 window];

    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintLessThanOrEqualToAnchor:v16 constant:-5.0];
    v43[2] = v17;
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

    v21 = [MEMORY[0x277D49A08] isSolariumEnabled];
    v22 = 10.0;
    if (!v21)
    {
      v22 = v20;
    }

    v38 = v22;
    WeakRetained = objc_loadWeakRetained(&self->_tabBar);
    [v6 bounds];
    [WeakRetained convertRect:v6 fromView:?];

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
    v29 = [(TabHoverPreview *)self leadingAnchor];
    v30 = [WeakRetained leadingAnchor];
    v36 = [v29 constraintEqualToAnchor:v30 constant:v28];

    v37 = [(TabHoverPreview *)self topAnchor];
    v41 = [WeakRetained bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:self->_topInset constant:?];
    v42[0] = v40;
    LODWORD(v31) = 1144750080;
    v39 = [v36 sf_withPriority:v31];
    v42[1] = v39;
    v13 = [(TabHoverPreview *)self leadingAnchor];
    v14 = [WeakRetained safeAreaLayoutGuide];
    v15 = [v14 leadingAnchor];
    v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15 constant:v38];
    v42[2] = v16;
    v17 = [(TabHoverPreview *)self trailingAnchor];
    positionalConstraints = [WeakRetained safeAreaLayoutGuide];
    v32 = [positionalConstraints trailingAnchor];
    v33 = [v17 constraintLessThanOrEqualToAnchor:v32 constant:-v38];
    v42[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    v35 = self->_positionalConstraints;
    self->_positionalConstraints = v34;

    v9 = v37;
    v8 = v36;
  }

  [(TabHoverPreview *)self _setPositionalConstraintsActive:1];
}

- (void)_setPositionalConstraintsActive:(BOOL)a3
{
  v3 = a3;
  positionalConstraints = self->_positionalConstraints;
  if (v3)
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