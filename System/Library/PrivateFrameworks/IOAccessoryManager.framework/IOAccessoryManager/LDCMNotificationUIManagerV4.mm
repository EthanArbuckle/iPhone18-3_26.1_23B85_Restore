@interface LDCMNotificationUIManagerV4
- ($E8BCC389BE474BF3398A9D05C1E08415)liquidNotificationContext;
- (IOPortLDCMManagerV4)ldcmManager;
- (LDCMNotificationUIManagerV4)initWithParams:(__CFRunLoop *)params :(id)a4;
- (void)setLiquidNotificationContext:(id *)context;
@end

@implementation LDCMNotificationUIManagerV4

- (LDCMNotificationUIManagerV4)initWithParams:(__CFRunLoop *)params :(id)a4
{
  self->_liquidNotificationContext.isNotificationPosted = 0;
  self->_liquidNotificationContext.lastNotificationTime = 0.0;
  self->_liquidNotificationContext.isReinsertion = 0;
  self->_liquidNotificationContext.notification = 0;
  self->_liquidNotificationContext.notificationRunLoopSource = 0;
  self->_liquidNotificationContext.runloop = params;
  objc_storeStrong(&self->_liquidNotificationContext.notificationUIManager, self);
  v6 = a4;
  objc_storeWeak(&self->_ldcmManager, v6);

  return self;
}

- (IOPortLDCMManagerV4)ldcmManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ldcmManager);

  return WeakRetained;
}

- ($E8BCC389BE474BF3398A9D05C1E08415)liquidNotificationContext
{
  v4 = *&self->_liquidNotificationContext.isReinsertion;
  *&retstr->var0 = *&self->_liquidNotificationContext.isNotificationPosted;
  *&retstr->var2 = v4;
  *&retstr->var4 = *&self->_liquidNotificationContext.notificationRunLoopSource;
  result = self->_liquidNotificationContext.notificationUIManager;
  retstr->var6 = result;
  return result;
}

- (void)setLiquidNotificationContext:(id *)context
{
  v3 = *&context->var0;
  v4 = *&context->var4;
  *&self->_liquidNotificationContext.isReinsertion = *&context->var2;
  *&self->_liquidNotificationContext.notificationRunLoopSource = v4;
  *&self->_liquidNotificationContext.isNotificationPosted = v3;
  var6 = context->var6;
  context->var6 = 0;
  notificationUIManager = self->_liquidNotificationContext.notificationUIManager;
  self->_liquidNotificationContext.notificationUIManager = var6;
  MEMORY[0x2821F96F8]();
}

@end