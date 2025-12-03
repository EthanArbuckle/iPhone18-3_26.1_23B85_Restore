@interface FAPeopleDiscoveryService
+ (id)sharedInstance;
- (FAPeopleDiscoveryService)init;
- (id)getNearbyPeople;
- (void)dealloc;
- (void)stopMonitoringProximity;
@end

@implementation FAPeopleDiscoveryService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FAPeopleDiscoveryService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __42__FAPeopleDiscoveryService_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(FAPeopleDiscoveryService);

  return MEMORY[0x1EEE66BB8]();
}

- (FAPeopleDiscoveryService)init
{
  v8.receiver = self;
  v8.super_class = FAPeopleDiscoveryService;
  v2 = [(FAPeopleDiscoveryService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C6BA8]);
    peopleDiscovery = v2->_peopleDiscovery;
    v2->_peopleDiscovery = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.family.peoplediscovery", v5);
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDispatchQueue:v6];

    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryMode:400];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryFlags:88];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setScanRate:20];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setChangeFlags:0xFFFFFFFFLL];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonFoundHandler:&__block_literal_global_5];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonLostHandler:&__block_literal_global_8];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonChangedHandler:&__block_literal_global_12];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInvalidationHandler:&__block_literal_global_16];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInterruptionHandler:&__block_literal_global_19];
  }

  return v2;
}

void __32__FAPeopleDiscoveryService_init__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "Found new person: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __32__FAPeopleDiscoveryService_init__block_invoke_6(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "Lost person: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __32__FAPeopleDiscoveryService_init__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "Changed person: %@, changes: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __32__FAPeopleDiscoveryService_init__block_invoke_14()
{
  v0 = _FALogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B70B0000, v0, OS_LOG_TYPE_DEFAULT, "People discovery session invalidated", v1, 2u);
  }
}

void __32__FAPeopleDiscoveryService_init__block_invoke_17()
{
  v0 = _FALogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B70B0000, v0, OS_LOG_TYPE_DEFAULT, "People discovery session interrupted", v1, 2u);
  }
}

- (void)dealloc
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "dealloc people discovery", buf, 2u);
  }

  [(RPPeopleDiscovery *)self->_peopleDiscovery invalidate];
  v4.receiver = self;
  v4.super_class = FAPeopleDiscoveryService;
  [(FAPeopleDiscoveryService *)&v4 dealloc];
}

void __52__FAPeopleDiscoveryService_startMonitoringProximity__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _FALogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Error activating people discovery: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "Activated people discovery";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringProximity
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "invalidating people discovery", v4, 2u);
  }

  [(RPPeopleDiscovery *)self->_peopleDiscovery invalidate];
}

- (id)getNearbyPeople
{
  v3 = [MEMORY[0x1E695DFA8] set];
  dispatchQueue = [(RPPeopleDiscovery *)self->_peopleDiscovery dispatchQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__FAPeopleDiscoveryService_getNearbyPeople__block_invoke;
  v9[3] = &unk_1E7CA4F08;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(dispatchQueue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __43__FAPeopleDiscoveryService_getNearbyPeople__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) discoveredPeople];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v16 + 1) + 8 * i) contactID];
        if (v7)
        {
          [*(a1 + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v8 = [v2 count];
  v9 = _FALogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      v21 = v2;
      v22 = 2112;
      v23 = v11;
      v12 = "Found nearby people: %@, nearbyContactIDs: %@";
      v13 = v9;
      v14 = 22;
LABEL_15:
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else if (v10)
  {
    *buf = 0;
    v12 = "No nearby people to boost family suggestions";
    v13 = v9;
    v14 = 2;
    goto LABEL_15;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end