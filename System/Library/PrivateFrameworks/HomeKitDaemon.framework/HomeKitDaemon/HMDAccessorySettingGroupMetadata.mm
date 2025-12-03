@interface HMDAccessorySettingGroupMetadata
+ (id)groupWithDictonaryRepresentation:(id)representation parentKeyPath:(id)path;
+ (id)groupsWithArrayRepresenation:(id)represenation parentKeyPath:(id)path;
- (HMDAccessorySettingGroupMetadata)initWithName:(id)name settings:(id)settings groups:(id)groups parentKeyPath:(id)path;
- (NSString)propertyDescription;
- (id)modelsWithParentIdentifier:(id)identifier;
@end

@implementation HMDAccessorySettingGroupMetadata

- (id)modelsWithParentIdentifier:(id)identifier
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [HMDAccessorySettingGroupModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:uUID parentUUID:identifierCopy];

  name = [(HMDAccessorySettingGroupMetadata *)self name];
  [(HMDAccessorySettingGroupModel *)v7 setName:name];

  v9 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  settings = [(HMDAccessorySettingGroupMetadata *)self settings];
  v11 = [settings countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(settings);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        uuid = [(HMDBackingStoreModelObject *)v7 uuid];
        v17 = [v15 modelsWithParentIdentifier:uuid];
        [v9 addObjectsFromArray:v17];
      }

      v12 = [settings countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  groups = [(HMDAccessorySettingGroupMetadata *)self groups];
  v19 = [groups countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(groups);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        uuid2 = [(HMDBackingStoreModelObject *)v7 uuid];
        v25 = [v23 modelsWithParentIdentifier:uuid2];
        [v9 addObjectsFromArray:v25];
      }

      v20 = [groups countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }

  v26 = [v9 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDAccessorySettingGroupMetadata *)self name];
  settings = [(HMDAccessorySettingGroupMetadata *)self settings];
  groups = [(HMDAccessorySettingGroupMetadata *)self groups];
  v7 = [v3 stringWithFormat:@", Name = %@, Settings = %@, Groups = %@", name, settings, groups];

  return v7;
}

- (HMDAccessorySettingGroupMetadata)initWithName:(id)name settings:(id)settings groups:(id)groups parentKeyPath:(id)path
{
  nameCopy = name;
  settingsCopy = settings;
  groupsCopy = groups;
  pathCopy = path;
  if (nameCopy)
  {
    v14 = nameCopy;
    v23.receiver = self;
    v23.super_class = HMDAccessorySettingGroupMetadata;
    v15 = [(HMDAccessorySettingGroupMetadata *)&v23 init];
    if (v15)
    {
      v16 = [v14 copy];
      name = v15->_name;
      v15->_name = v16;

      if (pathCopy)
      {
        v18 = [pathCopy stringByAppendingFormat:@".%@", v15->_name];
      }

      else
      {
        v18 = v14;
      }

      objc_storeStrong(&v15->_keyPath, v18);
      if (pathCopy)
      {
      }

      if (settingsCopy)
      {
        v20 = [settingsCopy copy];
      }

      else
      {
        v20 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v15->_settings, v20);
      if (settingsCopy)
      {
      }

      if (groupsCopy)
      {
        v21 = [groupsCopy copy];
      }

      else
      {
        v21 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v15->_groups, v21);
      if (groupsCopy)
      {
      }
    }

    self = v15;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)groupWithDictonaryRepresentation:(id)representation parentKeyPath:(id)path
{
  pathCopy = path;
  representationCopy = representation;
  v8 = [representationCopy objectForKeyedSubscript:@"Key"];
  v9 = v8;
  if (pathCopy)
  {
    v10 = [pathCopy stringByAppendingFormat:@".%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [self alloc];
  v13 = [representationCopy hmf_arrayForKey:@"Settings"];
  v14 = [HMDAccessorySettingMetadata settingsWithArrayRepresenation:v13 parentKeyPath:v11];
  v15 = [representationCopy hmf_arrayForKey:@"Groups"];

  v16 = [HMDAccessorySettingGroupMetadata groupsWithArrayRepresenation:v15 parentKeyPath:v11];
  v17 = [v12 initWithName:v9 settings:v14 groups:v16 parentKeyPath:pathCopy];

  return v17;
}

+ (id)groupsWithArrayRepresenation:(id)represenation parentKeyPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  represenationCopy = represenation;
  pathCopy = path;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = represenationCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [HMDAccessorySettingGroupMetadata groupWithDictonaryRepresentation:v13 parentKeyPath:pathCopy, v18];
          if (v14)
          {
            [array addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end