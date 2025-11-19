@interface HDXPCEventManager
- (HDXPCEventManager)init;
- (void)authorizationChangedForBundleIdentifier:(id)a3;
@end

@implementation HDXPCEventManager

- (HDXPCEventManager)init
{
  v7.receiver = self;
  v7.super_class = HDXPCEventManager;
  v2 = [(HDXPCEventManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D10BE0]);
    v4 = [v3 initWithStream:*MEMORY[0x277CCB878] entitlement:{objc_msgSend(*MEMORY[0x277CCB880], "UTF8String")}];
    authorizationPublisher = v2->_authorizationPublisher;
    v2->_authorizationPublisher = v4;
  }

  return v2;
}

- (void)authorizationChangedForBundleIdentifier:(id)a3
{
  v4 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = *MEMORY[0x277CCB870];
  v6 = [v4 UTF8String];

  xpc_dictionary_set_string(xdict, v5, v6);
  [(HDXPCEventPublisher *)self->_authorizationPublisher broadcastEvent:xdict];
}

@end