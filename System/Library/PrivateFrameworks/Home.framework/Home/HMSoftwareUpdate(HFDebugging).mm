@interface HMSoftwareUpdate(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdate(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = NSStringFromHMSoftwareUpdateState([self state]);
  [v5 setObject:v6 forKeyedSubscript:@"state"];

  version = [self version];
  [v5 setObject:version forKeyedSubscript:@"version"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "downloadSize")}];
  [v5 setObject:v8 forKeyedSubscript:@"downloadSize"];

  if ([v4 detailLevel])
  {
    documentation = [self documentation];
    [v5 setObject:documentation forKeyedSubscript:@"documentation"];
  }

  else
  {
    [v5 appendBool:objc_msgSend(self withName:{"isDocumentationAvailable"), @"documentationAvailable"}];
  }

  releaseDate = [self releaseDate];
  [v5 appendObject:releaseDate withName:@"releaseDate" options:1];

  if ([v4 detailLevel] == 2)
  {
    [self updateType];
    v11 = HMSoftwareUpdateUpdateTypeToString();
    [v5 setObject:v11 forKeyedSubscript:@"updateType"];

    v12 = MEMORY[0x277CCACA8];
    delegate = [self delegate];
    v14 = [v12 stringWithFormat:@"%p", delegate];
    [v5 setObject:v14 forKeyedSubscript:@"delegate"];
  }

  return v5;
}

@end