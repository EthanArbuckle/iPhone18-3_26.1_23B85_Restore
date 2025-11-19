@interface ProtectedAppsObserver
- (_TtC14CopresenceCore21ProtectedAppsObserver)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
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

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  type metadata accessor for APSubject();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  specialized ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)(v5);
  swift_unknownObjectRelease();
}

@end