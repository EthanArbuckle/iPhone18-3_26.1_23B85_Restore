@interface PeoplePickerHostConnection
- (void)checkIn:(id)in reply:(id)reply;
- (void)dismissViewController;
- (void)shareSheetSessionHasRecipientsWithSessionID:(id)d reply:(id)reply;
- (void)updateActivity:(id)activity;
@end

@implementation PeoplePickerHostConnection

- (void)shareSheetSessionHasRecipientsWithSessionID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)checkIn:(id)in reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  inCopy = in;
  selfCopy = self;
  specialized PeoplePickerHostConnection.checkIn(_:reply:)(inCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateActivity:(id)activity
{
  v5 = self + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    activityCopy = activity;
    selfCopy = self;
    v8(activity, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)dismissViewController
{
  v3 = self + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end