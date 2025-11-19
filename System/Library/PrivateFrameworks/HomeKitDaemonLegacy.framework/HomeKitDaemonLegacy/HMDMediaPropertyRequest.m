@interface HMDMediaPropertyRequest
+ (id)deserializeReadRequests:(id)a3 mediaProfile:(id)a4;
+ (id)requestWithProperty:(id)a3 mediaProfile:(id)a4;
+ (id)serializeReadRequests:(id)a3;
- (HMDMediaPropertyRequest)initWithProperty:(id)a3 mediaProfile:(id)a4;
- (id)description;
@end

@implementation HMDMediaPropertyRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaPropertyRequest *)self mediaProfile];
  v5 = [v4 uniqueIdentifier];
  v6 = [(HMDMediaPropertyRequest *)self property];
  v7 = [(HMDMediaPropertyRequest *)self previousValue];
  v8 = [v3 stringWithFormat:@"<MPReq: %@/%@ (prevVal: %@)>", v5, v6, v7];

  return v8;
}

- (HMDMediaPropertyRequest)initWithProperty:(id)a3 mediaProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDMediaPropertyRequest;
  v9 = [(HMDMediaPropertyRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, a3);
    objc_storeStrong(&v10->_mediaProfile, a4);
  }

  return v10;
}

+ (id)deserializeReadRequests:(id)a3 mediaProfile:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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

        v13 = [HMDMediaPropertyRequest requestWithProperty:*(*(&v17 + 1) + 8 * i) mediaProfile:v6, v17];
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

+ (id)serializeReadRequests:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
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
        v11 = [v10 mediaProfile];
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 UUIDString];

        v14 = [v4 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
          [v4 setObject:v14 forKeyedSubscript:v13];
        }

        v15 = [v10 property];
        [v14 addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)requestWithProperty:(id)a3 mediaProfile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProperty:v7 mediaProfile:v6];

  return v8;
}

@end