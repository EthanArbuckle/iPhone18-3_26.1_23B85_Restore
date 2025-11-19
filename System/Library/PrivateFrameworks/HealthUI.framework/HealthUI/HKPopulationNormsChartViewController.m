@interface HKPopulationNormsChartViewController
- (HKPopulationNormsChartViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 shouldEmbedInScrollView:(BOOL)a5;
- (id)_viewModelForDisplayType:(id)a3 healthStore:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_deselectClassificationCellAtIndexPath:(id)a3;
- (void)_refreshViewModelIfNecessary;
- (void)_selectClassificationCellAtIndexPath:(id)a3;
- (void)_setupFonts;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)segmentedControlDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePopulationNormsGraphHeightWithTraitCollection:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKPopulationNormsChartViewController

- (HKPopulationNormsChartViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 shouldEmbedInScrollView:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = HKPopulationNormsChartViewController;
  v11 = [(HKPopulationNormsChartViewController *)&v20 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v13 = [(HKPopulationNormsChartViewController *)v11 _viewModelForDisplayType:v9 healthStore:v10];
    viewModel = v12->_viewModel;
    v12->_viewModel = v13;

    v12->_shouldEmbedInScrollView = a5;
    v15 = v12->_viewModel;
    if (v15)
    {
      v16 = [(HKPopulationNormsViewModelDataSource *)v15 viewTitle];
      [(HKPopulationNormsChartViewController *)v12 setTitle:v16];

      v17 = [(HKPopulationNormsViewModelDataSource *)v12->_viewModel hk_UIAutomationIdentifier];
      v18 = [@"UIA.Health" stringByAppendingFormat:@".PopulationNorms.%@", v17];
      [(HKPopulationNormsChartViewController *)v12 setBaseIdentifier:v18];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:v12 file:@"HKPopulationNormsChartViewController.m" lineNumber:67 description:@"Initialized population norms chart with an unsupported display type."];
    }
  }

  return v12;
}

- (void)loadView
{
  v115[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKPopulationNormsChartViewController *)self setView:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v5 = [(HKPopulationNormsChartViewController *)self view];
  [v5 setBackgroundColor:v4];

  if (self->_shouldEmbedInScrollView)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setHidden:1];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:self->_baseIdentifier];
  v9 = objc_alloc(MEMORY[0x1E69DCF38]);
  v10 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel localizedBiologicalSexTitles];
  v11 = [v9 initWithItems:v10];
  biologicalSexSegmentedControl = self->_biologicalSexSegmentedControl;
  self->_biologicalSexSegmentedControl = v11;

  [(UISegmentedControl *)self->_biologicalSexSegmentedControl addTarget:self action:sel_segmentedControlDidChange_ forControlEvents:4096];
  v13 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".BiologicalSex"];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl setAccessibilityIdentifier:v13];

  [(UIView *)self->_contentView addSubview:self->_biologicalSexSegmentedControl];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl hk_constrainToSuperviewAlongEdges:&unk_1F4381B10 constant:12.0];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl hk_constrainToSuperviewAlongEdges:&unk_1F4381B28 constant:v6];
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel maximumSampleValueQuantity];
  v15 = v14;
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel minimumSampleValueQuantity];
  v17 = v16;
  v18 = [HKPopulationNormsGraphView alloc];
  v19 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel quantityUnitTitle];
  v20 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel ageBucketsTitle];
  v21 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel seriesHighlightedSegmentColor];
  v22 = [(HKPopulationNormsGraphView *)v18 initWithMaxYValue:v19 minYValue:v20 YSeriesTitle:v21 XSeriesTitle:v15 highlightedSegmentColor:v17];
  populationNormsGraphView = self->_populationNormsGraphView;
  self->_populationNormsGraphView = v22;

  [(UIView *)self->_contentView addSubview:self->_populationNormsGraphView];
  [(UIView *)self->_populationNormsGraphView hk_constrainToView:self->_biologicalSexSegmentedControl fromEdge:3 toEdge:4 constant:8.0];
  [(UIView *)self->_populationNormsGraphView hk_constrainToSuperviewAlongEdges:&unk_1F4381B40 constant:v6];
  v24 = [(HKPopulationNormsChartViewController *)self traitCollection];
  [(HKPopulationNormsChartViewController *)self updatePopulationNormsGraphHeightWithTraitCollection:v24];

  v25 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Chart"];
  [(HKPopulationNormsGraphView *)self->_populationNormsGraphView setAccessibilityIdentifier:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  classificationLevelsTitleLabel = self->_classificationLevelsTitleLabel;
  self->_classificationLevelsTitleLabel = v26;

  [(UILabel *)self->_classificationLevelsTitleLabel setNumberOfLines:0];
  v28 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel levelsTitle];
  [(UILabel *)self->_classificationLevelsTitleLabel setText:v28];

  [(UIView *)self->_contentView addSubview:self->_classificationLevelsTitleLabel];
  [(UILabel *)self->_classificationLevelsTitleLabel hk_constrainToView:self->_populationNormsGraphView fromEdge:3 toEdge:4 constant:11.0];
  [(UILabel *)self->_classificationLevelsTitleLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381B58 constant:v6];
  v29 = objc_alloc_init(HKPopulationNormsClassificationCollectionViewLayout);
  v30 = [HKPopulationNormsClassificationCollectionView alloc];
  v31 = *MEMORY[0x1E695F058];
  v32 = *(MEMORY[0x1E695F058] + 8);
  v33 = *(MEMORY[0x1E695F058] + 16);
  v34 = *(MEMORY[0x1E695F058] + 24);
  v113 = v29;
  v35 = [(HKPopulationNormsClassificationCollectionView *)v30 initWithFrame:v29 collectionViewLayout:*MEMORY[0x1E695F058], v32, v33, v34];
  classificationCollectionView = self->_classificationCollectionView;
  self->_classificationCollectionView = v35;

  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HKPopulationNormsClassificationCollectionViewCell"];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setShowsHorizontalScrollIndicator:0];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setDataSource:self];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setDelegate:self];
  v37 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v31, v32, v33, v34}];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setBackgroundView:v37];

  v38 = [(HKPopulationNormsChartViewController *)self view];
  v39 = [v38 backgroundColor];
  v40 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView backgroundView];
  [v40 setBackgroundColor:v39];

  [(UIView *)self->_contentView addSubview:self->_classificationCollectionView];
  [(UIView *)self->_classificationCollectionView hk_constrainToView:self->_classificationLevelsTitleLabel fromEdge:3 toEdge:4 constant:11.0];
  [(UIView *)self->_classificationCollectionView hk_constrainToSuperviewAlongEdges:&unk_1F4381B70 constant:0.0];
  v41 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Classification"];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setAccessibilityIdentifier:v41];

  v42 = objc_alloc_init(HKPopulationNormsDescriptionView);
  classificationDescriptionView = self->_classificationDescriptionView;
  self->_classificationDescriptionView = v42;

  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setUserInteractionEnabled:0];
  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView addSubview:self->_classificationDescriptionView];
  [(UIView *)self->_classificationDescriptionView hk_constrainToView:self->_classificationCollectionView fromEdge:3 toEdge:4 constant:11.0];
  [(UIView *)self->_classificationDescriptionView hk_constrainToSuperviewAlongEdges:&unk_1F4381B88 constant:v6];
  v44 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Classification.Description"];
  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setAccessibilityIdentifier:v44];

  v45 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = v45;

  [(UILabel *)self->_attributionLabel setNumberOfLines:0];
  v47 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel footerText];
  [(UILabel *)self->_attributionLabel setText:v47];

  v48 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_attributionLabel setTextColor:v48];

  [(UIView *)self->_contentView addSubview:self->_attributionLabel];
  [(UILabel *)self->_attributionLabel hk_constrainToView:self->_classificationDescriptionView fromEdge:3 toEdge:4 constant:6.0];
  [(UILabel *)self->_attributionLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381BA0 constant:v6];
  [(UILabel *)self->_attributionLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381BB8 constant:11.0];
  v49 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Attribution"];
  [(UILabel *)self->_attributionLabel setAccessibilityIdentifier:v49];

  [(HKPopulationNormsChartViewController *)self _setupFonts];
  if (self->_shouldEmbedInScrollView)
  {
    v50 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = [(HKPopulationNormsChartViewController *)self view];
    [v51 addSubview:v50];

    [v50 addSubview:self->_contentView];
    v99 = MEMORY[0x1E696ACD8];
    v98 = [v50 frameLayoutGuide];
    v102 = [v98 topAnchor];
    v100 = [(HKPopulationNormsChartViewController *)self view];
    v101 = [v100 topAnchor];
    v97 = [v102 constraintEqualToAnchor:v101];
    v115[0] = v97;
    v96 = [v50 frameLayoutGuide];
    v52 = [v96 leadingAnchor];
    v111 = [(HKPopulationNormsChartViewController *)self view];
    [v111 leadingAnchor];
    v110 = v112 = v52;
    v109 = [v52 constraintEqualToAnchor:?];
    v115[1] = v109;
    v92 = [v50 frameLayoutGuide];
    v53 = [v92 trailingAnchor];
    v89 = [(HKPopulationNormsChartViewController *)self view];
    v87 = [v89 trailingAnchor];
    v108 = v53;
    v107 = [v53 constraintEqualToAnchor:v87];
    v115[2] = v107;
    v106 = [v50 frameLayoutGuide];
    v54 = [v106 bottomAnchor];
    v103 = [(HKPopulationNormsChartViewController *)self view];
    v95 = [v103 bottomAnchor];
    v105 = v54;
    v94 = [v54 constraintEqualToAnchor:v95];
    v115[3] = v94;
    v93 = [v50 contentLayoutGuide];
    v91 = [v93 topAnchor];
    v90 = [(UIView *)self->_contentView topAnchor];
    v88 = [v91 constraintEqualToAnchor:v90];
    v115[4] = v88;
    v86 = [v50 contentLayoutGuide];
    v85 = [v86 leadingAnchor];
    v84 = [(UIView *)self->_contentView leadingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v115[5] = v83;
    v82 = [v50 contentLayoutGuide];
    v81 = [v82 trailingAnchor];
    v80 = [(UIView *)self->_contentView trailingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v115[6] = v79;
    v55 = [v50 contentLayoutGuide];
    v56 = [v55 bottomAnchor];
    v57 = [(UIView *)self->_contentView bottomAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    v115[7] = v58;
    v59 = [v50 frameLayoutGuide];
    v60 = [v59 widthAnchor];
    v61 = [(UIView *)self->_contentView widthAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    v115[8] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:9];
    [v99 activateConstraints:v63];

    v64 = v98;
    v65 = v89;

    v66 = v87;
    v67 = v96;

    v68 = v92;
    v69 = v100;

    v70 = v97;
    v71 = v101;

    v72 = v102;
  }

  else
  {
    v73 = [(HKPopulationNormsChartViewController *)self view];
    [v73 addSubview:self->_contentView];

    v104 = MEMORY[0x1E696ACD8];
    v50 = [(UIView *)self->_contentView topAnchor];
    v64 = [(HKPopulationNormsChartViewController *)self view];
    v72 = [v64 topAnchor];
    v69 = [v50 constraintEqualToAnchor:v72];
    v114[0] = v69;
    v71 = [(UIView *)self->_contentView leadingAnchor];
    v70 = [(HKPopulationNormsChartViewController *)self view];
    v67 = [v70 safeAreaLayoutGuide];
    v112 = [v67 leadingAnchor];
    v111 = [v71 constraintEqualToAnchor:?];
    v114[1] = v111;
    v74 = [(UIView *)self->_contentView trailingAnchor];
    v109 = [(HKPopulationNormsChartViewController *)self view];
    v75 = [v109 trailingAnchor];
    v110 = v74;
    v76 = v74;
    v68 = v75;
    v108 = [v76 constraintEqualToAnchor:v75];
    v114[2] = v108;
    v65 = [(UIView *)self->_contentView bottomAnchor];
    v66 = [(HKPopulationNormsChartViewController *)self view];
    v107 = [v66 safeAreaLayoutGuide];
    v106 = [v107 bottomAnchor];
    v105 = [v65 constraintEqualToAnchor:?];
    v114[3] = v105;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];
    v78 = v104;
    v103 = v77;
    [v78 activateConstraints:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v4 viewWillAppear:a3];
  [(HKPopulationNormsChartViewController *)self _refreshViewModelIfNecessary];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v4 viewDidDisappear:a3];
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel clearUserCharacteristicCache];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v13 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKPopulationNormsChartViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKPopulationNormsChartViewController *)self _setupFonts];
    }

    v9 = [(HKPopulationNormsChartViewController *)self traitCollection];

    if (v9 != v4)
    {
      v10 = [(HKPopulationNormsChartViewController *)self traitCollection];
      [(HKPopulationNormsChartViewController *)self updatePopulationNormsGraphHeightWithTraitCollection:v10];
    }
  }

  v11 = [(HKPopulationNormsChartViewController *)self traitCollection];
  v12 = [v11 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v12)
  {
    [(HKPopulationNormsChartViewController *)self _refreshViewModelIfNecessary];
  }
}

- (void)updatePopulationNormsGraphHeightWithTraitCollection:(id)a3
{
  v12 = a3;
  previousPopulationNormsGraphHeightConstraint = self->_previousPopulationNormsGraphHeightConstraint;
  if (previousPopulationNormsGraphHeightConstraint)
  {
    [(NSLayoutConstraint *)previousPopulationNormsGraphHeightConstraint setActive:0];
  }

  v5 = [v12 horizontalSizeClass];
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v8 = [(HKPopulationNormsChartViewController *)self view];
    [v8 frame];
    v10 = v9 * 0.5;

    v6 = [(HKPopulationNormsGraphView *)self->_populationNormsGraphView heightAnchor];
    v7 = [v6 constraintEqualToConstant:{fmax(v10, 400.0)}];
  }

  else
  {
    v6 = [(HKPopulationNormsGraphView *)self->_populationNormsGraphView heightAnchor];
    v7 = [v6 constraintLessThanOrEqualToConstant:400.0];
  }

  v11 = self->_previousPopulationNormsGraphHeightConstraint;
  self->_previousPopulationNormsGraphHeightConstraint = v7;

  [(NSLayoutConstraint *)self->_previousPopulationNormsGraphHeightConstraint setActive:1];
LABEL_8:
}

- (void)_refreshViewModelIfNecessary
{
  v3 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView indexPathsForSelectedItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView indexPathsForSelectedItems];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  viewModel = self->_viewModel;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKPopulationNormsChartViewController__refreshViewModelIfNecessary__block_invoke;
  v9[3] = &unk_1E81B5AD0;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(HKPopulationNormsViewModelDataSource *)viewModel prepareUserCharacteristicCacheWithHandler:v9];
}

void __68__HKPopulationNormsChartViewController__refreshViewModelIfNecessary__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _deselectClassificationCellAtIndexPath:?];
  }

  [*(*(a1 + 40) + 1024) setSelectedSegmentIndex:{objc_msgSend(*(*(a1 + 40) + 1008), "currentBiologicalSexSegmentIndex")}];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(a1 + 40) + 1008) inSection:{"currentClassificationIndex"), 0}];
  [*(a1 + 40) collectionView:*(*(a1 + 40) + 1048) didSelectItemAtIndexPath:v6];
  v2 = *(a1 + 40);
  v3 = *(v2 + 1032);
  v4 = [*(v2 + 1008) userAgeBucketIndex];
  v5 = [*(*(a1 + 40) + 1008) userLatestSampleValue];
  [v3 updateWithUserAgeBucketIndex:v4 userLatestSampleValue:v5];

  [*(*(a1 + 40) + 1000) setHidden:0];
}

- (void)_setupFonts
{
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:32770 maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [(UILabel *)self->_classificationLevelsTitleLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_attributionLabel setFont:v4];
}

- (id)_viewModelForDisplayType:(id)a3 healthStore:(id)a4
{
  v5 = a4;
  v6 = [a3 objectType];
  v7 = [v6 identifier];
  v8 = *MEMORY[0x1E696BDF0];

  if (v7 == v8)
  {
    v9 = [(HKPopulationNormsAbstractViewModel *)[HKCardioFitnessPopulationNormsViewModel alloc] initWithHealthStore:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)segmentedControlDidChange:(id)a3
{
  -[HKPopulationNormsViewModelDataSource setBiologicalSexSegmentIndex:](self->_viewModel, "setBiologicalSexSegmentIndex:", [a3 selectedSegmentIndex]);
  populationNormsGraphView = self->_populationNormsGraphView;
  v5 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentDataForBiologicalSex];
  [(HKPopulationNormsGraphView *)populationNormsGraphView updateWithFlattenedLevelsByAgeBucket:v5 currentClassificationIndex:[(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex]];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"HKPopulationNormsClassificationCollectionViewCell" forIndexPath:v6];
  v8 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel seriesHighlightedColor];
  [v7 setHighlightColor:v8];

  if ([(HKPopulationNormsViewModelDataSource *)self->_viewModel isCurrentClassificationAvailable])
  {
    v9 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex];
    v10 = v9 == [v6 row];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[HKPopulationNormsViewModelDataSource localizedClassificationTitleForIndex:](self->_viewModel, "localizedClassificationTitleForIndex:", [v6 row]);
  v12 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [v6 row]);
  [v7 setTitle:v11 classificationIdentifier:v12 highlighted:v10];

  return v7;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:a4];
  if (v4)
  {
    v5 = v4;
    [v4 setSoftHighlightState:1];
    v4 = v5;
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:a4];
  if (v4)
  {
    v5 = v4;
    [v4 setSoftHighlightState:0];
    v4 = v5;
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = MEMORY[0x1E696AC88];
  viewModel = self->_viewModel;
  v7 = a4;
  v8 = [v5 indexPathForRow:-[HKPopulationNormsViewModelDataSource currentClassificationIndex](viewModel inSection:{"currentClassificationIndex"), 0}];
  [(HKPopulationNormsChartViewController *)self _deselectClassificationCellAtIndexPath:v8];
  -[HKPopulationNormsViewModelDataSource setClassificationIndex:](self->_viewModel, "setClassificationIndex:", [v7 row]);
  [(HKPopulationNormsChartViewController *)self _selectClassificationCellAtIndexPath:v7];
}

- (void)_deselectClassificationCellAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:?];
  if (v4)
  {
    v5 = -[HKPopulationNormsViewModelDataSource localizedClassificationTitleForIndex:](self->_viewModel, "localizedClassificationTitleForIndex:", [v7 item]);
    v6 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [v7 item]);
    [v4 setTitle:v5 classificationIdentifier:v6 highlighted:0];

    [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView deselectItemAtIndexPath:v7 animated:1];
  }
}

- (void)_selectClassificationCellAtIndexPath:(id)a3
{
  v13 = a3;
  populationNormsGraphView = self->_populationNormsGraphView;
  v5 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentDataForBiologicalSex];
  [(HKPopulationNormsGraphView *)populationNormsGraphView updateWithFlattenedLevelsByAgeBucket:v5 currentClassificationIndex:[(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex]];

  v6 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:v13];
  if (v6)
  {
    v7 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationTitle];
    v8 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [v13 item]);
    [v6 setTitle:v7 classificationIdentifier:v8 highlighted:1];
  }

  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView scrollToItemAtIndexPath:v13 atScrollPosition:16 animated:[(UIView *)self->_contentView isHidden]^ 1];
  classificationDescriptionView = self->_classificationDescriptionView;
  v10 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel shouldShowClassificationTitle];
  if (v10)
  {
    v11 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationName];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationDescription];
  [(HKPopulationNormsDescriptionView *)classificationDescriptionView updateWithTitle:v11 description:v12];

  if (v10)
  {
  }
}

@end