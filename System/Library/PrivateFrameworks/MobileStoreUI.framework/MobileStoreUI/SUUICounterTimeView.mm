@interface SUUICounterTimeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUICounterTimeView)initWithClientContext:(id)a3;
- (double)_fieldSpacingForFieldCount:(int64_t)a3 fieldWidth:(double)a4 totalWidth:(double)a5;
- (id)_allFieldViews;
- (id)_visibleFieldViews;
- (void)_setValuesUsingTimestamp:(int64_t)a3;
- (void)layoutSubviews;
- (void)reloadTimeValue;
- (void)setBackgroundColor:(id)a3;
- (void)setEndDate:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setValueFont:(id)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SUUICounterTimeView

- (SUUICounterTimeView)initWithClientContext:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = SUUICounterTimeView;
  v6 = [(SUUICounterTimeView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v7->_visibleFields = 255;
    v8 = objc_alloc_init(_SUUICounterTimeFieldView);
    daysFieldView = v7->_daysFieldView;
    v7->_daysFieldView = v8;

    v10 = [(_SUUICounterTimeFieldView *)v7->_daysFieldView labelLabel];
    if (v5)
    {
      [v5 localizedStringForKey:@"COUNTDOWN_DAYS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"COUNTDOWN_DAYS" inBundles:0];
    }
    v11 = ;
    [v10 setText:v11];

    [(_SUUICounterTimeFieldView *)v7->_daysFieldView setVisibilityField:1];
    [(SUUICounterTimeView *)v7 addSubview:v7->_daysFieldView];
    v12 = objc_alloc_init(_SUUICounterTimeFieldView);
    hoursFieldView = v7->_hoursFieldView;
    v7->_hoursFieldView = v12;

    v14 = [(_SUUICounterTimeFieldView *)v7->_hoursFieldView labelLabel];
    if (v5)
    {
      [v5 localizedStringForKey:@"COUNTDOWN_HOURS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"COUNTDOWN_HOURS" inBundles:0];
    }
    v15 = ;
    [v14 setText:v15];

    [(_SUUICounterTimeFieldView *)v7->_hoursFieldView setVisibilityField:2];
    [(SUUICounterTimeView *)v7 addSubview:v7->_hoursFieldView];
    v16 = objc_alloc_init(_SUUICounterTimeFieldView);
    minutesFieldView = v7->_minutesFieldView;
    v7->_minutesFieldView = v16;

    v18 = [(_SUUICounterTimeFieldView *)v7->_minutesFieldView labelLabel];
    if (v5)
    {
      [v5 localizedStringForKey:@"COUNTDOWN_MINUTES"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"COUNTDOWN_MINUTES" inBundles:0];
    }
    v19 = ;
    [v18 setText:v19];

    [(_SUUICounterTimeFieldView *)v7->_minutesFieldView setVisibilityField:4];
    [(SUUICounterTimeView *)v7 addSubview:v7->_minutesFieldView];
    v20 = objc_alloc_init(_SUUICounterTimeFieldView);
    secondsFieldView = v7->_secondsFieldView;
    v7->_secondsFieldView = v20;

    v22 = [(_SUUICounterTimeFieldView *)v7->_secondsFieldView labelLabel];
    if (v5)
    {
      [v5 localizedStringForKey:@"COUNTDOWN_SECONDS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"COUNTDOWN_SECONDS" inBundles:0];
    }
    v23 = ;
    [v22 setText:v23];

    [(_SUUICounterTimeFieldView *)v7->_secondsFieldView setVisibilityField:8];
    [(SUUICounterTimeView *)v7 addSubview:v7->_secondsFieldView];
  }

  return v7;
}

- (void)reloadTimeValue
{
  [(NSDate *)self->_endDate timeIntervalSinceNow];
  v4 = v3 & ~(v3 >> 63);
  if (self->_lastTimeValue != v4)
  {
    self->_lastTimeValue = v4;

    [(SUUICounterTimeView *)self _setValuesUsingTimestamp:?];
  }
}

- (void)setEndDate:(id)a3
{
  v4 = a3;
  endDate = self->_endDate;
  if (endDate != v4)
  {
    v9 = v4;
    endDate = [endDate isEqualToDate:v4];
    v4 = v9;
    if ((endDate & 1) == 0)
    {
      v6 = [v9 copy];
      v7 = self->_endDate;
      self->_endDate = v6;

      [(NSDate *)self->_endDate timeIntervalSinceNow];
      self->_lastTimeValue = fmax(v8, 0.0);
      endDate = [(SUUICounterTimeView *)self _setValuesUsingTimestamp:?];
      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](endDate, v4);
}

- (void)setTextColor:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_textColor != a3)
  {
    v4 = [a3 copy];
    textColor = self->_textColor;
    self->_textColor = v4;

    v6 = [(SUUICounterTimeView *)self _allFieldViews];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 labelLabel];
          [v12 setTextColor:self->_textColor];

          v13 = [v11 valueLabel];
          [v13 setTextColor:self->_textColor];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)setValueFont:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_valueFont != a3)
  {
    v4 = [a3 copy];
    valueFont = self->_valueFont;
    self->_valueFont = v4;

    v6 = [(SUUICounterTimeView *)self _allFieldViews];
    v7 = self->_valueFont;
    [(UIFont *)v7 pointSize];
    v9 = [(UIFont *)v7 fontWithSize:fmax(v8 * 0.5, 8.0)];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 labelLabel];
          [v16 setFont:v9];

          v17 = [v15 valueLabel];
          [v17 setFont:self->_valueFont];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(SUUICounterTimeView *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)a3
{
  if (self->_visibleFields != a3)
  {
    self->_visibleFields = a3;
    [(SUUICounterTimeView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [(SUUICounterTimeView *)self _allFieldViews];
  v4 = [(SUUICounterTimeView *)self _visibleFieldViews];
  [(SUUICounterTimeView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v4 containsObject:v16];
        if (v17)
        {
          [v16 frame];
          v19 = v18;
          v21 = v20;
          [v16 sizeThatFits:{v6, v8}];
          if (v10 < v23)
          {
            v10 = v23;
          }

          v9 = v9 + v22;
          [v16 setFrame:{v19, v21, v22, v23}];
        }

        [v16 setHidden:v17 ^ 1u];
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

  v24 = [v4 count];
  [(SUUICounterTimeView *)self _fieldSpacingForFieldCount:v24 fieldWidth:v9 totalWidth:v6];
  v26 = v25;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = v4;
  v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = v8 - v10;
    v31 = (v6 - (v9 + (v24 + 1) * v26)) * 0.5;
    v32 = v26 + floorf(v31);
    v33 = *v43;
    v34 = v10 + (floorf(v30) * 0.5);
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v36 = *(*(&v42 + 1) + 8 * j);
        [v36 frame];
        v38 = v37;
        v40 = v39;
        v41 = v34 - v39;
        [v36 setFrame:{v32, v34 - v39}];
        v53.origin.x = v32;
        v53.origin.y = v41;
        v53.size.width = v38;
        v53.size.height = v40;
        v32 = v26 + CGRectGetMaxX(v53);
      }

      v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v29);
  }
}

- (void)setBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUICounterTimeView *)self _allFieldViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUICounterTimeView;
  [(SUUICounterTimeView *)&v10 setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = [(SUUICounterTimeView *)self _visibleFieldViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * v12) sizeThatFits:{width, height}];
        if (v6 < v14)
        {
          v6 = v14;
        }

        v7 = v7 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = [v8 count];
  v16 = (v15 + 1);
  [(SUUICounterTimeView *)self _fieldSpacingForFieldCount:v15 fieldWidth:v7 totalWidth:width];
  v18 = v7 + v16 * v17;
  if (v18 < width)
  {
    width = v18;
  }

  v19 = width;
  v20 = v6;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)_allFieldViews
{
  v6[4] = *MEMORY[0x277D85DE8];
  hoursFieldView = self->_hoursFieldView;
  v6[0] = self->_daysFieldView;
  v6[1] = hoursFieldView;
  secondsFieldView = self->_secondsFieldView;
  v6[2] = self->_minutesFieldView;
  v6[3] = secondsFieldView;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

- (double)_fieldSpacingForFieldCount:(int64_t)a3 fieldWidth:(double)a4 totalWidth:(double)a5
{
  v5 = (a5 - a4) / (a3 + 1);
  v6 = floorf(v5);
  v7 = 5.0;
  if (v6 > 5.0)
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = v6 <= 14.0;
  result = 14.0;
  if (v9)
  {
    return v8;
  }

  return result;
}

- (void)_setValuesUsingTimestamp:(int64_t)a3
{
  if (!_setValuesUsingTimestamp__sActualValueFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v6 = _setValuesUsingTimestamp__sActualValueFormatter;
    _setValuesUsingTimestamp__sActualValueFormatter = v5;

    [_setValuesUsingTimestamp__sActualValueFormatter setNumberStyle:1];
  }

  if (!_setValuesUsingTimestamp__sPaddedValueFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v8 = _setValuesUsingTimestamp__sPaddedValueFormatter;
    _setValuesUsingTimestamp__sPaddedValueFormatter = v7;

    [_setValuesUsingTimestamp__sPaddedValueFormatter setNumberStyle:1];
    [_setValuesUsingTimestamp__sPaddedValueFormatter setPositiveFormat:@"00"];
  }

  v24 = _setValuesUsingTimestamp__sActualValueFormatter;
  v9 = [(_SUUICounterTimeFieldView *)self->_daysFieldView valueLabel];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3 / 86400];
  v11 = [v24 stringFromNumber:v10];
  [v9 setText:v11];

  if (a3 >= 86400)
  {
    v12 = _setValuesUsingTimestamp__sPaddedValueFormatter;

    v24 = v12;
  }

  v13 = [(_SUUICounterTimeFieldView *)self->_hoursFieldView valueLabel];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3 / 3600 % 24];
  v15 = [v24 stringFromNumber:v14];
  [v13 setText:v15];

  if (a3 / 3600 % 24 >= 1)
  {
    v16 = _setValuesUsingTimestamp__sPaddedValueFormatter;

    v24 = v16;
  }

  v17 = [(_SUUICounterTimeFieldView *)self->_minutesFieldView valueLabel];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3 / 60 % 60];
  v19 = [v24 stringFromNumber:v18];
  [v17 setText:v19];

  v20 = [(_SUUICounterTimeFieldView *)self->_secondsFieldView valueLabel];
  v21 = _setValuesUsingTimestamp__sPaddedValueFormatter;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:a3 % 60];
  v23 = [v21 stringFromNumber:v22];
  [v20 setText:v23];

  [(SUUICounterTimeView *)self setNeedsLayout];
}

- (id)_visibleFieldViews
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SUUICounterTimeView *)self _allFieldViews];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 valueLabel];
        v11 = [v10 text];
        if ([v11 length])
        {
          visibleFields = self->_visibleFields;
          v13 = [v9 visibilityField] & visibleFields;

          if (v13)
          {
            [v15 addObject:v9];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

@end