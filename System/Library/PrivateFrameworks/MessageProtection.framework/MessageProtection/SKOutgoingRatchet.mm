@interface SKOutgoingRatchet
+ (id)generate;
- (BOOL)ratchetForward;
- (id)currentSubscriptionKeys;
- (id)sealMessage:(id)message authenticating:(id)authenticating error:(id *)error;
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
  selfCopy = self;
  v3 = SKOutgoingRatchet.ratchetForward()();

  return v3;
}

- (id)sealMessage:(id)message authenticating:(id)authenticating error:(id *)error
{
  messageCopy = message;
  authenticatingCopy = authenticating;
  selfCopy = self;
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
  selfCopy = self;
  v3 = SKOutgoingRatchet.currentSubscriptionKeys()();

  return v3;
}

@end