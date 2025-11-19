@interface CRXUNotificationHandler
- (CRXUNotificationHandler)initWithNotification:(id)a3 timeout:(double)a4 queue:(id)a5 block:(id)a6;
- (void)handleNotification:(id)a3;
- (void)handleTimer:(id)a3;
- (void)invalidate;
@end

@implementation CRXUNotificationHandler

- (CRXUNotificationHandler)initWithNotification:(id)a3 timeout:(double)a4 queue:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = CRXUNotificationHandler;
  v13 = [(CRXUNotificationHandler *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, a5);
    v15 = [v12 copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = +[CRXUNotificationCenter sharedInstance];
    [v17 addObserver:v14 selector:sel_handleNotification_ queue:v14->_queue name:v10];

    v18 = [CRXUTimer scheduledTimerWithTimeInterval:v14 weakTarget:sel_handleTimer_ selector:0 repeats:v14->_queue queue:a4];
    timer = v14->_timer;
    v14->_timer = v18;
  }

  return v14;
}

- (void)handleNotification:(id)a3
{
  v5 = MEMORY[0x24C1A0F30](self->_block, a2, a3);
  [(CRXUNotificationHandler *)self invalidate];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

- (void)handleTimer:(id)a3
{
  v4 = MEMORY[0x24C1A0F30](self->_block, a2, a3);
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