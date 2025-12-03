@interface OSABridgeLinkProxy
+ (void)setLink:(id)link;
+ (void)transfer:(id)transfer key:(id)key;
- (void)transferInternal:(id)internal key:(id)key;
@end

@implementation OSABridgeLinkProxy

+ (void)setLink:(id)link
{
  linkCopy = link;
  if (_sharedProxyInstance)
  {
    +[OSABridgeLinkProxy setLink:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__OSABridgeLinkProxy_setLink___block_invoke;
  block[3] = &unk_1E7A26EC0;
  v7 = linkCopy;
  v4 = setLink__onceToken;
  v5 = linkCopy;
  if (v4 != -1)
  {
    dispatch_once(&setLink__onceToken, block);
  }
}

- (void)transferInternal:(id)internal key:(id)key
{
  internalCopy = internal;
  keyCopy = key;
  __assert_rtn("[OSABridgeLinkProxy transferInternal:key:]", "OSABridgeLinkProxy.m", 31, "0");
}

+ (void)transfer:(id)transfer key:(id)key
{
  transferCopy = transfer;
  keyCopy = key;
  if (OSAIsRSDDevice())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    if (OSAIsConfiguredRSDDevice() && [standardUserDefaults BOOLForKey:@"disablePushOnWrite"])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping transfer from proxy-configured device with disablePushOnWrite set", v9, 2u);
      }
    }

    else if (_sharedProxyInstance)
    {
      [_sharedProxyInstance transferInternal:transferCopy key:keyCopy];
    }

    else
    {
      if (transfer_key__tok != -1)
      {
        +[OSABridgeLinkProxy transfer:key:];
      }

      if (transfer_key__connection)
      {
        v8 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v8, "operation", 5uLL);
        xpc_dictionary_set_string(v8, "log_filepath", [transferCopy UTF8String]);
        xpc_dictionary_set_string(v8, "log_countkey", [keyCopy UTF8String]);
        xpc_connection_send_message(transfer_key__connection, v8);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping transfer from unsupported device", buf, 2u);
  }
}

void __35__OSABridgeLinkProxy_transfer_key___block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.osanalytics.osanalyticshelper", 0, 2uLL);
  v1 = transfer_key__connection;
  transfer_key__connection = mach_service;

  if (transfer_key__connection)
  {
    xpc_connection_set_event_handler(transfer_key__connection, &__block_literal_global_11);
    v2 = transfer_key__connection;
    v3 = *MEMORY[0x1E69E9840];

    xpc_connection_resume(v2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "com.apple.osanalytics.osanalyticshelper";
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No XPC connection to %s", &v5, 0xCu);
    }

    v4 = *MEMORY[0x1E69E9840];
  }
}

void __35__OSABridgeLinkProxy_transfer_key___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 != MEMORY[0x1E69E9E18] && MEMORY[0x1B2703B90](v2) == MEMORY[0x1E69E9E98] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
    v6 = 136315394;
    v7 = "com.apple.osanalytics.osanalyticshelper";
    v8 = 2080;
    v9 = string;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "xpc error message from %s: %s\n", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end