@interface HUGridServiceCellTextView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUGridServiceCellTextView)initWithFrame:(CGRect)a3;
- (double)lastBaselineToBottomDistance;
- (double)lineHeight;
- (double)topToFirstBaselineDistance;
- (id)_combinedAttributedString;
- (id)_commonTextAttributesWithLineBreakMode:(int64_t)a3;
- (id)_effectiveTextColor;
- (void)_drawCombinedLabel;
- (void)_drawDescriptionLabel;
- (void)_drawSeperateLabels;
- (void)_updateMode;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)a3;
- (void)setFont:(id)a3;
- (void)setLineHeight:(double)a3;
- (void)setMode:(unint64_t)a3;
- (void)setServiceNameComponents:(id)a3;
- (void)setShouldShowRoomName:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)setTextColorFollowsTintColor:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation HUGridServiceCellTextView

- (HUGridServiceCellTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCellTextView;
  v3 = [(HUGridServiceCellTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridServiceCellTextView *)v3 setOpaque:0];
    [(HUGridServiceCellTextView *)v4 setContentMode:3];
    v4->_descriptionTextColorDimmingFactor = 1.0;
    v4->_shouldShowRoomName = 1;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUGridServiceCellTextView;
  [(HUGridServiceCellTextView *)&v3 tintColorDidChange];
  [(HUGridServiceCellTextView *)self setNeedsDisplay];
}

- (void)setServiceNameComponents:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_serviceNameComponents] & 1) == 0)
  {
    objc_storeStrong(&self->_serviceNameComponents, a3);
    [(HUGridServiceCellTextView *)self setNeedsLayout];
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setDescriptionText:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_descriptionText] & 1) == 0)
  {
    objc_storeStrong(&self->_descriptionText, a3);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
    [(HUGridServiceCellTextView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setTextColorFollowsTintColor:(BOOL)a3
{
  if (self->_textColorFollowsTintColor != a3)
  {
    self->_textColorFollowsTintColor = a3;
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (double)lineHeight
{
  result = self->_lineHeight;
  if (fabs(result) < 2.22044605e-16)
  {
    v3 = [(HUGridServiceCellTextView *)self font];
    [v3 lineHeight];
    v5 = v4;

    return v5;
  }

  return result;
}

- (void)setLineHeight:(double)a3
{
  if (self->_lineHeight != a3)
  {
    self->_lineHeight = a3;
    [(HUGridServiceCellTextView *)self invalidateIntrinsicContentSize];

    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(HUGridServiceCellTextView *)self setNeedsLayout];
  }
}

- (void)setShouldShowRoomName:(BOOL)a3
{
  if (self->_shouldShowRoomName != a3)
  {
    self->_shouldShowRoomName = a3;
    [(HUGridServiceCellTextView *)self setNeedsLayout];
  }
}

- (double)topToFirstBaselineDistance
{
  v2 = [(HUGridServiceCellTextView *)self font];
  [v2 ascender];
  v4 = v3;

  return v4;
}

- (double)lastBaselineToBottomDistance
{
  [(HUGridServiceCellTextView *)self lineHeight];
  v4 = v3;
  v5 = [(HUGridServiceCellTextView *)self font];
  [v5 ascender];
  v7 = v4 - v6;

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUGridServiceCellTextView;
  [(HUGridServiceCellTextView *)&v3 layoutSubviews];
  [(HUGridServiceCellTextView *)self _updateMode];
}

- (void)_updateMode
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(HUGridServiceCellTextView *)self _commonTextAttributesWithLineBreakMode:0];
  attrString = [v3 initWithString:@"X" attributes:v4];

  v5 = CTFramesetterCreateWithAttributedString(attrString);
  v6 = [(HUGridServiceCellTextView *)self _combinedAttributedString];
  v7 = CTFramesetterCreateWithAttributedString(v6);

  [(HUGridServiceCellTextView *)self frame];
  v25.width = v8;
  v23.location = 0;
  v23.length = 0;
  v25.height = 1.79769313e308;
  v9 = CTFramesetterSuggestFrameSizeWithConstraints(v5, v23, 0, v25, 0);
  [(HUGridServiceCellTextView *)self frame];
  v26.width = v10;
  v24.location = 0;
  v24.length = 0;
  v26.height = 1.79769313e308;
  v12 = CTFramesetterSuggestFrameSizeWithConstraints(v7, v24, 0, v26, 0);
  width = v12.width;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v13 = [(HUGridServiceCellTextView *)self serviceNameComponents];
  v14 = [v13 serviceName];

  if ([(HUGridServiceCellTextView *)self shouldShowRoomName])
  {
    v15 = [(HUGridServiceCellTextView *)self serviceNameComponents];
    v16 = [v15 roomName];
  }

  else
  {
    v16 = 0;
  }

  if (![v14 length] || (v17 = objc_msgSend(v16, "length"), v18 = 1, !v17) && v12.height > v9.height)
  {
    v19 = [v16 length];
    if (v12.height <= v9.height && v19 == 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [(HUGridServiceCellTextView *)self setMode:v18];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(HUGridServiceCellTextView *)self lineHeight];
  v4 = v3 * 3.0;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(HUGridServiceCellTextView *)self intrinsicContentSize:a3.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(HUGridServiceCellTextView *)self mode:a3.origin.x];
  if (v4 == 2)
  {
    [(HUGridServiceCellTextView *)self _drawCombinedLabel];
  }

  else if (v4 == 1)
  {
    [(HUGridServiceCellTextView *)self _drawSeperateLabels];
  }

  v5 = [(HUGridServiceCellTextView *)self descriptionText];

  if (v5)
  {

    [(HUGridServiceCellTextView *)self _drawDescriptionLabel];
  }
}

- (id)_commonTextAttributesWithLineBreakMode:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D74240]);
  [(HUGridServiceCellTextView *)self lineHeight];
  [v5 setMinimumLineHeight:?];
  [(HUGridServiceCellTextView *)self lineHeight];
  [v5 setMaximumLineHeight:?];
  [v5 setLineBreakMode:a3];
  [v5 setAllowsDefaultTighteningForTruncation:{objc_msgSend(MEMORY[0x277D14670], "isHomeControlService") ^ 1}];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(HUGridServiceCellTextView *)self font];
  [v6 na_safeSetObject:v7 forKey:*MEMORY[0x277D740A8]];

  v8 = [(HUGridServiceCellTextView *)self _effectiveTextColor];
  [v6 na_safeSetObject:v8 forKey:*MEMORY[0x277D740C0]];

  [v6 na_safeSetObject:v5 forKey:*MEMORY[0x277D74118]];

  return v6;
}

- (id)_combinedAttributedString
{
  v3 = [(HUGridServiceCellTextView *)self _commonTextAttributesWithLineBreakMode:0];
  v4 = [(HUGridServiceCellTextView *)self shouldShowRoomName];
  v5 = [(HUGridServiceCellTextView *)self serviceNameComponents];
  v6 = v5;
  if (v4)
  {
    [v5 composedString];
  }

  else
  {
    [v5 serviceName];
  }
  v7 = ;

  v8 = [v7 stringWithAttributes:v3];

  return v8;
}

- (void)_drawCombinedLabel
{
  v10 = objc_alloc_init(MEMORY[0x277D74260]);
  [v10 setMaximumNumberOfLines:2];
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [(HUGridServiceCellTextView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(HUGridServiceCellTextView *)self _combinedAttributedString];
  [v9 drawWithRect:33 options:v10 context:{v3, v4, v6, v8}];
}

- (void)_drawSeperateLabels
{
  v18 = [(HUGridServiceCellTextView *)self _commonTextAttributesWithLineBreakMode:4];
  v3 = [v18 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [v3 ascender];
  v5 = v4;

  [(HUGridServiceCellTextView *)self bounds];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277D74260]);
  if ([(HUGridServiceCellTextView *)self shouldShowRoomName])
  {
    v11 = [(HUGridServiceCellTextView *)self serviceNameComponents];
    v12 = [v11 roomName];
    v13 = [v12 stringWithAttributes:v18];

    [v13 drawWithRect:0 options:v10 context:{0.0, v5, v7, v9}];
  }

  v14 = [(HUGridServiceCellTextView *)self serviceNameComponents];
  v15 = [v14 serviceName];

  v16 = [v15 stringWithAttributes:v18];
  [(HUGridServiceCellTextView *)self lineHeight];
  [v16 drawWithRect:0 options:v10 context:{0.0, v5 + v17, v7, v9}];
}

- (void)_drawDescriptionLabel
{
  v3 = [(HUGridServiceCellTextView *)self _commonTextAttributesWithLineBreakMode:4];
  v4 = [v3 mutableCopy];

  [(HUGridServiceCellTextView *)self descriptionTextColorDimmingFactor];
  if (v5 < 1.0)
  {
    v6 = [(HUGridServiceCellTextView *)self _effectiveTextColor];
    v20 = 1.0;
    [v6 getWhite:0 alpha:&v20];
    [(HUGridServiceCellTextView *)self descriptionTextColorDimmingFactor];
    v20 = v7 * v20;
    v8 = [v6 colorWithAlphaComponent:?];

    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [v9 ascender];
  v11 = v10;

  v12 = [(HUGridServiceCellTextView *)self descriptionText];
  v13 = [v12 stringWithAttributes:v4];

  [(HUGridServiceCellTextView *)self bounds];
  v15 = v14;
  v17 = v16;
  v18 = [v13 hf_scaledAttributedStringWithBoundingSize:1 minimumScaleFactor:v14 maximumNumberOfLines:{v16, 0.8}];

  [(HUGridServiceCellTextView *)self lineHeight];
  [v18 drawWithRect:0 options:0 context:{0.0, v11 + v19 * 2.0, v15, v17}];
}

- (id)_effectiveTextColor
{
  v3 = [MEMORY[0x277D75348] labelColor];
  if ([(HUGridServiceCellTextView *)self textColorFollowsTintColor])
  {
    v4 = [(HUGridServiceCellTextView *)self tintColor];
  }

  else
  {
    v5 = [(HUGridServiceCellTextView *)self textColor];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(HUGridServiceCellTextView *)self textColor];
  }

  v6 = v4;

  v3 = v6;
LABEL_6:

  return v3;
}

@end