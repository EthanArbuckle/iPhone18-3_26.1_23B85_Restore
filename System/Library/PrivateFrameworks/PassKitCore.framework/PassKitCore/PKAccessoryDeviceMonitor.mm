@interface PKAccessoryDeviceMonitor
- (PKAccessoryDeviceMonitor)initWithDelegate:(id)a3;
- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
@end

@implementation PKAccessoryDeviceMonitor

- (PKAccessoryDeviceMonitor)initWithDelegate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKAccessoryDeviceMonitor;
  v5 = [(PKAccessoryDeviceMonitor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    accessoryAttached = v6->_accessoryAttached;
    v6->_accessoryAttached = v7;

    v9 = [(objc_class *)getACCConnectionInfoClass() sharedInstance];
    accessoryConnectionInfo = v6->_accessoryConnectionInfo;
    v6->_accessoryConnectionInfo = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachmentDictionary = v6->_attachmentDictionary;
    v6->_attachmentDictionary = v11;

    v13 = [(ACCConnectionInfo *)v6->_accessoryConnectionInfo registerDelegate:v6];
    v14 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"Unsuccessfully";
      if (v13)
      {
        v15 = @"Successfully";
      }

      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Registered for CoreAccessory delegate %@", buf, 0xCu);
    }
  }

  return v6;
}

- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 == 9)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_accessoryConnectionUUID, a3);
    os_unfair_lock_unlock(&self->_lock);
    v14 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = v11;
      v17 = 1024;
      v18 = 9;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Connection has attached with the following UUID %@ type %d following info %@ and properties %@", &v15, 0x26u);
    }
  }
}

- (void)accessoryConnectionDetached:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_accessoryConnectionUUID;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!v6 || !v5)
    {

      goto LABEL_11;
    }

    v8 = [(NSString *)v5 isEqualToString:v6];

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = PKLogFacilityTypeGetObject(0x1AuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Connection has detached with the following UUID %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  accessoryConnectionUUID = self->_accessoryConnectionUUID;
  self->_accessoryConnectionUUID = 0;

  os_unfair_lock_unlock(&self->_lock);
LABEL_11:
}

- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (a4 == 13)
  {
    v15 = [[PKAccessoryDevice alloc] initWithDictionary:v13 endpointUUID:v12];
    v16 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138413314;
      v23 = v14;
      v24 = 1024;
      v25 = 13;
      v26 = 1024;
      v27 = a5;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Accessory has attached with the following connection UUID %@ transportType %d following protocol %d, and device properties %@ and device %@", &v22, 0x2Cu);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_attachmentDictionary setObject:v15 forKeyedSubscript:v12];
    [(NSMutableSet *)self->_accessoryAttached addObject:v12];
    os_unfair_lock_unlock(&self->_lock);
    if ([(PKAccessoryDevice *)v15 isSleeve])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v18 = WeakRetained;
        v19 = objc_loadWeakRetained(&self->_delegate);
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v21 = objc_loadWeakRetained(&self->_delegate);
          [v21 didAttachSleeveAccessory:v15];
        }
      }
    }
  }
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_attachmentDictionary objectForKeyedSubscript:v6];
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_accessoryAttached removeObject:v6];
    [(NSMutableDictionary *)self->_attachmentDictionary removeObjectForKey:v6];
    os_unfair_lock_unlock(&self->_lock);
    v9 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Accessory has detached with the following connection UUID %@ and endpoint UUID %@ and device %@", &v15, 0x20u);
    }

    if ([v8 isSleeve])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v11 = WeakRetained;
        v12 = objc_loadWeakRetained(&self->_delegate);
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = objc_loadWeakRetained(&self->_delegate);
          [v14 didDetachSleeveAccessory];
        }
      }
    }
  }
}

@end