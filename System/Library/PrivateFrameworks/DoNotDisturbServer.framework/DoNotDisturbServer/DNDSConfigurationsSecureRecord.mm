@interface DNDSConfigurationsSecureRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithModeConfigurations:(id)configurations;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSConfigurationsSecureRecord

- (id)_initWithRecord:(id)record
{
  modeConfigurations = [record modeConfigurations];
  v5 = [(DNDSConfigurationsSecureRecord *)self _initWithModeConfigurations:modeConfigurations];

  return v5;
}

- (id)_initWithModeConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v11.receiver = self;
  v11.super_class = DNDSConfigurationsSecureRecord;
  v5 = [(DNDSConfigurationsSecureRecord *)&v11 init];
  if (v5)
  {
    v6 = [configurationsCopy mutableCopy];
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
  modeConfigurations = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
  v3 = [modeConfigurations hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modeConfigurations = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
      modeConfigurations2 = [(DNDSConfigurationsSecureRecord *)v5 modeConfigurations];
      if (modeConfigurations == modeConfigurations2)
      {
        v12 = 1;
      }

      else
      {
        modeConfigurations3 = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
        if (modeConfigurations3)
        {
          modeConfigurations4 = [(DNDSConfigurationsSecureRecord *)v5 modeConfigurations];
          if (modeConfigurations4)
          {
            modeConfigurations5 = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
            modeConfigurations6 = [(DNDSConfigurationsSecureRecord *)v5 modeConfigurations];
            v12 = [modeConfigurations5 isEqual:modeConfigurations6];
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
  modeConfigurations = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
  v6 = [v3 stringWithFormat:@"<%@: %p modeConfigurations: %@>", v4, self, modeConfigurations];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableConfigurationsSecureRecord alloc];

  return [(DNDSConfigurationsSecureRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = [representation objectForKey:@"modeConfigurations"];
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
        v13 = [v6 objectForKey:{v12, selfCopy}];
        v14 = [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:v13 context:contextCopy];

        [v7 setObject:v14 forKey:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [[selfCopy alloc] _initWithModeConfigurations:v7];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (([contextCopy partitionType] & 2) != 0)
  {
    v19 = dictionary;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    modeConfigurations = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
    allKeys = [modeConfigurations allKeys];

    v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          modeConfigurations2 = [(DNDSConfigurationsSecureRecord *)self modeConfigurations];
          v15 = [modeConfigurations2 objectForKey:v13];

          v16 = [v15 dictionaryRepresentationWithContext:contextCopy];
          [dictionary2 setObject:v16 forKey:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    dictionary = v19;
    [v19 setObject:dictionary2 forKey:@"modeConfigurations"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end