@interface HMRemoteLoginHandler(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMRemoteLoginHandler(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  [v5 appendBool:objc_msgSend(self withName:"isControllable") ifEqualTo:{@"controllable", 0}];
  [v5 appendBool:objc_msgSend(self withName:"isSessionInProgress") ifEqualTo:{@"sessionInProgress", 1}];
  detailLevel = [v4 detailLevel];

  if (detailLevel == 2)
  {
    loggedInAccount = [self loggedInAccount];
    [v5 setObject:loggedInAccount forKeyedSubscript:@"loggedInAccount"];

    anisetteDataProvider = [self anisetteDataProvider];
    [v5 setObject:anisetteDataProvider forKeyedSubscript:@"anisetteDataProvider"];
  }

  return v5;
}

@end