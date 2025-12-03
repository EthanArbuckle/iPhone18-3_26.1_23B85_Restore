@interface NoticeButtonClickAction
- (_TtC24FaceTimeNotificationCore23NoticeButtonClickAction)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NoticeButtonClickAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NoticeButtonClickAction.encode(with:)(coderCopy);
}

- (_TtC24FaceTimeNotificationCore23NoticeButtonClickAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end