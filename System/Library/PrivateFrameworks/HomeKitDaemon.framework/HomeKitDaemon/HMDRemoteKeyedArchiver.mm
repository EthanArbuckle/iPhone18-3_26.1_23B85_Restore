@interface HMDRemoteKeyedArchiver
- (NSData)encodedData;
- (id)initForWritingWithRemoteDeviceIsOnSameAccount:(BOOL)account remoteGateway:(BOOL)gateway remoteUserIsAdministrator:(BOOL)administrator user:(id)user dataVersion:(int64_t)version supportedFeatures:(id)features;
- (void)dealloc;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)finishEncoding;
- (void)setClassName:(id)name forClass:(Class)class;
@end

@implementation HMDRemoteKeyedArchiver

- (NSData)encodedData
{
  archiver = [(HMDRemoteKeyedArchiver *)self archiver];
  encodedData = [archiver encodedData];

  return encodedData;
}

- (void)finishEncoding
{
  archiver = [(HMDRemoteKeyedArchiver *)self archiver];
  [archiver finishEncoding];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  archiver = [(HMDRemoteKeyedArchiver *)self archiver];
  [archiver encodeObject:objectCopy forKey:keyCopy];
}

- (void)setClassName:(id)name forClass:(Class)class
{
  nameCopy = name;
  archiver = [(HMDRemoteKeyedArchiver *)self archiver];
  [archiver setClassName:nameCopy forClass:class];
}

- (void)dealloc
{
  archiver = [(HMDRemoteKeyedArchiver *)self archiver];
  objc_removeAssociatedObjects(archiver);

  v4.receiver = self;
  v4.super_class = HMDRemoteKeyedArchiver;
  [(HMDRemoteKeyedArchiver *)&v4 dealloc];
}

- (id)initForWritingWithRemoteDeviceIsOnSameAccount:(BOOL)account remoteGateway:(BOOL)gateway remoteUserIsAdministrator:(BOOL)administrator user:(id)user dataVersion:(int64_t)version supportedFeatures:(id)features
{
  administratorCopy = administrator;
  gatewayCopy = gateway;
  accountCopy = account;
  v33 = *MEMORY[0x277D85DE8];
  userCopy = user;
  featuresCopy = features;
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
    v32 = userCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Encoding for user : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  archiver = v16->_archiver;
  v16->_archiver = v20;

  objc_setAssociatedObject(v16->_archiver, @"kTransportTypeAssociationKey", MEMORY[0x277CBEC38], 0x301);
  if (accountCopy)
  {
    objc_setAssociatedObject(v16->_archiver, @"DeviceIsOnSameAccountKey", MEMORY[0x277CBEC38], 0x301);
    if (!gatewayCopy)
    {
LABEL_6:
      if (!administratorCopy)
      {
        goto LABEL_7;
      }

LABEL_15:
      objc_setAssociatedObject(v16->_archiver, @"RemoteUserIsAdministrator", MEMORY[0x277CBEC38], 0x301);
      if (!userCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!gatewayCopy)
  {
    goto LABEL_6;
  }

  objc_setAssociatedObject(v16->_archiver, @"RemoteGateway", MEMORY[0x277CBEC38], 0x301);
  if (administratorCopy)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (userCopy)
  {
LABEL_8:
    objc_setAssociatedObject(v16->_archiver, @"User", userCopy, 0x301);
  }

LABEL_9:
  if (featuresCopy)
  {
    objc_setAssociatedObject(v16->_archiver, @"SupportedFeatures", featuresCopy, 0x301);
  }

  v22 = v16->_archiver;
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  objc_setAssociatedObject(v22, @"DataVersion", v23, 0x301);

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [(HMDRemoteKeyedArchiver *)v16 setClassName:v25 forClass:objc_opt_class()];

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

@end