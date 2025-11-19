@interface DKNotificationAgent
- (DKNotificationAgent)init;
- (void)dealloc;
@end

@implementation DKNotificationAgent

- (DKNotificationAgent)init
{
  v6.receiver = self;
  v6.super_class = DKNotificationAgent;
  v2 = [(DKNotificationAgent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NotificationAgent);
    agent = v2->_agent;
    v2->_agent = v3;
  }

  return v2;
}

- (void)dealloc
{
  NSLog(&cfstr_Dknotification.isa, a2);
  agent = self->_agent;
  self->_agent = 0;

  v4.receiver = self;
  v4.super_class = DKNotificationAgent;
  [(DKNotificationAgent *)&v4 dealloc];
}

@end