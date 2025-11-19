@interface DNDSConfigurationsRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithModeConfigurations:(id)a3;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSConfigurationsRecord

- (id)_initWithRecord:(id)a3
{
  v4 = [a3 modeConfigurations];
  v5 = [(DNDSConfigurationsRecord *)self _initWithModeConfigurations:v4];

  return v5;
}

- (id)_initWithModeConfigurations:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DNDSConfigurationsRecord;
  v5 = [(DNDSConfigurationsRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    modeConfigurations = v5->_modeConfigurations;
    v5->_modeConfigurations = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DNDSConfigurationsRecord *)self modeConfigurations];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSConfigurationsRecord *)self modeConfigurations];
      v7 = [(DNDSConfigurationsRecord *)v5 modeConfigurations];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSConfigurationsRecord *)self modeConfigurations];
        if (v8)
        {
          v9 = [(DNDSConfigurationsRecord *)v5 modeConfigurations];
          if (v9)
          {
            v10 = [(DNDSConfigurationsRecord *)self modeConfigurations];
            v11 = [(DNDSConfigurationsRecord *)v5 modeConfigurations];
            v12 = [v10 isEqual:v11];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSConfigurationsRecord *)self modeConfigurations];
  v6 = [v3 stringWithFormat:@"<%@: %p modeConfigurations: %@>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableConfigurationsRecord alloc];

  return [(DNDSConfigurationsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v18 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 objectForKey:@"modeConfigurations"];
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v6 allKeys];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v6 objectForKey:{v12, v18}];
        v14 = [DNDSConfigurationRecord newWithDictionaryRepresentation:v13 context:v5];

        [v7 setObject:v14 forKey:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [[v18 alloc] _initWithModeConfigurations:v7];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(DNDSConfigurationsRecord *)self modeConfigurations];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(DNDSConfigurationsRecord *)self modeConfigurations];
        v14 = [v13 objectForKey:v12];

        v15 = [v14 dictionaryRepresentationWithContext:v4];
        [v5 setObject:v15 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [v18 setObject:v5 forKey:@"modeConfigurations"];
  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

@end