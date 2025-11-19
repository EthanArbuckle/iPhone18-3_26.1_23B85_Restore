@interface RecentCallProvider
- (_TtC16CallsAppServices18RecentCallProvider)init;
- (void)recentsController:(id)a3 didChangeCalls:(id)a4;
- (void)recentsControllerDidUpdateAcceptedContacts:(id)a3;
@end

@implementation RecentCallProvider

- (void)recentsController:(id)a3 didChangeCalls:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_1D336D0E8(v5);
}

- (void)recentsControllerDidUpdateAcceptedContacts:(id)a3
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