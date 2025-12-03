@interface ULPeripheralControlDelegateWrapper
- (ULPeripheralControlDelegateWrapper)initWithCppInterface:(ULPeripheralControlDelegateCppInterface *)interface;
- (void)onPeripheralAvailable;
- (void)onPeripheralUnavailable;
@end

@implementation ULPeripheralControlDelegateWrapper

- (ULPeripheralControlDelegateWrapper)initWithCppInterface:(ULPeripheralControlDelegateCppInterface *)interface
{
  v7.receiver = self;
  v7.super_class = ULPeripheralControlDelegateWrapper;
  v4 = [(ULPeripheralControlDelegateWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULPeripheralControlDelegateWrapper *)v4 setCppInterface:interface];
  }

  return v5;
}

- (void)onPeripheralAvailable
{
  v2 = *(*[(ULPeripheralControlDelegateWrapper *)self cppInterface]+ 16);

  v2();
}

- (void)onPeripheralUnavailable
{
  v2 = *(*[(ULPeripheralControlDelegateWrapper *)self cppInterface]+ 24);

  v2();
}

@end