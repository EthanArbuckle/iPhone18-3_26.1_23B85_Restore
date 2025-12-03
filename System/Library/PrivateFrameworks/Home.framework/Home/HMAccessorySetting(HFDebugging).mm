@interface HMAccessorySetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessorySetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  localizedTitle = [self localizedTitle];
  [v5 setObject:localizedTitle forKeyedSubscript:@"title"];

  keyPath = [self keyPath];
  [v5 appendObject:keyPath withName:@"keyPath" options:2];

  value = [self value];
  [v5 setObject:value forKeyedSubscript:@"value"];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByReplacingOccurrencesOfString:@"HMAccessory" withString:&stru_2824B1A78];
    [v5 setObject:v12 forKeyedSubscript:@"type"];

    [v5 appendBool:objc_msgSend(self withName:"isReflected") ifEqualTo:{@"reflected", 1}];
    [v5 appendBool:objc_msgSend(self withName:"isWritable") ifEqualTo:{@"writable", 0}];
  }

  return v5;
}

@end