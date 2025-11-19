@interface _CLKUIBasicTimeLabelManager
- (CGRect)_boundingRectOfBlinkerAtRange:(_NSRange)a3;
- (CGRect)_boundingRectOfMinutesBlinker;
- (CGRect)_boundingRectOfSecondsBlinker;
- (CGSize)intrinsicSize;
- (CGSize)sizeThatFits;
- (UIEdgeInsets)opticalInsets;
- (id)_attributedTextShowingBlinker:(BOOL)a3 numbers:(BOOL)a4;
- (id)_initForDevice:(id)a3 primary:(BOOL)a4 withTimeFormatter:(id)a5 options:(unint64_t)a6 labelFactory:(id)a7;
- (id)minutesDesignatorAttributedText;
- (id)secondsDesignatorAttributedText;
- (void)_updateAttributedText;
- (void)enumerateUnderlyingLabelsWithBlock:(id)a3;
- (void)setShowSeconds:(BOOL)a3;
- (void)setShowsDesignator:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)setTextColor:(id)a3;
- (void)sizeViewToFit;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTimeText;
@end

@implementation _CLKUIBasicTimeLabelManager

- (void)updateTimeText
{
  if (self->_showsDesignator)
  {
    if (self->_showSubstringFromSeparator && self->_showSubstringToSeparator)
    {
      hideMinutesIfZero = self->_hideMinutesIfZero;
      timeFormatter = self->_timeFormatter;
      if (hideMinutesIfZero)
      {
        [(CLKTimeFormatter *)timeFormatter timeAndDesignatorTextWithoutMinutesIfZero];
      }

      else
      {
        [(CLKTimeFormatter *)timeFormatter timeAndDesignatorText];
      }

      v5 = LABEL_6:;
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = @"Showing the designator and hiding a piece of the time is unsupported.";
  }

  else
  {
    showSubstringFromSeparator = self->_showSubstringFromSeparator;
    if (self->_showSubstringToSeparator)
    {
      v7 = self->_timeFormatter;
      if (showSubstringFromSeparator)
      {
        [(CLKTimeFormatter *)v7 timeText];
      }

      else
      {
        [(CLKTimeFormatter *)v7 timeSubstringToSeparatorText];
      }

      goto LABEL_6;
    }

    if (self->_showSubstringFromSeparator)
    {
      v5 = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringFromSeparatorText];
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = @"Hiding the text both before and after the separator is unsupported.";
  }

  [v8 raise:v9 format:v10];
  v5 = 0;
LABEL_16:
  obj = v5;
  if (([v5 isEqualToString:self->_timeText] & 1) == 0)
  {
    objc_storeStrong(&self->_timeText, obj);
    if (self->_showSubstringFromSeparator)
    {
      if (self->_showSubstringToSeparator)
      {
        v11 = self->_timeFormatter;
        if (self->_showsDesignator)
        {
          v12 = [(CLKTimeFormatter *)v11 blinkerRangeInTimeAndDesignatorText];
        }

        else
        {
          v12 = [(CLKTimeFormatter *)v11 blinkerRangeInTimeText];
        }
      }

      else
      {
        v12 = [(CLKTimeFormatter *)self->_timeFormatter blinkerRangeInTimeSubstringFromSeparatorText];
      }
    }

    else
    {
      v12 = [(CLKTimeFormatter *)self->_timeFormatter blinkerRangeInTimeSubstringToSeparatorText];
    }

    self->_minutesBlinkerRange.location = v12;
    self->_minutesBlinkerRange.length = v13;
    if (self->_showSeconds)
    {
      v14 = [(CLKTimeFormatter *)self->_timeFormatter lastBlinkerRangeInTimeText];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    self->_secondsBlinkerRange.location = v14;
    self->_secondsBlinkerRange.length = v15;
    [(_CLKUIBasicTimeLabelManager *)self _updateAttributedText];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_updateAttributedText
{
  v3 = [(_CLKUIBasicTimeLabelManager *)self _attributedTextShowingBlinker:self->_showsBlinker numbers:self->_showsNumbers];
  correctAttributedText = self->_correctAttributedText;
  self->_correctAttributedText = v3;

  minutesBlinkerAttributedText = self->_minutesBlinkerAttributedText;
  self->_minutesBlinkerAttributedText = 0;

  secondsBlinkerAttributedText = self->_secondsBlinkerAttributedText;
  self->_secondsBlinkerAttributedText = 0;

  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 16);
  self->_boundingRectOfMinutesBlinkerAttributedText.origin = *MEMORY[0x1E695F050];
  self->_boundingRectOfMinutesBlinkerAttributedText.size = v8;
  self->_boundingRectOfSecondsBlinkerAttributedText.origin = v7;
  self->_boundingRectOfSecondsBlinkerAttributedText.size = v8;
  [(UILabel *)self->_label setAttributedText:self->_correctAttributedText];
  v9 = MEMORY[0x1E69DDCE0];
  self->_cachedIntrinsicSize = *MEMORY[0x1E695F060];
  v10 = v9[1];
  *&self->_cachedOpticalEdgeInsets.top = *v9;
  *&self->_cachedOpticalEdgeInsets.bottom = v10;
  self->_cachedOpticalEdgeInsetsIsValid = 0;
}

- (CGSize)sizeThatFits
{
  [(_CLKUIBasicTimeLabelManager *)self intrinsicSize];
  maxWidth = self->_maxWidth;
  v6 = fabs(maxWidth);
  if (v3 <= maxWidth)
  {
    maxWidth = v3;
  }

  if (v6 >= 0.00000011920929)
  {
    v3 = maxWidth;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicSize
{
  if (CLKSizeIsEmpty())
  {
    [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    self->_cachedIntrinsicSize.width = width;
    self->_cachedIntrinsicSize.height = height;
  }

  else
  {
    width = self->_cachedIntrinsicSize.width;
    height = self->_cachedIntrinsicSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)_initForDevice:(id)a3 primary:(BOOL)a4 withTimeFormatter:(id)a5 options:(unint64_t)a6 labelFactory:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = _CLKUIBasicTimeLabelManager;
  v16 = [(_CLKUIBasicTimeLabelManager *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_device, a3);
    v17->_primary = a4;
    objc_storeStrong(&v17->_timeFormatter, a5);
    v17->_hideMinutesIfZero = (v8 & 4) != 0;
    v17->_showSubstringFromSeparator = (v8 & 0x400) == 0;
    v17->_showSubstringToSeparator = (v8 & 0x800) == 0;
    v17->_showSeconds = 0;
    *&v17->_showsBlinker = 257;
    v18 = *MEMORY[0x1E695F050];
    v19 = *(MEMORY[0x1E695F050] + 16);
    v17->_boundingRectOfMinutesBlinkerAttributedText.origin = *MEMORY[0x1E695F050];
    v17->_boundingRectOfMinutesBlinkerAttributedText.size = v19;
    v17->_boundingRectOfSecondsBlinkerAttributedText.origin = v18;
    v17->_boundingRectOfSecondsBlinkerAttributedText.size = v19;
    v20 = (v15)[2](v15, v17->_primary);
    label = v17->_label;
    v17->_label = v20;

    [(UILabel *)v17->_label setTextAlignment:1];
  }

  return v17;
}

- (void)setStyle:(id)a3
{
  v16 = a3;
  if (([v16 isEqual:self->_style] & 1) == 0)
  {
    v4 = objc_alloc_init(CLKUITimeLabelStyle);
    style = self->_style;
    self->_style = v4;

    v6 = [v16 threeDigitFont];
    v7 = _FontWithCenteredColons(v6, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);
    [(CLKUITimeLabelStyle *)self->_style setThreeDigitFont:v7];

    v8 = [v16 fourDigitFont];
    v9 = _FontWithCenteredColons(v8, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);
    [(CLKUITimeLabelStyle *)self->_style setFourDigitFont:v9];

    v10 = [v16 designatorFont];
    [(CLKUITimeLabelStyle *)self->_style setDesignatorFont:v10];

    v11 = [v16 stringAttributes];
    [(CLKUITimeLabelStyle *)self->_style setStringAttributes:v11];

    v12 = [(CLKTimeFormatter *)self->_timeFormatter timeText];
    v13 = [v12 length];
    v14 = self->_style;
    if (v13 > 4)
    {
      [(CLKUITimeLabelStyle *)v14 fourDigitFont];
    }

    else
    {
      [(CLKUITimeLabelStyle *)v14 threeDigitFont];
    }
    v15 = ;

    [(UILabel *)self->_label setFont:v15];
    [(_CLKUIBasicTimeLabelManager *)self _updateAttributedText];
  }
}

- (void)setShowsDesignator:(BOOL)a3
{
  if (self->_showsDesignator != a3)
  {
    self->_showsDesignator = a3;
    [(_CLKUIBasicTimeLabelManager *)self updateTimeText];
  }
}

- (void)sizeViewToFit
{
  [(UILabel *)self->_label bounds];
  v4 = v3;
  v6 = v5;
  [(_CLKUIBasicTimeLabelManager *)self sizeThatFits];
  label = self->_label;

  [(UILabel *)label setBounds:v4, v6, v7, v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  timeText = self->_timeText;
  self->_timeText = 0;
  v5 = a3;

  [(UILabel *)self->_label traitCollectionDidChange:v5];

  [(_CLKUIBasicTimeLabelManager *)self updateTimeText];
}

- (UIEdgeInsets)opticalInsets
{
  if (objc_opt_respondsToSelector())
  {
    [(UILabel *)self->_label opticalInsets];
    top = v3;
    left = v5;
    bottom = v7;
    right = v9;
  }

  else if (CLKSizeIsEmpty())
  {
    top = *MEMORY[0x1E69DDCE0];
    left = *(MEMORY[0x1E69DDCE0] + 8);
    bottom = *(MEMORY[0x1E69DDCE0] + 16);
    right = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else if (self->_cachedOpticalEdgeInsetsIsValid)
  {
    top = self->_cachedOpticalEdgeInsets.top;
    left = self->_cachedOpticalEdgeInsets.left;
    bottom = self->_cachedOpticalEdgeInsets.bottom;
    right = self->_cachedOpticalEdgeInsets.right;
  }

  else
  {
    v11 = [(UILabel *)self->_label _stringDrawingContext];
    v12 = [(UILabel *)self->_label attributedText];
    [v12 boundingRectWithSize:9 options:v11 context:{self->_cachedIntrinsicSize.width, self->_cachedIntrinsicSize.height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = *(MEMORY[0x1E69DDCE0] + 16);
    *&self->_cachedOpticalEdgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&self->_cachedOpticalEdgeInsets.bottom = v21;
    CLKFloorForDevice();
    self->_cachedOpticalEdgeInsets.left = v22;
    width = self->_cachedIntrinsicSize.width;
    v29.origin.x = v14;
    v29.origin.y = v16;
    v29.size.width = v18;
    v29.size.height = v20;
    CGRectGetWidth(v29);
    CLKCeilForDevice();
    top = self->_cachedOpticalEdgeInsets.top;
    left = self->_cachedOpticalEdgeInsets.left;
    right = width - v24 - left;
    self->_cachedOpticalEdgeInsets.right = right;
    self->_cachedOpticalEdgeInsetsIsValid = 1;
    bottom = self->_cachedOpticalEdgeInsets.bottom;
  }

  v25 = top;
  v26 = left;
  v27 = bottom;
  v28 = right;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);
  v5 = a3;
  [(UILabel *)self->_label setTextColor:v5];
  [(UILabel *)self->_label setAttributedText:self->_correctAttributedText];
}

- (void)setShowSeconds:(BOOL)a3
{
  if (self->_showSeconds != a3)
  {
    self->_showSeconds = a3;
    timeText = self->_timeText;
    self->_timeText = 0;

    [(_CLKUIBasicTimeLabelManager *)self _updateAttributedText];
  }
}

- (void)enumerateUnderlyingLabelsWithBlock:(id)a3
{
  (*(a3 + 2))(a3, self->_label, self->_primary);
  label = self->_label;
  correctAttributedText = self->_correctAttributedText;

  [(UILabel *)label setAttributedText:correctAttributedText];
}

- (id)minutesDesignatorAttributedText
{
  if (self->_minutesBlinkerRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    minutesBlinkerAttributedText = self->_minutesBlinkerAttributedText;
    if (!minutesBlinkerAttributedText)
    {
      v7 = [(NSAttributedString *)self->_correctAttributedText attributedSubstringFromRange:?];
      v8 = [v7 mutableCopy];

      [v8 removeAttribute:*MEMORY[0x1E69DB650] range:{0, objc_msgSend(v8, "length")}];
      v9 = [v8 copy];
      v10 = self->_minutesBlinkerAttributedText;
      self->_minutesBlinkerAttributedText = v9;

      minutesBlinkerAttributedText = self->_minutesBlinkerAttributedText;
    }

    v3 = minutesBlinkerAttributedText;
  }

  return v3;
}

- (id)secondsDesignatorAttributedText
{
  if (self->_secondsBlinkerRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    if (self->_secondsBlinkerRange.length)
    {
      v6 = [(NSAttributedString *)self->_correctAttributedText attributedSubstringFromRange:?];
      v7 = [v6 mutableCopy];

      [v7 removeAttribute:*MEMORY[0x1E69DB650] range:{0, objc_msgSend(v7, "length")}];
      v8 = [v7 copy];
      secondsBlinkerAttributedText = self->_secondsBlinkerAttributedText;
      self->_secondsBlinkerAttributedText = v8;
    }

    v3 = self->_secondsBlinkerAttributedText;
  }

  return v3;
}

- (CGRect)_boundingRectOfBlinkerAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v38[1] = *MEMORY[0x1E69E9840];
  [(_CLKUIBasicTimeLabelManager *)self intrinsicSize];
  v7 = v6;
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69DB850]) initWithAttributedString:self->_correctAttributedText];
  v11 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
  [v10 addLayoutManager:v11];
  v12 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{v7, v9}];
  [v12 setLineFragmentPadding:0.0];
  [v11 addTextContainer:v12];
  v13 = [(_CLKUIBasicTimeLabelManager *)self secondsDesignatorAttributedText];
  v14 = *MEMORY[0x1E69DB648];
  v15 = [v13 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];

  if (!v15)
  {
    v16 = [(NSAttributedString *)self->_correctAttributedText attribute:v14 atIndex:0 effectiveRange:0];
    if (!v16)
    {
      v32 = *MEMORY[0x1E695F058];
      v33 = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_10;
    }

    v15 = v16;
  }

  v17 = [v11 locationForGlyphAtIndex:location];
  v24 = v23;
  v25 = location + 1;
  if (location + 1 < location + length)
  {
    v26 = length - 1;
    do
    {
      v17 = [v11 locationForGlyphAtIndex:v25];
      if (v27 < v24)
      {
        v24 = v27;
      }

      ++v25;
      --v26;
    }

    while (v26);
  }

  MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22);
  v29 = (v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  [v11 getGlyphsInRange:location glyphs:length properties:v29 characterIndexes:0 bidiLevels:{0, 0}];
  v30 = [v10 attribute:v14 atIndex:location effectiveRange:0];
  OpticalBoundsForGlyphs = CTFontGetOpticalBoundsForGlyphs(v30, v29, 0, length, 0);
  width = OpticalBoundsForGlyphs.size.width;
  v32 = v24 + OpticalBoundsForGlyphs.origin.x;

  v33 = 0.0;
LABEL_10:

  v34 = v32;
  v35 = v33;
  v36 = width;
  v37 = v9;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_boundingRectOfMinutesBlinker
{
  p_boundingRectOfMinutesBlinkerAttributedText = &self->_boundingRectOfMinutesBlinkerAttributedText;
  if (CGRectIsNull(self->_boundingRectOfMinutesBlinkerAttributedText))
  {
    location = self->_minutesBlinkerRange.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = *(MEMORY[0x1E695F058] + 16);
      p_boundingRectOfMinutesBlinkerAttributedText->origin = *MEMORY[0x1E695F058];
      p_boundingRectOfMinutesBlinkerAttributedText->size = v5;
    }

    else
    {
      [(_CLKUIBasicTimeLabelManager *)self _boundingRectOfBlinkerAtRange:location, self->_minutesBlinkerRange.length];
      self->_boundingRectOfMinutesBlinkerAttributedText.origin.x = v6;
      self->_boundingRectOfMinutesBlinkerAttributedText.origin.y = v7;
      self->_boundingRectOfMinutesBlinkerAttributedText.size.width = v8;
      self->_boundingRectOfMinutesBlinkerAttributedText.size.height = v9;
    }
  }

  x = self->_boundingRectOfMinutesBlinkerAttributedText.origin.x;
  y = self->_boundingRectOfMinutesBlinkerAttributedText.origin.y;
  width = self->_boundingRectOfMinutesBlinkerAttributedText.size.width;
  height = self->_boundingRectOfMinutesBlinkerAttributedText.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_boundingRectOfSecondsBlinker
{
  p_boundingRectOfSecondsBlinkerAttributedText = &self->_boundingRectOfSecondsBlinkerAttributedText;
  if (CGRectIsNull(self->_boundingRectOfSecondsBlinkerAttributedText))
  {
    if (self->_secondsBlinkerRange.length)
    {
      [(_CLKUIBasicTimeLabelManager *)self _boundingRectOfBlinkerAtRange:self->_secondsBlinkerRange.location];
      self->_boundingRectOfSecondsBlinkerAttributedText.origin.x = v4;
      self->_boundingRectOfSecondsBlinkerAttributedText.origin.y = v5;
      self->_boundingRectOfSecondsBlinkerAttributedText.size.width = v6;
      self->_boundingRectOfSecondsBlinkerAttributedText.size.height = v7;
    }

    else
    {
      v8 = *(MEMORY[0x1E695F058] + 16);
      p_boundingRectOfSecondsBlinkerAttributedText->origin = *MEMORY[0x1E695F058];
      p_boundingRectOfSecondsBlinkerAttributedText->size = v8;
    }
  }

  x = self->_boundingRectOfSecondsBlinkerAttributedText.origin.x;
  y = self->_boundingRectOfSecondsBlinkerAttributedText.origin.y;
  width = self->_boundingRectOfSecondsBlinkerAttributedText.size.width;
  height = self->_boundingRectOfSecondsBlinkerAttributedText.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_attributedTextShowingBlinker:(BOOL)a3 numbers:(BOOL)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (self->_timeText)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    timeText = self->_timeText;
    v8 = *MEMORY[0x1E69DB648];
    v47 = *MEMORY[0x1E69DB648];
    v9 = [(_CLKUIBasicTimeLabelManager *)self effectiveFont];
    v48[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v11 = [v6 initWithString:timeText attributes:v10];

    v12 = [(CLKUITimeLabelStyle *)self->_style designatorFont];
    if (v12 && self->_showsDesignator)
    {
      timeFormatter = self->_timeFormatter;
      if (self->_hideMinutesIfZero)
      {
        v14 = [(CLKTimeFormatter *)timeFormatter designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero];
      }

      else
      {
        v14 = [(CLKTimeFormatter *)timeFormatter designatorRangeInTimeAndDesignatorText];
      }

      [v11 addAttribute:v8 value:v12 range:{v14, v15}];
    }

    if (self->_showSubstringFromSeparator)
    {
      if (self->_showSubstringToSeparator)
      {
        v16 = self->_timeFormatter;
        if (self->_showsDesignator)
        {
          v17 = [(CLKTimeFormatter *)v16 blinkerRangeInTimeAndDesignatorText];
        }

        else
        {
          v17 = [(CLKTimeFormatter *)v16 blinkerRangeInTimeText];
        }
      }

      else
      {
        v17 = [(CLKTimeFormatter *)self->_timeFormatter blinkerRangeInTimeSubstringFromSeparatorText];
      }
    }

    else
    {
      v17 = [(CLKTimeFormatter *)self->_timeFormatter blinkerRangeInTimeSubstringToSeparatorText];
    }

    v19 = v17;
    v20 = v18;
    if (self->_showSeconds)
    {
      v43 = [(CLKTimeFormatter *)self->_timeFormatter lastBlinkerRangeInTimeText];
      v22 = v21;
      if (self->_showSeconds)
      {
        v42 = v12;
        v23 = [(CLKTimeFormatter *)self->_timeFormatter rangeInTimeSubstringFromSecondsSeparatorText];
        v25 = v24;
        if (v23 + v24 <= [v11 length])
        {
          v45 = v8;
          v26 = [(_CLKUIBasicTimeLabelManager *)self effectiveFont];
          v41 = [v26 CLKFontWithMonospacedNumbers];
          v46 = v41;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          [v11 addAttributes:v27 range:{v23, v25}];
        }

        v12 = v42;
      }
    }

    else
    {
      v43 = 0;
      v22 = 0;
    }

    v28 = [MEMORY[0x1E69DC888] clearColor];
    if (!a3)
    {
      if (v19 + v20 < [v11 length])
      {
        [v11 addAttribute:*MEMORY[0x1E69DB650] value:v28 range:{v19, v20}];
      }

      if (self->_showSeconds && v43 + v22 < [v11 length])
      {
        [v11 addAttribute:*MEMORY[0x1E69DB650] value:v28 range:{v43, v22}];
      }
    }

    if (!a4)
    {
      v29 = [v11 length];
      v30 = *MEMORY[0x1E69DB650];
      [v11 addAttribute:*MEMORY[0x1E69DB650] value:v28 range:{0, v29}];
      if (v19 + v20 < [v11 length])
      {
        [v11 removeAttribute:v30 range:{v19, v20}];
      }

      if (self->_showSeconds && v43 + v22 < [v11 length])
      {
        [v11 removeAttribute:v30 range:{v43, v22}];
      }
    }

    if ([(CLKTimeFormatter *)self->_timeFormatter suppressesDesignatorWhitespace])
    {
      v31 = objc_opt_new();
      [v31 setCompositionLanguage:1];
      [v11 addAttribute:*MEMORY[0x1E69DB688] value:v31 range:{0, -[NSString length](self->_timeText, "length")}];
    }

    v32 = [(CLKTimeFormatter *)self->_timeFormatter fontTrackingAttribute];

    if (v32)
    {
      v33 = *MEMORY[0x1E69DB748];
      v34 = [(CLKTimeFormatter *)self->_timeFormatter fontTrackingAttribute];
      [v11 addAttribute:v33 value:v34 range:{0, -[NSString length](self->_timeText, "length")}];
    }

    if ([(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]!= -1)
    {
      [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem];
      v35 = CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem();
      v36 = [v11 length];
      [v11 addAttribute:*MEMORY[0x1E696A518] value:v35 range:{0, v36}];
    }

    v37 = [(CLKUITimeLabelStyle *)self->_style stringAttributes];

    if (v37)
    {
      v38 = [v11 length];
      v39 = [(CLKUITimeLabelStyle *)self->_style stringAttributes];
      [v11 addAttributes:v39 range:{0, v38}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end