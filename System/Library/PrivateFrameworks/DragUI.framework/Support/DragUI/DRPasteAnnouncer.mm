@interface DRPasteAnnouncer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DRPasteAnnouncer)init;
- (void)announceDeniedPaste;
- (void)announcePaste:(id)paste;
- (void)setupWithAnnouncement:(id)announcement orMessage:(id)message reply:(id)reply;
@end

@implementation DRPasteAnnouncer

- (DRPasteAnnouncer)init
{
  v6.receiver = self;
  v6.super_class = DRPasteAnnouncer;
  v2 = [(DRPasteAnnouncer *)&v6 init];
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
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([_DRPasteAnnouncementViewController shouldCoalesce:0])
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Not displaying duplicate paste not allowed banner", buf, 2u);
    }
  }

  else
  {
    v4 = sub_100004980();
    [(DRPasteAnnouncer *)self setupWithAnnouncement:0 orMessage:v4 reply:0];
  }
}

- (void)announcePaste:(id)paste
{
  pasteCopy = paste;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([_DRPasteAnnouncementViewController shouldCoalesce:pasteCopy])
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = pasteCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not displaying duplicate of announcement %@", &v6, 0xCu);
    }
  }

  else
  {
    [(DRPasteAnnouncer *)self setupWithAnnouncement:pasteCopy orMessage:0 reply:0];
  }
}

- (void)setupWithAnnouncement:(id)announcement orMessage:(id)message reply:(id)reply
{
  announcementCopy = announcement;
  messageCopy = message;
  replyCopy = reply;
  v10 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:@"com.apple.DragUI.druid"];
  v31 = 0;
  v11 = [v10 layoutDescriptionWithError:&v31];
  v12 = v31;
  if (v11)
  {
    v13 = [_DRPasteAnnouncementViewController alloc];
    v29 = announcementCopy;
    if (messageCopy)
    {
      v14 = [(_DRPasteAnnouncementViewController *)v13 initForDeniedPasteWithBannerSource:v10];
      v15 = messageCopy;
    }

    else
    {
      v14 = [(_DRPasteAnnouncementViewController *)v13 initWithAnnouncement:announcementCopy reply:replyCopy bannerSource:v10];
      if (replyCopy)
      {
        [announcementCopy localizedAuthorizationText];
      }

      else
      {
        [announcementCopy localizedAnnouncementText];
      }
      v15 = ;
    }

    v17 = v15;
    [v11 presentationSize];
    v19 = v18;
    v21 = v20;
    [v11 containerSize];
    [v14 preferredContentSizeWithPresentationSize:v19 containerSize:v21, v22, v23];
    [v14 setPreferredContentSize:?];
    v34[0] = DRPasteAnnouncementAccessibilityValueKey;
    v34[1] = @"SBUIPresentableShouldBypassScreenSharingUserInfoKey";
    v35[0] = v17;
    v35[1] = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v30 = 0;
    v25 = [v10 postPresentable:v14 options:1 userInfo:v24 error:&v30];
    v16 = v30;

    v26 = DRLogTarget();
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Annoucing paste %@", buf, 0xCu);
      }

      v28 = v14;
      v27 = qword_1000634D8;
      qword_1000634D8 = v28;
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB40(v16, v27);
    }

    announcementCopy = v29;
  }

  else
  {
    v14 = DRLogTarget();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBB8(v12, v14);
    }

    v16 = v12;
  }
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