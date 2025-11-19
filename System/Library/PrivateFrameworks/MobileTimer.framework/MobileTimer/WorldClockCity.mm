@interface WorldClockCity
+ (BOOL)isCachedLanguageStaleForProperties:(id)a3;
+ (BOOL)isCachedLanguageStaleForProperties:(id)a3 systemLanguage:(id)a4;
+ (BOOL)isWorldClockCityProperties:(id)a3;
+ (id)unlocalizedExampleCity;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)properties;
- (NSNumber)alCityId;
- (NSString)countryCode;
- (NSString)countryName;
- (NSString)name;
- (NSString)timeZone;
- (NSString)unlocalizedCityName;
- (NSString)unlocalizedCountryName;
- (NSURL)idUrl;
- (WorldClockCity)initWithALCity:(id)a3;
- (WorldClockCity)initWithProperties:(id)a3;
- (WorldClockCity)initWithTimeZone:(id)a3 countryCode:(id)a4 name:(id)a5 countryName:(id)a6 unlocalizedName:(id)a7 unlocalizedCountryName:(id)a8;
- (id)description;
- (unint64_t)hash;
@end

@implementation WorldClockCity

+ (BOOL)isWorldClockCityProperties:(id)a3
{
  v3 = [a3 objectForKey:@"type"];
  v4 = [v3 integerValue] == 2 || objc_msgSend(v3, "integerValue") == 1;

  return v4;
}

+ (BOOL)isCachedLanguageStaleForProperties:(id)a3
{
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [v6 objectForKey:*MEMORY[0x1E695D9B0]];

  LOBYTE(a1) = [a1 isCachedLanguageStaleForProperties:v5 systemLanguage:v7];
  return a1;
}

+ (BOOL)isCachedLanguageStaleForProperties:(id)a3 systemLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isWorldClockCityProperties:v6])
  {
    v8 = [v6 objectForKey:@"languageCode"];
    if (v8)
    {
      v9 = [v7 isEqualToString:v8] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (id)unlocalizedExampleCity
{
  v2 = [[WorldClockCity alloc] initWithTimeZone:@"America/Los_Angeles" countryCode:@"US" name:@"Cupertino" countryName:@"USA" unlocalizedName:@"Cupertino" unlocalizedCountryName:@"USA"];

  return v2;
}

- (WorldClockCity)initWithALCity:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WorldClockCity;
  v6 = [(WorldClockCity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alCity, a3);
    v8 = v7;
  }

  return v7;
}

- (WorldClockCity)initWithTimeZone:(id)a3 countryCode:(id)a4 name:(id)a5 countryName:(id)a6 unlocalizedName:(id)a7 unlocalizedCountryName:(id)a8
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = WorldClockCity;
  v18 = [(WorldClockCity *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timeZone, a3);
    objc_storeStrong(&v19->_countryCode, a4);
    objc_storeStrong(&v19->_name, a5);
    objc_storeStrong(&v19->_countryName, a6);
    objc_storeStrong(&v19->_unlocalizedName, a7);
    objc_storeStrong(&v19->_unlocalizedCountryName, a8);
    v20 = v19;
  }

  return v19;
}

- (WorldClockCity)initWithProperties:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WorldClockCity;
  v5 = [(WorldClockCity *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"type"];
    v7 = [v4 objectForKey:@"city"];
    v8 = [v6 intValue];
    if (v8 == 2)
    {
      v19 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v7];
      v20 = 8;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_7:
        v22 = v5;

        goto LABEL_8;
      }

      v9 = [v7 objectForKey:@"timeZone"];
      timeZone = v5->_timeZone;
      v5->_timeZone = v9;

      v11 = [v7 objectForKey:@"countryCode"];
      countryCode = v5->_countryCode;
      v5->_countryCode = v11;

      v13 = [v7 objectForKey:@"name"];
      name = v5->_name;
      v5->_name = v13;

      v15 = [v7 objectForKey:@"countryName"];
      countryName = v5->_countryName;
      v5->_countryName = v15;

      v17 = [v7 objectForKey:@"unlocalizedName"];
      unlocalizedName = v5->_unlocalizedName;
      v5->_unlocalizedName = v17;

      v19 = [v7 objectForKey:@"unlocalizedCountryName"];
      v20 = 56;
    }

    v21 = *(&v5->super.isa + v20);
    *(&v5->super.isa + v20) = v19;

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_alCity)
  {
    v11.receiver = self;
    v11.super_class = WorldClockCity;
    v4 = [(WorldClockCity *)&v11 description];
    v5 = [(ALCity *)self->_alCity description];
    v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WorldClockCity;
    v4 = [(WorldClockCity *)&v10 description];
    timeZone = self->_timeZone;
    unlocalizedName = self->_unlocalizedName;
    v6 = [v3 stringWithFormat:@"%@ %@, %@ || %@ %@ || %@, %@", v4, self->_name, self->_countryName, timeZone, self->_countryCode, unlocalizedName, self->_unlocalizedCountryName];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    alCity = self->_alCity;
    v7 = v5[1];
    if (alCity)
    {
      if (v7)
      {
        v8 = [(ALCity *)alCity isEqual:?];
LABEL_5:
        v9 = v8;
LABEL_9:

        goto LABEL_10;
      }

LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }

    if (v7)
    {
      goto LABEL_8;
    }

    timeZone = self->_timeZone;
    if (timeZone != v5[2] && ![(NSString *)timeZone isEqualToString:?])
    {
      goto LABEL_8;
    }

    countryCode = self->_countryCode;
    if (countryCode != v5[5] && ![(NSString *)countryCode isEqualToString:?])
    {
      goto LABEL_8;
    }

    unlocalizedName = self->_unlocalizedName;
    if (unlocalizedName != v5[6])
    {
      if (![(NSString *)unlocalizedName isEqualToString:?])
      {
        goto LABEL_8;
      }

      unlocalizedName = self->_unlocalizedName;
    }

    if (unlocalizedName || (name = self->_name, name == v5[3]))
    {
      v9 = 1;
      goto LABEL_9;
    }

    v8 = [(NSString *)name isEqualToString:?];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  alCity = self->_alCity;
  if (alCity || (alCity = self->_unlocalizedName) != 0)
  {
    name = alCity;
  }

  else
  {
    name = self->_name;
  }

  return [(NSString *)name hash];
}

- (NSDictionary)properties
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  alCity = self->_alCity;
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  if (alCity)
  {
    v6 = [v5 initWithInt:2];
    [v3 setObject:v6 forKey:@"type"];
    v7 = [(ALCity *)self->_alCity properties];
    [v3 setObject:v7 forKey:@"city"];

    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [v8 objectForKey:*MEMORY[0x1E695D9B0]];

    v10 = @"languageCode";
  }

  else
  {
    v6 = [v5 initWithInt:1];
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    [v9 setObject:self->_timeZone forKey:@"timeZone"];
    [v9 setObject:self->_countryCode forKey:@"countryCode"];
    [v9 setObject:self->_name forKey:@"name"];
    [v9 setObject:self->_countryName forKey:@"countryName"];
    if (self->_unlocalizedName)
    {
      unlocalizedName = self->_unlocalizedName;
    }

    else
    {
      unlocalizedName = &stru_1F29360E0;
    }

    [v9 setObject:unlocalizedName forKey:@"unlocalizedName"];
    if (self->_unlocalizedCountryName)
    {
      unlocalizedCountryName = self->_unlocalizedCountryName;
    }

    else
    {
      unlocalizedCountryName = &stru_1F29360E0;
    }

    [v9 setObject:unlocalizedCountryName forKey:@"unlocalizedCountryName"];
    [v3 setObject:v6 forKey:@"type"];
    v10 = @"city";
  }

  [v3 setObject:v9 forKey:v10];

  return v3;
}

- (NSNumber)alCityId
{
  alCity = self->_alCity;
  if (alCity)
  {
    alCity = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(alCity, "identifier")}];
    v2 = vars8;
  }

  return alCity;
}

- (NSString)timeZone
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity timeZone];
  }

  else
  {
    v4 = self->_timeZone;
  }

  return v4;
}

- (NSString)name
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity name];
  }

  else
  {
    v4 = self->_name;
  }

  return v4;
}

- (NSString)countryName
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity countryName];
  }

  else
  {
    v4 = self->_countryName;
  }

  return v4;
}

- (NSString)unlocalizedCityName
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity unlocalizedName];
  }

  else
  {
    v4 = self->_unlocalizedName;
  }

  return v4;
}

- (NSString)unlocalizedCountryName
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity unlocalizedCountryName];
  }

  else
  {
    v4 = self->_unlocalizedCountryName;
  }

  return v4;
}

- (NSString)countryCode
{
  alCity = self->_alCity;
  if (alCity)
  {
    v4 = [(ALCity *)alCity localeCode];
  }

  else
  {
    v4 = self->_countryCode;
  }

  return v4;
}

- (NSURL)idUrl
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"x-apple-clock:world-clock?"];
  alCity = self->_alCity;
  if (alCity)
  {
    [v3 appendFormat:@"alcid=%d", -[ALCity identifier](alCity, "identifier")];
  }

  else
  {
    [v3 appendString:@"ccid="];
    [v3 appendString:self->_timeZone];
    [v3 appendString:@"$"];
    [v3 appendString:self->_countryCode];
    [v3 appendString:@"$"];
    unlocalizedName = self->_unlocalizedName;
    if (!unlocalizedName)
    {
      unlocalizedName = self->_name;
    }

    [v3 appendString:unlocalizedName];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];

  return v6;
}

@end