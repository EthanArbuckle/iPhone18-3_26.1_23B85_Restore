@interface _HKCompoundFilter
- (id)_filterByApplyingTransformationToSubfilters:(void *)subfilters;
@end

@implementation _HKCompoundFilter

- (id)_filterByApplyingTransformationToSubfilters:(void *)subfilters
{
  v3 = a2;
  if (subfilters)
  {
    subfilters = [subfilters subfilters];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79___HKCompoundFilter_HealthDaemon___filterByApplyingTransformationToSubfilters___block_invoke;
    v7[3] = &unk_27861FB18;
    v8 = v3;
    v5 = [subfilters hk_map:v7];

    subfilters = [objc_alloc(MEMORY[0x277CCDD48]) initWithType:objc_msgSend(subfilters subfilters:{"compoundPredicateType"), v5}];
  }

  return subfilters;
}

@end