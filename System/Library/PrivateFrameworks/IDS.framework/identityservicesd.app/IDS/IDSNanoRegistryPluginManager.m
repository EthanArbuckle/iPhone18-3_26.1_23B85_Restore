@interface IDSNanoRegistryPluginManager
+ (id)sharedInstance;
- (IDSNanoRegistryPluginManager)init;
- (void)_initializePlugin;
- (void)_initializePluginWithClass:(Class)a3;
- (void)executeSynchronouslyOnCallbackQueue:(id)a3;
- (void)initializePluginWithClass:(Class)a3;
- (void)notifyWatchDidStartAdvertisingWithPeripheralManager:(id)a3;
- (void)notifyWatchDidStopAdvertisingWithPeripheralManager:(id)a3;
- (void)notifyWatchToStartAdvertising;
- (void)notifyWatchToStopAdvertising;
@end

@implementation IDSNanoRegistryPluginManager

+ (id)sharedInstance
{
  if (qword_100CBD0C8 != -1)
  {
    sub_1009177F4();
  }

  v3 = qword_100CBD0C0;

  return v3;
}

- (IDSNanoRegistryPluginManager)init
{
  v10.receiver = self;
  v10.super_class = IDSNanoRegistryPluginManager;
  v2 = [(IDSNanoRegistryPluginManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.IDS.IDSNanoRegistryPluginManager.callbackQ", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    v6 = v2->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100356C64;
    block[3] = &unk_100BD6ED0;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

- (void)notifyWatchDidStartAdvertisingWithPeripheralManager:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100356D4C;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, v7);
}

- (void)notifyWatchToStartAdvertising
{
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100356E4C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)notifyWatchDidStopAdvertisingWithPeripheralManager:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100357060;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, v7);
}

- (void)notifyWatchToStopAdvertising
{
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100357174;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)initializePluginWithClass:(Class)a3
{
  callbackQueue = self->_callbackQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100357364;
  v4[3] = &unk_100BD8DC0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(callbackQueue, v4);
}

- (void)executeSynchronouslyOnCallbackQueue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035740C;
    block[3] = &unk_100BD7270;
    v8 = v4;
    dispatch_sync(callbackQueue, block);
  }
}

- (void)_initializePlugin
{
  v3 = [[NSBundle alloc] initWithPath:@"/System/Library/IdentityServices/Plugins/com.apple.NanoRegistry.bundle"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 principalClass];
    if (v5)
    {
      [(IDSNanoRegistryPluginManager *)self _initializePluginWithClass:v5];
      goto LABEL_14;
    }

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bundle has no principal class", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_13:
      _IDSLogV();
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to initialize bundle", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)_initializePluginWithClass:(Class)a3
{
  v5 = &OBJC_PROTOCOL___IDSPluginNanoRegistryProtocol;
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      if ([(objc_class *)a3 conformsToProtocol:v5])
      {
        v7 = objc_alloc_init(a3);
        plugin = self->_plugin;
        self->_plugin = v7;

        if (self->_plugin)
        {
          v9 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Plugin initialized successfully", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          if (objc_opt_respondsToSelector())
          {
            self->_pluginImplementsWatchDidStartAdvertising = 1;
          }

          if (objc_opt_respondsToSelector())
          {
            self->_pluginImplementsWatchDidStopAdvertising = 1;
            goto LABEL_41;
          }

          if (!self->_pluginImplementsWatchDidStopAdvertising && !self->_pluginImplementsWatchDidStartAdvertising)
          {
            v14 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Plugin does not respond to any useful messages", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLog())
              {
LABEL_40:
                _IDSLogV();
              }
            }
          }
        }

        else
        {
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Plugin failed to initialize", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          Name = class_getName(a3);
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Plugin class %{public}s does not conform to protocol", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          class_getName(a3);
          _IDSLogV();
        }
      }
    }

    else
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Protocol is nil", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Plugin class is nil", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_40;
    }
  }

LABEL_41:
}

@end