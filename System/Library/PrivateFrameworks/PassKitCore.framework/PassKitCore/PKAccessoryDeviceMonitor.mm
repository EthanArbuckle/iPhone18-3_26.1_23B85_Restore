@interface PKAccessoryDeviceMonitor
- (PKAccessoryDeviceMonitor)initWithDelegate:(id)delegate;
- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
@end

@implementation PKAccessoryDeviceMonitor

- (PKAccessoryDeviceMonitor)initWithDelegate:(id)delegate
{
  v20 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKAccessoryDeviceMonitor;
  v5 = [(PKAccessoryDeviceMonitor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    accessoryAttached = v6->_accessoryAttached;
    v6->_accessoryAttached = v7;

    sharedInstance = [(objc_class *)getACCConnectionInfoClass() sharedInstance];
    accessoryConnectionInfo = v6->_accessoryConnectionInfo;
    v6->_accessoryConnectionInfo = sharedInstance;

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

- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties
{
  v23 = *MEMORY[0x1E69E9840];
  attachedCopy = attached;
  infoCopy = info;
  propertiesCopy = properties;
  if (type == 9)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_accessoryConnectionUUID, attached);
    os_unfair_lock_unlock(&self->_lock);
    v14 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = attachedCopy;
      v17 = 1024;
      v18 = 9;
      v19 = 2112;
      v20 = infoCopy;
      v21 = 2112;
      v22 = propertiesCopy;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Connection has attached with the following UUID %@ type %d following info %@ and properties %@", &v15, 0x26u);
    }
  }
}

- (void)accessoryConnectionDetached:(id)detached
{
  v13 = *MEMORY[0x1E69E9840];
  detachedCopy = detached;
  v5 = self->_accessoryConnectionUUID;
  v6 = detachedCopy;
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

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v32 = *MEMORY[0x1E69E9840];
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  if (type == 13)
  {
    v15 = [[PKAccessoryDevice alloc] initWithDictionary:propertiesCopy endpointUUID:attachedCopy];
    v16 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138413314;
      v23 = connectionCopy;
      v24 = 1024;
      v25 = 13;
      v26 = 1024;
      protocolCopy = protocol;
      v28 = 2112;
      v29 = propertiesCopy;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Accessory has attached with the following connection UUID %@ transportType %d following protocol %d, and device properties %@ and device %@", &v22, 0x2Cu);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_attachmentDictionary setObject:v15 forKeyedSubscript:attachedCopy];
    [(NSMutableSet *)self->_accessoryAttached addObject:attachedCopy];
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

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v21 = *MEMORY[0x1E69E9840];
  detachedCopy = detached;
  connectionCopy = connection;
  v8 = [(NSMutableDictionary *)self->_attachmentDictionary objectForKeyedSubscript:detachedCopy];
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_accessoryAttached removeObject:detachedCopy];
    [(NSMutableDictionary *)self->_attachmentDictionary removeObjectForKey:detachedCopy];
    os_unfair_lock_unlock(&self->_lock);
    v9 = PKLogFacilityTypeGetObject(0x1AuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = connectionCopy;
      v17 = 2112;
      v18 = detachedCopy;
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