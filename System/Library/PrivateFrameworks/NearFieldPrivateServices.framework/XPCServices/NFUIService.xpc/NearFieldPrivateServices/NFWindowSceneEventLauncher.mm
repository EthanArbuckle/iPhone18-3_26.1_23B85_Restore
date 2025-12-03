@interface NFWindowSceneEventLauncher
+ (void)launchBundleWithIdentifier:(id)identifier reason:(unint64_t)reason domain:(int64_t)domain completion:(id)completion;
- (_TtC11NFUIService26NFWindowSceneEventLauncher)init;
@end

@implementation NFWindowSceneEventLauncher

+ (void)launchBundleWithIdentifier:(id)identifier reason:(unint64_t)reason domain:(int64_t)domain completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  _Block_copy(v8);
  sub_100002844(v9, v11, reason, domain, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC11NFUIService26NFWindowSceneEventLauncher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NFWindowSceneEventLauncher();
  return [(NFWindowSceneEventLauncher *)&v3 init];
}

@end