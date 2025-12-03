@interface CAMSemanticStyleDetailView
- (CAMSemanticStyleDetailView)initWithFrame:(CGRect)frame;
- (id)_descriptionForSemanticStylePreset:(int64_t)preset;
- (void)_updateTextForCurrentStyle;
- (void)setSemanticStyle:(id)style;
@end

@implementation CAMSemanticStyleDetailView

- (CAMSemanticStyleDetailView)initWithFrame:(CGRect)frame
{
  v92[17] = *MEMORY[0x1E69E9840];
  v91.receiver = self;
  v91.super_class = CAMSemanticStyleDetailView;
  v3 = [(CAMSemanticStyleDetailView *)&v91 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = CEKFontOfSizeWeightStyle();
    v5 = CEKFontOfSizeWeightStyle();
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    styleTitleLabel = v3->__styleTitleLabel;
    v3->__styleTitleLabel = v11;

    [(UILabel *)v3->__styleTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__styleTitleLabel setNumberOfLines:0];
    [(UILabel *)v3->__styleTitleLabel setFont:v5];
    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__styleTitleLabel];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    styleDescriptionLabel = v3->__styleDescriptionLabel;
    v3->__styleDescriptionLabel = v13;

    [(UILabel *)v3->__styleDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__styleDescriptionLabel setNumberOfLines:0];
    [(UILabel *)v3->__styleDescriptionLabel setLineBreakMode:0];
    v90 = v4;
    [(UILabel *)v3->__styleDescriptionLabel setFont:v4];
    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__styleDescriptionLabel];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    toneTitleLabel = v3->__toneTitleLabel;
    v3->__toneTitleLabel = v15;

    [(UILabel *)v3->__toneTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__toneTitleLabel setNumberOfLines:1];
    [(UILabel *)v3->__toneTitleLabel setFont:v5];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->__toneTitleLabel setTextColor:secondaryLabelColor];

    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__toneTitleLabel];
    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    toneValueLabel = v3->__toneValueLabel;
    v3->__toneValueLabel = v18;

    [(UILabel *)v3->__toneValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__toneValueLabel setNumberOfLines:1];
    [(UILabel *)v3->__toneValueLabel setFont:v5];
    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__toneValueLabel];
    v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    warmthTitleLabel = v3->__warmthTitleLabel;
    v3->__warmthTitleLabel = v20;

    [(UILabel *)v3->__warmthTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__warmthTitleLabel setNumberOfLines:1];
    [(UILabel *)v3->__warmthTitleLabel setFont:v5];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->__warmthTitleLabel setTextColor:secondaryLabelColor2];

    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__warmthTitleLabel];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    warmthValueLabel = v3->__warmthValueLabel;
    v3->__warmthValueLabel = v23;

    [(UILabel *)v3->__warmthValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->__warmthValueLabel setNumberOfLines:1];
    v89 = v5;
    [(UILabel *)v3->__warmthValueLabel setFont:v5];
    [(CAMSemanticStyleDetailView *)v3 addSubview:v3->__warmthValueLabel];
    v70 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v3->__styleTitleLabel leadingAnchor];
    leadingAnchor2 = [(CAMSemanticStyleDetailView *)v3 leadingAnchor];
    v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
    v92[0] = v86;
    trailingAnchor = [(UILabel *)v3->__styleTitleLabel trailingAnchor];
    trailingAnchor2 = [(CAMSemanticStyleDetailView *)v3 trailingAnchor];
    v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-17.0];
    v92[1] = v83;
    topAnchor = [(UILabel *)v3->__styleTitleLabel topAnchor];
    topAnchor2 = [(CAMSemanticStyleDetailView *)v3 topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v92[2] = v80;
    leadingAnchor3 = [(UILabel *)v3->__styleDescriptionLabel leadingAnchor];
    leadingAnchor4 = [(CAMSemanticStyleDetailView *)v3 leadingAnchor];
    v77 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:17.0];
    v92[3] = v77;
    trailingAnchor3 = [(UILabel *)v3->__styleDescriptionLabel trailingAnchor];
    trailingAnchor4 = [(CAMSemanticStyleDetailView *)v3 trailingAnchor];
    v74 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-17.0];
    v92[4] = v74;
    topAnchor3 = [(UILabel *)v3->__styleDescriptionLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->__toneTitleLabel bottomAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:6.0];
    v92[5] = v71;
    bottomAnchor2 = [(UILabel *)v3->__styleDescriptionLabel bottomAnchor];
    bottomAnchor3 = [(CAMSemanticStyleDetailView *)v3 bottomAnchor];
    v67 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
    v92[6] = v67;
    leadingAnchor5 = [(UILabel *)v3->__toneTitleLabel leadingAnchor];
    leadingAnchor6 = [(CAMSemanticStyleDetailView *)v3 leadingAnchor];
    v64 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:17.0];
    v92[7] = v64;
    topAnchor4 = [(UILabel *)v3->__toneTitleLabel topAnchor];
    bottomAnchor4 = [(UILabel *)v3->__styleTitleLabel bottomAnchor];
    v61 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:1.0];
    v92[8] = v61;
    leadingAnchor7 = [(UILabel *)v3->__toneValueLabel leadingAnchor];
    trailingAnchor5 = [(UILabel *)v3->__toneTitleLabel trailingAnchor];
    v58 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:6.0];
    v92[9] = v58;
    widthAnchor = [(UILabel *)v3->__toneValueLabel widthAnchor];
    v56 = [widthAnchor constraintGreaterThanOrEqualToConstant:30.0];
    v92[10] = v56;
    topAnchor5 = [(UILabel *)v3->__toneValueLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v3->__styleTitleLabel bottomAnchor];
    v53 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:1.0];
    v92[11] = v53;
    leadingAnchor8 = [(UILabel *)v3->__warmthTitleLabel leadingAnchor];
    trailingAnchor6 = [(UILabel *)v3->__toneValueLabel trailingAnchor];
    v50 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:9.0];
    v92[12] = v50;
    topAnchor6 = [(UILabel *)v3->__warmthTitleLabel topAnchor];
    bottomAnchor6 = [(UILabel *)v3->__styleTitleLabel bottomAnchor];
    v47 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:1.0];
    v92[13] = v47;
    leadingAnchor9 = [(UILabel *)v3->__warmthValueLabel leadingAnchor];
    trailingAnchor7 = [(UILabel *)v3->__warmthTitleLabel trailingAnchor];
    v27 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7 constant:6.0];
    v92[14] = v27;
    widthAnchor2 = [(UILabel *)v3->__warmthValueLabel widthAnchor];
    v29 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:30.0];
    v92[15] = v29;
    topAnchor7 = [(UILabel *)v3->__warmthValueLabel topAnchor];
    bottomAnchor7 = [(UILabel *)v3->__styleTitleLabel bottomAnchor];
    v32 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:1.0];
    v92[16] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:17];
    [v70 activateConstraints:v33];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(CAMSemanticStyleDetailView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    layer = [(CAMSemanticStyleDetailView *)v3 layer];
    [layer setCornerRadius:16.0];

    v36 = *MEMORY[0x1E69796E8];
    layer2 = [(CAMSemanticStyleDetailView *)v3 layer];
    [layer2 setCornerCurve:v36];

    v38 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    integerFormatter = v3->__integerFormatter;
    v3->__integerFormatter = v38;

    [(NSNumberFormatter *)v3->__integerFormatter setPositiveFormat:@"0"];
    [(NSNumberFormatter *)v3->__integerFormatter setNegativeFormat:@"0"];
    v40 = [(NSNumberFormatter *)v3->__integerFormatter stringFromNumber:&unk_1F16C7A90];
    [(NSNumberFormatter *)v3->__integerFormatter setZeroSymbol:v40];

    plusSign = [(NSNumberFormatter *)v3->__integerFormatter plusSign];
    [(NSNumberFormatter *)v3->__integerFormatter setPositivePrefix:plusSign];

    minusSign = [(NSNumberFormatter *)v3->__integerFormatter minusSign];
    v43 = [minusSign isEqualToString:@"-"];
    v44 = v3->__integerFormatter;
    if (v43)
    {
      [(NSNumberFormatter *)v44 setNegativePrefix:@"−"];
    }

    else
    {
      minusSign2 = [(NSNumberFormatter *)v44 minusSign];
      [(NSNumberFormatter *)v3->__integerFormatter setNegativePrefix:minusSign2];
    }

    [(CAMSemanticStyleDetailView *)v3 _updateTextForCurrentStyle];
  }

  return v3;
}

- (void)setSemanticStyle:(id)style
{
  styleCopy = style;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, style);
    [(CAMSemanticStyleDetailView *)self _updateTextForCurrentStyle];
  }
}

- (void)_updateTextForCurrentStyle
{
  semanticStyle = [(CAMSemanticStyleDetailView *)self semanticStyle];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_DETAIL_TITLE", 0);
  displayName = [semanticStyle displayName];
  v6 = [v3 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, displayName];

  cam_uppercaseStringWithPreferredLocale = [v6 cam_uppercaseStringWithPreferredLocale];
  _styleTitleLabel = [(CAMSemanticStyleDetailView *)self _styleTitleLabel];
  [_styleTitleLabel setText:cam_uppercaseStringWithPreferredLocale];

  v9 = -[CAMSemanticStyleDetailView _descriptionForSemanticStylePreset:](self, "_descriptionForSemanticStylePreset:", [semanticStyle presetType]);
  _styleDescriptionLabel = [(CAMSemanticStyleDetailView *)self _styleDescriptionLabel];
  [_styleDescriptionLabel setText:v9];

  v11 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_CONTROL_TONE", 0);
  cam_uppercaseStringWithPreferredLocale2 = [v11 cam_uppercaseStringWithPreferredLocale];
  _toneTitleLabel = [(CAMSemanticStyleDetailView *)self _toneTitleLabel];
  [_toneTitleLabel setText:cam_uppercaseStringWithPreferredLocale2];

  _integerFormatter = [(CAMSemanticStyleDetailView *)self _integerFormatter];
  v15 = MEMORY[0x1E696AD98];
  [semanticStyle sceneBias];
  v17 = [v15 numberWithDouble:v16 * 100.0];
  v18 = [_integerFormatter stringFromNumber:v17];
  _toneValueLabel = [(CAMSemanticStyleDetailView *)self _toneValueLabel];
  [_toneValueLabel setText:v18];

  v20 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_CONTROL_WARMTH", 0);
  cam_uppercaseStringWithPreferredLocale3 = [v20 cam_uppercaseStringWithPreferredLocale];
  _warmthTitleLabel = [(CAMSemanticStyleDetailView *)self _warmthTitleLabel];
  [_warmthTitleLabel setText:cam_uppercaseStringWithPreferredLocale3];

  _integerFormatter2 = [(CAMSemanticStyleDetailView *)self _integerFormatter];
  v24 = MEMORY[0x1E696AD98];
  [semanticStyle warmthBias];
  v26 = [v24 numberWithDouble:v25 * 100.0];
  v27 = [_integerFormatter2 stringFromNumber:v26];
  _warmthValueLabel = [(CAMSemanticStyleDetailView *)self _warmthValueLabel];
  [_warmthValueLabel setText:v27];

  [(CAMSemanticStyleDetailView *)self setNeedsLayout];
}

- (id)_descriptionForSemanticStylePreset:(int64_t)preset
{
  if (preset > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76FAAD0[preset], 0);
  }

  return v4;
}

@end