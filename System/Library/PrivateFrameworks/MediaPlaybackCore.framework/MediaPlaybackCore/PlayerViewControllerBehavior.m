@interface PlayerViewControllerBehavior
- (void)contextWillHandleUserAction:(int64_t)a3;
- (void)skipToNextItem;
- (void)skipToPreviousItem;
- (void)willMoveToContext:(id)a3;
@end

@implementation PlayerViewControllerBehavior

- (void)skipToPreviousItem
{
  v2 = self;
  sub_1C5DE58C4();
}

- (void)skipToNextItem
{
  v2 = self;
  sub_1C5DE5914();
}

- (void)contextWillHandleUserAction:(int64_t)a3
{
  v4 = self;
  sub_1C5DE5964(a3);
}

- (void)willMoveToContext:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5DE6308(a3);
  swift_unknownObjectRelease();
}

@end