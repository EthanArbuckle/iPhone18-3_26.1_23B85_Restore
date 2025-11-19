@interface _HKCompoundFilter
- (id)_filterByApplyingTransformationToSubfilters:(void *)a1;
@end

@implementation _HKCompoundFilter

- (id)_filterByApplyingTransformationToSubfilters:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 subfilters];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79___HKCompoundFilter_HealthDaemon___filterByApplyingTransformationToSubfilters___block_invoke;
    v7[3] = &unk_27861FB18;
    v8 = v3;
    v5 = [v4 hk_map:v7];

    a1 = [objc_alloc(MEMORY[0x277CCDD48]) initWithType:objc_msgSend(a1 subfilters:{"compoundPredicateType"), v5}];
  }

  return a1;
}

@end