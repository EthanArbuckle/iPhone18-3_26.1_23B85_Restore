@interface HMSoftwareUpdateV2(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateV2(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  updated = HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2([a1 status]);
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromHMSoftwareUpdateStatusV2([a1 status]);
  v9 = NSStringFromHMSoftwareUpdateState(updated);
  v10 = [v7 stringWithFormat:@"%@ -> %@", v8, v9];
  [v5 setObject:v10 forKeyedSubscript:@"status"];

  v11 = [a1 error];
  [v5 appendObject:v11 withName:@"error" options:1];

  v12 = [a1 documentationMetadata];
  [v5 appendBool:v12 != 0 withName:@"documentationMetadata"];

  v13 = [a1 version];
  [v5 setObject:v13 forKeyedSubscript:@"version"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "downloadSize")}];
  [v5 setObject:v14 forKeyedSubscript:@"downloadSize"];

  v15 = [v4 detailLevel];
  if (v15 == 2)
  {
    v16 = [a1 documentationMetadata];
    [v5 setObject:v16 forKeyedSubscript:@"documentationMetadata"];

    v17 = [a1 humanReadableUpdateName];
    [v5 setObject:v17 forKeyedSubscript:@"humanReadableUpdateName"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "rampFeatureEnabledOnServer")}];
    [v5 setObject:v18 forKeyedSubscript:@"rampFeatureEnabledOnServer"];
  }

  return v5;
}

@end