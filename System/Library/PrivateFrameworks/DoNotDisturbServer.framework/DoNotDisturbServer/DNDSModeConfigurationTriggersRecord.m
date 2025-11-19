@interface DNDSModeConfigurationTriggersRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 partitionedDictionaryRepresentation:(id)a4 context:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithRecord:(id)a3;
- (id)_initWithTriggers:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DNDSModeConfigurationTriggersRecord

- (id)_initWithTriggers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDSModeConfigurationTriggersRecord;
  v5 = [(DNDSModeConfigurationTriggersRecord *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    triggers = v5->_triggers;
    v5->_triggers = v6;
  }

  return v5;
}

- (id)_initWithRecord:(id)a3
{
  v4 = [a3 triggers];
  v5 = [(DNDSModeConfigurationTriggersRecord *)self _initWithTriggers:v4];

  return v5;
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
      v6 = [(DNDSModeConfigurationTriggersRecord *)self triggers];
      v7 = [(DNDSModeConfigurationTriggersRecord *)v5 triggers];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSModeConfigurationTriggersRecord *)self triggers];
        if (v8)
        {
          v9 = [(DNDSModeConfigurationTriggersRecord *)v5 triggers];
          if (v9)
          {
            v10 = [(DNDSModeConfigurationTriggersRecord *)self triggers];
            v11 = [(DNDSModeConfigurationTriggersRecord *)v5 triggers];
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
  v5 = [(DNDSModeConfigurationTriggersRecord *)self triggers];
  v6 = [v3 stringWithFormat:@"<%@: %p triggers: %@>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableModeConfigurationTriggersRecord alloc];

  return [(DNDSModeConfigurationTriggersRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 bs_safeArrayForKey:@"triggers"];
  v7 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 bs_safeStringForKey:@"class"];
        if (([&unk_285C53B40 containsObject:v14] & 1) != 0 || objc_msgSend(&unk_285C53B58, "containsObject:", v14))
        {
          v15 = [NSClassFromString(v14) newWithDictionaryRepresentation:v13 context:v5];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [[a1 alloc] initWithTriggers:v7];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)newWithDictionaryRepresentation:(id)a3 partitionedDictionaryRepresentation:(id)a4 context:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = a4;
  v7 = a5;
  v8 = [a3 bs_safeArrayForKey:@"triggers"];
  v9 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [v14 bs_safeStringForKey:@"class"];
        if (([&unk_285C53B70 containsObject:v15] & 1) != 0 || objc_msgSend(&unk_285C53B88, "containsObject:", v15))
        {
          v16 = [NSClassFromString(v15) newWithDictionaryRepresentation:v14 context:v7];
          [v9 addObject:v16];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v17 = [v29 bs_safeArrayForKey:@"triggers"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = [v22 bs_safeStringForKey:@"class"];
        if ([&unk_285C53BA0 containsObject:v23])
        {
          v24 = [NSClassFromString(v23) newWithDictionaryRepresentation:v22 context:v7];
          [v9 addObject:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v25 = [[a1 alloc] initWithTriggers:v9];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_triggers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        if ([v4 partitionType])
        {
          v14 = [&unk_285C53BB8 containsObject:v13];
          if (([v4 partitionType] & 2) != 0)
          {
LABEL_12:
            if (([&unk_285C53BD0 containsObject:v13] & 1) == 0)
            {
              goto LABEL_14;
            }

LABEL_13:
            v15 = [v11 dictionaryRepresentationWithContext:v4];
            [v5 addObject:v15];

            goto LABEL_14;
          }

          if (v14)
          {
            goto LABEL_13;
          }
        }

        else if (([v4 partitionType] & 2) != 0)
        {
          goto LABEL_12;
        }

LABEL_14:
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v23 = @"triggers";
  v24 = v5;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end