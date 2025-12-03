@interface HMEvent(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMEvent(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByReplacingOccurrencesOfString:@"HM" withString:&stru_2824B1A78];
  [v5 setObject:v8 forKeyedSubscript:@"type"];

  return v5;
}

@end