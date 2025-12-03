@interface MPRemoteCommandCenter(MPCCustomCommands)
- (id)clearUpcomingQueue;
- (id)debugCommand;
- (id)shareQueueCommand;
- (id)stageConditionCommand;
@end

@implementation MPRemoteCommandCenter(MPCCustomCommands)

- (id)shareQueueCommand
{
  v2 = objc_getAssociatedObject(self, "shareQueueCommand");
  if (!v2)
  {
    v2 = [self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:25020];
    objc_setAssociatedObject(self, "shareQueueCommand", v2, 1);
  }

  return v2;
}

- (id)stageConditionCommand
{
  v2 = objc_getAssociatedObject(self, "stageConditionCommand");
  if (!v2)
  {
    v2 = [self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:99991];
    objc_setAssociatedObject(self, "stageConditionCommand", v2, 1);
  }

  return v2;
}

- (id)debugCommand
{
  v2 = objc_getAssociatedObject(self, "debugCommand");
  if (!v2)
  {
    v2 = [self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:99990];
    objc_setAssociatedObject(self, "debugCommand", v2, 1);
  }

  return v2;
}

- (id)clearUpcomingQueue
{
  v2 = objc_getAssociatedObject(self, "clearUpcomingQueue");
  if (!v2)
  {
    v2 = [self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:25021];
    objc_setAssociatedObject(self, "clearUpcomingQueue", v2, 1);
  }

  return v2;
}

@end