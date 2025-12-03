@interface GCSElement
- (GCSElement)initWithCoder:(id)coder;
- (GCSElement)initWithJSONObject:(id)object;
- (GCSElement)initWithName:(id)name nameLocalizationKey:(id)key sfSymbolsName:(id)symbolsName remappingKey:(int)remappingKey kind:(int64_t)kind;
- (GCSJSONObject)jsonObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSElement

- (GCSElement)initWithName:(id)name nameLocalizationKey:(id)key sfSymbolsName:(id)symbolsName remappingKey:(int)remappingKey kind:(int64_t)kind
{
  nameCopy = name;
  keyCopy = key;
  symbolsNameCopy = symbolsName;
  v19.receiver = self;
  v19.super_class = GCSElement;
  v16 = [(GCSElement *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_nameLocalizationKey, key);
    objc_storeStrong(&v17->_sfSymbolsName, symbolsName);
    v17->_remappingKey = remappingKey;
    v17->_kind = kind;
  }

  return v17;
}

- (GCSElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GCSElement;
  v5 = [(GCSElement *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
    nameLocalizationKey = v5->_nameLocalizationKey;
    v5->_nameLocalizationKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sfSymbolsName"];
    sfSymbolsName = v5->_sfSymbolsName;
    v5->_sfSymbolsName = v10;

    v5->_remappingKey = [coderCopy decodeIntForKey:@"_remappingKey"];
    v5->_kind = [coderCopy decodeInt64ForKey:@"_kind"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"_name"];
  [coderCopy encodeObject:self->_nameLocalizationKey forKey:@"nameLocalizationKey"];
  [coderCopy encodeObject:self->_sfSymbolsName forKey:@"_sfSymbolsName"];
  [coderCopy encodeInt:self->_remappingKey forKey:@"_remappingKey"];
  [coderCopy encodeInt64:self->_kind forKey:@"_kind"];
}

- (GCSElement)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v17.receiver = self;
    v17.super_class = GCSElement;
    v6 = [(GCSElement *)&v17 init];
    if (v6)
    {
      v7 = [v5 _gcs_stringForJSONKey:@"name"];
      name = v6->_name;
      v6->_name = v7;

      v9 = [v5 _gcs_stringForJSONKey:@"nameLocalizationKey"];
      nameLocalizationKey = v6->_nameLocalizationKey;
      v6->_nameLocalizationKey = v9;

      v11 = [v5 _gcs_stringForJSONKey:@"sfSymbolsName"];
      sfSymbolsName = v6->_sfSymbolsName;
      v6->_sfSymbolsName = v11;

      v13 = [v5 _gcs_numberForJSONKey:@"remappingKey"];
      v6->_remappingKey = [v13 intValue];

      v14 = [v5 _gcs_numberForJSONKey:@"kind"];
      v6->_kind = [v14 longValue];
    }

    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GCSJSONObject)jsonObject
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = *&self->_name;
  v8[0] = @"name";
  v8[1] = @"nameLocalizationKey";
  sfSymbolsName = self->_sfSymbolsName;
  v8[2] = @"sfSymbolsName";
  v8[3] = @"remappingKey";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_remappingKey];
  v11 = v3;
  v8[4] = @"kind";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_kind];
  v12 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:v8 count:5];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end