@interface MTTimer(HFAdditions)
- (id)hf_targetAccessoryInHome:()HFAdditions;
- (uint64_t)hash;
- (uint64_t)isEqual:()HFAdditions;
@end

@implementation MTTimer(HFAdditions)

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
    timerID = [self timerID];
    timerID2 = [v7 timerID];
    v10 = [timerID hmf_isEqualToUUID:timerID2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)hash
{
  timerID = [self timerID];
  v2 = [timerID hash];

  return v2;
}

- (id)hf_targetAccessoryInHome:()HFAdditions
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  siriContext = [self siriContext];
  v6 = [siriContext objectForKey:*MEMORY[0x277CFD060]];

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
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        queryItems = [v7 queryItems];
        v12 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v28 = v7;
          v14 = *v32;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(queryItems);
              }

              v16 = *(*(&v31 + 1) + 8 * i);
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

                    goto LABEL_24;
                  }
                }
              }
            }

            v13 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v21 = 0;
LABEL_24:
          v7 = v28;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    v21 = 0;
LABEL_27:
    accessories = [v4 accessories];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__MTTimer_HFAdditions__hf_targetAccessoryInHome___block_invoke;
    v29[3] = &unk_277DF3888;
    v30 = v21;
    v25 = v21;
    v23 = [accessories na_firstObjectPassingTest:v29];

    goto LABEL_28;
  }

  siriContext2 = [self siriContext];

  if (!siriContext2)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v7 = HFLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "No targetReference found for alarm: %@ in home: %@", buf, 0x16u);
  }

  v23 = 0;
LABEL_28:

LABEL_29:
  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

@end