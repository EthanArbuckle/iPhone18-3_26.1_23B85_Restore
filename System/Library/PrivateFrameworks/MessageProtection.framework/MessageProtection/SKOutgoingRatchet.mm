@interface SKOutgoingRatchet
+ (id)generate;
- (BOOL)ratchetForward;
- (id)currentSubscriptionKeys;
- (id)sealMessage:(id)a3 authenticating:(id)a4 error:(id *)a5;
@end

@implementation SKOutgoingRatchet

+ (id)generate
{
  swift_getObjCClassMetadata();
  v2 = static SKOutgoingRatchet.generate()();

  return v2;
}

- (BOOL)ratchetForward
{
  v2 = self;
  v3 = SKOutgoingRatchet.ratchetForward()();

  return v3;
}

- (id)sealMessage:(id)a3 authenticating:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = SKOutgoingRatchet.sealMessage(_:authenticating:)(v10, v12, v13, v15);
  outlined consume of Data._Representation(v13, v15);
  outlined consume of Data._Representation(v10, v12);

  return v16;
}

- (id)currentSubscriptionKeys
{
  v2 = self;
  v3 = SKOutgoingRatchet.currentSubscriptionKeys()();

  return v3;
}

@end