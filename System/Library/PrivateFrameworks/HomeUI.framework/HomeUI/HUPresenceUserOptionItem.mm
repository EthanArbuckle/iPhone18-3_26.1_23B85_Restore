@interface HUPresenceUserOptionItem
- (HUPresenceUserOptionItem)initWithUserItem:(id)item selectedLocationDevice:(id)device locationDeviceManager:(id)manager;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUPresenceUserOptionItem

- (HUPresenceUserOptionItem)initWithUserItem:(id)item selectedLocationDevice:(id)device locationDeviceManager:(id)manager
{
  itemCopy = item;
  deviceCopy = device;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = HUPresenceUserOptionItem;
  v12 = [(HUPresenceUserOptionItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userItem, item);
    objc_storeStrong(&v13->_selectedLocationDevice, device);
    objc_storeStrong(&v13->_locationDeviceManager, manager);
  }

  return v13;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  userItem = [(HUPresenceUserOptionItem *)self userItem];
  v6 = [userItem updateWithOptions:optionsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DBF558;
  v11 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14120]];
  if ([v4 type] || (objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", *MEMORY[0x277D13BB0]), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v6))
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_2;
    v17[3] = &unk_277DB7478;
    v17[4] = *(a1 + 40);
    v9 = __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_2(v17);
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_INFO, "fetching activeLocationDevice for current user: %@", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_4;
    v15[3] = &unk_277DBA4E0;
    v11 = v3;
    v16 = v11;
    v12 = [v9 flatMap:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_10;
    v13[3] = &unk_277DB9858;
    v14 = v11;
    v7 = [v12 recover:v13];
  }

  return v7;
}

id __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedLocationDevice];
  v3 = [v2 type];

  switch(v3)
  {
    case 2:
      v7 = MEMORY[0x277D2C900];
      v8 = [HULocationDevice alloc];
      v4 = [*(a1 + 32) selectedLocationDevice];
      v9 = [v4 customDevice];
      v10 = [(HULocationDevice *)v8 initWithHMDevice:v9];
      v6 = [v7 futureWithResult:v10];

      break;
    case 1:
      v4 = [*(a1 + 32) locationDeviceManager];
      v5 = [v4 thisDeviceFuture];
      goto LABEL_6;
    case 0:
      v4 = [*(a1 + 32) locationDeviceManager];
      v5 = [v4 activeLocationDeviceFuture];
LABEL_6:
      v6 = v5;
      break;
    default:
      v11 = MEMORY[0x277CCABB0];
      v4 = [*(a1 + 32) selectedLocationDevice];
      v12 = [v11 numberWithUnsignedInteger:{objc_msgSend(v4, "type")}];
      NSLog(&cfstr_UnknownDeviceT.isa, v12);

      v6 = 0;
      break;
  }

  return v6;
}

id __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_INFO, "activeLocationDevice for current user: %@", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) results];
  v6 = [v5 mutableCopy];

  if ([v3 isCurrentDevice])
  {
    HULocalizedModelString(@"HULocationDeviceCurrentDevice");
  }

  else
  {
    [v3 name];
  }
  v7 = ;
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277D14780] outcomeWithResults:v6];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

id __56__HUPresenceUserOptionItem__subclass_updateWithOptions___block_invoke_10(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "failed to get activeLocationDevice for current user; error: %@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v5;
}

@end