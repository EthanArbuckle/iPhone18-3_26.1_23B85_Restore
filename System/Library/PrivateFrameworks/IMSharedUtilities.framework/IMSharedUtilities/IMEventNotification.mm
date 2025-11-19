@interface IMEventNotification
+ (id)eventNotification:(id)a3;
+ (id)eventNotification:(id)a3 eventNotificationBlock:(id)a4;
+ (id)eventNotification:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5;
- (BOOL)invoke;
- (BOOL)wasCancelled;
- (id)sender;
- (id)target;
- (void)cancel;
@end

@implementation IMEventNotification

+ (id)eventNotification:(id)a3 eventNotificationBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setTarget:v6];

  [v7 setEventNotificationBlock:v5];

  return v7;
}

+ (id)eventNotification:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setTarget:v9];

  [v10 setSender:v8];
  [v10 setEventNotificationWithSenderBlock:v7];

  return v10;
}

+ (id)eventNotification:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:v3];

  [v4 setEventNotificationBlock:0];

  return v4;
}

- (BOOL)invoke
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(IMEventNotification *)v2 target];
  v4 = [(IMEventNotification *)v2 sender];
  v5 = [(IMEventNotification *)v2 eventNotificationBlock];
  v6 = [(IMEventNotification *)v2 eventNotificationWithSenderBlock];
  v7 = v6;
  if (v3 && v5)
  {
    (v5)[2](v5, v3);
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = 0;
  if (v3 && v4 && v6)
  {
    (*(v6 + 16))(v6, v3, v4);
    goto LABEL_8;
  }

LABEL_9:

  objc_sync_exit(v2);
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
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_target);
  v4 = WeakRetained == 0;

  objc_sync_exit(v2);
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