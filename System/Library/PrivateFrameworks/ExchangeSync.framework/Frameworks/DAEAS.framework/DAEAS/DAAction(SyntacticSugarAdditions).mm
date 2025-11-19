@interface DAAction(SyntacticSugarAdditions)
- (id)asClientID;
- (id)asInstanceID;
- (id)asServerID;
- (void)appendApplicationDataForTask:()SyntacticSugarAdditions toWBXMLData:;
@end

@implementation DAAction(SyntacticSugarAdditions)

- (id)asServerID
{
  v2 = [a1 serverId];

  if (v2)
  {
    v3 = [a1 serverId];
  }

  else
  {
    v4 = [a1 changedItem];
    v3 = [v4 serverID];
  }

  return v3;
}

- (id)asClientID
{
  if ([a1 itemChangeType])
  {
    v2 = 0;
  }

  else
  {
    v3 = [a1 changedItem];
    v2 = [v3 clientID];
  }

  return v2;
}

- (id)asInstanceID
{
  v2 = [a1 instanceId];

  if (v2)
  {
    v3 = [a1 instanceId];
  }

  else
  {
    v4 = [a1 changedItem];
    v3 = [v4 instanceID];
  }

  return v3;
}

- (void)appendApplicationDataForTask:()SyntacticSugarAdditions toWBXMLData:
{
  v8 = a3;
  v6 = a4;
  if ([a1 itemChangeType] <= 1)
  {
    v7 = [a1 changedItem];
    [v7 appendActiveSyncDataForTask:v8 toWBXMLData:v6];
  }
}

@end