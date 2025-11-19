@interface HMDRemoteKeyedArchiver
- (NSData)encodedData;
- (id)initForWritingWithRemoteDeviceIsOnSameAccount:(BOOL)a3 remoteGateway:(BOOL)a4 remoteUserIsAdministrator:(BOOL)a5 user:(id)a6 dataVersion:(int64_t)a7 supportedFeatures:(id)a8;
- (void)dealloc;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)finishEncoding;
- (void)setClassName:(id)a3 forClass:(Class)a4;
@end

@implementation HMDRemoteKeyedArchiver

- (NSData)encodedData
{
  v2 = [(HMDRemoteKeyedArchiver *)self archiver];
  v3 = [v2 encodedData];

  return v3;
}

- (void)finishEncoding
{
  v2 = [(HMDRemoteKeyedArchiver *)self archiver];
  [v2 finishEncoding];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDRemoteKeyedArchiver *)self archiver];
  [v8 encodeObject:v7 forKey:v6];
}

- (void)setClassName:(id)a3 forClass:(Class)a4
{
  v6 = a3;
  v7 = [(HMDRemoteKeyedArchiver *)self archiver];
  [v7 setClassName:v6 forClass:a4];
}

- (void)dealloc
{
  v3 = [(HMDRemoteKeyedArchiver *)self archiver];
  objc_removeAssociatedObjects(v3);

  v4.receiver = self;
  v4.super_class = HMDRemoteKeyedArchiver;
  [(HMDRemoteKeyedArchiver *)&v4 dealloc];
}

- (id)initForWritingWithRemoteDeviceIsOnSameAccount:(BOOL)a3 remoteGateway:(BOOL)a4 remoteUserIsAdministrator:(BOOL)a5 user:(id)a6 dataVersion:(int64_t)a7 supportedFeatures:(id)a8
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a8;
  v28.receiver = self;
  v28.super_class = HMDRemoteKeyedArchiver;
  v16 = [(HMDRemoteKeyedArchiver *)&v28 init];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v19;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Encoding for user : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  archiver = v16->_archiver;
  v16->_archiver = v20;

  objc_setAssociatedObject(v16->_archiver, @"kTransportTypeAssociationKey", MEMORY[0x277CBEC38], 0x301);
  if (v12)
  {
    objc_setAssociatedObject(v16->_archiver, @"DeviceIsOnSameAccountKey", MEMORY[0x277CBEC38], 0x301);
    if (!v11)
    {
LABEL_6:
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_15:
      objc_setAssociatedObject(v16->_archiver, @"RemoteUserIsAdministrator", MEMORY[0x277CBEC38], 0x301);
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  objc_setAssociatedObject(v16->_archiver, @"RemoteGateway", MEMORY[0x277CBEC38], 0x301);
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v14)
  {
LABEL_8:
    objc_setAssociatedObject(v16->_archiver, @"User", v14, 0x301);
  }

LABEL_9:
  if (v15)
  {
    objc_setAssociatedObject(v16->_archiver, @"SupportedFeatures", v15, 0x301);
  }

  v22 = v16->_archiver;
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  objc_setAssociatedObject(v22, @"DataVersion", v23, 0x301);

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [(HMDRemoteKeyedArchiver *)v16 setClassName:v25 forClass:objc_opt_class()];

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

@end