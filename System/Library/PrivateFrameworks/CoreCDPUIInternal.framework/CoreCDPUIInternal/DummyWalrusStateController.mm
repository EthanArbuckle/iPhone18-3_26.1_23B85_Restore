@interface DummyWalrusStateController
- (DummyWalrusStateController)init;
@end

@implementation DummyWalrusStateController

- (DummyWalrusStateController)init
{
  v3.receiver = self;
  v3.super_class = DummyWalrusStateController;
  result = [(DummyWalrusStateController *)&v3 init];
  if (result)
  {
    result->walrusStatus = 2;
  }

  return result;
}

@end