@interface DDUINoticeXPCService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)userDidRespondWithAccepted:(BOOL)a3;
@end

@implementation DDUINoticeXPCService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_230F19A84(v7);

  return v9 & 1;
}

- (void)userDidRespondWithAccepted:(BOOL)a3
{
  v4 = self;
  DDUINoticeXPCService.userDidRespond(accepted:)(a3);
}

@end