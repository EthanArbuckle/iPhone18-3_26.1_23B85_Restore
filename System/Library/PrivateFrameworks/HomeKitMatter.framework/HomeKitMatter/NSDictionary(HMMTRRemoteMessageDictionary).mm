@interface NSDictionary(HMMTRRemoteMessageDictionary)
- (id)CHIPReadParams;
- (id)CHIPRemoteResults;
- (id)CHIPSubscribeParams;
@end

@implementation NSDictionary(HMMTRRemoteMessageDictionary)

- (id)CHIPRemoteResults
{
  v2 = [self objectForKeyedSubscript:@"results"];

  if (v2)
  {
    v3 = [self objectForKeyedSubscript:@"results"];
    v4 = decodeValues(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)CHIPSubscribeParams
{
  v1 = MEMORY[0x277CD5318];
  v2 = [self objectForKeyedSubscript:@"params"];
  v3 = [v1 decodeXPCSubscribeParams:v2];

  return v3;
}

- (id)CHIPReadParams
{
  v1 = MEMORY[0x277CD5318];
  v2 = [self objectForKeyedSubscript:@"params"];
  v3 = [v1 decodeXPCReadParams:v2];

  return v3;
}

@end