@interface ProtectedAppsManager
- (_TtC9MomentsUI20ProtectedAppsManager)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
@end

@implementation ProtectedAppsManager

- (_TtC9MomentsUI20ProtectedAppsManager)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = self + OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoringSubjects) = MEMORY[0x277D84FA0];
  v8 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager__shouldDismissOverlayPostAuthentication;
  v13 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v8, v6, v3);
  v9 = type metadata accessor for ProtectedAppsManager();
  v12.receiver = self;
  v12.super_class = v9;
  return [(ProtectedAppsManager *)&v12 init];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  type metadata accessor for APSubject();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  specialized ProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(v5);
  swift_unknownObjectRelease();
}

@end