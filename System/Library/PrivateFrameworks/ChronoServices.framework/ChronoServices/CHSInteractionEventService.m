@interface CHSInteractionEventService
- (CHSInteractionEventService)init;
- (CHSInteractionEventService)initWithConnection:(id)a3;
- (void)applicationEnteredForegroundWithBundleID:(id)a3;
- (void)userEnteredAddGalleryForHost:(id)a3;
@end

@implementation CHSInteractionEventService

- (CHSInteractionEventService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSInteractionEventService *)self initWithConnection:v3];

  return v4;
}

- (CHSInteractionEventService)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSInteractionEventService;
  v6 = [(CHSInteractionEventService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)userEnteredAddGalleryForHost:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CHSLogChronoServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "User entered add gallery for host: %{public}@", &v7, 0xCu);
  }

  [(CHSChronoServicesConnection *)self->_connection performDescriptorDiscoveryForHost:v4];
  [(CHSChronoServicesConnection *)self->_connection retryStuckRemotePairings];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationEnteredForegroundWithBundleID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CHSLogChronoServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "noting foreground launch for %@ with widget extension; trigger metadata query", &v7, 0xCu);
  }

  [(CHSChronoServicesConnection *)self->_connection reloadDescriptorsForContainerBundleIdentifier:v4 completion:&__block_literal_global_7];
  v6 = *MEMORY[0x1E69E9840];
}

void __71__CHSInteractionEventService_applicationEnteredForegroundWithBundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __93__CHSApplicationProcessStateChangeConsumer_applicationWithBundleIdentifierEnteredForeground___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v3 = [v5 descriptors];
        v8 = [v3 count];
      }

      else
      {
        v8 = 0;
      }

      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "CHSApplicationProcessStateChangeConsumer: cacheDescriptors request completed with %lu extensions found", &v10, 0xCu);
      if (v5)
      {
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end