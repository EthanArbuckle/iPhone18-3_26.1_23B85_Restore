@interface HUDynamicFormattingLabel
- (id)_formattedValueWithFont:(id)font;
- (void)_updateFormattedValueIncludingFont:(BOOL)font;
- (void)_updateFormattedValueObservation;
- (void)_updatePreferredFontIncludingValue:(BOOL)value;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setDefaultAttributes:(id)attributes;
- (void)setDynamicFormattingValue:(id)value;
- (void)setPreferredFonts:(id)fonts;
@end

@implementation HUDynamicFormattingLabel

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = HUDynamicFormattingLabel;
  [(HUDynamicFormattingLabel *)&v3 didMoveToWindow];
  [(HUDynamicFormattingLabel *)self _updateFormattedValueObservation];
}

- (void)setDynamicFormattingValue:(id)value
{
  valueCopy = value;
  v6 = self->_dynamicFormattingValue;
  v7 = valueCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(HFDynamicFormattingValue *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_dynamicFormattingValue, value);
    [(HUDynamicFormattingLabel *)self _updateFormattedValueIncludingFont:1];
    [(HUDynamicFormattingLabel *)self _updateFormattedValueObservation];
  }

LABEL_8:
}

- (void)setDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = self->_defaultAttributes;
  v6 = attributesCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v7 = [(NSDictionary *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(NSDictionary *)v10 copy];
    defaultAttributes = self->_defaultAttributes;
    self->_defaultAttributes = v8;

    [(HUDynamicFormattingLabel *)self _updateFormattedValueIncludingFont:1];
  }

LABEL_8:
}

- (void)setPreferredFonts:(id)fonts
{
  fontsCopy = fonts;
  v6 = self->_preferredFonts;
  v7 = fontsCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(NSArray *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_preferredFonts, fonts);
    [(HUDynamicFormattingLabel *)self _updatePreferredFontIncludingValue:1];
  }

LABEL_8:
}

- (void)_updateFormattedValueObservation
{
  formattedValueObservationCancellationToken = [(HUDynamicFormattingLabel *)self formattedValueObservationCancellationToken];
  [formattedValueObservationCancellationToken cancel];

  window = [(HUDynamicFormattingLabel *)self window];
  if (window)
  {
    v5 = window;
    dynamicFormattingValue = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];

    if (dynamicFormattingValue)
    {
      objc_initWeak(&location, self);
      dynamicFormattingValue2 = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __60__HUDynamicFormattingLabel__updateFormattedValueObservation__block_invoke;
      v12 = &unk_277DC1988;
      objc_copyWeak(&v13, &location);
      v8 = [dynamicFormattingValue2 observeFormattedValueChangesWithBlock:&v9];
      [(HUDynamicFormattingLabel *)self setFormattedValueObservationCancellationToken:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __60__HUDynamicFormattingLabel__updateFormattedValueObservation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFormattedValueIncludingFont:1];
}

- (id)_formattedValueWithFont:(id)font
{
  fontCopy = font;
  defaultAttributes = [(HUDynamicFormattingLabel *)self defaultAttributes];
  v6 = defaultAttributes;
  if (!defaultAttributes)
  {
    defaultAttributes = MEMORY[0x277CBEC10];
  }

  v7 = [defaultAttributes mutableCopy];

  [v7 na_safeSetObject:fontCopy forKey:*MEMORY[0x277D740A8]];
  dynamicFormattingValue = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];
  currentFormattedValue = [dynamicFormattingValue currentFormattedValue];
  v10 = [currentFormattedValue stringWithAttributes:v7];

  return v10;
}

- (void)_updateFormattedValueIncludingFont:(BOOL)font
{
  if (font)
  {
    [(HUDynamicFormattingLabel *)self _updatePreferredFontIncludingValue:0];
  }

  preferredFontForCurrentSize = [(HUDynamicFormattingLabel *)self preferredFontForCurrentSize];
  v4 = [(HUDynamicFormattingLabel *)self _formattedValueWithFont:preferredFontForCurrentSize];
  [(HUDynamicFormattingLabel *)self setAttributedText:v4];
}

- (void)_updatePreferredFontIncludingValue:(BOOL)value
{
  valueCopy = value;
  v33 = *MEMORY[0x277D85DE8];
  preferredFonts = [(HUDynamicFormattingLabel *)self preferredFonts];
  lastObject = [preferredFonts lastObject];

  [(HUDynamicFormattingLabel *)self bounds];
  if (v8 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    preferredFonts2 = [(HUDynamicFormattingLabel *)self preferredFonts];
    v11 = [preferredFonts2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(preferredFonts2);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [(HUDynamicFormattingLabel *)self _formattedValueWithFont:v15];
          [v16 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
          MaxX = CGRectGetMaxX(v34);
          [(HUDynamicFormattingLabel *)self bounds];
          if (MaxX <= CGRectGetMaxX(v35))
          {
            v36.origin.x = x;
            v36.origin.y = y;
            v36.size.width = width;
            v36.size.height = height;
            MaxY = CGRectGetMaxY(v36);
            [(HUDynamicFormattingLabel *)self bounds];
            if (MaxY <= CGRectGetMaxY(v37))
            {
              v23 = v15;

              lastObject = v23;
              goto LABEL_16;
            }
          }
        }

        v12 = [preferredFonts2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  preferredFontForCurrentSize = [(HUDynamicFormattingLabel *)self preferredFontForCurrentSize];
  v25 = lastObject;
  v26 = v25;
  if (preferredFontForCurrentSize == v25)
  {
  }

  else
  {
    if (preferredFontForCurrentSize)
    {
      v27 = [preferredFontForCurrentSize isEqual:v25];

      if (v27)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    [(HUDynamicFormattingLabel *)self setPreferredFontForCurrentSize:v26];
    if (valueCopy)
    {
      [(HUDynamicFormattingLabel *)self _updateFormattedValueIncludingFont:0];
    }
  }

LABEL_25:
}

- (void)layoutSubviews
{
  [(HUDynamicFormattingLabel *)self _updatePreferredFontIncludingValue:1];
  v3.receiver = self;
  v3.super_class = HUDynamicFormattingLabel;
  [(HUDynamicFormattingLabel *)&v3 layoutSubviews];
}

@end