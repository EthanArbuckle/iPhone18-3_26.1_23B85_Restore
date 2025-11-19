@interface DKTelephonyProvider
- (id)cellularPlans;
@end

@implementation DKTelephonyProvider

- (id)cellularPlans
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [MEMORY[0x277D4D8C0] sharedInstance];
  v4 = [v3 planItems];

  v5 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = 0x278F7D000uLL;
    v27 = v2;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = _DKLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v10 carrierName];
          v17 = [v10 phoneNumber];
          v18 = v4;
          v19 = v8;
          v20 = [v10 type];
          v21 = [v10 transferredStatus];
          *buf = 138413058;
          v22 = @"YES";
          if (!v21)
          {
            v22 = @"NO";
          }

          v33 = v16;
          v34 = 2112;
          v35 = v17;
          v36 = 2048;
          v37 = v20;
          v8 = v19;
          v4 = v18;
          v38 = 2112;
          v39 = v22;
          _os_log_debug_impl(&dword_248D68000, v11, OS_LOG_TYPE_DEBUG, "cellularPlans - planItem carrierName:%@  phoneNumber:%@ type:%li IsTransfered:%@", buf, 0x2Au);

          v2 = v27;
        }

        if ([v10 type] == 2 || objc_msgSend(v10, "type") == 3)
        {
          v12 = objc_alloc(*(v8 + 1352));
          v13 = [v10 carrierName];
          v14 = [v10 phoneNumber];
          v15 = [v12 initWithCarrierName:v13 phoneNumber:v14 isTransferred:{objc_msgSend(v10, "transferredStatus") != 0}];

          [v2 addObject:v15];
        }

        ++v9;
      }

      while (v6 != v9);
      v23 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v24 = [v2 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end