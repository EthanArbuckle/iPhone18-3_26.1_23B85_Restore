@interface HFCategoryAccessoryType
+ (id)na_identity;
- (HFCategoryAccessoryType)initWithCategoryType:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)localizedCategory;
@end

@implementation HFCategoryAccessoryType

- (HFCategoryAccessoryType)initWithCategoryType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFCategoryAccessoryType;
  v6 = [(HFAccessoryType *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)na_identity
{
  if (qword_280E02580 != -1)
  {
    dispatch_once(&qword_280E02580, &__block_literal_global_345);
  }

  v3 = qword_280E02588;

  return v3;
}

void __38__HFCategoryAccessoryType_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_350];
  v2 = [v0 build];

  v3 = qword_280E02588;
  qword_280E02588 = v2;
}

- (id)localizedCategory
{
  v3 = [(HFCategoryAccessoryType *)self categoryType];
  v4 = [v3 isEqualToString:@"9D302CDA-1467-4E19-ABC9-9ED36BE34508"];

  if (v4 & 1) != 0 || (-[HFCategoryAccessoryType categoryType](self, "categoryType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"3047A1A5-8BFC-4112-9888-21314F438FF3"], v5, (v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HFCategoryAccessoryType *)self categoryType];
    v9 = localizationKeyForAccessoryCategoryType();

    v10 = [MEMORY[0x277CD1B30] sharedManager];
    v7 = [v10 getLocalizedOrCustomString:v9];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CD1650];
  v5 = [(HFCategoryAccessoryType *)self categoryType];
  v6 = [v4 hf_getUserFriendlyDescriptionKey:v5];
  v7 = [(HFCategoryAccessoryType *)self categoryType];
  v8 = [v3 stringWithFormat:@"categoryType: %@ (%@)", v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = MEMORY[0x277CD1650];
  v5 = [(HFCategoryAccessoryType *)self categoryType];
  v6 = [v4 hf_getUserFriendlyDescriptionKey:v5];

  v7 = [(HFCategoryAccessoryType *)self categoryType];
  v8 = [v6 stringByAppendingFormat:@" (%@)", v7];
  [v3 appendString:v8 withName:@"categoryType"];

  v9 = [v3 build];

  return v9;
}

@end