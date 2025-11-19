@interface CLKUIColoringLabel
+ (id)labelWithOptions:(unint64_t)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)cachedSingleLineSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKFont)font;
- (CLKMonochromeFilterProvider)filterProvider;
- (CLKUIColoringLabel)initWithFrame:(CGRect)a3 options:(unint64_t)a4;
- (UIColor)overrideColor;
- (UIEdgeInsets)cachedOpticalEdgeInsets;
- (UIEdgeInsets)opticalInsets;
- (double)_firstLineBaseline;
- (double)_lastLineBaseline;
- (double)minimumWidth;
- (double)minimumWithFont:(id)a3;
- (double)minimumWithFont:(id)a3 smallCapsBaseFont:(id)a4;
- (double)widthForMaxWidth:(double)a3;
- (double)widthForMaxWidth:(double)a3 withFont:(id)a4;
- (double)widthForMaxWidth:(double)a3 withFont:(id)a4 smallCapsBaseFont:(id)a5;
- (void)_requeryTextProviderAndNotify:(BOOL)a3;
- (void)_setUpSnapshot;
- (void)_transitionTwoToneLabelToMonochromeWithFraction:(double)a3;
- (void)_updateDynamicTracking;
- (void)_updateTwoToneLabelMonochromeColor;
- (void)editingDidEnd;
- (void)setAttributedText:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setFontWithoutMonospacedNumbers:(id)a3;
- (void)setInTimeTravel:(BOOL)a3;
- (void)setMaxWidth:(double)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setParagraphStyle:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setSmallCapsBaseFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextProvider:(id)a3;
- (void)setTracking:(double)a3;
- (void)setUppercase:(BOOL)a3;
- (void)setUsesTextProviderTintColoring:(BOOL)a3;
- (void)sizeToFit;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3 style:(int64_t)a4;
- (void)updateMonochromeColorWithStyle:(int64_t)a3;
@end

@implementation CLKUIColoringLabel

+ (id)labelWithOptions:(unint64_t)a3
{
  v4 = [a1 alloc];
  v5 = [v4 initWithFrame:a3 options:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v5;
}

- (CLKUIColoringLabel)initWithFrame:(CGRect)a3 options:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = CLKUIColoringLabel;
  v5 = [(CLKUILegibilityLabel *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x1E695B530] sharedRenderingContext];
    v7 = [v6 device];
    device = v5->_device;
    v5->_device = v7;

    v5->_usesTextProviderSize = 1;
    v5->_options = a4;
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(CLKUIColoringLabel *)v5 setBackgroundColor:v9];

    v5->_maxWidth = 1.79769313e308;
    v5->_uppercase = 0;
    v5->_textSetExternally = 0;
    [(CLKUIColoringLabel *)v5 _updateDynamicTracking];
  }

  return v5;
}

- (double)_lastLineBaseline
{
  v3.receiver = self;
  v3.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v3 _lastLineBaseline];
  return result;
}

- (double)_firstLineBaseline
{
  v3.receiver = self;
  v3.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v3 _firstLineBaseline];
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5.receiver = self;
  v5.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v5 setBackgroundColor:v4];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKUIColoringLabel;
  v5 = [(CLKUIColoringLabel *)&v7 _shouldAnimatePropertyWithKey:v4]|| [(_CLKUIColorManager *)self->_colorManager shouldAnimatePropertyWithKey:v4];

  return v5;
}

- (UIColor)overrideColor
{
  overrideColor = self->_overrideColor;
  if (overrideColor)
  {
    v3 = overrideColor;
  }

  else
  {
    v3 = [(CLKTextProvider *)self->_textProvider tintColor];
  }

  return v3;
}

- (void)sizeToFit
{
  [(CLKUIColoringLabel *)self transform];
  if (CGAffineTransformIsIdentity(&v7))
  {
    [(CLKUIColoringLabel *)self frame];
    [(CLKUIColoringLabel *)self sizeThatFits:v3, v4];
    CLKPixelAlignRectForDevice();
    [(CLKUIColoringLabel *)self setFrame:?];
  }

  else
  {
    [(CLKUIColoringLabel *)self bounds];
    [(CLKUIColoringLabel *)self sizeThatFits:v5, v6];
    CLKPixelAlignRectForDevice();
    [(CLKUIColoringLabel *)self setBounds:?];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CLKUIColoringLabel *)self bounds];
  CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetWidth(v10);
  v8.receiver = self;
  v8.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v8 setBounds:x, y, width, height];
  if ((self->_options & 4) != 0 && (CLKFloatEqualsFloat() & 1) == 0)
  {
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:1];
  }
}

- (void)setInTimeTravel:(BOOL)a3
{
  if (self->_inTimeTravel != a3)
  {
    self->_inTimeTravel = a3;
    self->_updatedAfterTimeTravelStateChange = 0;
  }
}

- (void)setTextProvider:(id)a3
{
  v5 = a3;
  if (v5)
  {
    self->_textSetExternally = 0;
  }

  textProvider = self->_textProvider;
  if (textProvider == v5)
  {
    if (self->_inTimeTravel && [(CLKTextProvider *)v5 timeTravelUpdateFrequency]== 2 || !self->_updatedAfterTimeTravelStateChange && [(CLKTextProvider *)v5 timeTravelUpdateFrequency])
    {
      [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
    }
  }

  else
  {
    [(CLKTextProvider *)textProvider stopUpdatesForToken:self->_updateToken];
    updateToken = self->_updateToken;
    self->_updateToken = 0;

    objc_storeStrong(&self->_textProvider, a3);
    objc_initWeak(&location, self);
    v8 = [(CLKTextProvider *)v5 timeTravelUpdateFrequency]== 0;
    v9 = self->_textProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__CLKUIColoringLabel_setTextProvider___block_invoke;
    v12[3] = &unk_1E8762A58;
    objc_copyWeak(&v13, &location);
    v14 = v8;
    v10 = [(CLKTextProvider *)v9 startUpdatesWithHandler:v12];
    v11 = self->_updateToken;
    self->_updateToken = v10;

    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __38__CLKUIColoringLabel_setTextProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained inTimeTravel] || (*(a1 + 40) & 1) == 0)
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    [v2 _requeryTextProviderAndNotify:1];
  }
}

- (void)setUppercase:(BOOL)a3
{
  if (self->_uppercase != a3)
  {
    self->_uppercase = a3;
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setMaxWidth:(double)a3
{
  if (self->_maxWidth != a3)
  {
    self->_maxWidth = a3;
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setUsesTextProviderTintColoring:(BOOL)a3
{
  if (self->_usesTextProviderTintColoring != a3)
  {
    self->_usesTextProviderTintColoring = a3;
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setParagraphStyle:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_paragraphStyle] & 1) == 0)
  {
    v4 = [v6 copy];
    paragraphStyle = self->_paragraphStyle;
    self->_paragraphStyle = v4;

    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setTracking:(double)a3
{
  if (self->_tracking != a3)
  {
    self->_tracking = a3;
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setNumberOfLines:(int64_t)a3
{
  v5 = [(CLKUIColoringLabel *)self numberOfLines];
  v6.receiver = self;
  v6.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v6 setNumberOfLines:a3];
  if (v5 != a3)
  {
    [(CLKUIColoringLabel *)self _updateDynamicTracking];
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
    [(CLKUIColoringLabel *)self invalidateIntrinsicContentSize];
  }
}

- (void)_requeryTextProviderAndNotify:(BOOL)a3
{
  v3 = a3;
  v46[1] = *MEMORY[0x1E69E9840];
  v44 = *MEMORY[0x1E695F060];
  if (self->_textProvider)
  {
    nowProvider = self->_nowProvider;
    v38 = a3;
    if (nowProvider)
    {
      nowProvider[2](nowProvider, a2);
    }

    else
    {
      [MEMORY[0x1E695DF00] date];
    }
    v8 = ;
    v9 = [(CLKUIColoringLabel *)self font];
    v10 = v9;
    smallCapsBaseFont = self->_smallCapsBaseFont;
    if (!smallCapsBaseFont)
    {
      smallCapsBaseFont = v9;
    }

    v12 = smallCapsBaseFont;
    options = self->_options;
    CLKKernValueForDesignSpecTrackingValue();
    v39 = [MEMORY[0x1E695B568] otherAttributesWithParagraphStyle:self->_paragraphStyle kerning:?];
    v14 = MEMORY[0x1E695B568];
    uppercase = self->_uppercase;
    v16 = 0.0;
    if ((options & 2) != 0)
    {
      [(CLKUIColoringLabel *)self minimumScaleFactor];
    }

    v17 = [v14 styleWithFont:v10 smallCapsBaseFont:v12 uppercase:uppercase otherAttributes:v39 minimumScaleFactor:self->_usesTextProviderTintColoring shouldEmbedTintColor:v16];
    v18 = [(CLKUIColoringLabel *)self monospacedDigitsFont];
    [v17 setMonospacedDigitsFont:v18];

    if ((self->_options & 4) != 0)
    {
      [(CLKUIColoringLabel *)self bounds];
      Width = CGRectGetWidth(v47);
    }

    else
    {
      Width = self->_maxWidth;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(CLKTextProvider *)self->_textProvider textProviders];
    }

    else
    {
      v46[0] = self->_textProvider;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:{1, v12}];
    }

    v37 = v10;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v7 = 0;
      v24 = *v41;
      do
      {
        v25 = 0;
        v26 = v7;
        do
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v40 + 1) + 8 * v25);
          if ([(CLKUIColoringLabel *)self numberOfLines]== 1)
          {
            v28 = Width;
          }

          else
          {
            v28 = 1.79769313e308;
          }

          v7 = [v27 attributedTextAndSize:&v44 forMaxWidth:v17 withStyle:v8 now:v28];

          if ([(CLKUIColoringLabel *)self twoToneStyleInMonochrome])
          {
            v29 = [v7 copy];
            originalString = self->_originalString;
            self->_originalString = v29;

            if (fabs(self->_previousFraction + -1.0) >= 0.00000011920929)
            {
              [(CLKUIColoringLabel *)self _transitionTwoToneLabelToMonochromeWithFraction:0.0];
            }

            else
            {
              [(CLKUIColoringLabel *)self _updateTwoToneLabelMonochromeColor];
            }
          }

          else
          {
            [(CLKUIColoringLabel *)self setAttributedText:v7];
          }

          if ([(CLKUIColoringLabel *)self textDefinesTruncation])
          {
            if (![(CLKUIColoringLabel *)self isTextTruncated])
            {
              goto LABEL_38;
            }
          }

          else if (v44.width <= Width)
          {
            goto LABEL_38;
          }

          ++v25;
          v26 = v7;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v23);
    }

    else
    {
      v7 = 0;
    }

LABEL_38:

    v3 = v38;
  }

  else
  {
    if (self->_textSetExternally)
    {
      return;
    }

    v6 = self->_originalString;
    self->_originalString = 0;

    [(CLKUIColoringLabel *)self setAttributedText:0];
    v7 = 0;
  }

  if (self->_usesTextProviderSize && ([v7 string], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "rangeOfCharacterFromSet:", v32), v32, v31, v33 == 0x7FFFFFFFFFFFFFFFLL))
  {
    self->_cachedSingleLineSize = v44;
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  self->_cachedSizeIsValid = v34;
  self->_cachedOpticalEdgeInsetsIsValid = 0;
  if (v3)
  {
    needsResizeHandler = self->_needsResizeHandler;
    if (needsResizeHandler)
    {
      needsResizeHandler[2]();
    }
  }

  self->_updatedAfterTimeTravelStateChange = 1;
}

- (double)widthForMaxWidth:(double)a3
{
  v5 = [(CLKUIColoringLabel *)self font];
  [(CLKUIColoringLabel *)self widthForMaxWidth:v5 withFont:a3];
  v7 = v6;

  return v7;
}

- (double)widthForMaxWidth:(double)a3 withFont:(id)a4
{
  if (self->_smallCapsBaseFont)
  {
    smallCapsBaseFont = self->_smallCapsBaseFont;
  }

  else
  {
    smallCapsBaseFont = a4;
  }

  [(CLKUIColoringLabel *)self widthForMaxWidth:a4 withFont:smallCapsBaseFont smallCapsBaseFont:a3];
  return result;
}

- (double)widthForMaxWidth:(double)a3 withFont:(id)a4 smallCapsBaseFont:(id)a5
{
  v8 = a4;
  v9 = a5;
  nowProvider = self->_nowProvider;
  if (nowProvider)
  {
    nowProvider[2]();
  }

  else
  {
    [MEMORY[0x1E695DF00] date];
  }
  v11 = ;
  v18 = 0.0;
  v19 = 0;
  if (self->_textProvider && [(CLKUIColoringLabel *)self numberOfLines]== 1)
  {
    CLKKernValueForDesignSpecTrackingValue();
    v12 = [MEMORY[0x1E695B568] otherAttributesWithParagraphStyle:self->_paragraphStyle kerning:?];
    v13 = [MEMORY[0x1E695B568] styleWithFont:v8 smallCapsBaseFont:v9 uppercase:self->_uppercase otherAttributes:v12 minimumScaleFactor:self->_usesTextProviderTintColoring shouldEmbedTintColor:0.0];
    v14 = [(CLKTextProvider *)self->_textProvider attributedTextAndSize:&v18 forMaxWidth:v13 withStyle:v11 now:a3];

    v15 = v18;
  }

  else
  {
    [(CLKUIColoringLabel *)self sizeThatFits:a3, 1.79769313e308, *&v18, v19];
    v15 = v16;
  }

  return v15;
}

- (double)minimumWidth
{
  v3 = [(CLKUIColoringLabel *)self font];
  [(CLKUIColoringLabel *)self minimumWithFont:v3];
  v5 = v4;

  return v5;
}

- (double)minimumWithFont:(id)a3
{
  if (self->_smallCapsBaseFont)
  {
    smallCapsBaseFont = self->_smallCapsBaseFont;
  }

  else
  {
    smallCapsBaseFont = a3;
  }

  [(CLKUIColoringLabel *)self minimumWithFont:a3 smallCapsBaseFont:smallCapsBaseFont];
  return result;
}

- (double)minimumWithFont:(id)a3 smallCapsBaseFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  nowProvider = self->_nowProvider;
  if (nowProvider)
  {
    nowProvider[2]();
  }

  else
  {
    [MEMORY[0x1E695DF00] date];
  }
  v9 = ;
  if (self->_textProvider && [(CLKUIColoringLabel *)self numberOfLines]== 1)
  {
    CLKKernValueForDesignSpecTrackingValue();
    v10 = [MEMORY[0x1E695B568] otherAttributesWithParagraphStyle:self->_paragraphStyle kerning:?];
    v11 = [MEMORY[0x1E695B568] styleWithFont:v6 smallCapsBaseFont:v7 uppercase:self->_uppercase otherAttributes:v10 minimumScaleFactor:self->_usesTextProviderTintColoring shouldEmbedTintColor:0.0];
    [(CLKTextProvider *)self->_textProvider minimumSizeWithStyle:v11 now:v9];
    v13 = v12;
  }

  else
  {
    [(CLKUIColoringLabel *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v13 = v14;
  }

  return v13;
}

- (UIEdgeInsets)opticalInsets
{
  if ([(CLKUIColoringLabel *)self numberOfLines]== 1 && self->_cachedSizeIsValid && self->_cachedOpticalEdgeInsetsIsValid)
  {
    top = self->_cachedOpticalEdgeInsets.top;
    left = self->_cachedOpticalEdgeInsets.left;
    bottom = self->_cachedOpticalEdgeInsets.bottom;
    right = self->_cachedOpticalEdgeInsets.right;
  }

  else
  {
    v7 = [(CLKUIColoringLabel *)self _stringDrawingContext];
    v8 = [(CLKUIColoringLabel *)self attributedText];
    [(CLKUIColoringLabel *)self bounds];
    [v8 boundingRectWithSize:9 options:v7 context:{v9, v10}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    top = *MEMORY[0x1E69DDCE0];
    bottom = *(MEMORY[0x1E69DDCE0] + 16);
    CLKFloorForDevice();
    left = v19;
    [(CLKUIColoringLabel *)self bounds];
    Width = CGRectGetWidth(v26);
    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v16;
    v27.size.height = v18;
    CGRectGetWidth(v27);
    CLKCeilForDevice();
    right = Width - v21 - left;
    if ([(CLKUIColoringLabel *)self numberOfLines]== 1)
    {
      self->_cachedOpticalEdgeInsets.top = top;
      self->_cachedOpticalEdgeInsets.left = left;
      self->_cachedOpticalEdgeInsets.bottom = bottom;
      self->_cachedOpticalEdgeInsets.right = right;
      self->_cachedOpticalEdgeInsetsIsValid = 1;
    }
  }

  v22 = top;
  v23 = left;
  v24 = bottom;
  v25 = right;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(CLKUIColoringLabel *)self numberOfLines]== 1)
  {
    p_cachedSingleLineSize = &self->_cachedSingleLineSize;
    if (self->_cachedSizeIsValid)
    {
      v7 = p_cachedSingleLineSize->width;
      v8 = self->_cachedSingleLineSize.height;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CLKUIColoringLabel;
      [(CLKUIColoringLabel *)&v10 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      p_cachedSingleLineSize->width = v7;
      self->_cachedSingleLineSize.height = v8;
      self->_cachedSizeIsValid = 1;
      self->_cachedOpticalEdgeInsetsIsValid = 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CLKUIColoringLabel;
    [(CLKUIColoringLabel *)&v9 sizeThatFits:width, height];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CLKFont)font
{
  font = self->_font;
  if (font)
  {
    v3 = font;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CLKUIColoringLabel;
    v3 = [(CLKUIColoringLabel *)&v5 font];
  }

  return v3;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    v7.receiver = self;
    v7.super_class = CLKUIColoringLabel;
    [(CLKUIColoringLabel *)&v7 setFont:v5];
    v6 = [(CLKFont *)self->_font CLKFontWithMonospacedNumbers];
    [(CLKUIColoringLabel *)self setMonospacedDigitsFont:v6];

    [(CLKUIColoringLabel *)self invalidateCachedSize];
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setFontWithoutMonospacedNumbers:(id)a3
{
  v5 = a3;
  if (![v5 isEqual:self->_font] || (-[CLKUIColoringLabel monospacedDigitsFont](self, "monospacedDigitsFont"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    objc_storeStrong(&self->_font, a3);
    v7.receiver = self;
    v7.super_class = CLKUIColoringLabel;
    [(CLKUIColoringLabel *)&v7 setFont:v5];
    [(CLKUIColoringLabel *)self setMonospacedDigitsFont:0];
    [(CLKUIColoringLabel *)self invalidateCachedSize];
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setSmallCapsBaseFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_smallCapsBaseFont] & 1) == 0)
  {
    objc_storeStrong(&self->_smallCapsBaseFont, a3);
    [(CLKUIColoringLabel *)self invalidateCachedSize];
    [(CLKUIColoringLabel *)self _requeryTextProviderAndNotify:0];
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_textProvider)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  self->_textSetExternally = v5;
LABEL_6:
  v6 = [(CLKUIColoringLabel *)self text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(CLKUIColoringLabel *)self invalidateCachedSize];
  }

  v8.receiver = self;
  v8.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v8 setText:v4];
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_textProvider)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  self->_textSetExternally = v5;
LABEL_6:
  v6 = [(CLKUIColoringLabel *)self attributedText];
  v7 = [v4 isEqualToAttributedString:v6];

  if ((v7 & 1) == 0)
  {
    [(CLKUIColoringLabel *)self invalidateCachedSize];
  }

  v8.receiver = self;
  v8.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v8 setAttributedText:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v4 traitCollectionDidChange:a3];
  [(CLKUIColoringLabel *)self invalidateCachedSize];
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CLKUIColoringLabel *)self shadowOffset];
  if (width != v7 || height != v6)
  {
    [(CLKUIColoringLabel *)self invalidateCachedSize];
  }

  v9.receiver = self;
  v9.super_class = CLKUIColoringLabel;
  [(CLKUIColoringLabel *)&v9 setShadowOffset:width, height];
}

- (void)_updateDynamicTracking
{
  v3 = [(CLKUIColoringLabel *)self numberOfLines]== 1 && (self->_options & 1) == 0;

  [(CLKUIColoringLabel *)self setAllowsDefaultTighteningForTruncation:v3];
}

- (void)transitionToMonochromeWithFraction:(double)a3 style:(int64_t)a4
{
  if ([(CLKUIColoringLabel *)self twoToneStyleInMonochrome])
  {
    [(CLKUIColoringLabel *)self _transitionTwoToneLabelToMonochromeWithFraction:a3];
  }

  else
  {
    v7 = [(CLKUIColoringLabel *)self text];
    v8 = [v7 _containsEmoji];

    if (v8)
    {
      if (fabs(a3) < 0.00000011920929)
      {
        [(CLKUIColoringLabel *)self setUsesTextProviderTintColoring:1];
        [(CLKUIColoringLabel *)self _setAnimationAlpha:1.0];
        [(UIView *)self->_snapshot setAlpha:0.0];
      }

      a4 = CLKUIAssociatedDesaturatedType(a4);
    }

    v9 = [(CLKUIColoringLabel *)self filterProvider];
    v10 = [v9 filtersForView:self style:a4 fraction:a3];

    if (v10)
    {
      v11 = [(CLKUIColoringLabel *)self layer];
      [v11 setFilters:v10];
    }
  }

  self->_previousFraction = a3;
}

- (void)_transitionTwoToneLabelToMonochromeWithFraction:(double)a3
{
  v5 = [(CLKUIColoringLabel *)self layer];
  [v5 setFilters:MEMORY[0x1E695E0F0]];

  if (fabs(a3) >= 0.00000011920929)
  {
    WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
    v8 = [WeakRetained colorForView:self accented:1];
    v9 = [WeakRetained colorForView:self accented:0];
    v10 = [(NSAttributedString *)self->_originalString mutableCopy];
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      originalString = self->_originalString;
      v13 = *MEMORY[0x1E69DB650];
      v14 = [(NSAttributedString *)originalString length];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__CLKUIColoringLabel__transitionTwoToneLabelToMonochromeWithFraction___block_invoke;
      v16[3] = &unk_1E8762A80;
      v16[4] = self;
      v17 = v8;
      v20 = a3;
      v18 = v10;
      v19 = v9;
      [(NSAttributedString *)originalString enumerateAttribute:v13 inRange:0 options:v14 usingBlock:0, v16];
    }

    v15 = [v10 copy];
    [(CLKUIColoringLabel *)self setAttributedText:v15];
  }

  else
  {
    v6 = self->_originalString;

    [(CLKUIColoringLabel *)self setAttributedText:v6];
  }
}

void __70__CLKUIColoringLabel__transitionTwoToneLabelToMonochromeWithFraction___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v17 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
  }

  if ([*(a1 + 32) twoToneStyleInMonochrome] == 1)
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v7 _isSimilarToColor:v8 withinPercentage:0.001];

    v10 = v9 == 0;
    v11 = 40;
    v12 = 56;
  }

  else
  {
    if ([*(a1 + 32) twoToneStyleInMonochrome] != 2)
    {
      goto LABEL_10;
    }

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [v7 _isSimilarToColor:v13 withinPercentage:0.001];

    v10 = v14 == 0;
    v11 = 56;
    v12 = 40;
  }

  if (!v10)
  {
    v11 = v12;
  }

  v15 = *(a1 + 64);
  v16 = CLKUIInterpolateBetweenColors(v7, *(a1 + v11), v15);
  [*(a1 + 48) addAttribute:*MEMORY[0x1E69DB650] value:v16 range:{a3, a4}];

LABEL_10:
}

- (void)updateMonochromeColorWithStyle:(int64_t)a3
{
  if ([(CLKUIColoringLabel *)self twoToneStyleInMonochrome])
  {
    [(CLKUIColoringLabel *)self _updateTwoToneLabelMonochromeColor];
  }

  else
  {
    v5 = [(CLKUIColoringLabel *)self text];
    v6 = [v5 _containsEmoji];

    if (v6)
    {
      [(CLKUIColoringLabel *)self setUsesTextProviderTintColoring:0];
      [(CLKUIColoringLabel *)self _setAnimationAlpha:1.0];
      [(UIView *)self->_snapshot setAlpha:0.0];
      a3 = CLKUIAssociatedDesaturatedType(a3);
    }

    v7 = [(CLKUIColoringLabel *)self filterProvider];
    v8 = [v7 filtersForView:self style:a3];

    if (v8)
    {
      v9 = [(CLKUIColoringLabel *)self layer];
      [v9 setFilters:v8];
    }
  }

  self->_previousFraction = 1.0;
}

- (void)_updateTwoToneLabelMonochromeColor
{
  v3 = [(CLKUIColoringLabel *)self layer];
  [v3 setFilters:MEMORY[0x1E695E0F0]];

  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v5 = [WeakRetained interpolatedColorForView:self];

  v6 = objc_loadWeakRetained(&self->_filterProvider);
  v7 = [v6 colorForView:self accented:0];

  v8 = [(NSAttributedString *)self->_originalString mutableCopy];
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    originalString = self->_originalString;
    v11 = *MEMORY[0x1E69DB650];
    v12 = [(NSAttributedString *)originalString length];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __56__CLKUIColoringLabel__updateTwoToneLabelMonochromeColor__block_invoke;
    v17 = &unk_1E8762AA8;
    v18 = self;
    v19 = v8;
    v20 = v5;
    v21 = v7;
    [(NSAttributedString *)originalString enumerateAttribute:v11 inRange:0 options:v12 usingBlock:0, &v14];
  }

  v13 = [v8 copy];
  [(CLKUIColoringLabel *)self setAttributedText:v13];
}

void __56__CLKUIColoringLabel__updateTwoToneLabelMonochromeColor__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v15 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
  }

  if ([*(a1 + 32) twoToneStyleInMonochrome] != 1)
  {
    if ([*(a1 + 32) twoToneStyleInMonochrome] != 2)
    {
      goto LABEL_10;
    }

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [v7 _isSimilarToColor:v13 withinPercentage:0.001];

    v10 = *(a1 + 40);
    v11 = *MEMORY[0x1E69DB650];
    if ((v14 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = *(a1 + 48);
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [v7 _isSimilarToColor:v8 withinPercentage:0.001];

  v10 = *(a1 + 40);
  v11 = *MEMORY[0x1E69DB650];
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v12 = *(a1 + 56);
LABEL_9:
  [v10 addAttribute:v11 value:v12 range:{a3, a4}];
LABEL_10:
}

- (void)editingDidEnd
{
  [(CLKUIColoringLabel *)self _setAnimationAlpha:1.0];
  [(UIView *)self->_snapshot removeFromSuperview];
  snapshot = self->_snapshot;
  self->_snapshot = 0;
}

- (void)_setUpSnapshot
{
  v3 = [(CLKUIColoringLabel *)self snapshotViewAfterScreenUpdates:0];
  snapshot = self->_snapshot;
  self->_snapshot = v3;

  [(CLKUIColoringLabel *)self frame];
  v5 = self->_snapshot;

  [(UIView *)v5 setFrame:?];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (CGSize)cachedSingleLineSize
{
  width = self->_cachedSingleLineSize.width;
  height = self->_cachedSingleLineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)cachedOpticalEdgeInsets
{
  top = self->_cachedOpticalEdgeInsets.top;
  left = self->_cachedOpticalEdgeInsets.left;
  bottom = self->_cachedOpticalEdgeInsets.bottom;
  right = self->_cachedOpticalEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end