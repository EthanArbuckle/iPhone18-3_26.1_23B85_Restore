@interface HMSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 localizedTitle];
  [v5 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [a1 keyPath];
  [v5 appendObject:v7 withName:@"keyPath" options:2];

  v8 = [a1 value];
  [v5 setObject:v8 forKeyedSubscript:@"value"];

  v9 = [v4 detailLevel];
  if (v9 == 2)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByReplacingOccurrencesOfString:@"HMAccessory" withString:&stru_2824B1A78];
    [v5 setObject:v12 forKeyedSubscript:@"type"];

    [v5 appendBool:objc_msgSend(a1 withName:"isWritable") ifEqualTo:{@"writable", 0}];
  }

  return v5;
}

@end