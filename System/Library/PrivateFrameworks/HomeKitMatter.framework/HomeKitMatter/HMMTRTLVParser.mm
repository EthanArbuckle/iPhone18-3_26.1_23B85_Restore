@interface HMMTRTLVParser
+ (id)csrFromNOCSRElements:(id)elements;
+ (id)fabricIndicesFromTLV:(id)v;
+ (id)keyPairDataFromTLV:(id)v;
+ (id)logCategory;
@end

@implementation HMMTRTLVParser

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_10059 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_10059, &__block_literal_global_10060);
  }

  v3 = logCategory__hmf_once_v3_10061;

  return v3;
}

uint64_t __29__HMMTRTLVParser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_10061;
  logCategory__hmf_once_v3_10061 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)keyPairDataFromTLV:(id)v
{
  v34 = *MEMORY[0x277D85DE8];
  vCopy = v;
  bytes = [vCopy bytes];
  v6 = [vCopy length];
  if (!v6 || *bytes != 21)
  {
    goto LABEL_17;
  }

  v7 = 0;
  v28 = v6 - 1;
  v29 = bytes + 1;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v10 = ReadIntegerWithContextSpecificTag(&v29, &v28, &v25);
    v11 = v25;
    v12 = v11;
    if (v10)
    {
      break;
    }

    if (!ReadOctetStringWithContextSpecificTag(&v29, &v28, &v27, &v26))
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v15;
      v16 = "%{public}@Unknown field in the key pair TLV struct";
      v17 = v21;
      v18 = 12;
      goto LABEL_15;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:v26];

    v7 = v13;
LABEL_9:

    v8 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v11 isEqual:&unk_283EE89A0])
  {
    goto LABEL_9;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v15;
    v32 = 2112;
    v33 = v12;
    v16 = "%{public}@Unexpected key pair data version: %@";
    v17 = v21;
    v18 = 22;
LABEL_15:
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
  }

LABEL_16:

  objc_autoreleasePoolPop(v19);
LABEL_17:
  v7 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)fabricIndicesFromTLV:(id)v
{
  v37 = *MEMORY[0x277D85DE8];
  vCopy = v;
  bytes = [vCopy bytes];
  v5 = [vCopy length];
  if (v5 && *bytes == 21)
  {
    v6 = v5 - 1;
    v34 = v5 - 1;
    v35 = bytes + 1;
    for (i = 1; ; i = 0)
    {
      v8 = v6 - 2;
      if (v6 >= 2)
      {
        v9 = v35;
        if ((*v35 & 0xE0) == 0x20 && (*v35 & 0x1F) == 0x16 && v35[1] == 1)
        {
          break;
        }
      }

      if ((ReadIntegerWithContextSpecificTag(&v35, &v34, &v29) & i & 1) == 0)
      {
        goto LABEL_12;
      }

      v6 = v34;
    }

    array = [MEMORY[0x277CBEB18] array];
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = v9 + 2;
      v17 = v8;
      while (1)
      {
        v18 = v16[v15];
        if (v18 > 0x1F)
        {
          break;
        }

        if (v16[v15] <= 3u)
        {
          if (v16[v15] > 1u)
          {
            if (v18 != 2)
            {
              v19 = 1;
LABEL_32:
              v20 = 8;
              goto LABEL_38;
            }

            v19 = 1;
            goto LABEL_37;
          }

          if (v16[v15])
          {
            v19 = 1;
LABEL_29:
            v20 = 2;
            goto LABEL_38;
          }

          v20 = 1;
          v19 = 1;
        }

        else
        {
          if (v16[v15] > 5u)
          {
            if (v18 != 6)
            {
              if (v18 != 7)
              {
                if (v18 != 24)
                {
                  break;
                }

                v23 = array;

                v24 = array;
                v30 = 0u;
                v31 = 0u;
                v32 = 0u;
                v33 = 0u;
                v22 = v24;
                v25 = [v22 countByEnumeratingWithState:&v30 objects:v36 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v31;
                  while (2)
                  {
                    for (j = 0; j != v26; ++j)
                    {
                      if (*v31 != v27)
                      {
                        objc_enumerationMutation(v22);
                      }

                      if (([*(*(&v30 + 1) + 8 * j) longLongValue] - 1) > 0xFD)
                      {

                        goto LABEL_41;
                      }
                    }

                    v26 = [v22 countByEnumeratingWithState:&v30 objects:v36 count:16];
                    if (v26)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v22 = v22;
                v11 = v22;
                goto LABEL_42;
              }

              v19 = 0;
              goto LABEL_32;
            }

            v19 = 0;
LABEL_37:
            v20 = 4;
            goto LABEL_38;
          }

          if (v18 != 4)
          {
            v19 = 0;
            goto LABEL_29;
          }

          v19 = 0;
          v20 = 1;
        }

LABEL_38:
        if (v17 > v20)
        {
          v21 = LittleEndianNumberFromBytes(&v16[v15 + 1], v20, v19);
          [array addObject:v21];

          v15 += v20 + 1;
          v17 = v8 - v15;
          if (v8 > v15)
          {
            continue;
          }
        }

        break;
      }
    }

    v22 = 0;
LABEL_41:
    v11 = 0;
LABEL_42:
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)csrFromNOCSRElements:(id)elements
{
  elementsCopy = elements;
  bytes = [elementsCopy bytes];
  v5 = [elementsCopy length];

  if (v5 && *bytes == 21)
  {
    v11 = v5 - 1;
    v12 = bytes + 1;
    v9 = 0;
    v10 = 0;
    v6 = ReadOctetStringWithContextSpecificTag(&v12, &v11, &v10, &v9);
    v7 = 0;
    if (v6)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end