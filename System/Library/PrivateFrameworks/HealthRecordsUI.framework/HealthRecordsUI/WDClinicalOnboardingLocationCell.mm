@interface WDClinicalOnboardingLocationCell
- (WDClinicalOnboardingLocationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setUpConstraints;
- (void)_setupSubviews;
- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4;
- (void)prepareForReuse;
- (void)setProvider:(id)a3 dataProvider:(id)a4;
@end

@implementation WDClinicalOnboardingLocationCell

- (WDClinicalOnboardingLocationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingLocationCell;
  v4 = [(WDClinicalLocationCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    [MEMORY[0x1E69DCAE0] providerDetailLogoViewDimension];
    v6 = v5;
    v7 = [(WDClinicalLocationCell *)v4 logoView];
    [v7 setSize:v6];
  }

  return v4;
}

- (void)_setupSubviews
{
  v12.receiver = self;
  v12.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v12 _setupSubviews];
  v3 = [(WDClinicalLocationCell *)self stackView];
  v4 = [(WDClinicalLocationCell *)self subtitleLabel];
  [v3 addArrangedSubview:v4];

  v5 = [(WDClinicalLocationCell *)self stackView];
  v6 = [(WDClinicalLocationCell *)self detailLabel];
  [v5 addArrangedSubview:v6];

  v7 = *MEMORY[0x1E69A4090];
  v8 = [(WDClinicalLocationCell *)self stackView];
  [v8 setDirectionalLayoutMargins:{8.0, v7, 4.0, v7}];

  v9 = [(WDClinicalLocationCell *)self stackView];
  [v9 setBaselineRelativeArrangement:0];

  v10 = [(WDClinicalLocationCell *)self stackView];
  [v10 setPreservesSuperviewLayoutMargins:0];

  v11 = [(WDClinicalLocationCell *)self stackView];
  [v11 setSpacing:0.0];
}

- (void)_setUpConstraints
{
  v92[6] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v88 _setUpConstraints];
  v3 = [(WDClinicalLocationCell *)self stackView];
  [v3 setAlignment:1];

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(WDClinicalLocationCell *)self stackView];
  v6 = [(WDClinicalLocationCell *)self logoView];
  [v5 removeArrangedSubview:v6];

  v7 = [(WDClinicalLocationCell *)self stackView];
  v8 = v4;
  [v7 insertArrangedSubview:v4 atIndex:0];

  v9 = [(WDClinicalLocationCell *)self logoView];
  [v4 addSubview:v9];

  v67 = MEMORY[0x1E696ACD8];
  v84 = [(WDClinicalLocationCell *)self logoView];
  v81 = [v84 centerXAnchor];
  v79 = [v4 centerXAnchor];
  v77 = [v81 constraintEqualToAnchor:v79];
  v92[0] = v77;
  v75 = [(WDClinicalLocationCell *)self logoView];
  v73 = [v75 centerYAnchor];
  v71 = [v4 centerYAnchor];
  v70 = [v73 constraintEqualToAnchor:v71];
  v92[1] = v70;
  v69 = [(WDClinicalLocationCell *)self logoView];
  v68 = [v69 topAnchor];
  v66 = [v4 topAnchor];
  v65 = [v68 constraintGreaterThanOrEqualToAnchor:v66];
  v92[2] = v65;
  v64 = [(WDClinicalLocationCell *)self logoView];
  v63 = [v64 leadingAnchor];
  v62 = [v4 leadingAnchor];
  v61 = [v63 constraintGreaterThanOrEqualToAnchor:v62];
  v92[3] = v61;
  v60 = [v4 bottomAnchor];
  v10 = [(WDClinicalLocationCell *)self logoView];
  v11 = [v10 bottomAnchor];
  v12 = [v60 constraintGreaterThanOrEqualToAnchor:v11];
  v92[4] = v12;
  v13 = [v8 trailingAnchor];
  v14 = [(WDClinicalLocationCell *)self logoView];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15];
  v92[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:6];
  [v67 activateConstraints:v17];

  v82 = MEMORY[0x1E696ACD8];
  v85 = [v8 leadingAnchor];
  v18 = [(WDClinicalOnboardingLocationCell *)self contentView];
  v19 = [v18 leadingAnchor];
  v20 = [v85 constraintEqualToAnchor:v19];
  v91[0] = v20;
  v87 = v8;
  v21 = [v8 trailingAnchor];
  v22 = [(WDClinicalOnboardingLocationCell *)self contentView];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v91[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  [v82 activateConstraints:v25];

  v26 = [(WDClinicalLocationCell *)self stackView];
  [v26 setCustomSpacing:v8 afterView:20.0];

  v27 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v28) = 1148846080;
  [v27 setContentHuggingPriority:0 forAxis:v28];

  v29 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v30) = 1148846080;
  [v29 setContentCompressionResistancePriority:0 forAxis:v30];

  v31 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v32) = 1148846080;
  [v31 setContentHuggingPriority:1 forAxis:v32];

  v33 = [(WDClinicalLocationCell *)self logoView];
  LODWORD(v34) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v34];

  v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [(WDClinicalLocationCell *)self stackView];
  v37 = [(WDClinicalLocationCell *)self titleLabel];
  [v36 removeArrangedSubview:v37];

  v38 = [(WDClinicalLocationCell *)self stackView];
  v39 = [(WDClinicalLocationCell *)self subtitleLabel];
  [v38 removeArrangedSubview:v39];

  v40 = [(WDClinicalLocationCell *)self stackView];
  v41 = [(WDClinicalLocationCell *)self detailLabel];
  [v40 removeArrangedSubview:v41];

  v42 = [(WDClinicalLocationCell *)self stackView];
  [v42 addArrangedSubview:v35];

  v43 = objc_alloc(MEMORY[0x1E69DCF90]);
  v44 = [(WDClinicalLocationCell *)self titleLabel];
  v90[0] = v44;
  v45 = [(WDClinicalLocationCell *)self subtitleLabel];
  v90[1] = v45;
  v46 = [(WDClinicalLocationCell *)self detailLabel];
  v90[2] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
  v48 = [v43 initWithArrangedSubviews:v47];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v48 setAxis:1];
  [v48 setSpacing:0.0];
  [v48 setAlignment:1];
  [v35 addSubview:v48];
  v72 = MEMORY[0x1E696ACD8];
  v83 = [v48 leadingAnchor];
  v80 = [v35 leadingAnchor];
  v78 = [v83 constraintEqualToAnchor:v80 constant:32.0];
  v89[0] = v78;
  v76 = [v48 trailingAnchor];
  v74 = [v35 trailingAnchor];
  v49 = [v76 constraintEqualToAnchor:v74];
  v89[1] = v49;
  v50 = [v48 topAnchor];
  v86 = v35;
  v51 = [v35 topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v89[2] = v52;
  v53 = [v48 bottomAnchor];
  v54 = [v35 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  v89[3] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  [v72 activateConstraints:v56];

  v57 = [(WDClinicalLocationCell *)self titleLabel];
  [v57 setTextAlignment:4];

  v58 = [(WDClinicalLocationCell *)self subtitleLabel];
  [v58 setTextAlignment:4];

  v59 = [(WDClinicalLocationCell *)self detailLabel];
  [v59 setTextAlignment:4];
}

- (void)setProvider:(id)a3 dataProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 copy];
  provider = self->_provider;
  self->_provider = v8;

  v10.receiver = self;
  v10.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v10 setBrandable:v7 dataProvider:v6];
}

- (void)_updateContentWithBrandable:(id)a3 dataProvider:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v9 _updateContentWithBrandable:v6 dataProvider:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 location];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(WDClinicalLocationCell *)self detailLabel];
  [v8 setText:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WDClinicalOnboardingLocationCell;
  [(WDClinicalLocationCell *)&v3 prepareForReuse];
  [(WDClinicalOnboardingLocationCell *)self setProvider:0 dataProvider:0];
}

@end