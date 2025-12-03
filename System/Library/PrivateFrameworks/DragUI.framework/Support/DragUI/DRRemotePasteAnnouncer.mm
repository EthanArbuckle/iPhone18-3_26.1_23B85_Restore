@interface DRRemotePasteAnnouncer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DRRemotePasteAnnouncer)init;
- (void)announceDeniedPaste;
- (void)announcePaste:(id)paste;
@end

@implementation DRRemotePasteAnnouncer

- (DRRemotePasteAnnouncer)init
{
  v6.receiver = self;
  v6.super_class = DRRemotePasteAnnouncer;
  v2 = [(DRRemotePasteAnnouncer *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DragUI.druid.paste-announcement"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
  }

  return v2;
}

- (void)announceDeniedPaste
{
  v8 = objc_alloc_init(_UISystemBannerRequest);
  v2 = sub_100004980();
  [v8 setPrimaryTitleText:v2];

  v3 = +[DREnterpriseInfo sharedInstance];
  orgName = [v3 orgName];

  v5 = sub_100004A98(orgName);
  if (orgName)
  {
    v6 = sub_1000049EC(orgName);
    [v8 setSecondaryTitleText:v6];
  }

  v7 = 2.5;
  if (v5)
  {
    v7 = 2.0;
  }

  [v8 setBannerTimeoutDuration:v7];
  [v8 postBanner];
}

- (void)announcePaste:(id)paste
{
  pasteCopy = paste;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = objc_alloc_init(_UISystemBannerRequest);
  localizedAnnouncementText = [pasteCopy localizedAnnouncementText];

  [v5 setPrimaryTitleText:localizedAnnouncementText];
  [v5 setBannerTimeoutDuration:1.5];
  [v5 postBanner];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:DRPasteAnnouncementEntitlement];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DRPasteAnnouncing];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:self];
    [connectionCopy _setQueue:&_dispatch_main_q];
    [connectionCopy resume];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end