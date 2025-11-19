@interface __HMFSystemConfigurationDataSource
- (HMFSystemInfoNameDataSourceDelegate)delegate;
- (NSString)name;
- (__HMFSystemConfigurationDataSource)init;
- (void)dealloc;
@end

@implementation __HMFSystemConfigurationDataSource

- (__HMFSystemConfigurationDataSource)init
{
  v37 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = __HMFSystemConfigurationDataSource;
  v2 = [(__HMFSystemConfigurationDataSource *)&v33 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMFDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create(v4, v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = v3;
    memset(&context, 0, sizeof(context));
    v9 = v8;
    context.info = v9;
    v10 = SCDynamicStoreCreate(0, @"HostNameChange", __updateName, &context);
    if (!v10)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier(v24);
        *buf = 138543362;
        v35 = v26;
        _os_log_impl(&dword_22ADEC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to create store", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_20;
    }

    v11 = v10;
    v9->_store = CFRetain(v10);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v13 = Mutable;
      HostNames = SCDynamicStoreKeyCreateHostNames(0);
      if (HostNames)
      {
        v15 = HostNames;
        CFArrayAppendValue(v13, HostNames);
        if (SCDynamicStoreSetNotificationKeys(v11, v13, 0))
        {
          v16 = [(__HMFSystemConfigurationDataSource *)v9 queue];
          v17 = SCDynamicStoreSetDispatchQueue(v11, v16);

          if (v17)
          {
LABEL_18:
            CFRelease(v11);
            CFRelease(v13);
            v27 = v15;
            goto LABEL_19;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = v9;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier(v19);
            LODWORD(context.version) = 138543362;
            *(&context.version + 4) = v21;
            v22 = "%{public}@Failed to set DispatchQueue on DynamicStore";
LABEL_16:
            _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, v22, &context, 0xCu);
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v28 = v9;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier(v28);
            LODWORD(context.version) = 138543362;
            *(&context.version + 4) = v21;
            v22 = "%{public}@Failed to set Notification on DynamicStore";
            goto LABEL_16;
          }
        }

        objc_autoreleasePoolPop(v18);
        goto LABEL_18;
      }

      CFRelease(v11);
      v27 = v13;
    }

    else
    {
      v27 = v11;
    }

LABEL_19:
    CFRelease(v27);
LABEL_20:

    v29 = SCDynamicStoreCopyLocalHostName(0);
    name = v9->_name;
    v9->_name = &v29->isa;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  store = self->_store;
  if (store)
  {
    CFRelease(store);
  }

  v4.receiver = self;
  v4.super_class = __HMFSystemConfigurationDataSource;
  [(__HMFSystemConfigurationDataSource *)&v4 dealloc];
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMFSystemInfoNameDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end