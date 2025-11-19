@interface HFUserNotificationServiceTopicItemProvider
- (HFUserNotificationServiceTopicItemProvider)initWithHome:(id)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFUserNotificationServiceTopicItemProvider

- (HFUserNotificationServiceTopicItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFUserNotificationServiceTopicItemProvider;
  v6 = [(HFItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (id)reloadItems
{
  v3 = [(HFUserNotificationServiceTopicItemProvider *)self home];
  v4 = [v3 hf_userNotificationServiceTopics];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_2;
  v11[3] = &unk_277DF4830;
  v12 = &__block_literal_global_22;
  v5 = [(HFUserNotificationServiceTopicItemProvider *)self filter];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_3;
  v10[3] = &unk_277DF4858;
  v10[4] = self;
  v6 = [(HFItemProvider *)self reloadItemsWithObjects:v4 keyAdaptor:&__block_literal_global_22 itemAdaptor:v11 filter:v5 itemMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_4;
  v9[3] = &unk_277DF4880;
  v9[4] = self;
  v7 = [v6 addSuccessBlock:v9];

  return v7;
}

id __57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 topic];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

HFUserNotificationServiceTopicItem *__57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFUserNotificationServiceTopicItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [(HFUserNotificationServiceTopicItem *)v4 initWithHome:v5 topic:v3];

  return v6;
}

void __57__HFUserNotificationServiceTopicItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  [*(a1 + 32) setTopicItems:v3];
}

- (id)items
{
  v2 = [(HFUserNotificationServiceTopicItemProvider *)self topicItems];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (id)invalidationReasons
{
  v6.receiver = self;
  v6.super_class = HFUserNotificationServiceTopicItemProvider;
  v2 = [(HFItemProvider *)&v6 invalidationReasons];
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_12);
  }

  v3 = qword_280E025B8;
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

void __65__HFUserNotificationServiceTopicItemProvider_invalidationReasons__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"service";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E025B8;
  qword_280E025B8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end