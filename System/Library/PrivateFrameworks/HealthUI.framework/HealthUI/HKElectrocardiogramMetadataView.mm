@interface HKElectrocardiogramMetadataView
- (HKElectrocardiogramMetadataView)initWithSample:(id)sample activeAlgorithmVersion:(int64_t)version displayGraph:(BOOL)graph allowExportToPDF:(BOOL)f isSharedData:(BOOL)data delegate:(id)delegate;
- (HKElectrocardiogramMetadataViewDelegate)delegate;
- (id)_bulletedTextView;
- (id)_ecgChart;
- (id)_footerLabel;
- (id)_separatorLine;
- (id)_sharePDFControl;
- (void)_setupUIWithActiveAlgorithmVersion:(int64_t)version;
- (void)detailButtonTapped:(id)tapped;
- (void)sharedPDFControlTapped:(id)tapped;
@end

@implementation HKElectrocardiogramMetadataView

- (HKElectrocardiogramMetadataView)initWithSample:(id)sample activeAlgorithmVersion:(int64_t)version displayGraph:(BOOL)graph allowExportToPDF:(BOOL)f isSharedData:(BOOL)data delegate:(id)delegate
{
  sampleCopy = sample;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HKElectrocardiogramMetadataView;
  v17 = [(HKElectrocardiogramMetadataView *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v17->_sample, sample);
    v17->_displayGraph = graph;
    v17->_allowExportToPDF = f;
    v17->_isSharedData = data;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    [(HKElectrocardiogramMetadataView *)v17 _setupUIWithActiveAlgorithmVersion:version];
  }

  v18 = v17;
LABEL_6:

  return v18;
}

- (void)_setupUIWithActiveAlgorithmVersion:(int64_t)version
{
  v90 = objc_alloc_init(MEMORY[0x1E69DD250]);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v90 setBackgroundColor:systemBackgroundColor];

  [(HKElectrocardiogramMetadataView *)self addSubview:v90];
  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v90 hk_alignHorizontalConstraintsWithView:self margin:0.0];
  topAnchor = [v90 topAnchor];
  topAnchor2 = [(HKElectrocardiogramMetadataView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v8 setActive:1];

  sample = [(HKElectrocardiogramMetadataView *)self sample];
  v10 = [sample _localizedClassificationWithActiveAlgorithmVersion:version];

  v11 = [HKElectrocardiogramMetadataHeaderView alloc];
  sample2 = [(HKElectrocardiogramMetadataView *)self sample];
  startDate = [sample2 startDate];
  v14 = [(HKElectrocardiogramMetadataHeaderView *)v11 initWithText:v10 date:startDate];

  [v90 addSubview:v14];
  [(HKElectrocardiogramMetadataHeaderView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(HKElectrocardiogramMetadataHeaderView *)v14 leadingAnchor];
  layoutMarginsGuide = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  [v18 setActive:1];

  layoutMarginsGuide2 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [(HKElectrocardiogramMetadataHeaderView *)v14 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  [v22 setActive:1];

  topAnchor3 = [(HKElectrocardiogramMetadataHeaderView *)v14 topAnchor];
  topAnchor4 = [v90 topAnchor];
  v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  [v25 setActive:1];

  detailButton = [(HKElectrocardiogramMetadataHeaderView *)v14 detailButton];
  [detailButton addTarget:self action:sel_detailButtonTapped_ forControlEvents:64];

  sample3 = [(HKElectrocardiogramMetadataView *)self sample];
  LODWORD(topAnchor4) = [sample3 hk_isClassificationSupported];
  detailButton2 = [(HKElectrocardiogramMetadataHeaderView *)v14 detailButton];
  [detailButton2 setHidden:topAnchor4 ^ 1];

  bottomAnchor = [(HKElectrocardiogramMetadataHeaderView *)v14 bottomAnchor];
  LODWORD(sample3) = [(HKElectrocardiogramMetadataView *)self displayGraph];
  _ecgChart = [(HKElectrocardiogramMetadataView *)self _ecgChart];
  v31 = _ecgChart;
  if (sample3)
  {
    [v90 addSubview:_ecgChart];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 hk_alignHorizontalConstraintsWithView:v90 margin:10.0];
    topAnchor5 = [v31 topAnchor];
    v33 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:8.0];
  }

  else
  {
    infoView = [_ecgChart infoView];

    [v90 addSubview:infoView];
    [infoView setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor3 = [infoView leadingAnchor];
    layoutMarginsGuide3 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
    [v38 setActive:1];

    trailingAnchor3 = [infoView trailingAnchor];
    trailingAnchor4 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    [v41 setActive:1];

    topAnchor5 = [infoView topAnchor];
    v33 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
    v31 = infoView;
  }

  [v33 setActive:1];

  bottomAnchor2 = [v31 bottomAnchor];

  sample4 = [(HKElectrocardiogramMetadataView *)self sample];
  hk_isSymptomsNotSet = [sample4 hk_isSymptomsNotSet];

  if ((hk_isSymptomsNotSet & 1) == 0)
  {
    _separatorLine = [(HKElectrocardiogramMetadataView *)self _separatorLine];
    [v90 addSubview:_separatorLine];
    leadingAnchor5 = [_separatorLine leadingAnchor];
    layoutMarginsGuide4 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide4 leadingAnchor];
    v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
    [v49 setActive:1];

    trailingAnchor5 = [_separatorLine trailingAnchor];
    trailingAnchor6 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
    v52 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v52 setActive:1];

    topAnchor6 = [_separatorLine topAnchor];
    v54 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2];
    [v54 setActive:1];

    bottomAnchor3 = [_separatorLine bottomAnchor];

    _bulletedTextView = [(HKElectrocardiogramMetadataView *)self _bulletedTextView];
    [v90 addSubview:_bulletedTextView];
    [_bulletedTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [_bulletedTextView hk_alignHorizontalConstraintsWithView:v90 margin:10.0];
    topAnchor7 = [_bulletedTextView topAnchor];
    v58 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3];
    [v58 setActive:1];

    bottomAnchor2 = [_bulletedTextView bottomAnchor];
  }

  if ([(HKElectrocardiogramMetadataView *)self allowExportToPDF])
  {
    _sharePDFControl = [(HKElectrocardiogramMetadataView *)self _sharePDFControl];
    [v90 addSubview:_sharePDFControl];
    [_sharePDFControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [_sharePDFControl hk_alignHorizontalConstraintsWithView:v90 margin:0.0];
    topAnchor8 = [_sharePDFControl topAnchor];
    v61 = [topAnchor8 constraintEqualToAnchor:bottomAnchor2];
    [v61 setActive:1];

    bottomAnchor4 = [_sharePDFControl bottomAnchor];

    bottomAnchor2 = bottomAnchor4;
  }

  _separatorLine2 = [(HKElectrocardiogramMetadataView *)self _separatorLine];
  [v90 addSubview:_separatorLine2];
  leadingAnchor7 = [_separatorLine2 leadingAnchor];
  layoutMarginsGuide5 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide5 leadingAnchor];
  v67 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
  [v67 setActive:1];

  trailingAnchor7 = [_separatorLine2 trailingAnchor];
  trailingAnchor8 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
  v70 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v70 setActive:1];

  topAnchor9 = [_separatorLine2 topAnchor];
  v72 = [topAnchor9 constraintEqualToAnchor:bottomAnchor2];
  [v72 setActive:1];

  bottomAnchor5 = [_separatorLine2 bottomAnchor];

  _footerLabel = [(HKElectrocardiogramMetadataView *)self _footerLabel];
  [v90 addSubview:_footerLabel];
  leadingAnchor9 = [_footerLabel leadingAnchor];
  layoutMarginsGuide6 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  leadingAnchor10 = [layoutMarginsGuide6 leadingAnchor];
  v78 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:10.0];
  [v78 setActive:1];

  trailingAnchor9 = [_footerLabel trailingAnchor];
  trailingAnchor10 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
  v81 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-10.0];
  [v81 setActive:1];

  topAnchor10 = [_footerLabel topAnchor];
  v83 = [topAnchor10 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  [v83 setActive:1];

  bottomAnchor6 = [v90 bottomAnchor];
  bottomAnchor7 = [_footerLabel bottomAnchor];
  v86 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:16.0];
  [v86 setActive:1];

  bottomAnchor8 = [(HKElectrocardiogramMetadataView *)self bottomAnchor];
  bottomAnchor9 = [v90 bottomAnchor];
  v89 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  [v89 setActive:1];
}

- (void)detailButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained electrocardiogramMetadataViewDidTapDetailButton:self];
}

- (void)sharedPDFControlTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained electrocardiogramMetadataViewDidSelectShareRow:self];
}

- (id)_ecgChart
{
  v3 = [[HKElectrocardiogramChartMetadataView alloc] initWithGridSize:6.0, 6.0];
  chartView = [(HKElectrocardiogramChartMetadataView *)v3 chartView];
  sample = [(HKElectrocardiogramMetadataView *)self sample];
  [chartView displayElectrocardiogram:sample allowsScrolling:1];

  chartView2 = [(HKElectrocardiogramChartMetadataView *)v3 chartView];
  [chartView2 setEdgeMaskEnabled:1];

  sample2 = [(HKElectrocardiogramMetadataView *)self sample];
  hk_localizedAverageBPM = [sample2 hk_localizedAverageBPM];
  infoView = [(HKElectrocardiogramChartMetadataView *)v3 infoView];
  [infoView setHeartRateText:hk_localizedAverageBPM];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  sample3 = [(HKElectrocardiogramMetadataView *)self sample];
  v12 = [WeakRetained electrocardiogramMetadataView:self regulatedBodyTextForSample:sample3];
  infoView2 = [(HKElectrocardiogramChartMetadataView *)v3 infoView];
  [infoView2 setBodyText:v12];

  v14 = [@"SessionDetails" stringByAppendingString:@".Waveform"];
  v15 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:v14];
  [(HKElectrocardiogramChartMetadataView *)v3 setAccessibilityIdentifier:v15];

  return v3;
}

- (id)_bulletedTextView
{
  v3 = objc_alloc_init(HKElectrocardiogramBulletedTextView);
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SYMPTOMS_TITLE" value:&stru_1F42FFBE0 table:@"Localizable-Cinnamon"];
  v6 = HKConditionallyRedactedHeartRhythmString();
  [(HKElectrocardiogramBulletedTextView *)v3 setTitleText:v6];

  sample = [(HKElectrocardiogramMetadataView *)self sample];
  _localizedSymptoms = [sample _localizedSymptoms];
  [(HKElectrocardiogramBulletedTextView *)v3 setDetailTextWithBullets:_localizedSymptoms];

  v9 = [@"SessionDetails" stringByAppendingString:@".Symptoms"];
  v10 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:v9];
  [(HKElectrocardiogramBulletedTextView *)v3 setAccessibilityIdentifier:v10];

  return v3;
}

- (id)_sharePDFControl
{
  v3 = [HKExportPDFControl alloc];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"ECG_SHARE_PDF_TITLE" value:&stru_1F42FFBE0 table:@"Localizable-Cinnamon"];
  v6 = HKConditionallyRedactedHeartRhythmString();
  v7 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"SessionDetails"];
  v8 = [(HKExportPDFControl *)v3 initWithText:v6 layoutMargins:v7 accessibilityIdentifierPrefix:10.0, 10.0, 10.0, 10.0];

  [(HKExportPDFControl *)v8 addTarget:self action:sel_sharedPDFControlTapped_ forControlEvents:64];

  return v8;
}

- (id)_footerLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(self) = [(HKElectrocardiogramMetadataView *)self isSharedData];
  v5 = HKHealthKitFrameworkBundle();
  v6 = v5;
  if (self)
  {
    v7 = @"ECG_IN_CASE_OF_EMERGENCY_SHARED_SUMMARY";
  }

  else
  {
    v7 = @"ECG_IN_CASE_OF_EMERGENCY";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"Localizable-Cinnamon"];
  v9 = HKConditionallyRedactedHeartRhythmString();
  [v3 setText:v9];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setTextAlignment:4];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setTextColor:secondaryLabelColor];

  [v3 setNumberOfLines:0];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:0];
  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  [v3 setFont:v12];

  v13 = [@"SessionDetails" stringByAppendingString:@".HeartAttackWarning"];
  v14 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:v13];
  [v3 setAccessibilityIdentifier:v14];

  return v3;
}

- (id)_separatorLine
{
  v2 = objc_alloc_init(HKSeparatorLineView);
  [(HKSeparatorLineView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(HKSeparatorLineView *)v2 setColor:opaqueSeparatorColor];

  [(HKSeparatorLineView *)v2 setSeparatorThickness:HKUIFloorToScreenScale(0.5)];

  return v2;
}

- (HKElectrocardiogramMetadataViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end