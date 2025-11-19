@interface ESUserNotificationInfo
- (id)handler;
- (void)setHandler:(id)a3;
@end

@implementation ESUserNotificationInfo

- (void)setHandler:(id)a3
{
  if (self->_handler != a3)
  {
    v5 = [a3 copy];
    handler = self->_handler;
    self->_handler = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)handler
{
  v2 = MEMORY[0x24C20FF50](self->_handler, a2);

  return v2;
}

@end