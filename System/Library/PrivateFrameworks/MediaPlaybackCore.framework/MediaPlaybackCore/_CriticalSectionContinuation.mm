@interface _CriticalSectionContinuation
- (void)cancel;
@end

@implementation _CriticalSectionContinuation

- (void)cancel
{
  selfCopy = self;
  sub_1C5E3DACC();
}

@end