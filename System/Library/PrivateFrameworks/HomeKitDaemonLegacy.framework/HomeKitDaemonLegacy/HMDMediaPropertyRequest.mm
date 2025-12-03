@interface HMDMediaPropertyRequest
+ (id)deserializeReadRequests:(id)requests mediaProfile:(id)profile;
+ (id)requestWithProperty:(id)property mediaProfile:(id)profile;
+ (id)serializeReadRequests:(id)requests;
- (HMDMediaPropertyRequest)initWithProperty:(id)property mediaProfile:(id)profile;
- (id)description;
@end

@implementation HMDMediaPropertyRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  mediaProfile = [(HMDMediaPropertyRequest *)self mediaProfile];
  uniqueIdentifier = [mediaProfile uniqueIdentifier];
  property = [(HMDMediaPropertyRequest *)self property];
  previousValue = [(HMDMediaPropertyRequest *)self previousValue];
  v8 = [v3 stringWithFormat:@"<MPReq: %@/%@ (prevVal: %@)>", uniqueIdentifier, property, previousValue];

  return v8;
}

- (HMDMediaPropertyRequest)initWithProperty:(id)property mediaProfile:(id)profile
{
  propertyCopy = property;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HMDMediaPropertyRequest;
  v9 = [(HMDMediaPropertyRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, property);
    objc_storeStrong(&v10->_mediaProfile, profile);
  }

  return v10;
}

+ (id)deserializeReadRequests:(id)requests mediaProfile:(id)profile
{
  v22 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  profileCopy = profile;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [HMDMediaPropertyRequest requestWithProperty:*(*(&v17 + 1) + 8 * i) mediaProfile:profileCopy, v17];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)serializeReadRequests:(id)requests
{
  v24 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = requestsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        mediaProfile = [v10 mediaProfile];
        uniqueIdentifier = [mediaProfile uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        v14 = [v4 objectForKeyedSubscript:uUIDString];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
          [v4 setObject:v14 forKeyedSubscript:uUIDString];
        }

        property = [v10 property];
        [v14 addObject:property];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)requestWithProperty:(id)property mediaProfile:(id)profile
{
  profileCopy = profile;
  propertyCopy = property;
  v8 = [[self alloc] initWithProperty:propertyCopy mediaProfile:profileCopy];

  return v8;
}

@end