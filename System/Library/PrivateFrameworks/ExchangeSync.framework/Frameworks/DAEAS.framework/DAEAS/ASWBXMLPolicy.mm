@interface ASWBXMLPolicy
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)perDomainDictsForPolicy;
- (void)_cleanUpPolicyData:(id)data;
- (void)_setPolicyData:(id)data;
@end

@implementation ASWBXMLPolicy

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_3 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_3;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_3 = v2;
    acceptsTopLevelLeaves___haveChecked_3 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_3 == 1)
  {
    v2 = parsingLeafNode___result_3;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_3 = v2;
    parsingLeafNode___haveChecked_3 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_3 == 1)
  {
    v2 = parsingWithSubItems___result_3;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_3 = v2;
    parsingWithSubItems___haveChecked_3 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_3 == 1)
  {
    v2 = frontingBasicTypes___result_3;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_3 = v2;
    frontingBasicTypes___haveChecked_3 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_3 == 1)
  {
    v2 = notifyOfUnknownTokens___result_3;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_3 = v2;
    notifyOfUnknownTokens___haveChecked_3 = 1;
  }

  return v2 & 1;
}

- (void)_setPolicyData:(id)data
{
  if (self->_policyData != data)
  {
    v4 = [data mutableCopy];
    policyData = self->_policyData;
    self->_policyData = v4;

    MEMORY[0x2821F96F8]();
  }
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v44.receiver = self;
    v44.super_class = &OBJC_METACLASS___ASWBXMLPolicy;
    v6 = objc_msgSendSuper2(&v44, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v42 = objc_alloc(MEMORY[0x277CBEAC0]);
    selfCopy = self;
    v39 = [ASParseRule alloc];
    v37 = objc_opt_class();
    v36 = MEMORY[0x277CBEAC0];
    v35 = [ASParseRule alloc];
    v7 = objc_opt_class();
    v33 = MEMORY[0x277CBEAC0];
    v34 = v7;
    v8 = [ASParseRule alloc];
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CBEAC0];
    v41 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:14 token:56 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v40 = [MEMORY[0x277CCABB0] numberWithInt:3640];
    v38 = [v10 dictionaryWithObjectsAndKeys:{v41, v40, 0}];
    v29 = [(ASParseRule *)v8 initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:55 objectClass:v9 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v38];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:3639];
    v11 = [ASParseRule alloc];
    v12 = objc_opt_class();
    v13 = MEMORY[0x277CBEAC0];
    v32 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:14 token:58 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:3642];
    v30 = [v13 dictionaryWithObjectsAndKeys:{v32, v31, 0}];
    v27 = [(ASParseRule *)v11 initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:57 objectClass:v12 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v30];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:3641];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:20 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:3604];
    v16 = [v33 dictionaryWithObjectsAndKeys:{v29, v28, v27, v26, v14, v15, 0}];
    v17 = [(ASParseRule *)v35 initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:13 objectClass:v34 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v16];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:3597];
    v19 = [v36 dictionaryWithObjectsAndKeys:{v17, v18, 0}];
    v20 = [(ASParseRule *)v39 initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:10 objectClass:v37 setterMethod:sel__setPolicyData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v19];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:3594];
    v22 = [v42 initWithObjectsAndKeys:{v20, v21, 0}];

    [v5 addEntriesFromDictionary:v22];
    v23 = +[ASItem parseRuleCache];
    v24 = NSStringFromClass(selfCopy);
    [v23 setObject:v5 forKey:v24];
  }

  return v5;
}

- (void)_cleanUpPolicyData:(id)data
{
  dataCopy = data;
  v3 = [dataCopy objectForKeyedSubscript:@"DevicePasswordEnabled"];
  intValue = [v3 intValue];

  if (!intValue)
  {
    [dataCopy removeObjectForKey:@"AlphanumericPasswordEnabled"];
    [dataCopy removeObjectForKey:@"PasswordRecoveryEnabled"];
    [dataCopy removeObjectForKey:@"MinDevicePasswordLength"];
    [dataCopy removeObjectForKey:@"MaxDevicePasswordFailedAttempts"];
    [dataCopy removeObjectForKey:@"AllowSimpleDevicePassword"];
    [dataCopy removeObjectForKey:@"DevicePasswordExpiration"];
    [dataCopy removeObjectForKey:@"DevicePasswordHistory"];
    [dataCopy removeObjectForKey:@"RequireDeviceEncryption"];
  }

  v5 = [dataCopy objectForKeyedSubscript:@"AlphanumericPasswordEnabled"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [dataCopy removeObjectForKey:@"MinDevicePasswordComplexCharacters"];
  }
}

- (id)perDomainDictsForPolicy
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 14, @"DevicePasswordEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 15, @"AlphanumericPasswordEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 17, @"PasswordRecoveryEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 16, @"DeviceEncryptionEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 19, @"AttachmentsEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 18, @"UNCAccessEnabled");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 20, @"MinDevicePasswordLength");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 21, @"MaxInactivityTimeDeviceLock");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 22, @"MaxDevicePasswordFailedAttempts");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 23, @"MaxAttachmentSize");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 24, @"AllowSimpleDevicePassword");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 25, @"DevicePasswordExpiration");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 26, @"DevicePasswordHistory");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 27, @"AllowStorageCard");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 28, @"AllowCamera");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 29, @"RequireDeviceEncryption");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 30, @"AllowUnsignedApplications");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 31, @"AllowUnsignedInstallationPackages");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 32, @"MinDevicePasswordComplexCharacters");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 33, @"AllowWiFi");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 34, @"AllowTextMessaging");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 35, @"AllowPOPIMAPEmail");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 36, @"AllowBluetooth");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 37, @"AllowIrDA");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 38, @"RequireManualSyncWhenRoaming");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 39, @"AllowDesktopSync");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 40, @"MaxCalendarAgeFilter");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 41, @"AllowHTMLEmail");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 42, @"MaxEmailAgeFilter");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 43, @"MaxEmailBodyTruncationSize");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 45, @"RequireSingedSMIMEMessages");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 46, @"RequireEncryptedSMIMEMessages");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 47, @"RequireSignedSMIMEAlgorithm");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 48, @"RequireEncryptionSMIMEAlgorithm");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 49, @"AllowSMIMEEncryptionAlgorithmNegotiation");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 50, @"AllowSMIMESoftCerts");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 51, @"AllowBrowser");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 52, @"AllowConsumerEmail");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 53, @"AllowRemoteDesktop");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 54, @"AllowInternetSharing");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 55, @"UnapprovedInROMAppliationList");
  TranslatePolicyWBXMLDCCPT(self->_policyData, v3, 57, @"ApprovedApplicationList");
  [v3 setValue:@"ASWBXMLPolicyType" forKey:@"ASPolicyType"];
  [(ASWBXMLPolicy *)self _cleanUpPolicyData:v3];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_24A0AC000, v4, v5, "Processed policy data %@", &v11, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v7 = managedConfigurationPoliciesFromEASWBXMLPolicies(v3);
  v8 = perAccountEASPoliciesFromEASWBXMLPolicies(v3);
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"ASPolicyMCFeatures"];
  }

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

@end