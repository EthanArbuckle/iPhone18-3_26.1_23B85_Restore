@interface FLHeadlessExtensionLoader
+ (id)sharedExtensionQueue;
- (BOOL)_loadExtension:(id *)extension;
- (BOOL)_setupSessionIfNeeded:(id *)needed;
- (FLHeadlessExtensionLoader)initWithFollowUp:(id)up andDelegate:(id)delegate;
- (FLHeadlessExtensionLoader)initWithIdentifier:(id)identifier;
- (NSExtension)extension;
- (id)_hostContextForExtension:(id)extension;
- (id)_loadExtensionForIdentifier:(id)identifier error:(id *)error;
- (id)description;
- (id)remoteInterface;
- (void)_terminate;
- (void)dealloc;
@end

@implementation FLHeadlessExtensionLoader

- (FLHeadlessExtensionLoader)initWithFollowUp:(id)up andDelegate:(id)delegate
{
  delegateCopy = delegate;
  extensionIdentifier = [up extensionIdentifier];
  v8 = [(FLHeadlessExtensionLoader *)self initWithIdentifier:extensionIdentifier];

  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

- (FLHeadlessExtensionLoader)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(FLHeadlessExtensionLoader *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (NSExtension)extension
{
  extension = self->_extension;
  if (!extension)
  {
    identifier = [(FLHeadlessExtensionLoader *)self identifier];
    v5 = [(FLHeadlessExtensionLoader *)self _loadExtensionForIdentifier:identifier error:0];
    v6 = self->_extension;
    self->_extension = v5;

    extension = self->_extension;
  }

  return extension;
}

- (void)_terminate
{
  if (self->_extension && self->_sessionID)
  {
    v3 = _FLLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "Terminating extension...", v4, 2u);
    }

    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:self->_sessionID];
  }
}

- (id)remoteInterface
{
  extensionContext = self->_extensionContext;
  if (!extensionContext)
  {
    [(FLHeadlessExtensionLoader *)self _loadExtension:0];
    extensionContext = self->_extensionContext;
  }

  return extensionContext;
}

- (BOOL)_loadExtension:(id *)extension
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v5 = [(FLHeadlessExtensionLoader *)self _setupSessionIfNeeded:&v25];
  v6 = v25;
  if (v5)
  {
    extension = [(FLHeadlessExtensionLoader *)self extension];
    v8 = [(FLHeadlessExtensionLoader *)self _hostContextForExtension:extension];
    v9 = [v8 remoteContextWithErrorHandler:&__block_literal_global_1];
    extensionContext = self->_extensionContext;
    self->_extensionContext = v9;
  }

  if (extension)
  {
    v11 = v6;
    *extension = v6;
  }

  v12 = self->_extensionContext;
  v13 = _FLLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_extensionContext;
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_22E696000, v14, OS_LOG_TYPE_DEFAULT, "Extension context %@ loaded successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(FLHeadlessExtensionLoader *)v6 _loadExtension:v14, v16, v17, v18, v19, v20, v21];
  }

  v22 = self->_extensionContext != 0;
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __44__FLHeadlessExtensionLoader__loadExtension___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__FLHeadlessExtensionLoader__loadExtension___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (BOOL)_setupSessionIfNeeded:(id *)needed
{
  extension = [(FLHeadlessExtensionLoader *)self extension];
  v6 = extension;
  sessionID = self->_sessionID;
  if (sessionID)
  {
    v8 = 1;
  }

  else
  {
    v8 = extension == 0;
  }

  if (!v8)
  {
    v15 = 0;
    v9 = [extension beginExtensionRequestWithInputItems:MEMORY[0x277CBEBF8] error:&v15];
    v10 = v15;
    v11 = self->_sessionID;
    self->_sessionID = v9;

    if (needed)
    {
      v12 = v10;
      *needed = v10;
    }

    sessionID = self->_sessionID;
  }

  v13 = sessionID != 0;

  return v13;
}

+ (id)sharedExtensionQueue
{
  if (sharedExtensionQueue_onceToken != -1)
  {
    +[FLHeadlessExtensionLoader sharedExtensionQueue];
  }

  v3 = sharedExtensionQueue_sharedExtensionQueue;

  return v3;
}

uint64_t __49__FLHeadlessExtensionLoader_sharedExtensionQueue__block_invoke()
{
  sharedExtensionQueue_sharedExtensionQueue = dispatch_queue_create("com.apple.followup-extension.queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)_loadExtensionForIdentifier:(id)identifier error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = _FLLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_impl(&dword_22E696000, v7, OS_LOG_TYPE_DEFAULT, "Loading extension with identifier: %@", buf, 0xCu);
    }

    v23 = 0;
    v8 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:identifierCopy error:&v23];
    v9 = v23;
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__FLHeadlessExtensionLoader__loadExtensionForIdentifier_error___block_invoke;
    v20[3] = &unk_278852968;
    objc_copyWeak(&v21, &location);
    [v8 setRequestInterruptionBlock:v20];
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    if (v9)
    {
      v11 = _FLLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(FLHeadlessExtensionLoader *)v9 _loadExtensionForIdentifier:v11 error:v12, v13, v14, v15, v16, v17];
      }
    }

    else
    {
      v11 = _FLLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Loaded extension: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

void __63__FLHeadlessExtensionLoader__loadExtensionForIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__FLHeadlessExtensionLoader__loadExtensionForIdentifier_error___block_invoke_cold_1(v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained requestInterruptionBlock];

  if (v6)
  {
    v7 = [WeakRetained requestInterruptionBlock];
    (v7)[2](v7, v3);
  }
}

- (id)_hostContextForExtension:(id)extension
{
  extensionCopy = extension;
  sessionID = [(FLHeadlessExtensionLoader *)self sessionID];
  v6 = [extensionCopy _extensionContextForUUID:sessionID];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v6 setDelegate:WeakRetained];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "%@ going away", buf, 0xCu);
  }

  [(FLHeadlessExtensionLoader *)self _terminate];
  v5.receiver = self;
  v5.super_class = FLHeadlessExtensionLoader;
  [(FLHeadlessExtensionLoader *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadExtension:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E696000, a2, a3, "Failed to load extension context with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__FLHeadlessExtensionLoader__loadExtension___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E696000, a2, a3, "Remote context failed with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_loadExtensionForIdentifier:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_22E696000, a2, a3, "Failed to load extension with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end