@interface MRUMarqueeLabel
- (BOOL)wantsContentAwareTypesettingLanguage;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUMarqueeLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (int64_t)sizingRule;
- (void)addCoordinatedMarqueeView:(id)a3;
- (void)layoutSubviews;
- (void)mru_applyVisualStylingWithColor:(id)a3 alpha:(double)a4 blendMode:(int64_t)a5;
- (void)mt_applyVisualStyling:(id)a3;
- (void)setAnimationReferenceView:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFadeEdgeInsets:(UIEdgeInsets)a3;
- (void)setFont:(id)a3;
- (void)setMarqueeEnabled:(BOOL)a3;
- (void)setSizingRule:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setWantsContentAwareTypesettingLanguage:(BOOL)a3;
@end

@implementation MRUMarqueeLabel

- (void)mt_applyVisualStyling:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__MRUMarqueeLabel_MRUVisualStylingProviderAdditions__mt_applyVisualStyling___block_invoke;
  v3[3] = &unk_1E76648D8;
  v3[4] = self;
  [a3 applyToView:self withColorBlock:v3];
}

- (void)mru_applyVisualStylingWithColor:(id)a3 alpha:(double)a4 blendMode:(int64_t)a5
{
  v8 = a3;
  [(MRUMarqueeLabel *)self setAlpha:a4];
  [(MRUMarqueeLabel *)self _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [(MRUMarqueeLabel *)self setTextColor:v8];
}

- (MRUMarqueeLabel)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MRUMarqueeLabel;
  v3 = [(MRUMarqueeLabel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    label = v3->_label;
    v3->_label = v4;

    [(BSUIEmojiLabelView *)v3->_label setNumberOfLines:1];
    v6 = objc_alloc_init(MEMORY[0x1E69AD990]);
    marqueeView = v3->_marqueeView;
    v3->_marqueeView = v6;

    v8 = [(MPUMarqueeView *)v3->_marqueeView contentView];
    [v8 addSubview:v3->_label];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  text = self->_text;
  self->_text = v5;

  [(BSUIEmojiLabelView *)self->_label setText:v4];
  v7 = [v4 _isNaturallyRTL];

  [(MPUMarqueeView *)self->_marqueeView setAnimationDirection:v7];
  if (v7)
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

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);
  v5 = a3;
  [(BSUIEmojiLabelView *)self->_label setTextColor:v5];
}

- (void)setAnimationReferenceView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_animationReferenceView, v4);
  [(MPUMarqueeView *)self->_marqueeView setAnimationReferenceView:v4];
}

- (void)setFont:(id)a3
{
  objc_storeStrong(&self->_font, a3);
  v5 = a3;
  [(BSUIEmojiLabelView *)self->_label setFont:v5];
}

- (void)setMarqueeEnabled:(BOOL)a3
{
  self->_marqueeEnabled = a3;
  [(MPUMarqueeView *)self->_marqueeView setMarqueeEnabled:?];
  if (!a3)
  {
    [(MPUMarqueeView *)self->_marqueeView resetMarqueePosition];
    marqueeView = self->_marqueeView;

    [(MPUMarqueeView *)marqueeView _removeAllAnimations:1];
  }
}

- (void)setFadeEdgeInsets:(UIEdgeInsets)a3
{
  self->_fadeEdgeInsets = a3;
  [(MPUMarqueeView *)self->_marqueeView setFadeEdgeInsets:?];

  [(MRUMarqueeLabel *)self setNeedsLayout];
}

- (void)setContentSize:(CGSize)a3
{
  self->_contentSize = a3;
  [(MPUMarqueeView *)self->_marqueeView setContentSize:?];

  [(MRUMarqueeLabel *)self setNeedsLayout];
}

- (BOOL)wantsContentAwareTypesettingLanguage
{
  v2 = [(BSUIEmojiLabelView *)self->_label contentLabel];
  v3 = [v2 _wantsContentAwareTypesettingLanguage];

  return v3;
}

- (void)setWantsContentAwareTypesettingLanguage:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSUIEmojiLabelView *)self->_label contentLabel];
  [v4 _setWantsContentAwareTypesettingLanguage:v3];
}

- (int64_t)sizingRule
{
  v2 = [(BSUIEmojiLabelView *)self->_label contentLabel];
  v3 = [v2 sizingRule];

  return v3;
}

- (void)setSizingRule:(int64_t)a3
{
  v4 = [(BSUIEmojiLabelView *)self->_label contentLabel];
  [v4 setSizingRule:a3];
}

- (void)addCoordinatedMarqueeView:(id)a3
{
  marqueeView = self->_marqueeView;
  v4 = [a3 marqueeView];
  [(MPUMarqueeView *)marqueeView addCoordinatedMarqueeView:v4];
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