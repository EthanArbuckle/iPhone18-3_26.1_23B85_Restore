@interface CPSButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_boundingRectForSubstring:(id)substring;
- (CPSButton)initWithCoder:(id)coder;
- (CPSButton)initWithTitle:(id)title enabledTitleColor:(id)color disabledTitleColor:(id)titleColor backgroundColor:(id)backgroundColor textStyle:(id)style cornerRadius:(double)radius animatesAlphaWhenHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateCornerRadius;
@end

@implementation CPSButton

- (CPSButton)initWithTitle:(id)title enabledTitleColor:(id)color disabledTitleColor:(id)titleColor backgroundColor:(id)backgroundColor textStyle:(id)style cornerRadius:(double)radius animatesAlphaWhenHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  titleCopy = title;
  colorCopy = color;
  titleColorCopy = titleColor;
  backgroundColorCopy = backgroundColor;
  styleCopy = style;
  v27.receiver = self;
  v27.super_class = CPSButton;
  v21 = [(CPSButton *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v22 = v21;
  if (v21)
  {
    [(CPSButton *)v21 _setContinuousCornerRadius:radius];
    [(CPSButton *)v22 setClipsToBounds:1];
    [(CPSButton *)v22 setAnimatesAlphaWhenHighlighted:highlightedCopy];
    v23 = [MEMORY[0x277D74300] _preferredFontForTextStyle:styleCopy variant:256];
    titleLabel = [(CPSButton *)v22 titleLabel];
    [titleLabel setFont:v23];

    [(CPSButton *)v22 setTitle:titleCopy forState:0];
    if (colorCopy)
    {
      [(CPSButton *)v22 setTitleColor:colorCopy forState:0];
    }

    if (titleColorCopy)
    {
      [(CPSButton *)v22 setTitleColor:titleColorCopy forState:2];
    }

    if (backgroundColorCopy)
    {
      [(CPSButton *)v22 setBackgroundColor:backgroundColorCopy];
    }

    v25 = v22;
  }

  return v22;
}

- (CPSButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPSButton;
  v3 = [(CPSButton *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)updateCornerRadius
{
  [(CPSButton *)self layoutIfNeeded];
  [(CPSButton *)self bounds];
  v3 = CGRectGetHeight(v5) * 0.5;

  [(CPSButton *)self _setContinuousCornerRadius:v3];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (self->_tapTargetSideMargin != 0.0)
  {
    [(CPSButton *)self bounds];
    tapTargetSideMargin = self->_tapTargetSideMargin;
    v13 = (44.0 - v10) * -0.5;
    if (v10 >= 44.0)
    {
      v13 = 0.0;
    }

    v14 = v13 - tapTargetSideMargin;
    v15 = v11 >= 44.0 ? 0.0 : (44.0 - v11) * -0.5;
    v45 = CGRectInset(*&v8, v14, v15 - tapTargetSideMargin);
    v43.x = x;
    v43.y = y;
    if (CGRectContainsPoint(v45, v43))
    {
      goto LABEL_15;
    }
  }

  if (!self->_extraTapTargetSubstring)
  {
    goto LABEL_16;
  }

  [(CPSButton *)self _boundingRectForSubstring:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  titleLabel = [(CPSButton *)self titleLabel];
  [titleLabel convertRect:self toView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v46.origin.x = v26;
  v46.origin.y = v28;
  v46.size.width = v30;
  v46.size.height = v32;
  Height = CGRectGetHeight(v46);
  v47.origin.x = v26;
  v47.origin.y = v28;
  v47.size.width = v30;
  v47.size.height = v32;
  MinY = CGRectGetMinY(v47);
  if (MinY < 0.0)
  {
    MinY = 0.0;
  }

  v35 = 36.0 - MinY;
  v36 = Height >= v35 ? Height : v35;
  v37 = v26;
  v38 = v28;
  v39 = v30;
  v44.x = x;
  v44.y = y;
  if (CGRectContainsPoint(*(&v36 - 3), v44))
  {
LABEL_15:
    v40 = 1;
  }

  else
  {
LABEL_16:
    v42.receiver = self;
    v42.super_class = CPSButton;
    v40 = [(CPSButton *)&v42 pointInside:eventCopy withEvent:x, y];
  }

  return v40;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CPSButton *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = CPSButton;
  [(CPSButton *)&v7 setHighlighted:highlightedCopy];
  if (self->_animatesAlphaWhenHighlighted && isHighlighted != highlightedCopy)
  {
    [(UIView *)self cps_configureForAnimatesAlphaWhenHighlighted:[(CPSButton *)self isHighlighted]];
  }
}

- (CGRect)_boundingRectForSubstring:(id)substring
{
  substringCopy = substring;
  titleLabel = [(CPSButton *)self titleLabel];
  text = [titleLabel text];
  v7 = [text rangeOfString:substringCopy];
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277D742D8]);
  attributedText = [titleLabel attributedText];
  v12 = [v10 initWithAttributedString:attributedText];

  v13 = objc_alloc_init(MEMORY[0x277D74238]);
  [v12 addLayoutManager:v13];
  v14 = objc_alloc(MEMORY[0x277D74278]);
  [titleLabel bounds];
  v15 = [v14 initWithSize:{CGRectGetWidth(v30), 1.79769313e308}];
  [v15 setLineFragmentPadding:0.0];
  [v13 addTextContainer:v15];
  v28 = 0;
  v29 = 0;
  [v13 characterRangeForGlyphRange:v7 actualGlyphRange:{v9, &v28}];
  [v13 boundingRectForGlyphRange:v28 inTextContainer:{v29, v15}];
  [titleLabel convertRect:self toView:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end