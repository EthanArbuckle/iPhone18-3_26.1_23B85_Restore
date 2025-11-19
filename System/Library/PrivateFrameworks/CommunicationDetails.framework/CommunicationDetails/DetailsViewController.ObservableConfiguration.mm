@interface DetailsViewController.ObservableConfiguration
- (void)updateContactsWithNotification:(id)a3;
- (void)updateGroupIdentityWithNotification:(id)a3;
@end

@implementation DetailsViewController.ObservableConfiguration

- (void)updateContactsWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0aB7ContactVGMd);
  Notification.parse<A>(for:)(0, v8, &v10);
  if (v10)
  {
    (*(self->super.isa + 85))(v10);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (void)updateGroupIdentityWithNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  DetailsViewController.ObservableConfiguration.updateGroupIdentity(notification:)();

  (*(v4 + 8))(v6, v3);
}

@end