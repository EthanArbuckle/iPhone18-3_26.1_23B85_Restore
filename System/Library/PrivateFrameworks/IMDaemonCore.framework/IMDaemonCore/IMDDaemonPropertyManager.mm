@interface IMDDaemonPropertyManager
+ (IMDDaemonPropertyManager)sharedManager;
- (IMDDaemonPropertyManager)init;
- (NSDictionary)persistentProperties;
- (NSDictionary)properties;
- (id)valueOfPersistentProperty:(id)property;
- (id)valueOfProperty:(id)property;
- (void)setValue:(id)value ofPersistentProperty:(id)property;
- (void)setValue:(id)value ofProperty:(id)property;
@end

@implementation IMDDaemonPropertyManager

+ (IMDDaemonPropertyManager)sharedManager
{
  if (qword_281420F08 != -1)
  {
    sub_22B7D68D4();
  }

  v3 = qword_281420EF0;

  return v3;
}

- (NSDictionary)properties
{
  mutableProperties = [(IMDDaemonPropertyManager *)self mutableProperties];
  v3 = [mutableProperties copy];

  return v3;
}

- (NSDictionary)persistentProperties
{
  mutablePersistentProperties = [(IMDDaemonPropertyManager *)self mutablePersistentProperties];
  v3 = [mutablePersistentProperties copy];

  return v3;
}

- (IMDDaemonPropertyManager)init
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = IMDDaemonPropertyManager;
  v2 = [(IMDDaemonPropertyManager *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableProperties = v2->_mutableProperties;
    v2->_mutableProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutablePersistentProperties = v2->_mutablePersistentProperties;
    v2->_mutablePersistentProperties = v5;

    v7 = CFPreferencesCopyKeyList(*MEMORY[0x277CBF028], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    if ([(__CFArray *)v7 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = v7;
      v8 = v7;
      v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 hasPrefix:@"Setting."])
            {
              v14 = v2->_mutablePersistentProperties;
              v15 = MEMORY[0x231897340](v13);
              v16 = [v13 substringFromIndex:8];
              [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v10);
      }

      v7 = v19;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setValue:(id)value ofProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  mutableProperties = [(IMDDaemonPropertyManager *)self mutableProperties];
  [mutableProperties setObject:valueCopy forKeyedSubscript:propertyCopy];

  if (valueCopy)
  {
    v8 = +[IMDBroadcastController sharedProvider];
    broadcasterForAllListeners = [v8 broadcasterForAllListeners];
    [broadcasterForAllListeners property:propertyCopy changedTo:valueCopy from:0];
  }
}

- (id)valueOfProperty:(id)property
{
  propertyCopy = property;
  mutableProperties = [(IMDDaemonPropertyManager *)self mutableProperties];
  v6 = [mutableProperties objectForKey:propertyCopy];

  return v6;
}

- (void)setValue:(id)value ofPersistentProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  mutablePersistentProperties = [(IMDDaemonPropertyManager *)self mutablePersistentProperties];
  [mutablePersistentProperties setObject:valueCopy forKeyedSubscript:propertyCopy];

  v8 = [@"Setting." stringByAppendingString:propertyCopy];
  if (valueCopy)
  {
    IMSetAppValueForKey();
  }

  else
  {
    IMRemoveAppValueForKey();
  }

  if (valueCopy)
  {
    v9 = +[IMDBroadcastController sharedProvider];
    broadcasterForAllListeners = [v9 broadcasterForAllListeners];
    [broadcasterForAllListeners persistentProperty:propertyCopy changedTo:valueCopy from:0];
  }
}

- (id)valueOfPersistentProperty:(id)property
{
  propertyCopy = property;
  mutablePersistentProperties = [(IMDDaemonPropertyManager *)self mutablePersistentProperties];
  v6 = [mutablePersistentProperties objectForKey:propertyCopy];

  return v6;
}

@end