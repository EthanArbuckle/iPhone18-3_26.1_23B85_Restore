@interface MRBannerCenter
+ (void)dismissAllBannerRequests;
@end

@implementation MRBannerCenter

+ (void)dismissAllBannerRequests
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v2 service];

  v3 = MRCreateXPCMessage(0x30000000000002EuLL);
  connection = [service connection];
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  workerQueue = [v5 workerQueue];
  xpc_connection_send_message_with_reply(connection, v3, workerQueue, &__block_literal_global_8);
}

@end