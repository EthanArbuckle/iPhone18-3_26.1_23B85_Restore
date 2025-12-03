@interface CRXFAbstractServiceClient
- (CRXFAbstractServiceClient)initWithProtocol:(id)protocol;
- (void)registerArgumentType:(Class)type atIndex:(int64_t)index forSelector:(SEL)selector;
- (void)registerReturnType:(Class)type forSelector:(SEL)selector;
@end

@implementation CRXFAbstractServiceClient

- (CRXFAbstractServiceClient)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = CRXFAbstractServiceClient;
  v5 = [(CRXFAbstractServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:protocolCopy];
    xpcInterface = v5->_xpcInterface;
    v5->_xpcInterface = v6;
  }

  return v5;
}

- (void)registerArgumentType:(Class)type atIndex:(int64_t)index forSelector:(SEL)selector
{
  v10 = [(NSXPCInterface *)self->_xpcInterface classesForSelector:selector argumentIndex:index ofReply:0];
  v9 = [MEMORY[0x277CBEB58] setWithSet:v10];
  [v9 addObject:type];
  [(NSXPCInterface *)self->_xpcInterface setClasses:v9 forSelector:selector argumentIndex:index ofReply:0];
}

- (void)registerReturnType:(Class)type forSelector:(SEL)selector
{
  v8 = [(NSXPCInterface *)self->_xpcInterface classesForSelector:selector argumentIndex:0 ofReply:1];
  v7 = [MEMORY[0x277CBEB58] setWithSet:v8];
  [v7 addObject:type];
  [(NSXPCInterface *)self->_xpcInterface setClasses:v7 forSelector:selector argumentIndex:0 ofReply:1];
}

@end