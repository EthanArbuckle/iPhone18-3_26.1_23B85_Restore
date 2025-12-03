@interface MPUContentSizeLayoutConstraint
+ (id)constraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier autoupdatingConstantFromLabel:(id)label textStyle:(id)self0 numberOfLines:(unint64_t)self1;
+ (id)contentSizeAutoupdatingConstraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier textStyle:(id)style defaultSizeConstant:(double)self0;
- (void)_updatePreferredContentSize;
- (void)setDefaultSizeConstant:(double)constant;
- (void)setFontSizeMultiplier:(double)multiplier;
- (void)setTextStyle:(id)style;
@end

@implementation MPUContentSizeLayoutConstraint

+ (id)contentSizeAutoupdatingConstraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier textStyle:(id)style defaultSizeConstant:(double)self0
{
  styleCopy = style;
  v19 = [self constraintWithItem:item attribute:attribute relatedBy:by toItem:toItem attribute:a7 multiplier:multiplier constant:0.0];
  *(v19 + 128) = constant;
  *(v19 + 96) = 1;
  [v19 setTextStyle:styleCopy];

  return v19;
}

+ (id)constraintWithItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a7 multiplier:(double)multiplier autoupdatingConstantFromLabel:(id)label textStyle:(id)self0 numberOfLines:(unint64_t)self1
{
  labelCopy = label;
  styleCopy = style;
  v20 = [self constraintWithItem:item attribute:attribute relatedBy:by toItem:toItem attribute:a7 multiplier:multiplier constant:0.0];
  *(v20 + 120) = 0x3FF0000000000000;
  *(v20 + 104) = lines;
  v21 = *(v20 + 112);
  *(v20 + 112) = labelCopy;

  *(v20 + 97) = 1;
  [v20 setTextStyle:styleCopy];

  return v20;
}

- (void)setFontSizeMultiplier:(double)multiplier
{
  if (self->_fontSizeMultiplier != multiplier)
  {
    self->_fontSizeMultiplier = multiplier;
    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)setTextStyle:(id)style
{
  styleCopy = style;
  if (![(NSString *)self->_textStyle isEqualToString:styleCopy])
  {
    v5 = [styleCopy copy];
    textStyle = self->_textStyle;
    self->_textStyle = v5;

    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:styleCopy];
    [v7 _bodyLeading];
    self->_textStyleDefaultLeading = v8;

    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }

  if (!self->_preferredContentSizeDidChangeObserver)
  {
    objc_initWeak(&location, self);
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v10 = *MEMORY[0x277D76810];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__MPUContentSizeLayoutConstraint_setTextStyle___block_invoke;
    v13[3] = &unk_27984C6D0;
    objc_copyWeak(&v14, &location);
    v11 = [MPUNotificationObserver observerWithName:v10 object:0 queue:mainQueue observationHandler:v13];
    preferredContentSizeDidChangeObserver = self->_preferredContentSizeDidChangeObserver;
    self->_preferredContentSizeDidChangeObserver = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __47__MPUContentSizeLayoutConstraint_setTextStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);
  [v4 _updatePreferredContentSize];

  objc_destroyWeak(&to);
}

- (void)setDefaultSizeConstant:(double)constant
{
  if (self->_defaultSizeConstant != constant)
  {
    self->_defaultSizeConstant = constant;
    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)_updatePreferredContentSize
{
  v3 = MEMORY[0x277D74300];
  textStyle = [(MPUContentSizeLayoutConstraint *)self textStyle];
  v29 = [v3 preferredFontForTextStyle:textStyle];

  [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
  if (v5 > 0.00000011920929)
  {
    [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
    if (fabs(v6 + -1.0) > 0.00000011920929)
    {
      v7 = MEMORY[0x277D74300];
      v8 = MEMORY[0x277D74310];
      textStyle2 = [(MPUContentSizeLayoutConstraint *)self textStyle];
      v10 = [v8 preferredFontDescriptorWithTextStyle:textStyle2];
      [v29 pointSize];
      v12 = v11;
      [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
      v14 = [v7 fontWithDescriptor:v10 size:ceil(v12 * v13)];

      v29 = v14;
    }
  }

  firstItem = [(MPUContentSizeLayoutConstraint *)self firstItem];
  if (objc_opt_respondsToSelector())
  {
    viewForLastBaselineLayout = [firstItem viewForLastBaselineLayout];
  }

  else
  {
    viewForLastBaselineLayout = 0;
  }

  if ([viewForLastBaselineLayout conformsToProtocol:&unk_2868FCA48] && (objc_msgSend(viewForLastBaselineLayout, "MPU_contentSizeUpdater"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [v17 ensureTextStyleFontsMatchPreferredTextStyleFonts];
    if (objc_opt_respondsToSelector())
    {
      attributedText = [viewForLastBaselineLayout attributedText];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = attributedText;
        if ([v20 length])
        {
          mPU_tallestFontFromAttributes = [v20 MPU_tallestFontFromAttributes];

          v29 = mPU_tallestFontFromAttributes;
        }
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [viewForLastBaselineLayout setFont:v29];
    }

    v18 = 0;
  }

  if (self->_isBaselineConstraint)
  {
    [(MPUContentSizeLayoutConstraint *)self defaultSizeConstant];
    textStyleDefaultLeading = v22;
    if (MPUFloatEqualToFloat(v22, 0.0))
    {
      textStyleDefaultLeading = self->_textStyleDefaultLeading;
    }

    [v29 _scaledValueForValue:textStyleDefaultLeading];
    [(MPUContentSizeLayoutConstraint *)self setConstant:?];
  }

  if (self->_isLineNumberConstraint)
  {
    v24 = self->_targetLabel;
    text = [(UILabel *)v24 text];
    string = [MEMORY[0x277CCAB68] string];
    if (self->_numberOfLines)
    {
      v27 = 0;
      do
      {
        [string appendString:@"x\n"];
        ++v27;
      }

      while (v27 < self->_numberOfLines);
    }

    [(UILabel *)v24 setFont:v29];
    [(UILabel *)v24 setNumberOfLines:self->_numberOfLines];
    [(UILabel *)v24 setText:string];
    [(UILabel *)v24 intrinsicContentSize];
    [(MPUContentSizeLayoutConstraint *)self setConstant:v28];
    [(UILabel *)v24 setText:text];
  }
}

@end