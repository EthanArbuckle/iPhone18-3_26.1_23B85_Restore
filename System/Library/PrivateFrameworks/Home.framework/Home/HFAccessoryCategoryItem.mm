@interface HFAccessoryCategoryItem
- (HFAccessoryCategoryItem)initWithCategoryType:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFAccessoryCategoryItem

- (HFAccessoryCategoryItem)initWithCategoryType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFAccessoryCategoryItem;
  v6 = [(HFAccessoryCategoryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryType, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CD1650];
  v6 = [(HFAccessoryCategoryItem *)self categoryType];
  v7 = [v5 hf_userFriendlyLocalizedCapitalizedPluralDescription:v6];

  [v4 setObject:v7 forKeyedSubscript:@"title"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.AccessoryCategory.%@", v7];
  [v4 setObject:v8 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  v9 = [(HFAccessoryCategoryItem *)self categoryType];
  v10 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:v9];
  [v4 setObject:v10 forKeyedSubscript:@"icon"];

  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v4 setObject:v13 forKeyedSubscript:@"dependentHomeKitClasses"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFAccessoryCategoryItem allocWithZone:a3];
  v5 = [(HFAccessoryCategoryItem *)self categoryType];
  v6 = [(HFAccessoryCategoryItem *)v4 initWithCategoryType:v5];

  return v6;
}

@end