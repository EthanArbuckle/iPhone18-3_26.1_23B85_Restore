@interface TrackedSubjectInternal
- (CGRect)rect;
@end

@implementation TrackedSubjectInternal

- (CGRect)rect
{
  v2 = *(self + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect + 8);
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect + 16);
  v5 = *(self + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end