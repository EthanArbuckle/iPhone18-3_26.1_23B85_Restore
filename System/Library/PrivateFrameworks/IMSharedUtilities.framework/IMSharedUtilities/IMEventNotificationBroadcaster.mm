@interface IMEventNotificationBroadcaster
- (void)broadcastEventToListeners:(id)a3;
@end

@implementation IMEventNotificationBroadcaster

- (void)broadcastEventToListeners:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86652DC;
  v7[3] = &unk_1E78280F0;
  v6 = v4;
  v8 = v6;
  [(IMEventNotificationQueue *)v5 enumerateObjectsUsingBlock:v7];
  [(IMEventNotificationQueue *)v5 _scheduleIfNeeded:1];

  objc_sync_exit(v5);
}

@end