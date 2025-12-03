@interface CUTNetworkInterfaceListener
+ (id)sharedInstance;
- (CUTNetworkInterfaceListener)init;
- (void)_handleNetworkChange:(id)change;
- (void)_notifyDelegatesOfAddressChange:(id)change isIPv6:(BOOL)pv6;
- (void)_notifyDelegatesOfCellChange:(int)change;
- (void)_notifyDelegatesOfWifiChange:(int)change;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
@end

@implementation CUTNetworkInterfaceListener

+ (id)sharedInstance
{
  if (qword_1ED4AE450 != -1)
  {
    sub_1B2331004();
  }

  v3 = qword_1EB7AAD40;

  return v3;
}

- (CUTNetworkInterfaceListener)init
{
  v13.receiver = self;
  v13.super_class = CUTNetworkInterfaceListener;
  v2 = [(CUTNetworkInterfaceListener *)&v13 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    *(v2 + 4) = -1;
    v4 = dispatch_queue_create("com.apple.cut.delegate", 0);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    context.version = 0;
    context.info = v2;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = 0;
    v6 = SCDynamicStoreCreate(0, @"com.apple.cutnetworkinterfacelistener", sub_1B2326370, &context);
    *(v2 + 1) = v6;
    if (v6)
    {
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"State:/Network/Interface/[^/]+/IPv4", @"State:/Network/Interface/[^/]+/IPv6", 0}];
      if (SCDynamicStoreSetNotificationKeys(*(v2 + 1), 0, v7))
      {
        v8 = *(v2 + 1);
        v9 = dispatch_get_global_queue(0, 0);
        SCDynamicStoreSetDispatchQueue(v8, v9);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          sub_1B2331018();
        }

        CFRelease(*(v2 + 1));
        *(v2 + 1) = 0;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B2331060();
    }

    objc_autoreleasePoolPop(v3);
    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_dynamicStore);
  v3.receiver = self;
  v3.super_class = CUTNetworkInterfaceListener;
  [(CUTNetworkInterfaceListener *)&v3 dealloc];
}

- (void)_handleNetworkChange:(id)change
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = change;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v20 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(__CFString *)v8 hasPrefix:@"State:/Network/Interface/en", v20];
        v10 = [(__CFString *)v8 hasPrefix:@"State:/Network/Interface/pdp_ip"];
        v11 = v10;
        if ((v9 & 1) != 0 || v10)
        {
          v12 = [(__CFString *)v8 hasSuffix:@"/IPv6"];
          v13 = SCDynamicStoreCopyValue(self->_dynamicStore, v8);
          if (v13)
          {
            v14 = v13;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v14))
            {
              v16 = [v14 objectForKey:@"Addresses"];
              v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v16];
              [(CUTNetworkInterfaceListener *)self _notifyDelegatesOfAddressChange:v17 isIPv6:v12];
            }

            CFRelease(v14);
            v18 = 1;
            v6 = v20;
            if (v11)
            {
LABEL_12:
              [(CUTNetworkInterfaceListener *)self _notifyDelegatesOfCellChange:v18];
              continue;
            }
          }

          else
          {
            v18 = 0;
            if (v11)
            {
              goto LABEL_12;
            }
          }

          if (v9)
          {
            [(CUTNetworkInterfaceListener *)self _notifyDelegatesOfWifiChange:v18];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegatesOfWifiChange:(int)change
{
  delegateQueue = self->_delegateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232664C;
  v4[3] = &unk_1E7B20D20;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(delegateQueue, v4);
}

- (void)_notifyDelegatesOfCellChange:(int)change
{
  delegateQueue = self->_delegateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B2326800;
  v4[3] = &unk_1E7B20D20;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(delegateQueue, v4);
}

- (void)_notifyDelegatesOfAddressChange:(id)change isIPv6:(BOOL)pv6
{
  changeCopy = change;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B23269E4;
  block[3] = &unk_1E7B20D48;
  pv6Copy = pv6;
  block[4] = self;
  v10 = changeCopy;
  v8 = changeCopy;
  dispatch_async(delegateQueue, block);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B2326BF8;
  v7[3] = &unk_1E7B20D70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B2326D14;
  v7[3] = &unk_1E7B20D70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

@end