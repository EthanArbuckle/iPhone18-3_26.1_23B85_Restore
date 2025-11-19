@interface HMDMediaPropertyWriteRequest
+ (id)deserializeWriteRequests:(id)a3 mediaProfile:(id)a4;
+ (id)requestWithProperty:(id)a3 mediaProfile:(id)a4;
+ (id)serializeWriteRequests:(id)a3;
+ (id)writeRequestWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5;
+ (id)writeRequestWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5 identifier:(id)a6;
- (HMDMediaPropertyWriteRequest)initWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5 identifier:(id)a6;
- (id)description;
@end

@implementation HMDMediaPropertyWriteRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaPropertyRequest *)self mediaProfile];
  v5 = [(HMDMediaPropertyRequest *)self property];
  v6 = [(HMDMediaPropertyWriteRequest *)self value];
  v7 = [v3 stringWithFormat:@"<MPWR: %@/%@ (val: %@)>", v4, v5, v6];

  return v7;
}

- (HMDMediaPropertyWriteRequest)initWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5 identifier:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HMDMediaPropertyWriteRequest;
  v13 = [(HMDMediaPropertyRequest *)&v16 initWithProperty:a3 mediaProfile:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_value, a4);
    objc_storeStrong(&v14->_identifier, a6);
  }

  return v14;
}

+ (id)deserializeWriteRequests:(id)a3 mediaProfile:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v5 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        v15 = [HMDMediaPropertyWriteRequest writeRequestWithProperty:v13 value:v14 mediaProfile:v6];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)serializeWriteRequests:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
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
        v11 = [v10 mediaProfile];
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 UUIDString];

        v14 = [v4 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
          [v4 setObject:v14 forKeyedSubscript:v13];
        }

        v15 = [v10 value];
        v16 = [v10 property];
        [v14 setObject:v15 forKeyedSubscript:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)writeRequestWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5 identifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithProperty:v13 value:v12 mediaProfile:v11 identifier:v10];

  return v14;
}

+ (id)writeRequestWithProperty:(id)a3 value:(id)a4 mediaProfile:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithProperty:v10 value:v9 mediaProfile:v8 identifier:0];

  return v11;
}

+ (id)requestWithProperty:(id)a3 mediaProfile:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Write request cannot be initialized using this interface - use -[writeRequestWithProperty:value:medaPofile:]", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

@end