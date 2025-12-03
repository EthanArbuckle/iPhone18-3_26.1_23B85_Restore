@interface HMSoftwareUpdateV2(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateV2(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  updated = HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2([self status]);
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromHMSoftwareUpdateStatusV2([self status]);
  v9 = NSStringFromHMSoftwareUpdateState(updated);
  v10 = [v7 stringWithFormat:@"%@ -> %@", v8, v9];
  [v5 setObject:v10 forKeyedSubscript:@"status"];

  error = [self error];
  [v5 appendObject:error withName:@"error" options:1];

  documentationMetadata = [self documentationMetadata];
  [v5 appendBool:documentationMetadata != 0 withName:@"documentationMetadata"];

  version = [self version];
  [v5 setObject:version forKeyedSubscript:@"version"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "downloadSize")}];
  [v5 setObject:v14 forKeyedSubscript:@"downloadSize"];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    documentationMetadata2 = [self documentationMetadata];
    [v5 setObject:documentationMetadata2 forKeyedSubscript:@"documentationMetadata"];

    humanReadableUpdateName = [self humanReadableUpdateName];
    [v5 setObject:humanReadableUpdateName forKeyedSubscript:@"humanReadableUpdateName"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "rampFeatureEnabledOnServer")}];
    [v5 setObject:v18 forKeyedSubscript:@"rampFeatureEnabledOnServer"];
  }

  return v5;
}

@end