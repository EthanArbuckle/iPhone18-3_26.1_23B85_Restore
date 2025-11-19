@interface NTKDateComplication
+ (id)complicationWithDateStyle:(unint64_t)a3;
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (NTKDateComplication)initWithCoder:(id)a3;
- (NTKDateComplication)initWithComplicationType:(unint64_t)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ntk_localizedNameWithOptions:(unint64_t)a3 forRichComplicationSlot:(BOOL)a4;
- (id)ntk_sectionIdentifier;
- (unint64_t)hash;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)_migrateFromSkiHillWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKDateComplication

- (id)ntk_sectionIdentifier
{
  v2 = @"com.apple.NanoCalendar";
  if (NTKIsSystemAppRestrictedOrRemoved(@"com.apple.NanoCalendar"))
  {
    v2 = @"com.apple.DateComplicationsHost";
  }

  return v2;
}

- (id)ntk_localizedNameWithOptions:(unint64_t)a3 forRichComplicationSlot:(BOOL)a4
{
  v4 = a4;
  v7 = [NTKDateComplicationController textForDateStyle:[(NTKDateComplication *)self dateStyle]];
  if (![v7 length])
  {
    v10.receiver = self;
    v10.super_class = NTKDateComplication;
    v8 = [(NTKComplication *)&v10 ntk_localizedNameWithOptions:a3 forRichComplicationSlot:v4];

    v7 = v8;
  }

  return v7;
}

+ (id)complicationWithDateStyle:(unint64_t)a3
{
  v4 = [[a1 alloc] initWithComplicationType:1];
  v4[4] = a3;
  v5 = [v4 _generateUniqueIdentifier];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (NTKDateComplication)initWithComplicationType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = NTKDateComplication;
  v3 = [(NTKComplication *)&v8 initWithComplicationType:a3];
  v4 = v3;
  if (v3)
  {
    v3->_dateStyle = 0;
    v5 = [(NTKDateComplication *)v3 _generateUniqueIdentifier];
    uniqueIdentifier = v4->super._uniqueIdentifier;
    v4->super._uniqueIdentifier = v5;
  }

  return v4;
}

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 localeMatchesContext:v7])
  {
    if ([(NTKComplication *)self complicationType]== 16)
    {
      v8 = [v6 lunarCalendarLocaleIDMatchesContext:v7] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  v5 = [v4 stringValue];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_dateStyle];
  v7 = [v3 stringWithFormat:@"%@-datestyle:%@", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NTKDateComplication;
  return [(NTKComplication *)&v3 hash]+ 1000000 * self->_dateStyle;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NTKDateComplication;
  result = [(NTKComplication *)&v5 copyWithZone:a3];
  *(result + 4) = self->_dateStyle;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKDateComplication;
  v4 = a3;
  [(NTKComplication *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_dateStyle forKey:{@"DateComplicationDateStyleKey", v5.receiver, v5.super_class}];
}

- (NTKDateComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKDateComplication;
  v5 = [(NTKComplication *)&v9 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"DateComplicationDateStyleKey"])
    {
      v5->_dateStyle = [v4 decodeIntegerForKey:@"DateComplicationDateStyleKey"];
    }

    else
    {
      [(NTKDateComplication *)v5 _migrateFromSkiHillWithCoder:v4];
    }

    v6 = [(NTKDateComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = v6;
  }

  return v5;
}

- (void)_migrateFromSkiHillWithCoder:(id)a3
{
  v4 = [(NTKComplication *)self complicationType];
  switch(v4)
  {
    case 0x4000000uLL:
      v5 = 8;
      goto LABEL_7;
    case 0x2000000uLL:
      v5 = 4;
LABEL_7:
      self->_dateStyle = v5;
      break;
    case 1uLL:
      self->_dateStyle = 0;
      break;
    default:
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CCA2A8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      [v6 raise:v7 format:{@"Unknown date complication type %@", v8}];

      break;
  }

  [(NTKComplication *)self _setComplicationType:1];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKDateComplication;
  [(NTKComplication *)&v7 _addKeysToJSONDictionary:v4];
  dateStyle = self->_dateStyle;
  if (dateStyle)
  {
    v6 = NTKFaceBundleStringFromDateStyle(dateStyle);
    [v4 setObject:v6 forKeyedSubscript:@"date style"];
  }
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = NTKDateComplication;
  v7 = [(NTKComplication *)&v13 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"date style"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"date style", v8}];
      }

      v12 = 0;
      if (!NTKFaceBundleGetDateStyleFromString(v8, &v12))
      {
        [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value for '%@': %@", @"date style", v8}];
      }

      v7[4] = v12;
    }

    else
    {
      v7[4] = 0;
    }

    v9 = [v7 _generateUniqueIdentifier];
    v10 = v7[1];
    v7[1] = v9;
  }

  return v7;
}

@end