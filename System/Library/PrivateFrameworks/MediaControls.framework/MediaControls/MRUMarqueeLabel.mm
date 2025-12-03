@interface MRUMarqueeLabel
- (BOOL)wantsContentAwareTypesettingLanguage;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUMarqueeLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (int64_t)sizingRule;
- (void)addCoordinatedMarqueeView:(id)view;
- (void)layoutSubviews;
- (void)mru_applyVisualStylingWithColor:(id)color alpha:(double)alpha blendMode:(int64_t)mode;
- (void)mt_applyVisualStyling:(id)styling;
- (void)setAnimationReferenceView:(id)view;
- (void)setContentSize:(CGSize)size;
- (void)setFadeEdgeInsets:(UIEdgeInsets)insets;
- (void)setFont:(id)font;
- (void)setMarqueeEnabled:(BOOL)enabled;
- (void)setSizingRule:(int64_t)rule;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setWantsContentAwareTypesettingLanguage:(BOOL)language;
@end

@implementation MRUMarqueeLabel

- (void)mt_applyVisualStyling:(id)styling
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__MRUMarqueeLabel_MRUVisualStylingProviderAdditions__mt_applyVisualStyling___block_invoke;
  v3[3] = &unk_1E76648D8;
  v3[4] = self;
  [styling applyToView:self withColorBlock:v3];
}

- (void)mru_applyVisualStylingWithColor:(id)color alpha:(double)alpha blendMode:(int64_t)mode
{
  colorCopy = color;
  [(MRUMarqueeLabel *)self setAlpha:alpha];
  [(MRUMarqueeLabel *)self _setDrawsAsBackdropOverlayWithBlendMode:mode];
  [(MRUMarqueeLabel *)self setTextColor:colorCopy];
}

- (MRUMarqueeLabel)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MRUMarqueeLabel;
  v3 = [(MRUMarqueeLabel *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    label = v3->_label;
    v3->_label = v4;

    [(BSUIEmojiLabelView *)v3->_label setNumberOfLines:1];
    v6 = objc_alloc_init(MEMORY[0x1E69AD990]);
    marqueeView = v3->_marqueeView;
    v3->_marqueeView = v6;

    contentView = [(MPUMarqueeView *)v3->_marqueeView contentView];
    [contentView addSubview:v3->_label];

    [(MPUMarqueeView *)v3->_marqueeView setViewForContentSize:v3->_label];
    [(MRUMarqueeLabel *)v3 addSubview:v3->_marqueeView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MRUMarqueeLabel;
  [(MRUMarqueeLabel *)&v12 layoutSubviews];
  [(MRUMarqueeLabel *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v7 = CGRectGetMinX(v13) - self->_fadeEdgeInsets.left;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15) + self->_fadeEdgeInsets.left;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  [(MPUMarqueeView *)self->_marqueeView setFrame:v7, MinY, v9, CGRectGetHeight(v16)];
  if (self->_textAlignment == 1 && (v17.origin.x = x, v17.origin.y = y, v17.size.width = width, v17.size.height = height, v10 = self->_contentSize.width, v10 < CGRectGetWidth(v17)))
  {
    UIRectCenteredXInRect();
  }

  else if (([(NSString *)self->_text _isNaturallyRTL]& 1) != 0 || (v11 = self->_contentSize.width, v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, v11 < CGRectGetWidth(v18)))
  {
    [(MRUMarqueeLabel *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  }

  [(BSUIEmojiLabelView *)self->_label setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIFont *)self->_font lineHeight];
  v7 = ceil(v6);
  [(BSUIEmojiLabelView *)self->_label sizeThatFits:width, height];
  if (v7 >= v9)
  {
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = [textCopy copy];
  text = self->_text;
  self->_text = v5;

  [(BSUIEmojiLabelView *)self->_label setText:textCopy];
  _isNaturallyRTL = [textCopy _isNaturallyRTL];

  [(MPUMarqueeView *)self->_marqueeView setAnimationDirection:_isNaturallyRTL];
  if (_isNaturallyRTL)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  [(MPUMarqueeView *)self->_marqueeView setSemanticContentAttribute:v8];

  [(MRUMarqueeLabel *)self setNeedsLayout];
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);
  colorCopy = color;
  [(BSUIEmojiLabelView *)self->_label setTextColor:colorCopy];
}

- (void)setAnimationReferenceView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_animationReferenceView, viewCopy);
  [(MPUMarqueeView *)self->_marqueeView setAnimationReferenceView:viewCopy];
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  [(BSUIEmojiLabelView *)self->_label setFont:fontCopy];
}

- (void)setMarqueeEnabled:(BOOL)enabled
{
  self->_marqueeEnabled = enabled;
  [(MPUMarqueeView *)self->_marqueeView setMarqueeEnabled:?];
  if (!enabled)
  {
    [(MPUMarqueeView *)self->_marqueeView resetMarqueePosition];
    marqueeView = self->_marqueeView;

    [(MPUMarqueeView *)marqueeView _removeAllAnimations:1];
  }
}

- (void)setFadeEdgeInsets:(UIEdgeInsets)insets
{
  self->_fadeEdgeInsets = insets;
  [(MPUMarqueeView *)self->_marqueeView setFadeEdgeInsets:?];

  [(MRUMarqueeLabel *)self setNeedsLayout];
}

- (void)setContentSize:(CGSize)size
{
  self->_contentSize = size;
  [(MPUMarqueeView *)self->_marqueeView setContentSize:?];

  [(MRUMarqueeLabel *)self setNeedsLayout];
}

- (BOOL)wantsContentAwareTypesettingLanguage
{
  contentLabel = [(BSUIEmojiLabelView *)self->_label contentLabel];
  _wantsContentAwareTypesettingLanguage = [contentLabel _wantsContentAwareTypesettingLanguage];

  return _wantsContentAwareTypesettingLanguage;
}

- (void)setWantsContentAwareTypesettingLanguage:(BOOL)language
{
  languageCopy = language;
  contentLabel = [(BSUIEmojiLabelView *)self->_label contentLabel];
  [contentLabel _setWantsContentAwareTypesettingLanguage:languageCopy];
}

- (int64_t)sizingRule
{
  contentLabel = [(BSUIEmojiLabelView *)self->_label contentLabel];
  sizingRule = [contentLabel sizingRule];

  return sizingRule;
}

- (void)setSizingRule:(int64_t)rule
{
  contentLabel = [(BSUIEmojiLabelView *)self->_label contentLabel];
  [contentLabel setSizingRule:rule];
}

- (void)addCoordinatedMarqueeView:(id)view
{
  marqueeView = self->_marqueeView;
  marqueeView = [view marqueeView];
  [(MPUMarqueeView *)marqueeView addCoordinatedMarqueeView:marqueeView];
}

- (UIView)animationReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  return WeakRetained;
}

- (UIEdgeInsets)fadeEdgeInsets
{
  top = self->_fadeEdgeInsets.top;
  left = self->_fadeEdgeInsets.left;
  bottom = self->_fadeEdgeInsets.bottom;
  right = self->_fadeEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end