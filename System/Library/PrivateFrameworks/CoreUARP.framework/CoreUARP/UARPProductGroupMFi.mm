@interface UARPProductGroupMFi
- (UARPProductGroupMFi)initWithProductGroup:(id)a3;
@end

@implementation UARPProductGroupMFi

- (UARPProductGroupMFi)initWithProductGroup:(id)a3
{
  v4.receiver = self;
  v4.super_class = UARPProductGroupMFi;
  return [(UARPProductGroup *)&v4 initWithIdentifier:a3];
}

@end