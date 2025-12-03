@interface MTAlarm(HFAdditions)
- (id)hf_targetAccessoryInHome:()HFAdditions;
- (uint64_t)hash;
- (uint64_t)isEqual:()HFAdditions;
@end

@implementation MTAlarm(HFAdditions)

- (uint64_t)isEqual:()HFAdditions
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    alarmID = [self alarmID];
    alarmID2 = [v7 alarmID];
    v10 = [alarmID hmf_isEqualToUUID:alarmID2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)hash
{
  alarmID = [self alarmID];
  v2 = [alarmID hash];

  return v2;
}

- (id)hf_targetAccessoryInHome:()HFAdditions
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  siriContext = [self siriContext];
  v6 = [siriContext objectForKey:*MEMORY[0x277CFCED0]];

  if (v6)
  {
    v7 = [MEMORY[0x277CCACE0] componentsWithString:v6];
    scheme = [v7 scheme];
    if ([scheme isEqualToString:@"siri-hk-target"])
    {
      path = [v7 path];
      v10 = [path isEqualToString:@"accessory"];

      if (v10)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        queryItems = [v7 queryItems];
        v12 = [queryItems countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v27 = v6;
          v14 = *v31;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(queryItems);
              }

              v16 = *(*(&v30 + 1) + 8 * i);
              name = [v16 name];
              v18 = [@"identifier" isEqualToString:name];

              if (v18)
              {
                value = [v16 value];
                if (value)
                {
                  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
                  if (v20)
                  {
                    v21 = v20;

                    goto LABEL_22;
                  }
                }
              }
            }

            v13 = [queryItems countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v21 = 0;
LABEL_22:
          v6 = v27;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

    v21 = 0;
LABEL_25:
    accessories = [v4 accessories];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__MTAlarm_HFAdditions__hf_targetAccessoryInHome___block_invoke;
    v28[3] = &unk_277DF3888;
    v29 = v21;
    v24 = v21;
    v22 = [accessories na_firstObjectPassingTest:v28];

    goto LABEL_26;
  }

  v7 = HFLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "No targetReference found for alarm: %@ in home: %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_26:

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

@end