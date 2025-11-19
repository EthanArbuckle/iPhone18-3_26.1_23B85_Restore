@interface HMDCapabilityFlags
- (BOOL)hasCapabilities:(id)a3;
- (HMDCapabilityFlags)initWithCapabilities:(id)a3;
- (HMDCapabilityFlags)initWithCapabilityOptions:(unint64_t)a3;
- (HMDCapabilityFlags)initWithCoder:(id)a3;
- (HMDCapabilityFlags)initWithData:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCapabilityFlags

- (BOOL)hasCapabilities:(id)a3
{
  v4 = a3;
  v5 = [v4 bytesData];
  v6 = [v5 bytes];

  v7 = [(HMDCapabilityFlags *)self bytesData];
  v8 = [v7 bytes];

  v9 = [v4 bytesData];
  v10 = [v9 length];

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = [(HMDCapabilityFlags *)self bytesData];
      v13 = [v12 length];

      if (v11 >= v13 || (*(v6 + v11) & ~*(v8 + v11)) != 0)
      {
        break;
      }

      ++v11;
      v14 = [v4 bytesData];
      v15 = [v14 length];

      if (v11 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = 0;
  }

  else
  {
LABEL_6:
    v16 = 1;
  }

  return v16;
}

- (HMDCapabilityFlags)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCapabilityFlags;
  v6 = [(HMDCapabilityFlags *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bytesData, a3);
  }

  return v7;
}

- (HMDCapabilityFlags)initWithCapabilities:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  v6 = [v5 valueForKeyPath:@"@max.self"];
  v7 = [v6 unsignedIntegerValue];

  if ((v7 & 7) == 0 && v7 >= 8)
  {
    v9 = v7 >> 3;
  }

  else
  {
    v9 = (v7 >> 3) + 1;
  }

  if (v9 >= 9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Ran over 64 bits, you sure this is expected?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v13 = malloc_type_malloc(v9, 0x100004077774924uLL);
  bzero(v13, v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) unsignedIntegerValue];
        *(v13 + (v19 >> 3)) |= 1 << (v19 & 7);
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:v9 freeWhenDone:1];
  v21 = [(HMDCapabilityFlags *)self initWithData:v20];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (HMDCapabilityFlags)initWithCapabilityOptions:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0;
  v7 = 0;
  for (i = 0; i != 8; ++i)
  {
    if ((a3 >> v6))
    {
      v7 = i;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(a3 >> v6)];
    [v5 addObject:v9];

    v6 += 8;
  }

  v10 = v7 + 1;
  v11 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  bzero(v11, v7 + 1);
  if (v7 != -1)
  {
    v12 = 0;
    do
    {
      v13 = [v5 objectAtIndexedSubscript:v12];
      *(v11 + v12) = [v13 unsignedCharValue];

      ++v12;
    }

    while (v10 != v12);
  }

  v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:v10 freeWhenDone:1];
  v15 = [(HMDCapabilityFlags *)self initWithData:v14];

  return v15;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCapabilityFlags *)self bytesData];
  v4 = [v2 stringWithFormat:@"[HMDCapabilityFlags %@]", v3];

  return v4;
}

- (HMDCapabilityFlags)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.rqcp"];

  if (v5)
  {
    self = [(HMDCapabilityFlags *)self initWithData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCapabilityFlags *)self bytesData];
  [v4 encodeObject:v5 forKey:@"HMD.rqcp"];
}

@end