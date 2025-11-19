@interface LACUserInterfaceController
- (LACUserInterfaceController)initWithReplyQueue:(id)a3;
- (id)userInterface;
- (id)userInterfaceWithUUID:(id)a3;
- (void)terminateAllUserInterfacesWithReason:(id)a3;
- (void)terminateUserInterfaceWithUUID:(id)a3 reason:(id)a4;
@end

@implementation LACUserInterfaceController

- (LACUserInterfaceController)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LACUserInterfaceController;
  v6 = [(LACUserInterfaceController *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    activeUserInterfaces = v6->_activeUserInterfaces;
    v6->_activeUserInterfaces = v7;

    objc_storeStrong(&v6->_replyQueue, a3);
  }

  return v6;
}

- (id)userInterface
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(LACUserInterfaceController *)self userInterfaceWithUUID:v3];

  return v4;
}

- (id)userInterfaceWithUUID:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__LACUserInterfaceController_userInterfaceWithUUID___block_invoke;
  v7[3] = &unk_1E7A96608;
  v7[4] = self;
  v4 = a3;
  v5 = __52__LACUserInterfaceController_userInterfaceWithUUID___block_invoke(v7);
  [(NSMapTable *)self->_activeUserInterfaces setObject:v5 forKey:v4];

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

- (void)terminateAllUserInterfacesWithReason:(id)a3
{
  v8 = a3;
  v4 = [(NSMapTable *)self->_activeUserInterfaces objectEnumerator];
  v5 = [v4 nextObject];

  if (v5)
  {
    do
    {
      [v5 terminateWithReason:v8];
      v6 = [(NSMapTable *)self->_activeUserInterfaces objectEnumerator];
      v7 = [v6 nextObject];

      v5 = v7;
    }

    while (v7);
  }
}

- (void)terminateUserInterfaceWithUUID:(id)a3 reason:(id)a4
{
  activeUserInterfaces = self->_activeUserInterfaces;
  v6 = a4;
  v7 = [(NSMapTable *)activeUserInterfaces objectForKey:a3];
  [v7 terminateWithReason:v6];
}

@end