@interface CPActivityAuthorizationManager
+ (id)notificationDisplayInformationForAudioPolicyManager:(id)a3 activity:(id)a4 conversation:(id)a5;
- (CPActivityAuthorizationManager)init;
- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit;
- (void)conversationManager:(id)a3 conversationChanged:(id)a4;
- (void)requestAuthorizationForApplicationLaunchWithActivity:(id)a3 completionHandler:(id)a4;
- (void)requestAuthorizationForApplicationWithBundleIdentifier:(id)a3 preparing:(BOOL)a4 overrides:(id)a5 currentScreenShareAttributes:(id)a6 completionHandler:(id)a7;
- (void)setAuthorization:(BOOL)a3 forBundleIdentifier:(id)a4;
- (void)setNeighborhoodActivityConduit:(id)a3;
@end

@implementation CPActivityAuthorizationManager

- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit
{
  v2 = self;
  v3 = ActivityAuthorizationManager.neighborhoodActivityConduit.getter();

  return v3;
}

- (void)setNeighborhoodActivityConduit:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  *(&self->super.isa + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit) = a3;
  v3 = a3;
}

- (void)requestAuthorizationForApplicationWithBundleIdentifier:(id)a3 preparing:(BOOL)a4 overrides:(id)a5 currentScreenShareAttributes:(id)a6 completionHandler:(id)a7
{
  v9 = a4;
  v11 = _Block_copy(a7);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v11);
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = self;
  specialized ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(v12, v14, v9, a5, a6, v16, v11);
  _Block_release(v11);
  _Block_release(v11);

  swift_unknownObjectRelease();
}

- (void)requestAuthorizationForApplicationLaunchWithActivity:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (id)notificationDisplayInformationForAudioPolicyManager:(id)a3 activity:(id)a4 conversation:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(a3, v8, a5);
  swift_unknownObjectRelease();

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (void)setAuthorization:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ActivityAuthorizationManager.setAuthorization(_:for:)(a3, v10);
}

- (CPActivityAuthorizationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)a3 conversationChanged:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  specialized ActivityAuthorizationManager.conversationManager(_:conversationChanged:)(v6);
  swift_unknownObjectRelease();
}

@end