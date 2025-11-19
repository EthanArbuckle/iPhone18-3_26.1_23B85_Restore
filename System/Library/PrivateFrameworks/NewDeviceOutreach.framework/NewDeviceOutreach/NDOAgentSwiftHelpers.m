@interface NDOAgentSwiftHelpers
+ (void)getAmsPropertiesFor:(id)a3 completion:(id)a4;
- (_TtC8ndoagent20NDOAgentSwiftHelpers)init;
@end

@implementation NDOAgentSwiftHelpers

+ (void)getAmsPropertiesFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  v7 = a3;
  sub_100034440(v7, ObjCClassMetadata, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC8ndoagent20NDOAgentSwiftHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDOAgentSwiftHelpers();
  return [(NDOAgentSwiftHelpers *)&v3 init];
}

@end