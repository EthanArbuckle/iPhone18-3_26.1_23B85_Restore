@interface IMAutomaticEventNotificationQueue
- (void)_didAddNotification:(id)a3;
- (void)_didCancelNotifications;
- (void)_didProcessQueue;
- (void)_invokeEvent:(id)a3;
@end

@implementation IMAutomaticEventNotificationQueue

- (void)_invokeEvent:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = [(IMEventNotificationQueue *)self eventNotificationList];
    [v4 removeLinkedListNode:v5];

    [v5 invoke];
    [v5 cancel];
    [v5 cache];
  }
}

- (void)_didProcessQueue
{
  v3 = [(IMEventNotificationQueue *)self eventNotificationList];
  -[IMEventNotificationQueue _setBusy:](self, "_setBusy:", [v3 count] != 0);
}

- (void)_didAddNotification:(id)a3
{
  [(IMEventNotificationQueue *)self _setBusy:1];

  [(IMEventNotificationQueue *)self _scheduleIfNeeded:0];
}

- (void)_didCancelNotifications
{
  v3 = [(IMEventNotificationQueue *)self eventNotificationList];
  -[IMEventNotificationQueue _setBusy:](self, "_setBusy:", [v3 count] != 0);
}

@end