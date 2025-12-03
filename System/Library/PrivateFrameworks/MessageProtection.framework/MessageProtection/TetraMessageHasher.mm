@interface TetraMessageHasher
+ (id)hashMessage:(id)message;
- (_TtC17MessageProtection18TetraMessageHasher)init;
@end

@implementation TetraMessageHasher

+ (id)hashMessage:(id)message
{
  messageCopy = message;
  v4 = specialized static TetraMessageHasher.hashMessage(_:)();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v4, v6);
    v7 = isa;
  }

  return v7;
}

- (_TtC17MessageProtection18TetraMessageHasher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TetraMessageHasher();
  return [(TetraMessageHasher *)&v3 init];
}

@end