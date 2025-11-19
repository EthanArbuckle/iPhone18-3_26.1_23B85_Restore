@interface MDMRequestUserListCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestUserListCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MDMRequestUserListCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)a3
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDMRequestUserListCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v6 = [MEMORY[0x277D77BF8] sharedManager];
  v7 = [v6 allUsers];
  v8 = v7;
  if (v7)
  {
    v32 = v5;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v31 = v6;
    v35 = [v6 currentUser];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = v9;
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v40[0] = @"UserName";
          v15 = [v14 username];
          v41[0] = v15;
          v40[1] = @"HasDataToSync";
          v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "hasDataToSync")}];
          v41[1] = v16;
          v40[2] = @"IsLoggedIn";
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isEqualToUser:", v35)}];
          v41[2] = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
          v19 = [v18 mutableCopy];

          v20 = [v14 dataQuota];
          v21 = [v14 dataUsed];
          if (v20)
          {
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
            [v19 setObject:v22 forKeyedSubscript:@"DataQuota"];
          }

          if (v21)
          {
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
            [v19 setObject:v23 forKeyedSubscript:@"DataUsed"];
          }

          v9 = v13;
          [v13 addObject:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v11);
    }

    v24 = v32;
    [v32 setObject:v9 forKey:@"Users"];
    v4[2](v4, v32);

    v8 = v30;
    v6 = v31;
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D03480];
    v27 = DMCErrorArray();
    v9 = [v25 DMCErrorWithDomain:v26 code:12070 descriptionArray:v27 errorType:{*MEMORY[0x277D032F8], 0}];

    v28 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v9;
      _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve user list with error %{public}@", buf, 0xCu);
    }

    v24 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

    v4[2](v4, v24);
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end