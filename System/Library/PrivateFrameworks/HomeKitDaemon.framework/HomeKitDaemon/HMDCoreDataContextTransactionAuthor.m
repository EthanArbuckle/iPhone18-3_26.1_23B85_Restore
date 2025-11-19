@interface HMDCoreDataContextTransactionAuthor
+ (id)contextAuthorWithString:(id)a3;
+ (id)contextAuthorWithType:(unint64_t)a3;
+ (id)contextAuthorWithType:(unint64_t)a3 clientIdentifier:(id)a4;
+ (id)contextAuthorWithType:(unint64_t)a3 clientIdentifier:(id)a4 qualityOfService:(int64_t)a5;
- (HMDCoreDataContextTransactionAuthor)initWithType:(unint64_t)a3 clientIdentifier:(id)a4 qualityOfService:(int64_t)a5;
- (NSString)string;
@end

@implementation HMDCoreDataContextTransactionAuthor

- (NSString)string
{
  v3 = [(HMDCoreDataContextTransactionAuthor *)self type];
  if (v3 - 2 > 9)
  {
    v4 = @"HMD.Unknown";
  }

  else
  {
    v4 = off_278681C50[v3 - 2];
  }

  v5 = v4;
  v6 = [(HMDCoreDataContextTransactionAuthor *)self clientIdentifier];

  if (!v6)
  {
    v10 = v5;
    goto LABEL_23;
  }

  v7 = [(HMDCoreDataContextTransactionAuthor *)self qualityOfService];
  v8 = 0;
  v9 = 0;
  if (v7 <= 16)
  {
    if (v7 == -1)
    {
      v8 = @"defaultQoS";
    }

    else
    {
      if (v7 != 9)
      {
        goto LABEL_18;
      }

      v8 = @"backgroundQoS";
    }
  }

  else
  {
    switch(v7)
    {
      case 17:
        v8 = @"utilityQoS";
        break;
      case 25:
        v8 = @"userInitiatedQoS";
        break;
      case 33:
        v8 = @"userInteractiveQoS";
        break;
      default:
        goto LABEL_18;
    }
  }

  v9 = 1;
LABEL_18:
  v11 = [(HMDCoreDataContextTransactionAuthor *)self qualityOfService];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(HMDCoreDataContextTransactionAuthor *)self clientIdentifier];
  v14 = v13;
  if (!v9 || v11 == -1)
  {
    [v12 stringWithFormat:@"%@/%@", v5, v13, v16];
  }

  else
  {
    [v12 stringWithFormat:@"%@/%@/%@", v5, v13, v8];
  }
  v10 = ;

LABEL_23:

  return v10;
}

- (HMDCoreDataContextTransactionAuthor)initWithType:(unint64_t)a3 clientIdentifier:(id)a4 qualityOfService:(int64_t)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDCoreDataContextTransactionAuthor;
  v9 = [(HMDCoreDataContextTransactionAuthor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    if ([v8 containsString:@"/"])
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }

    objc_storeStrong(&v10->_clientIdentifier, v11);
    v10->_qualityOfService = a5;
  }

  return v10;
}

+ (id)contextAuthorWithString:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:@"/"];
    if ([v6 count])
    {
      if ([v6 count] >= 4)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = a1;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          v25 = 138543618;
          v26 = v10;
          v27 = 2112;
          v28 = v5;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unknown components in context transaction author string will not be parsed: %@", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
      }

      v11 = [v6 objectAtIndexedSubscript:0];
      v12 = 0;
      if ([v11 hasPrefix:@"HMD."])
      {
        if ([v11 isEqualToString:@"HMD.v4"])
        {
          v12 = 3;
        }

        else if ([v11 isEqualToString:@"HMD.CK"])
        {
          v12 = 4;
        }

        else if ([v11 isEqualToString:@"HMD.RS"])
        {
          v12 = 5;
        }

        else if ([v11 isEqualToString:@"HMD.1P"])
        {
          v12 = 6;
        }

        else if ([v11 isEqualToString:@"HMD.MI"])
        {
          v12 = 7;
        }

        else if ([v11 isEqualToString:@"HMD.RC"])
        {
          v12 = 8;
        }

        else if ([v11 isEqualToString:@"HMD.CKS"])
        {
          v12 = 9;
        }

        else if ([v11 isEqualToString:@"HMD.CFU"])
        {
          v12 = 10;
        }

        else if ([v11 isEqualToString:@"HMD.PCE"])
        {
          v12 = 11;
        }

        else if ([v11 isEqualToString:@"HMD.UT"])
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }
      }

      if ([v6 count] < 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v6 objectAtIndexedSubscript:1];
      }

      if ([v18 containsString:@"/"])
      {

        v18 = 0;
      }

      if ([v6 count] < 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = [v6 objectAtIndexedSubscript:2];
      }

      v20 = v19;
      if ([v20 isEqualToString:@"userInteractiveQoS"])
      {
        v21 = 33;
      }

      else if ([v20 isEqualToString:@"userInitiatedQoS"])
      {
        v21 = 25;
      }

      else if ([v20 isEqualToString:@"utilityQoS"])
      {
        v21 = 17;
      }

      else if ([v20 isEqualToString:@"backgroundQoS"])
      {
        v21 = 9;
      }

      else
      {
        v21 = -1;
      }

      if ([v6 count] < 3)
      {
        if ([v6 count] == 2)
        {
          [HMDCoreDataContextTransactionAuthor contextAuthorWithType:v12 clientIdentifier:v18];
        }

        else
        {
          [HMDCoreDataContextTransactionAuthor contextAuthorWithType:v12];
        }
        v22 = ;
      }

      else
      {
        v22 = [[HMDCoreDataContextTransactionAuthor alloc] initWithType:v12 clientIdentifier:v18 qualityOfService:v21];
      }

      v13 = v22;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid context transaction author string: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = [HMDCoreDataContextTransactionAuthor contextAuthorWithType:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)contextAuthorWithType:(unint64_t)a3 clientIdentifier:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a4;
  v8 = [[HMDCoreDataContextTransactionAuthor alloc] initWithType:a3 clientIdentifier:v7 qualityOfService:a5];

  return v8;
}

+ (id)contextAuthorWithType:(unint64_t)a3 clientIdentifier:(id)a4
{
  v5 = a4;
  v6 = [[HMDCoreDataContextTransactionAuthor alloc] initWithType:a3 clientIdentifier:v5 qualityOfService:-1];

  return v6;
}

+ (id)contextAuthorWithType:(unint64_t)a3
{
  v3 = [[HMDCoreDataContextTransactionAuthor alloc] initWithType:a3 clientIdentifier:0 qualityOfService:-1];

  return v3;
}

@end