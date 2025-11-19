@interface MRBannerCenter
+ (void)dismissAllBannerRequests;
@end

@implementation MRBannerCenter

+ (void)dismissAllBannerRequests
{
  v2 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v7 = [v2 service];

  v3 = MRCreateXPCMessage(0x30000000000002EuLL);
  v4 = [v7 connection];
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v6 = [v5 workerQueue];
  xpc_connection_send_message_with_reply(v4, v3, v6, &__block_literal_global_8);
}

@end