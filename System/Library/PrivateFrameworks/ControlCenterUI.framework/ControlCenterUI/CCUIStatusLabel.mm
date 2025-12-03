@interface CCUIStatusLabel
- (CCUIStatusLabel)init;
- (UIEdgeInsets)edgeInsets;
- (void)_contentSizeCategoryDidChange;
- (void)didMoveToWindow;
- (void)drawTextInRect:(CGRect)rect;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setVerticalAlignment:(unint64_t)alignment;
@end

@implementation CCUIStatusLabel

- (CCUIStatusLabel)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CCUIStatusLabel;
  v2 = [(CCUIStatusLabel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(CCUIStatusLabel *)v2 setTextAlignment:1];
    [(CCUIStatusLabel *)v3 setNumberOfLines:2];
    [(CCUIStatusLabel *)v3 setAdjustsFontSizeToFitWidth:1];
    v4 = objc_opt_self();
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v6 = [(CCUIStatusLabel *)v3 registerForTraitChanges:v5 withAction:sel__contentSizeCategoryDidChange];

    [(CCUIStatusLabel *)v3 _contentSizeCategoryDidChange];
    [(CCUIStatusLabel *)v3 controlCenterApplyPrimaryContentShadow];
    layer = [(CCUIStatusLabel *)v3 layer];
    [layer setShadowPathIsBounds:0];
  }

  return v3;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CCUIStatusLabel;
  [(CCUIStatusLabel *)&v6 didMoveToWindow];
  window = [(CCUIStatusLabel *)self window];

  if (window)
  {
    v4 = [(CCUIStatusLabel *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self];
      objc_storeStrong(&self->_visualStylingProvider, v4);
      [(CCUIStatusLabel *)self _updateVisualStyling];
    }
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(CCUIStatusLabel *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(unint64_t)alignment
{
  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(CCUIStatusLabel *)self setNeedsLayout];
  }
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CCUIEdgeInsetsRTLSwap();
  v9 = x + v8;
  v11 = y + v10;
  v13 = width - (v8 + v12);
  v15 = height - (v10 + v14);
  verticalAlignment = [(CCUIStatusLabel *)self verticalAlignment];
  if (verticalAlignment == 1)
  {
    [(CCUIStatusLabel *)self textRectForBounds:2 limitedToNumberOfLines:v9, v11, v13, v15];
    v18 = v17;
    rect.origin.x = v17;
    rect.origin.y = v19;
    v21 = v20;
    v23 = v22;
    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    rect.size.width = CGRectGetMinX(v29);
    v30.origin.x = v9;
    v30.origin.y = v11;
    v30.size.width = v13;
    v30.size.height = v15;
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v9;
    v31.origin.y = v11;
    v31.size.width = v13;
    v31.size.height = v15;
    v24 = CGRectGetHeight(v31);
    v32.origin.x = v18;
    v32.origin.y = v21;
    v32.size.width = rect.origin.y;
    v32.size.height = v23;
    v25 = MinY + v24 - CGRectGetHeight(v32);
    v33.origin.x = v9;
    v33.origin.y = v11;
    v33.size.width = v13;
    v33.size.height = v15;
    v13 = CGRectGetWidth(v33);
    v34.origin.x = rect.origin.x;
    v34.origin.y = v21;
    v34.size.width = rect.origin.y;
    v34.size.height = v23;
    v15 = CGRectGetHeight(v34);
    v11 = v25;
    v9 = rect.size.width;
  }

  else if (verticalAlignment)
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  *&rect.size.height = self;
  v28 = CCUIStatusLabel;
  [(CGFloat *)&rect.size.height drawTextInRect:v9, v11, v13, v15, *&MinY];
}

- (void)_contentSizeCategoryDidChange
{
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v4 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D769C0] hiFontStyle:1];

  [(CCUIStatusLabel *)self setFont:v4];
  [(CCUIStatusLabel *)self setNeedsLayout];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end