@interface DADiscoveryExtensionSession
- (void)invalidate;
- (void)reportEvent:(id)a3;
@end

@implementation DADiscoveryExtensionSession

- (void)invalidate
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;
  MEMORY[0x2821F96F8]();
}

- (void)reportEvent:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

@end