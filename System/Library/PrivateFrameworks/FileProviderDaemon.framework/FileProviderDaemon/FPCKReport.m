@interface FPCKReport
- (_TtC18FileProviderDaemon10FPCKReport)init;
- (_TtC18FileProviderDaemon10FPCKReport)initWithStart:(id)a3 latest:(id)a4 superPendingSet:(id)a5 consistency:(id)a6;
@end

@implementation FPCKReport

- (_TtC18FileProviderDaemon10FPCKReport)initWithStart:(id)a3 latest:(id)a4 superPendingSet:(id)a5 consistency:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1CF4E8960(a3, a4, a5, a6);

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