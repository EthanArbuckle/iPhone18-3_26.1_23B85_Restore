@interface NTKDateComplication
+ (id)complicationWithDateStyle:(unint64_t)style;
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (NTKDateComplication)initWithCoder:(id)coder;
- (NTKDateComplication)initWithComplicationType:(unint64_t)type;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot;
- (id)ntk_sectionIdentifier;
- (unint64_t)hash;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)_migrateFromSkiHillWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot
{
  slotCopy = slot;
  v7 = [NTKDateComplicationController textForDateStyle:[(NTKDateComplication *)self dateStyle]];
  if (![v7 length])
  {
    v10.receiver = self;
    v10.super_class = NTKDateComplication;
    v8 = [(NTKComplication *)&v10 ntk_localizedNameWithOptions:options forRichComplicationSlot:slotCopy];

    v7 = v8;
  }

  return v7;
}

+ (id)complicationWithDateStyle:(unint64_t)style
{
  v4 = [[self alloc] initWithComplicationType:1];
  v4[4] = style;
  _generateUniqueIdentifier = [v4 _generateUniqueIdentifier];
  v6 = v4[1];
  v4[1] = _generateUniqueIdentifier;

  return v4;
}

- (NTKDateComplication)initWithComplicationType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = NTKDateComplication;
  v3 = [(NTKComplication *)&v8 initWithComplicationType:type];
  v4 = v3;
  if (v3)
  {
    v3->_dateStyle = 0;
    _generateUniqueIdentifier = [(NTKDateComplication *)v3 _generateUniqueIdentifier];
    uniqueIdentifier = v4->super._uniqueIdentifier;
    v4->super._uniqueIdentifier = _generateUniqueIdentifier;
  }

  return v4;
}

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  if ([contextCopy localeMatchesContext:toContextCopy])
  {
    if ([(NTKComplication *)self complicationType]== 16)
    {
      v8 = [contextCopy lunarCalendarLocaleIDMatchesContext:toContextCopy] ^ 1;
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
  stringValue = [v4 stringValue];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_dateStyle];
  v7 = [v3 stringWithFormat:@"%@-datestyle:%@", stringValue, v6];

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NTKDateComplication;
  return [(NTKComplication *)&v3 hash]+ 1000000 * self->_dateStyle;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NTKDateComplication;
  result = [(NTKComplication *)&v5 copyWithZone:zone];
  *(result + 4) = self->_dateStyle;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKDateComplication;
  coderCopy = coder;
  [(NTKComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_dateStyle forKey:{@"DateComplicationDateStyleKey", v5.receiver, v5.super_class}];
}

- (NTKDateComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NTKDateComplication;
  v5 = [(NTKComplication *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"DateComplicationDateStyleKey"])
    {
      v5->_dateStyle = [coderCopy decodeIntegerForKey:@"DateComplicationDateStyleKey"];
    }

    else
    {
      [(NTKDateComplication *)v5 _migrateFromSkiHillWithCoder:coderCopy];
    }

    _generateUniqueIdentifier = [(NTKDateComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = _generateUniqueIdentifier;
  }

  return v5;
}

- (void)_migrateFromSkiHillWithCoder:(id)coder
{
  complicationType = [(NTKComplication *)self complicationType];
  switch(complicationType)
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
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complicationType];
      [v6 raise:v7 format:{@"Unknown date complication type %@", v8}];

      break;
  }

  [(NTKComplication *)self _setComplicationType:1];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = NTKDateComplication;
  [(NTKComplication *)&v7 _addKeysToJSONDictionary:dictionaryCopy];
  dateStyle = self->_dateStyle;
  if (dateStyle)
  {
    v6 = NTKFaceBundleStringFromDateStyle(dateStyle);
    [dictionaryCopy setObject:v6 forKeyedSubscript:@"date style"];
  }
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NTKDateComplication;
  v7 = [(NTKComplication *)&v13 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"date style"];
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

    _generateUniqueIdentifier = [v7 _generateUniqueIdentifier];
    v10 = v7[1];
    v7[1] = _generateUniqueIdentifier;
  }

  return v7;
}

@end