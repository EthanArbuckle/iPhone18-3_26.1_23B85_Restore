@interface DADiscoveryExtensionSession
- (void)invalidate;
- (void)reportEvent:(id)event;
@end

@implementation DADiscoveryExtensionSession

- (void)invalidate
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;
  MEMORY[0x2821F96F8]();
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, eventCopy);
  }
}

@end