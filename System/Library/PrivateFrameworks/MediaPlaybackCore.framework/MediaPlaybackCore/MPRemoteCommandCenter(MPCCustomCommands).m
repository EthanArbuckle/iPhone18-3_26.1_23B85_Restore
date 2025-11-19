@interface MPRemoteCommandCenter(MPCCustomCommands)
- (id)clearUpcomingQueue;
- (id)debugCommand;
- (id)shareQueueCommand;
- (id)stageConditionCommand;
@end

@implementation MPRemoteCommandCenter(MPCCustomCommands)

- (id)shareQueueCommand
{
  v2 = objc_getAssociatedObject(a1, "shareQueueCommand");
  if (!v2)
  {
    v2 = [a1 _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:25020];
    objc_setAssociatedObject(a1, "shareQueueCommand", v2, 1);
  }

  return v2;
}

- (id)stageConditionCommand
{
  v2 = objc_getAssociatedObject(a1, "stageConditionCommand");
  if (!v2)
  {
    v2 = [a1 _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:99991];
    objc_setAssociatedObject(a1, "stageConditionCommand", v2, 1);
  }

  return v2;
}

- (id)debugCommand
{
  v2 = objc_getAssociatedObject(a1, "debugCommand");
  if (!v2)
  {
    v2 = [a1 _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:99990];
    objc_setAssociatedObject(a1, "debugCommand", v2, 1);
  }

  return v2;
}

- (id)clearUpcomingQueue
{
  v2 = objc_getAssociatedObject(a1, "clearUpcomingQueue");
  if (!v2)
  {
    v2 = [a1 _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:25021];
    objc_setAssociatedObject(a1, "clearUpcomingQueue", v2, 1);
  }

  return v2;
}

@end