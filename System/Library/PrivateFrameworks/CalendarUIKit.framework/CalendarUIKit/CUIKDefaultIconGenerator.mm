@interface CUIKDefaultIconGenerator
+ (BOOL)_isNonRedDayOfWeekRequiredForLocale:(id)locale;
+ (id)_adjustedAttributesWithLanguageIdentifierIfNeeded:(id)needed calendar:(id)calendar;
+ (id)_countriesRequiringNonRedDayOfWeek;
+ (id)_dateNameFromDateComponents:(id)components calendar:(id)calendar type:(int64_t)type forceAbbreviated:(BOOL)abbreviated;
+ (id)_dayNumberStringFromDateComponents:(id)components calendar:(id)calendar;
+ (id)_languageIdentifierForNumberingSystem:(id)system;
- (CGImage)iconImageWithDateComponents:(id)components calendar:(id)calendar format:(int64_t)format size:(CGSize)size scale:(double)scale appearance:(int64_t)appearance layers:(unint64_t)layers;
- (CGSize)canvasSize;
- (CUIKDefaultIconGenerator)initWithForceNoTextEffects:(BOOL)effects;
- (id)_colorForDayNumberWithAppearance:(int64_t)appearance;
- (id)_colorForDayOfWeekWithAppearance:(int64_t)appearance;
- (id)_dateNameFont;
- (id)_dayNumberFont;
- (void)_drawBackgroundWithContext:(CGContext *)context;
- (void)_drawDateNameWithContext:(CGContext *)context;
- (void)_drawDayNumberWithContext:(CGContext *)context;
@end

@implementation CUIKDefaultIconGenerator

- (id)_dayNumberFont
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

  v5 = CUIKLocalizedStringForInteger(1uLL);
  v6 = [v5 isEqual:@"൧"];

  v7 = CUIKLocalizedStringForInteger(1uLL);
  v8 = [v7 isEqual:@"௧"];

  if ([v4 isEqual:@"ml"] && (v6 & 1) != 0)
  {
    v9 = 496.0;
  }

  else
  {
    v10 = [v4 isEqual:@"ta"];
    v9 = 638.0;
    if ((v10 & v8) != 0)
    {
      v9 = 596.0;
    }
  }

  [(CUIKDefaultIconGenerator *)self _roundSpecToActual:v9];
  v12 = CTFontCreateWithNameAndOptions(@".SFSoftNumeric-Regular", v11, 0, 0x20000uLL);

  return v12;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)_countriesRequiringNonRedDayOfWeek
{
  if (_countriesRequiringNonRedDayOfWeek_onceToken != -1)
  {
    +[CUIKDefaultIconGenerator _countriesRequiringNonRedDayOfWeek];
  }

  v3 = _countriesRequiringNonRedDayOfWeek_countries;

  return v3;
}

- (id)_dateNameFont
{
  v2 = MEMORY[0x1E69DB878];
  [(CUIKDefaultIconGenerator *)self _roundSpecToActual:204.0];

  return [v2 systemFontOfSize:? weight:?];
}

- (CUIKDefaultIconGenerator)initWithForceNoTextEffects:(BOOL)effects
{
  v4.receiver = self;
  v4.super_class = CUIKDefaultIconGenerator;
  return [(CUIKDefaultIconGenerator *)&v4 init];
}

- (CGImage)iconImageWithDateComponents:(id)components calendar:(id)calendar format:(int64_t)format size:(CGSize)size scale:(double)scale appearance:(int64_t)appearance layers:(unint64_t)layers
{
  height = size.height;
  width = size.width;
  componentsCopy = components;
  calendarCopy = calendar;
  self->_canvasSize.width = width;
  self->_canvasSize.height = height;
  self->_canvasScale = scale;
  self->_iconFormat = format;
  self->_appearance = appearance;
  if (!componentsCopy)
  {
    v23 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CUIKDefaultIconGenerator iconImageWithDateComponents:calendar:format:size:scale:appearance:layers:];
    }

    goto LABEL_10;
  }

  objc_storeStrong(&self->_dateComponents, components);
  if (!calendarCopy)
  {
    v23 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CUIKDefaultIconGenerator iconImageWithDateComponents:calendar:format:size:scale:appearance:layers:];
    }

LABEL_10:

    v22 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&self->_calendar, calendar);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__CUIKDefaultIconGenerator_iconImageWithDateComponents_calendar_format_size_scale_appearance_layers___block_invoke;
  v25[3] = &unk_1E839AB60;
  v25[4] = self;
  v25[5] = layers;
  v20 = [MEMORY[0x1E69DCAB8] cuik_drawImageWithSize:v25 scale:width drawBlock:{height, scale}];
  cuik_CGImage = [v20 cuik_CGImage];
  v22 = cuik_CGImage;
  if (cuik_CGImage)
  {
    CFRetain(cuik_CGImage);
  }

LABEL_11:
  return v22;
}

uint64_t __101__CUIKDefaultIconGenerator_iconImageWithDateComponents_calendar_format_size_scale_appearance_layers___block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = [*(v3 + 32) _drawDayNumberWithContext:a2];
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [*(result + 32) _drawBackgroundWithContext:a2];
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 32);

  return [v5 _drawDateNameWithContext:a2];
}

- (void)_drawBackgroundWithContext:(CGContext *)context
{
  v16[2] = *MEMORY[0x1E69E9840];
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  appearance = self->_appearance;
  if (appearance == 1)
  {
    GenericRGB = CGColorCreateGenericRGB(0.192156863, 0.192156863, 0.192156863, 1.0);
    v12 = CGColorCreateGenericRGB(0.0784313725, 0.0784313725, 0.0784313725, 1.0);
    v16[0] = GenericRGB;
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v14 = CGGradientCreateWithColors(0, v13, 0);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = width;
    v21.size.height = height;
    v19.y = CGRectGetMaxY(v21);
    v18.x = 0.0;
    v19.x = 0.0;
    v18.y = MinY;
    CGContextDrawLinearGradient(context, v14, v18, v19, 0);
    CGGradientRelease(v14);
    CGColorRelease(GenericRGB);
    CGColorRelease(v12);
  }

  else if (!appearance)
  {
    CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
    v7 = 0;
    v8 = 0;
    v9 = width;
    v10 = height;

    CGContextFillRect(context, *&v7);
  }
}

+ (id)_dayNumberStringFromDateComponents:(id)components calendar:(id)calendar
{
  componentsCopy = components;
  calendarCopy = calendar;
  if ([componentsCopy day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CUIKDefaultIconGenerator _dayNumberStringFromDateComponents:calendar:];
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    locale = [calendarCopy locale];
    [v9 setLocale:locale];

    v11 = [componentsCopy day];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v8 = [v9 stringFromNumber:v12];
  }

  return v8;
}

- (void)_drawDayNumberWithContext:(CGContext *)context
{
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  dateComponents = [(CUIKDefaultIconGenerator *)self dateComponents];
  calendar = [(CUIKDefaultIconGenerator *)self calendar];
  v7 = [v4 _dayNumberStringFromDateComponents:dateComponents calendar:calendar];

  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setAlignment:1];
    [v8 setLineBreakMode:0];
    _dayNumberFont = [(CUIKDefaultIconGenerator *)self _dayNumberFont];
    v10 = *MEMORY[0x1E69DB748];
    v34[0] = *MEMORY[0x1E69DB648];
    v34[1] = v10;
    v35[0] = _dayNumberFont;
    v35[1] = &unk_1F4ABEBD0;
    v11 = *MEMORY[0x1E69DB688];
    v35[2] = v8;
    v12 = *MEMORY[0x1E69DB650];
    v34[2] = v11;
    v34[3] = v12;
    v13 = [(CUIKDefaultIconGenerator *)self _colorForDayNumberWithAppearance:self->_appearance];
    v35[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];

    v15 = objc_opt_class();
    calendar2 = [(CUIKDefaultIconGenerator *)self calendar];
    v17 = [v15 _adjustedAttributesWithLanguageIdentifierIfNeeded:v14 calendar:calendar2];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v17];
    [(CUIKDefaultIconGenerator *)self canvasSize];
    [v18 boundingRectWithSize:1 options:0 context:{v20, -[UIFont cuik_lineHeight](_dayNumberFont, v19)}];
    v22 = v21;
    v24 = v23;
    [(CUIKDefaultIconGenerator *)self canvasSize];
    v26 = (v25 - v22) * 0.5;
    [(CUIKDefaultIconGenerator *)self _roundSpecToActual:850.0];
    v28 = v27;
    [_dayNumberFont ascender];
    v30 = v28 - v29;
    [(CUIKDefaultIconGenerator *)self canvasScale];
    v32 = v31;
    if (([v7 isEqualToString:@"21"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"31"))
    {
      v33 = 1.0;
    }

    else
    {
      if (([v7 isEqualToString:@"4"] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"14"))
      {
        goto LABEL_6;
      }

      v33 = -1.0;
    }

    v26 = v26 + v33 / v32;
LABEL_6:
    [v18 drawWithRect:1 options:0 context:{v26, v30, v22, v24}];

    goto LABEL_9;
  }

  v8 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CUIKDefaultIconGenerator *)self _drawDayNumberWithContext:v8];
  }

LABEL_9:
}

+ (id)_adjustedAttributesWithLanguageIdentifierIfNeeded:(id)needed calendar:(id)calendar
{
  neededCopy = needed;
  locale = [calendar locale];
  _numberingSystem = [locale _numberingSystem];

  v9 = [self _languageIdentifierForNumberingSystem:_numberingSystem];
  if (v9)
  {
    v10 = [neededCopy mutableCopy];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A518]];
  }

  else
  {
    v10 = neededCopy;
  }

  return v10;
}

+ (id)_languageIdentifierForNumberingSystem:(id)system
{
  if ([system isEqualToString:@"arabext"])
  {
    return @"ur";
  }

  else
  {
    return 0;
  }
}

+ (id)_dateNameFromDateComponents:(id)components calendar:(id)calendar type:(int64_t)type forceAbbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  componentsCopy = components;
  calendarCopy = calendar;
  v11 = [CUIKApplicationIconUtilities dateFormatterWithCalendar:calendarCopy];
  [v11 setFormattingContext:2];
  if (type != 1)
  {
    if ([componentsCopy weekday] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CUIKDefaultIconGenerator _dateNameFromDateComponents:calendar:type:forceAbbreviated:];
      }

      goto LABEL_8;
    }

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    shortStandaloneMonthSymbols = [v17 localizedStringForKey:@"ccc" value:&stru_1F4AA8958 table:0];

    if (([shortStandaloneMonthSymbols isEqualToString:@"ccc"] & 1) != 0 || abbreviatedCopy)
    {
      shortStandaloneWeekdaySymbols = [v11 shortStandaloneWeekdaySymbols];
    }

    else
    {
      shortStandaloneWeekdaySymbols = [v11 standaloneWeekdaySymbols];
    }

    locale2 = shortStandaloneWeekdaySymbols;
    v16 = [shortStandaloneWeekdaySymbols objectAtIndexedSubscript:{objc_msgSend(componentsCopy, "weekday") - 1}];
    if (CalSystemSolariumEnabled())
    {
      goto LABEL_19;
    }

    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v19 localizedStringForKey:@"icon_weekday_force_uppercase" value:@"1" table:0];

    if ([v13 isEqualToString:@"1"])
    {
      locale = [calendarCopy locale];
      v21 = [v16 uppercaseStringWithLocale:locale];

      v16 = v21;
    }

LABEL_18:

LABEL_19:
    v13 = v16;
    goto LABEL_20;
  }

  if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CUIKDefaultIconGenerator _dateNameFromDateComponents:calendar:type:forceAbbreviated:];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_21;
  }

  shortStandaloneMonthSymbols = [v11 shortStandaloneMonthSymbols];
  v13 = [shortStandaloneMonthSymbols objectAtIndexedSubscript:{objc_msgSend(componentsCopy, "month") - 1}];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    locale2 = [calendarCopy locale];
    v16 = [v13 uppercaseStringWithLocale:locale2];
    goto LABEL_18;
  }

LABEL_20:

LABEL_21:

  return v13;
}

- (void)_drawDateNameWithContext:(CGContext *)context
{
  v52[4] = *MEMORY[0x1E69E9840];
  [(CUIKDefaultIconGenerator *)self _roundSpecToActual:context, 34.0];
  v5 = v4;
  [(CUIKDefaultIconGenerator *)self canvasSize];
  v7 = v6 + v5 * -2.0;
  v8 = objc_opt_new();
  [v8 setAlignment:1];
  [v8 setLineBreakMode:4];
  v9 = [(CUIKDefaultIconGenerator *)self _colorForDayOfWeekWithAppearance:self->_appearance];
  _dateNameFont = [(CUIKDefaultIconGenerator *)self _dateNameFont];
  v12 = *MEMORY[0x1E69DB748];
  v51[0] = *MEMORY[0x1E69DB648];
  v11 = v51[0];
  v51[1] = v12;
  v52[0] = _dateNameFont;
  v52[1] = &unk_1F4ABEBD0;
  v46 = *MEMORY[0x1E69DB650];
  v47 = *MEMORY[0x1E69DB688];
  v51[2] = *MEMORY[0x1E69DB688];
  v51[3] = v46;
  v52[2] = v8;
  v52[3] = v9;
  v48 = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v14 = objc_opt_class();
  dateComponents = [(CUIKDefaultIconGenerator *)self dateComponents];
  calendar = [(CUIKDefaultIconGenerator *)self calendar];
  v17 = [v14 _dateNameFromDateComponents:dateComponents calendar:calendar type:-[CUIKDefaultIconGenerator iconFormat](self forceAbbreviated:{"iconFormat"), 0}];

  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v13];
  v19 = [_dateNameFont cuik_fontScaledByScaleFactor:0.8];
  [v18 setObject:v19 forKeyedSubscript:v11];

  [v17 sizeWithAttributes:v18];
  if (v20 > v7)
  {
    v21 = objc_opt_class();
    dateComponents2 = [(CUIKDefaultIconGenerator *)self dateComponents];
    calendar2 = [(CUIKDefaultIconGenerator *)self calendar];
    v24 = [v21 _dateNameFromDateComponents:dateComponents2 calendar:calendar2 type:-[CUIKDefaultIconGenerator iconFormat](self forceAbbreviated:{"iconFormat"), 1}];

    v17 = v24;
  }

  if (v17)
  {
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v13];
    cuik_lineHeight = [(UIFont *)_dateNameFont cuik_lineHeight];
    v28 = objc_opt_new();
    [v28 setMaximumNumberOfLines:1];
    [v28 setMinimumScaleFactor:0.8];
    [v17 sizeWithAttributes:v13];
    [v25 boundingRectWithSize:1 options:v28 context:v7, cuik_lineHeight];
    v30 = v29;
    v32 = v31;
    [v28 actualScaleFactor];
    if (v33 == 1.0)
    {
      v35 = v48;
    }

    else
    {
      [v28 actualScaleFactor];
      v34 = [_dateNameFont cuik_fontScaledByScaleFactor:?];

      v49[0] = v11;
      v49[1] = v47;
      v50[0] = v34;
      v50[1] = v8;
      v49[2] = v46;
      v35 = v48;
      v50[2] = v48;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

      v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v36];
      [v37 boundingRectWithSize:1 options:0 context:v7, [(UIFont *)v34 cuik_lineHeight]];
      v30 = v39;
      v32 = v40;
      v25 = v37;
      v13 = v36;
      _dateNameFont = v34;
    }

    [(CUIKDefaultIconGenerator *)self canvasSize];
    v42 = (v41 - v30) * 0.5;
    [(CUIKDefaultIconGenerator *)self _roundSpecToActual:300.0];
    v44 = v43;
    [_dateNameFont ascender];
    [v25 drawWithRect:1 options:0 context:v42, v44 - v45, v30, v32];
  }

  else
  {
    v25 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(CUIKDefaultIconGenerator *)self _drawDateNameWithContext:v25];
    }

    v35 = v48;
  }
}

- (id)_colorForDayOfWeekWithAppearance:(int64_t)appearance
{
  calendar = [(CUIKDefaultIconGenerator *)self calendar];
  locale = [calendar locale];

  v7 = [objc_opt_class() _isNonRedDayOfWeekRequiredForLocale:locale];
  if (appearance == 2)
  {
    v10 = MEMORY[0x1E69DC888];
    v11 = 0.819607843;
    v12 = 1.0;
    v13 = 0.819607843;
    v14 = 0.819607843;
LABEL_13:
    cuik_systemWhiteColor = [v10 colorWithRed:v11 green:v13 blue:v14 alpha:v12];
    goto LABEL_14;
  }

  v8 = v7;
  if (appearance == 1)
  {
    v10 = MEMORY[0x1E69DC888];
    if (v8)
    {
      cuik_systemWhiteColor = [MEMORY[0x1E69DC888] cuik_systemWhiteColor];
      goto LABEL_14;
    }

    v13 = 0.258823529;
    v14 = 0.270588235;
    goto LABEL_12;
  }

  if (appearance)
  {
    v15 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
    v10 = MEMORY[0x1E69DC888];
    v13 = 0.219607843;
    v14 = 0.235294118;
LABEL_12:
    v11 = 1.0;
    v12 = 1.0;
    goto LABEL_13;
  }

  cuik_systemWhiteColor = [(CUIKDefaultIconGenerator *)self _iconBlackColor];
LABEL_14:
  v15 = cuik_systemWhiteColor;
LABEL_15:

  return v15;
}

- (id)_colorForDayNumberWithAppearance:(int64_t)appearance
{
  if ((appearance - 1) >= 2)
  {
    if (appearance)
    {
      _iconBlackColor = 0;
    }

    else
    {
      _iconBlackColor = [(CUIKDefaultIconGenerator *)self _iconBlackColor];
    }
  }

  else
  {
    _iconBlackColor = [MEMORY[0x1E69DC888] cuik_systemWhiteColor];
  }

  return _iconBlackColor;
}

uint64_t __62__CUIKDefaultIconGenerator__countriesRequiringNonRedDayOfWeek__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"JP", @"KR", 0}];
  v1 = _countriesRequiringNonRedDayOfWeek_countries;
  _countriesRequiringNonRedDayOfWeek_countries = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)_isNonRedDayOfWeekRequiredForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695D978]];
  _countriesRequiringNonRedDayOfWeek = [objc_opt_class() _countriesRequiringNonRedDayOfWeek];
  v5 = [_countriesRequiringNonRedDayOfWeek containsObject:v3];

  return v5;
}

- (void)_drawDayNumberWithContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 dateComponents];
  v5 = [a1 calendar];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Day number string is nil or empty from date components: %@, calendar: %@.", &v6, 0x16u);
}

- (void)_drawDateNameWithContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 dateComponents];
  v5 = [a1 calendar];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "iconFormat")}];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Date name string is nil or empty from date components: %@, calendar: %@, type: %@", &v7, 0x20u);
}

@end