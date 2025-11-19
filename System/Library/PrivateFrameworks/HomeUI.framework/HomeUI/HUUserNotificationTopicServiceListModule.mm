@interface HUUserNotificationTopicServiceListModule
+ (id)_createTransformItemForItem:(id)a3 notificationSettingsProvider:(id)a4;
- (HUUserNotificationTopicServiceListModule)initWithItemUpdater:(id)a3;
- (HUUserNotificationTopicServiceListModule)initWithItemUpdater:(id)a3 home:(id)a4 topic:(id)a5;
- (id)buildNativeMatterAccessoryItemProvider;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)serviceLikeItemForItem:(id)a3;
- (void)_buildItemProviders;
@end

@implementation HUUserNotificationTopicServiceListModule

- (id)buildNativeMatterAccessoryItemProvider
{
  v2 = self;
  v3 = HUUserNotificationTopicServiceListModule.buildNativeMatterAccessoryItemProvider()();

  return v3;
}

- (HUUserNotificationTopicServiceListModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_topic_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUUserNotificationTopicServiceListModule.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUUserNotificationTopicServiceListModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUUserNotificationTopicServiceListModule)initWithItemUpdater:(id)a3 home:(id)a4 topic:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUUserNotificationTopicServiceListModule;
  v11 = [(HFItemModule *)&v14 initWithItemUpdater:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a4);
    objc_storeStrong(&v12->_topic, a5);
    [(HUUserNotificationTopicServiceListModule *)v12 _buildItemProviders];
  }

  return v12;
}

+ (id)_createTransformItemForItem:(id)a3 notificationSettingsProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D14C30]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HUUserNotificationTopicServiceListModule__createTransformItemForItem_notificationSettingsProvider___block_invoke;
  v12[3] = &unk_277DBDC00;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 initWithSourceItem:v8 transformationBlock:v12];

  return v10;
}

id __101__HUUserNotificationTopicServiceListModule__createTransformItemForItem_notificationSettingsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) hf_userNotificationSettings];
  v5 = [v4 areNotificationsEnabled];

  if (v5)
  {
    v6 = @"HUNotificationTopicServiceNotificationsEnabled";
  }

  else
  {
    v6 = @"HUNotificationTopicServiceNotificationsDisabled";
  }

  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  v8 = *MEMORY[0x277D13E20];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  objc_opt_class();
  v9 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 accessory];
    v13 = [v12 category];
    v14 = [v13 categoryType];
    v15 = [v14 isEqual:*MEMORY[0x277CCE8B8]];
    v16 = @"VideoDoorbell";
    if (v15)
    {
      v16 = @"IPCamera";
    }

    v17 = v16;

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUUserNotificationTopicSubtitle_%@", v17];

    v19 = _HULocalizedStringWithDefaultValue(v18, v18, 1);

    [v3 setObject:v19 forKeyedSubscript:@"HUUserNotificationTopicSubtitleResultKey"];
    v20 = MEMORY[0x277D144A0];
    v21 = [v11 profile];
    if ([v20 shouldReportNotificationsAsDisabledForProfile:v21])
    {
      v22 = @"HUNotificationTopicServiceNotificationsDisabled";
    }

    else
    {
      v22 = @"HUNotificationTopicServiceNotificationsEnabled";
    }

    v23 = _HULocalizedStringWithDefaultValue(v22, v22, 1);
    [v3 setObject:v23 forKeyedSubscript:v8];
  }

  return v3;
}

- (void)_buildItemProviders
{
  objc_initWeak(&location, self);
  v3 = [(HUUserNotificationTopicServiceListModule *)self topic];
  v4 = objc_alloc(MEMORY[0x277D14AD0]);
  v5 = [(HUUserNotificationTopicServiceListModule *)self home];
  v6 = [v4 initWithHome:v5];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke;
  v30[3] = &unk_277DB87C8;
  objc_copyWeak(&v31, &location);
  [v6 setFilter:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_2;
  v28[3] = &unk_277DB9780;
  v7 = v3;
  v29 = v7;
  [v6 setSourceServiceGenerator:v28];
  v8 = objc_alloc(MEMORY[0x277D14C38]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_3;
  v26[3] = &unk_277DBDC28;
  objc_copyWeak(&v27, &location);
  v9 = [v8 initWithSourceProvider:v6 transformationBlock:v26];
  transformServiceItemProvider = self->_transformServiceItemProvider;
  self->_transformServiceItemProvider = v9;

  if ([v7 isMatter])
  {
    v11 = [(HUUserNotificationTopicServiceListModule *)self buildNativeMatterAccessoryItemProvider];
    nativeMatterAccessoryItemProvider = self->_nativeMatterAccessoryItemProvider;
    self->_nativeMatterAccessoryItemProvider = v11;
  }

  v13 = [v7 accessoryCategoryTypes];
  v14 = [v13 containsObject:*MEMORY[0x277CCE8B8]];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D144A8]);
    v16 = [(HUUserNotificationTopicServiceListModule *)self home];
    v17 = [v15 initWithHome:v16];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_4;
    v23[3] = &unk_277DBDC50;
    objc_copyWeak(&v25, &location);
    v24 = v7;
    [v17 setFilter:v23];
    v18 = objc_alloc(MEMORY[0x277D14C38]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_5;
    v21[3] = &unk_277DBDC78;
    objc_copyWeak(&v22, &location);
    v19 = [v18 initWithSourceProvider:v17 transformationBlock:v21];
    transformCameraItemProvider = self->_transformCameraItemProvider;
    self->_transformCameraItemProvider = v19;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
  }

  objc_destroyWeak(&v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

BOOL __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ObjectClassIsN.isa, v5);
  }

  return v7 != 0;
}

id __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 hf_servicesAffectedByServiceTopic:*(a1 + 32)];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

id __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_class();
  v6 = [v3 service];
  v7 = [v5 _createTransformItemForItem:v3 notificationSettingsProvider:v6];

  return v7;
}

uint64_t __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = *(a1 + 32);
  v9 = [WeakRetained home];
  v10 = [v9 hf_userNotificationTopicForCameraProfile:v7];
  v11 = v8;
  v12 = v10;
  if (v11 == v12)
  {
    v13 = 1;
  }

  else if (v11)
  {
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __63__HUUserNotificationTopicServiceListModule__buildItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_class();
  v6 = [v3 profile];
  v7 = [v5 _createTransformItemForItem:v3 notificationSettingsProvider:v6];

  return v7;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HUUserNotificationTopicServiceListModule *)self transformServiceItemProvider];
  v5 = [v3 setWithObject:v4];

  v6 = [(HUUserNotificationTopicServiceListModule *)self nativeMatterAccessoryItemProvider];
  [v5 na_safeAddObject:v6];

  v7 = [(HUUserNotificationTopicServiceListModule *)self transformCameraItemProvider];
  [v5 na_safeAddObject:v7];

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"NotificationSettings"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUNotificationTopicServiceListSectionHeaderTitle", @"HUNotificationTopicServiceListSectionHeaderTitle", 1);
  [v6 setHeaderTitle:v7];

  v8 = [(HFItemModule *)self allItems];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11];

  v12 = MEMORY[0x277D14778];
  v16[0] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v12 filterSections:v13 toDisplayedItems:v5];

  return v14;
}

- (id)serviceLikeItemForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 sourceItem];
  if ([v7 conformsToProtocol:&unk_28251B0C8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

@end