@interface UARPProductGroupMFi
- (UARPProductGroupMFi)initWithProductGroup:(id)group;
@end

@implementation UARPProductGroupMFi

- (UARPProductGroupMFi)initWithProductGroup:(id)group
{
  v4.receiver = self;
  v4.super_class = UARPProductGroupMFi;
  return [(UARPProductGroup *)&v4 initWithIdentifier:group];
}

@end