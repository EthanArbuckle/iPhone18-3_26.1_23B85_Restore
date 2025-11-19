@interface HMDAccessorySettingGroupMetadata
+ (id)groupWithDictonaryRepresentation:(id)a3 parentKeyPath:(id)a4;
+ (id)groupsWithArrayRepresenation:(id)a3 parentKeyPath:(id)a4;
- (HMDAccessorySettingGroupMetadata)initWithName:(id)a3 settings:(id)a4 groups:(id)a5 parentKeyPath:(id)a6;
- (NSString)propertyDescription;
- (id)modelsWithParentIdentifier:(id)a3;
@end

@implementation HMDAccessorySettingGroupMetadata

- (id)modelsWithParentIdentifier:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDAccessorySettingGroupModel alloc];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  v8 = [(HMDAccessorySettingGroupMetadata *)self name];
  [(HMDAccessorySettingGroupModel *)v7 setName:v8];

  v9 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [(HMDAccessorySettingGroupMetadata *)self settings];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(HMDBackingStoreModelObject *)v7 uuid];
        v17 = [v15 modelsWithParentIdentifier:v16];
        [v9 addObjectsFromArray:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [(HMDAccessorySettingGroupMetadata *)self groups];
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        v24 = [(HMDBackingStoreModelObject *)v7 uuid];
        v25 = [v23 modelsWithParentIdentifier:v24];
        [v9 addObjectsFromArray:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
  v4 = [(HMDAccessorySettingGroupMetadata *)self name];
  v5 = [(HMDAccessorySettingGroupMetadata *)self settings];
  v6 = [(HMDAccessorySettingGroupMetadata *)self groups];
  v7 = [v3 stringWithFormat:@", Name = %@, Settings = %@, Groups = %@", v4, v5, v6];

  return v7;
}

- (HMDAccessorySettingGroupMetadata)initWithName:(id)a3 settings:(id)a4 groups:(id)a5 parentKeyPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = v10;
    v23.receiver = self;
    v23.super_class = HMDAccessorySettingGroupMetadata;
    v15 = [(HMDAccessorySettingGroupMetadata *)&v23 init];
    if (v15)
    {
      v16 = [v14 copy];
      name = v15->_name;
      v15->_name = v16;

      if (v13)
      {
        v18 = [v13 stringByAppendingFormat:@".%@", v15->_name];
      }

      else
      {
        v18 = v14;
      }

      objc_storeStrong(&v15->_keyPath, v18);
      if (v13)
      {
      }

      if (v11)
      {
        v20 = [v11 copy];
      }

      else
      {
        v20 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v15->_settings, v20);
      if (v11)
      {
      }

      if (v12)
      {
        v21 = [v12 copy];
      }

      else
      {
        v21 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v15->_groups, v21);
      if (v12)
      {
      }
    }

    self = v15;

    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)groupWithDictonaryRepresentation:(id)a3 parentKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"Key"];
  v9 = v8;
  if (v6)
  {
    v10 = [v6 stringByAppendingFormat:@".%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [a1 alloc];
  v13 = [v7 hmf_arrayForKey:@"Settings"];
  v14 = [HMDAccessorySettingMetadata settingsWithArrayRepresenation:v13 parentKeyPath:v11];
  v15 = [v7 hmf_arrayForKey:@"Groups"];

  v16 = [HMDAccessorySettingGroupMetadata groupsWithArrayRepresenation:v15 parentKeyPath:v11];
  v17 = [v12 initWithName:v9 settings:v14 groups:v16 parentKeyPath:v6];

  return v17;
}

+ (id)groupsWithArrayRepresenation:(id)a3 parentKeyPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
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
          v14 = [HMDAccessorySettingGroupMetadata groupWithDictonaryRepresentation:v13 parentKeyPath:v6, v18];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end