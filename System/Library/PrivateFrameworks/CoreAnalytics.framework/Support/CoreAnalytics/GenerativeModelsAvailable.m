@interface GenerativeModelsAvailable
+ (BOOL)retrieveGenerativeModelsAvailable;
- (_TtC14analyticsagent25GenerativeModelsAvailable)init;
@end

@implementation GenerativeModelsAvailable

+ (BOOL)retrieveGenerativeModelsAvailable
{
  sub_10000597C(v7);
  v3 = v7[0];
  v2 = v7[1];

  if (v3 == 0x6C62616C69617661 && v2 == 0xE900000000000065)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

- (_TtC14analyticsagent25GenerativeModelsAvailable)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeModelsAvailable();
  return [(GenerativeModelsAvailable *)&v3 init];
}

@end