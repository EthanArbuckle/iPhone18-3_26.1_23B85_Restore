@interface GFTKeyWrapper
+ (id)unwrapWrappedSeed:(id)seed legacy:(BOOL)legacy using:(__SecKey *)using error:(id *)error;
+ (id)wrapSeed:(id)seed to:(id)to legacy:(BOOL)legacy error:(id *)error;
- (_TtC17MessageProtection13GFTKeyWrapper)init;
@end

@implementation GFTKeyWrapper

+ (id)unwrapWrappedSeed:(id)seed legacy:(BOOL)legacy using:(__SecKey *)using error:(id *)error
{
  legacyCopy = legacy;
  seedCopy = seed;
  usingCopy = using;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized static GFTKeyWrapper.unwrapWrappedSeed(_:legacy:using:)(v10, v12, legacyCopy, usingCopy);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

+ (id)wrapSeed:(id)seed to:(id)to legacy:(BOOL)legacy error:(id *)error
{
  legacyCopy = legacy;
  seedCopy = seed;
  toCopy = to;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized static GFTKeyWrapper.wrapSeed(_:to:legacy:)(v10, v12, toCopy, legacyCopy);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

- (_TtC17MessageProtection13GFTKeyWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GFTKeyWrapper();
  return [(GFTKeyWrapper *)&v3 init];
}

@end