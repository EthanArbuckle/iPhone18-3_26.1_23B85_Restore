@interface CDPPCSUtilities
+ (id)_pcsConfigForPrimaryAccount;
+ (id)setupDictionaryWithContext:(id)a3;
@end

@implementation CDPPCSUtilities

+ (id)setupDictionaryWithContext:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 appleID];

  if (v5)
  {
    v6 = [v3 appleID];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C6598]];
  }

  v7 = [v3 dsid];

  if (v7)
  {
    v8 = [v3 dsid];
    v9 = [v8 stringValue];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C6580]];
  }

  v10 = [v3 passwordEquivToken];

  if (v10)
  {
    v11 = [v3 passwordEquivToken];
    [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C6590]];
  }

  v12 = [v3 telemetryFlowID];

  if (v12)
  {
    v13 = [v3 telemetryFlowID];
    [v4 setObject:v13 forKeyedSubscript:@"kPCSFlowID"];
  }

  v14 = [v3 telemetryDeviceSessionID];

  if (v14)
  {
    v15 = [v3 telemetryDeviceSessionID];
    [v4 setObject:v15 forKeyedSubscript:@"kPCSDeviceSessionID"];
  }

  v16 = [v3 altDSID];

  v17 = _CDPLogSystem();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[CDPPCSUtilities setupDictionaryWithContext:];
    }

    v18 = [v3 altDSID];
    [v4 setObject:v18 forKeyedSubscript:@"kPCSAltDSID"];
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    +[CDPPCSUtilities setupDictionaryWithContext:];
  }

  v19 = [objc_opt_class() _pcsConfigForPrimaryAccount];
  [v4 addEntriesFromDictionary:v19];

  v20 = [v4 copy];

  return v20;
}

+ (id)_pcsConfigForPrimaryAccount
{
  v2 = [MEMORY[0x1E695E0F8] mutableCopy];
  v3 = +[CDPAccount sharedInstance];
  v4 = [v3 iCloudEnv];

  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69C65A0]];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CDPPCSUtilities _pcsConfigForPrimaryAccount];
    }
  }

  v6 = +[CDPAccount sharedInstance];
  v7 = [v6 authToken];

  if (v7)
  {
    [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69C6578]];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CDPPCSUtilities _pcsConfigForPrimaryAccount];
    }
  }

  v9 = +[CDPAccount sharedInstance];
  v10 = [v9 escrowURL];

  if (v10)
  {
    [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C6588]];
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CDPPCSUtilities _pcsConfigForPrimaryAccount];
    }
  }

  return v2;
}

@end