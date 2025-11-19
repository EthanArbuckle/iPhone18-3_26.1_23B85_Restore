@interface HKElectrocardiogramMetadataView
- (HKElectrocardiogramMetadataView)initWithSample:(id)a3 activeAlgorithmVersion:(int64_t)a4 displayGraph:(BOOL)a5 allowExportToPDF:(BOOL)a6 isSharedData:(BOOL)a7 delegate:(id)a8;
- (HKElectrocardiogramMetadataViewDelegate)delegate;
- (id)_bulletedTextView;
- (id)_ecgChart;
- (id)_footerLabel;
- (id)_separatorLine;
- (id)_sharePDFControl;
- (void)_setupUIWithActiveAlgorithmVersion:(int64_t)a3;
- (void)detailButtonTapped:(id)a3;
- (void)sharedPDFControlTapped:(id)a3;
@end

@implementation HKElectrocardiogramMetadataView

- (HKElectrocardiogramMetadataView)initWithSample:(id)a3 activeAlgorithmVersion:(int64_t)a4 displayGraph:(BOOL)a5 allowExportToPDF:(BOOL)a6 isSharedData:(BOOL)a7 delegate:(id)a8
{
  v15 = a3;
  v16 = a8;
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

    objc_storeStrong(&v17->_sample, a3);
    v17->_displayGraph = a5;
    v17->_allowExportToPDF = a6;
    v17->_isSharedData = a7;
    objc_storeWeak(&v17->_delegate, v16);
    [(HKElectrocardiogramMetadataView *)v17 _setupUIWithActiveAlgorithmVersion:a4];
  }

  v18 = v17;
LABEL_6:

  return v18;
}

- (void)_setupUIWithActiveAlgorithmVersion:(int64_t)a3
{
  v90 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v90 setBackgroundColor:v5];

  [(HKElectrocardiogramMetadataView *)self addSubview:v90];
  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v90 hk_alignHorizontalConstraintsWithView:self margin:0.0];
  v6 = [v90 topAnchor];
  v7 = [(HKElectrocardiogramMetadataView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(HKElectrocardiogramMetadataView *)self sample];
  v10 = [v9 _localizedClassificationWithActiveAlgorithmVersion:a3];

  v11 = [HKElectrocardiogramMetadataHeaderView alloc];
  v12 = [(HKElectrocardiogramMetadataView *)self sample];
  v13 = [v12 startDate];
  v14 = [(HKElectrocardiogramMetadataHeaderView *)v11 initWithText:v10 date:v13];

  [v90 addSubview:v14];
  [(HKElectrocardiogramMetadataHeaderView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(HKElectrocardiogramMetadataHeaderView *)v14 leadingAnchor];
  v16 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
  [v18 setActive:1];

  v19 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  v20 = [v19 trailingAnchor];
  v21 = [(HKElectrocardiogramMetadataHeaderView *)v14 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];
  [v22 setActive:1];

  v23 = [(HKElectrocardiogramMetadataHeaderView *)v14 topAnchor];
  v24 = [v90 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];
  [v25 setActive:1];

  v26 = [(HKElectrocardiogramMetadataHeaderView *)v14 detailButton];
  [v26 addTarget:self action:sel_detailButtonTapped_ forControlEvents:64];

  v27 = [(HKElectrocardiogramMetadataView *)self sample];
  LODWORD(v24) = [v27 hk_isClassificationSupported];
  v28 = [(HKElectrocardiogramMetadataHeaderView *)v14 detailButton];
  [v28 setHidden:v24 ^ 1];

  v29 = [(HKElectrocardiogramMetadataHeaderView *)v14 bottomAnchor];
  LODWORD(v27) = [(HKElectrocardiogramMetadataView *)self displayGraph];
  v30 = [(HKElectrocardiogramMetadataView *)self _ecgChart];
  v31 = v30;
  if (v27)
  {
    [v90 addSubview:v30];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 hk_alignHorizontalConstraintsWithView:v90 margin:10.0];
    v32 = [v31 topAnchor];
    v33 = [v32 constraintEqualToAnchor:v29 constant:8.0];
  }

  else
  {
    v34 = [v30 infoView];

    [v90 addSubview:v34];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v34 leadingAnchor];
    v36 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
    v37 = [v36 leadingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37 constant:10.0];
    [v38 setActive:1];

    v39 = [v34 trailingAnchor];
    v40 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:-10.0];
    [v41 setActive:1];

    v32 = [v34 topAnchor];
    v33 = [v32 constraintEqualToAnchor:v29];
    v31 = v34;
  }

  [v33 setActive:1];

  v42 = [v31 bottomAnchor];

  v43 = [(HKElectrocardiogramMetadataView *)self sample];
  v44 = [v43 hk_isSymptomsNotSet];

  if ((v44 & 1) == 0)
  {
    v45 = [(HKElectrocardiogramMetadataView *)self _separatorLine];
    [v90 addSubview:v45];
    v46 = [v45 leadingAnchor];
    v47 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
    v48 = [v47 leadingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48 constant:10.0];
    [v49 setActive:1];

    v50 = [v45 trailingAnchor];
    v51 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [v45 topAnchor];
    v54 = [v53 constraintEqualToAnchor:v42];
    [v54 setActive:1];

    v55 = [v45 bottomAnchor];

    v56 = [(HKElectrocardiogramMetadataView *)self _bulletedTextView];
    [v90 addSubview:v56];
    [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v56 hk_alignHorizontalConstraintsWithView:v90 margin:10.0];
    v57 = [v56 topAnchor];
    v58 = [v57 constraintEqualToAnchor:v55];
    [v58 setActive:1];

    v42 = [v56 bottomAnchor];
  }

  if ([(HKElectrocardiogramMetadataView *)self allowExportToPDF])
  {
    v59 = [(HKElectrocardiogramMetadataView *)self _sharePDFControl];
    [v90 addSubview:v59];
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v59 hk_alignHorizontalConstraintsWithView:v90 margin:0.0];
    v60 = [v59 topAnchor];
    v61 = [v60 constraintEqualToAnchor:v42];
    [v61 setActive:1];

    v62 = [v59 bottomAnchor];

    v42 = v62;
  }

  v63 = [(HKElectrocardiogramMetadataView *)self _separatorLine];
  [v90 addSubview:v63];
  v64 = [v63 leadingAnchor];
  v65 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  v66 = [v65 leadingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:10.0];
  [v67 setActive:1];

  v68 = [v63 trailingAnchor];
  v69 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  [v70 setActive:1];

  v71 = [v63 topAnchor];
  v72 = [v71 constraintEqualToAnchor:v42];
  [v72 setActive:1];

  v73 = [v63 bottomAnchor];

  v74 = [(HKElectrocardiogramMetadataView *)self _footerLabel];
  [v90 addSubview:v74];
  v75 = [v74 leadingAnchor];
  v76 = [(HKElectrocardiogramMetadataView *)self layoutMarginsGuide];
  v77 = [v76 leadingAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:10.0];
  [v78 setActive:1];

  v79 = [v74 trailingAnchor];
  v80 = [(HKElectrocardiogramMetadataView *)self trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:-10.0];
  [v81 setActive:1];

  v82 = [v74 topAnchor];
  v83 = [v82 constraintEqualToAnchor:v73 constant:10.0];
  [v83 setActive:1];

  v84 = [v90 bottomAnchor];
  v85 = [v74 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:16.0];
  [v86 setActive:1];

  v87 = [(HKElectrocardiogramMetadataView *)self bottomAnchor];
  v88 = [v90 bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  [v89 setActive:1];
}

- (void)detailButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained electrocardiogramMetadataViewDidTapDetailButton:self];
}

- (void)sharedPDFControlTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained electrocardiogramMetadataViewDidSelectShareRow:self];
}

- (id)_ecgChart
{
  v3 = [[HKElectrocardiogramChartMetadataView alloc] initWithGridSize:6.0, 6.0];
  v4 = [(HKElectrocardiogramChartMetadataView *)v3 chartView];
  v5 = [(HKElectrocardiogramMetadataView *)self sample];
  [v4 displayElectrocardiogram:v5 allowsScrolling:1];

  v6 = [(HKElectrocardiogramChartMetadataView *)v3 chartView];
  [v6 setEdgeMaskEnabled:1];

  v7 = [(HKElectrocardiogramMetadataView *)self sample];
  v8 = [v7 hk_localizedAverageBPM];
  v9 = [(HKElectrocardiogramChartMetadataView *)v3 infoView];
  [v9 setHeartRateText:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(HKElectrocardiogramMetadataView *)self sample];
  v12 = [WeakRetained electrocardiogramMetadataView:self regulatedBodyTextForSample:v11];
  v13 = [(HKElectrocardiogramChartMetadataView *)v3 infoView];
  [v13 setBodyText:v12];

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

  v7 = [(HKElectrocardiogramMetadataView *)self sample];
  v8 = [v7 _localizedSymptoms];
  [(HKElectrocardiogramBulletedTextView *)v3 setDetailTextWithBullets:v8];

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
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

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
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setTextColor:v10];

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
  v3 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(HKSeparatorLineView *)v2 setColor:v3];

  [(HKSeparatorLineView *)v2 setSeparatorThickness:HKUIFloorToScreenScale(0.5)];

  return v2;
}

- (HKElectrocardiogramMetadataViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end