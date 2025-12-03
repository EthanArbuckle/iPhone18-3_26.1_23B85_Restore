@interface NTKTimeIntervalLabel
- (BOOL)shouldShowDigits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)textSize;
- (NTKTimeIntervalLabel)initWithMonospacedFontOfSize:(double)size color:(id)color style:(int64_t)style signed:(BOOL)signed forDevice:(id)device;
- (NTKTimeIntervalLabel)initWithMonospacedFontOfSize:(double)size forDevice:(id)device;
- (double)_labelWidth;
- (double)actualWidth;
- (id)_cachedImageForDigit:(unint64_t)digit;
- (id)_localImageForDigit:(unint64_t)digit;
- (id)formatTimeInterval;
- (id)getTimeText;
- (void)_invalidateDigitImages;
- (void)_localeChanged;
- (void)calculateMetrics;
- (void)createDigitViews;
- (void)dealloc;
- (void)forceTime:(double)time;
- (void)layoutSubviews;
- (void)recalculateSize;
- (void)setFont:(id)font;
- (void)setFrozen:(BOOL)frozen;
- (void)setLabelText:(id)text;
- (void)setPrefix:(id)prefix;
- (void)setSuffix:(id)suffix;
- (void)setTextColor:(id)color;
- (void)setTime:(double)time;
- (void)sizeToFitLabelIfNeeded;
@end

@implementation NTKTimeIntervalLabel

- (NTKTimeIntervalLabel)initWithMonospacedFontOfSize:(double)size color:(id)color style:(int64_t)style signed:(BOOL)signed forDevice:(id)device
{
  colorCopy = color;
  deviceCopy = device;
  v31.receiver = self;
  v31.super_class = NTKTimeIntervalLabel;
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v18 = [(NTKTimeIntervalLabel *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], v15, v16, v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_device, device);
    v20 = [MEMORY[0x277CBBB08] systemFontOfSize:size];
    cLKFontWithMonospacedNumbers = [v20 CLKFontWithMonospacedNumbers];
    font = v19->_font;
    v19->_font = cLKFontWithMonospacedNumbers;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    images = v19->_images;
    v19->_images = dictionary;

    v19->_showSubSeconds = 1;
    v19->_frozen = 0;
    v19->_style = style;
    v19->_isSigned = signed;
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v14, v15, v16, v17}];
    label = v19->_label;
    v19->_label = v25;

    [(UILabel *)v19->_label setFont:v19->_font];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19->_label setBackgroundColor:clearColor];

    [(UILabel *)v19->_label setTextColor:colorCopy];
    if (style == 1)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [(UILabel *)v19->_label setTextAlignment:v28];
    [(NTKTimeIntervalLabel *)v19 forceTime:720.0];
    [(NTKTimeIntervalLabel *)v19 addSubview:v19->_label];
    [(NTKTimeIntervalLabel *)v19 calculateMetrics];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__localeChanged name:*MEMORY[0x277CBE620] object:0];
  }

  return v19;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = NTKTimeIntervalLabel;
  [(NTKTimeIntervalLabel *)&v4 dealloc];
}

- (NTKTimeIntervalLabel)initWithMonospacedFontOfSize:(double)size forDevice:(id)device
{
  v6 = MEMORY[0x277D75348];
  deviceCopy = device;
  whiteColor = [v6 whiteColor];
  v9 = [(NTKTimeIntervalLabel *)self initWithMonospacedFontOfSize:whiteColor color:0 style:deviceCopy forDevice:size];

  return v9;
}

- (id)_localImageForDigit:(unint64_t)digit
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_images objectForKey:v5];
  if (!v6)
  {
    v6 = [(NTKTimeIntervalLabel *)self _cachedImageForDigit:digit];
    if (v6)
    {
      [(NSMutableDictionary *)self->_images setObject:v6 forKey:v5];
    }
  }

  v7 = v6;

  return v7;
}

- (void)calculateMetrics
{
  v16[2] = *MEMORY[0x277D85DE8];
  getTimeText = [(NTKTimeIntervalLabel *)self getTimeText];
  text = self->_text;
  self->_text = getTimeText;

  v5 = *MEMORY[0x277D740A8];
  v16[0] = self->_font;
  v6 = *MEMORY[0x277D740C0];
  v15[0] = v5;
  v15[1] = v6;
  textColor = [(NTKTimeIntervalLabel *)self textColor];
  v16[1] = textColor;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = [(NSString *)self->_text substringWithRange:[(NSString *)self->_text length]- 1, 1];
  [v9 sizeWithAttributes:v8];
  self->_digitWidth = v10;

  v11 = [(NSString *)self->_text substringWithRange:0, [(NSString *)self->_text length]- 1];
  [v11 sizeWithAttributes:v8];
  self->_staticLabelWidth = v12;

  [(NSString *)self->_text sizeWithAttributes:v8];
  self->_textSize.width = v13;
  self->_textSize.height = v14;
  *&self->_isShowingDigits = 1;
}

- (double)actualWidth
{
  width = self->_textSize.width;
  suffix = self->_suffix;
  if (suffix)
  {
    [(UILabel *)suffix frame];
    width = width + v5;
  }

  prefix = self->_prefix;
  if (prefix)
  {
    [(UILabel *)prefix frame];
    return width + v7;
  }

  return width;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_textSize.width;
  height = self->_textSize.height;
  suffix = self->_suffix;
  if (suffix)
  {
    [(UILabel *)suffix frame:fits.width];
    width = width + v7;
  }

  prefix = self->_prefix;
  if (prefix)
  {
    [(UILabel *)prefix frame:fits.width];
    width = width + v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)createDigitViews
{
  if (!self->_digits)
  {
    array = [MEMORY[0x277CBEB18] array];
    digits = self->_digits;
    self->_digits = array;

    v5 = 1;
    do
    {
      v6 = v5;
      v7 = self->_digits;
      v8 = objc_alloc(MEMORY[0x277D755E8]);
      v9 = [(NTKTimeIntervalLabel *)self _localImageForDigit:0];
      v10 = [v8 initWithImage:v9];
      [(NSMutableArray *)v7 addObject:v10];

      lastObject = [(NSMutableArray *)self->_digits lastObject];
      [(NTKTimeIntervalLabel *)self addSubview:lastObject];

      v5 = 0;
    }

    while ((v6 & 1) != 0);
  }
}

- (double)_labelWidth
{
  if (self->_style)
  {
    v2 = &OBJC_IVAR___NTKTimeIntervalLabel__staticLabelWidth;
  }

  else
  {
    v2 = &OBJC_IVAR___NTKTimeIntervalLabel__textSize;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)layoutSubviews
{
  v34 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = NTKTimeIntervalLabel;
  [(NTKTimeIntervalLabel *)&v32 layoutSubviews];
  v3 = 0.0;
  if ([(NTKTimeIntervalLabel *)self shouldShowDigits])
  {
    v3 = -self->_digitWidth;
  }

  prefix = self->_prefix;
  if (prefix)
  {
    [(UILabel *)prefix frame];
    v6 = v5;
    [(UILabel *)self->_prefix frame];
    [(UILabel *)self->_prefix setFrame:0.0, 0.0, v6];
    [(UILabel *)self->_prefix frame];
    CLKCeilForDevice();
    v3 = v3 + v7;
  }

  [(NTKTimeIntervalLabel *)self _labelWidth];
  CLKCeilForDevice();
  v9 = v8;
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label setFrame:v3, 0.0, v9];
  CLKCeilForDevice();
  v11 = v3 + v10;
  if ([(NTKTimeIntervalLabel *)self shouldShowDigits])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = self->_digits;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          CLKCeilForDevice();
          v19 = v18;
          [(UILabel *)self->_label frame];
          v21 = v20;
          [v17 frame];
          v23 = v22;
          [v17 frame];
          [v17 setFrame:{v19, v21, v23}];
          v11 = self->_digitWidth + v11;
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v14);
    }
  }

  if (self->_suffix)
  {
    CLKCeilForDevice();
    v25 = v24;
    [(UILabel *)self->_suffix frame];
    v27 = v26;
    [(UILabel *)self->_suffix frame];
    [(UILabel *)self->_suffix setFrame:v25, 0.0, v27];
  }
}

- (void)_localeChanged
{
  createDateFormats();
  v3 = _ImageCache(self->_device);
  [v3 removeAllObjects];

  [(NTKTimeIntervalLabel *)self _invalidateDigitImages];
}

- (id)getTimeText
{
  v3 = self->_text;
  time = self->_time;
  v5 = time - self->_currentTextTime;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 1.0)
  {
    self->_currentTextTime = round(time);
    formatTimeInterval = [(NTKTimeIntervalLabel *)self formatTimeInterval];

    v3 = formatTimeInterval;
  }

  return v3;
}

- (id)formatTimeInterval
{
  time = self->_time;
  if (time >= 0.0)
  {
    v4 = self->_time;
  }

  else
  {
    v4 = -time;
  }

  v5 = vcvtmd_s64_f64(v4 / 60.0);
  v6 = (v5 / 60);
  if (formatTimeInterval_onceToken != -1)
  {
    [NTKTimeIntervalLabel formatTimeInterval];
  }

  v7 = (v5 % 60);
  style = self->_style;
  if (style)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v5 + 59) >= 0x77;
  }

  v10 = !v9;
  self->_showSubSeconds = v10;
  if (style == 1)
  {
    if (self->_isSigned)
    {
      v11 = &__formatHourMinSigned;
    }

    else
    {
      v11 = &__formatHourMin;
    }

    v12 = v6;
    if (time < 0.0)
    {
      v12 = -v6;
    }

    v13 = v12;
    [MEMORY[0x277CCACA8] localizedStringWithFormat:*v11, v13, (v5 % 60), v18];
  }

  else
  {
    v14 = 60 * v5;
    v15 = (v4 - (60 * v5));
    if ([(NTKTimeIntervalLabel *)self showSubSeconds])
    {
      [MEMORY[0x277CCACA8] localizedStringWithFormat:__formatMinSecSubsec, v7, v15, (llround((v4 - (v14 + v15)) * 100.0) % 100)];
    }

    else
    {
      [MEMORY[0x277CCACA8] localizedStringWithFormat:__formatHourMinSec, v6, v7, v15];
    }
  }
  v16 = ;

  return v16;
}

- (BOOL)shouldShowDigits
{
  if (self->_frozen)
  {
    return 0;
  }

  if (self->_showSubSeconds)
  {
    return 1;
  }

  return self->_style == 1;
}

- (void)setTime:(double)time
{
  if (self->_time != time)
  {
    [(NTKTimeIntervalLabel *)self forceTime:?];
  }
}

- (void)setSuffix:(id)suffix
{
  suffixCopy = suffix;
  suffix = self->_suffix;
  v15 = suffixCopy;
  if (suffixCopy)
  {
    if (!suffix)
    {
      v6 = objc_alloc(MEMORY[0x277D756B8]);
      v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v8 = self->_suffix;
      self->_suffix = v7;

      if (self->_suffixSmallCaps)
      {
        cLKFontWithLocalizedSmallCaps = [(CLKFont *)self->_font CLKFontWithLocalizedSmallCaps];
        [(UILabel *)self->_suffix setFont:cLKFontWithLocalizedSmallCaps];
      }

      else
      {
        [(UILabel *)self->_suffix setFont:self->_font];
      }

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)self->_suffix setBackgroundColor:clearColor];

      textColor = [(UILabel *)self->_label textColor];
      [(UILabel *)self->_suffix setTextColor:textColor];

      [(UILabel *)self->_suffix setTextAlignment:0];
      [(NTKTimeIntervalLabel *)self addSubview:self->_suffix];
      suffix = self->_suffix;
    }

    text = [(UILabel *)suffix text];
    v14 = [v15 isEqual:text];

    if ((v14 & 1) == 0)
    {
      [(UILabel *)self->_suffix setText:v15];
      [(UILabel *)self->_suffix sizeToFit];
    }
  }

  else
  {
    [(UILabel *)suffix removeFromSuperview];
    v10 = self->_suffix;
    self->_suffix = 0;
  }
}

- (void)setPrefix:(id)prefix
{
  prefixCopy = prefix;
  prefix = self->_prefix;
  v15 = prefixCopy;
  if (prefixCopy)
  {
    if (!prefix)
    {
      v6 = objc_alloc(MEMORY[0x277D756B8]);
      v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v8 = self->_prefix;
      self->_prefix = v7;

      if (self->_suffixSmallCaps)
      {
        cLKFontWithLocalizedSmallCaps = [(CLKFont *)self->_font CLKFontWithLocalizedSmallCaps];
        [(UILabel *)self->_prefix setFont:cLKFontWithLocalizedSmallCaps];
      }

      else
      {
        [(UILabel *)self->_prefix setFont:self->_font];
      }

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)self->_prefix setBackgroundColor:clearColor];

      textColor = [(UILabel *)self->_label textColor];
      [(UILabel *)self->_prefix setTextColor:textColor];

      [(UILabel *)self->_prefix setTextAlignment:0];
      [(NTKTimeIntervalLabel *)self addSubview:self->_prefix];
      prefix = self->_prefix;
    }

    text = [(UILabel *)prefix text];
    v14 = [v15 isEqual:text];

    if ((v14 & 1) == 0)
    {
      [(UILabel *)self->_prefix setText:v15];
      [(UILabel *)self->_prefix sizeToFit];
    }
  }

  else
  {
    [(UILabel *)prefix removeFromSuperview];
    v10 = self->_prefix;
    self->_prefix = 0;
  }
}

- (void)forceTime:(double)time
{
  self->_time = time;
  getTimeText = [(NTKTimeIntervalLabel *)self getTimeText];
  text = self->_text;
  self->_text = getTimeText;

  if ([(NTKTimeIntervalLabel *)self shouldShowDigits])
  {
    [(NTKTimeIntervalLabel *)self createDigitViews];
    time = self->_time;
    if (time >= 0.0)
    {
      v7 = self->_time;
    }

    else
    {
      v7 = -time;
    }

    v8 = vcvtmd_s64_f64(v7 / 60.0);
    v9 = v8 % 60;
    if ([(NTKTimeIntervalLabel *)self showSubSeconds])
    {
      v10 = v7 - ((v7 - (60 * v8)) + 60 * v9);
      v11 = llround(v10 * 10.0);
      v9 = llround(v10 * 100.0);
    }

    else
    {
      v11 = (((103 * v9) >> 15) & 1) + ((103 * v9) >> 10);
    }

    v14 = v11 % 10;
    v15 = v9 % 10;
    v13 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:0];
    v16 = [(NTKTimeIntervalLabel *)self _localImageForDigit:v14];
    image = [v13 image];

    if (v16 != image)
    {
      [v13 setImage:v16];
    }

    v18 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:1];
    v19 = [(NTKTimeIntervalLabel *)self _localImageForDigit:v15];
    image2 = [v18 image];

    if (v19 != image2)
    {
      [v18 setImage:v19];
    }

    [v13 setHidden:0];
    [v18 setHidden:0];
    v21 = [(NSString *)self->_text substringWithRange:0, [(NSString *)self->_text length]- 2];
    [(NTKTimeIntervalLabel *)self setLabelText:v21];
  }

  else
  {
    [(NTKTimeIntervalLabel *)self setLabelText:self->_text];
    v12 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:0];
    [v12 setHidden:1];

    v13 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:1];
    [v13 setHidden:1];
  }

  [(NTKTimeIntervalLabel *)self sizeToFitLabelIfNeeded];
}

- (void)sizeToFitLabelIfNeeded
{
  isShowingDigits = self->_isShowingDigits;
  if (isShowingDigits != [(NTKTimeIntervalLabel *)self shouldShowDigits]|| !self->_labelWasSized)
  {
    self->_isShowingDigits = [(NTKTimeIntervalLabel *)self shouldShowDigits];
    self->_labelWasSized = 1;
    [(UILabel *)self->_label sizeToFit];
    didResizeHandler = self->_didResizeHandler;
    if (didResizeHandler)
    {
      v5 = *(didResizeHandler + 2);

      v5();
    }
  }
}

- (void)setFrozen:(BOOL)frozen
{
  if (self->_frozen != frozen)
  {
    frozenCopy = frozen;
    self->_frozen = frozen;
    v6 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:0];
    [v6 setHidden:frozenCopy];

    v7 = [(NSMutableArray *)self->_digits objectAtIndexedSubscript:1];
    [v7 setHidden:frozenCopy];

    [(NTKTimeIntervalLabel *)self setNeedsLayout];
  }
}

- (void)recalculateSize
{
  [(NTKTimeIntervalLabel *)self calculateMetrics];
  [(NTKTimeIntervalLabel *)self sizeToFit];

  [(NTKTimeIntervalLabel *)self setNeedsLayout];
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_label text];
  v5 = NTKEqualStrings(textCopy, text);

  if ((v5 & 1) == 0)
  {
    text2 = [(UILabel *)self->_label text];
    v7 = [text2 length];
    v8 = [textCopy length];

    if (v7 != v8)
    {
      [(NTKTimeIntervalLabel *)self recalculateSize];
    }

    if (self->_isSigned)
    {
      text3 = [(UILabel *)self->_label text];
      v10 = [text3 characterAtIndex:0];
      v11 = [textCopy characterAtIndex:0];

      if (v10 != v11)
      {
        [(NTKTimeIntervalLabel *)self recalculateSize];
      }
    }

    [(UILabel *)self->_label setText:textCopy];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_label textColor];
  v5 = [colorCopy isEqual:textColor];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_label setTextColor:colorCopy];
    [(NTKTimeIntervalLabel *)self _invalidateDigitImages];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([fontCopy isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(UILabel *)self->_label setFont:fontCopy];
  }
}

- (void)_invalidateDigitImages
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_digits;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  digits = self->_digits;
  self->_digits = 0;

  images = self->_images;
  self->_images = 0;
}

- (id)_cachedImageForDigit:(unint64_t)digit
{
  textColor = [(UILabel *)self->_label textColor];
  [(CLKFont *)self->_font pointSize];
  v7 = _cacheKeyString(digit, textColor, v6);
  v8 = _ImageCache(self->_device);
  v9 = [v8 imageForKey:v7];

  if (!v9)
  {
    digit = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%tu", digit];
    v9 = [digit imageWithFont:self->_font border:0 color:textColor cropped:0];
    v11 = _ImageCache(self->_device);
    [v11 setImage:v9 forKey:v7];
  }

  return v9;
}

- (CGSize)textSize
{
  width = self->_textSize.width;
  height = self->_textSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end