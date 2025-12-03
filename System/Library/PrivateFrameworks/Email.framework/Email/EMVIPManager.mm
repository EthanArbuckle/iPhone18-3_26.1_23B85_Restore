@interface EMVIPManager
+ (NSXPCInterface)remoteInterface;
+ (OS_os_log)log;
+ (id)_plistURL;
- (BOOL)hasVIPs;
- (BOOL)isUsingRemoteConnection;
- (BOOL)isVIPAddress:(id)address;
- (EAEmailAddressSet)allVIPEmailAddresses;
- (EMVIPManager)init;
- (EMVIPManager)initWithRemoteConnection:(id)connection;
- (NSSet)allVIPWaitForResult;
- (NSSet)allVIPs;
- (id)_vipsByIdentifier;
- (id)_vipsByIdentifierFuture;
- (id)_vipsDictionaryFromPlist;
- (id)vipWithIdentifier:(id)identifier;
- (void)_loadVIPs;
- (void)_reset;
- (void)_startObservingVIPChangesIfNecessary;
- (void)dealloc;
- (void)didFinishBlockingMainThreadForFuture:(id)future;
- (void)didStartBlockingMainThreadForFuture:(id)future;
- (void)getAllVIPsWithCompletion:(id)completion;
- (void)observer:(id)observer gotVIPs:(id)ps;
- (void)observer:(id)observer updatedVIPs:(id)ps removedVIPs:(id)iPs;
- (void)removeVIPsWithEmailAddresses:(id)addresses;
- (void)removeVIPsWithIdentifiers:(id)identifiers;
- (void)saveVIPs:(id)ps;
@end

@implementation EMVIPManager

+ (NSXPCInterface)remoteInterface
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46365B8];
  [v10 setClasses:v2 forSelector:sel_observer_gotVIPs_ argumentIndex:0 ofReply:0];
  [v10 setClasses:v5 forSelector:sel_observer_gotVIPs_ argumentIndex:1 ofReply:0];
  [v10 setClasses:v2 forSelector:sel_observer_updatedVIPs_removedVIPs_ argumentIndex:0 ofReply:0];
  [v10 setClasses:v5 forSelector:sel_observer_updatedVIPs_removedVIPs_ argumentIndex:1 ofReply:0];
  [v10 setClasses:v5 forSelector:sel_observer_updatedVIPs_removedVIPs_ argumentIndex:2 ofReply:0];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641D50];
  [v11 setInterface:v10 forSelector:sel_registerObserver_observationIdentifier_ argumentIndex:0 ofReply:0];
  [v11 setClasses:v2 forSelector:sel_registerObserver_observationIdentifier_ argumentIndex:1 ofReply:0];
  [v11 setClasses:v2 forSelector:sel_cancelObservation_ argumentIndex:0 ofReply:0];
  [v11 setClasses:v5 forSelector:sel_saveVIPs_ argumentIndex:0 ofReply:0];
  [v11 setClasses:v8 forSelector:sel_removeVIPsWithIdentifiers_ argumentIndex:0 ofReply:0];
  [v11 setClasses:v9 forSelector:sel_removeVIPsWithEmailAddresses_ argumentIndex:0 ofReply:0];

  return v11;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__EMVIPManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_42 != -1)
  {
    dispatch_once(&log_onceToken_42, block);
  }

  v2 = log_log_42;

  return v2;
}

void __19__EMVIPManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_42;
  log_log_42 = v1;
}

- (EMVIPManager)init
{
  if (sharedClientVIPManager_onceToken != -1)
  {
    [EMVIPManager init];
  }

  v3 = sharedClientVIPManager_vipManager;

  return v3;
}

- (EMVIPManager)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = EMVIPManager;
  v6 = [(EMVIPManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_vipsLock._os_unfair_lock_opaque = 0;
    promise = [MEMORY[0x1E699B868] promise];
    vipsByIdentifierPromise = v7->_vipsByIdentifierPromise;
    v7->_vipsByIdentifierPromise = promise;

    future = [(EFPromise *)v7->_vipsByIdentifierPromise future];
    [future setDelegate:v7];

    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__EMVIPManager_initWithRemoteConnection___block_invoke;
    v13[3] = &unk_1E826C070;
    objc_copyWeak(&v14, &location);
    [(EMRemoteConnection *)connection addResetHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __41__EMVIPManager_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_observerCancelationToken cancel];
  v3.receiver = self;
  v3.super_class = EMVIPManager;
  [(EMVIPManager *)&v3 dealloc];
}

- (BOOL)isUsingRemoteConnection
{
  connection = [(EMVIPManager *)self connection];
  v3 = connection != 0;

  return v3;
}

- (void)_startObservingVIPChangesIfNecessary
{
  if ([(EMVIPManager *)self isUsingRemoteConnection])
  {
    os_unfair_lock_lock(&self->_vipsLock);
    if (!self->_observerCancelationToken)
    {
      objc_initWeak(location, self);
      connection = [(EMVIPManager *)self connection];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __52__EMVIPManager__startObservingVIPChangesIfNecessary__block_invoke;
      v15[3] = &unk_1E826F878;
      objc_copyWeak(&v16, location);
      v4 = [connection remoteObjectProxyWithErrorHandler:v15];

      v5 = [[EMObjectID alloc] initAsEphemeralID:1];
      [v4 registerObserver:self observationIdentifier:v5];
      v6 = MEMORY[0x1E699B7F8];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__EMVIPManager__startObservingVIPChangesIfNecessary__block_invoke_95;
      v12[3] = &unk_1E826C148;
      v7 = v4;
      v13 = v7;
      v8 = v5;
      v14 = v8;
      v9 = [v6 tokenWithCancelationBlock:v12];
      observerCancelationToken = self->_observerCancelationToken;
      self->_observerCancelationToken = v9;

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    os_unfair_lock_unlock(&self->_vipsLock);
  }

  else
  {
    v11 = +[EMVIPManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "Not setting up VIP observer because a remote connection is not setup.", location, 2u);
    }
  }
}

void __52__EMVIPManager__startObservingVIPChangesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[EMVIPManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 ef_publicDescription];
    __52__EMVIPManager__startObservingVIPChangesIfNecessary__block_invoke_cold_1(v6, v8, v5);
  }

  [WeakRetained _reset];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_reset
{
  os_unfair_lock_lock(&self->_vipsLock);
  if (self->_observerCancelationToken)
  {
    vipsByIdentifierPromise = [(EMVIPManager *)self vipsByIdentifierPromise];
    promise = [MEMORY[0x1E699B868] promise];
    [(EMVIPManager *)self setVipsByIdentifierPromise:promise];

    vipsByIdentifierPromise2 = [(EMVIPManager *)self vipsByIdentifierPromise];
    future = [vipsByIdentifierPromise2 future];
    [future setDelegate:self];

    [(EAEmailAddressSet *)self->_cachedEmailAddresses removeAllObjects];
    [(EFManualCancelationToken *)self->_observerCancelationToken removeAllCancelationBlocks];
    observerCancelationToken = self->_observerCancelationToken;
    self->_observerCancelationToken = 0;

    os_unfair_lock_unlock(&self->_vipsLock);
    if (vipsByIdentifierPromise)
    {
      ef_cancelledError = [MEMORY[0x1E696ABC0] ef_cancelledError];
      [vipsByIdentifierPromise finishWithError:ef_cancelledError];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_vipsLock);
  }
}

- (BOOL)hasVIPs
{
  _vipsByIdentifier = [(EMVIPManager *)self _vipsByIdentifier];
  os_unfair_lock_lock(&self->_vipsLock);
  v4 = [_vipsByIdentifier count] != 0;
  os_unfair_lock_unlock(&self->_vipsLock);

  return v4;
}

- (BOOL)isVIPAddress:(id)address
{
  addressCopy = address;
  allVIPEmailAddresses = [(EMVIPManager *)self allVIPEmailAddresses];
  v6 = [allVIPEmailAddresses containsObject:addressCopy];

  return v6;
}

- (NSSet)allVIPWaitForResult
{
  if (![(EMVIPManager *)self isUsingRemoteConnection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:199 description:@"This can only be called when using a remote connection."];
  }

  vipsByIdentifierPromise = [(EMVIPManager *)self vipsByIdentifierPromise];
  [(EMVIPManager *)self _startObservingVIPChangesIfNecessary];
  future = [vipsByIdentifierPromise future];
  v6 = [future result:0];

  os_unfair_lock_lock(&self->_vipsLock);
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  allValues = [v6 allValues];
  v9 = [v7 initWithArray:allValues];

  os_unfair_lock_unlock(&self->_vipsLock);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v11 = v10;

  return v11;
}

- (NSSet)allVIPs
{
  _vipsByIdentifier = [(EMVIPManager *)self _vipsByIdentifier];
  os_unfair_lock_lock(&self->_vipsLock);
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  allValues = [_vipsByIdentifier allValues];
  v6 = [v4 initWithArray:allValues];

  os_unfair_lock_unlock(&self->_vipsLock);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v8 = v7;

  return v8;
}

- (EAEmailAddressSet)allVIPEmailAddresses
{
  _vipsByIdentifier = [(EMVIPManager *)self _vipsByIdentifier];
  os_unfair_lock_lock(&self->_vipsLock);
  cachedEmailAddresses = self->_cachedEmailAddresses;
  if (!cachedEmailAddresses)
  {
    v5 = objc_alloc_init(MEMORY[0x1E699AFD8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__EMVIPManager_allVIPEmailAddresses__block_invoke;
    v13[3] = &unk_1E8270170;
    v6 = v5;
    v14 = v6;
    [_vipsByIdentifier enumerateKeysAndObjectsUsingBlock:v13];
    v7 = [v6 copy];
    v8 = self->_cachedEmailAddresses;
    self->_cachedEmailAddresses = v7;

    cachedEmailAddresses = self->_cachedEmailAddresses;
  }

  v9 = cachedEmailAddresses;
  os_unfair_lock_unlock(&self->_vipsLock);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  }

  v11 = v10;

  return v11;
}

void __36__EMVIPManager_allVIPEmailAddresses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 emailAddresses];
  [v3 unionSet:?];
}

- (id)vipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _vipsByIdentifier = [(EMVIPManager *)self _vipsByIdentifier];
  os_unfair_lock_lock(&self->_vipsLock);
  v6 = [_vipsByIdentifier objectForKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_vipsLock);

  return v6;
}

- (void)getAllVIPsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(EMVIPManager *)self isUsingRemoteConnection])
  {
    _vipsByIdentifierFuture = [(EMVIPManager *)self _vipsByIdentifierFuture];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__EMVIPManager_getAllVIPsWithCompletion___block_invoke;
    v9[3] = &unk_1E8270198;
    v6 = completionCopy;
    v10 = v6;
    [_vipsByIdentifierFuture addSuccessBlock:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__EMVIPManager_getAllVIPsWithCompletion___block_invoke_2;
    v7[3] = &unk_1E826C738;
    v8 = v6;
    [_vipsByIdentifierFuture addFailureBlock:v7];
  }

  else
  {
    _vipsByIdentifierFuture = [(EMVIPManager *)self allVIPs];
    (*(completionCopy + 2))(completionCopy, _vipsByIdentifierFuture, 0);
  }
}

void __41__EMVIPManager_getAllVIPsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [v7 allValues];
  v6 = [v4 initWithArray:v5];
  (*(v3 + 16))(v3, v6, 0);
}

- (void)saveVIPs:(id)ps
{
  psCopy = ps;
  if (![(EMVIPManager *)self isUsingRemoteConnection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:275 description:@"Not supported when not using a remote connection."];
  }

  [(EMVIPManager *)self _startObservingVIPChangesIfNecessary];
  connection = [(EMVIPManager *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy saveVIPs:psCopy];
}

- (void)removeVIPsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (![(EMVIPManager *)self isUsingRemoteConnection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:281 description:@"Not supported when not using a remote connection."];
  }

  [(EMVIPManager *)self _startObservingVIPChangesIfNecessary];
  connection = [(EMVIPManager *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy removeVIPsWithIdentifiers:identifiersCopy];
}

- (void)removeVIPsWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (![(EMVIPManager *)self isUsingRemoteConnection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:287 description:@"Not supported when not using a remote connection."];
  }

  [(EMVIPManager *)self _startObservingVIPChangesIfNecessary];
  connection = [(EMVIPManager *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy removeVIPsWithEmailAddresses:addressesCopy];
}

- (id)_vipsByIdentifierFuture
{
  if (![(EMVIPManager *)self isUsingRemoteConnection])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:295 description:@"This can only be called when using a remote connection."];
  }

  vipsByIdentifierPromise = [(EMVIPManager *)self vipsByIdentifierPromise];
  [(EMVIPManager *)self _startObservingVIPChangesIfNecessary];
  future = [vipsByIdentifierPromise future];

  return future;
}

- (id)_vipsByIdentifier
{
  if ([(EMVIPManager *)self isUsingRemoteConnection])
  {
    _vipsByIdentifierFuture = [(EMVIPManager *)self _vipsByIdentifierFuture];
    resultIfAvailable = [_vipsByIdentifierFuture resultIfAvailable];

    v5 = MEMORY[0x1E695E0F8];
    if (resultIfAvailable)
    {
      v5 = resultIfAvailable;
    }

    v6 = v5;
  }

  else
  {
    vipsByIdentifier = self->_vipsByIdentifier;
    if (!vipsByIdentifier)
    {
      [(EMVIPManager *)self _loadVIPs];
      vipsByIdentifier = self->_vipsByIdentifier;
    }

    v6 = vipsByIdentifier;
  }

  return v6;
}

- (void)_loadVIPs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  vipsByIdentifier = self->_vipsByIdentifier;
  self->_vipsByIdentifier = v3;

  _vipsDictionaryFromPlist = [(EMVIPManager *)self _vipsDictionaryFromPlist];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__EMVIPManager__loadVIPs__block_invoke;
  v6[3] = &unk_1E826FC10;
  v6[4] = self;
  [_vipsDictionaryFromPlist enumerateKeysAndObjectsUsingBlock:v6];
}

void __25__EMVIPManager__loadVIPs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Name"];
  v7 = [v5 objectForKeyedSubscript:@"EmailAddresses"];
  v8 = [EMVIP alloc];
  v9 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithArray:v7];
  v10 = [(EMVIP *)v8 initWithIdentifier:v11 name:v6 emailAddresses:v9];

  [*(*(a1 + 32) + 40) setObject:v10 forKeyedSubscript:v11];
}

- (id)_vipsDictionaryFromPlist
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  _plistURL = [objc_opt_class() _plistURL];
  v4 = [v2 initWithContentsOfURL:_plistURL];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_plistURL
{
  if (_plistURL_onceToken[0] != -1)
  {
    +[EMVIPManager _plistURL];
  }

  v3 = _plistURL_url;

  return v3;
}

void __25__EMVIPManager__plistURL__block_invoke()
{
  v2 = +[EMPersistenceLayoutManager mailDataDirectory];
  v0 = [v2 URLByAppendingPathComponent:@"VIPs.plist" isDirectory:0];
  v1 = _plistURL_url;
  _plistURL_url = v0;
}

- (void)observer:(id)observer gotVIPs:(id)ps
{
  v31 = *MEMORY[0x1E69E9840];
  psCopy = ps;
  v6 = +[EMVIPManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = [psCopy count];
    _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "got VIPs with count %lu", buf, 0xCu);
  }

  v7 = +[EMVIPManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [EMVIPManager observer:psCopy gotVIPs:v7];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = psCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        identifier = [v13 identifier];
        [v8 setObject:v13 forKeyedSubscript:identifier];
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  vipsByIdentifierPromise = [(EMVIPManager *)self vipsByIdentifierPromise];
  [vipsByIdentifierPromise finishWithResult:v8];

  if ([v8 count])
  {
    v16 = MEMORY[0x1E695DFD8];
    allValues = [v8 allValues];
    v18 = [v16 setWithArray:allValues];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = @"VIPsUpdated";
    v27 = v18;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [defaultCenter postNotificationName:@"VIPsDidChange" object:self userInfo:v20];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)observer:(id)observer updatedVIPs:(id)ps removedVIPs:(id)iPs
{
  v57 = *MEMORY[0x1E69E9840];
  psCopy = ps;
  iPsCopy = iPs;
  v9 = +[EMVIPManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v54 = [psCopy count];
    v55 = 2048;
    v56 = [iPsCopy count];
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "updated VIPs with count %lu and removed VIPs with count %lu", buf, 0x16u);
  }

  v10 = +[EMVIPManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = psCopy;
    v55 = 2112;
    v56 = iPsCopy;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "updated VIPs: %@ and removed VIPs: %@", buf, 0x16u);
  }

  v11 = [psCopy count];
  v12 = [iPsCopy count];
  vipsByIdentifierPromise = [(EMVIPManager *)self vipsByIdentifierPromise];
  future = [vipsByIdentifierPromise future];
  if (![future isFinished])
  {
    goto LABEL_30;
  }

  v35 = v11;

  if (v11 | v12)
  {
    vipsByIdentifierPromise2 = [(EMVIPManager *)self vipsByIdentifierPromise];
    future2 = [vipsByIdentifierPromise2 future];
    vipsByIdentifierPromise = [future2 resultIfAvailable:0];

    if (!vipsByIdentifierPromise)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMVIPManager.m" lineNumber:375 description:@"unexpected call to observer:updatedVIPs:removedVIPs: called before observer:gotVIPs:"];
    }

    os_unfair_lock_lock(&self->_vipsLock);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = psCopy;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v18)
    {
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v41 + 1) + 8 * i);
          identifier = [v21 identifier];
          [vipsByIdentifierPromise setObject:v21 forKeyedSubscript:identifier];
        }

        v18 = [v17 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v18);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = iPsCopy;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v24)
    {
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v23);
          }

          identifier2 = [*(*(&v37 + 1) + 8 * j) identifier];
          [vipsByIdentifierPromise setObject:0 forKeyedSubscript:identifier2];
        }

        v24 = [v23 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v24);
    }

    cachedEmailAddresses = self->_cachedEmailAddresses;
    self->_cachedEmailAddresses = 0;

    os_unfair_lock_unlock(&self->_vipsLock);
    if (v35 == 0 || v12 == 0)
    {
      if (v35)
      {
        v47 = @"VIPsUpdated";
        v48 = v17;
        v29 = &v47;
        v30 = &v48;
      }

      else
      {
        v45 = @"VIPsRemoved";
        v46 = v23;
        v29 = &v45;
        v30 = &v46;
      }

      v31 = 1;
    }

    else
    {
      v49[0] = @"VIPsUpdated";
      v49[1] = @"VIPsRemoved";
      v50[0] = v17;
      v50[1] = v23;
      v29 = v49;
      v30 = v50;
      v31 = 2;
    }

    future = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:{v31, v35}];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VIPsDidChange" object:self userInfo:future];

LABEL_30:
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)didStartBlockingMainThreadForFuture:(id)future
{
  connection = [(EMVIPManager *)self connection];
  requestRecoveryAssertion = [connection requestRecoveryAssertion];
  connectionRecoveryAssertion = self->_connectionRecoveryAssertion;
  self->_connectionRecoveryAssertion = requestRecoveryAssertion;
}

- (void)didFinishBlockingMainThreadForFuture:(id)future
{
  [(EMRemoteConnectionRecoveryAssertion *)self->_connectionRecoveryAssertion invalidate];
  connectionRecoveryAssertion = self->_connectionRecoveryAssertion;
  self->_connectionRecoveryAssertion = 0;
}

void __52__EMVIPManager__startObservingVIPChangesIfNecessary__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "EMVIPManagerInterface failed with error: %{public}@", buf, 0xCu);
}

- (void)observer:(uint64_t)a1 gotVIPs:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "got VIPs: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end