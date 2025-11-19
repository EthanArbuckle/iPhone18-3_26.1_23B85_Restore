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
    v8 = [a1 timerID];
    v9 = [v7 timerID];
    v10 = [v8 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)hash
{
  v1 = [a1 timerID];
  v2 = [v1 hash];

  return v2;
}

- (id)hf_targetAccessoryInHome:()HFAdditions
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 siriContext];
  v6 = [v5 objectForKey:*MEMORY[0x277CFD060]];

  if (v6)
  {
    v7 = [MEMORY[0x277CCACE0] componentsWithString:v6];
    v8 = [v7 scheme];
    if ([v8 isEqualToString:@"siri-hk-target"])
    {
      v9 = [v7 path];
      v10 = [v9 isEqualToString:@"accessory"];

      if (v10)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v7 queryItems];
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * i);
              v17 = [v16 name];
              v18 = [@"identifier" isEqualToString:v17];

              if (v18)
              {
                v19 = [v16 value];
                if (v19)
                {
                  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v19];
                  if (v20)
                  {
                    v21 = v20;

                    goto LABEL_24;
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
    v24 = [v4 accessories];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__MTTimer_HFAdditions__hf_targetAccessoryInHome___block_invoke;
    v29[3] = &unk_277DF3888;
    v30 = v21;
    v25 = v21;
    v23 = [v24 na_firstObjectPassingTest:v29];

    goto LABEL_28;
  }

  v22 = [a1 siriContext];

  if (!v22)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v7 = HFLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = a1;
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