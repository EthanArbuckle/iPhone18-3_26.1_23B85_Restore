@interface HMDataSetting(HFDebugging)
- (__CFString)hf_debugValueForData:()HFDebugging;
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMDataSetting(HFDebugging)

- (__CFString)hf_debugValueForData:()HFDebugging
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 value];
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:a3 error:0];
  v6 = [v5 description];
  v7 = v6;
  v8 = &stru_2824B1A78;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v7.receiver = a1;
  v7.super_class = &off_2825921D0;
  v2 = objc_msgSendSuper2(&v7, sel_hf_stateDumpBuilderWithContext_);
  v6 = 0;
  v3 = [a1 hf_debugValueForData:&v6];
  [v2 appendObject:v3 withName:@"decoded property list object"];

  v4 = NSStringFromNSPropertyListFormat(v6);
  [v2 appendObject:v4 withName:@"decoded property list format"];

  return v2;
}

@end