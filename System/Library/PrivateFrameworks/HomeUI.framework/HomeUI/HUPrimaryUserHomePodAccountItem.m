@interface HUPrimaryUserHomePodAccountItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUPrimaryUserHomePodAccountItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUPrimaryUserHomePodAccountItem *)self valueSource];
  v6 = [(HUPrimaryUserHomePodAccountItem *)self mediaProfileContainer];
  v7 = [v4 initWithValueSource:v5 mediaProfileContainer:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUPrimaryUserHomePodAccountItem;
  v5 = [(HUPrimaryUserHomePodAccountItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUPrimaryUserHomePodAccountItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __63__HUPrimaryUserHomePodAccountItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsUserSection_HomePodAccountTitle", @"HUPrimaryUserSettingsUserSection_HomePodAccountTitle", 1);
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = [WeakRetained mediaProfileContainer];
  v8 = [v7 hf_appleMusicCurrentLoggedInAccount];

  if (v8)
  {
    [v5 setObject:&stru_2823E0EE8 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsUserSection_HomePodAccountDescription_SignedOut", @"HUPrimaryUserSettingsUserSection_HomePodAccountDescription_SignedOut", 1);
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v10 = [WeakRetained mediaProfileContainer];
  v11 = [v10 hf_preferredUserSelectionType];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109376;
    v16[1] = v8 != 0;
    v17 = 1024;
    v18 = v11 == 0;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Is there a signed-in account on this HomePod?: %{BOOL}d isSelectionTypeHomePodAccount?: %{BOOL}d", v16, 0xEu);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11 == 0];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v14;
}

@end