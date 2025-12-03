@interface NSMutableDictionary(HMMTRRemoteMessageDictionary)
- (void)setCHIPEncodedParams:()HMMTRRemoteMessageDictionary;
- (void)setCHIPEndpointId:()HMMTRRemoteMessageDictionary clusterId:attributeId:;
- (void)setCHIPEndpointId:()HMMTRRemoteMessageDictionary clusterId:commandId:;
- (void)setCHIPReadParams:()HMMTRRemoteMessageDictionary;
- (void)setCHIPRemoteResults:()HMMTRRemoteMessageDictionary;
- (void)setCHIPSubscribeParams:()HMMTRRemoteMessageDictionary;
@end

@implementation NSMutableDictionary(HMMTRRemoteMessageDictionary)

- (void)setCHIPRemoteResults:()HMMTRRemoteMessageDictionary
{
  v4 = encodeValues(a3);
  [self setObject:v4 forKey:@"results"];
}

- (void)setCHIPEncodedParams:()HMMTRRemoteMessageDictionary
{
  if (a3)
  {
    return [self setObject:a3 forKeyedSubscript:@"params"];
  }

  return self;
}

- (void)setCHIPSubscribeParams:()HMMTRRemoteMessageDictionary
{
  v2 = [MEMORY[0x277CD5318] encodeXPCSubscribeParams:?];
  [self setObject:v2 forKeyedSubscript:@"params"];
}

- (void)setCHIPReadParams:()HMMTRRemoteMessageDictionary
{
  v2 = [MEMORY[0x277CD5318] encodeXPCReadParams:?];
  [self setObject:v2 forKeyedSubscript:@"params"];
}

- (void)setCHIPEndpointId:()HMMTRRemoteMessageDictionary clusterId:commandId:
{
  v9 = a5;
  v8 = a4;
  [self setObject:a3 forKeyedSubscript:@"endpointId"];
  [self setObject:v8 forKeyedSubscript:@"clusterId"];

  [self setObject:v9 forKeyedSubscript:@"commandId"];
}

- (void)setCHIPEndpointId:()HMMTRRemoteMessageDictionary clusterId:attributeId:
{
  v9 = a5;
  v8 = a4;
  [self setObject:a3 forKeyedSubscript:@"endpointId"];
  [self setObject:v8 forKeyedSubscript:@"clusterId"];

  [self setObject:v9 forKeyedSubscript:@"attributeId"];
}

@end