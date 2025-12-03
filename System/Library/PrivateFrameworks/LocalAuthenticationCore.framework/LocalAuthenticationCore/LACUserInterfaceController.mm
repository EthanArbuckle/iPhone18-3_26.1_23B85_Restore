@interface LACUserInterfaceController
- (LACUserInterfaceController)initWithReplyQueue:(id)queue;
- (id)userInterface;
- (id)userInterfaceWithUUID:(id)d;
- (void)terminateAllUserInterfacesWithReason:(id)reason;
- (void)terminateUserInterfaceWithUUID:(id)d reason:(id)reason;
@end

@implementation LACUserInterfaceController

- (LACUserInterfaceController)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = LACUserInterfaceController;
  v6 = [(LACUserInterfaceController *)&v10 init];
  if (v6)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    activeUserInterfaces = v6->_activeUserInterfaces;
    v6->_activeUserInterfaces = strongToWeakObjectsMapTable;

    objc_storeStrong(&v6->_replyQueue, queue);
  }

  return v6;
}

- (id)userInterface
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(LACUserInterfaceController *)self userInterfaceWithUUID:uUID];

  return v4;
}

- (id)userInterfaceWithUUID:(id)d
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__LACUserInterfaceController_userInterfaceWithUUID___block_invoke;
  v7[3] = &unk_1E7A96608;
  v7[4] = self;
  dCopy = d;
  v5 = __52__LACUserInterfaceController_userInterfaceWithUUID___block_invoke(v7);
  [(NSMapTable *)self->_activeUserInterfaces setObject:v5 forKey:dCopy];

  return v5;
}

LACUserInterfaceRemoteUIAdapter *__52__LACUserInterfaceController_userInterfaceWithUUID___block_invoke(uint64_t a1)
{
  v2 = +[LACFlags sharedInstance];
  v3 = [v2 featureFlagLaunchAngelEnabled];

  if (v3)
  {
    v4 = [[LACAngelConnectionProvider alloc] initWithReplyQueue:*(*(a1 + 32) + 16)];
    v5 = [[LACUserInterfaceRemoteUIAdapter alloc] initWithConnectionProvider:v4 replyQueue:*(*(a1 + 32) + 16)];
  }

  else
  {
    v5 = [[LACUserInterfaceSpringBoardAdapter alloc] initWithBundleId:@"com.apple.CoreAuthUI" configurationId:@"LACUserInterfaceSceneIdentifierRemoteAlert"];
  }

  return v5;
}

- (void)terminateAllUserInterfacesWithReason:(id)reason
{
  reasonCopy = reason;
  objectEnumerator = [(NSMapTable *)self->_activeUserInterfaces objectEnumerator];
  nextObject = [objectEnumerator nextObject];

  if (nextObject)
  {
    do
    {
      [nextObject terminateWithReason:reasonCopy];
      objectEnumerator2 = [(NSMapTable *)self->_activeUserInterfaces objectEnumerator];
      nextObject2 = [objectEnumerator2 nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)terminateUserInterfaceWithUUID:(id)d reason:(id)reason
{
  activeUserInterfaces = self->_activeUserInterfaces;
  reasonCopy = reason;
  v7 = [(NSMapTable *)activeUserInterfaces objectForKey:d];
  [v7 terminateWithReason:reasonCopy];
}

@end