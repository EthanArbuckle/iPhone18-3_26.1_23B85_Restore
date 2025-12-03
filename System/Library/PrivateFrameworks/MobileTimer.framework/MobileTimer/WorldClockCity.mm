@interface WorldClockCity
+ (BOOL)isCachedLanguageStaleForProperties:(id)properties;
+ (BOOL)isCachedLanguageStaleForProperties:(id)properties systemLanguage:(id)language;
+ (BOOL)isWorldClockCityProperties:(id)properties;
+ (id)unlocalizedExampleCity;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)properties;
- (NSNumber)alCityId;
- (NSString)countryCode;
- (NSString)countryName;
- (NSString)name;
- (NSString)timeZone;
- (NSString)unlocalizedCityName;
- (NSString)unlocalizedCountryName;
- (NSURL)idUrl;
- (WorldClockCity)initWithALCity:(id)city;
- (WorldClockCity)initWithProperties:(id)properties;
- (WorldClockCity)initWithTimeZone:(id)zone countryCode:(id)code name:(id)name countryName:(id)countryName unlocalizedName:(id)unlocalizedName unlocalizedCountryName:(id)unlocalizedCountryName;
- (id)description;
- (unint64_t)hash;
@end

@implementation WorldClockCity

+ (BOOL)isWorldClockCityProperties:(id)properties
{
  v3 = [properties objectForKey:@"type"];
  v4 = [v3 integerValue] == 2 || objc_msgSend(v3, "integerValue") == 1;

  return v4;
}

+ (BOOL)isCachedLanguageStaleForProperties:(id)properties
{
  v4 = MEMORY[0x1E695DF58];
  propertiesCopy = properties;
  currentLocale = [v4 currentLocale];
  v7 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

  LOBYTE(self) = [self isCachedLanguageStaleForProperties:propertiesCopy systemLanguage:v7];
  return self;
}

+ (BOOL)isCachedLanguageStaleForProperties:(id)properties systemLanguage:(id)language
{
  propertiesCopy = properties;
  languageCopy = language;
  if ([self isWorldClockCityProperties:propertiesCopy])
  {
    v8 = [propertiesCopy objectForKey:@"languageCode"];
    if (v8)
    {
      v9 = [languageCopy isEqualToString:v8] ^ 1;
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

- (WorldClockCity)initWithALCity:(id)city
{
  cityCopy = city;
  v10.receiver = self;
  v10.super_class = WorldClockCity;
  v6 = [(WorldClockCity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alCity, city);
    v8 = v7;
  }

  return v7;
}

- (WorldClockCity)initWithTimeZone:(id)zone countryCode:(id)code name:(id)name countryName:(id)countryName unlocalizedName:(id)unlocalizedName unlocalizedCountryName:(id)unlocalizedCountryName
{
  zoneCopy = zone;
  codeCopy = code;
  nameCopy = name;
  countryNameCopy = countryName;
  unlocalizedNameCopy = unlocalizedName;
  unlocalizedCountryNameCopy = unlocalizedCountryName;
  v25.receiver = self;
  v25.super_class = WorldClockCity;
  v18 = [(WorldClockCity *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timeZone, zone);
    objc_storeStrong(&v19->_countryCode, code);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_countryName, countryName);
    objc_storeStrong(&v19->_unlocalizedName, unlocalizedName);
    objc_storeStrong(&v19->_unlocalizedCountryName, unlocalizedCountryName);
    v20 = v19;
  }

  return v19;
}

- (WorldClockCity)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v24.receiver = self;
  v24.super_class = WorldClockCity;
  v5 = [(WorldClockCity *)&v24 init];
  if (v5)
  {
    v6 = [propertiesCopy objectForKey:@"type"];
    v7 = [propertiesCopy objectForKey:@"city"];
    intValue = [v6 intValue];
    if (intValue == 2)
    {
      v19 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v7];
      v20 = 8;
    }

    else
    {
      if (intValue != 1)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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
    properties = [(ALCity *)self->_alCity properties];
    [v3 setObject:properties forKey:@"city"];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

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
    timeZone = [(ALCity *)alCity timeZone];
  }

  else
  {
    timeZone = self->_timeZone;
  }

  return timeZone;
}

- (NSString)name
{
  alCity = self->_alCity;
  if (alCity)
  {
    name = [(ALCity *)alCity name];
  }

  else
  {
    name = self->_name;
  }

  return name;
}

- (NSString)countryName
{
  alCity = self->_alCity;
  if (alCity)
  {
    countryName = [(ALCity *)alCity countryName];
  }

  else
  {
    countryName = self->_countryName;
  }

  return countryName;
}

- (NSString)unlocalizedCityName
{
  alCity = self->_alCity;
  if (alCity)
  {
    unlocalizedName = [(ALCity *)alCity unlocalizedName];
  }

  else
  {
    unlocalizedName = self->_unlocalizedName;
  }

  return unlocalizedName;
}

- (NSString)unlocalizedCountryName
{
  alCity = self->_alCity;
  if (alCity)
  {
    unlocalizedCountryName = [(ALCity *)alCity unlocalizedCountryName];
  }

  else
  {
    unlocalizedCountryName = self->_unlocalizedCountryName;
  }

  return unlocalizedCountryName;
}

- (NSString)countryCode
{
  alCity = self->_alCity;
  if (alCity)
  {
    localeCode = [(ALCity *)alCity localeCode];
  }

  else
  {
    localeCode = self->_countryCode;
  }

  return localeCode;
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