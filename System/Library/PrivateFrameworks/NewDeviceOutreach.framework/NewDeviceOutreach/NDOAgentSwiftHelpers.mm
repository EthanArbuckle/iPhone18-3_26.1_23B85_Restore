@interface NDOAgentSwiftHelpers
+ (void)getAmsPropertiesFor:(id)for completion:(id)completion;
- (_TtC8ndoagent20NDOAgentSwiftHelpers)init;
@end

@implementation NDOAgentSwiftHelpers

+ (void)getAmsPropertiesFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  forCopy = for;
  sub_100034440(forCopy, ObjCClassMetadata, v5);
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