@interface GFTKeyWrapper
+ (id)unwrapWrappedSeed:(id)a3 legacy:(BOOL)a4 using:(__SecKey *)a5 error:(id *)a6;
+ (id)wrapSeed:(id)a3 to:(id)a4 legacy:(BOOL)a5 error:(id *)a6;
- (_TtC17MessageProtection13GFTKeyWrapper)init;
@end

@implementation GFTKeyWrapper

+ (id)unwrapWrappedSeed:(id)a3 legacy:(BOOL)a4 using:(__SecKey *)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized static GFTKeyWrapper.unwrapWrappedSeed(_:legacy:using:)(v10, v12, v7, v9);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

+ (id)wrapSeed:(id)a3 to:(id)a4 legacy:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized static GFTKeyWrapper.wrapSeed(_:to:legacy:)(v10, v12, v9, v6);
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