@interface CWFAutoJoinStatus(Dictionary)
- (id)dictionary;
@end

@implementation CWFAutoJoinStatus(Dictionary)

- (id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v4 = [a1 UUID];
  v5 = [v4 UUIDString];
  [v2 setObject:v5 forKeyedSubscript:@"wifi_uuid"];

  v6 = [a1 interfaceName];
  [v2 setObject:v6 forKeyedSubscript:@"wifi_interface_name"];

  v7 = [a1 startedAt];
  v8 = [v3 stringFromDate:v7];
  [v2 setObject:v8 forKeyedSubscript:@"wifi_auto_join_started_at"];

  v9 = [a1 endedAt];
  v10 = [v3 stringFromDate:v9];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_auto_join_ended_at"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "result")}];
  [v2 setObject:v11 forKeyedSubscript:@"wifi_auto_join_result"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "trigger")}];
  [v2 setObject:v12 forKeyedSubscript:@"wifi_auto_join_trigger"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "state")}];
  [v2 setObject:v13 forKeyedSubscript:@"wifi_auto_join_state"];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [a1 joinAttempts];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) dictionary];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  [v2 setObject:v14 forKeyedSubscript:@"wifi_join_attempts"];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end