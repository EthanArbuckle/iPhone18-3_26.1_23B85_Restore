@interface PKPassTileValueDate
+ (id)createWithContent:(id)content dateStyle:(int64_t)style timeStyle:(int64_t)timeStyle;
+ (id)createWithContent:(id)content dateStyle:(int64_t)style timeStyle:(int64_t)timeStyle ignoresTimeZone:(BOOL)zone isRelative:(BOOL)relative;
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileValueDate)initWithCoder:(id)coder;
- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileValueDate

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PKPassTileValueDate;
  if (-[PKPassTileValue _setUpWithDictionary:](&v23, sel__setUpWithDictionary_, dictionaryCopy) && ([dictionaryCopy PKStringForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [dictionaryCopy PKStringForKey:@"dateStyle"];
    v12 = v7;
    if (v7)
    {
      v13 = _PKEnumValueFromString(v7, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v8, v9, v10, v11, 0);
    }

    else
    {
      v13 = 0;
    }

    self->_dateStyle = v13;
    v15 = [dictionaryCopy PKStringForKey:@"timeStyle"];
    v20 = v15;
    if (v15)
    {
      v21 = _PKEnumValueFromString(v15, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v16, v17, v18, v19, 0);
    }

    else
    {
      v21 = 0;
    }

    self->_timeStyle = v21;
    self->_ignoresTimeZone = [dictionaryCopy PKBoolForKey:@"ignoresTimeZone"];
    self->_isRelative = [dictionaryCopy PKBoolForKey:@"isRelative"];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)createWithContent:(id)content dateStyle:(int64_t)style timeStyle:(int64_t)timeStyle
{
  v5 = [self createWithContent:content dateStyle:style timeStyle:timeStyle ignoresTimeZone:0 isRelative:0];

  return v5;
}

+ (id)createWithContent:(id)content dateStyle:(int64_t)style timeStyle:(int64_t)timeStyle ignoresTimeZone:(BOOL)zone isRelative:(BOOL)relative
{
  contentCopy = content;
  if (contentCopy)
  {
    v13 = [PKPassTileValue _createForType:1 resolved:1];
    objc_storeStrong(v13 + 4, content);
    v13[5] = style;
    v13[6] = timeStyle;
    *(v13 + 24) = zone;
    *(v13 + 25) = relative;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueDate;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:bundle privateBundle:privateBundle];
  objc_storeStrong(v5 + 4, self->_content);
  v5[5] = self->_dateStyle;
  v5[6] = self->_timeStyle;
  *(v5 + 25) = self->_isRelative;
  *(v5 + 24) = self->_ignoresTimeZone;
  return v5;
}

- (id)displayableStringWithPassState:(id)state inContext:(int64_t)context
{
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:self->_dateStyle];
  [v5 setTimeStyle:self->_timeStyle];
  [v5 setDoesRelativeDateFormatting:self->_isRelative];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v5 setLocale:autoupdatingCurrentLocale];

  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v5 setCalendar:autoupdatingCurrentCalendar];

  if (self->_ignoresTimeZone)
  {
    v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v5 setTimeZone:v8];

    ignoresTimeZone = self->_ignoresTimeZone;
  }

  else
  {
    ignoresTimeZone = 0;
  }

  v10 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(self->_content, ignoresTimeZone, 0);
  v11 = [v5 stringFromDate:v10];

  return v11;
}

- (PKPassTileValueDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPassTileValueDate;
  v5 = [(PKPassTileValue *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStyle"];
    v5->_dateStyle = _PKEnumValueFromString(v8, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v9, v10, v11, v12, 0);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStyle"];
    v5->_timeStyle = _PKEnumValueFromString(v13, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v14, v15, v16, v17, 0);

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ignoresTimeZone"];
    v5->_ignoresTimeZone = [v18 BOOLValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRelative"];
    v5->_isRelative = [v19 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = PKPassTileValueDate;
  coderCopy = coder;
  [(PKPassTileValue *)&v19 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  v10 = _PKEnumValueToString(self->_dateStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v5, v6, v7, v8, v9, 0);
  [coderCopy encodeObject:v10 forKey:@"dateStyle"];

  v16 = _PKEnumValueToString(self->_timeStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v11, v12, v13, v14, v15, 0);
  [coderCopy encodeObject:v16 forKey:@"timeStyle"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoresTimeZone];
  [coderCopy encodeObject:v17 forKey:@"ignoresTimeZone"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRelative];
  [coderCopy encodeObject:v18 forKey:@"isRelative"];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PKPassTileValueDate;
  v7 = [(PKPassTileValue *)&v6 hash];
  v3 = [(NSString *)self->_content hash];
  dateStyle = self->_dateStyle;
  v8 = v3;
  v9 = dateStyle;
  timeStyle = self->_timeStyle;
  ignoresTimeZone = self->_ignoresTimeZone;
  isRelative = self->_isRelative;
  return SipHash();
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = PKPassTileValueDate;
  if ([(PKPassTileValue *)&v14 _isEqual:equalCopy])
  {
    v5 = equalCopy;
    content = self->_content;
    v7 = v5[4];
    v8 = content;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {

        goto LABEL_16;
      }

      v12 = [(NSString *)v7 isEqualToString:v8];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    if (v5[5] == self->_dateStyle && v5[6] == self->_timeStyle && *(v5 + 24) == self->_ignoresTimeZone)
    {
      v11 = *(v5 + 25) == self->_isRelative;
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

@end