@interface HMRemoteLoginHandler(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMRemoteLoginHandler(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  [v5 appendBool:objc_msgSend(a1 withName:"isControllable") ifEqualTo:{@"controllable", 0}];
  [v5 appendBool:objc_msgSend(a1 withName:"isSessionInProgress") ifEqualTo:{@"sessionInProgress", 1}];
  v6 = [v4 detailLevel];

  if (v6 == 2)
  {
    v7 = [a1 loggedInAccount];
    [v5 setObject:v7 forKeyedSubscript:@"loggedInAccount"];

    v8 = [a1 anisetteDataProvider];
    [v5 setObject:v8 forKeyedSubscript:@"anisetteDataProvider"];
  }

  return v5;
}

@end