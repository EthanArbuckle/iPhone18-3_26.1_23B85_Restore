@interface MFSearchProgressView
+ (id)log;
- (MFSearchProgressView)initWithFrame:(CGRect)frame;
- (id)_newProgressLabelWithText:(id)text;
- (id)_searchingFont;
- (void)_endCharacterAnimation;
- (void)_setupLabels;
- (void)_startCharacterAnimation;
- (void)dealloc;
- (void)invalidateLayout;
- (void)setAnimating:(BOOL)animating fade:(BOOL)fade;
@end

@implementation MFSearchProgressView

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__MFSearchProgressView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __27__MFSearchProgressView_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_5;
  log_log_5 = v2;
}

- (id)_searchingFont
{
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [mEMORY[0x277CD6870] cachedFont:&__block_literal_global_11 forKey:@"MFSearchProgressView.searchingFont"];

  return v3;
}

id __38__MFSearchProgressView__searchingFont__block_invoke()
{
  v0 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v1 = [MEMORY[0x277D74300] fontWithDescriptor:v0 size:0.0];

  return v1;
}

- (id)_newProgressLabelWithText:(id)text
{
  v4 = MEMORY[0x277D756B8];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setText:textCopy];

  grayColor = [MEMORY[0x277D75348] grayColor];
  [v6 setTextColor:grayColor];

  _searchingFont = [(MFSearchProgressView *)self _searchingFont];
  [v6 setFont:_searchingFont];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v6;
}

- (MFSearchProgressView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFSearchProgressView;
  v3 = [(MFSearchProgressView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFSearchProgressView *)v3 _setupLabels];
    [(MFSearchProgressView *)v4 setAlpha:0.0];
  }

  return v4;
}

- (void)dealloc
{
  [(MFSearchProgressView *)self _endCharacterAnimation];
  v3.receiver = self;
  v3.super_class = MFSearchProgressView;
  [(MFSearchProgressView *)&v3 dealloc];
}

- (void)_setupLabels
{
  v32[5] = *MEMORY[0x277D85DE8];
  mf_baselineAlignedHorizontalStackView = [MEMORY[0x277D75A68] mf_baselineAlignedHorizontalStackView];
  [(MFSearchProgressView *)self setStackView:mf_baselineAlignedHorizontalStackView];

  stackView = [(MFSearchProgressView *)self stackView];
  [(MFSearchProgressView *)self addSubview:stackView];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"SEARCHING" value:&stru_2826EE5B8 table:@"Main"];
  v7 = [(MFSearchProgressView *)self _newProgressLabelWithText:v6];

  stackView2 = [(MFSearchProgressView *)self stackView];
  v31 = v7;
  [stackView2 addArrangedSubview:v7];

  v9 = 3;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:@"SEARCHING_ANIMATED_CHARACTER" value:&stru_2826EE5B8 table:@"Main"];

  do
  {
    v13 = [(MFSearchProgressView *)self _newProgressLabelWithText:v12];
    [v13 setAlpha:0.0];
    [v10 addObject:v13];
    stackView3 = [(MFSearchProgressView *)self stackView];
    [stackView3 addArrangedSubview:v13];

    --v9;
  }

  while (v9);
  [(MFSearchProgressView *)self setCharacterLabels:v10];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(MFSearchProgressView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v32[0] = v28;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(MFSearchProgressView *)self leadingAnchor];
  v25 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
  v32[1] = v25;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(MFSearchProgressView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v32[2] = v15;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(MFSearchProgressView *)self trailingAnchor];
  v18 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  v32[3] = v18;
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(MFSearchProgressView *)self centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[4] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];
}

- (void)_startCharacterAnimation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[MFSearchProgressView log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "Starting 'searching...' animation", buf, 2u);
  }

  characterLabels = [(MFSearchProgressView *)self characterLabels];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [characterLabels countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(characterLabels);
        }

        [*(*(&v18 + 1) + 8 * v8++) setAlpha:0.0];
      }

      while (v6 != v8);
      v6 = [characterLabels countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v9 = ([characterLabels count] + 1) * 0.4 + 0.05;
  UIAnimationDragCoefficient();
  v13 = v9 * v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__MFSearchProgressView__startCharacterAnimation__block_invoke;
  aBlock[3] = &unk_278189DA0;
  v15 = characterLabels;
  v16 = vdivq_f64(xmmword_214CE9CB0, vdupq_lane_s64(*&v13, 0));
  v17 = 0.05 / v13;
  v11 = characterLabels;
  v12 = _Block_copy(aBlock);
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:8 delay:v12 options:0 animations:v13 completion:0.0];
}

uint64_t __48__MFSearchProgressView__startCharacterAnimation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__MFSearchProgressView__startCharacterAnimation__block_invoke_2;
  v3[3] = &__block_descriptor_56_e23_v32__0__UIView_8Q16_B24l;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __48__MFSearchProgressView__startCharacterAnimation__block_invoke_2(double *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[5];
  v7 = a1[4] * (a3 + 1);
  v8 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__MFSearchProgressView__startCharacterAnimation__block_invoke_3;
  v15[3] = &unk_278188BB0;
  v9 = v5;
  v16 = v9;
  [v8 addKeyframeWithRelativeStartTime:v15 relativeDuration:v7 animations:v6];
  v10 = MEMORY[0x277D75D18];
  v11 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MFSearchProgressView__startCharacterAnimation__block_invoke_4;
  v13[3] = &unk_278188BB0;
  v14 = v9;
  v12 = v9;
  [v10 addKeyframeWithRelativeStartTime:v13 relativeDuration:1.0 - v11 animations:v11];
}

- (void)_endCharacterAnimation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[MFSearchProgressView log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "Stopping 'searching...' animation", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  characterLabels = [(MFSearchProgressView *)self characterLabels];
  v5 = [characterLabels countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(characterLabels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        layer = [v9 layer];
        [layer removeAllAnimations];

        [v9 setAlpha:0.0];
      }

      v6 = [characterLabels countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setAnimating:(BOOL)animating fade:(BOOL)fade
{
  if (self->_animating != animating)
  {
    v17[5] = v7;
    v17[6] = v6;
    v17[11] = v4;
    v17[12] = v5;
    fadeCopy = fade;
    self->_animating = animating;
    if (animating)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__MFSearchProgressView_setAnimating_fade___block_invoke_3;
      v17[3] = &unk_278188BB0;
      v17[4] = self;
      v10 = _Block_copy(v17);
      v11 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v12 = __42__MFSearchProgressView_setAnimating_fade___block_invoke_4;
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__MFSearchProgressView_setAnimating_fade___block_invoke_5;
      aBlock[3] = &unk_278188BB0;
      aBlock[4] = self;
      v10 = _Block_copy(aBlock);
      v11 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v12 = __42__MFSearchProgressView_setAnimating_fade___block_invoke_6;
    }

    v11[2] = v12;
    v11[3] = &unk_278189DC8;
    v11[4] = self;
    v13 = _Block_copy(v11);
    if (fadeCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v13 completion:0.15];
    }

    else
    {
      v10[2](v10);
      v13[2](v13, 1);
    }
  }
}

uint64_t __42__MFSearchProgressView_setAnimating_fade___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setAlpha:1.0];
  }

  v3 = *(a1 + 32);

  return [v3 _startCharacterAnimation];
}

uint64_t __42__MFSearchProgressView_setAnimating_fade___block_invoke_6(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setAlpha:0.0];
  }

  v3 = *(a1 + 32);

  return [v3 _endCharacterAnimation];
}

- (void)invalidateLayout
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  [mEMORY[0x277CD6870] ensureCacheIsValid];

  stackView = [(MFSearchProgressView *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  v6 = [arrangedSubviews ef_filter:&__block_literal_global_38];

  _searchingFont = [(MFSearchProgressView *)self _searchingFont];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setFont:{_searchingFont, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

uint64_t __40__MFSearchProgressView_invalidateLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end