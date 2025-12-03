@interface ASWAPXMLPolicy
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)_policyForWAPProvisioningXMLData;
- (id)_wbxmlPolicyDict;
- (id)perDomainDictsForPolicy;
- (void)_setData:(id)data;
@end

@implementation ASWAPXMLPolicy

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_2 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_2;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_2 = v2;
    acceptsTopLevelLeaves___haveChecked_2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_2 == 1)
  {
    v2 = parsingLeafNode___result_2;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_2 = v2;
    parsingLeafNode___haveChecked_2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_2 == 1)
  {
    v2 = parsingWithSubItems___result_2;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_2 = v2;
    parsingWithSubItems___haveChecked_2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_2 == 1)
  {
    v2 = frontingBasicTypes___result_2;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_2 = v2;
    frontingBasicTypes___haveChecked_2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_2 == 1)
  {
    v2 = notifyOfUnknownTokens___result_2;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_2 = v2;
    notifyOfUnknownTokens___haveChecked_2 = 1;
  }

  return v2 & 1;
}

- (void)_setData:(id)data
{
  if (self->_data != data)
  {
    v4 = [data copy];
    data = self->_data;
    self->_data = v4;

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
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___ASWAPXMLPolicy;
    v6 = objc_msgSendSuper2(&v14, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:14 token:10 objectClass:objc_opt_class() setterMethod:sel__setData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:3594];
    v10 = [v7 initWithObjectsAndKeys:{v8, v9, 0}];

    [v5 addEntriesFromDictionary:v10];
    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (id)_policyForWAPProvisioningXMLData
{
  data = [(ASWAPXMLPolicy *)self data];
  Memory = xmlReadMemory([data bytes], objc_msgSend(data, "length"), 0, 0, 0);
  if (Memory)
  {
    RootElement = xmlDocGetRootElement(Memory);
    if (!RootElement || (v5 = RootElement, RootElement->type != XML_ELEMENT_NODE) || xmlStrcmp(RootElement->name, "wap-provisioningdoc"))
    {
      NSLog(&cfstr_RootNodeIsExpe.isa);
      v6 = 0;
      goto LABEL_8;
    }

    v6 = objc_opt_new();
    children = v5->children;
    if (children)
    {
      while (children->type != XML_ELEMENT_NODE || xmlStrcmp(children->name, "characteristic"))
      {
LABEL_58:
        children = children->next;
        if (!children)
        {
          goto LABEL_7;
        }
      }

      v9 = getAttributeAsNSString(children, "type");
      if ([v9 isEqualToString:@"SecurityPolicy"])
      {
        v10 = children->children;
        if (!v10)
        {
          goto LABEL_57;
        }

        v31 = v9;
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = v12;
          v14 = v11;
          v36 = v12;
          v35 = v11;
          ParmForTag = _getParmForTag(v10, &v36, &v35);
          v12 = v36;

          v11 = v35;
          if (ParmForTag)
          {
            if ([v12 isEqualToString:@"4131"])
            {
              if ([v11 isEqualToString:@"0"])
              {
                v16 = v6;
                v17 = MEMORY[0x277CBEC38];
              }

              else
              {
                v16 = v6;
                v17 = MEMORY[0x277CBEC28];
              }

              v18 = @"ASPolicyEnabled";
LABEL_28:
              [v16 setValue:v17 forKey:{v18, v30}];
              goto LABEL_29;
            }

            if ([v12 isEqualToString:@"4133"])
            {
              if ([v11 isEqualToString:@"0"])
              {
                v16 = v6;
                v17 = MEMORY[0x277CBEC38];
              }

              else
              {
                v16 = v6;
                v17 = MEMORY[0x277CBEC28];
              }

              v18 = @"ASRequireRemoteWipeAbility";
              goto LABEL_28;
            }
          }

LABEL_29:
          v10 = *(v10 + 48);
          if (!v10)
          {

            v9 = v31;
            goto LABEL_57;
          }
        }
      }

      if (![v9 isEqualToString:@"Registry"])
      {
        goto LABEL_57;
      }

      v19 = children->children;
      if (!v19)
      {
        goto LABEL_57;
      }

      v30 = data;
      v32 = v9;
LABEL_34:
      if (v19->type != XML_ELEMENT_NODE || xmlStrcmp(v19->name, "characteristic"))
      {
        goto LABEL_56;
      }

      v20 = getAttributeAsNSString(v19, "type");
      v21 = v19->children;
      if (!v21)
      {
        goto LABEL_55;
      }

      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = v23;
        v25 = v22;
        v33 = v22;
        v34 = v23;
        v26 = _getParmForTag(v21, &v34, &v33);
        v23 = v34;

        v22 = v33;
        if (v26)
        {
          if ([v20 isEqualToString:@"HKLM\\Comm\\Security\\Policy\\LASSD\\LAP\\lap_pw"])
          {
            v27 = @"MinimumPasswordLength";
            if ([v23 isEqualToString:@"MinimumPasswordLength"])
            {
              goto LABEL_52;
            }

            v28 = v23;
            v27 = @"PasswordComplexity";
          }

          else
          {
            if (![v20 isEqualToString:@"HKLM\\Comm\\Security\\Policy\\LASSD"])
            {
              if (![v20 isEqualToString:@"HKLM\\Comm\\Security\\Policy\\LASSD\\AE\\{50C13377-C66D-400C-889E-C316FC4AB374}"])
              {
                goto LABEL_53;
              }

              v27 = @"AEFrequencyValue";
              if (([v23 isEqualToString:@"AEFrequencyValue"] & 1) == 0)
              {
                v27 = @"AEFrequencyType";
                if (![v23 isEqualToString:@"AEFrequencyType"])
                {
                  goto LABEL_53;
                }
              }

LABEL_52:
              v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v22, "intValue", v30)}];
              [v6 setValue:v29 forKey:v27];

              goto LABEL_53;
            }

            v27 = @"DeviceWipeThreshold";
            if ([v23 isEqualToString:@"DeviceWipeThreshold"])
            {
              if ([v22 intValue] <= 0)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            v28 = v23;
            v27 = @"CodewordFrequency";
          }

          if ([v28 isEqualToString:{v27, v30}])
          {
            goto LABEL_52;
          }
        }

LABEL_53:
        v21 = *(v21 + 48);
        if (!v21)
        {

          data = v30;
          v9 = v32;
LABEL_55:

LABEL_56:
          v19 = v19->next;
          if (!v19)
          {
LABEL_57:

            goto LABEL_58;
          }

          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_7:
  [v6 setValue:@"ASWAPXMLPolicyType" forKey:{@"ASPolicyType", v30}];
LABEL_8:

  return v6;
}

- (id)_wbxmlPolicyDict
{
  v45[3] = *MEMORY[0x277D85DE8];
  _policyForWAPProvisioningXMLData = [(ASWAPXMLPolicy *)self _policyForWAPProvisioningXMLData];
  v3 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:@"ASPolicyEnabled"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_policyForWAPProvisioningXMLData, "count")}];
    if (!_wbxmlPolicyDict_policyMapping)
    {
      v44[0] = @"MinimumPasswordLength";
      v44[1] = @"DeviceWipeThreshold";
      v45[0] = @"MinDevicePasswordLength";
      v45[1] = @"MaxDevicePasswordFailedAttempts";
      v44[2] = @"ASPolicyEnabled";
      v45[2] = @"DevicePasswordEnabled";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
      v7 = _wbxmlPolicyDict_policyMapping;
      _wbxmlPolicyDict_policyMapping = v6;

      v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"CodewordFrequency", @"ASRequireRemoteWipeAbility", @"ASPolicyType", 0}];
      v9 = _wbxmlPolicyDict_ignorablePolicies;
      _wbxmlPolicyDict_ignorablePolicies = v8;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [_policyForWAPProvisioningXMLData allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      type = *(MEMORY[0x277D03988] + 3);
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v16 = [_wbxmlPolicyDict_policyMapping objectForKeyedSubscript:v15];
          if (v16)
          {
            v17 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:v15];
            v18 = v5;
            v19 = v17;
            v20 = v16;
            goto LABEL_11;
          }

          if (([_wbxmlPolicyDict_ignorablePolicies containsObject:v15] & 1) == 0)
          {
            if ([v15 isEqualToString:@"PasswordComplexity"])
            {
              v21 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:v15];
              intValue = [v21 intValue];

              if ((intValue - 1) >= 2)
              {
                if (intValue)
                {
                  v27 = DALoggingwithCategory();
                  if (os_log_type_enabled(v27, type))
                  {
                    *buf = 67109120;
                    LODWORD(v40) = intValue;
                    _os_log_impl(&dword_24A0AC000, v27, type, "Unknown value %d set for 2003 password complexity value", buf, 8u);
                  }
                }

                else
                {
                  [v5 setValue:MEMORY[0x277CBEC38] forKey:@"AlphanumericPasswordEnabled"];
                  [v5 setValue:&unk_285D57AC8 forKey:@"MinDevicePasswordComplexCharacters"];
                }
              }
            }

            else if (([v15 isEqualToString:@"AEFrequencyType"] & 1) == 0)
            {
              if (![v15 isEqualToString:@"AEFrequencyValue"])
              {
                v17 = DALoggingwithCategory();
                if (os_log_type_enabled(v17, type))
                {
                  v28 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:v15];
                  *buf = 138412546;
                  v40 = v15;
                  v41 = 2112;
                  v42 = v28;
                  v29 = v28;
                  _os_log_impl(&dword_24A0AC000, v17, type, "Ignoring unknown EAS 2003 policy %@ (%@)", buf, 0x16u);
                }

                goto LABEL_12;
              }

              v23 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:@"AEFrequencyType"];
              bOOLValue2 = [v23 BOOLValue];

              if (bOOLValue2)
              {
                v25 = [_policyForWAPProvisioningXMLData objectForKeyedSubscript:@"AEFrequencyValue"];
                intValue2 = [v25 intValue];

                v17 = [MEMORY[0x277CCABB0] numberWithInt:(60 * intValue2)];
                v18 = v5;
                v19 = v17;
                v20 = @"MaxInactivityTimeDeviceLock";
LABEL_11:
                [v18 setObject:v19 forKeyedSubscript:v20];
LABEL_12:
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v30 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
        v12 = v30;
      }

      while (v30);
    }
  }

  else
  {
    allKeys = DALoggingwithCategory();
    v31 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(allKeys, v31))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, allKeys, v31, "EAS 2003 policy is not enabled, treating as empty 2007 policy", buf, 2u);
    }

    v5 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)perDomainDictsForPolicy
{
  _wbxmlPolicyDict = [(ASWAPXMLPolicy *)self _wbxmlPolicyDict];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = managedConfigurationPoliciesFromEASWBXMLPolicies(_wbxmlPolicyDict);
  v5 = perAccountEASPoliciesFromEASWBXMLPolicies(_wbxmlPolicyDict);
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"ASPolicyMCFeatures"];
  }

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
  }

  return v3;
}

@end