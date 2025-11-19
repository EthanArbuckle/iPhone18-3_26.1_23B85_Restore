@interface HMAccessoryCategory(HFAdditions)
+ (id)hf_compatibleServiceTypesForCategoryType:()HFAdditions;
+ (id)hf_standardAccessoryCategoryTypes;
- (id)hf_compatibleServiceTypes;
- (uint64_t)hf_isMediaAccessory;
@end

@implementation HMAccessoryCategory(HFAdditions)

- (uint64_t)hf_isMediaAccessory
{
  if (qword_280E037D0 != -1)
  {
    dispatch_once(&qword_280E037D0, &__block_literal_global_158);
  }

  v2 = _MergedGlobals_287;
  v3 = [a1 categoryType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)hf_compatibleServiceTypes
{
  v1 = MEMORY[0x277CD1680];
  v2 = [a1 categoryType];
  v3 = [v1 hf_compatibleServiceTypesForCategoryType:v2];

  return v3;
}

+ (id)hf_compatibleServiceTypesForCategoryType:()HFAdditions
{
  v3 = a3;
  if (![v3 length])
  {
    v4 = *MEMORY[0x277CCE8C8];

    v3 = v4;
  }

  if (qword_280E037E0 != -1)
  {
    dispatch_once(&qword_280E037E0, &__block_literal_global_3_22);
  }

  v5 = [qword_280E037D8 objectForKeyedSubscript:v3];

  return v5;
}

+ (id)hf_standardAccessoryCategoryTypes
{
  if (qword_280E037F0 != -1)
  {
    dispatch_once(&qword_280E037F0, &__block_literal_global_7_6);
  }

  v1 = qword_280E037E8;

  return v1;
}

@end