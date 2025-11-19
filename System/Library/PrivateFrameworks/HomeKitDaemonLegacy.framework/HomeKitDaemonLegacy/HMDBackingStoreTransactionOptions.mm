@interface HMDBackingStoreTransactionOptions
+ (HMDBackingStoreTransactionOptions)defaultMetadataCloudOptions;
+ (id)logCategory;
+ (id)stringForHMDBackingStoreDestination:(unint64_t)a3;
+ (id)stringForHMDBackingStoreTransactionSource:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMDBackingStoreTransactionOptions)initWithCoder:(id)a3;
- (HMDBackingStoreTransactionOptions)initWithSource:(unint64_t)a3 destination:(unint64_t)a4 label:(id)a5 mustReplay:(BOOL)a6 mustPush:(BOOL)a7 mustSaveArchiveAtomically:(BOOL)a8;
- (NSString)description;
- (id)_description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDBackingStoreTransactionOptions

- (unint64_t)hash
{
  v2 = [(HMDBackingStoreTransactionOptions *)self label];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDBackingStoreTransactionOptions source](self, "source"), v7 == [v6 source]) && (v8 = -[HMDBackingStoreTransactionOptions destination](self, "destination"), v8 == objc_msgSend(v6, "destination")))
  {
    v9 = [(HMDBackingStoreTransactionOptions *)self label];
    v10 = [v6 label];
    if ([v9 isEqualToString:v10] && (v11 = -[HMDBackingStoreTransactionOptions mustReplay](self, "mustReplay"), v11 == objc_msgSend(v6, "mustReplay")))
    {
      v14 = [(HMDBackingStoreTransactionOptions *)self mustPush];
      v12 = v14 ^ [v6 mustPush] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDBackingStoreTransactionOptions *)self _description];
  v4 = [v2 stringWithFormat:@"<options: %@>", v3];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBackingStoreTransactionOptions *)self label];
  v5 = [HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:[(HMDBackingStoreTransactionOptions *)self source]];
  v6 = [HMDBackingStoreTransactionOptions stringForHMDBackingStoreDestination:[(HMDBackingStoreTransactionOptions *)self destination]];
  if ([(HMDBackingStoreTransactionOptions *)self mustReplay])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if ([(HMDBackingStoreTransactionOptions *)self mustPush])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v9 = [v3 stringWithFormat:@"%@/%@/%@/mustReplay=%s/mustPush=%s", v4, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[HMDBackingStoreTransactionOptions source](self forKey:{"source"), @"HM.source"}];
  [v5 encodeInteger:-[HMDBackingStoreTransactionOptions destination](self forKey:{"destination"), @"HM.destination"}];
  v4 = [(HMDBackingStoreTransactionOptions *)self label];
  [v5 encodeObject:v4 forKey:@"HM.label"];

  [v5 encodeInteger:-[HMDBackingStoreTransactionOptions mustReplay](self forKey:{"mustReplay"), @"HM.mustReplay"}];
  [v5 encodeBool:-[HMDBackingStoreTransactionOptions mustPush](self forKey:{"mustPush"), @"HM.mustPush"}];
}

- (HMDBackingStoreTransactionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[HMDBackingStoreTransactionOptions initWithSource:destination:](self, "initWithSource:destination:", [v4 decodeIntegerForKey:@"HM.source"], objc_msgSend(v4, "decodeIntegerForKey:", @"HM.destination"));
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_mustReplay = [v4 decodeIntegerForKey:@"HM.mustReplay"] != 0;
    v5->_mustPush = [v4 decodeBoolForKey:@"HM.mustPush"];
    v8 = v5;
  }

  return v5;
}

- (HMDBackingStoreTransactionOptions)initWithSource:(unint64_t)a3 destination:(unint64_t)a4 label:(id)a5 mustReplay:(BOOL)a6 mustPush:(BOOL)a7 mustSaveArchiveAtomically:(BOOL)a8
{
  v14 = a5;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreTransactionOptions;
  v15 = [(HMDBackingStoreTransactionOptions *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_source = a3;
    v15->_destination = a4;
    objc_storeStrong(&v15->_label, a5);
    v16->_mustReplay = a6;
    v16->_mustPush = a7;
    v17 = v16;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_46183 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_46183, &__block_literal_global_46184);
  }

  v3 = logCategory__hmf_once_v2_46185;

  return v3;
}

uint64_t __48__HMDBackingStoreTransactionOptions_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_46185;
  logCategory__hmf_once_v2_46185 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)stringForHMDBackingStoreDestination:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  if (a3)
  {
    [v4 appendString:@"V3"];
    a3 &= ~1uLL;
  }

  if ((a3 & 2) != 0)
  {
    if ([v5 length])
    {
      v6 = "/";
    }

    else
    {
      v6 = "";
    }

    [v5 appendFormat:@"%sV4", v6];
    a3 &= ~2uLL;
  }

  if (a3)
  {
    if ([v5 length])
    {
      v7 = "/";
    }

    else
    {
      v7 = "";
    }

    [v5 appendFormat:@"%s<UNKNOWN 0x%lx>", v7, a3];
  }

  if ([v5 length])
  {
    v8 = v5;
  }

  else
  {
    v8 = @"<NoCloud>";
  }

  return v8;
}

+ (id)stringForHMDBackingStoreTransactionSource:(unint64_t)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a3];
  }

  else
  {
    v4 = off_279726340[a3];
  }

  return v4;
}

+ (HMDBackingStoreTransactionOptions)defaultMetadataCloudOptions
{
  v2 = [[HMDBackingStoreTransactionOptions alloc] initWithSource:4 destination:3 label:@"MetadataUpdate" mustReplay:0 mustPush:0];

  return v2;
}

@end