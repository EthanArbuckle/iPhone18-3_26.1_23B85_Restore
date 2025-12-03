@interface HUGridServiceCellTextView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUGridServiceCellTextView)initWithFrame:(CGRect)frame;
- (double)lastBaselineToBottomDistance;
- (double)lineHeight;
- (double)topToFirstBaselineDistance;
- (id)_combinedAttributedString;
- (id)_commonTextAttributesWithLineBreakMode:(int64_t)mode;
- (id)_effectiveTextColor;
- (void)_drawCombinedLabel;
- (void)_drawDescriptionLabel;
- (void)_drawSeperateLabels;
- (void)_updateMode;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)text;
- (void)setFont:(id)font;
- (void)setLineHeight:(double)height;
- (void)setMode:(unint64_t)mode;
- (void)setServiceNameComponents:(id)components;
- (void)setShouldShowRoomName:(BOOL)name;
- (void)setTextColor:(id)color;
- (void)setTextColorFollowsTintColor:(BOOL)color;
- (void)tintColorDidChange;
@end

@implementation HUGridServiceCellTextView

- (HUGridServiceCellTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCellTextView;
  v3 = [(HUGridServiceCellTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setServiceNameComponents:(id)components
{
  componentsCopy = components;
  if (([componentsCopy isEqual:self->_serviceNameComponents] & 1) == 0)
  {
    objc_storeStrong(&self->_serviceNameComponents, components);
    [(HUGridServiceCellTextView *)self setNeedsLayout];
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  if (([textCopy isEqual:self->_descriptionText] & 1) == 0)
  {
    objc_storeStrong(&self->_descriptionText, text);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([fontCopy isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
    [(HUGridServiceCellTextView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setTextColorFollowsTintColor:(BOOL)color
{
  if (self->_textColorFollowsTintColor != color)
  {
    self->_textColorFollowsTintColor = color;
    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (double)lineHeight
{
  result = self->_lineHeight;
  if (fabs(result) < 2.22044605e-16)
  {
    font = [(HUGridServiceCellTextView *)self font];
    [font lineHeight];
    v5 = v4;

    return v5;
  }

  return result;
}

- (void)setLineHeight:(double)height
{
  if (self->_lineHeight != height)
  {
    self->_lineHeight = height;
    [(HUGridServiceCellTextView *)self invalidateIntrinsicContentSize];

    [(HUGridServiceCellTextView *)self setNeedsDisplay];
  }
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(HUGridServiceCellTextView *)self setNeedsLayout];
  }
}

- (void)setShouldShowRoomName:(BOOL)name
{
  if (self->_shouldShowRoomName != name)
  {
    self->_shouldShowRoomName = name;
    [(HUGridServiceCellTextView *)self setNeedsLayout];
  }
}

- (double)topToFirstBaselineDistance
{
  font = [(HUGridServiceCellTextView *)self font];
  [font ascender];
  v4 = v3;

  return v4;
}

- (double)lastBaselineToBottomDistance
{
  [(HUGridServiceCellTextView *)self lineHeight];
  v4 = v3;
  font = [(HUGridServiceCellTextView *)self font];
  [font ascender];
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
  _combinedAttributedString = [(HUGridServiceCellTextView *)self _combinedAttributedString];
  v7 = CTFramesetterCreateWithAttributedString(_combinedAttributedString);

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

  serviceNameComponents = [(HUGridServiceCellTextView *)self serviceNameComponents];
  serviceName = [serviceNameComponents serviceName];

  if ([(HUGridServiceCellTextView *)self shouldShowRoomName])
  {
    serviceNameComponents2 = [(HUGridServiceCellTextView *)self serviceNameComponents];
    roomName = [serviceNameComponents2 roomName];
  }

  else
  {
    roomName = 0;
  }

  if (![serviceName length] || (v17 = objc_msgSend(roomName, "length"), v18 = 1, !v17) && v12.height > v9.height)
  {
    v19 = [roomName length];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(HUGridServiceCellTextView *)self intrinsicContentSize:fits.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(HUGridServiceCellTextView *)self mode:rect.origin.x];
  if (v4 == 2)
  {
    [(HUGridServiceCellTextView *)self _drawCombinedLabel];
  }

  else if (v4 == 1)
  {
    [(HUGridServiceCellTextView *)self _drawSeperateLabels];
  }

  descriptionText = [(HUGridServiceCellTextView *)self descriptionText];

  if (descriptionText)
  {

    [(HUGridServiceCellTextView *)self _drawDescriptionLabel];
  }
}

- (id)_commonTextAttributesWithLineBreakMode:(int64_t)mode
{
  v5 = objc_alloc_init(MEMORY[0x277D74240]);
  [(HUGridServiceCellTextView *)self lineHeight];
  [v5 setMinimumLineHeight:?];
  [(HUGridServiceCellTextView *)self lineHeight];
  [v5 setMaximumLineHeight:?];
  [v5 setLineBreakMode:mode];
  [v5 setAllowsDefaultTighteningForTruncation:{objc_msgSend(MEMORY[0x277D14670], "isHomeControlService") ^ 1}];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  font = [(HUGridServiceCellTextView *)self font];
  [dictionary na_safeSetObject:font forKey:*MEMORY[0x277D740A8]];

  _effectiveTextColor = [(HUGridServiceCellTextView *)self _effectiveTextColor];
  [dictionary na_safeSetObject:_effectiveTextColor forKey:*MEMORY[0x277D740C0]];

  [dictionary na_safeSetObject:v5 forKey:*MEMORY[0x277D74118]];

  return dictionary;
}

- (id)_combinedAttributedString
{
  v3 = [(HUGridServiceCellTextView *)self _commonTextAttributesWithLineBreakMode:0];
  shouldShowRoomName = [(HUGridServiceCellTextView *)self shouldShowRoomName];
  serviceNameComponents = [(HUGridServiceCellTextView *)self serviceNameComponents];
  v6 = serviceNameComponents;
  if (shouldShowRoomName)
  {
    [serviceNameComponents composedString];
  }

  else
  {
    [serviceNameComponents serviceName];
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
  _combinedAttributedString = [(HUGridServiceCellTextView *)self _combinedAttributedString];
  [_combinedAttributedString drawWithRect:33 options:v10 context:{v3, v4, v6, v8}];
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
    serviceNameComponents = [(HUGridServiceCellTextView *)self serviceNameComponents];
    roomName = [serviceNameComponents roomName];
    v13 = [roomName stringWithAttributes:v18];

    [v13 drawWithRect:0 options:v10 context:{0.0, v5, v7, v9}];
  }

  serviceNameComponents2 = [(HUGridServiceCellTextView *)self serviceNameComponents];
  serviceName = [serviceNameComponents2 serviceName];

  v16 = [serviceName stringWithAttributes:v18];
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
    _effectiveTextColor = [(HUGridServiceCellTextView *)self _effectiveTextColor];
    v20 = 1.0;
    [_effectiveTextColor getWhite:0 alpha:&v20];
    [(HUGridServiceCellTextView *)self descriptionTextColorDimmingFactor];
    v20 = v7 * v20;
    v8 = [_effectiveTextColor colorWithAlphaComponent:?];

    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D740C0]];
  }

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [v9 ascender];
  v11 = v10;

  descriptionText = [(HUGridServiceCellTextView *)self descriptionText];
  v13 = [descriptionText stringWithAttributes:v4];

  [(HUGridServiceCellTextView *)self bounds];
  v15 = v14;
  v17 = v16;
  v18 = [v13 hf_scaledAttributedStringWithBoundingSize:1 minimumScaleFactor:v14 maximumNumberOfLines:{v16, 0.8}];

  [(HUGridServiceCellTextView *)self lineHeight];
  [v18 drawWithRect:0 options:0 context:{0.0, v11 + v19 * 2.0, v15, v17}];
}

- (id)_effectiveTextColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  if ([(HUGridServiceCellTextView *)self textColorFollowsTintColor])
  {
    tintColor = [(HUGridServiceCellTextView *)self tintColor];
  }

  else
  {
    textColor = [(HUGridServiceCellTextView *)self textColor];

    if (!textColor)
    {
      goto LABEL_6;
    }

    tintColor = [(HUGridServiceCellTextView *)self textColor];
  }

  v6 = tintColor;

  labelColor = v6;
LABEL_6:

  return labelColor;
}

@end