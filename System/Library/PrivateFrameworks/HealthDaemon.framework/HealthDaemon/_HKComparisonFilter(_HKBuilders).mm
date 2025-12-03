@interface _HKComparisonFilter(_HKBuilders)
- (id)builder_filterWithDataTypes:()_HKBuilders;
@end

@implementation _HKComparisonFilter(_HKBuilders)

- (id)builder_filterWithDataTypes:()_HKBuilders
{
  v4 = a3;
  v5 = objc_opt_class();
  keyPath = [self keyPath];
  operatorType = [self operatorType];
  value = [self value];
  v9 = [v5 filterForKeyPath:keyPath operatorType:operatorType value:value dataTypes:v4];

  return v9;
}

@end