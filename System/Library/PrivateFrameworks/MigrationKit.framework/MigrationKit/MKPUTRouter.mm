@interface MKPUTRouter
- (MKPUTRouter)init;
@end

@implementation MKPUTRouter

- (MKPUTRouter)init
{
  v35 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = MKPUTRouter;
  v2 = [(MKPUTRouter *)&v33 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKDevice);
    type = [(MKDevice *)v3 type];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (type == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:6];
      [v5 setObject:v6 forKey:@"application/vnd.com.apple.migrationkit.placeholder.v1.1+json"];

      v7 = [MEMORY[0x277CCABB0] numberWithInteger:8];
      [v5 setObject:v7 forKey:@"application/vnd.com.apple.migrationkit.call.history+json"];

      v8 = [MEMORY[0x277CCABB0] numberWithInteger:12];
      [v5 setObject:v8 forKey:@"application/vnd.com.apple.migrationkit.container.v1.1"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v5 setObject:v9 forKey:@"application/vnd.com.apple.migrationkit.account+json"];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v5 setObject:v10 forKey:@"application/vnd.com.apple.migrationkit.message+json"];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    [v5 setObject:v11 forKey:@"application/vnd.com.apple.migrationkit.bookmark+json"];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    [v5 setObject:v12 forKey:@"application/vnd.com.apple.migrationkit.application+json"];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    [v5 setObject:v13 forKey:@"application/vnd.com.apple.migrationkit.setting.accessibility+json"];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:5];
    [v5 setObject:v14 forKey:@"application/vnd.com.apple.migrationkit.setting.display+json"];

    if (+[MKSIMMigrator isSupported])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:7];
      [v5 setObject:v15 forKey:@"application/vnd.com.apple.migrationkit.sim+json"];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:13];
    [v5 setObject:v16 forKey:@"application/vnd.com.apple.migrationkit.diagnostics"];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:14];
    [v5 setObject:v17 forKey:@"application/vnd.com.apple.migrationkit.performance+json"];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:9];
    [v5 setObject:v18 forKey:@"text/vcard"];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:10];
    [v5 setObject:v19 forKey:@"text/calendar"];

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:11];
    [v5 setObject:v20 forKey:@"application/octet-stream"];

    objc_storeStrong(&v2->_routing, v5);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MKPUTRouter *)v2 setSupportedContentTypes:v21];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [v5 allKeys];
    v23 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(allKeys);
          }

          [(NSMutableArray *)v2->_supportedContentTypes addObject:*(*(&v29 + 1) + 8 * v26++)];
        }

        while (v24 != v26);
        v24 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

@end