@interface CRXUNotificationHandler
- (CRXUNotificationHandler)initWithNotification:(id)notification timeout:(double)timeout queue:(id)queue block:(id)block;
- (void)handleNotification:(id)notification;
- (void)handleTimer:(id)timer;
- (void)invalidate;
@end

@implementation CRXUNotificationHandler

- (CRXUNotificationHandler)initWithNotification:(id)notification timeout:(double)timeout queue:(id)queue block:(id)block
{
  notificationCopy = notification;
  queueCopy = queue;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = CRXUNotificationHandler;
  v13 = [(CRXUNotificationHandler *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    v15 = [blockCopy copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = +[CRXUNotificationCenter sharedInstance];
    [v17 addObserver:v14 selector:sel_handleNotification_ queue:v14->_queue name:notificationCopy];

    v18 = [CRXUTimer scheduledTimerWithTimeInterval:v14 weakTarget:sel_handleTimer_ selector:0 repeats:v14->_queue queue:timeout];
    timer = v14->_timer;
    v14->_timer = v18;
  }

  return v14;
}

- (void)handleNotification:(id)notification
{
  v5 = MEMORY[0x24C1A0F30](self->_block, a2, notification);
  [(CRXUNotificationHandler *)self invalidate];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

- (void)handleTimer:(id)timer
{
  v4 = MEMORY[0x24C1A0F30](self->_block, a2, timer);
  [(CRXUNotificationHandler *)self invalidate];
  v4[2](v4, 0);
}

- (void)invalidate
{
  [(CRXUTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v4 = +[CRXUNotificationCenter sharedInstance];
  [v4 removeObserver:self->_notificationToken];

  block = self->_block;
  self->_block = 0;
}

@end