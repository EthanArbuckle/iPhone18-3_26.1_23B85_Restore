@interface EMFEmojiPreferencesService
+ (id)sharedServiceWithMachName:(id)name;
- (BOOL)allowsConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (EMFEmojiPreferences)preferences;
- (EMFEmojiPreferencesService)initWithMachName:(id)name;
- (id)obtainApplicationIdentifierFromConnection:(id)connection;
- (id)obtainBundleIdentifierFromConnection:(id)connection;
- (void)_createPreferencesIfNecessary;
- (void)dealloc;
@end

@implementation EMFEmojiPreferencesService

+ (id)sharedServiceWithMachName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = nameCopy;
  }

  else
  {
    v4 = @"com.apple.TextInput.emoji";
  }

  if (+[EMFEmojiPreferencesService sharedServiceWithMachName:]::onceToken != -1)
  {
    +[EMFEmojiPreferencesService sharedServiceWithMachName:];
  }

  v5 = [+[EMFEmojiPreferencesService sharedServiceWithMachName:]::_services objectForKey:v4];
  if (!v5)
  {
    v5 = [[EMFEmojiPreferencesService alloc] initWithMachName:v4];
    [+[EMFEmojiPreferencesService sharedServiceWithMachName:]::_services setObject:v5 forKey:v4];
  }

  return v5;
}

uint64_t __56__EMFEmojiPreferencesService_sharedServiceWithMachName___block_invoke()
{
  +[EMFEmojiPreferencesService sharedServiceWithMachName:]::_services = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

- (EMFEmojiPreferencesService)initWithMachName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = EMFEmojiPreferencesService;
  v5 = [(EMFEmojiPreferencesService *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.TextInput.emoji", 0);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v8 = v5->_dispatchQueue;
    v9 = dispatch_get_global_queue(2, 0);
    dispatch_set_target_queue(v8, v9);

    v10 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    listener = v5->_listener;
    v5->_listener = v10;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    [(NSXPCListener *)v5->_listener _setQueue:v5->_dispatchQueue];
    [(NSXPCListener *)v5->_listener resume];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;

  preferences = self->_preferences;
  self->_preferences = 0;

  v5.receiver = self;
  v5.super_class = EMFEmojiPreferencesService;
  [(EMFEmojiPreferencesService *)&v5 dealloc];
}

- (void)_createPreferencesIfNecessary
{
  if (!self->_preferences)
  {
    v4 = objc_alloc_init(EMFEmojiPreferences);
    preferences = self->_preferences;
    self->_preferences = v4;

    v6 = self->_preferences;

    [(EMFEmojiPreferences *)v6 readEmojiDefaults];
  }
}

- (EMFEmojiPreferences)preferences
{
  [(EMFEmojiPreferencesService *)self _createPreferencesIfNecessary];
  preferences = self->_preferences;

  return preferences;
}

- (id)obtainApplicationIdentifierFromConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
    v5 = SecTaskCreateWithAuditToken(0, &token);
    v6 = v5;
    v11 = v5;
    if (v5)
    {
      *token.val = 0;
      v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", &token);
      if (*token.val)
      {
        CFRelease(*token.val);
      }

      v8 = v7;
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)obtainBundleIdentifierFromConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy && ([connectionCopy _xpcConnection], v5 = objc_claimAutoreleasedReturnValue(), v6 = xpc_connection_copy_bundle_id(), v5, v6))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allowsConnection:(id)connection
{
  connectionCopy = connection;
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  v5 = [(EMFEmojiPreferencesService *)self obtainApplicationIdentifierFromConnection:connectionCopy];
  v6 = [(EMFEmojiPreferencesService *)self obtainBundleIdentifierFromConnection:connectionCopy];
  if ([v5 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"com.apple."))
  {

LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v9 = emf_logging_get_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(EMFEmojiPreferencesService *)v5 allowsConnection:v6, v9];
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(EMFEmojiPreferencesService *)self allowsConnection:connectionCopy];
  if (v6)
  {
    [(EMFEmojiPreferencesService *)self _createPreferencesIfNecessary];
    preferences = [(EMFEmojiPreferencesService *)self preferences];
    [connectionCopy setExportedObject:preferences];

    v8 = +[EMFEmojiPreferencesClient serviceInterface];
    [connectionCopy setExportedInterface:v8];

    dispatchQueue = [(EMFEmojiPreferencesService *)self dispatchQueue];
    [connectionCopy _setQueue:dispatchQueue];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__EMFEmojiPreferencesService_listener_shouldAcceptNewConnection___block_invoke;
    v12[3] = &unk_1E7A5F990;
    v12[4] = self;
    [connectionCopy setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__EMFEmojiPreferencesService_listener_shouldAcceptNewConnection___block_invoke_2;
    v11[3] = &unk_1E7A5F990;
    v11[4] = self;
    [connectionCopy setInvalidationHandler:v11];
    [connectionCopy resume];
  }

  return v6;
}

- (void)allowsConnection:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "EMFEmojiPreferencesService rejected client connection (appId: %@ bundleId: %@)", &v3, 0x16u);
}

@end