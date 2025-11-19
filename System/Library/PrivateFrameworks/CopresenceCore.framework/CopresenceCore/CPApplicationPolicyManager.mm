@interface CPApplicationPolicyManager
+ (CPApplicationPolicyManager)sharedInstance;
- (BOOL)autoSharePlayEnabled;
- (BOOL)shouldAutoLaunchAppForActivity:(id)a3 onConversation:(id)a4;
- (CPApplicationPolicyManager)init;
- (NSDictionary)authorizedBundleIdentifiers;
- (void)addDelegate:(id)a3 withQueue:(id)a4;
- (void)handleApplicationUninstalledNotification:(id)a3;
- (void)handleCNContactStoreDidChangeNotification:(id)a3;
- (void)setAuthorization:(BOOL)a3 forBundleID:(id)a4;
- (void)setAutoSharePlayEnabled:(BOOL)a3;
- (void)updateAllowedHandlesForConversation:(id)a3;
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
  v2 = self;
  CPApplicationPolicyManager.authorizedBundleIdentifiers.getter();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)autoSharePlayEnabled
{
  v2 = self;
  v3 = CPApplicationPolicyManager.autoSharePlayEnabled.getter();

  return v3 & 1;
}

- (void)setAutoSharePlayEnabled:(BOOL)a3
{
  v4 = self;
  CPApplicationPolicyManager.autoSharePlayEnabled.setter(a3);
}

- (void)addDelegate:(id)a3 withQueue:(id)a4
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xC0);
  swift_unknownObjectRetain();
  v8 = a4;
  v10 = self;
  v9 = v7();
  (*(*v9 + 160))(a3, v8);

  swift_unknownObjectRelease();
}

- (BOOL)shouldAutoLaunchAppForActivity:(id)a3 onConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(v6, v7);
  v10 = v9;

  return v10 & 1;
}

- (void)updateAllowedHandlesForConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  CPApplicationPolicyManager.updateAllowedHandles(for:)(v4);
}

- (void)setAuthorization:(BOOL)a3 forBundleID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CPApplicationPolicyManager.setAuthorization(_:for:)(a3, v10);
}

- (void)handleApplicationUninstalledNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  CPApplicationPolicyManager.handleApplicationUninstalledNotification(_:)(v4);
}

- (void)handleCNContactStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  CPApplicationPolicyManager.handleCNContactStoreDidChangeNotification(_:)(v4);
}

- (CPApplicationPolicyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end