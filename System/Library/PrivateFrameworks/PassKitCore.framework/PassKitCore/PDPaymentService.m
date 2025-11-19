@interface PDPaymentService
- (void)activated;
- (void)dealloc;
- (void)serviceResumed;
@end

@implementation PDPaymentService

- (void)activated
{
  sub_100191BAC(self->_fieldDetectorManager, self);
  v3.receiver = self;
  v3.super_class = PDPaymentService;
  [(PDPaymentService *)&v3 activated];
}

- (void)serviceResumed
{
  os_unfair_lock_lock(&self->_lock);
  self->_suspended = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  sub_100191C08(self->_fieldDetectorManager, self);
  v3.receiver = self;
  v3.super_class = PDPaymentService;
  [(PDPaymentService *)&v3 dealloc];
}

@end