@interface CNKWaitOnHoldViewComposerFactory
- (id)makeViewComposer;
@end

@implementation CNKWaitOnHoldViewComposerFactory

- (id)makeViewComposer
{
  selfCopy = self;
  v3 = CNKWaitOnHoldViewComposerFactory.makeViewComposer()();

  return v3;
}

@end