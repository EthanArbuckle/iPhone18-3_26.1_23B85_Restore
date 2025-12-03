@interface CPApplicationPolicyManager
+ (CPApplicationPolicyManager)sharedInstance;
- (BOOL)autoSharePlayEnabled;
- (BOOL)shouldAutoLaunchAppForActivity:(id)activity onConversation:(id)conversation;
- (CPApplicationPolicyManager)init;
- (NSDictionary)authorizedBundleIdentifiers;
- (void)addDelegate:(id)delegate withQueue:(id)queue;
- (void)handleApplicationUninstalledNotification:(id)notification;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)setAuthorization:(BOOL)authorization forBundleID:(id)d;
- (void)setAutoSharePlayEnabled:(BOOL)enabled;
- (void)updateAllowedHandlesForConversation:(id)conversation;
@end

@implementation CPApplicationPolicyManager

+ (CPApplicationPolicyManager)sharedInstance
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static CPApplicationPolicyManager.shared;

  return v3;
}

- (NSDictionary)authorizedBundleIdentifiers
{
  selfCopy = self;
  CPApplicationPolicyManager.authorizedBundleIdentifiers.getter();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)autoSharePlayEnabled
{
  selfCopy = self;
  v3 = CPApplicationPolicyManager.autoSharePlayEnabled.getter();

  return v3 & 1;
}

- (void)setAutoSharePlayEnabled:(BOOL)enabled
{
  selfCopy = self;
  CPApplicationPolicyManager.autoSharePlayEnabled.setter(enabled);
}

- (void)addDelegate:(id)delegate withQueue:(id)queue
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xC0);
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  v9 = v7();
  (*(*v9 + 160))(delegate, queueCopy);

  swift_unknownObjectRelease();
}

- (BOOL)shouldAutoLaunchAppForActivity:(id)activity onConversation:(id)conversation
{
  activityCopy = activity;
  conversationCopy = conversation;
  selfCopy = self;
  CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(activityCopy, conversationCopy);
  v10 = v9;

  return v10 & 1;
}

- (void)updateAllowedHandlesForConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  CPApplicationPolicyManager.updateAllowedHandles(for:)(conversationCopy);
}

- (void)setAuthorization:(BOOL)authorization forBundleID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CPApplicationPolicyManager.setAuthorization(_:for:)(authorization, v10);
}

- (void)handleApplicationUninstalledNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  CPApplicationPolicyManager.handleApplicationUninstalledNotification(_:)(notificationCopy);
}

- (void)handleCNContactStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  CPApplicationPolicyManager.handleCNContactStoreDidChangeNotification(_:)(notificationCopy);
}

- (CPApplicationPolicyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end