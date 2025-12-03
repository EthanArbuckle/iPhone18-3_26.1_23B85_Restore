@interface HMAccessoryNumberSetting(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessoryNumberSetting(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v10.receiver = self;
  v10.super_class = &off_282591E58;
  v5 = objc_msgSendSuper2(&v10, sel_hf_stateDumpBuilderWithContext_, v4);
  if ([v4 detailLevel] == 2)
  {
    minimumValue = [self minimumValue];
    [v5 setObject:minimumValue forKeyedSubscript:@"min"];

    maximumValue = [self maximumValue];
    [v5 setObject:maximumValue forKeyedSubscript:@"max"];

    stepValue = [self stepValue];
    [v5 setObject:stepValue forKeyedSubscript:@"step"];
  }

  return v5;
}

@end