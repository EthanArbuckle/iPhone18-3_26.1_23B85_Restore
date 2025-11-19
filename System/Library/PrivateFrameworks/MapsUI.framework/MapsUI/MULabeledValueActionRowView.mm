@interface MULabeledValueActionRowView
- (MULabeledValueActionRowView)initWithFrame:(CGRect)a3;
- (id)_valueLabelFont;
- (id)initForDeveloperPlaceCard;
- (void)_actionButtonTapped;
- (void)_contentSizeDidChange;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateValueText;
- (void)copy:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MULabeledValueActionRowView

- (void)copy:(id)a3
{
  v4 = [(MULabeledValueActionViewModelProviding *)self->_viewModel valueString];
  if ([v4 length])
  {
    v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v3 setString:v4];
  }
}

- (void)_updateValueText
{
  v3 = [(MULabeledValueActionViewModelProviding *)self->_viewModel valueString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MULabeledValueActionViewModelProviding *)self->_viewModel actionVariant]== 1 && UIAccessibilityButtonShapesEnabled();
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696F200] sharedManager];
    v8 = [v7 bodyFont];
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    if (v5)
    {
      [v12 setObject:&unk_1F450DE98 forKeyedSubscript:*MEMORY[0x1E69DB758]];
    }

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = [(MULabeledValueActionViewModelProviding *)self->_viewModel valueString];
    v11 = [v9 initWithString:v10 attributes:v12];
    [(MULabelViewProtocol *)self->_valueLabel setAttributedText:v11];
  }

  else
  {
    valueLabel = self->_valueLabel;

    [(MULabelViewProtocol *)valueLabel setAttributedText:0];
  }
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v3];

  v4 = [(MULabeledValueActionRowView *)self _valueLabelFont];
  [(MULabelViewProtocol *)self->_valueLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(MULabelViewProtocol *)self->_tertiaryLabel setFont:v5];
}

- (id)_valueLabelFont
{
  if ([(MULabeledValueActionViewModelProviding *)self->_viewModel emphasizeValueString])
  {
    v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  }

  else
  {
    v2 = [MEMORY[0x1E696F200] sharedManager];
    [v2 bodyFont];
  }
  v3 = ;

  return v3;
}

- (void)_updateAppearance
{
  v3 = [(MULabeledValueActionViewModelProviding *)self->_viewModel titleString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MULabeledValueActionViewModelProviding *)self->_viewModel valueString];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(MULabeledValueActionViewModelProviding *)self->_viewModel titleString];
      [(MULabelViewProtocol *)self->_titleLabel setText:v7];

      v8 = [(MULabeledValueActionRowView *)self _valueLabelFont];
      [(MULabelViewProtocol *)self->_valueLabel setFont:v8];

      [(MULabeledValueActionRowView *)self _updateValueText];
      v9 = [(MULabeledValueActionViewModelProviding *)self->_viewModel alternativeTitleString];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [(MULabeledValueActionViewModelProviding *)self->_viewModel alternativeTitleString];
        [(MULabelViewProtocol *)self->_tertiaryLabel setText:v11];

        [(MULabeledValueActionRowView *)self addSubview:self->_tertiaryLabel];
      }

      [(MULabeledValueActionRowView *)self addGestureRecognizer:self->_tapGestureRecognizer];
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = [(MULabelViewProtocol *)self->_valueLabel superview];

      if (v12)
      {
        [v16 addObject:self->_valueLabel];
      }

      v13 = [(MULabelViewProtocol *)self->_tertiaryLabel superview];

      if (v13)
      {
        [v16 addObject:self->_tertiaryLabel];
      }

      if ([(MULabeledValueActionViewModelProviding *)self->_viewModel actionVariant]== 1)
      {
        +[MUInfoCardStyle tintColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] labelColor];
      }
      v14 = ;
      [(MULabelViewProtocol *)self->_valueLabel setTextColor:v14];

      v15 = [v16 copy];
      [(MUCompositionalStackLayoutGroup *)self->_valueStackLayout setArrangedLayoutItems:v15];
    }
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(MULabeledValueActionRowView *)self _updateAppearance];
    v5 = v6;
  }
}

- (void)_actionButtonTapped
{
  v3 = [(MULabeledValueActionViewModelProviding *)self->_viewModel actionBlock];

  if (v3)
  {
    v4 = [(MULabeledValueActionViewModelProviding *)self->_viewModel actionBlock];
    v4[2](v4, self);
  }
}

- (void)_setupSubviews
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [MUInfoCardStyle vibrantLabelForProminence:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [v3 setFont:v4];

  v5 = +[MUInfoCardStyle secondaryTextColor];
  [v3 setTextColor:v5];

  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(MULabelViewProtocol *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = [@"LabeledValueActionRow" stringByAppendingString:@"Title"];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:v8];

  [(MULabeledValueActionRowView *)self addSubview:self->_titleLabel];
  if (MUIdiomInTraitEnvironment(self) == 5)
  {
    [MEMORY[0x1E69DD168] _mapsui_defaultTextView];
  }

  else
  {
    [MUInfoCardStyle labelForProminence:0];
  }
  v9 = ;
  valueLabel = self->_valueLabel;
  self->_valueLabel = v9;

  [(MULabelViewProtocol *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(MULabeledValueActionRowView *)self _valueLabelFont];
  [(MULabelViewProtocol *)self->_valueLabel setFont:v11];

  [(MULabelViewProtocol *)self->_valueLabel setNumberOfLines:0];
  v12 = [@"LabeledValueActionRow" stringByAppendingString:@"Value"];
  [(MULabelViewProtocol *)self->_valueLabel setAccessibilityIdentifier:v12];

  if ([(UIView *)self _mapsui_isRTL])
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  [(MULabelViewProtocol *)self->_valueLabel setTextAlignment:v13];
  [(MULabeledValueActionRowView *)self addSubview:self->_valueLabel];
  v14 = [MUInfoCardStyle vibrantLabelForProminence:1];
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v14;

  [(MULabelViewProtocol *)self->_tertiaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(MULabelViewProtocol *)self->_tertiaryLabel setFont:v16];

  [(MULabelViewProtocol *)self->_tertiaryLabel setNumberOfLines:4];
  v17 = +[MUInfoCardStyle secondaryTextColor];
  [(MULabelViewProtocol *)self->_tertiaryLabel setTextColor:v17];

  v18 = [@"LabeledValueActionRow" stringByAppendingString:@"TertiaryLabel"];
  [(MULabelViewProtocol *)self->_tertiaryLabel setAccessibilityIdentifier:v18];

  v19 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v19;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__actionButtonTapped];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__actionButtonTapped];
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  MURegisterForButtonShapeEnablementChanges(self, sel__updateValueText);
  v22 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
  valueStackLayout = self->_valueStackLayout;
  self->_valueStackLayout = v22;

  v36[0] = self->_valueLabel;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [(MUCompositionalStackLayoutGroup *)self->_valueStackLayout setArrangedLayoutItems:v24];

  v25 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:0];
  overallStackLayoutGroup = self->_overallStackLayoutGroup;
  self->_overallStackLayoutGroup = v25;

  v27 = self->_valueStackLayout;
  v35[0] = self->_titleLabel;
  v35[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setArrangedLayoutItems:v28];

  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setSpacing:8.0];
  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setAlignment:1];
  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setDistributionBoundsContent:1];
  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setAlignmentBoundsContent:1];
  [(MUCompositionalStackLayoutGroup *)self->_overallStackLayoutGroup setInsets:15.0, 20.0, 15.0, 20.0];
  v29 = [[MUCompositionalStackLayout alloc] initWithContainer:self group:self->_overallStackLayoutGroup];
  overallStackLayout = self->_overallStackLayout;
  self->_overallStackLayout = v29;

  v31 = MEMORY[0x1E696ACD8];
  v34 = self->_overallStackLayout;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  [v31 _mapsui_activateLayouts:v32 constraints:MEMORY[0x1E695E0F0]];

  v33 = *MEMORY[0x1E69E9840];
}

- (id)initForDeveloperPlaceCard
{
  result = [(MULabeledValueActionRowView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 520) = 1;
  }

  return result;
}

- (MULabeledValueActionRowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MULabeledValueActionRowView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MULabeledValueActionRowView *)v3 setAccessibilityIdentifier:@"LabeledValueActionRow"];
    [(MULabeledValueActionRowView *)v4 _setupSubviews];
  }

  return v4;
}

@end