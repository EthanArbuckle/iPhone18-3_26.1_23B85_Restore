@interface CSStatusTextView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSStatusTextView)initWithFrame:(CGRect)frame;
- (double)_lineHeightOfNonLegalLabels;
- (double)_nonLegalTextParagraphSpacing;
- (double)_spacingBetweenNonLegalLabels;
- (void)_updateDeviceInformationLabel;
- (void)_updateInternalLegalLabel;
- (void)_updateLegibilityStrength;
- (void)_updateProvisionalEnrollmentLabel;
- (void)_updateSupervisionLabel;
- (void)_updateTextViews;
- (void)_updateTextViewsIfNecessary;
- (void)layoutSubviews;
- (void)setDeviceInformationText:(id)text;
- (void)setInternalLegalText:(id)text;
- (void)setLegibilitySettings:(id)settings;
- (void)setProvisionalEnrollmentText:(id)text;
- (void)setSupervisionText:(id)text;
- (void)updateTextsWithBlock:(id)block;
@end

@implementation CSStatusTextView

- (CSStatusTextView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CSStatusTextView;
  v3 = [(CSStatusTextView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];
    legibilitySettings = v3->_legibilitySettings;
    v3->_legibilitySettings = v4;

    rootSettings = [MEMORY[0x277D65E90] rootSettings];
    [rootSettings statusTextStrengthForStyle:2];
    v3->_strength = v7;

    v8 = [objc_alloc(MEMORY[0x277D67CF8]) initWithSettings:v3->_legibilitySettings strength:v3->_strength];
    supervisionLabel = v3->_supervisionLabel;
    v3->_supervisionLabel = v8;

    [(SBUILegibilityLabel *)v3->_supervisionLabel setHidden:1];
    [(SBUILegibilityLabel *)v3->_supervisionLabel setOptions:2];
    v10 = [objc_alloc(MEMORY[0x277D67CF8]) initWithSettings:v3->_legibilitySettings strength:v3->_strength];
    provisionalEnrollmentLabel = v3->_provisionalEnrollmentLabel;
    v3->_provisionalEnrollmentLabel = v10;

    [(SBUILegibilityLabel *)v3->_provisionalEnrollmentLabel setHidden:1];
    [(SBUILegibilityLabel *)v3->_provisionalEnrollmentLabel setOptions:2];
    v12 = [objc_alloc(MEMORY[0x277D67CF8]) initWithSettings:v3->_legibilitySettings strength:v3->_strength];
    deviceInformationLabel = v3->_deviceInformationLabel;
    v3->_deviceInformationLabel = v12;

    [(SBUILegibilityLabel *)v3->_deviceInformationLabel setHidden:1];
    [(SBUILegibilityLabel *)v3->_deviceInformationLabel setOptions:2];
  }

  return v3;
}

- (void)setSupervisionText:(id)text
{
  if (self->_supervisionText != text)
  {
    v4 = [text copy];
    supervisionText = self->_supervisionText;
    self->_supervisionText = v4;

    [(CSStatusTextView *)self _updateTextViewsIfNecessary];
  }
}

- (void)setProvisionalEnrollmentText:(id)text
{
  if (self->_provisionalEnrollmentText != text)
  {
    v4 = [text copy];
    provisionalEnrollmentText = self->_provisionalEnrollmentText;
    self->_provisionalEnrollmentText = v4;

    [(CSStatusTextView *)self _updateTextViewsIfNecessary];
  }
}

- (void)setDeviceInformationText:(id)text
{
  if (self->_deviceInformationText != text)
  {
    v4 = [text copy];
    deviceInformationText = self->_deviceInformationText;
    self->_deviceInformationText = v4;

    [(CSStatusTextView *)self _updateTextViewsIfNecessary];
  }
}

- (void)setInternalLegalText:(id)text
{
  if (self->_internalLegalText != text)
  {
    v4 = [text copy];
    internalLegalText = self->_internalLegalText;
    self->_internalLegalText = v4;

    [(CSStatusTextView *)self _updateTextViewsIfNecessary];
  }
}

- (void)updateTextsWithBlock:(id)block
{
  transactionCount = self->_transactionCount;
  self->_transactionCount = transactionCount + 1;
  if (block)
  {
    (*(block + 2))(block, a2);
    transactionCount = self->_transactionCount - 1;
  }

  self->_transactionCount = transactionCount;

  [(CSStatusTextView *)self _updateTextViewsIfNecessary];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = MEMORY[0x277D76C78];
  if (self->_supervisionText)
  {
    [(SBUILegibilityLabel *)self->_supervisionLabel systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  }

  else if (!self->_deviceInformationText)
  {
    if (self->_internalLegalText)
    {
      [(SBUILegibilityLabel *)self->_internalLegalTextLabel sizeThatFits:fits.width, fits.height];
      v8 = v12;
    }

    else
    {
      width = *MEMORY[0x277CBF3A8];
      v8 = *(MEMORY[0x277CBF3A8] + 8);
    }

    goto LABEL_10;
  }

  if (self->_provisionalEnrollmentText)
  {
    [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel systemLayoutSizeFittingSize:*v6, v6[1]];
  }

  if (self->_deviceInformationText)
  {
    [(SBUILegibilityLabel *)self->_deviceInformationLabel systemLayoutSizeFittingSize:*v6, v6[1]];
  }

  [(CSStatusTextView *)self _spacingBetweenNonLegalLabels];
  SBFMainScreenScale();
  BSFloatCeilForScale();
  v8 = v7;
  if (self->_internalLegalText)
  {
    [(SBUILegibilityLabel *)self->_internalLegalTextLabel sizeThatFits:width, height];
    v8 = v8 + v9 + 2.0;
  }

LABEL_10:
  v10 = width;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  [(CSStatusTextView *)self bounds];
  v4 = v3;
  [(SBUILegibilityLabel *)self->_internalLegalTextLabel sizeThatFits:v5, v3];
  SBFMainScreenScale();
  v26 = v6;
  UIRectCenteredXInRectScale();
  v8 = v7;
  [(SBUILegibilityLabel *)self->_internalLegalTextLabel setFrame:v26];
  v9 = MEMORY[0x277D76C78];
  if (self->_provisionalEnrollmentText)
  {
    [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    v11 = v10;
  }

  else
  {
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_supervisionText)
  {
    [(SBUILegibilityLabel *)self->_supervisionLabel systemLayoutSizeFittingSize:*v9, v9[1]];
    v13 = v12;
  }

  else
  {
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_deviceInformationText)
  {
    [(SBUILegibilityLabel *)self->_deviceInformationLabel systemLayoutSizeFittingSize:*v9, v9[1]];
    v30 = v14;
  }

  else
  {
    v30 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_internalLegalText)
  {
    v15 = v4 - v8 + -2.0;
  }

  else
  {
    v15 = v4;
  }

  SBFMainScreenScale();
  v27 = v16;
  UIRectCenteredXInRectScale();
  [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel setFrame:v27];
  provisionalEnrollmentLabel = self->_provisionalEnrollmentLabel;
  if (self->_provisionalEnrollmentText && v11 <= v15)
  {
    [(SBUILegibilityLabel *)provisionalEnrollmentLabel setHidden:0];
    [(CSStatusTextView *)self _spacingBetweenNonLegalLabels];
    v15 = v15 - (v11 + v18);
  }

  else
  {
    [(SBUILegibilityLabel *)provisionalEnrollmentLabel setHidden:1];
  }

  SBFMainScreenScale();
  v28 = v19;
  UIRectCenteredXInRectScale();
  [(SBUILegibilityLabel *)self->_supervisionLabel setFrame:v28];
  supervisionLabel = self->_supervisionLabel;
  if (self->_supervisionText && v13 <= v15)
  {
    [(SBUILegibilityLabel *)supervisionLabel setHidden:0];
    [(CSStatusTextView *)self _spacingBetweenNonLegalLabels];
    v15 = v15 - (v13 + v21);
  }

  else
  {
    [(SBUILegibilityLabel *)supervisionLabel setHidden:1];
  }

  SBFMainScreenScale();
  v29 = v22;
  UIRectCenteredXInRectScale();
  [(SBUILegibilityLabel *)self->_deviceInformationLabel setFrame:v29];
  v24 = v30 > v15 || self->_deviceInformationText == 0;
  deviceInformationLabel = self->_deviceInformationLabel;

  [(SBUILegibilityLabel *)deviceInformationLabel setHidden:v24];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![settingsCopy style])
  {
    v5 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];

    settingsCopy = v5;
  }

  legibilitySettings = self->_legibilitySettings;
  self->_legibilitySettings = settingsCopy;
  v7 = settingsCopy;

  [(SBUILegibilityLabel *)self->_supervisionLabel setLegibilitySettings:self->_legibilitySettings];
  [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel setLegibilitySettings:self->_legibilitySettings];
  [(SBUILegibilityLabel *)self->_deviceInformationLabel setLegibilitySettings:self->_legibilitySettings];
  [(SBUILegibilityLabel *)self->_internalLegalTextLabel setLegibilitySettings:self->_legibilitySettings];

  [(CSStatusTextView *)self _updateLegibilityStrength];
}

- (void)_updateTextViewsIfNecessary
{
  if (!self->_transactionCount)
  {
    [(CSStatusTextView *)self _updateTextViews];
  }
}

- (void)_updateTextViews
{
  [(CSStatusTextView *)self _updateInternalLegalLabel];
  [(CSStatusTextView *)self _updateSupervisionLabel];
  [(CSStatusTextView *)self _updateProvisionalEnrollmentLabel];
  [(CSStatusTextView *)self _updateDeviceInformationLabel];

  [(CSStatusTextView *)self setNeedsLayout];
}

- (void)_updateLegibilityStrength
{
  style = [(_UILegibilitySettings *)self->_legibilitySettings style];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  [rootSettings statusTextStrengthForStyle:style];
  v6 = v5;

  [(CSStatusTextView *)self setStrength:v6];
  [(SBUILegibilityLabel *)self->_internalLegalTextLabel setStrength:self->_strength];
  [(SBUILegibilityLabel *)self->_supervisionLabel setStrength:self->_strength];
  [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel setStrength:self->_strength];
  deviceInformationLabel = self->_deviceInformationLabel;
  strength = self->_strength;

  [(SBUILegibilityLabel *)deviceInformationLabel setStrength:strength];
}

- (void)_updateInternalLegalLabel
{
  internalLegalText = self->_internalLegalText;
  internalLegalTextLabel = self->_internalLegalTextLabel;
  if (internalLegalText)
  {
    if (!internalLegalTextLabel)
    {
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings)
      {
        v6 = legibilitySettings;
      }

      else
      {
        v6 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
      }

      v8 = v6;
      v9 = objc_alloc(MEMORY[0x277D67CF8]);
      strength = self->_strength;
      v11 = self->_internalLegalText;
      _font = [(CSStatusTextView *)self _font];
      v13 = [v9 initWithSettings:v8 strength:v11 string:_font font:strength];
      v14 = self->_internalLegalTextLabel;
      self->_internalLegalTextLabel = v13;

      [(SBUILegibilityLabel *)self->_internalLegalTextLabel setOptions:2];
      v15 = self->_internalLegalTextLabel;
      rootSettings = [MEMORY[0x277D65E90] rootSettings];
      [rootSettings statusTextStrengthForStyle:{-[_UILegibilitySettings style](v8, "style")}];
      [(SBUILegibilityLabel *)v15 setStrength:?];

      internalLegalTextLabel = self->_internalLegalTextLabel;
    }

    [(SBUILegibilityLabel *)internalLegalTextLabel sizeToFit];
    [(CSStatusTextView *)self addSubview:self->_internalLegalTextLabel];
  }

  else if (internalLegalTextLabel)
  {
    [(SBUILegibilityLabel *)internalLegalTextLabel removeFromSuperview];
    v7 = self->_internalLegalTextLabel;
    self->_internalLegalTextLabel = 0;
  }

  [(CSStatusTextView *)self setNeedsLayout];
}

- (void)_updateSupervisionLabel
{
  v13[2] = *MEMORY[0x277D85DE8];
  _font = [(CSStatusTextView *)self _font];
  if ([(NSString *)self->_supervisionText length])
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v5 = [defaultParagraphStyle mutableCopy];

    [(CSStatusTextView *)self _nonLegalLabelFontLeading];
    v7 = v6;
    [_font lineHeight];
    [v5 setLineSpacing:v7 - v8];
    [v5 setAlignment:1];
    [v5 setLineBreakMode:4];
    v9 = *MEMORY[0x277D740A8];
    v12[0] = *MEMORY[0x277D74118];
    v12[1] = v9;
    v13[0] = v5;
    v13[1] = _font;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_supervisionText attributes:v10];
    [(CSStatusTextView *)self addSubview:self->_supervisionLabel];
  }

  else
  {
    [(SBUILegibilityLabel *)self->_supervisionLabel removeFromSuperview];
    v11 = 0;
  }

  [(SBUILegibilityLabel *)self->_supervisionLabel setAttributedText:v11];
  [(SBUILegibilityLabel *)self->_supervisionLabel setNumberOfLines:1];
  [(CSStatusTextView *)self setNeedsLayout];
}

- (void)_updateProvisionalEnrollmentLabel
{
  v13[2] = *MEMORY[0x277D85DE8];
  _largeFont = [(CSStatusTextView *)self _largeFont];
  if ([(NSString *)self->_provisionalEnrollmentText length])
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v5 = [defaultParagraphStyle mutableCopy];

    [(CSStatusTextView *)self _nonLegalLabelFontLeading];
    v7 = v6;
    [_largeFont lineHeight];
    [v5 setLineSpacing:v7 - v8];
    [v5 setAlignment:1];
    [v5 setLineBreakMode:4];
    v9 = *MEMORY[0x277D740A8];
    v12[0] = *MEMORY[0x277D74118];
    v12[1] = v9;
    v13[0] = v5;
    v13[1] = _largeFont;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_provisionalEnrollmentText attributes:v10];
    [(CSStatusTextView *)self addSubview:self->_provisionalEnrollmentLabel];
  }

  else
  {
    [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel removeFromSuperview];
    v11 = 0;
  }

  [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel setAttributedText:v11];
  [(SBUILegibilityLabel *)self->_provisionalEnrollmentLabel setNumberOfLines:1];
  [(CSStatusTextView *)self setNeedsLayout];
}

- (void)_updateDeviceInformationLabel
{
  v14[2] = *MEMORY[0x277D85DE8];
  _font = [(CSStatusTextView *)self _font];
  if ([(NSArray *)self->_deviceInformationText count])
  {
    v4 = [(NSArray *)self->_deviceInformationText componentsJoinedByString:@" "];
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v6 = [defaultParagraphStyle mutableCopy];

    [(CSStatusTextView *)self _nonLegalLabelFontLeading];
    v8 = v7;
    [_font lineHeight];
    [v6 setLineSpacing:v8 - v9];
    [v6 setAlignment:1];
    [v6 setLineBreakMode:4];
    v10 = *MEMORY[0x277D740A8];
    v13[0] = *MEMORY[0x277D74118];
    v13[1] = v10;
    v14[0] = v6;
    v14[1] = _font;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v4 attributes:v11];
    [(CSStatusTextView *)self addSubview:self->_deviceInformationLabel];
  }

  else
  {
    [(SBUILegibilityLabel *)self->_deviceInformationLabel removeFromSuperview];
    v12 = 0;
  }

  [(SBUILegibilityLabel *)self->_deviceInformationLabel setAttributedText:v12];
  [(SBUILegibilityLabel *)self->_deviceInformationLabel setNumberOfLines:1];
  [(CSStatusTextView *)self setNeedsLayout];
}

- (double)_nonLegalTextParagraphSpacing
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass();
    result = 23.0;
    if (v2 != 2)
    {
      return result;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 23.0;
    if (userInterfaceIdiom != 1)
    {
      return result;
    }
  }

  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  result = 18.5;
  if ((activeInterfaceOrientation - 1) < 2)
  {
    return 23.0;
  }

  return result;
}

- (double)_lineHeightOfNonLegalLabels
{
  _font = [(CSStatusTextView *)self _font];
  [_font lineHeight];
  SBFMainScreenScale();
  BSFloatCeilForScale();
  v4 = v3;

  return v4;
}

- (double)_spacingBetweenNonLegalLabels
{
  [(CSStatusTextView *)self _nonLegalTextParagraphSpacing];
  [(CSStatusTextView *)self _lineHeightOfNonLegalLabels];
  SBFMainScreenScale();

  BSFloatFloorForScale();
  return result;
}

@end