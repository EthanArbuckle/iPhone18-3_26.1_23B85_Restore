@interface IMAutomaticEventNotificationQueue
- (void)_didAddNotification:(id)notification;
- (void)_didCancelNotifications;
- (void)_didProcessQueue;
- (void)_invokeEvent:(id)event;
@end

@implementation IMAutomaticEventNotificationQueue

- (void)_invokeEvent:(id)event
{
  if (event)
  {
    eventCopy = event;
    eventNotificationList = [(IMEventNotificationQueue *)self eventNotificationList];
    [eventNotificationList removeLinkedListNode:eventCopy];

    [eventCopy invoke];
    [eventCopy cancel];
    [eventCopy cache];
  }
}

- (void)_didProcessQueue
{
  eventNotificationList = [(IMEventNotificationQueue *)self eventNotificationList];
  -[IMEventNotificationQueue _setBusy:](self, "_setBusy:", [eventNotificationList count] != 0);
}

- (void)_didAddNotification:(id)notification
{
  [(IMEventNotificationQueue *)self _setBusy:1];

  [(IMEventNotificationQueue *)self _scheduleIfNeeded:0];
}

- (void)_didCancelNotifications
{
  eventNotificationList = [(IMEventNotificationQueue *)self eventNotificationList];
  -[IMEventNotificationQueue _setBusy:](self, "_setBusy:", [eventNotificationList count] != 0);
}

@end