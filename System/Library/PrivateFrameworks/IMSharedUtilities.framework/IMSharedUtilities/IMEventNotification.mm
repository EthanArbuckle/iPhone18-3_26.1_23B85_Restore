@interface IMEventNotification
+ (id)eventNotification:(id)notification;
+ (id)eventNotification:(id)notification eventNotificationBlock:(id)block;
+ (id)eventNotification:(id)notification sender:(id)sender eventNotificationBlock:(id)block;
- (BOOL)invoke;
- (BOOL)wasCancelled;
- (id)sender;
- (id)target;
- (void)cancel;
@end

@implementation IMEventNotification

+ (id)eventNotification:(id)notification eventNotificationBlock:(id)block
{
  blockCopy = block;
  notificationCopy = notification;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setTarget:notificationCopy];

  [v7 setEventNotificationBlock:blockCopy];

  return v7;
}

+ (id)eventNotification:(id)notification sender:(id)sender eventNotificationBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  notificationCopy = notification;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setTarget:notificationCopy];

  [v10 setSender:senderCopy];
  [v10 setEventNotificationWithSenderBlock:blockCopy];

  return v10;
}

+ (id)eventNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:notificationCopy];

  [v4 setEventNotificationBlock:0];

  return v4;
}

- (BOOL)invoke
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  target = [(IMEventNotification *)selfCopy target];
  sender = [(IMEventNotification *)selfCopy sender];
  eventNotificationBlock = [(IMEventNotification *)selfCopy eventNotificationBlock];
  eventNotificationWithSenderBlock = [(IMEventNotification *)selfCopy eventNotificationWithSenderBlock];
  v7 = eventNotificationWithSenderBlock;
  if (target && eventNotificationBlock)
  {
    (eventNotificationBlock)[2](eventNotificationBlock, target);
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = 0;
  if (target && sender && eventNotificationWithSenderBlock)
  {
    (*(eventNotificationWithSenderBlock + 16))(eventNotificationWithSenderBlock, target, sender);
    goto LABEL_8;
  }

LABEL_9:

  objc_sync_exit(selfCopy);
  return v8;
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  objc_storeWeak(&obj->_target, 0);
  eventNotificationBlock = obj->_eventNotificationBlock;
  obj->_eventNotificationBlock = 0;

  eventNotificationWithSenderBlock = obj->_eventNotificationWithSenderBlock;
  obj->_eventNotificationWithSenderBlock = 0;

  objc_sync_exit(obj);
}

- (BOOL)wasCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);
  v4 = WeakRetained == 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end