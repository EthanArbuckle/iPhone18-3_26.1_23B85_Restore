@interface PresentConfirmationAlertAction
- (_TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PresentConfirmationAlertAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PresentConfirmationAlertAction.encode(with:)(coderCopy);
}

- (_TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end