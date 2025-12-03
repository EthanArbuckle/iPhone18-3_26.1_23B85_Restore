@interface CDPDBackupIDMSResultsParser
- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error;
@end

@implementation CDPDBackupIDMSResultsParser

- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error
{
  resultCopy = result;
  recoveredInfo = [resultCopy recoveredInfo];
  v7 = [recoveredInfo objectForKeyedSubscript:*MEMORY[0x277CFB320]];

  cdp_unarchivedRoot = [v7 cdp_unarchivedRoot];
  device = [resultCopy device];

  machineID = [device machineID];

  v11 = [cdp_unarchivedRoot objectForKeyedSubscript:@"prk"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277CFD3F8];
  if (machineID)
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "Parsed a MID", buf, 2u);
    }

    [dictionary setObject:machineID forKeyedSubscript:*v13];
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

    [dictionary setObject:v11 forKeyedSubscript:*v16];
  }

  v18 = [dictionary objectForKeyedSubscript:*v13];
  if (v18 && (v19 = v18, [dictionary objectForKeyedSubscript:*v16], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = [dictionary copy];
  }

  else if (error)
  {
    _CDPStateError();
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end