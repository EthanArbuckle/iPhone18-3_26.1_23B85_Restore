@interface HUDynamicFormattingLabel
- (id)_formattedValueWithFont:(id)a3;
- (void)_updateFormattedValueIncludingFont:(BOOL)a3;
- (void)_updateFormattedValueObservation;
- (void)_updatePreferredFontIncludingValue:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setDefaultAttributes:(id)a3;
- (void)setDynamicFormattingValue:(id)a3;
- (void)setPreferredFonts:(id)a3;
@end

@implementation HUDynamicFormattingLabel

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = HUDynamicFormattingLabel;
  [(HUDynamicFormattingLabel *)&v3 didMoveToWindow];
  [(HUDynamicFormattingLabel *)self _updateFormattedValueObservation];
}

- (void)setDynamicFormattingValue:(id)a3
{
  v5 = a3;
  v6 = self->_dynamicFormattingValue;
  v7 = v5;
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
    objc_storeStrong(&self->_dynamicFormattingValue, a3);
    [(HUDynamicFormattingLabel *)self _updateFormattedValueIncludingFont:1];
    [(HUDynamicFormattingLabel *)self _updateFormattedValueObservation];
  }

LABEL_8:
}

- (void)setDefaultAttributes:(id)a3
{
  v4 = a3;
  v5 = self->_defaultAttributes;
  v6 = v4;
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

- (void)setPreferredFonts:(id)a3
{
  v5 = a3;
  v6 = self->_preferredFonts;
  v7 = v5;
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
    objc_storeStrong(&self->_preferredFonts, a3);
    [(HUDynamicFormattingLabel *)self _updatePreferredFontIncludingValue:1];
  }

LABEL_8:
}

- (void)_updateFormattedValueObservation
{
  v3 = [(HUDynamicFormattingLabel *)self formattedValueObservationCancellationToken];
  [v3 cancel];

  v4 = [(HUDynamicFormattingLabel *)self window];
  if (v4)
  {
    v5 = v4;
    v6 = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];

    if (v6)
    {
      objc_initWeak(&location, self);
      v7 = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __60__HUDynamicFormattingLabel__updateFormattedValueObservation__block_invoke;
      v12 = &unk_277DC1988;
      objc_copyWeak(&v13, &location);
      v8 = [v7 observeFormattedValueChangesWithBlock:&v9];
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

- (id)_formattedValueWithFont:(id)a3
{
  v4 = a3;
  v5 = [(HUDynamicFormattingLabel *)self defaultAttributes];
  v6 = v5;
  if (!v5)
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v7 = [v5 mutableCopy];

  [v7 na_safeSetObject:v4 forKey:*MEMORY[0x277D740A8]];
  v8 = [(HUDynamicFormattingLabel *)self dynamicFormattingValue];
  v9 = [v8 currentFormattedValue];
  v10 = [v9 stringWithAttributes:v7];

  return v10;
}

- (void)_updateFormattedValueIncludingFont:(BOOL)a3
{
  if (a3)
  {
    [(HUDynamicFormattingLabel *)self _updatePreferredFontIncludingValue:0];
  }

  v5 = [(HUDynamicFormattingLabel *)self preferredFontForCurrentSize];
  v4 = [(HUDynamicFormattingLabel *)self _formattedValueWithFont:v5];
  [(HUDynamicFormattingLabel *)self setAttributedText:v4];
}

- (void)_updatePreferredFontIncludingValue:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(HUDynamicFormattingLabel *)self preferredFonts];
  v6 = [v5 lastObject];

  [(HUDynamicFormattingLabel *)self bounds];
  if (v8 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [(HUDynamicFormattingLabel *)self preferredFonts];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(v10);
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

              v6 = v23;
              goto LABEL_16;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  v24 = [(HUDynamicFormattingLabel *)self preferredFontForCurrentSize];
  v25 = v6;
  v26 = v25;
  if (v24 == v25)
  {
  }

  else
  {
    if (v24)
    {
      v27 = [v24 isEqual:v25];

      if (v27)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    [(HUDynamicFormattingLabel *)self setPreferredFontForCurrentSize:v26];
    if (v3)
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