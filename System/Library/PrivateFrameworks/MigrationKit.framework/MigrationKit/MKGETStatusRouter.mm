@interface MKGETStatusRouter
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETStatusRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v6 setObject:v7 forKey:@"state"];

  v8 = objc_alloc_init(MKDevice);
  systemName = [(MKDevice *)v8 systemName];
  [v6 setObject:systemName forKey:@"system_name"];

  systemVersion = [(MKDevice *)v8 systemVersion];
  [v6 setObject:systemVersion forKey:@"system_version"];

  deviceName = [(MKDevice *)v8 deviceName];
  [v6 setObject:deviceName forKey:@"device_name"];

  deviceFamily = [(MKDevice *)v8 deviceFamily];
  [v6 setObject:deviceFamily forKey:@"device_family"];

  deviceModel = [(MKDevice *)v8 deviceModel];
  [v6 setObject:deviceModel forKey:@"device_model"];

  v14 = objc_alloc_init(MKWiFiDevice);
  currentNetwork = [(MKWiFiDevice *)v14 currentNetwork];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [currentNetwork allKeys];
  v17 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [currentNetwork objectForKeyedSubscript:v21];
        [v6 setObject:v22 forKey:v21];
      }

      v18 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_preferredChannel];
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

  [responseCopy setBody:v24];

  v27 = *MEMORY[0x277D85DE8];
}

@end