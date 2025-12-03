@interface NXCloudServer
- (NSString)description;
- (_TtC11NexusDaemon13NXCloudServer)init;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d;
@end

@implementation NXCloudServer

- (NSString)description
{
  selfCopy = self;
  sub_25C4906A0();

  v3 = sub_25C4C8540();

  return v3;
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d
{
  if (d)
  {
    v10 = sub_25C4C8550();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  selfCopy = self;
  sub_25C4931EC(service, session, v10, v12);
}

- (_TtC11NexusDaemon13NXCloudServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end