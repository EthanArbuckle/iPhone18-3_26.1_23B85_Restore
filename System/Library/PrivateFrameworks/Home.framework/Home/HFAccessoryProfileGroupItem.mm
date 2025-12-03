@interface HFAccessoryProfileGroupItem
- (HFAccessoryProfileGroupItem)init;
- (HFAccessoryProfileGroupItem)initWithProfiles:(id)profiles groupIdentifier:(id)identifier valueSource:(id)source;
- (NSSet)services;
- (id)_buildProfileItems;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFAccessoryProfileGroupItem

- (HFAccessoryProfileGroupItem)initWithProfiles:(id)profiles groupIdentifier:(id)identifier valueSource:(id)source
{
  profilesCopy = profiles;
  identifierCopy = identifier;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HFAccessoryProfileGroupItem;
  v12 = [(HFItemGroupItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profiles, profiles);
    objc_storeStrong(&v13->_groupIdentifier, identifier);
    objc_storeStrong(&v13->_valueSource, source);
    _buildProfileItems = [(HFAccessoryProfileGroupItem *)v13 _buildProfileItems];
    [(HFItemGroupItem *)v13 setItems:_buildProfileItems];
  }

  return v13;
}

- (HFAccessoryProfileGroupItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProfiles_groupIdentifier_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryProfileGroupItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryProfileGroupItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFAccessoryProfileGroupItem *)self valueSource];
  v5 = [(HFAccessoryProfileGroupItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)accessories
{
  profiles = [(HFAccessoryProfileGroupItem *)self profiles];
  v3 = [profiles na_map:&__block_literal_global_133];

  return v3;
}

- (NSSet)services
{
  profiles = [(HFAccessoryProfileGroupItem *)self profiles];
  v3 = [profiles na_flatMap:&__block_literal_global_9_5];

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
  profiles = [(HFAccessoryProfileGroupItem *)self profiles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HFAccessoryProfileGroupItem__buildProfileItems__block_invoke;
  v6[3] = &unk_277DFCFF0;
  v6[4] = self;
  v4 = [profiles na_map:v6];

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

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  profiles = [(HFAccessoryProfileGroupItem *)self profiles];
  groupIdentifier = [(HFAccessoryProfileGroupItem *)self groupIdentifier];
  v8 = [v5 initWithProfiles:profiles groupIdentifier:groupIdentifier valueSource:sourceCopy];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

@end