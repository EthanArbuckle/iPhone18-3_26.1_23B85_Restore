@interface PlayerViewControllerBehavior
- (void)contextWillHandleUserAction:(int64_t)action;
- (void)skipToNextItem;
- (void)skipToPreviousItem;
- (void)willMoveToContext:(id)context;
@end

@implementation PlayerViewControllerBehavior

- (void)skipToPreviousItem
{
  selfCopy = self;
  sub_1C5DE58C4();
}

- (void)skipToNextItem
{
  selfCopy = self;
  sub_1C5DE5914();
}

- (void)contextWillHandleUserAction:(int64_t)action
{
  selfCopy = self;
  sub_1C5DE5964(action);
}

- (void)willMoveToContext:(id)context
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5DE6308(context);
  swift_unknownObjectRelease();
}

@end