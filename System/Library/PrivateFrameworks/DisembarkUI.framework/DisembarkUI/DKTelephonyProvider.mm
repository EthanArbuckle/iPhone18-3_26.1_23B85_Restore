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
  mEMORY[0x277D4D8C0] = [MEMORY[0x277D4D8C0] sharedInstance];
  planItems = [mEMORY[0x277D4D8C0] planItems];

  v5 = [planItems countByEnumeratingWithState:&v28 objects:v40 count:16];
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
          objc_enumerationMutation(planItems);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = _DKLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          carrierName = [v10 carrierName];
          phoneNumber = [v10 phoneNumber];
          v18 = planItems;
          v19 = v8;
          type = [v10 type];
          transferredStatus = [v10 transferredStatus];
          *buf = 138413058;
          v22 = @"YES";
          if (!transferredStatus)
          {
            v22 = @"NO";
          }

          v33 = carrierName;
          v34 = 2112;
          v35 = phoneNumber;
          v36 = 2048;
          v37 = type;
          v8 = v19;
          planItems = v18;
          v38 = 2112;
          v39 = v22;
          _os_log_debug_impl(&dword_248D68000, v11, OS_LOG_TYPE_DEBUG, "cellularPlans - planItem carrierName:%@  phoneNumber:%@ type:%li IsTransfered:%@", buf, 0x2Au);

          v2 = v27;
        }

        if ([v10 type] == 2 || objc_msgSend(v10, "type") == 3)
        {
          v12 = objc_alloc(*(v8 + 1352));
          carrierName2 = [v10 carrierName];
          phoneNumber2 = [v10 phoneNumber];
          v15 = [v12 initWithCarrierName:carrierName2 phoneNumber:phoneNumber2 isTransferred:{objc_msgSend(v10, "transferredStatus") != 0}];

          [v2 addObject:v15];
        }

        ++v9;
      }

      while (v6 != v9);
      v23 = [planItems countByEnumeratingWithState:&v28 objects:v40 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v24 = [v2 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end