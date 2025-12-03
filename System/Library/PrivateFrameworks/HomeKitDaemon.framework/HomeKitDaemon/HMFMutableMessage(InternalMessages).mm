@interface HMFMutableMessage(InternalMessages)
+ (id)internalMessageWithName:()InternalMessages destination:messagePayload:;
+ (id)internalMessageWithName:()InternalMessages messagePayload:responseHandler:;
- (void)setInternal:()InternalMessages;
@end

@implementation HMFMutableMessage(InternalMessages)

- (void)setInternal:()InternalMessages
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setUserInfoValue:v2 forKey:@"internal"];
}

+ (id)internalMessageWithName:()InternalMessages destination:messagePayload:
{
  v0 = [MEMORY[0x277D0F848] messageWithName:? destination:? payload:?];
  [v0 setUserInfoValue:MEMORY[0x277CBEC38] forKey:@"internal"];

  return v0;
}

+ (id)internalMessageWithName:()InternalMessages messagePayload:responseHandler:
{
  v0 = [MEMORY[0x277D0F848] messageWithName:? messagePayload:? responseHandler:?];
  [v0 setUserInfoValue:MEMORY[0x277CBEC38] forKey:@"internal"];

  return v0;
}

@end