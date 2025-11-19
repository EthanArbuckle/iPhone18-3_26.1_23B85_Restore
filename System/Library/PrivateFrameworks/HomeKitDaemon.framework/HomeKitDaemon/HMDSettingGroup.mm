@interface HMDSettingGroup
- (HMDSettingGroup)initWithCoder:(id)a3;
- (HMDSettingGroup)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 groups:(id)a6 settings:(id)a7;
- (HMDSettingGroup)initWithModel:(id)a3;
- (NSArray)groups;
- (NSArray)settings;
- (void)addGroup:(id)a3;
- (void)addSetting:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSettingGroup

- (void)encodeWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = [(HMDSettingGroup *)self parentIdentifier];
    [v4 encodeObject:v5 forKey:@"HM.S.ParentID"];

    v6 = [(HMDSettingGroup *)self identifier];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CCED40]];

    v7 = [(HMDSettingGroup *)self name];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277CCED48]];

    v8 = [(HMDSettingGroup *)self groups];
    [v4 encodeObject:v8 forKey:*MEMORY[0x277CCED38]];

    v9 = [(HMDSettingGroup *)self settings];
    [v4 encodeObject:v9 forKey:*MEMORY[0x277CCED50]];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Did not encode group as transport is not XPC.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDSettingGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)addGroup:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDSettingGroup *)self groupsInternal];
  [v4 addObject:v8];

  v5 = [(HMDSettingGroup *)self keyPath];
  v6 = [v8 name];
  v7 = [v5 stringByAppendingFormat:@".%@", v6];
  [v8 setKeyPath:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addSetting:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDSettingGroup *)self settingsInternal];
  [v4 addObject:v8];

  v5 = [(HMDSettingGroup *)self keyPath];
  v6 = [v8 name];
  v7 = [v5 stringByAppendingFormat:@".%@", v6];
  [v8 setKeyPath:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDSettingGroup *)self groupsInternal];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDSettingGroup *)self settingsInternal];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (HMDSettingGroup)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 groups:(id)a6 settings:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = HMDSettingGroup;
  v17 = [(HMDSettingGroup *)&v32 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    v19 = [v14 copy];
    name = v18->_name;
    v18->_name = v19;

    v21 = [v14 copy];
    keyPath = v18->_keyPath;
    v18->_keyPath = v21;

    v23 = [v12 copy];
    identifier = v18->_identifier;
    v18->_identifier = v23;

    v25 = [v13 copy];
    parentIdentifier = v18->_parentIdentifier;
    v18->_parentIdentifier = v25;

    v27 = [MEMORY[0x277CBEB58] setWithArray:v15];
    groupsInternal = v18->_groupsInternal;
    v18->_groupsInternal = v27;

    v29 = [MEMORY[0x277CBEB58] setWithArray:v16];
    settingsInternal = v18->_settingsInternal;
    v18->_settingsInternal = v29;
  }

  return v18;
}

- (HMDSettingGroup)initWithModel:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v4 hmbModelID];

  if (v6)
  {
    v7 = [v4 hmbModelID];

    v5 = v7;
  }

  v8 = [v4 hmbParentModelID];
  v9 = [v4 name];
  v10 = [(HMDSettingGroup *)self initWithIdentifier:v5 parentIdentifier:v8 name:v9 groups:MEMORY[0x277CBEBF8] settings:MEMORY[0x277CBEBF8]];

  return v10;
}

@end