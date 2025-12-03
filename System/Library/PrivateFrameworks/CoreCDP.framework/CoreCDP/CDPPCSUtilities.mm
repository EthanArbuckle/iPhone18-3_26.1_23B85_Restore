@interface CDPPCSUtilities
+ (id)_pcsConfigForPrimaryAccount;
+ (id)setupDictionaryWithContext:(id)context;
@end

@implementation CDPPCSUtilities

+ (id)setupDictionaryWithContext:(id)context
{
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appleID = [contextCopy appleID];

  if (appleID)
  {
    appleID2 = [contextCopy appleID];
    [dictionary setObject:appleID2 forKeyedSubscript:*MEMORY[0x1E69C6598]];
  }

  dsid = [contextCopy dsid];

  if (dsid)
  {
    dsid2 = [contextCopy dsid];
    stringValue = [dsid2 stringValue];
    [dictionary setObject:stringValue forKeyedSubscript:*MEMORY[0x1E69C6580]];
  }

  passwordEquivToken = [contextCopy passwordEquivToken];

  if (passwordEquivToken)
  {
    passwordEquivToken2 = [contextCopy passwordEquivToken];
    [dictionary setObject:passwordEquivToken2 forKeyedSubscript:*MEMORY[0x1E69C6590]];
  }

  telemetryFlowID = [contextCopy telemetryFlowID];

  if (telemetryFlowID)
  {
    telemetryFlowID2 = [contextCopy telemetryFlowID];
    [dictionary setObject:telemetryFlowID2 forKeyedSubscript:@"kPCSFlowID"];
  }

  telemetryDeviceSessionID = [contextCopy telemetryDeviceSessionID];

  if (telemetryDeviceSessionID)
  {
    telemetryDeviceSessionID2 = [contextCopy telemetryDeviceSessionID];
    [dictionary setObject:telemetryDeviceSessionID2 forKeyedSubscript:@"kPCSDeviceSessionID"];
  }

  altDSID = [contextCopy altDSID];

  v17 = _CDPLogSystem();
  altDSID2 = v17;
  if (altDSID)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[CDPPCSUtilities setupDictionaryWithContext:];
    }

    altDSID2 = [contextCopy altDSID];
    [dictionary setObject:altDSID2 forKeyedSubscript:@"kPCSAltDSID"];
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    +[CDPPCSUtilities setupDictionaryWithContext:];
  }

  _pcsConfigForPrimaryAccount = [objc_opt_class() _pcsConfigForPrimaryAccount];
  [dictionary addEntriesFromDictionary:_pcsConfigForPrimaryAccount];

  v20 = [dictionary copy];

  return v20;
}

+ (id)_pcsConfigForPrimaryAccount
{
  v2 = [MEMORY[0x1E695E0F8] mutableCopy];
  v3 = +[CDPAccount sharedInstance];
  iCloudEnv = [v3 iCloudEnv];

  if (iCloudEnv)
  {
    [v2 setObject:iCloudEnv forKeyedSubscript:*MEMORY[0x1E69C65A0]];
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
  authToken = [v6 authToken];

  if (authToken)
  {
    [v2 setObject:authToken forKeyedSubscript:*MEMORY[0x1E69C6578]];
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
  escrowURL = [v9 escrowURL];

  if (escrowURL)
  {
    [v2 setObject:escrowURL forKeyedSubscript:*MEMORY[0x1E69C6588]];
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