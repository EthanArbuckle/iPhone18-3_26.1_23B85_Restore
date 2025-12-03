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
  uUID = [self UUID];
  uUIDString = [uUID UUIDString];
  [v2 setObject:uUIDString forKeyedSubscript:@"wifi_uuid"];

  interfaceName = [self interfaceName];
  [v2 setObject:interfaceName forKeyedSubscript:@"wifi_interface_name"];

  startedAt = [self startedAt];
  v8 = [v3 stringFromDate:startedAt];
  [v2 setObject:v8 forKeyedSubscript:@"wifi_auto_join_started_at"];

  endedAt = [self endedAt];
  v10 = [v3 stringFromDate:endedAt];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_auto_join_ended_at"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "result")}];
  [v2 setObject:v11 forKeyedSubscript:@"wifi_auto_join_result"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "trigger")}];
  [v2 setObject:v12 forKeyedSubscript:@"wifi_auto_join_trigger"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "state")}];
  [v2 setObject:v13 forKeyedSubscript:@"wifi_auto_join_state"];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  joinAttempts = [self joinAttempts];
  v16 = [joinAttempts countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(joinAttempts);
        }

        dictionary = [*(*(&v24 + 1) + 8 * i) dictionary];
        [v14 addObject:dictionary];
      }

      v17 = [joinAttempts countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  [v2 setObject:v14 forKeyedSubscript:@"wifi_join_attempts"];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end