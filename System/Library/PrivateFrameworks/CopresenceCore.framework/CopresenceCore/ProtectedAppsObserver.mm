@interface ProtectedAppsObserver
- (_TtC14CopresenceCore21ProtectedAppsObserver)init;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
@end

@implementation ProtectedAppsObserver

- (_TtC14CopresenceCore21ProtectedAppsObserver)init
{
  *&self->delegate[OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProtectedAppsObserver();
  v3 = [(ProtectedAppsObserver *)&v8 init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [objc_msgSend(v4 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  type metadata accessor for APSubject();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)(v5);
  swift_unknownObjectRelease();
}

@end