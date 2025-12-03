@interface CSProminentTextElementView
+ (Class)textLabelClass;
- (CSProminentTextElementView)initWithDate:(id)date font:(id)font textColor:(id)color;
- (UIView)contentView;
- (void)insertPrefixViews:(id)views animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setOverrideString:(id)string;
- (void)setPrimaryFont:(id)font;
- (void)setPrimaryTextColor:(id)color;
- (void)setUsesGlassMaterial:(BOOL)material;
@end

@implementation CSProminentTextElementView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CSProminentTextElementView;
  [(CSProminentTextElementView *)&v7 layoutSubviews];
  contentView = [(CSProminentTextElementView *)self contentView];
  [(CSProminentTextElementView *)self bounds];
  [(UIStackView *)contentView sizeThatFits:v4, v5];
  if (contentView == self->_stackView)
  {
    [(UIStackView *)contentView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  }

  traitCollection = [(CSProminentTextElementView *)self traitCollection];
  [traitCollection displayScale];

  [(CSProminentTitleLabelDefining *)self->_textLabel textAlignment];
  BSPointRoundForScale();
  [(UIStackView *)contentView setFrame:?];
}

- (CSProminentTextElementView)initWithDate:(id)date font:(id)font textColor:(id)color
{
  dateCopy = date;
  fontCopy = font;
  colorCopy = color;
  +[CSProminentLayoutController frameForElements:](CSProminentLayoutController, "frameForElements:", [objc_opt_class() elementType]);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (CGRectIsNull(v26))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v25.receiver = self;
  v25.super_class = CSProminentTextElementView;
  height = [(CSProminentTextElementView *)&v25 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_date, date);
    overrideString = v17->_overrideString;
    v17->_overrideString = 0;

    objc_storeStrong(&v17->_primaryFont, font);
    objc_storeStrong(&v17->_primaryTextColor, color);
    v19 = objc_alloc([objc_opt_class() textLabelClass]);
    [(CSProminentTextElementView *)v17 bounds];
    v20 = [v19 initWithFrame:?];
    [v20 setTextAlignment:1];
    [v20 setTextColor:colorCopy];
    [v20 setFont:fontCopy];
    if (objc_opt_respondsToSelector())
    {
      [v20 setClipsToBounds:0];
    }

    textLabel = v17->_textLabel;
    v17->_textLabel = v20;
    v22 = v20;

    view = [(CSProminentTitleLabelDefining *)v17->_textLabel view];

    [(CSProminentTextElementView *)v17 addSubview:view];
  }

  return v17;
}

+ (Class)textLabelClass
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    [objc_opt_class() elementType];
  }

  v2 = objc_opt_class();

  return v2;
}

- (void)setPrimaryFont:(id)font
{
  fontCopy = font;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_primaryFont, font);
    [(CSProminentTitleLabelDefining *)self->_textLabel setFont:fontCopy];
    [(CSProminentTextElementView *)self setNeedsLayout];
  }
}

- (void)setPrimaryTextColor:(id)color
{
  objc_storeStrong(&self->_primaryTextColor, color);
  colorCopy = color;
  [(CSProminentTitleLabelDefining *)self->_textLabel setTextColor:colorCopy];
}

- (void)setOverrideString:(id)string
{
  stringCopy = string;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideString, string);
    [(CSProminentTitleLabelDefining *)self->_textLabel setText:self->_overrideString];
    [(CSProminentTextElementView *)self setNeedsLayout];
  }
}

- (void)setUsesGlassMaterial:(BOOL)material
{
  self->_usesGlassMaterial = material;
  if (objc_opt_respondsToSelector())
  {
    textLabel = self->_textLabel;
    usesGlassMaterial = self->_usesGlassMaterial;

    [(CSProminentTitleLabelDefining *)textLabel setUsesGlassMaterial:usesGlassMaterial];
  }
}

- (void)insertPrefixViews:(id)views animated:(BOOL)animated
{
  animatedCopy = animated;
  viewsCopy = views;
  if (!self->_stackView)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke;
    v20[3] = &unk_1E76B9E48;
    v20[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
  }

  v7 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_2;
  v17[3] = &unk_1E76BA200;
  v8 = viewsCopy;
  v18 = v8;
  selfCopy = self;
  [v7 performWithoutAnimation:v17];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_4;
  v15 = &unk_1E76B9E48;
  v9 = v8;
  v16 = v9;
  v10 = _Block_copy(&v12);
  v11 = v10;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:{0.25, v12, v13, v14, v15}];
  }

  else
  {
    (*(v10 + 2))(v10);
  }
}

void __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v2 setAxis:0];
  [v2 setDistribution:3];
  [v2 setAlignment:2];
  [v2 setSpacing:0.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 416);
  *(v3 + 416) = v2;
  v5 = v2;

  v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v6 setAxis:0];
  [v6 setDistribution:3];
  [v6 setAlignment:2];
  [v6 setSpacing:0.0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 408);
  *(v7 + 408) = v6;
  v9 = v6;

  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v11 = *(a1 + 32);
  v12 = *(v11 + 424);
  *(v11 + 424) = v10;

  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v14 = *(a1 + 32);
  v15 = *(v14 + 432);
  *(v14 + 432) = v13;

  v16 = [*(*(a1 + 32) + 480) view];
  [v5 addArrangedSubview:v16];
  [v9 addArrangedSubview:*(*(a1 + 32) + 424)];
  [v9 addArrangedSubview:v5];
  [v9 addArrangedSubview:*(*(a1 + 32) + 432)];
  [*(a1 + 32) addSubview:v9];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
}

uint64_t __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_3;
  v3[3] = &unk_1E76BA388;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsWithOptions:2 usingBlock:v3];
}

void __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHidden:1];
  [*(*(a1 + 32) + 416) insertArrangedSubview:v3 atIndex:0];
}

void __57__CSProminentTextElementView_insertPrefixViews_animated___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setHidden:{0, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (UIView)contentView
{
  stackView = self->_stackView;
  if (stackView)
  {
    view = stackView;
  }

  else
  {
    view = [(CSProminentTitleLabelDefining *)self->_textLabel view];
  }

  return view;
}

@end