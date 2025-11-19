@interface GCSElement
- (GCSElement)initWithCoder:(id)a3;
- (GCSElement)initWithJSONObject:(id)a3;
- (GCSElement)initWithName:(id)a3 nameLocalizationKey:(id)a4 sfSymbolsName:(id)a5 remappingKey:(int)a6 kind:(int64_t)a7;
- (GCSJSONObject)jsonObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCSElement

- (GCSElement)initWithName:(id)a3 nameLocalizationKey:(id)a4 sfSymbolsName:(id)a5 remappingKey:(int)a6 kind:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = GCSElement;
  v16 = [(GCSElement *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    objc_storeStrong(&v17->_nameLocalizationKey, a4);
    objc_storeStrong(&v17->_sfSymbolsName, a5);
    v17->_remappingKey = a6;
    v17->_kind = a7;
  }

  return v17;
}

- (GCSElement)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GCSElement;
  v5 = [(GCSElement *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
    nameLocalizationKey = v5->_nameLocalizationKey;
    v5->_nameLocalizationKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sfSymbolsName"];
    sfSymbolsName = v5->_sfSymbolsName;
    v5->_sfSymbolsName = v10;

    v5->_remappingKey = [v4 decodeIntForKey:@"_remappingKey"];
    v5->_kind = [v4 decodeInt64ForKey:@"_kind"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"_name"];
  [v5 encodeObject:self->_nameLocalizationKey forKey:@"nameLocalizationKey"];
  [v5 encodeObject:self->_sfSymbolsName forKey:@"_sfSymbolsName"];
  [v5 encodeInt:self->_remappingKey forKey:@"_remappingKey"];
  [v5 encodeInt64:self->_kind forKey:@"_kind"];
}

- (GCSElement)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
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