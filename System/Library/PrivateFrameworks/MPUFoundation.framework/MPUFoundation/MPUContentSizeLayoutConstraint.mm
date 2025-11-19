@interface MPUContentSizeLayoutConstraint
+ (id)constraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 autoupdatingConstantFromLabel:(id)a9 textStyle:(id)a10 numberOfLines:(unint64_t)a11;
+ (id)contentSizeAutoupdatingConstraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 textStyle:(id)a9 defaultSizeConstant:(double)a10;
- (void)_updatePreferredContentSize;
- (void)setDefaultSizeConstant:(double)a3;
- (void)setFontSizeMultiplier:(double)a3;
- (void)setTextStyle:(id)a3;
@end

@implementation MPUContentSizeLayoutConstraint

+ (id)contentSizeAutoupdatingConstraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 textStyle:(id)a9 defaultSizeConstant:(double)a10
{
  v18 = a9;
  v19 = [a1 constraintWithItem:a3 attribute:a4 relatedBy:a5 toItem:a6 attribute:a7 multiplier:a8 constant:0.0];
  *(v19 + 128) = a10;
  *(v19 + 96) = 1;
  [v19 setTextStyle:v18];

  return v19;
}

+ (id)constraintWithItem:(id)a3 attribute:(int64_t)a4 relatedBy:(int64_t)a5 toItem:(id)a6 attribute:(int64_t)a7 multiplier:(double)a8 autoupdatingConstantFromLabel:(id)a9 textStyle:(id)a10 numberOfLines:(unint64_t)a11
{
  v18 = a9;
  v19 = a10;
  v20 = [a1 constraintWithItem:a3 attribute:a4 relatedBy:a5 toItem:a6 attribute:a7 multiplier:a8 constant:0.0];
  *(v20 + 120) = 0x3FF0000000000000;
  *(v20 + 104) = a11;
  v21 = *(v20 + 112);
  *(v20 + 112) = v18;

  *(v20 + 97) = 1;
  [v20 setTextStyle:v19];

  return v20;
}

- (void)setFontSizeMultiplier:(double)a3
{
  if (self->_fontSizeMultiplier != a3)
  {
    self->_fontSizeMultiplier = a3;
    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)setTextStyle:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_textStyle isEqualToString:v4])
  {
    v5 = [v4 copy];
    textStyle = self->_textStyle;
    self->_textStyle = v5;

    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:v4];
    [v7 _bodyLeading];
    self->_textStyleDefaultLeading = v8;

    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }

  if (!self->_preferredContentSizeDidChangeObserver)
  {
    objc_initWeak(&location, self);
    v9 = [MEMORY[0x277CCABD8] mainQueue];
    v10 = *MEMORY[0x277D76810];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__MPUContentSizeLayoutConstraint_setTextStyle___block_invoke;
    v13[3] = &unk_27984C6D0;
    objc_copyWeak(&v14, &location);
    v11 = [MPUNotificationObserver observerWithName:v10 object:0 queue:v9 observationHandler:v13];
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

- (void)setDefaultSizeConstant:(double)a3
{
  if (self->_defaultSizeConstant != a3)
  {
    self->_defaultSizeConstant = a3;
    [(MPUContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)_updatePreferredContentSize
{
  v3 = MEMORY[0x277D74300];
  v4 = [(MPUContentSizeLayoutConstraint *)self textStyle];
  v29 = [v3 preferredFontForTextStyle:v4];

  [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
  if (v5 > 0.00000011920929)
  {
    [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
    if (fabs(v6 + -1.0) > 0.00000011920929)
    {
      v7 = MEMORY[0x277D74300];
      v8 = MEMORY[0x277D74310];
      v9 = [(MPUContentSizeLayoutConstraint *)self textStyle];
      v10 = [v8 preferredFontDescriptorWithTextStyle:v9];
      [v29 pointSize];
      v12 = v11;
      [(MPUContentSizeLayoutConstraint *)self fontSizeMultiplier];
      v14 = [v7 fontWithDescriptor:v10 size:ceil(v12 * v13)];

      v29 = v14;
    }
  }

  v15 = [(MPUContentSizeLayoutConstraint *)self firstItem];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 viewForLastBaselineLayout];
  }

  else
  {
    v16 = 0;
  }

  if ([v16 conformsToProtocol:&unk_2868FCA48] && (objc_msgSend(v16, "MPU_contentSizeUpdater"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [v17 ensureTextStyleFontsMatchPreferredTextStyleFonts];
    if (objc_opt_respondsToSelector())
    {
      v19 = [v16 attributedText];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
        if ([v20 length])
        {
          v21 = [v20 MPU_tallestFontFromAttributes];

          v29 = v21;
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
      [v16 setFont:v29];
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
    v25 = [(UILabel *)v24 text];
    v26 = [MEMORY[0x277CCAB68] string];
    if (self->_numberOfLines)
    {
      v27 = 0;
      do
      {
        [v26 appendString:@"x\n"];
        ++v27;
      }

      while (v27 < self->_numberOfLines);
    }

    [(UILabel *)v24 setFont:v29];
    [(UILabel *)v24 setNumberOfLines:self->_numberOfLines];
    [(UILabel *)v24 setText:v26];
    [(UILabel *)v24 intrinsicContentSize];
    [(MPUContentSizeLayoutConstraint *)self setConstant:v28];
    [(UILabel *)v24 setText:v25];
  }
}

@end