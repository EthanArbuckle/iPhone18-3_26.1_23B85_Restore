@interface NTKVictoryLabel
+ (id)fontDescriptorWithVictoryStyle:(unint64_t)style;
+ (id)loadFonts:(double)fonts style:(unint64_t)style monospacedNumbers:(BOOL)numbers;
- (BOOL)_shouldHideOutlineLabel;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGVector)drawingRectOffset;
- (NTKVictoryLabel)outlineLabel;
- (double)additionalPaddingInsets;
- (id)outlinedLabelAttributedStringFromAttributedString:(id)string;
- (void)_applyDrawingOffsetForTextIfNeeded:(id)needed;
- (void)_layoutOutlineLabelIfNeeded;
- (void)drawTextInRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setFillColor:(id)color;
- (void)setFillColor:(id)color inRange:(_NSRange)range;
- (void)setOutlineAlpha:(double)alpha;
- (void)setOutlineColor:(id)color;
- (void)setOutlineColor:(id)color inRange:(_NSRange)range;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)sizeToFit;
@end

@implementation NTKVictoryLabel

- (CGSize)sizeThatFits:(CGSize)fits
{
  v11.receiver = self;
  v11.super_class = NTKVictoryLabel;
  [(CLKUIColoringLabel *)&v11 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(NTKVictoryLabel *)self additionalPaddingInsets];
  v9 = v5 + v8;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)sizeToFit
{
  v3.receiver = self;
  v3.super_class = NTKVictoryLabel;
  [(CLKUIColoringLabel *)&v3 sizeToFit];
  [(NTKVictoryLabel *)self _layoutOutlineLabelIfNeeded];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v5.receiver = self;
  v5.super_class = NTKVictoryLabel;
  [(NTKVictoryLabel *)&v5 setTextAlignment:?];
  [(NTKVictoryLabel *)self->_outlineLabel setTextAlignment:alignment];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKVictoryLabel;
  [(NTKVictoryLabel *)&v3 layoutSubviews];
  [(NTKVictoryLabel *)self _layoutOutlineLabelIfNeeded];
}

- (void)_layoutOutlineLabelIfNeeded
{
  if (self->_outlineLabel)
  {
    [(NTKVictoryLabel *)self bounds];
    [(CLKUIColoringLabel *)self->_outlineLabel setBounds:?];
    [(NTKVictoryLabel *)self bounds];
    v4 = v3 * 0.5;
    [(NTKVictoryLabel *)self bounds];
    outlineLabel = self->_outlineLabel;

    [(NTKVictoryLabel *)outlineLabel setCenter:v4, v5 * 0.5];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  v7.receiver = self;
  v7.super_class = NTKVictoryLabel;
  [(CLKUIColoringLabel *)&v7 setAttributedText:textCopy];
  if ([textCopy length])
  {
    v5 = [(NTKVictoryLabel *)self outlinedLabelAttributedStringFromAttributedString:textCopy];
    [(NTKVictoryLabel *)self->_outlineLabel setAttributedText:v5];

    [(NTKVictoryLabel *)self->_outlineLabel sizeToFit];
    string = [textCopy string];
    [(NTKVictoryLabel *)self _applyDrawingOffsetForTextIfNeeded:string];
  }
}

- (id)outlinedLabelAttributedStringFromAttributedString:(id)string
{
  stringCopy = string;
  string = [stringCopy string];
  v6 = [stringCopy length];
  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:string];
  v8 = *MEMORY[0x277D740A8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__NTKVictoryLabel_outlinedLabelAttributedStringFromAttributedString___block_invoke;
  v22[3] = &unk_27877E740;
  v22[4] = self;
  v9 = v7;
  v23 = v9;
  [stringCopy enumerateAttribute:v8 inRange:0 options:v6 usingBlock:{0, v22}];

  attributedText = [(NTKVictoryLabel *)self->_outlineLabel attributedText];
  v11 = [attributedText length];

  attributedText2 = [(NTKVictoryLabel *)self->_outlineLabel attributedText];
  v13 = *MEMORY[0x277D740C0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__NTKVictoryLabel_outlinedLabelAttributedStringFromAttributedString___block_invoke_2;
  v18[3] = &unk_278789300;
  v20 = 0;
  v21 = v6;
  v14 = v9;
  v19 = v14;
  [attributedText2 enumerateAttribute:v13 inRange:0 options:v11 usingBlock:{0, v18}];

  v15 = v19;
  v16 = v14;

  return v14;
}

void __69__NTKVictoryLabel_outlinedLabelAttributedStringFromAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v20;
  if (isKindOfClass)
  {
    v9 = [v20 fontDescriptor];
    v10 = [v9 fontAttributes];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D74338]];

    v12 = [v11 firstObject];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D74398]];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D74388]];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 integerValue] || v13 == 0;
      if (!v16 && [v13 integerValue] == 6)
      {
        v17 = objc_opt_class();
        v18 = [*(a1 + 32) font];
        [v18 pointSize];
        v19 = [v17 victoryFontWithSize:1 style:1 monospacedNumbers:?];

        [*(a1 + 40) addAttribute:*MEMORY[0x277D740A8] value:v19 range:{a3, a4}];
      }
    }

    v8 = v20;
  }
}

void __69__NTKVictoryLabel_outlinedLabelAttributedStringFromAttributedString___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.location = a3;
    v12.length = a4;
    v8 = NSIntersectionRange(v12, *(a1 + 40));
    length = v8.length;
    location = v8.location;
    if (!v8.length)
    {
      location = *(a1 + 40);
      length = *(a1 + 48);
    }

    [*(a1 + 32) addAttribute:*MEMORY[0x277D740C0] value:v10 range:{location, length}];
  }
}

- (void)setText:(id)text
{
  v5.receiver = self;
  v5.super_class = NTKVictoryLabel;
  textCopy = text;
  [(CLKUIColoringLabel *)&v5 setText:textCopy];
  [(NTKVictoryLabel *)self->_outlineLabel setText:textCopy, v5.receiver, v5.super_class];
  [(NTKVictoryLabel *)self _applyDrawingOffsetForTextIfNeeded:textCopy];
}

- (void)_applyDrawingOffsetForTextIfNeeded:(id)needed
{
  neededCopy = needed;
  if (self->_drawingRectOffset.dx != 0.0 || self->_drawingRectOffset.dy != 0.0)
  {
    v7 = neededCopy;
    v5 = [neededCopy substringFromIndex:{objc_msgSend(neededCopy, "length") - 1}];
    v6 = [v5 isEqualToString:@"7"];

    neededCopy = v7;
    if (self->_requiresDrawingRectAdjustments != v6)
    {
      self->_requiresDrawingRectAdjustments = v6;
      [(NTKVictoryLabel *)self setNeedsLayout];
      neededCopy = v7;
    }
  }
}

- (void)setOutlineColor:(id)color
{
  colorCopy = color;
  v9 = colorCopy;
  if (colorCopy)
  {
    clearColor = colorCopy;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v6 = clearColor;
  attributedText = [(NTKVictoryLabel *)self attributedText];
  v8 = [attributedText length];

  [(NTKVictoryLabel *)self setOutlineColor:v6 inRange:0, v8];
  [(NTKVictoryLabel *)self->_outlineLabel setHidden:[(NTKVictoryLabel *)self _shouldHideOutlineLabel]];
  [(NTKVictoryLabel *)self _layoutOutlineLabelIfNeeded];
}

- (void)setOutlineColor:(id)color inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  colorCopy = color;
  v13 = colorCopy;
  if (colorCopy)
  {
    clearColor = colorCopy;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v9 = clearColor;
  outlineLabel = [(NTKVictoryLabel *)self outlineLabel];
  attributedText = [outlineLabel attributedText];
  v12 = [attributedText mutableCopy];

  [v12 addAttribute:*MEMORY[0x277D740C0] value:v9 range:{location, length}];
  [outlineLabel setAttributedText:v12];
  [outlineLabel setHidden:{-[NTKVictoryLabel _shouldHideOutlineLabel](self, "_shouldHideOutlineLabel")}];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  attributedText = [(NTKVictoryLabel *)self attributedText];
  v6 = [attributedText length];

  [(NTKVictoryLabel *)self setFillColor:colorCopy inRange:0, v6];
  _shouldHideOutlineLabel = [(NTKVictoryLabel *)self _shouldHideOutlineLabel];
  outlineLabel = self->_outlineLabel;

  [(NTKVictoryLabel *)outlineLabel setHidden:_shouldHideOutlineLabel];
}

- (void)setFillColor:(id)color inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  colorCopy = color;
  v14 = colorCopy;
  if (colorCopy)
  {
    clearColor = colorCopy;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v9 = clearColor;
  attributedText = [(NTKVictoryLabel *)self attributedText];
  v11 = [attributedText mutableCopy];

  [v11 addAttribute:*MEMORY[0x277D740C0] value:v9 range:{location, length}];
  [(NTKVictoryLabel *)self setAttributedText:v11];
  _shouldHideOutlineLabel = [(NTKVictoryLabel *)self _shouldHideOutlineLabel];
  outlineLabel = [(NTKVictoryLabel *)self outlineLabel];
  [outlineLabel setHidden:_shouldHideOutlineLabel];
}

- (BOOL)_shouldHideOutlineLabel
{
  attributedText = [(NTKVictoryLabel *)self attributedText];
  outlineLabel = [(NTKVictoryLabel *)self outlineLabel];
  attributedText2 = [outlineLabel attributedText];

  v6 = [attributedText length];
  v20 = 0uLL;
  v7 = *MEMORY[0x277D740C0];
  v8 = [attributedText2 attribute:*MEMORY[0x277D740C0] atIndex:0 longestEffectiveRange:&v20 inRange:{0, v6}];
  if (v20 == __PAIR128__(v6, 0) && ([MEMORY[0x277D75348] clearColor], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__NTKVictoryLabel__shouldHideOutlineLabel__block_invoke;
    v13[3] = &unk_278789328;
    v14 = attributedText2;
    v15 = &v16;
    [attributedText enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v13}];
    v11 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v11 & 1;
}

void __42__NTKVictoryLabel__shouldHideOutlineLabel__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v12 = 0;
    v13 = 0;
    v11 = [*(a1 + 32) attribute:*MEMORY[0x277D740C0] atIndex:a3 effectiveRange:&v12];
    if (![v10 isEqual:v11] || a3 != v12 || a4 != v13)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a5 = 1;
    }
  }
}

- (double)additionalPaddingInsets
{
  v2 = 0.0;
  if (self->_requiresDrawingRectAdjustments)
  {
    v2 = -self->_drawingRectOffset.dx;
  }

  return self->_additionalPaddingInsets + v2;
}

- (NTKVictoryLabel)outlineLabel
{
  outlineLabel = self->_outlineLabel;
  if (!outlineLabel)
  {
    v4 = [NTKVictoryLabel alloc];
    [(NTKVictoryLabel *)self bounds];
    v5 = [(CLKUIColoringLabel *)v4 initWithFrame:?];
    v6 = self->_outlineLabel;
    self->_outlineLabel = v5;

    [(NTKVictoryLabel *)self additionalPaddingInsets];
    [(NTKVictoryLabel *)self->_outlineLabel setAdditionalPaddingInsets:?];
    v7 = objc_opt_class();
    font = [(CLKUIColoringLabel *)self font];
    [font pointSize];
    v9 = [v7 victoryFontWithSize:1 style:?];
    [(CLKUIColoringLabel *)self->_outlineLabel setFont:v9];

    [(NTKVictoryLabel *)self->_outlineLabel setTextAlignment:[(NTKVictoryLabel *)self textAlignment]];
    [(NTKVictoryLabel *)self->_outlineLabel setDrawingRectOffset:self->_drawingRectOffset.dx, self->_drawingRectOffset.dy];
    text = [(NTKVictoryLabel *)self text];

    if (text)
    {
      text2 = [(NTKVictoryLabel *)self text];
      [(NTKVictoryLabel *)self->_outlineLabel setText:text2];
    }

    attributedText = [(NTKVictoryLabel *)self attributedText];

    if (attributedText)
    {
      attributedText2 = [(NTKVictoryLabel *)self attributedText];
      v14 = [(NTKVictoryLabel *)self outlinedLabelAttributedStringFromAttributedString:attributedText2];
      [(NTKVictoryLabel *)self->_outlineLabel setAttributedText:v14];
    }

    [(NTKVictoryLabel *)self addSubview:self->_outlineLabel];
    [(NTKVictoryLabel *)self _layoutOutlineLabelIfNeeded];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKVictoryLabel *)self setOutlineColor:clearColor];

    outlineLabel = self->_outlineLabel;
  }

  return outlineLabel;
}

- (void)setOutlineAlpha:(double)alpha
{
  outlineLabel = [(NTKVictoryLabel *)self outlineLabel];
  [outlineLabel setAlpha:alpha];

  [(NTKVictoryLabel *)self _layoutOutlineLabelIfNeeded];
}

+ (id)loadFonts:(double)fonts style:(unint64_t)style monospacedNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  v24[2] = *MEMORY[0x277D85DE8];
  if (loadFonts_style_monospacedNumbers__onceToken != -1)
  {
    +[NTKVictoryLabel loadFonts:style:monospacedNumbers:];
  }

  numbersCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%lu-%lu", style, fonts, numbersCopy];
  v10 = [__fontCache objectForKey:numbersCopy];
  if (!v10)
  {
    v11 = [self fontDescriptorWithVictoryStyle:style];
    if (numbersCopy)
    {
      v12 = *MEMORY[0x277D74388];
      v23[0] = *MEMORY[0x277D74398];
      v23[1] = v12;
      v24[0] = &unk_284186730;
      v24[1] = &unk_284186748;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v14 = *MEMORY[0x277D74338];
      v20 = v13;
      v21 = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v22 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v17 = [v11 fontDescriptorByAddingAttributes:v16];

      v11 = v17;
    }

    if (v11)
    {
      v10 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:fonts];
      [__fontCache setObject:v10 forKey:numbersCopy];
    }

    else
    {
      v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NTKVictoryLabel loadFonts:style style:v18 monospacedNumbers:?];
      }

      v10 = 0;
    }
  }

  return v10;
}

void __53__NTKVictoryLabel_loadFonts_style_monospacedNumbers___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = __fontCache;
  __fontCache = v0;
}

+ (id)fontDescriptorWithVictoryStyle:(unint64_t)style
{
  v3 = @"__VictoryFont2";
  if (style != 1)
  {
    v3 = 0;
  }

  if (style)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"__VictoryFont1";
  }

  return [NTKFontLoader fontDescriptorForSectName:v4];
}

- (void)drawTextInRect:(CGRect)rect
{
  if (self->_requiresDrawingRectAdjustments)
  {
    rect = CGRectOffset(rect, self->_drawingRectOffset.dx, self->_drawingRectOffset.dy);
  }

  v4.receiver = self;
  v4.super_class = NTKVictoryLabel;
  [(NTKVictoryLabel *)&v4 drawTextInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (CGVector)drawingRectOffset
{
  dx = self->_drawingRectOffset.dx;
  dy = self->_drawingRectOffset.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

+ (void)loadFonts:(uint64_t)a1 style:(NSObject *)a2 monospacedNumbers:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[NTKVictoryLabel loadFonts:style:monospacedNumbers:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%s Unable to load font descriptor for style %lu", &v2, 0x16u);
}

@end