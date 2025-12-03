@interface FPCKReport
- (_TtC18FileProviderDaemon10FPCKReport)init;
- (_TtC18FileProviderDaemon10FPCKReport)initWithStart:(id)start latest:(id)latest superPendingSet:(id)set consistency:(id)consistency;
@end

@implementation FPCKReport

- (_TtC18FileProviderDaemon10FPCKReport)initWithStart:(id)start latest:(id)latest superPendingSet:(id)set consistency:(id)consistency
{
  startCopy = start;
  latestCopy = latest;
  setCopy = set;
  consistencyCopy = consistency;
  v14 = sub_1CF4E8960(start, latest, set, consistency);

  return v14;
}

- (_TtC18FileProviderDaemon10FPCKReport)init
{
  v2 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
  v3 = objc_allocWithZone(type metadata accessor for FPCKReport());
  v4 = sub_1CF4DF990(v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

@end