@interface PKPassTileValueDate
+ (id)createWithContent:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5;
+ (id)createWithContent:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5 ignoresTimeZone:(BOOL)a6 isRelative:(BOOL)a7;
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileValueDate)initWithCoder:(id)a3;
- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4;
- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileValueDate

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKPassTileValueDate;
  if (-[PKPassTileValue _setUpWithDictionary:](&v23, sel__setUpWithDictionary_, v4) && ([v4 PKStringForKey:@"content"], v5 = objc_claimAutoreleasedReturnValue(), content = self->_content, self->_content = v5, content, self->_content))
  {
    v7 = [v4 PKStringForKey:@"dateStyle"];
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
    v15 = [v4 PKStringForKey:@"timeStyle"];
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
    self->_ignoresTimeZone = [v4 PKBoolForKey:@"ignoresTimeZone"];
    self->_isRelative = [v4 PKBoolForKey:@"isRelative"];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)createWithContent:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5
{
  v5 = [a1 createWithContent:a3 dateStyle:a4 timeStyle:a5 ignoresTimeZone:0 isRelative:0];

  return v5;
}

+ (id)createWithContent:(id)a3 dateStyle:(int64_t)a4 timeStyle:(int64_t)a5 ignoresTimeZone:(BOOL)a6 isRelative:(BOOL)a7
{
  v12 = a3;
  if (v12)
  {
    v13 = [PKPassTileValue _createForType:1 resolved:1];
    objc_storeStrong(v13 + 4, a3);
    v13[5] = a4;
    v13[6] = a5;
    *(v13 + 24) = a6;
    *(v13 + 25) = a7;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKPassTileValueDate;
  v5 = [(PKPassTileValue *)&v7 createResolvedValueWithBundle:a3 privateBundle:a4];
  objc_storeStrong(v5 + 4, self->_content);
  v5[5] = self->_dateStyle;
  v5[6] = self->_timeStyle;
  *(v5 + 25) = self->_isRelative;
  *(v5 + 24) = self->_ignoresTimeZone;
  return v5;
}

- (id)displayableStringWithPassState:(id)a3 inContext:(int64_t)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:self->_dateStyle];
  [v5 setTimeStyle:self->_timeStyle];
  [v5 setDoesRelativeDateFormatting:self->_isRelative];
  v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v5 setLocale:v6];

  v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  [v5 setCalendar:v7];

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

- (PKPassTileValueDate)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPassTileValueDate;
  v5 = [(PKPassTileValue *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateStyle"];
    v5->_dateStyle = _PKEnumValueFromString(v8, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v9, v10, v11, v12, 0);

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStyle"];
    v5->_timeStyle = _PKEnumValueFromString(v13, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v14, v15, v16, v17, 0);

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ignoresTimeZone"];
    v5->_ignoresTimeZone = [v18 BOOLValue];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRelative"];
    v5->_isRelative = [v19 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = PKPassTileValueDate;
  v4 = a3;
  [(PKPassTileValue *)&v19 encodeWithCoder:v4];
  [v4 encodeObject:self->_content forKey:@"content"];
  v10 = _PKEnumValueToString(self->_dateStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v5, v6, v7, v8, v9, 0);
  [v4 encodeObject:v10 forKey:@"dateStyle"];

  v16 = _PKEnumValueToString(self->_timeStyle, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v11, v12, v13, v14, v15, 0);
  [v4 encodeObject:v16 forKey:@"timeStyle"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoresTimeZone];
  [v4 encodeObject:v17 forKey:@"ignoresTimeZone"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRelative];
  [v4 encodeObject:v18 forKey:@"isRelative"];
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

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassTileValueDate;
  if ([(PKPassTileValue *)&v14 _isEqual:v4])
  {
    v5 = v4;
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