@interface DAAction(SyntacticSugarAdditions)
- (id)asClientID;
- (id)asInstanceID;
- (id)asServerID;
- (void)appendApplicationDataForTask:()SyntacticSugarAdditions toWBXMLData:;
@end

@implementation DAAction(SyntacticSugarAdditions)

- (id)asServerID
{
  serverId = [self serverId];

  if (serverId)
  {
    serverId2 = [self serverId];
  }

  else
  {
    changedItem = [self changedItem];
    serverId2 = [changedItem serverID];
  }

  return serverId2;
}

- (id)asClientID
{
  if ([self itemChangeType])
  {
    clientID = 0;
  }

  else
  {
    changedItem = [self changedItem];
    clientID = [changedItem clientID];
  }

  return clientID;
}

- (id)asInstanceID
{
  instanceId = [self instanceId];

  if (instanceId)
  {
    instanceId2 = [self instanceId];
  }

  else
  {
    changedItem = [self changedItem];
    instanceId2 = [changedItem instanceID];
  }

  return instanceId2;
}

- (void)appendApplicationDataForTask:()SyntacticSugarAdditions toWBXMLData:
{
  v8 = a3;
  v6 = a4;
  if ([self itemChangeType] <= 1)
  {
    changedItem = [self changedItem];
    [changedItem appendActiveSyncDataForTask:v8 toWBXMLData:v6];
  }
}

@end