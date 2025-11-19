@interface NXCloudServer
- (NSString)description;
- (_TtC11NexusDaemon13NXCloudServer)init;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6;
@end

@implementation NXCloudServer

- (NSString)description
{
  v2 = self;
  sub_25C4906A0();

  v3 = sub_25C4C8540();

  return v3;
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6
{
  if (a6)
  {
    v10 = sub_25C4C8550();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_25C4931EC(a3, a5, v10, v12);
}

- (_TtC11NexusDaemon13NXCloudServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end