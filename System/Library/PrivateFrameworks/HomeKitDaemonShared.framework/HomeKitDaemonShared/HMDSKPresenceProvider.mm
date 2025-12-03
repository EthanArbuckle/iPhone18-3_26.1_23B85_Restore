@interface HMDSKPresenceProvider
- (id)createPresenceWithChannelName:(id)name serviceIdentifier:(id)identifier;
@end

@implementation HMDSKPresenceProvider

- (id)createPresenceWithChannelName:(id)name serviceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  v8 = [objc_alloc(MEMORY[0x277D68100]) initWithServiceIdentifier:identifierCopy];
  [v8 setIsDaemonIdleExitEnabled:1];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    [v8 isDaemonIdleExitEnabled];
    v13 = HMFBooleanToString();
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_2540F2000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Initializing SKPresenceOptions with isDaemonIdleExitEnabled: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [objc_alloc(MEMORY[0x277D680D8]) initWithPresenceIdentifier:nameCopy options:v8];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end