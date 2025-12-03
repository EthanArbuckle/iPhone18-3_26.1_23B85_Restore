@interface DTApplicationListingService
- (id)installedApplicationsMatching:(id)matching registerUpdateToken:(id)token;
- (void)_sendNotification:(id)notification install:(BOOL)install;
- (void)unregisterUpdateToken:(id)token;
@end

@implementation DTApplicationListingService

- (void)_sendNotification:(id)notification install:(BOOL)install
{
  v5 = &selRef_applicationInstalled_;
  if (!install)
  {
    v5 = &selRef_applicationUninstalled_;
  }

  v7 = [MEMORY[0x277D03668] messageWithSelector:*v5 objectArguments:{notification, 0}];
  channel = [(DTXService *)self channel];
  [channel sendControlAsync:v7 replyHandler:0];
}

- (id)installedApplicationsMatching:(id)matching registerUpdateToken:(id)token
{
  tokenCopy = token;
  matchingCopy = matching;
  v8 = +[DTApplicationWorkspaceObserver sharedInstance];
  v9 = [v8 registerNotificationToken:tokenCopy observer:self query:matchingCopy];

  channel = [(DTXService *)self channel];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FFB6E0;
  v13[3] = &unk_278EF1550;
  v14 = tokenCopy;
  selfCopy = self;
  v11 = tokenCopy;
  [channel registerDisconnectHandler:v13];

  return v9;
}

- (void)unregisterUpdateToken:(id)token
{
  tokenCopy = token;
  v5 = +[DTApplicationWorkspaceObserver sharedInstance];
  [v5 unregisterNotificationToken:tokenCopy observer:self];
}

@end