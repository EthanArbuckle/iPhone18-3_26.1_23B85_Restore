@interface NTKDateComplicationLabel
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)_highlightInset;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKDateComplicationLabel)initWithSizeStyle:(int64_t)style accentType:(int64_t)type forDevice:(id)device;
- (UIEdgeInsets)touchEdgeInsets;
- (double)_cornerRadius;
- (double)_firstLineBaselineFrameOriginY;
- (double)_firstLineBaselineOffsetFromBoundsTop;
- (double)_lastLineBaseline;
- (double)_lastLineBaselineFrameOriginY;
- (double)_legibtilityShadowRadius;
- (id)_attributedStringAccentingNumbersInString:(id)string;
- (void)_applyAccentColorAttributes;
- (void)_invalidateInternalLabelSize;
- (void)_setFirstLineBaselineFrameOriginY:(double)y;
- (void)_setFont:(id)font;
- (void)_setLastLineBaselineFrameOriginY:(double)y;
- (void)_setText:(id)text;
- (void)layoutSubviews;
- (void)setAccentColor:(id)color;
- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style;
- (void)setFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLegibilityHidden:(BOOL)hidden;
- (void)setTextColor:(id)color;
- (void)setUsesLegibility:(BOOL)legibility;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKDateComplicationLabel

- (NTKDateComplicationLabel)initWithSizeStyle:(int64_t)style accentType:(int64_t)type forDevice:(id)device
{
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = NTKDateComplicationLabel;
  v10 = [(NTKDateComplicationLabel *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_frozen = 0;
    v10->_sizeStyle = style;
    v10->_accentType = type;
    objc_storeStrong(&v10->_device, device);
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    highlightView = v11->_highlightView;
    v11->_highlightView = v13;

    v15 = v11->_highlightView;
    v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v11->_highlightView setUserInteractionEnabled:0];
    [(UIView *)v11->_highlightView setAlpha:0.0];
    layer = [(UIView *)v11->_highlightView layer];
    [(NTKDateComplicationLabel *)v11 _cornerRadius];
    [layer setCornerRadius:?];

    [(NTKDateComplicationLabel *)v11 addSubview:v11->_highlightView];
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    internalLabel = v11->_internalLabel;
    v11->_internalLabel = v18;

    [(UILabel *)v11->_internalLabel setTextAlignment:1];
    v20 = v11->_internalLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v20 setTextColor:whiteColor];

    [(NTKDateComplicationLabel *)v11 addSubview:v11->_internalLabel];
    [(NTKDateComplicationLabel *)v11 _computeTextColor];
  }

  return v11;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKDateComplicationLabel;
  [(NTKDateComplicationLabel *)&v17 layoutSubviews];
  [(NTKDateComplicationLabel *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (self->_usesLegibility)
  {
    [(NTKDateComplicationLabel *)self _legibtilityShadowRadius];
    v12 = -v11;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectInset(v18, v12, v12);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  [(UILabel *)self->_internalLabel setFrame:x, y, width, height];
  [(NTKDateComplicationLabel *)self _highlightInset];
  v14 = v13;
  v16 = v15;
  [(NTKDateComplicationLabel *)self bounds];
  v21 = CGRectInset(v20, v14, v16);
  [(UIView *)self->_highlightView setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cachedFittingSizes = self->_cachedFittingSizes;
  fitsCopy = fits;
  v7 = [MEMORY[0x277CCAE60] valueWithBytes:&fitsCopy objCType:"{CGSize=dd}"];
  v8 = [(NSMutableDictionary *)cachedFittingSizes objectForKey:v7];

  if (v8)
  {
    [v8 CGSizeValue];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(UILabel *)self->_internalLabel sizeThatFits:width, height];
    v10 = v13;
    v12 = v14;
    v15 = self->_cachedFittingSizes;
    if (!v15)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v17 = self->_cachedFittingSizes;
      self->_cachedFittingSizes = dictionary;

      v15 = self->_cachedFittingSizes;
    }

    *v23 = v10;
    *&v23[1] = v12;
    v18 = [MEMORY[0x277CCAE60] valueWithBytes:v23 objCType:"{CGSize=dd}"];
    *v22 = width;
    *&v22[1] = height;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v22 objCType:"{CGSize=dd}"];
    [(NSMutableDictionary *)v15 setObject:v18 forKey:v19];
  }

  v20 = v10;
  v21 = v12;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(NTKDateComplicationLabel *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = NTKDateComplicationLabel;
  [(NTKDateComplicationLabel *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [(NTKDateComplicationLabel *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];
  if (legibilityWeight != [changeCopy legibilityWeight])
  {
    [(UILabel *)self->_internalLabel traitCollectionDidChange:changeCopy];
    [(NTKDateComplicationLabel *)self _invalidateInternalLabelSize];
  }
}

- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style
{
  length = range.length;
  location = range.location;
  textCopy = text;
  objc_storeStrong(&self->_currentDateText, text);
  self->_dayTextRange.location = location;
  self->_dayTextRange.length = length;
  if (!self->_frozen)
  {
    [(NTKDateComplicationLabel *)self _setText:self->_currentDateText];
  }
}

- (id)_attributedStringAccentingNumbersInString:(id)string
{
  v18[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
    accentColor = self->_accentColor;
    if (accentColor)
    {
      v17 = *MEMORY[0x277D740C0];
      v18[0] = accentColor;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      accentType = [(NTKDateComplicationLabel *)self accentType];
      if (accentType == 1)
      {
        if (self->_dayTextRange.location != 0x7FFFFFFFFFFFFFFFLL && self->_dayTextRange.length)
        {
          [v5 setAttributes:v7 range:?];
        }
      }

      else if (!accentType && [stringCopy length])
      {
        v9 = 0;
        do
        {
          v10 = [stringCopy length] - v9;
          decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
          v12 = [stringCopy rangeOfCharacterFromSet:decimalDigitCharacterSet options:0 range:{v9, v10}];
          v14 = v13;

          if (v12 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0)
          {
            break;
          }

          [v5 setAttributes:v7 range:{v12, v14}];
          v9 = v12 + v14;
        }

        while (v9 < [stringCopy length]);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  [(NTKDateComplicationLabel *)self _setFont:fontCopy];
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);
  [(NTKDateComplicationLabel *)self _computeTextColor];

  [(NTKDateComplicationLabel *)self _updateTextColor];
}

- (void)setAccentColor:(id)color
{
  objc_storeStrong(&self->_accentColor, color);

  [(NTKDateComplicationLabel *)self _applyAccentColorAttributes];
}

- (void)setLegibilityHidden:(BOOL)hidden
{
  self->_legibilityHidden = hidden;
  if (self->_usesLegibility)
  {
    internalLabel = self->_internalLabel;
    v5 = 0.1;
    if (!hidden)
    {
      v5 = 0.6;
    }

    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:v5];
    [(UILabel *)internalLabel setShadowColor:v6];
  }
}

- (void)setUsesLegibility:(BOOL)legibility
{
  if (self->_usesLegibility != legibility)
  {
    self->_usesLegibility = legibility;
    if (legibility)
    {
      [(NTKDateComplicationLabel *)self setLegibilityHidden:self->_legibilityHidden];
      [(UILabel *)self->_internalLabel setShadowOffset:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      internalLabel = self->_internalLabel;
      [(NTKDateComplicationLabel *)self _legibtilityShadowRadius];
      [(UILabel *)internalLabel setShadowBlur:?];
    }

    else
    {
      [(UILabel *)self->_internalLabel setShadowColor:0];
    }

    [(NTKDateComplicationLabel *)self setNeedsLayout];
  }
}

- (double)_firstLineBaselineOffsetFromBoundsTop
{
  [(UILabel *)self->_internalLabel _firstLineBaselineOffsetFromBoundsTop];
  v4 = v3;
  [(UILabel *)self->_internalLabel frame];
  return v4 + CGRectGetMinY(v6);
}

- (double)_firstLineBaselineFrameOriginY
{
  [(NTKDateComplicationLabel *)self frame];
  v4 = v3;
  [(NTKDateComplicationLabel *)self _firstLineBaselineOffsetFromBoundsTop];
  return v5 + v4;
}

- (void)_setFirstLineBaselineFrameOriginY:(double)y
{
  [(NTKDateComplicationLabel *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKDateComplicationLabel *)self _firstLineBaselineOffsetFromBoundsTop];

  [(NTKDateComplicationLabel *)self setFrame:v6, y - v11, v8, v10];
}

- (double)_lastLineBaseline
{
  [(UILabel *)self->_internalLabel _lastLineBaseline];
  v4 = v3;
  [(UILabel *)self->_internalLabel frame];
  return v4 + CGRectGetMinY(v6);
}

- (double)_lastLineBaselineFrameOriginY
{
  [(NTKDateComplicationLabel *)self frame];
  v4 = v3;
  [(NTKDateComplicationLabel *)self _lastLineBaseline];
  return v5 + v4;
}

- (void)_setLastLineBaselineFrameOriginY:(double)y
{
  [(NTKDateComplicationLabel *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKDateComplicationLabel *)self _lastLineBaseline];

  [(NTKDateComplicationLabel *)self setFrame:v6, y - v11, v8, v10];
}

- (void)_setText:(id)text
{
  v4 = [(NTKDateComplicationLabel *)self _attributedStringAccentingNumbersInString:text];
  [(UILabel *)self->_internalLabel setAttributedText:v4];
  [(NTKDateComplicationLabel *)self _invalidateInternalLabelSize];
}

- (void)_applyAccentColorAttributes
{
  internalLabel = self->_internalLabel;
  text = [(UILabel *)internalLabel text];
  v4 = [(NTKDateComplicationLabel *)self _attributedStringAccentingNumbersInString:text];
  [(UILabel *)internalLabel setAttributedText:v4];
}

- (void)_setFont:(id)font
{
  [(UILabel *)self->_internalLabel setFont:font];

  [(NTKDateComplicationLabel *)self _invalidateInternalLabelSize];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = NTKDateComplicationLabel;
  [(NTKDateComplicationLabel *)&v8 setHighlighted:?];
  v5 = 0.2;
  v6 = 0.0;
  if (highlightedCopy)
  {
    v5 = 0.0;
  }

  v7[1] = 3221225472;
  v7[0] = MEMORY[0x277D85DD0];
  v7[2] = __43__NTKDateComplicationLabel_setHighlighted___block_invoke;
  v7[3] = &unk_2787805D8;
  if (highlightedCopy)
  {
    v6 = 1.0;
  }

  v7[4] = self;
  *&v7[5] = v6;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v5];
}

- (void)_invalidateInternalLabelSize
{
  [(NSMutableDictionary *)self->_cachedFittingSizes removeAllObjects];
  [(NTKDateComplicationLabel *)self sizeToFit];
  [(NTKDateComplicationLabel *)self setNeedsLayout];
  displayObserver = [(NTKDateComplicationLabel *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKDateComplicationLabel *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (double)_cornerRadius
{
  result = 2.0;
  if (!self->_sizeStyle)
  {
    return 6.0;
  }

  return result;
}

- (CGSize)_highlightInset
{
  v2 = 6.5;
  if (self->_sizeStyle)
  {
    v2 = 2.0;
  }

  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (double)_legibtilityShadowRadius
{
  result = 5.0;
  if (!self->_sizeStyle)
  {
    return 10.0;
  }

  return result;
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end