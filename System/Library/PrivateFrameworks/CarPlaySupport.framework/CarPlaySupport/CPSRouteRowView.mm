@interface CPSRouteRowView
- (CPSRouteRowInteracting)interactionDelegate;
- (CPSRouteRowView)initWithFrame:(CGRect)a3;
- (void)_updateAppearance;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handleRowSelection:(id)a3;
- (void)setRepresentedRouteChoice:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSRouteRowView

- (CPSRouteRowView)initWithFrame:(CGRect)a3
{
  v100[19] = *MEMORY[0x277D85DE8];
  v99 = a3;
  v97 = a2;
  v98 = 0;
  v96.receiver = self;
  v96.super_class = CPSRouteRowView;
  v98 = [(CPSRouteRowView *)&v96 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v98, v98);
  if (v98)
  {
    [(CPSRouteRowView *)v98 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSRouteRowView *)v98 setClipsToBounds:1];
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v95 = [v3 initWithFrame:{v99.origin.x, v99.origin.y, v99.size.width, v99.size.height}];
    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v95;
    v17 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [v16 setBackgroundColor:?];
    *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    [(CPSRouteRowView *)v98 addSubview:v95, v4];
    [v95 setHidden:1];
    objc_storeStrong(&v98->_focusBackground, v95);
    v94 = [CPSInvisibleButton buttonWithType:?];
    [(CPSInvisibleButton *)v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSInvisibleButton *)v94 addTarget:v98 action:sel_handleRowSelection_ forControlEvents:0x2000];
    objc_storeStrong(&v98->_rowButton, v94);
    obj = objc_alloc_init(MEMORY[0x277D755E8]);
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v98->_checkmarkView, obj);
    [obj setUserInteractionEnabled:0];
    v18 = [obj layer];
    [v18 setCornerRadius:11.0];
    MEMORY[0x277D82BD8](v18);
    [obj setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v5) = 1148846080;
    [obj setContentCompressionResistancePriority:0 forAxis:v5];
    [obj setContentMode:?];
    [(CPSInvisibleButton *)v94 addSubview:obj];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v92 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v92 setAxis:1];
    [v92 setSpacing:-1.0];
    [v92 setAlignment:1];
    [(CPSInvisibleButton *)v94 addSubview:v92];
    objc_storeStrong(&v98->_labelStackView, v92);
    v19 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    v91 = [v19 fontDescriptor];
    *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v90 = [v91 fontDescriptorWithSymbolicTraits:v7];
    v89 = [MEMORY[0x277D74300] fontWithDescriptor:v90 size:?];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    v88 = [v20 fontDescriptor];
    *&v8 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    v87 = [v88 fontDescriptorWithSymbolicTraits:{0x8000, v8}];
    v86 = [MEMORY[0x277D74300] fontWithDescriptor:v87 size:0.0];
    v85 = objc_alloc_init(MEMORY[0x277D75D18]);
    v84 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v85 setContentHuggingPriority:1 forAxis:?];
    LODWORD(v9) = 1132068864;
    [v84 setContentHuggingPriority:1 forAxis:v9];
    [v92 addArrangedSubview:v85];
    v83 = objc_alloc_init(CPSAbridgableLabel);
    [v83 setFont:v89];
    [v83 setTextAlignment:4];
    v21 = v83;
    v22 = [MEMORY[0x277D75348] labelColor];
    [v21 setTextColor:?];
    *&v10 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    [v83 setTranslatesAutoresizingMaskIntoConstraints:{0, v10}];
    LODWORD(v11) = 1148846080;
    [v83 setContentCompressionResistancePriority:1 forAxis:v11];
    [v83 setNumberOfLines:1];
    [v83 setMinimumScaleFactor:0.92];
    objc_storeStrong(&v98->_title, v83);
    [v92 addArrangedSubview:v98->_title];
    v82 = objc_alloc_init(CPSAbridgableLabel);
    [v82 setFont:v86];
    [v82 setTextAlignment:4];
    v23 = v82;
    v24 = [MEMORY[0x277D75348] labelColor];
    [v23 setTextColor:?];
    *&v12 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    [v82 setTranslatesAutoresizingMaskIntoConstraints:{0, v12}];
    [v82 setNumberOfLines:2];
    [v82 setMinimumScaleFactor:0.92];
    objc_storeStrong(&v98->_detail, v82);
    [v92 addArrangedSubview:v98->_detail];
    [v92 addArrangedSubview:v84];
    [(CPSRouteRowView *)v98 addSubview:v94];
    v25 = MEMORY[0x277CCAAD0];
    v81 = [v85 heightAnchor];
    v80 = [v84 heightAnchor];
    v79 = [v81 constraintEqualToAnchor:?];
    v100[0] = v79;
    v78 = [(CPSInvisibleButton *)v94 leadingAnchor];
    v77 = [(CPSRouteRowView *)v98 leadingAnchor];
    v76 = [v78 constraintEqualToAnchor:?];
    v100[1] = v76;
    v75 = [(CPSInvisibleButton *)v94 trailingAnchor];
    v74 = [(CPSRouteRowView *)v98 trailingAnchor];
    v73 = [v75 constraintEqualToAnchor:?];
    v100[2] = v73;
    v72 = [(CPSInvisibleButton *)v94 topAnchor];
    v71 = [(CPSRouteRowView *)v98 topAnchor];
    v70 = [v72 constraintEqualToAnchor:?];
    v100[3] = v70;
    v69 = [(CPSInvisibleButton *)v94 bottomAnchor];
    v68 = [(CPSRouteRowView *)v98 bottomAnchor];
    v67 = [v69 constraintEqualToAnchor:?];
    v100[4] = v67;
    v66 = [obj trailingAnchor];
    v65 = [(CPSInvisibleButton *)v94 trailingAnchor];
    v64 = [v66 constraintEqualToAnchor:? constant:?];
    v100[5] = v64;
    v63 = [obj centerYAnchor];
    v62 = [(CPSInvisibleButton *)v94 centerYAnchor];
    v61 = [v63 constraintEqualToAnchor:?];
    v100[6] = v61;
    v60 = [obj heightAnchor];
    v59 = [v60 constraintEqualToConstant:?];
    v100[7] = v59;
    v58 = [obj widthAnchor];
    v57 = [v58 constraintEqualToConstant:22.0];
    v100[8] = v57;
    v56 = [v92 centerYAnchor];
    v55 = [(CPSRouteRowView *)v98 centerYAnchor];
    v54 = [v56 constraintEqualToAnchor:?];
    v100[9] = v54;
    v53 = [v92 trailingAnchor];
    v52 = [obj leadingAnchor];
    v51 = [v53 constraintEqualToAnchor:-8.0 constant:?];
    v100[10] = v51;
    v50 = [v92 leadingAnchor];
    v49 = [(CPSRouteRowView *)v98 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:8.0 constant:?];
    v100[11] = v48;
    v47 = [v92 heightAnchor];
    v46 = [(CPSRouteRowView *)v98 heightAnchor];
    v45 = [v47 constraintLessThanOrEqualToAnchor:1.0 multiplier:?];
    v100[12] = v45;
    v44 = [v92 topAnchor];
    v43 = [(CPSRouteRowView *)v98 topAnchor];
    v42 = [v44 constraintGreaterThanOrEqualToAnchor:?];
    v100[13] = v42;
    v41 = [v92 bottomAnchor];
    v40 = [(CPSRouteRowView *)v98 bottomAnchor];
    v39 = [v41 constraintGreaterThanOrEqualToAnchor:?];
    v100[14] = v39;
    v38 = [v95 topAnchor];
    v37 = [(CPSRouteRowView *)v98 topAnchor];
    v36 = [v38 constraintEqualToAnchor:?];
    v100[15] = v36;
    v35 = [v95 bottomAnchor];
    v34 = [(CPSRouteRowView *)v98 bottomAnchor];
    v33 = [v35 constraintEqualToAnchor:?];
    v100[16] = v33;
    v32 = [v95 leftAnchor];
    v31 = [(CPSRouteRowView *)v98 leftAnchor];
    v30 = [v32 constraintEqualToAnchor:?];
    v100[17] = v30;
    v29 = [v95 rightAnchor];
    v28 = [(CPSRouteRowView *)v98 rightAnchor];
    v27 = [v29 constraintEqualToAnchor:?];
    v100[18] = v27;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:19];
    [v25 activateConstraints:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
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
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v88, 0);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v91, 0);
    objc_storeStrong(&v92, 0);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v94, 0);
    objc_storeStrong(&v95, 0);
  }

  [(CPSRouteRowView *)v98 _updateAppearance];
  v15 = MEMORY[0x277D82BE0](v98);
  objc_storeStrong(v14, 0);
  return v15;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSRouteRowView *)v4 _updateAppearance];
  objc_storeStrong(location, 0);
}

- (void)handleRowSelection:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSRouteRowView *)v7 interactionDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = v7;
    v4 = [(CPSRouteRowView *)v7 representedRouteChoice];
    [v5 didSelectRow:v3 representingRouteChoice:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setRepresentedRouteChoice:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v21->_representedRouteChoice, location[0]);
  v13 = [(CPSRouteRowView *)v21 title];
  v12 = [location[0] summaryVariants];
  [(CPUIAbridgableLabel *)v13 setTextVariants:?];
  MEMORY[0x277D82BD8](v12);
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = [location[0] selectionSummaryVariants];
  v18 = 0;
  v15 = 0;
  if (v14)
  {
    v19 = [location[0] selectionSummaryVariants];
    v18 = 1;
    v15 = [v19 count] != 0;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v11 = [(CPSRouteRowView *)v21 detail];
    v10 = [location[0] selectionSummaryVariants];
    [(CPUIAbridgableLabel *)v11 setTextVariants:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v8 = [location[0] additionalInformationVariants];
    v16 = 0;
    v9 = 0;
    if (v8)
    {
      v17 = [location[0] additionalInformationVariants];
      v16 = 1;
      v9 = [v17 count] != 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      v7 = [(CPSRouteRowView *)v21 detail];
      v6 = [location[0] additionalInformationVariants];
      [(CPUIAbridgableLabel *)v7 setTextVariants:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(CPSRouteRowView *)self _updateAppearance];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSRouteRowView *)v7 _updateAppearance];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAppearance
{
  v38 = self;
  v37 = a2;
  v22 = [(CPSRouteRowView *)self rowButton];
  v23 = [(CPSInvisibleButton *)v22 isFocused];
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v36 = v23;
  if (v23)
  {
    v17 = [(CPSRouteRowView *)v38 focusBackground];
    [(UIView *)v17 setHidden:0];
    v19 = [(CPSRouteRowView *)v38 title];
    v18 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)v19 setTextColor:?];
    MEMORY[0x277D82BD8](v18);
    v21 = [(CPSRouteRowView *)v38 detail];
    v20 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)v21 setTextColor:?];
    MEMORY[0x277D82BD8](v20);
    v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  else
  {
    v12 = [(CPSRouteRowView *)v38 focusBackground];
    [(UIView *)v12 setHidden:1];
    v14 = [(CPSRouteRowView *)v38 title];
    v13 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v14 setTextColor:?];
    MEMORY[0x277D82BD8](v13);
    v16 = [(CPSRouteRowView *)v38 detail];
    v15 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v16 setTextColor:?];
    MEMORY[0x277D82BD8](v15);
    v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  if ([(CPSRouteRowView *)v38 isSelected])
  {
    location = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:22.0];
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:location];
    v9 = [(CPSRouteRowView *)v38 checkmarkView];
    [(UIImageView *)v9 setImage:v10];
    MEMORY[0x277D82BD8](v9);
    v11 = [(CPSRouteRowView *)v38 checkmarkView];
    v33 = 0;
    v31 = 0;
    if (v36)
    {
      v34 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      v33 = 1;
      v8 = v34;
    }

    else
    {
      v32 = [MEMORY[0x277D75348] labelColor];
      v31 = 1;
      v8 = v32;
    }

    [(UIImageView *)v11 setTintColor:v8];
    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v30 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:22.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" withConfiguration:v30];
    v5 = [(CPSRouteRowView *)v38 checkmarkView];
    [(UIImageView *)v5 setImage:v6];
    MEMORY[0x277D82BD8](v5);
    v7 = [(CPSRouteRowView *)v38 checkmarkView];
    v28 = 0;
    v26 = 0;
    v24 = 0;
    if (v36)
    {
      v29 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      v28 = 1;
      v4 = v29;
    }

    else
    {
      v27 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
      v26 = 1;
      v25 = [v27 colorWithAlphaComponent:0.3];
      v24 = 1;
      v4 = v25;
    }

    [(UIImageView *)v7 setTintColor:v4];
    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](v27);
    }

    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v30, 0);
  }
}

- (CPSRouteRowInteracting)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end