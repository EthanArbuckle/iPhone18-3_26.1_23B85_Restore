@interface DTApplicationListingService
- (id)installedApplicationsMatching:(id)a3 registerUpdateToken:(id)a4;
- (void)_sendNotification:(id)a3 install:(BOOL)a4;
- (void)unregisterUpdateToken:(id)a3;
@end

@implementation DTApplicationListingService

- (void)_sendNotification:(id)a3 install:(BOOL)a4
{
  v5 = &selRef_applicationInstalled_;
  if (!a4)
  {
    v5 = &selRef_applicationUninstalled_;
  }

  v7 = [MEMORY[0x277D03668] messageWithSelector:*v5 objectArguments:{a3, 0}];
  v6 = [(DTXService *)self channel];
  [v6 sendControlAsync:v7 replyHandler:0];
}

- (id)installedApplicationsMatching:(id)a3 registerUpdateToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[DTApplicationWorkspaceObserver sharedInstance];
  v9 = [v8 registerNotificationToken:v6 observer:self query:v7];

  v10 = [(DTXService *)self channel];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FFB6E0;
  v13[3] = &unk_278EF1550;
  v14 = v6;
  v15 = self;
  v11 = v6;
  [v10 registerDisconnectHandler:v13];

  return v9;
}

- (void)unregisterUpdateToken:(id)a3
{
  v4 = a3;
  v5 = +[DTApplicationWorkspaceObserver sharedInstance];
  [v5 unregisterNotificationToken:v4 observer:self];
}

@end