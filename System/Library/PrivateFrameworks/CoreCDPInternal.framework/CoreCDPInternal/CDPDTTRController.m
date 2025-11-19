@interface CDPDTTRController
- (BOOL)_isTTREnabledForDict:(id)a3;
- (id)_normalizedTTRErrorForEvent:(id)a3;
- (id)_ttrInfoForEvent:(id)a3 forTTRConfigSupportedErrors:(id)a4;
- (id)_ttrInfoForEventErrorDict:(id)a3 inTTRConfigSupportedErrors:(id)a4;
- (void)_performTTRForRequest:(id)a3 completion:(id)a4;
- (void)_triggerTTRForEvent:(id)a3 componentName:(id)a4 componentVersion:(id)a5 componentID:(id)a6 additionalDeviceTypes:(id)a7 fullDiagnostic:(BOOL)a8;
- (void)requestTTRIfSupportedForEvent:(id)a3;
- (void)requestTTRWithTitle:(id)a3 message:(id)a4 componentName:(id)a5 componentVersion:(id)a6 componentID:(id)a7 keywords:(id)a8 additionalDeviceTypes:(id)a9 fullDiagnostic:(BOOL)a10 completion:(id)a11;
@end

@implementation CDPDTTRController

- (void)requestTTRWithTitle:(id)a3 message:(id)a4 componentName:(id)a5 componentVersion:(id)a6 componentID:(id)a7 keywords:(id)a8 additionalDeviceTypes:(id)a9 fullDiagnostic:(BOOL)a10 completion:(id)a11
{
  v26 = a9;
  v17 = a11;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = objc_opt_new();
  [v24 setRadarTitle:v23];

  [v24 setRadarDescription:v22];
  [v24 setComponentName:v21];

  [v24 setComponentID:v19];
  [v24 setComponentVersion:v20];

  [v24 setKeywords:v18];
  [v24 setFullDiagnostic:a10];
  if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v24 setDeviceTypes:v26];
  }

  [(CDPDTTRController *)self _performTTRForRequest:v24 completion:v17];
}

- (void)requestTTRIfSupportedForEvent:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CFD560] isInternalBuild])
  {
    v5 = os_transaction_create();
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277CF02F0] sharedBag];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__CDPDTTRController_requestTTRIfSupportedForEvent___block_invoke;
    v8[3] = &unk_278E24B88;
    v9 = v4;
    v10 = self;
    objc_copyWeak(&v12, &location);
    v7 = v5;
    v11 = v7;
    [v6 configurationValueForKey:@"ttr-cfgs-v2" fromCache:1 completion:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPDTTRController requestTTRIfSupportedForEvent:v7];
    }
  }
}

void __51__CDPDTTRController_requestTTRIfSupportedForEvent___block_invoke(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = [a1[4] eventName];
  v5 = [v3 objectForKeyedSubscript:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1[5] _ttrInfoForEvent:a1[4] forTTRConfigSupportedErrors:v6];
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"cid"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v29 = v6;
    objc_opt_class();
    v10 = [v3 objectForKeyedSubscript:@"componentInfo"];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:v9];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v30 = v3;

    objc_opt_class();
    v14 = [v13 objectForKeyedSubscript:@"cn"];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v28 = v11;

    objc_opt_class();
    v16 = [v13 objectForKeyedSubscript:@"cv"];
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    objc_opt_class();
    v18 = [v7 objectForKeyedSubscript:@"fla"];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    objc_opt_class();
    v20 = [v7 objectForKeyedSubscript:@"dc"];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v19 lowercaseString];
    v23 = [v22 isEqualToString:@"y"];

    if (v15 && v17)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 7);
      [WeakRetained _triggerTTRForEvent:a1[4] componentName:v15 componentVersion:v17 componentID:v9 additionalDeviceTypes:v21 fullDiagnostic:v23];
    }

    else
    {
      v25 = _AKLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v27 = [a1[4] eventName];
        *buf = 138413058;
        v32 = v27;
        v33 = 2112;
        v34 = v9;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v17;
        _os_log_debug_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEBUG, "Unable to send TTR for event %@. Component ID - %@, name - %@, version - %@", buf, 0x2Au);
      }
    }

    v6 = v29;
    v3 = v30;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_performTTRForRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = objc_opt_new();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__CDPDTTRController__performTTRForRequest_completion___block_invoke;
    v9[3] = &unk_278E24780;
    v10 = v7;
    [v8 silentTapToRadarWithRequest:v5 completion:v9];

LABEL_5:
    goto LABEL_6;
  }

  if (v6)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF00C8] code:3 userInfo:0];
    (v7)[2](v7, 0, v8);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __54__CDPDTTRController__performTTRForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *(v4 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *(v4 + 16);
  }

  v5();
LABEL_7:

  return MEMORY[0x2821F9730]();
}

- (id)_normalizedTTRErrorForEvent:(id)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = 0x277CCA000uLL;
  objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE4598]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x277CCA000uLL;
  objc_opt_class();
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE45A0]];
  if (objc_opt_isKindOfClass())
  {
    v38 = v8;
  }

  else
  {
    v38 = 0;
  }

  objc_opt_class();
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE45C0]];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 integerValue];
  v37 = v6;
  if (v6 && v38)
  {
    v47[0] = @"ec";
    v12 = [v6 stringValue];
    v47[1] = @"ed";
    v48[0] = v12;
    v48[1] = v38;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v40 addEntriesFromDictionary:v13];

    v14 = *MEMORY[0x277CE45E0];
    v15 = *MEMORY[0x277CE45E8];
    v16 = 1;
    v39 = v3;
    do
    {
      if (v11 < v16)
      {
        break;
      }

      v17 = [*(v7 + 3240) stringWithFormat:@"%@%u", v14, v16];
      v18 = [*(v7 + 3240) stringWithFormat:@"%@%u", v15, v16];
      v19 = *(v4 + 2992);
      objc_opt_class();
      v44 = v17;
      v20 = [v3 objectForKeyedSubscript:v17];
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v7 + 3240);
      objc_opt_class();
      v43 = v18;
      v23 = [v3 objectForKeyedSubscript:v18];
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = !v25;
      v42 = v26;
      if (!v25)
      {
        v41 = [*(v7 + 3240) stringWithFormat:@"uec%lu", v16];
        v27 = [*(v7 + 3240) stringWithFormat:@"ued%lu", v16];
        v45[0] = v41;
        v28 = [v21 stringValue];
        v45[1] = v27;
        v46[0] = v28;
        v46[1] = v24;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        v29 = v16;
        v30 = v15;
        v31 = v14;
        v32 = v11;
        v34 = v33 = v4;
        [v40 addEntriesFromDictionary:v34];

        v4 = v33;
        v11 = v32;
        v14 = v31;
        v15 = v30;

        v3 = v39;
        v7 = 0x277CCA000;

        v16 = (v29 + 1);
      }
    }

    while ((v42 & 1) != 0);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)_triggerTTRForEvent:(id)a3 componentName:(id)a4 componentVersion:(id)a5 componentID:(id)a6 additionalDeviceTypes:(id)a7 fullDiagnostic:(BOOL)a8
{
  v12 = a3;
  v13 = MEMORY[0x277CCACA8];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [v12 eventName];
  v19 = [v13 stringWithFormat:@"Analyzing error for the event %@", v18];

  v20 = MEMORY[0x277CCACA8];
  v21 = [v12 eventName];
  v22 = [v20 stringWithFormat:@"AAA team is analyzing an issue for the event %@. It will be very helpful if you can complete the TTR and file the radar with sysdiagnose. Thank you for your help, have a wonderful day.", v21];

  v23 = MEMORY[0x277CCACA8];
  v24 = [v12 reportData];
  v25 = [v23 stringWithFormat:@"%@ \nEvent Details - \n%@", v22, v24];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __121__CDPDTTRController__triggerTTRForEvent_componentName_componentVersion_componentID_additionalDeviceTypes_fullDiagnostic___block_invoke;
  v30[3] = &unk_278E24BB0;
  v31 = v12;
  v26 = v12;
  LOBYTE(v27) = a8;
  [(CDPDTTRController *)self requestTTRWithTitle:v19 message:v25 componentName:v17 componentVersion:v16 componentID:v15 keywords:MEMORY[0x277CBEBF8] additionalDeviceTypes:v14 fullDiagnostic:v27 completion:v30];
}

void __121__CDPDTTRController__triggerTTRForEvent_componentName_componentVersion_componentID_additionalDeviceTypes_fullDiagnostic___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) eventName];
    v9 = 138412802;
    v10 = v8;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEBUG, "TTR filed for event - %@ with status - %d and error - %@", &v9, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_ttrInfoForEvent:(id)a3 forTTRConfigSupportedErrors:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(CDPDTTRController *)self _normalizedTTRErrorForEvent:v6];
    v9 = [(CDPDTTRController *)self _ttrInfoForEventErrorDict:v8 inTTRConfigSupportedErrors:v7];
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPDTTRController _ttrInfoForEvent:v6 forTTRConfigSupportedErrors:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_ttrInfoForEventErrorDict:(id)a3 inTTRConfigSupportedErrors:(id)a4
{
  v6 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __74__CDPDTTRController__ttrInfoForEventErrorDict_inTTRConfigSupportedErrors___block_invoke;
  v15 = &unk_278E24BD8;
  v16 = self;
  v7 = v6;
  v17 = v7;
  v8 = [a4 aaf_filter:&v12];
  objc_opt_class();
  v9 = [v8 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __74__CDPDTTRController__ttrInfoForEventErrorDict_inTTRConfigSupportedErrors___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  v4 = [*(a1 + 32) _isTTREnabledForDict:v3];
  [v3 setObject:0 forKeyedSubscript:@"dc"];
  [v3 setObject:0 forKeyedSubscript:@"pt"];
  [v3 setObject:0 forKeyedSubscript:@"cid"];
  [v3 setObject:0 forKeyedSubscript:@"fla"];
  if (v4)
  {
    v5 = [v3 isEqualToDictionary:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isTTREnabledForDict:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"pt"];

  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 integerValue];
  if ((v7 & ~(v7 >> 63)) >= 100)
  {
    v8 = 100;
  }

  else
  {
    v8 = v7 & ~(v7 >> 63);
  }

  v9 = arc4random_uniform(0x65u);
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDTTRController *)v8 _isTTREnabledForDict:v10, v11];
  }

  return v8 >= v10;
}

- (void)_ttrInfoForEvent:(void *)a1 forTTRConfigSupportedErrors:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventName];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Missing ttr configs for event - %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_isTTREnabledForDict:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "ttr-cfgs normalized mid drift ttrFrequency - %ld and  randomNumber - %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end