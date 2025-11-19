@interface GCSElementMapping
+ (id)archivalClasses;
- (GCSElementMapping)initWithCoder:(id)a3;
- (GCSElementMapping)initWithElementKey:(id)a3 mappingKey:(id)a4 remappingOrder:(int)a5;
- (GCSElementMapping)initWithJSONObject:(id)a3;
- (GCSJSONObject)jsonObject;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCSElementMapping

- (GCSElementMapping)initWithElementKey:(id)a3 mappingKey:(id)a4 remappingOrder:(int)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = GCSElementMapping;
  v10 = [(GCSElementMapping *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    elementKey = v10->_elementKey;
    v10->_elementKey = v11;

    v13 = [v9 copy];
    mappingKey = v10->_mappingKey;
    v10->_mappingKey = v13;

    v10->_remappingOrder = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(GCSElementMapping *)self elementKey];
  v6 = [(GCSElementMapping *)self mappingKey];
  v7 = [v4 initWithElementKey:v5 mappingKey:v6 remappingOrder:{-[GCSElementMapping remappingOrder](self, "remappingOrder")}];

  return v7;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (GCSElementMapping)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCSElementMapping;
  v5 = [(GCSElementMapping *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_elementKey"];
    elementKey = v5->_elementKey;
    v5->_elementKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mappingKey"];
    mappingKey = v5->_mappingKey;
    v5->_mappingKey = v8;

    v5->_remappingOrder = [v4 decodeIntForKey:@"_remappingOrder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  elementKey = self->_elementKey;
  v5 = a3;
  [v5 encodeObject:elementKey forKey:@"_elementKey"];
  [v5 encodeObject:self->_mappingKey forKey:@"_mappingKey"];
  [v5 encodeInt:self->_remappingOrder forKey:@"_remappingOrder"];
}

- (GCSElementMapping)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v14.receiver = self;
    v14.super_class = GCSElementMapping;
    v6 = [(GCSElementMapping *)&v14 init];
    if (v6)
    {
      v7 = [v5 _gcs_stringForJSONKey:@"elementKey"];
      elementKey = v6->_elementKey;
      v6->_elementKey = v7;

      v9 = [v5 _gcs_stringForJSONKey:@"mappingKey"];
      mappingKey = v6->_mappingKey;
      v6->_mappingKey = v9;

      v11 = [v5 _gcs_numberForJSONKey:@"remappingOrder"];
      v6->_remappingOrder = [v11 intValue];
    }

    self = v6;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (GCSJSONObject)jsonObject
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"elementKey";
  v7[1] = @"mappingKey";
  mappingKey = self->_mappingKey;
  v8[0] = self->_elementKey;
  v8[1] = mappingKey;
  v7[2] = @"remappingOrder";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_remappingOrder];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end