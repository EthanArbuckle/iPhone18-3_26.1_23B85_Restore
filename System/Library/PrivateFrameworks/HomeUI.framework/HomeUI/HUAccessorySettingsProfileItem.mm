@interface HUAccessorySettingsProfileItem
- (HUAccessorySettingsProfileItem)initWithProfile:(id)a3 setting:(id)a4;
- (NSUUID)uniqueIdentifier;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUAccessorySettingsProfileItem

- (HUAccessorySettingsProfileItem)initWithProfile:(id)a3 setting:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"setting"}];
  }

  v14.receiver = self;
  v14.super_class = HUAccessorySettingsProfileItem;
  v10 = [(HUAccessorySettingsProfileItem *)&v14 init];
  if (v10)
  {
    if (!v8)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:v10 file:@"HUAccessorySettingsProfileItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
    }

    objc_storeStrong(&v10->_profile, a3);
    objc_storeStrong(&v10->_setting, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUAccessorySettingsProfileItem *)self profile];
  v6 = [(HUAccessorySettingsProfileItem *)self setting];
  v7 = [v4 initWithProfile:v5 setting:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (NSUUID)uniqueIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HUAccessorySettingsProfileItem *)self profile];
  v5 = [v4 UUID];
  v6 = [v3 initWithUUIDString:v5];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D14858]);
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HUAccessorySettingsProfileItem *)self setting];
  v7 = [v5 setWithObjects:{v6, 0}];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v11 = [(HUAccessorySettingsProfileItem *)self profile];
  v12 = [v11 displayName];

  if (v12)
  {
    v13 = [(HUAccessorySettingsProfileItem *)self profile];
    v14 = [v13 displayName];
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  v15 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v15;
}

@end