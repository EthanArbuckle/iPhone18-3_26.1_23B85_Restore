@interface _HKCompoundFilter(_HKBuilders)
- (id)builder_filterWithDataTypes:()_HKBuilders;
@end

@implementation _HKCompoundFilter(_HKBuilders)

- (id)builder_filterWithDataTypes:()_HKBuilders
{
  v4 = a3;
  subfilters = [self subfilters];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62___HKCompoundFilter__HKBuilders__builder_filterWithDataTypes___block_invoke;
  v10[3] = &unk_27862B138;
  v11 = v4;
  v6 = v4;
  v7 = [subfilters hk_map:v10];

  v8 = [objc_alloc(MEMORY[0x277CCDD48]) initWithType:objc_msgSend(self subfilters:{"compoundPredicateType"), v7}];

  return v8;
}

@end