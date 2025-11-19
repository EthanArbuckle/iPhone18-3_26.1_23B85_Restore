@interface CSProminentSubtitleDateView
- (BOOL)_wantsCompactForOrientation;
- (CSProminentSubtitleDateView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5;
- (id)_alternateDateString;
- (id)_compactTimeFont;
- (id)_dateString;
- (id)overrideString;
- (void)_updateLabel;
- (void)setAlternateCalendarIdentifier:(id)a3 locale:(id)a4;
- (void)setCanShowSensitiveUI:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setShowsTime:(BOOL)a3 alpha:(double)a4 animated:(BOOL)a5;
- (void)setSupportsAlternateDate:(BOOL)a3;
@end

@implementation CSProminentSubtitleDateView

- (void)_updateLabel
{
  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = [(CSProminentSubtitleDateView *)self overrideString];
  [v3 setText:v4];

  [(CSProminentSubtitleDateView *)self setNeedsLayout];
}

- (id)overrideString
{
  v3 = [(CSProminentTextElementView *)self date];
  if (v3)
  {
    v4 = [(CSProminentSubtitleDateView *)self _dateString];
    v5 = [(CSProminentSubtitleDateView *)self _alternateDateString];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ · %@", v4, v5];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSProminentSubtitleDateView;
    v7 = [(CSProminentTextElementView *)&v9 overrideString];
  }

  return v7;
}

- (id)_dateString
{
  v3 = [MEMORY[0x1E695DF58] preferredLocale];
  if (!self->_formatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatter = self->_formatter;
    self->_formatter = v4;

    [(NSDateFormatter *)self->_formatter setLocale:v3];
    [(NSDateFormatter *)self->_formatter setFormattingContext:2];
  }

  if (_os_feature_enabled_impl() && self->_canShowSensitiveUI || self->_alternateCalendarIdentifier || [(CSProminentSubtitleDateView *)self _wantsCompactForOrientation])
  {
    v6 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEE MMM d" options:0 locale:v3];
    v7 = CSFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"DATE_FORMAT_CHARACTERS_TO_OMIT" value:&stru_1F158DED0 table:0];

    if ([v8 length])
    {
      v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v8];
      v10 = [v6 componentsSeparatedByCharactersInSet:v9];
      v11 = [v10 componentsJoinedByString:&stru_1F158DED0];

      v6 = v11;
    }

    [(NSDateFormatter *)self->_formatter setDateFormat:v6];
  }

  else
  {
    v16 = self->_formatter;
    v6 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEEMMMMd" options:0 locale:v3];
    [(NSDateFormatter *)v16 setDateFormat:v6];
  }

  v12 = self->_formatter;
  v13 = [(CSProminentTextElementView *)self date];
  v14 = [(NSDateFormatter *)v12 stringFromDate:v13];

  return v14;
}

- (id)_alternateDateString
{
  if (self->_supportsAlternateDate)
  {
    v3 = [(CSProminentSubtitleDateView *)self alternateCalendarIdentifier];
    if (v3)
    {
      v4 = [(CSProminentSubtitleDateView *)self alternateCalendarLocale];
      if (v4)
      {
        v5 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v3];
        if (v5)
        {
          alternateDateFormatter = self->_alternateDateFormatter;
          if (!alternateDateFormatter)
          {
            v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
            v8 = self->_alternateDateFormatter;
            self->_alternateDateFormatter = v7;

            alternateDateFormatter = self->_alternateDateFormatter;
          }

          [(NSDateFormatter *)alternateDateFormatter setCalendar:v5];
          [(NSDateFormatter *)self->_alternateDateFormatter setLocale:v4];
          [(NSDateFormatter *)self->_alternateDateFormatter setDateStyle:2];
          [(NSDateFormatter *)self->_alternateDateFormatter setLocalizedDateFormatFromTemplate:@"UMMMd"];
          v9 = self->_alternateDateFormatter;
          v10 = [(CSProminentTextElementView *)self date];
          v11 = [(NSDateFormatter *)v9 stringFromDate:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CSProminentSubtitleDateView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [objc_opt_class() elementType];
  [CSProminentLayoutController fontSizeForElementType:v9 isLandscapeVariant:0];
  v11 = v10;
  [CSProminentLayoutController fontWeightForElementType:v9];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:v11 weight:v12];
  v26.receiver = self;
  v26.super_class = CSProminentSubtitleDateView;
  v14 = [(CSProminentTextElementView *)&v26 initWithDate:v8 font:v13 textColor:v7];

  if (v14)
  {
    v14->_supportsAlternateDate = 1;
    v15 = [(CSProminentTextElementView *)v14 textLabel];
    v16 = objc_opt_class();
    v17 = v15;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setAdjustsFontForContentSizeCategory:1];
    v20 = *MEMORY[0x1E69DDC30];
    [v19 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC30]];
    [v19 setAdjustsFontSizeToFitWidth:1];

    v21 = [(CSProminentTextElementView *)v14 textLabel];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [(CSProminentTextElementView *)v14 textLabel];
      [v23 setAdjustsFontForContentSizeCategory:1];
      [v23 setMaximumContentSizeCategory:v20];
      [v23 setAdjustsFontSizeToFitWidth:1];
    }

    v24 = [(CSProminentTextElementView *)v14 textLabel];
    [v24 setMinimumScaleFactor:15.0 / v11];

    [(CSProminentSubtitleDateView *)v14 _updateLabel];
  }

  return v14;
}

- (void)setAlternateCalendarIdentifier:(id)a3 locale:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (*&self->_alternateCalendarIdentifier != __PAIR128__(v7, v8))
  {
    objc_storeStrong(&self->_alternateCalendarIdentifier, a3);
    objc_storeStrong(&self->_alternateCalendarLocale, a4);
    [(CSProminentSubtitleDateView *)self _updateLabel];
  }
}

- (void)setShowsTime:(BOOL)a3 alpha:(double)a4 animated:(BOOL)a5
{
  showsTime = self->_showsTime;
  self->_showsTime = a3;
  if (showsTime != a3)
  {
    v21 = v8;
    v22 = v7;
    v23 = v5;
    v24 = v6;
    v10 = a5;
    v14 = MEMORY[0x1E698E7D0];
    if (a5)
    {
      v15 = [MEMORY[0x1E698E608] settingsWithDuration:0.2];
    }

    else
    {
      v15 = 0;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke;
    v18[3] = &unk_1E76B9FA0;
    v19 = a3;
    v18[4] = self;
    *&v18[5] = a4;
    v20 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke_2;
    v16[3] = &unk_1E76B9FC8;
    v17 = a3;
    v16[4] = self;
    [v14 animateWithSettings:v15 actions:v18 completion:v16];
    if (v10)
    {
    }
  }
}

void __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 _compactTimeFont];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v5 = MEMORY[0x1E69DD250];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke_6;
    v20 = &unk_1E76B9F78;
    v6 = *(a1 + 32);
    v23 = &v24;
    v21 = v6;
    v7 = v4;
    v22 = v7;
    [v5 performWithoutAnimation:&v17];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v8 setText:{@" ", v17, v18, v19, v20, v21}];
    [v8 setFont:v7];
    v9 = [*(a1 + 32) textLabel];
    v10 = [v9 view];
    [v10 setClipsToBounds:0];

    [v25[5] setClipsToBounds:1];
    [v25[5] setAlpha:*(a1 + 40)];
    v11 = *(a1 + 32);
    v30[0] = v25[5];
    v30[1] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [v11 insertPrefixViews:v12 animated:*(a1 + 49)];

    v14 = *(a1 + 32);
    v13 = a1 + 32;
    objc_storeStrong((v14 + 488), v25[5]);
    v15 = *(*v13 + 536);
    *(*v13 + 536) = v8;

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    [v3[61] setAlpha:0.0];
    [*(*(a1 + 32) + 488) setHidden:1];
    v16 = *(*(a1 + 32) + 536);

    [v16 setHidden:1];
  }
}

uint64_t __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke_6(uint64_t a1)
{
  v2 = [CSProminentSubtitleTimeView alloc];
  v3 = [*(a1 + 32) date];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) primaryTextColor];
  v6 = [(CSProminentTimeView *)v2 initWithDate:v3 baseFont:v4 textColor:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 48) + 8) + 40);

  return [v9 setAlpha:0.0];
}

void __59__CSProminentSubtitleDateView_setShowsTime_alpha_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 488);
  if (v2)
  {

    [v3 setClipsToBounds:0];
  }

  else
  {
    [v3 removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 488);
    *(v4 + 488) = 0;

    [*(*(a1 + 32) + 536) removeFromSuperview];
    v6 = *(a1 + 32);
    v7 = *(v6 + 536);
    *(v6 + 536) = 0;
  }
}

- (void)setSupportsAlternateDate:(BOOL)a3
{
  if (self->_supportsAlternateDate != a3)
  {
    self->_supportsAlternateDate = a3;
    [(CSProminentSubtitleDateView *)self _updateLabel];
  }
}

- (void)setCanShowSensitiveUI:(BOOL)a3
{
  if (self->_canShowSensitiveUI != a3)
  {
    self->_canShowSensitiveUI = a3;
    [(CSProminentSubtitleDateView *)self _updateLabel];
  }
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [(CSProminentTextElementView *)self date];
  v6.receiver = self;
  v6.super_class = CSProminentSubtitleDateView;
  [(CSProminentTextElementView *)&v6 setDate:v4];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(CSProminentSubtitleDateView *)self _updateLabel];
    [(CSProminentTimeView *)self->_timeView setDate:v4];
  }
}

- (id)_compactTimeFont
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(CSProminentTextElementView *)self primaryFont];
  v4 = [v3 fontDescriptor];

  v12 = *MEMORY[0x1E69DB990];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [v4 fontDescriptorByAddingAttributes:v6];

  v8 = [(CSProminentTextElementView *)self primaryFont];
  [v8 pointSize];
  v10 = CTFontCreateWithFontDescriptorAndOptions(v7, v9, 0, 0x20000uLL);

  return v10;
}

- (BOOL)_wantsCompactForOrientation
{
  v3 = [MEMORY[0x1E698E730] sharedInstance];
  v4 = [v3 deviceClass];

  if (v4 == 2)
  {
    return 0;
  }

  v6 = [(CSProminentSubtitleDateView *)self window];
  v5 = ([v6 interfaceOrientation] - 3) < 2;

  return v5;
}

@end