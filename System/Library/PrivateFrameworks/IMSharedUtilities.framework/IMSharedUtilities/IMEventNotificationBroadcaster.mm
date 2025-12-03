@interface IMEventNotificationBroadcaster
- (void)broadcastEventToListeners:(id)listeners;
@end

@implementation IMEventNotificationBroadcaster

- (void)broadcastEventToListeners:(id)listeners
{
  listenersCopy = listeners;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86652DC;
  v7[3] = &unk_1E78280F0;
  v6 = listenersCopy;
  v8 = v6;
  [(IMEventNotificationQueue *)selfCopy enumerateObjectsUsingBlock:v7];
  [(IMEventNotificationQueue *)selfCopy _scheduleIfNeeded:1];

  objc_sync_exit(selfCopy);
}

@end