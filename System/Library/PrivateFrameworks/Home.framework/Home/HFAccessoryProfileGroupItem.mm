@interface HFAccessoryProfileGroupItem
- (HFAccessoryProfileGroupItem)init;
- (HFAccessoryProfileGroupItem)initWithProfiles:(id)a3 groupIdentifier:(id)a4 valueSource:(id)a5;
- (NSSet)services;
- (id)_buildProfileItems;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFAccessoryProfileGroupItem

- (HFAccessoryProfileGroupItem)initWithProfiles:(id)a3 groupIdentifier:(id)a4 valueSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HFAccessoryProfileGroupItem;
  v12 = [(HFItemGroupItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profiles, a3);
    objc_storeStrong(&v13->_groupIdentifier, a4);
    objc_storeStrong(&v13->_valueSource, a5);
    v14 = [(HFAccessoryProfileGroupItem *)v13 _buildProfileItems];
    [(HFItemGroupItem *)v13 setItems:v14];
  }

  return v13;
}

- (HFAccessoryProfileGroupItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProfiles_groupIdentifier_valueSource_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessoryProfileGroupItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryProfileGroupItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFAccessoryProfileGroupItem *)self valueSource];
  v5 = [(HFAccessoryProfileGroupItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)accessories
{
  v2 = [(HFAccessoryProfileGroupItem *)self profiles];
  v3 = [v2 na_map:&__block_literal_global_133];

  return v3;
}

- (NSSet)services
{
  v2 = [(HFAccessoryProfileGroupItem *)self profiles];
  v3 = [v2 na_flatMap:&__block_literal_global_9_5];

  return v3;
}

id __39__HFAccessoryProfileGroupItem_services__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_buildProfileItems
{
  v3 = [(HFAccessoryProfileGroupItem *)self profiles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HFAccessoryProfileGroupItem__buildProfileItems__block_invoke;
  v6[3] = &unk_277DFCFF0;
  v6[4] = self;
  v4 = [v3 na_map:v6];

  return v4;
}

HFAccessoryProfileItem *__49__HFAccessoryProfileGroupItem__buildProfileItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFAccessoryProfileItem alloc];
  v5 = [*(a1 + 32) valueSource];
  v6 = [(HFAccessoryProfileItem *)v4 initWithProfile:v3 valueSource:v5];

  return v6;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFAccessoryProfileGroupItem *)self profiles];
  v7 = [(HFAccessoryProfileGroupItem *)self groupIdentifier];
  v8 = [v5 initWithProfiles:v6 groupIdentifier:v7 valueSource:v4];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

@end