@interface HMDMediaPropertyWriteRequest
+ (id)deserializeWriteRequests:(id)requests mediaProfile:(id)profile;
+ (id)requestWithProperty:(id)property mediaProfile:(id)profile;
+ (id)serializeWriteRequests:(id)requests;
+ (id)writeRequestWithProperty:(id)property value:(id)value mediaProfile:(id)profile;
+ (id)writeRequestWithProperty:(id)property value:(id)value mediaProfile:(id)profile identifier:(id)identifier;
- (HMDMediaPropertyWriteRequest)initWithProperty:(id)property value:(id)value mediaProfile:(id)profile identifier:(id)identifier;
- (id)description;
@end

@implementation HMDMediaPropertyWriteRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  mediaProfile = [(HMDMediaPropertyRequest *)self mediaProfile];
  property = [(HMDMediaPropertyRequest *)self property];
  value = [(HMDMediaPropertyWriteRequest *)self value];
  v7 = [v3 stringWithFormat:@"<MPWR: %@/%@ (val: %@)>", mediaProfile, property, value];

  return v7;
}

- (HMDMediaPropertyWriteRequest)initWithProperty:(id)property value:(id)value mediaProfile:(id)profile identifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HMDMediaPropertyWriteRequest;
  v13 = [(HMDMediaPropertyRequest *)&v16 initWithProperty:property mediaProfile:profile];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v14->_identifier, identifier);
  }

  return v14;
}

+ (id)deserializeWriteRequests:(id)requests mediaProfile:(id)profile
{
  v24 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  profileCopy = profile;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [requestsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [requestsCopy objectForKeyedSubscript:v13];
        v15 = [HMDMediaPropertyWriteRequest writeRequestWithProperty:v13 value:v14 mediaProfile:profileCopy];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)serializeWriteRequests:(id)requests
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = requestsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        mediaProfile = [v10 mediaProfile];
        uniqueIdentifier = [mediaProfile uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        v14 = [v4 objectForKeyedSubscript:uUIDString];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
          [v4 setObject:v14 forKeyedSubscript:uUIDString];
        }

        value = [v10 value];
        property = [v10 property];
        [v14 setObject:value forKeyedSubscript:property];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)writeRequestWithProperty:(id)property value:(id)value mediaProfile:(id)profile identifier:(id)identifier
{
  identifierCopy = identifier;
  profileCopy = profile;
  valueCopy = value;
  propertyCopy = property;
  v14 = [[self alloc] initWithProperty:propertyCopy value:valueCopy mediaProfile:profileCopy identifier:identifierCopy];

  return v14;
}

+ (id)writeRequestWithProperty:(id)property value:(id)value mediaProfile:(id)profile
{
  profileCopy = profile;
  valueCopy = value;
  propertyCopy = property;
  v11 = [[self alloc] initWithProperty:propertyCopy value:valueCopy mediaProfile:profileCopy identifier:0];

  return v11;
}

+ (id)requestWithProperty:(id)property mediaProfile:(id)profile
{
  v14 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  profileCopy = profile;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Write request cannot be initialized using this interface - use -[writeRequestWithProperty:value:medaPofile:]", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

@end