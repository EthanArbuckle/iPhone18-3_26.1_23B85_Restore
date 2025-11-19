@interface PARBagConfigFactory
- (id)loadWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
- (id)loadWithUrl:(id)a3 userAgent:(id)a4 userDefaults:(id)a5;
@end

@implementation PARBagConfigFactory

- (id)loadWithUrl:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a5;
  v16 = self;
  v17 = sub_1001019D8(v12, v13, a4, a5);

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)loadWithData:(id)a3 userAgent:(id)a4 userDefaults:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a4;
  v11 = a5;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v10)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = sub_100101C2C(v12, v14, v15, v17, v11);

  sub_100014A40(v12, v14);

  return v18;
}

@end