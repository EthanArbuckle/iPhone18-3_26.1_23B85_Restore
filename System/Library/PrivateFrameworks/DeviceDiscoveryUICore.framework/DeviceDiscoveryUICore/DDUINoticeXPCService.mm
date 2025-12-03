@interface DDUINoticeXPCService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)userDidRespondWithAccepted:(BOOL)accepted;
@end

@implementation DDUINoticeXPCService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_230F19A84(connectionCopy);

  return v9 & 1;
}

- (void)userDidRespondWithAccepted:(BOOL)accepted
{
  selfCopy = self;
  DDUINoticeXPCService.userDidRespond(accepted:)(accepted);
}

@end