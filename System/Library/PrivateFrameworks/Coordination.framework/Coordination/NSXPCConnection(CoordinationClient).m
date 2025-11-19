@interface NSXPCConnection(CoordinationClient)
- (void)co_setOriginalInterruptionHandler:()CoordinationClient;
- (void)co_setOriginalInvalidationHandler:()CoordinationClient;
@end

@implementation NSXPCConnection(CoordinationClient)

- (void)co_setOriginalInterruptionHandler:()CoordinationClient
{
  v4 = MEMORY[0x245D5F6A0](a3);
  objc_setAssociatedObject(a1, sel_co_originalInterruptionHandler, v4, 1);
}

- (void)co_setOriginalInvalidationHandler:()CoordinationClient
{
  v4 = MEMORY[0x245D5F6A0](a3);
  objc_setAssociatedObject(a1, sel_co_originalInvalidationHandler, v4, 1);
}

@end