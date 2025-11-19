@interface CDPDBackupIDMSResultsParser
- (id)resultsDictionaryFromRecoveryResult:(id)a3 error:(id *)a4;
@end

@implementation CDPDBackupIDMSResultsParser

- (id)resultsDictionaryFromRecoveryResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 recoveredInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CFB320]];

  v8 = [v7 cdp_unarchivedRoot];
  v9 = [v5 device];

  v10 = [v9 machineID];

  v11 = [v8 objectForKeyedSubscript:@"prk"];
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277CFD3F8];
  if (v10)
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Parsed a MID", buf, 2u);
    }

    [v12 setObject:v10 forKeyedSubscript:*v13];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = MEMORY[0x277CFD3F0];
  if (isKindOfClass)
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Parsed a PRK", v23, 2u);
    }

    [v12 setObject:v11 forKeyedSubscript:*v16];
  }

  v18 = [v12 objectForKeyedSubscript:*v13];
  if (v18 && (v19 = v18, [v12 objectForKeyedSubscript:*v16], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = [v12 copy];
  }

  else if (a4)
  {
    _CDPStateError();
    *a4 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end