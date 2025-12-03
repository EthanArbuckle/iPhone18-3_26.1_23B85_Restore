@interface CMFBlockListAlertManager
- (void)postBlockListChangeAlertIfNecessaryWithUpdatedContacts:(id)contacts;
@end

@implementation CMFBlockListAlertManager

- (void)postBlockListChangeAlertIfNecessaryWithUpdatedContacts:(id)contacts
{
  sub_10000A2D0(0, &unk_10001D380, CNContact_ptr);
  sub_100011B28();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000104E8(v4);
}

@end