@interface CPActivityAuthorizationManager
+ (id)notificationDisplayInformationForAudioPolicyManager:(id)manager activity:(id)activity conversation:(id)conversation;
- (CPActivityAuthorizationManager)init;
- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)requestAuthorizationForApplicationLaunchWithActivity:(id)activity completionHandler:(id)handler;
- (void)requestAuthorizationForApplicationWithBundleIdentifier:(id)identifier preparing:(BOOL)preparing overrides:(id)overrides currentScreenShareAttributes:(id)attributes completionHandler:(id)handler;
- (void)setAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier;
- (void)setNeighborhoodActivityConduit:(id)conduit;
@end

@implementation CPActivityAuthorizationManager

- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit
{
  selfCopy = self;
  v3 = ActivityAuthorizationManager.neighborhoodActivityConduit.getter();

  return v3;
}

- (void)setNeighborhoodActivityConduit:(id)conduit
{
  v4 = *(&self->super.isa + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  *(&self->super.isa + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit) = conduit;
  conduitCopy = conduit;
}

- (void)requestAuthorizationForApplicationWithBundleIdentifier:(id)identifier preparing:(BOOL)preparing overrides:(id)overrides currentScreenShareAttributes:(id)attributes completionHandler:(id)handler
{
  preparingCopy = preparing;
  v11 = _Block_copy(handler);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v11);
  overridesCopy = overrides;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(v12, v14, preparingCopy, overrides, attributes, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  swift_unknownObjectRelease();
}

- (void)requestAuthorizationForApplicationLaunchWithActivity:(id)activity completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  activityCopy = activity;
  selfCopy = self;
  specialized ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(activityCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (id)notificationDisplayInformationForAudioPolicyManager:(id)manager activity:(id)activity conversation:(id)conversation
{
  swift_unknownObjectRetain();
  activityCopy = activity;
  conversationCopy = conversation;
  specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(manager, activityCopy, conversation);
  swift_unknownObjectRelease();

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (void)setAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ActivityAuthorizationManager.setAuthorization(_:for:)(authorization, v10);
}

- (CPActivityAuthorizationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  swift_unknownObjectRetain();
  changedCopy = changed;
  selfCopy = self;
  specialized ActivityAuthorizationManager.conversationManager(_:conversationChanged:)(changedCopy);
  swift_unknownObjectRelease();
}

@end