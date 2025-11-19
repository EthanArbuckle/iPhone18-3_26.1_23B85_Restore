@interface CRXFAbstractServiceClient
- (CRXFAbstractServiceClient)initWithProtocol:(id)a3;
- (void)registerArgumentType:(Class)a3 atIndex:(int64_t)a4 forSelector:(SEL)a5;
- (void)registerReturnType:(Class)a3 forSelector:(SEL)a4;
@end

@implementation CRXFAbstractServiceClient

- (CRXFAbstractServiceClient)initWithProtocol:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRXFAbstractServiceClient;
  v5 = [(CRXFAbstractServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v4];
    xpcInterface = v5->_xpcInterface;
    v5->_xpcInterface = v6;
  }

  return v5;
}

- (void)registerArgumentType:(Class)a3 atIndex:(int64_t)a4 forSelector:(SEL)a5
{
  v10 = [(NSXPCInterface *)self->_xpcInterface classesForSelector:a5 argumentIndex:a4 ofReply:0];
  v9 = [MEMORY[0x277CBEB58] setWithSet:v10];
  [v9 addObject:a3];
  [(NSXPCInterface *)self->_xpcInterface setClasses:v9 forSelector:a5 argumentIndex:a4 ofReply:0];
}

- (void)registerReturnType:(Class)a3 forSelector:(SEL)a4
{
  v8 = [(NSXPCInterface *)self->_xpcInterface classesForSelector:a4 argumentIndex:0 ofReply:1];
  v7 = [MEMORY[0x277CBEB58] setWithSet:v8];
  [v7 addObject:a3];
  [(NSXPCInterface *)self->_xpcInterface setClasses:v7 forSelector:a4 argumentIndex:0 ofReply:1];
}

@end