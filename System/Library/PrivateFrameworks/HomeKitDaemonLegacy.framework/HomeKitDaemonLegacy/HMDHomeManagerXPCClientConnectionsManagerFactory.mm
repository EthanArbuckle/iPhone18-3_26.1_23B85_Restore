@interface HMDHomeManagerXPCClientConnectionsManagerFactory
+ (id)makeInstanceWithQueue:(id)a3 messageDispatcher:(id)a4 messageTargetUUID:(id)a5 accessoryBrowser:(id)a6 logEventSubmitter:(id)a7;
- (HMDHomeManagerXPCClientConnectionsManagerFactory)init;
@end

@implementation HMDHomeManagerXPCClientConnectionsManagerFactory

+ (id)makeInstanceWithQueue:(id)a3 messageDispatcher:(id)a4 messageTargetUUID:(id)a5 accessoryBrowser:(id)a6 logEventSubmitter:(id)a7
{
  v11 = sub_253CCFF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v16 = a3;
  v17 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_253205D24(v16, v17, v15, a6, a7);

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