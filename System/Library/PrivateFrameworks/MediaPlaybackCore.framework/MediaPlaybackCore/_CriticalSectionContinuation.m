@interface _CriticalSectionContinuation
- (void)cancel;
@end

@implementation _CriticalSectionContinuation

- (void)cancel
{
  v2 = self;
  sub_1C5E3DACC();
}

@end