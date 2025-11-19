@interface DummyWebAccessStateController
- (DummyWebAccessStateController)init;
@end

@implementation DummyWebAccessStateController

- (DummyWebAccessStateController)init
{
  v3.receiver = self;
  v3.super_class = DummyWebAccessStateController;
  result = [(DummyWebAccessStateController *)&v3 init];
  if (result)
  {
    result->webAccessStatus = 2;
  }

  return result;
}

@end