@interface CISIntegrationServerModule
- (CISIntegrationServerModule)init;
- (void)activate;
- (void)receivedNotificationNamed:(id)a3;
@end

@implementation CISIntegrationServerModule

- (CISIntegrationServerModule)init
{
  v6.receiver = self;
  v6.super_class = CISIntegrationServerModule;
  v2 = [(CISIntegrationServerModule *)&v6 init];
  v3 = os_log_create("com.apple.calendar.integrations", "Server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24279B000, v3, OS_LOG_TYPE_INFO, "Integration server module created", v5, 2u);
  }

  return v2;
}

- (void)activate
{
  v3 = os_log_create("com.apple.calendar.integrations", "Server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24279B000, v3, OS_LOG_TYPE_INFO, "Integration server module activated", v8, 2u);
  }

  v4 = objc_alloc_init(_TtC26CalendarIntegrationSupport17IntegrationServer);
  server = self->server;
  self->server = v4;

  [(IntegrationServer *)self->server startServer];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_regularSyncRequested name:*MEMORY[0x277CF7678] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_catchupSyncRequested name:*MEMORY[0x277CF70F8] object:0];
}

- (void)receivedNotificationNamed:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.reminderkit.storeChanged"])
  {
    server = self->server;

    [(IntegrationServer *)server requestRegularSync];
  }
}

@end