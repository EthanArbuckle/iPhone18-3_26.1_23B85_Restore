@interface HMDHomeManagerXPCClientConnectionsManagerFactory
+ (id)makeInstanceWithQueue:(id)queue messageDispatcher:(id)dispatcher messageTargetUUID:(id)d accessoryBrowser:(id)browser logEventSubmitter:(id)submitter;
- (HMDHomeManagerXPCClientConnectionsManagerFactory)init;
@end

@implementation HMDHomeManagerXPCClientConnectionsManagerFactory

+ (id)makeInstanceWithQueue:(id)queue messageDispatcher:(id)dispatcher messageTargetUUID:(id)d accessoryBrowser:(id)browser logEventSubmitter:(id)submitter
{
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_229796568(queueCopy, dispatcherCopy, v15, browser, submitter);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);

  return v18;
}

- (HMDHomeManagerXPCClientConnectionsManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeManagerXPCClientConnectionsManagerFactory;
  return [(HMDHomeManagerXPCClientConnectionsManagerFactory *)&v3 init];
}

@end