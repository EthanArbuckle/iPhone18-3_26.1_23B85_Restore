@interface HMDSettingGroup
- (HMDSettingGroup)initWithCoder:(id)coder;
- (HMDSettingGroup)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name groups:(id)groups settings:(id)settings;
- (HMDSettingGroup)initWithModel:(id)model;
- (NSArray)groups;
- (NSArray)settings;
- (void)addGroup:(id)group;
- (void)addSetting:(id)setting;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSettingGroup

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    parentIdentifier = [(HMDSettingGroup *)self parentIdentifier];
    [coderCopy encodeObject:parentIdentifier forKey:@"HM.S.ParentID"];

    identifier = [(HMDSettingGroup *)self identifier];
    [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CCED40]];

    name = [(HMDSettingGroup *)self name];
    [coderCopy encodeObject:name forKey:*MEMORY[0x277CCED48]];

    groups = [(HMDSettingGroup *)self groups];
    [coderCopy encodeObject:groups forKey:*MEMORY[0x277CCED38]];

    settings = [(HMDSettingGroup *)self settings];
    [coderCopy encodeObject:settings forKey:*MEMORY[0x277CCED50]];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMDSettingGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  groupsInternal = [(HMDSettingGroup *)self groupsInternal];
  [groupsInternal addObject:groupCopy];

  keyPath = [(HMDSettingGroup *)self keyPath];
  name = [groupCopy name];
  v7 = [keyPath stringByAppendingFormat:@".%@", name];
  [groupCopy setKeyPath:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addSetting:(id)setting
{
  settingCopy = setting;
  os_unfair_lock_lock_with_options();
  settingsInternal = [(HMDSettingGroup *)self settingsInternal];
  [settingsInternal addObject:settingCopy];

  keyPath = [(HMDSettingGroup *)self keyPath];
  name = [settingCopy name];
  v7 = [keyPath stringByAppendingFormat:@".%@", name];
  [settingCopy setKeyPath:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  groupsInternal = [(HMDSettingGroup *)self groupsInternal];
  allObjects = [groupsInternal allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  settingsInternal = [(HMDSettingGroup *)self settingsInternal];
  allObjects = [settingsInternal allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (HMDSettingGroup)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name groups:(id)groups settings:(id)settings
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  nameCopy = name;
  groupsCopy = groups;
  settingsCopy = settings;
  v32.receiver = self;
  v32.super_class = HMDSettingGroup;
  v17 = [(HMDSettingGroup *)&v32 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    v19 = [nameCopy copy];
    name = v18->_name;
    v18->_name = v19;

    v21 = [nameCopy copy];
    keyPath = v18->_keyPath;
    v18->_keyPath = v21;

    v23 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v23;

    v25 = [parentIdentifierCopy copy];
    parentIdentifier = v18->_parentIdentifier;
    v18->_parentIdentifier = v25;

    v27 = [MEMORY[0x277CBEB58] setWithArray:groupsCopy];
    groupsInternal = v18->_groupsInternal;
    v18->_groupsInternal = v27;

    v29 = [MEMORY[0x277CBEB58] setWithArray:settingsCopy];
    settingsInternal = v18->_settingsInternal;
    v18->_settingsInternal = v29;
  }

  return v18;
}

- (HMDSettingGroup)initWithModel:(id)model
{
  modelCopy = model;
  uUID = [MEMORY[0x277CCAD78] UUID];
  hmbModelID = [modelCopy hmbModelID];

  if (hmbModelID)
  {
    hmbModelID2 = [modelCopy hmbModelID];

    uUID = hmbModelID2;
  }

  hmbParentModelID = [modelCopy hmbParentModelID];
  name = [modelCopy name];
  v10 = [(HMDSettingGroup *)self initWithIdentifier:uUID parentIdentifier:hmbParentModelID name:name groups:MEMORY[0x277CBEBF8] settings:MEMORY[0x277CBEBF8]];

  return v10;
}

@end