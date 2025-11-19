@interface PDSXPCAdapter(PDSListener)
- (id)listenerForMachService:()PDSListener;
@end

@implementation PDSXPCAdapter(PDSListener)

- (id)listenerForMachService:()PDSListener
{
  v3 = MEMORY[0x277CCAE98];
  v4 = a3;
  v5 = [[v3 alloc] initWithMachServiceName:v4];

  return v5;
}

@end