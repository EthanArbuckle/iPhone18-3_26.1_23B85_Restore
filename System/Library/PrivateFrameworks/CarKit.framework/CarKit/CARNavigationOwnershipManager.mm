@interface CARNavigationOwnershipManager
- (CARNavigationOwnershipManager)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (CARNavigationOwnershipManagerDelegate)delegate;
- (NSString)lastNavigatingBundleIdentifier;
- (unint64_t)owner;
- (void)_handleConnectionReset;
- (void)_setupConnection;
- (void)invalidate;
- (void)navigationOwnershipChangedTo:(unint64_t)to;
- (void)releaseNavigationOwnership;
- (void)requestNavigationOwnership;
@end

@implementation CARNavigationOwnershipManager

- (CARNavigationOwnershipManager)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CARNavigationOwnershipManager;
  v8 = [(CARNavigationOwnershipManager *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v8->_ownershipRequested = 0;
    [(CARNavigationOwnershipManager *)v8 _setupConnection];
  }

  return v8;
}

- (void)invalidate
{
  connection = [(CARNavigationOwnershipManager *)self connection];
  [connection invalidate];
}

- (void)requestNavigationOwnership
{
  connection = [(CARNavigationOwnershipManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  identifier = [(CARNavigationOwnershipManager *)self identifier];
  [remoteObjectProxy addNavigationOwnerWithIdentifier:identifier];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CARNavigationOwnershipManager_requestNavigationOwnership__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)releaseNavigationOwnership
{
  connection = [(CARNavigationOwnershipManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  identifier = [(CARNavigationOwnershipManager *)self identifier];
  [remoteObjectProxy removeNavigationOwnerWithIdentifier:identifier];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CARNavigationOwnershipManager_releaseNavigationOwnership__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (unint64_t)owner
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  connection = [(CARNavigationOwnershipManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CARNavigationOwnershipManager_owner__block_invoke;
  v10[3] = &unk_1E82FDAA0;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [remoteObjectProxy fetchNavigationOwnerWithReply:v10];

  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (NSString)lastNavigatingBundleIdentifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  connection = [(CARNavigationOwnershipManager *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CARNavigationOwnershipManager_lastNavigatingBundleIdentifier__block_invoke;
  v10[3] = &unk_1E82FDAC8;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [remoteObjectProxy fetchNavigationIdentifierWithReply:v10];

  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __63__CARNavigationOwnershipManager_lastNavigatingBundleIdentifier__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.navowners.service" options:4096];
  v4 = CRCarPlayNavigationOwnerClientInterface();
  [v3 setExportedInterface:v4];

  [v3 setExportedObject:self];
  v5 = CRCarPlayNavigationOwnersServiceInterface();
  [v3 setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__CARNavigationOwnershipManager__setupConnection__block_invoke;
  v8[3] = &unk_1E82FC248;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit navigation ownership service.", v7, 2u);
  }

  [v3 resume];
  [(CARNavigationOwnershipManager *)self setConnection:v3];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__CARNavigationOwnershipManager__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupConnection];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _handleConnectionReset];
}

- (void)_handleConnectionReset
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CARNavigationOwnershipManager__handleConnectionReset__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CARNavigationOwnershipManager__handleConnectionReset__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) ownershipRequested])
  {
    v2 = [*(a1 + 32) connection];
    v3 = [v2 remoteObjectProxy];
    v4 = [*(a1 + 32) identifier];
    [v3 addNavigationOwnerWithIdentifier:v4];

    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Requesting navigation ownership after connection interruption with identifier: %{public}@", &v7, 0xCu);
    }
  }
}

- (void)navigationOwnershipChangedTo:(unint64_t)to
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"None";
    if (to == 1)
    {
      v6 = @"iOS";
    }

    if (to == 2)
    {
      v6 = @"Car";
    }

    v7 = v6;
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "%@: Navigation ownership changed to %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CARNavigationOwnershipManager_navigationOwnershipChangedTo___block_invoke;
  v8[3] = &unk_1E82FD2C8;
  v8[4] = self;
  v8[5] = to;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __62__CARNavigationOwnershipManager_navigationOwnershipChangedTo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 navigationOwnershipChangedToOwner:*(a1 + 40)];
}

- (CARNavigationOwnershipManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end