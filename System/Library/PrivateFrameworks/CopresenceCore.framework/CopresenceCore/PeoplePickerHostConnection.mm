@interface PeoplePickerHostConnection
- (void)checkIn:(id)a3 reply:(id)a4;
- (void)dismissViewController;
- (void)shareSheetSessionHasRecipientsWithSessionID:(id)a3 reply:(id)a4;
- (void)updateActivity:(id)a3;
@end

@implementation PeoplePickerHostConnection

- (void)shareSheetSessionHasRecipientsWithSessionID:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)checkIn:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized PeoplePickerHostConnection.checkIn(_:reply:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateActivity:(id)a3
{
  v5 = self + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    v9 = a3;
    v10 = self;
    v8(a3, ObjectType, v6);
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
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end