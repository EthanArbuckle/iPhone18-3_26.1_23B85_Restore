@interface HMDHomeManagerHH2SharedUserLastSync
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDHomeManagerHH2SharedUserLastSync)initWithArchivePath:(id)path;
- (NSData)archive;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)configure;
- (void)removeArchiveFromLocalDisk;
@end

@implementation HMDHomeManagerHH2SharedUserLastSync

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  homeUUID = [(HMDHomeManagerHH2SharedUserLastSync *)self homeUUID];
  v6 = [v4 initWithName:@"HomeUUID" value:homeUUID];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDHomeManagerHH2SharedUserLastSync *)self user];
  uuid = [user uuid];
  v10 = [v7 initWithName:@"UserUUID" value:uuid];
  [array addObject:v10];

  v11 = objc_alloc(MEMORY[0x277D0F778]);
  user2 = [(HMDHomeManagerHH2SharedUserLastSync *)self user];
  userID = [user2 userID];
  v14 = [v11 initWithName:@"UserID" value:userID];
  [array addObject:v14];

  v15 = objc_alloc(MEMORY[0x277D0F778]);
  creationDate = [(HMDHomeManagerHH2SharedUserLastSync *)self creationDate];
  v17 = [v15 initWithName:@"Created Date" value:creationDate];
  [array addObject:v17];

  v18 = [array copy];

  return v18;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)removeArchiveFromLocalDisk
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CBEBC0]);
  if (self)
  {
    Property = objc_getProperty(self, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [v4 initFileURLWithPath:Property];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [defaultManager removeItemAtURL:v6 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      if (self)
      {
        v14 = objc_getProperty(selfCopy, v12, 40, 1);
      }

      else
      {
        v14 = 0;
      }

      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while removing sync data file %@ from disk : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSData)archive
{
  v4 = objc_autoreleasePoolPush();
  if (self)
  {
    Property = objc_getProperty(self, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [HMDUser getSyncDataFromLocalDiskWithArchive:Property];
  v7 = [v6 objectForKeyedSubscript:@"HMD.sync.data.data"];

  objc_autoreleasePoolPop(v4);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMDHomeManagerHH2SharedUserLastSync homeUUID](self, "homeUUID"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDHomeManagerHH2SharedUserLastSync homeUUID](v6, "homeUUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
    {
      user = [(HMDHomeManagerHH2SharedUserLastSync *)self user];
      uuid = [user uuid];
      user2 = [(HMDHomeManagerHH2SharedUserLastSync *)v6 user];
      uuid2 = [user2 uuid];
      v14 = [uuid isEqual:uuid2];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)configure
{
  v4 = objc_autoreleasePoolPush();
  if (self)
  {
    Property = objc_getProperty(self, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [HMDUser getSyncDataFromLocalDiskWithArchive:Property];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_UUIDForKey:@"HMD.sync.data.homeUUID"];
    [(HMDHomeManagerHH2SharedUserLastSync *)self setHomeUUID:v8];

    v9 = [v7 objectForKeyedSubscript:@"HMD.sync.data.user"];
    [(HMDHomeManagerHH2SharedUserLastSync *)self setUser:v9];

    v11 = [v7 hmf_dateForKey:@"HMD.sync.data.timestamp"];
    if (self)
    {
      objc_setProperty_atomic(self, v10, v11, 32);
    }

    v12 = [v7 objectForKeyedSubscript:@"HMD.sync.data.data"];

    if (v12)
    {
      self->_valid = 1;
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (HMDHomeManagerHH2SharedUserLastSync)initWithArchivePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HMDHomeManagerHH2SharedUserLastSync;
  v6 = [(HMDHomeManagerHH2SharedUserLastSync *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archivePath, path);
  }

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end