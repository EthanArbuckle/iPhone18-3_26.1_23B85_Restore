@interface MKGETStatusRouter
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKGETStatusRouter

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = a5;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = self;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v6 setObject:v7 forKey:@"state"];

  v8 = objc_alloc_init(MKDevice);
  v9 = [(MKDevice *)v8 systemName];
  [v6 setObject:v9 forKey:@"system_name"];

  v10 = [(MKDevice *)v8 systemVersion];
  [v6 setObject:v10 forKey:@"system_version"];

  v11 = [(MKDevice *)v8 deviceName];
  [v6 setObject:v11 forKey:@"device_name"];

  v12 = [(MKDevice *)v8 deviceFamily];
  [v6 setObject:v12 forKey:@"device_family"];

  v13 = [(MKDevice *)v8 deviceModel];
  [v6 setObject:v13 forKey:@"device_model"];

  v14 = objc_alloc_init(MKWiFiDevice);
  v15 = [(MKWiFiDevice *)v14 currentNetwork];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [v15 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v15 objectForKeyedSubscript:v21];
        [v6 setObject:v22 forKey:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v28->_preferredChannel];
  [v6 setObject:v23 forKey:@"ap1"];

  v30 = 0;
  v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&v30];
  v25 = v30;
  if (v25)
  {
    v26 = +[MKLog log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v25 import:v26];
    }
  }

  [v29 setBody:v24];

  v27 = *MEMORY[0x277D85DE8];
}

@end