@interface RecentCallProvider
- (_TtC16CallsAppServices18RecentCallProvider)init;
- (void)recentsController:(id)controller didChangeCalls:(id)calls;
- (void)recentsControllerDidUpdateAcceptedContacts:(id)contacts;
@end

@implementation RecentCallProvider

- (void)recentsController:(id)controller didChangeCalls:(id)calls
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D336D0E8(controllerCopy);
}

- (void)recentsControllerDidUpdateAcceptedContacts:(id)contacts
{
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v3 = *(qword_1EDEBFC50 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_acceptedContactsDidChange);

  sub_1D33DE4C4();
}

- (_TtC16CallsAppServices18RecentCallProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end