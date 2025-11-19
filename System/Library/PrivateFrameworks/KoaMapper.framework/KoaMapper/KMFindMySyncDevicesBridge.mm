@interface KMFindMySyncDevicesBridge
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KMFindMySyncDevicesBridge)init;
- (KMFindMySyncDevicesBridge)initWithDevicesProvider:(id)a3;
@end

@implementation KMFindMySyncDevicesBridge

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
    _os_log_impl(&dword_2559DF000, v6, OS_LOG_TYPE_INFO, "%s #FindMySyncDevices starting device sync and vocab donation", buf, 0xCu);
  }

  devicesProvider = self->_devicesProvider;
  v28 = 0;
  v8 = [(KMFindMySyncDevicesProvider *)devicesProvider getSyncDevices:&v28];
  v9 = v28;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          LODWORD(v18) = v5[2](v5, v18);
          objc_autoreleasePoolPop(v19);
          if (!v18)
          {

            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = KMLogContextCore;
    v21 = 1;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
      _os_log_impl(&dword_2559DF000, v20, OS_LOG_TYPE_INFO, "%s #FindMySyncDevices donation successful", buf, 0xCu);
    }
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[KMFindMySyncDevicesBridge enumerateItemsWithError:usingBlock:]";
      v32 = 2112;
      v33 = v10;
      _os_log_error_impl(&dword_2559DF000, v12, OS_LOG_TYPE_ERROR, "%s Failed to fetch FindMy devices with error: %@.", buf, 0x16u);
    }

    KVSetError();
LABEL_21:
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (KMFindMySyncDevicesBridge)initWithDevicesProvider:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = KMFindMySyncDevicesBridge;
  v6 = [(KMFindMySyncDevicesBridge *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_devicesProvider, a3), !v7->_devicesProvider))
  {
    v9 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[KMFindMySyncDevicesBridge initWithDevicesProvider:]";
      _os_log_error_impl(&dword_2559DF000, v9, OS_LOG_TYPE_ERROR, "%s nil devicesProvider.", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (KMFindMySyncDevicesBridge)init
{
  v3 = objc_alloc_init(_TtC9KoaMapper27KMFindMySyncDevicesProvider);
  v4 = [(KMFindMySyncDevicesBridge *)self initWithDevicesProvider:v3];

  return v4;
}

@end