@interface MUAppleRatingRowView
+ (id)ratingSymbolStringWithFont:(id)font symbolScale:(int64_t)scale attributes:(id)attributes;
+ (int64_t)_ratingsValueAnimationFromViewModel:(id)model toViewModel:(id)viewModel;
- (MUAppleRatingRowView)initWithFrame:(CGRect)frame ratingsCountAnimationEnabled:(BOOL)enabled isInlineMode:(BOOL)mode;
- (id)_attributesWithFont:(id)font color:(id)color;
- (id)_percentageStringComponentsFromCurrentViewModel;
- (id)_ratingSubtitleAttributedString;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateAppearanceAnimatingFromPreviousViewModel:(id)model;
- (void)setViewModel:(id)model;
@end

@implementation MUAppleRatingRowView

- (void)_contentSizeDidChange
{
  if (self->_ratingsCountAnimationEnabled)
  {
    [(MUAppleRatingRowView *)self _updateAppearanceAnimatingFromPreviousViewModel:0];
  }

  else
  {
    [(MUAppleRatingRowView *)self _updateAppearance];
  }
}

- (id)_attributesWithFont:(id)font color:(id)color
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v12[0] = *MEMORY[0x1E69DB648];
  v12[1] = v5;
  v13[0] = font;
  v13[1] = color;
  v6 = MEMORY[0x1E695DF20];
  colorCopy = color;
  fontCopy = font;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_percentageStringComponentsFromCurrentViewModel
{
  v33[1] = *MEMORY[0x1E69E9840];
  if ([(MURatingPercentageViewModel *)self->_viewModel hasPercentage]&& (!self->_isInlineMode || self->_wantsPercentageInSubtitle))
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_opt_class();
    v5 = *MEMORY[0x1E69DDD80];
    v6 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB978]];
    v32 = *MEMORY[0x1E69DB650];
    v7 = +[MUInfoCardStyle secondaryTextColor];
    v33[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v4 ratingSymbolStringWithFont:v6 symbolScale:1 attributes:v8];
    v29 = [v9 mutableCopy];

    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%lu%%", -[MURatingPercentageViewModel displayPercentage](self->_viewModel, "displayPercentage")];
    v11 = objc_alloc(MEMORY[0x1E696AD40]);
    v12 = *MEMORY[0x1E69DB958];
    v13 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v5 weight:*MEMORY[0x1E69DB958]];
    v14 = +[MUInfoCardStyle secondaryTextColor];
    v15 = [(MUAppleRatingRowView *)self _attributesWithFont:v13 color:v14];
    v16 = [v11 initWithString:v10 attributes:v15];

    [v3 addObject:v29];
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v5 weight:v12];
    v31 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = [v17 initWithString:@" " attributes:v19];
    [v3 addObject:v20];

    [v3 addObject:v16];
    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v22 = _MULocalizedStringFromThisBundle(@"Delimiter");
    v23 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v5 weight:v12];
    v24 = +[MUInfoCardStyle secondaryTextColor];
    v25 = [(MUAppleRatingRowView *)self _attributesWithFont:v23 color:v24];
    v26 = [v21 initWithString:v22 attributes:v25];
    [v3 addObject:v26];
  }

  else
  {
    v3 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_ratingSubtitleAttributedString
{
  numberOfRatingsUsedForScore = [(MURatingPercentageViewModel *)self->_viewModel numberOfRatingsUsedForScore];
  if (numberOfRatingsUsedForScore)
  {
    v4 = numberOfRatingsUsedForScore;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _percentageStringComponentsFromCurrentViewModel = [(MUAppleRatingRowView *)self _percentageStringComponentsFromCurrentViewModel];
    if (_percentageStringComponentsFromCurrentViewModel)
    {
      [v5 addObjectsFromArray:_percentageStringComponentsFromCurrentViewModel];
    }

    v7 = [MEMORY[0x1E696F1F0] stringFromCount:v4];
    v8 = _MULocalizedStringFromThisBundle(@"<num> Ratings");
    v9 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %@" error:0, v4, v7];
    v10 = objc_alloc(MEMORY[0x1E696AD40]);
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v12 = +[MUInfoCardStyle secondaryTextColor];
    v13 = [(MUAppleRatingRowView *)self _attributesWithFont:v11 color:v12];
    v14 = [v10 initWithString:v9 attributes:v13];

    [v5 addObject:v14];
    v15 = [v5 copy];
    v16 = [MapsUILayout buildAttributedDisplayStringForComponents:v15 forContainingView:self->_subtitleLabel];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v5 = _MULocalizedStringFromThisBundle(@"No Ratings [Placecard]");
    _percentageStringComponentsFromCurrentViewModel = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v7 = +[MUInfoCardStyle secondaryTextColor];
    v8 = [(MUAppleRatingRowView *)self _attributesWithFont:_percentageStringComponentsFromCurrentViewModel color:v7];
    v16 = [v17 initWithString:v5 attributes:v8];
  }

  return v16;
}

- (void)_updateAppearanceAnimatingFromPreviousViewModel:(id)model
{
  modelCopy = model;
  categoryTitle = [(MURatingPercentageViewModel *)self->_viewModel categoryTitle];
  [(UILabel *)self->_titleLabel setText:categoryTitle];

  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [(UILabel *)self->_titleLabel setFont:v5];

  viewModel = self->_viewModel;
  if (viewModel && [(MURatingPercentageViewModel *)viewModel hasSubtitle]&& self->_isInlineMode)
  {
    numberOfRatingsUsedForScore = [(MURatingPercentageViewModel *)self->_viewModel numberOfRatingsUsedForScore];
    subtitleView = self->_subtitleView;
    if (numberOfRatingsUsedForScore)
    {
      v9 = numberOfRatingsUsedForScore;
      superview = [(MUAppleRatingRowSubtitleView *)self->_subtitleView superview];

      [(MUAppleRatingRowView *)self addSubview:self->_subtitleView];
      [(MUStackLayout *)self->_stackLayout addArrangedLayoutItem:self->_subtitleView];
      if (superview)
      {
        v11 = [objc_opt_class() _ratingsValueAnimationFromViewModel:modelCopy toViewModel:self->_viewModel];
      }

      else
      {
        v11 = 0;
      }

      _percentageStringComponentsFromCurrentViewModel = [(MUAppleRatingRowView *)self _percentageStringComponentsFromCurrentViewModel];
      v42 = _percentageStringComponentsFromCurrentViewModel;
      if (_percentageStringComponentsFromCurrentViewModel)
      {
        v19 = [_percentageStringComponentsFromCurrentViewModel copy];
        v20 = [MapsUILayout buildAttributedDisplayStringForComponents:v19 forContainingView:self->_subtitleView];
      }

      else
      {
        v20 = 0;
      }

      v21 = [MEMORY[0x1E696F1F0] stringFromCount:v9];
      v22 = _MULocalizedStringFromThisBundle(@"<num> Ratings");
      v23 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v22 validFormatSpecifiers:@"%d %@" error:0, v9, v21];
      if ([v23 rangeOfString:v21])
      {
        v24 = self->_subtitleView;
        v25 = objc_alloc(MEMORY[0x1E696AD40]);
        v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
        v27 = +[MUInfoCardStyle secondaryTextColor];
        v28 = [(MUAppleRatingRowView *)self _attributesWithFont:v26 color:v27];
        v29 = [v25 initWithString:v23 attributes:v28];
        [(MUAppleRatingRowSubtitleView *)v24 setPercentageString:v20 ratingsValueString:0 ratingsValueAnimation:0 ratingsString:v29];
      }

      else
      {
        v40 = [v23 stringByReplacingOccurrencesOfString:v21 withString:&stru_1F44CA030];

        v30 = objc_alloc(MEMORY[0x1E696AD40]);
        v31 = *MEMORY[0x1E69DDD80];
        v32 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
        +[MUInfoCardStyle secondaryTextColor];
        v33 = v41 = v20;
        [(MUAppleRatingRowView *)self _attributesWithFont:v32 color:v33];
        v34 = v39 = v11;
        v26 = [v30 initWithString:v21 attributes:v34];

        v35 = objc_alloc(MEMORY[0x1E696AD40]);
        v36 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v31];
        v37 = +[MUInfoCardStyle secondaryTextColor];
        v38 = [(MUAppleRatingRowView *)self _attributesWithFont:v36 color:v37];
        v27 = [v35 initWithString:v40 attributes:v38];

        v20 = v41;
        [(MUAppleRatingRowSubtitleView *)self->_subtitleView setPercentageString:v41 ratingsValueString:v26 ratingsValueAnimation:v39 ratingsString:v27];
        v23 = v40;
      }
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v13 = _MULocalizedStringFromThisBundle(@"No Ratings [Placecard]");
      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      v15 = +[MUInfoCardStyle secondaryTextColor];
      v16 = [(MUAppleRatingRowView *)self _attributesWithFont:v14 color:v15];
      v17 = [v12 initWithString:v13 attributes:v16];
      [(MUAppleRatingRowSubtitleView *)subtitleView setPercentageString:0 ratingsValueString:0 ratingsValueAnimation:0 ratingsString:v17];
    }
  }

  else
  {
    [(MUAppleRatingRowSubtitleView *)self->_subtitleView removeFromSuperview];
    [(MUStackLayout *)self->_stackLayout removeArrangedLayoutItem:self->_subtitleView];
  }
}

- (void)_updateAppearance
{
  categoryTitle = [(MURatingPercentageViewModel *)self->_viewModel categoryTitle];
  [(UILabel *)self->_titleLabel setText:categoryTitle];

  if ([(MURatingPercentageViewModel *)self->_viewModel hasSubtitle]&& self->_isInlineMode)
  {
    _ratingSubtitleAttributedString = [(MUAppleRatingRowView *)self _ratingSubtitleAttributedString];
    [(MULabelViewProtocol *)self->_subtitleLabel setAttributedText:_ratingSubtitleAttributedString];

    [(MUAppleRatingRowView *)self addSubview:self->_subtitleLabel];
    stackLayout = self->_stackLayout;
    subtitleLabel = self->_subtitleLabel;

    [(MUStackLayout *)stackLayout addArrangedLayoutItem:subtitleLabel];
  }

  else
  {
    [(MULabelViewProtocol *)self->_subtitleLabel removeFromSuperview];
    v7 = self->_stackLayout;
    v8 = self->_subtitleLabel;

    [(MUStackLayout *)v7 removeArrangedLayoutItem:v8];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v8 = modelCopy;
    viewModel = [(MURatingPercentageViewModel *)viewModel isEqual:modelCopy];
    modelCopy = v8;
    if ((viewModel & 1) == 0)
    {
      v7 = self->_viewModel;
      objc_storeStrong(&self->_viewModel, model);
      if (self->_ratingsCountAnimationEnabled)
      {
        [(MUAppleRatingRowView *)self _updateAppearanceAnimatingFromPreviousViewModel:v7];
      }

      else
      {
        [(MUAppleRatingRowView *)self _updateAppearance];
      }

      modelCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](viewModel, modelCopy);
}

- (void)_setupConstraints
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MUStackLayout alloc];
  layoutMarginsGuide = [(MUAppleRatingRowView *)self layoutMarginsGuide];
  v5 = [(MUStackLayout *)v3 initWithContainer:layoutMarginsGuide axis:1];
  stackLayout = self->_stackLayout;
  self->_stackLayout = v5;

  titleLabel = self->_titleLabel;
  if (self->_ratingsCountAnimationEnabled)
  {
    subtitleView = self->_subtitleView;
    v14[0] = self->_titleLabel;
    v14[1] = subtitleView;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [(MUStackLayout *)self->_stackLayout setArrangedLayoutItems:v9];

    [(MUStackLayout *)self->_stackLayout setAlignment:1];
    [(MUStackLayout *)self->_stackLayout setAlignmentBoundsContent:1];
  }

  else
  {
    subtitleLabel = self->_subtitleLabel;
    v13[0] = self->_titleLabel;
    v13[1] = subtitleLabel;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [(MUStackLayout *)self->_stackLayout setArrangedLayoutItems:v11];
  }

  [(MUConstraintLayout *)self->_stackLayout activate];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  [(MUAppleRatingRowView *)self setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [(UILabel *)self->_titleLabel setFont:v10];

  v11 = +[MUInfoCardStyle textColor];
  [(UILabel *)self->_titleLabel setTextColor:v11];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"AppleRatingTitle"];
  [(MUAppleRatingRowView *)self addSubview:self->_titleLabel];
  if (self->_ratingsCountAnimationEnabled)
  {
    v12 = [[MUAppleRatingRowSubtitleView alloc] initWithFrame:v4, v5, v6, v7];
    p_subtitleView = &self->_subtitleView;
    subtitleView = self->_subtitleView;
    self->_subtitleView = v12;

    v15 = @"AppleRatingSubtitleView";
  }

  else
  {
    v16 = [MUInfoCardStyle vibrantLabelForProminence:1];
    p_subtitleView = &self->_subtitleLabel;
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v16;

    [(MULabelViewProtocol *)self->_subtitleLabel setNumberOfLines:0];
    v15 = @"AppleRatingSubtitle";
  }

  [*p_subtitleView setAccessibilityIdentifier:v15];
  [(MUAppleRatingRowView *)self addSubview:*p_subtitleView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MUAppleRatingRowView)initWithFrame:(CGRect)frame ratingsCountAnimationEnabled:(BOOL)enabled isInlineMode:(BOOL)mode
{
  enabledCopy = enabled;
  v12.receiver = self;
  v12.super_class = MUAppleRatingRowView;
  v7 = [(MKViewWithHairline *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    effectiveUserInterfaceLayoutDirection = [(MUAppleRatingRowView *)v7 effectiveUserInterfaceLayoutDirection];
    if (enabledCopy)
    {
      v10 = effectiveUserInterfaceLayoutDirection;
      if (GEOConfigGetBOOL())
      {
        if (!v10)
        {
          v8->_ratingsCountAnimationEnabled = 1;
        }
      }
    }

    v8->_isInlineMode = mode;
    [(MUAppleRatingRowView *)v8 setAccessibilityIdentifier:@"AppleRatingRow"];
    [(MUAppleRatingRowView *)v8 _setupSubviews];
    [(MUAppleRatingRowView *)v8 _setupConstraints];
  }

  return v8;
}

+ (id)ratingSymbolStringWithFont:(id)font symbolScale:(int64_t)scale attributes:(id)attributes
{
  v7 = MEMORY[0x1E69DCAB8];
  v8 = MEMORY[0x1E696F1F8];
  attributesCopy = attributes;
  fontCopy = font;
  ratingSymbolName = [v8 ratingSymbolName];
  v12 = [v7 systemImageNamed:ratingSymbolName];

  v13 = [MEMORY[0x1E69DCAD8] configurationWithFont:fontCopy scale:scale];

  v14 = [v12 imageWithConfiguration:v13];
  v15 = [v14 imageWithRenderingMode:2];

  v16 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v16 setImage:v15];
  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16 attributes:attributesCopy];

  return v17;
}

+ (int64_t)_ratingsValueAnimationFromViewModel:(id)model toViewModel:(id)viewModel
{
  modelCopy = model;
  viewModelCopy = viewModel;
  v7 = viewModelCopy;
  v8 = 0;
  if (modelCopy && viewModelCopy)
  {
    if ([modelCopy numberOfRatingsUsedForScore] && objc_msgSend(v7, "numberOfRatingsUsedForScore") && (v9 = objc_msgSend(modelCopy, "numberOfRatingsUsedForScore"), v9 != objc_msgSend(v7, "numberOfRatingsUsedForScore")))
    {
      v11 = [MEMORY[0x1E696F1F0] stringFromCount:{objc_msgSend(modelCopy, "numberOfRatingsUsedForScore")}];
      v12 = [MEMORY[0x1E696F1F0] stringFromCount:{objc_msgSend(v7, "numberOfRatingsUsedForScore")}];
      if ([v11 isEqualToString:v12])
      {
        v8 = 0;
      }

      else
      {
        numberOfRatingsUsedForScore = [v7 numberOfRatingsUsedForScore];
        if (numberOfRatingsUsedForScore <= [modelCopy numberOfRatingsUsedForScore])
        {
          numberOfRatingsUsedForScore2 = [v7 numberOfRatingsUsedForScore];
          v8 = 2 * (numberOfRatingsUsedForScore2 < [modelCopy numberOfRatingsUsedForScore]);
        }

        else
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end