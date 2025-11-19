@interface KGPropertyValue
+ (id)kgPropertiesWithMAProperties:(id)a3;
+ (id)kgPropertyValueWithMAPropertyValue:(id)a3;
- (KGPropertyTypeProtocol)kgPropertyValue;
- (id)description;
- (id)initForSubclasses;
- (unint64_t)dataType;
@end

@implementation KGPropertyValue

- (id)description
{
  v2 = [(KGPropertyValue *)self kgPropertyValue];
  v3 = [v2 description];

  return v3;
}

- (KGPropertyTypeProtocol)kgPropertyValue
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (unint64_t)dataType
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)initForSubclasses
{
  v3.receiver = self;
  v3.super_class = KGPropertyValue;
  return [(KGPropertyValue *)&v3 init];
}

+ (id)kgPropertiesWithMAProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v17}];
        v12 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:v11];
        if (!v12)
        {

          v14 = 0;
          goto LABEL_11;
        }

        v13 = v12;
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = v4;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)kgPropertyValueWithMAPropertyValue:(id)a3
{
  v3 = a3;
  v4 = [v3 kgPropertyType];
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_12;
      }

      v6 = v3;
      v7 = [KGDoublePropertyValue alloc];
      [v6 doubleValue];
      v9 = v8;

      v10 = [(KGDoublePropertyValue *)v7 initWithValue:v9];
      goto LABEL_10;
    }

    v11 = v3;
    v12 = [KGInt64PropertyValue alloc];
    v13 = [v11 integerValue];
LABEL_9:
    v14 = v13;

    v10 = [(KGInt64PropertyValue *)v12 initWithValue:v14];
LABEL_10:
    v5 = v10;
    goto LABEL_12;
  }

  if (v4 != 3)
  {
    if (v4 != 4)
    {
      goto LABEL_12;
    }

    v11 = v3;
    v12 = [KGUInt64PropertyValue alloc];
    v13 = [v11 unsignedIntegerValue];
    goto LABEL_9;
  }

  v15 = v3;
  v5 = [[KGStringPropertyValue alloc] initWithValue:v15];

LABEL_12:

  return v5;
}

@end