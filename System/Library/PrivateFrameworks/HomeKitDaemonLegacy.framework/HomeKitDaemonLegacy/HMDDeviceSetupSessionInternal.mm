@interface HMDDeviceSetupSessionInternal
+ (BOOL)isSupported;
+ (id)allowedClasses;
+ (int64_t)role;
- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error;
- (HMDDeviceSetupSessionInternal)initWithHomeManager:(id)manager userDefaults:(id)defaults;
- (HMDHomeManager)homeManager;
@end

@implementation HMDDeviceSetupSessionInternal

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (HMDDeviceSetupSessionInternal)initWithHomeManager:(id)manager userDefaults:(id)defaults
{
  managerCopy = manager;
  defaultsCopy = defaults;
  v11.receiver = self;
  v11.super_class = HMDDeviceSetupSessionInternal;
  v8 = [(HMDDeviceSetupSessionInternal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, managerCopy);
    objc_storeStrong(&v9->_userDefaults, defaults);
    v9->_state = 1;
  }

  return v9;
}

+ (id)allowedClasses
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isSupported
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (int64_t)role
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end