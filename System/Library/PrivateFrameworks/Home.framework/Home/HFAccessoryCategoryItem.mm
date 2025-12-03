@interface HFAccessoryCategoryItem
- (HFAccessoryCategoryItem)initWithCategoryType:(id)type;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFAccessoryCategoryItem

- (HFAccessoryCategoryItem)initWithCategoryType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HFAccessoryCategoryItem;
  v6 = [(HFAccessoryCategoryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryType, type);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CD1650];
  categoryType = [(HFAccessoryCategoryItem *)self categoryType];
  v7 = [v5 hf_userFriendlyLocalizedCapitalizedPluralDescription:categoryType];

  [dictionary setObject:v7 forKeyedSubscript:@"title"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.AccessoryCategory.%@", v7];
  [dictionary setObject:v8 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  categoryType2 = [(HFAccessoryCategoryItem *)self categoryType];
  v10 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:categoryType2];
  [dictionary setObject:v10 forKeyedSubscript:@"icon"];

  [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [dictionary setObject:v13 forKeyedSubscript:@"dependentHomeKitClasses"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFAccessoryCategoryItem allocWithZone:zone];
  categoryType = [(HFAccessoryCategoryItem *)self categoryType];
  v6 = [(HFAccessoryCategoryItem *)v4 initWithCategoryType:categoryType];

  return v6;
}

@end