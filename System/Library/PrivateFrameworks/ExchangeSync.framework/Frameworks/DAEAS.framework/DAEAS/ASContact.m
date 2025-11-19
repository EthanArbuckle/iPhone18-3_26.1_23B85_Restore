@interface ASContact
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)contactWithABRecord:(void *)a3 serverID:(id)a4;
+ (id)externalRepClasses;
- (ASContact)initWithABRecord:(void *)a3 serverID:(id)a4;
- (ASContact)initWithCoder:(id)a3;
- (BOOL)_saveDatesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_saveEmailsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_saveExternalRepToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4 storeExternalRep:(BOOL)a5;
- (BOOL)_saveIMsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_savePhoneNumbersToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_saveRelatedNamesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_saveStreetAddressesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_saveURLsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4;
- (BOOL)_setDatesWithExistingRecord:(void *)a3;
- (BOOL)_setEmailsWithExistingRecord:(void *)a3;
- (BOOL)_setExternalRepWithExistingRecord:(void *)a3;
- (BOOL)_setIMsWithExistingRecord:(void *)a3;
- (BOOL)_setPhoneNumbersWithExistingRecord:(void *)a3;
- (BOOL)_setRelatedNamesWithExistingRecord:(void *)a3;
- (BOOL)_setStreetAddressesWithExistingRecord:(void *)a3;
- (BOOL)_setURLsWithExistingRecord:(void *)a3;
- (BOOL)deleteFromAddressBook;
- (BOOL)loadABRecord;
- (BOOL)saveServerIDToContact;
- (NSString)description;
- (id)_transformedDateForABFramework:(id)a3;
- (id)bestEmailFromAppData:(int)a3;
- (void)_detectFileAsAutoConstruction;
- (void)_loadAttributesFromABRecord:(void *)a3;
- (void)_reconstructFileAsField;
- (void)_setImageOnContactFromPerson:(void *)a3;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadABRecord;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
- (void)setABRecord:(void *)a3;
- (void)setBody:(id)a3;
- (void)setBodySizeNumber:(id)a3;
- (void)setBodyTruncatedNumber:(id)a3;
@end

@implementation ASContact

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_24 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_24;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_24 = v2;
    acceptsTopLevelLeaves___haveChecked_24 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_24 == 1)
  {
    v2 = parsingLeafNode___result_24;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_24 = v2;
    parsingLeafNode___haveChecked_24 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_24 == 1)
  {
    v2 = parsingWithSubItems___result_24;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_24 = v2;
    parsingWithSubItems___haveChecked_24 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_24 == 1)
  {
    v2 = frontingBasicTypes___result_24;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_24 = v2;
    frontingBasicTypes___haveChecked_24 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_24 == 1)
  {
    v2 = notifyOfUnknownTokens___result_24;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_24 = v2;
    notifyOfUnknownTokens___haveChecked_24 = 1;
  }

  return v2 & 1;
}

- (id)_transformedDateForABFramework:(id)a3
{
  v3 = [a3 gmtMidnight];
  v4 = [v3 dateByAddingYears:0 months:0 days:0 hours:12 minutes:0 seconds:0];

  return v4;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v37.receiver = a1;
    v37.super_class = &OBJC_METACLASS___ASContact;
    v6 = objc_msgSendSuper2(&v37, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v35 = objc_alloc(MEMORY[0x277CBEAC0]);
    v36 = a1;
    v32 = [ASParseRule alloc];
    v31 = objc_opt_class();
    v29 = MEMORY[0x277CBEAC0];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:1 token:22 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:278];
    v30 = [v9 dictionaryWithObjectsAndKeys:{v34, v33, 0}];
    v26 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:1 token:21 objectClass:v8 setterMethod:sel_setCategories_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v30];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:277];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:1 token:24 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:280];
    v25 = [v12 dictionaryWithObjectsAndKeys:{v28, v27, 0}];
    v23 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:1 token:23 objectClass:v11 setterMethod:sel_setChildren_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v25];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:279];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v16 = [v29 dictionaryWithObjectsAndKeys:{v26, v24, v23, v13, v14, v15, 0}];
    v17 = [(ASParseRule *)v32 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v31 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v16];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v19 = [v35 initWithObjectsAndKeys:{v17, v18, 0}];

    [v5 addEntriesFromDictionary:v19];
    v20 = +[ASItem parseRuleCache];
    v21 = NSStringFromClass(v36);
    [v20 setObject:v5 forKey:v21];
  }

  return v5;
}

- (void)_setImageOnContactFromPerson:(void *)a3
{
  HIBYTE(v6) = 0;
  LODWORD(v6) = 2;
  v4 = DAGetSyncImageForPerson();
  v5 = [v4 base64EncodedStringWithOptions:{0, 0, v6}];
  if (v5)
  {
    [(ASContact *)self setPicture:v5];
  }
}

- (BOOL)_setDatesWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9870]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = *MEMORY[0x277CE9848];
        do
        {
          v10 = ABMultiValueCopyLabelAtIndex(v5, v8);
          if ([v9 isEqualToString:v10])
          {
            v11 = ABMultiValueCopyValueAtIndex(v5, v8);
            v12 = [(ASContact *)self _transformedDateForActiveSync:v11];
            [(ASContact *)self setAnniversary:v12];
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }

    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setRelatedNamesWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A38]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        while (1)
        {
          v9 = ABMultiValueCopyLabelAtIndex(v5, v8);
          if ([@"_$!<Assistant>!$_" isEqualToString:v9])
          {
            break;
          }

          if ([@"_$!<Manager>!$_" isEqualToString:v9])
          {
            v10 = ABMultiValueCopyValueAtIndex(v5, v8);
            [(ASContact *)self setManagerName:v10];
            goto LABEL_11;
          }

          if ([@"_$!<Spouse>!$_" isEqualToString:v9])
          {
            v10 = ABMultiValueCopyValueAtIndex(v5, v8);
            [(ASContact *)self setSpouse:v10];
            goto LABEL_11;
          }

LABEL_12:

          if (v7 == ++v8)
          {
            goto LABEL_13;
          }
        }

        v10 = ABMultiValueCopyValueAtIndex(v5, v8);
        [(ASContact *)self setAssistantName:v10];
LABEL_11:

        goto LABEL_12;
      }
    }

LABEL_13:
    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setPhoneNumbersWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A18]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = *MEMORY[0x277CE9800];
        v12 = *MEMORY[0x277CE9AE8];
        v23 = *MEMORY[0x277CE9A28];
        v22 = *MEMORY[0x277CE99F0];
        v21 = *MEMORY[0x277CE9A08];
        v20 = *MEMORY[0x277CE9A10];
        v19 = *MEMORY[0x277CE99D8];
        v18 = *MEMORY[0x277CE99E0];
        v17 = *MEMORY[0x277CE9A20];
        v16 = *MEMORY[0x277CE99E8];
        do
        {
          v13 = ABMultiValueCopyLabelAtIndex(v5, v10);
          if ([v11 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            if (v8)
            {
              [(ASContact *)self setHome2TelephoneNumber:v14];
            }

            else
            {
              [(ASContact *)self setHomeTelephoneNumber:v14];
            }

            v8 = 1;
          }

          else if ([v12 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            if (v9)
            {
              [(ASContact *)self setBusiness2TelephoneNumber:v14];
            }

            else
            {
              [(ASContact *)self setBusinessTelephoneNumber:v14];
            }

            v9 = 1;
          }

          else if ([v23 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setBusinessFaxNumber:v14];
          }

          else if ([v22 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setHomeFaxNumber:v14];
          }

          else if ([v21 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setMobileTelephoneNumber:v14];
          }

          else if ([v20 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setPagerNumber:v14];
          }

          else if ([v19 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setAssistantTelephoneNumber:v14];
          }

          else if ([v18 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setCarTelephoneNumber:v14];
          }

          else if ([v17 isEqualToString:v13])
          {
            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setRadioTelephoneNumber:v14];
          }

          else
          {
            if (![v16 isEqualToString:v13])
            {
              goto LABEL_18;
            }

            v14 = ABMultiValueCopyValueAtIndex(v5, v10);
            [(ASContact *)self setCompanyMainPhone:v14];
          }

LABEL_18:
          ++v10;
        }

        while (v7 != v10);
      }
    }

    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setStreetAddressesWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9828]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = *MEMORY[0x277CE9AE8];
        v29 = *MEMORY[0x277CE9800];
        v28 = *MEMORY[0x277CE9808];
        v32 = *MEMORY[0x277CE9810];
        v31 = *MEMORY[0x277CE9820];
        v30 = *MEMORY[0x277CE9840];
        v10 = *MEMORY[0x277CE9830];
        v11 = *MEMORY[0x277CE9838];
        while (1)
        {
          v12 = ABMultiValueCopyLabelAtIndex(v5, v8);
          if ([v9 isEqualToString:v12])
          {
            break;
          }

          if ([v29 isEqualToString:v12])
          {
            v13 = ABMultiValueCopyValueAtIndex(v5, v8);
            v19 = [v13 objectForKeyedSubscript:v32];
            [(ASContact *)self setHomeAddressCity:v19];

            v20 = [v13 objectForKeyedSubscript:v31];
            [(ASContact *)self setHomeAddressCountry:v20];

            v21 = [v13 objectForKeyedSubscript:v30];
            [(ASContact *)self setHomeAddressPostalCode:v21];

            v22 = [v13 objectForKeyedSubscript:v10];
            [(ASContact *)self setHomeAddressState:v22];

            v18 = [v13 objectForKeyedSubscript:v11];
            [(ASContact *)self setHomeAddressStreet:v18];
            goto LABEL_11;
          }

          if ([v28 isEqualToString:v12])
          {
            v13 = ABMultiValueCopyValueAtIndex(v5, v8);
            v23 = [v13 objectForKeyedSubscript:v32];
            [(ASContact *)self setOtherAddressCity:v23];

            v24 = [v13 objectForKeyedSubscript:v31];
            [(ASContact *)self setOtherAddressCountry:v24];

            v25 = [v13 objectForKeyedSubscript:v30];
            [(ASContact *)self setOtherAddressPostalCode:v25];

            v26 = [v13 objectForKeyedSubscript:v10];
            [(ASContact *)self setOtherAddressState:v26];

            v18 = [v13 objectForKeyedSubscript:v11];
            [(ASContact *)self setOtherAddressStreet:v18];
            goto LABEL_11;
          }

LABEL_12:

          if (v7 == ++v8)
          {
            goto LABEL_13;
          }
        }

        v13 = ABMultiValueCopyValueAtIndex(v5, v8);
        v14 = [v13 objectForKeyedSubscript:v32];
        [(ASContact *)self setBusinessAddressCity:v14];

        v15 = [v13 objectForKeyedSubscript:v31];
        [(ASContact *)self setBusinessAddressCountry:v15];

        v16 = [v13 objectForKeyedSubscript:v30];
        [(ASContact *)self setBusinessAddressPostalCode:v16];

        v17 = [v13 objectForKeyedSubscript:v10];
        [(ASContact *)self setBusinessAddressState:v17];

        v18 = [v13 objectForKeyedSubscript:v11];
        [(ASContact *)self setBusinessAddressStreet:v18];
LABEL_11:

        goto LABEL_12;
      }
    }

LABEL_13:
    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setEmailsWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9888]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          v9 = ABMultiValueCopyValueAtIndex(v5, i);
          if (i == 1)
          {
            [(ASContact *)self setEmail2Address:v9];
          }

          else if (i)
          {
            [(ASContact *)self setEmail3Address:v9];
          }

          else
          {
            [(ASContact *)self setEmail1Address:v9];
          }
        }
      }
    }

    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setURLsWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A58]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = *MEMORY[0x277CE98D0];
        do
        {
          v10 = ABMultiValueCopyLabelAtIndex(v5, v8);
          if ([v9 isEqualToString:v10])
          {
            v11 = ABMultiValueCopyValueAtIndex(v5, v8);
            [(ASContact *)self setWebpage:v11];
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }

    CFRelease(v5);
  }

  return 1;
}

- (BOOL)_setIMsWithExistingRecord:(void *)a3
{
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE98E8]);
  if (v4)
  {
    v5 = v4;
    if (ABMultiValueGetCount(v4) >= 1)
    {
      Count = ABMultiValueGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = *MEMORY[0x277CE9948];
        do
        {
          v10 = ABMultiValueCopyValueAtIndex(v5, v8);
          v11 = [v10 objectForKeyedSubscript:v9];
          if (v8 == 1)
          {
            [(ASContact *)self setIm2Address:v11];
          }

          else if (v8)
          {
            [(ASContact *)self setIm3Address:v11];
          }

          else
          {
            [(ASContact *)self setIm1Address:v11];
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }

    CFRelease(v5);
  }

  return 1;
}

+ (id)externalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (BOOL)_setExternalRepWithExistingRecord:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = ABRecordCopyValue(a3, *MEMORY[0x277CE98A0]);
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = +[ASContact externalRepClasses];
    v28 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v28];
    v8 = v28;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [v9 objectForKeyedSubscript:@"easExtraProperties"];
    }

    else
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_24A0AC000, v11, v12, "Unable to decode existing object: %@. (Actually decoded %@)", buf, 0x16u);
      }

      v10 = 0;
      v9 = 0;
    }

    self->_fileAsAutoConstruction = 1;
    if (v9)
    {
      v13 = [v9 objectForKeyedSubscript:@"fileAsAutoConstruction"];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 intValue];
        self->_fileAsAutoConstruction = v15;
        if (v15 >= 0xE)
        {
          self->_fileAsAutoConstruction = 1;
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 0;
            _os_log_impl(&dword_24A0AC000, v16, v17, "Retrieved out-of-range File As auto construction enum.", buf, 2u);
          }
        }
      }
    }

    if (v10)
    {
      v18 = [v10 objectForKeyedSubscript:&unk_285D57BB8];
      [(ASContact *)self setCategories:v18];

      v19 = [v10 objectForKeyedSubscript:&unk_285D57BD0];
      [(ASContact *)self setChildren:v19];

      v20 = [v10 objectForKeyedSubscript:&unk_285D57BE8];
      [(ASContact *)self setOfficeLocation:v20];

      v21 = [v10 objectForKeyedSubscript:&unk_285D57C00];
      [(ASContact *)self setYomiCompanyName:v21];

      v22 = [v10 objectForKeyedSubscript:&unk_285D57C18];
      [(ASContact *)self setCustomerID:v22];

      v23 = [v10 objectForKeyedSubscript:&unk_285D57C30];
      [(ASContact *)self setGovernmentID:v23];

      v24 = [v10 objectForKeyedSubscript:&unk_285D57C48];
      [(ASContact *)self setAccountName:v24];

      v25 = [v10 objectForKeyedSubscript:&unk_285D57C60];
      [(ASContact *)self setMms:v25];
    }
  }

  else
  {
    v9 = 0;
    self->_fileAsAutoConstruction = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_detectFileAsAutoConstruction
{
  if (!self->_fileAs)
  {
    self->_fileAsAutoConstruction = 1;
    return;
  }

  v14 = objc_opt_new();
  [v14 appendString:self->_firstName withSeparator:0];
  [v14 appendString:self->_middleName withSeparator:@" "];
  if ([(NSString *)self->_companyName length])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", self->_companyName];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  [v4 appendString:self->_lastName withSeparator:0];
  [v4 appendString:self->_firstName withSeparator:0];
  [v4 appendString:self->_middleName withSeparator:@" "];
  v5 = objc_opt_new();
  [v5 appendString:self->_lastName withSeparator:0];
  [v5 appendString:v14 withSeparator:{@", "}];
  if (![(NSString *)self->_fileAs isEqualToString:v5])
  {
    v7 = objc_opt_new();

    [v7 appendString:v14 withSeparator:0];
    [v7 appendString:self->_lastName withSeparator:@" "];
    [v7 appendString:self->_suffix withSeparator:@" "];
    if ([(NSString *)self->_fileAs isEqualToString:v7])
    {
      v8 = 2;
    }

    else
    {
      v5 = [(NSString *)self->_companyName mutableCopy];

      if ([(NSString *)self->_fileAs isEqualToString:v5])
      {
        v6 = 3;
        goto LABEL_8;
      }

      v7 = objc_opt_new();

      [v7 appendString:self->_lastName withSeparator:0];
      [v7 appendString:v14 withSeparator:{@", "}];
      [v7 appendString:v3 withSeparator:@" "];
      if ([(NSString *)self->_fileAs isEqualToString:v7])
      {
        v8 = 4;
      }

      else
      {
        v5 = objc_opt_new();

        [v5 appendString:self->_companyName withSeparator:0];
        v9 = objc_opt_new();
        [v9 appendString:self->_lastName withSeparator:0];
        [v9 appendString:v14 withSeparator:{@", "}];
        if ([v9 length])
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v9];
          [v5 appendString:v10 withSeparator:@" "];
        }

        if ([(NSString *)self->_fileAs isEqualToString:v5])
        {
          v6 = 5;
          goto LABEL_8;
        }

        v7 = objc_opt_new();

        [v7 appendString:self->_lastName withSeparator:0];
        [v7 appendString:v14 withSeparator:@" "];
        [v7 appendString:self->_suffix withSeparator:@" "];
        if ([(NSString *)self->_fileAs isEqualToString:v7])
        {
          v8 = 6;
        }

        else
        {
          v5 = objc_opt_new();

          [v5 appendString:self->_lastName withSeparator:0];
          [v5 appendString:v14 withSeparator:@" "];
          if ([(NSString *)self->_fileAs isEqualToString:v5])
          {
            v6 = 7;
            goto LABEL_8;
          }

          v7 = objc_opt_new();

          [v7 appendString:self->_lastName withSeparator:0];
          [v7 appendString:v14 withSeparator:@" "];
          [v7 appendString:v3 withSeparator:@" "];
          if ([(NSString *)self->_fileAs isEqualToString:v7])
          {
            v8 = 8;
          }

          else
          {
            v5 = objc_opt_new();

            [v5 appendString:self->_companyName withSeparator:0];
            v11 = objc_opt_new();
            [v11 appendString:self->_lastName withSeparator:0];
            [v11 appendString:v14 withSeparator:@" "];
            if ([v11 length])
            {
              v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v11];
              [v5 appendString:v12 withSeparator:@" "];
            }

            if ([(NSString *)self->_fileAs isEqualToString:v5])
            {
              v6 = 9;
              goto LABEL_8;
            }

            v7 = objc_opt_new();

            [v7 appendString:v4 withSeparator:0];
            [v7 appendString:self->_suffix withSeparator:@" "];
            if ([(NSString *)self->_fileAs isEqualToString:v7])
            {
              v8 = 10;
            }

            else
            {
              v5 = objc_opt_new();

              [v5 appendString:v4 withSeparator:0];
              if ([(NSString *)self->_fileAs isEqualToString:v5])
              {
                v6 = 11;
                goto LABEL_8;
              }

              v7 = objc_opt_new();

              [v7 appendString:v4 withSeparator:0];
              [v7 appendString:v3 withSeparator:@" "];
              if (![(NSString *)self->_fileAs isEqualToString:v7])
              {
                v5 = objc_opt_new();

                [v5 appendString:self->_companyName withSeparator:0];
                if ([v4 length])
                {
                  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v4];
                  [v5 appendString:v13 withSeparator:@" "];
                }

                if (![(NSString *)self->_fileAs isEqualToString:v5])
                {
                  self->_fileAsAutoConstruction = 0;
                  goto LABEL_12;
                }

                v6 = 13;
                goto LABEL_8;
              }

              v8 = 12;
            }
          }
        }
      }
    }

    self->_fileAsAutoConstruction = v8;
    v5 = v7;
    goto LABEL_12;
  }

  v6 = 1;
LABEL_8:
  self->_fileAsAutoConstruction = v6;
LABEL_12:
}

- (void)_reconstructFileAsField
{
  if (self->_fileAsAutoConstruction)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    [v4 appendString:self->_firstName withSeparator:0];
    [v4 appendString:self->_middleName withSeparator:@" "];
    if ([(NSString *)self->_companyName length])
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", self->_companyName];
    }

    else
    {
      v24 = 0;
    }

    v5 = objc_opt_new();
    [v5 appendString:self->_lastName withSeparator:0];
    [v5 appendString:self->_firstName withSeparator:0];
    [v5 appendString:self->_middleName withSeparator:@" "];
    switch(self->_fileAsAutoConstruction)
    {
      case 1:
        [v3 appendString:self->_lastName withSeparator:0];
        v6 = @", ";
        goto LABEL_23;
      case 2:
        [v3 appendString:v4 withSeparator:0];
        lastName = self->_lastName;
        v21 = v3;
        goto LABEL_19;
      case 3:
        companyName = self->_companyName;
        v17 = v3;
        goto LABEL_25;
      case 4:
        [v3 appendString:self->_lastName withSeparator:0];
        v9 = @", ";
        v7 = v3;
        v8 = v4;
        goto LABEL_14;
      case 5:
        [v3 appendString:self->_companyName withSeparator:0];
        v10 = objc_opt_new();
        [v10 appendString:self->_lastName withSeparator:0];
        v11 = @", ";
        v12 = v10;
        v13 = v4;
        goto LABEL_28;
      case 6:
        [v3 appendString:self->_lastName withSeparator:0];
        v21 = v3;
        lastName = v4;
LABEL_19:
        [v21 appendString:lastName withSeparator:@" "];
        companyName = self->_suffix;
        v17 = v3;
        v6 = @" ";
        goto LABEL_26;
      case 7:
        [v3 appendString:self->_lastName withSeparator:0];
        v6 = @" ";
LABEL_23:
        v17 = v3;
        companyName = v4;
        goto LABEL_26;
      case 8:
        [v3 appendString:self->_lastName withSeparator:0];
        [v3 appendString:v4 withSeparator:@" "];
        v18 = v3;
        v14 = v24;
        v19 = v24;
        goto LABEL_16;
      case 9:
        [v3 appendString:self->_companyName withSeparator:@" "];
        v10 = objc_opt_new();
        [v10 appendString:self->_lastName withSeparator:0];
        v12 = v10;
        v13 = v4;
        v11 = @" ";
LABEL_28:
        [v12 appendString:v13 withSeparator:v11];
        if ([v10 length])
        {
          v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v10];
          [v3 appendString:v23 withSeparator:@" "];
        }

        goto LABEL_30;
      case 0xALL:
        [v3 appendString:v5 withSeparator:0];
        companyName = self->_suffix;
        v6 = @" ";
        v17 = v3;
        goto LABEL_26;
      case 0xBLL:
        v17 = v3;
        companyName = v5;
LABEL_25:
        v6 = 0;
LABEL_26:
        [v17 appendString:companyName withSeparator:v6];
        goto LABEL_31;
      case 0xCLL:
        v7 = v3;
        v8 = v5;
        v9 = 0;
LABEL_14:
        [v7 appendString:v8 withSeparator:v9];
        v18 = v3;
        v14 = v24;
        v19 = v24;
LABEL_16:
        [v18 appendString:v19 withSeparator:@" "];
        goto LABEL_32;
      case 0xDLL:
        [v3 appendString:self->_companyName withSeparator:0];
        v14 = v24;
        if ([v5 length])
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@)", v5];
          [v3 appendString:v15 withSeparator:@" "];
        }

        goto LABEL_32;
      default:
        v10 = DALoggingwithCategory();
        v22 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v10, v22))
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v10, v22, "Could not reconstruct File As field", buf, 2u);
        }

LABEL_30:

LABEL_31:
        v14 = v24;
LABEL_32:
        [(ASContact *)self setFileAs:v3];

        break;
    }
  }
}

- (void)_loadAttributesFromABRecord:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", ABRecordGetRecordID(a3)];
    [(ASChangedCollectionLeaf *)self setClientID:v5];

    v6 = ABRecordCopyValue(a3, *MEMORY[0x277CE9858]);
    v7 = [(ASContact *)self _transformedDateForActiveSync:v6];
    [(ASContact *)self setBirthday:v7];

    v8 = ABRecordCopyValue(a3, *MEMORY[0x277CE99B8]);
    [(ASContact *)self setBody:v8];

    v9 = ABRecordCopyValue(a3, *MEMORY[0x277CE99C0]);
    [(ASContact *)self setCompanyName:v9];

    v10 = ABRecordCopyValue(a3, *MEMORY[0x277CE9878]);
    [(ASContact *)self setDepartment:v10];

    v11 = ABRecordCopyValue(a3, *MEMORY[0x277CE9880]);
    [(ASContact *)self setFileAs:v11];

    v12 = ABRecordCopyValue(a3, *MEMORY[0x277CE98C0]);
    [(ASContact *)self setFirstName:v12];

    v13 = ABRecordCopyValue(a3, *MEMORY[0x277CE9958]);
    [(ASContact *)self setJobTitle:v13];

    v14 = ABRecordCopyValue(a3, *MEMORY[0x277CE9980]);
    [(ASContact *)self setLastName:v14];

    v15 = ABRecordCopyValue(a3, *MEMORY[0x277CE99A0]);
    [(ASContact *)self setMiddleName:v15];

    v16 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A50]);
    [(ASContact *)self setSuffix:v16];

    v17 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A30]);
    [(ASContact *)self setTitle:v17];

    v18 = ABRecordCopyValue(a3, *MEMORY[0x277CE99B0]);
    [(ASContact *)self setNickName:v18];

    v19 = ABRecordCopyValue(a3, *MEMORY[0x277CE98B8]);
    v20 = v19;
    v21 = MEMORY[0x277CBF0B0];
    if (v19)
    {
      v22 = [v19 mutableCopy];
      if (!CFStringTransform(v22, 0, *v21, 0))
      {
        v23 = DALoggingwithCategory();
        v24 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v23, v24))
        {
          *buf = 138412290;
          v32 = v22;
          _os_log_impl(&dword_24A0AC000, v23, v24, "Could not convert the phonetic first name %@ to Katakana", buf, 0xCu);
        }
      }

      [(ASContact *)self setYomiFirstName:v22];
    }

    v25 = ABRecordCopyValue(a3, *MEMORY[0x277CE9978]);
    v26 = v25;
    if (v25)
    {
      v27 = [v25 mutableCopy];
      if (!CFStringTransform(v27, 0, *v21, 0))
      {
        v28 = DALoggingwithCategory();
        v29 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 138412290;
          v32 = v27;
          _os_log_impl(&dword_24A0AC000, v28, v29, "Could not convert the phonetic last name %@ to Katakana", buf, 0xCu);
        }
      }

      [(ASContact *)self setYomiLastName:v27];
    }

    [(ASContact *)self _setImageOnContactFromPerson:a3];
    [(ASContact *)self _setDatesWithExistingRecord:a3];
    [(ASContact *)self _setRelatedNamesWithExistingRecord:a3];
    [(ASContact *)self _setPhoneNumbersWithExistingRecord:a3];
    [(ASContact *)self _setStreetAddressesWithExistingRecord:a3];
    [(ASContact *)self _setEmailsWithExistingRecord:a3];
    [(ASContact *)self _setURLsWithExistingRecord:a3];
    [(ASContact *)self _setIMsWithExistingRecord:a3];
    [(ASContact *)self _setExternalRepWithExistingRecord:a3];
    [(ASContact *)self _reconstructFileAsField];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (ASContact)initWithABRecord:(void *)a3 serverID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ASContact;
  v7 = [(ASChangedCollectionLeaf *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASChangedCollectionLeaf *)v7 setServerID:v6];
    if (a3)
    {
      [(ASContact *)v8 _loadAttributesFromABRecord:a3];
      [(ASContact *)v8 setABRecord:a3];
    }
  }

  return v8;
}

+ (id)contactWithABRecord:(void *)a3 serverID:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithABRecord:a3 serverID:v6];

  return v7;
}

- (BOOL)_saveDatesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  Mutable = ABMultiValueCreateMutable(4u);
  v8 = *MEMORY[0x277CE9848];
  v9 = [(ASContact *)self anniversary];
  v10 = [(ASContact *)self _transformedDateForABFramework:v9];
  if (v10)
  {
    ABMultiValueAddValueAndLabel(Mutable, v10, v8, 0);
  }

  if (a4)
  {
    v11 = [(ASContact *)self anniversary];

    v12 = *MEMORY[0x277CE9870];
    if (v11 || (v15 = ABRecordCopyValue(a3, *MEMORY[0x277CE9870])) == 0)
    {
      v13 = 0;
    }

    else
    {
      v16 = v15;
      if (ABMultiValueGetCount(v15) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v16)) != 0)
      {
        v18 = MutableCopy;
        if (ABMultiValueGetCount(MutableCopy) && (Count = ABMultiValueGetCount(v18), Count >= 1))
        {
          v20 = Count;
          v13 = 0;
          for (i = 0; i != v20; ++i)
          {
            v22 = ABMultiValueCopyLabelAtIndex(v18, i);
            if ([(__CFString *)v8 isEqualToString:v22])
            {
              v23 = ABMultiValueCopyValueAtIndex(v18, i);
              if (v23)
              {
                ABMultiValueAddValueAndLabel(v18, v23, v8, 0);
              }

              v13 = 1;
            }
          }
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v18);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v16);
    }
  }

  else
  {
    v13 = 0;
    v12 = *MEMORY[0x277CE9870];
  }

  ABRecordSetValue(a3, v12, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

- (BOOL)_saveRelatedNamesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v4 = a4;
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9850];
  v9 = [(ASContact *)self assistantName];
  if (v9)
  {
    ABMultiValueAddValueAndLabel(Mutable, v9, v8, 0);
  }

  v10 = *MEMORY[0x277CE9990];
  v11 = [(ASContact *)self managerName];
  if (v11)
  {
    ABMultiValueAddValueAndLabel(Mutable, v11, v10, 0);
  }

  v12 = *MEMORY[0x277CE9A48];
  v13 = [(ASContact *)self spouse];
  if (v13)
  {
    ABMultiValueAddValueAndLabel(Mutable, v13, v12, 0);
  }

  v14 = *MEMORY[0x277CE9A38];
  if (v4 && (v15 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A38])) != 0)
  {
    v16 = v15;
    if (ABMultiValueGetCount(v15) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v16)) != 0)
    {
      v18 = MutableCopy;
      v32 = a3;
      v31 = v14;
      v30 = v16;
      if (ABMultiValueGetCount(MutableCopy))
      {
        Count = ABMultiValueGetCount(v18);
        if (Count >= 1)
        {
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v21 = ABMultiValueCopyLabelAtIndex(v18, v20);
            if ([(__CFString *)v8 isEqualToString:v21]&& ([(ASContact *)self assistantName], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
            {
              v25 = ABMultiValueCopyValueAtIndex(v18, v20);
              if (v25)
              {
                v26 = Mutable;
                v27 = v25;
                v28 = v8;
                goto LABEL_26;
              }
            }

            else if ([(__CFString *)v10 isEqualToString:v21, v30]&& ([(ASContact *)self managerName], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
            {
              v25 = ABMultiValueCopyValueAtIndex(v18, v20);
              if (v25)
              {
                v26 = Mutable;
                v27 = v25;
                v28 = v10;
                goto LABEL_26;
              }
            }

            else
            {
              if (![(__CFString *)v12 isEqualToString:v21])
              {
                goto LABEL_28;
              }

              v24 = [(ASContact *)self spouse];

              if (v24)
              {
                goto LABEL_28;
              }

              v25 = ABMultiValueCopyValueAtIndex(v18, v20);
              if (v25)
              {
                v26 = Mutable;
                v27 = v25;
                v28 = v12;
LABEL_26:
                ABMultiValueAddValueAndLabel(v26, v27, v28, 0);
              }
            }

            v19 = 1;
LABEL_28:

            if (Count == ++v20)
            {
              goto LABEL_33;
            }
          }
        }
      }

      v19 = 0;
LABEL_33:
      CFRelease(v18);
      a3 = v32;
      v14 = v31;
      v16 = v30;
    }

    else
    {
      v19 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v19 = 0;
  }

  ABRecordSetValue(a3, v14, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

- (BOOL)_savePhoneNumbersToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v4 = a4;
  v112 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9AE8];
  v9 = [(ASContact *)self businessTelephoneNumber];
  if (v9)
  {
    ABMultiValueAddValueAndLabel(Mutable, v9, v8, 0);
  }

  v10 = [(ASContact *)self business2TelephoneNumber];
  if (v10)
  {
    ABMultiValueAddValueAndLabel(Mutable, v10, v8, 0);
  }

  v11 = *MEMORY[0x277CE9A28];
  v12 = [(ASContact *)self businessFaxNumber];
  if (v12)
  {
    ABMultiValueAddValueAndLabel(Mutable, v12, v11, 0);
  }

  v98 = v11;

  v13 = *MEMORY[0x277CE9800];
  v14 = [(ASContact *)self homeTelephoneNumber];
  if (v14)
  {
    ABMultiValueAddValueAndLabel(Mutable, v14, v13, 0);
  }

  v15 = [(ASContact *)self home2TelephoneNumber];
  if (v15)
  {
    ABMultiValueAddValueAndLabel(Mutable, v15, v13, 0);
  }

  v16 = *MEMORY[0x277CE99F0];
  v17 = [(ASContact *)self homeFaxNumber];
  if (v17)
  {
    ABMultiValueAddValueAndLabel(Mutable, v17, v16, 0);
  }

  v97 = v16;

  v18 = *MEMORY[0x277CE9A08];
  v19 = [(ASContact *)self mobileTelephoneNumber];
  if (v19)
  {
    ABMultiValueAddValueAndLabel(Mutable, v19, v18, 0);
  }

  v20 = *MEMORY[0x277CE9A10];
  v21 = [(ASContact *)self pagerNumber];
  if (v21)
  {
    ABMultiValueAddValueAndLabel(Mutable, v21, v20, 0);
  }

  v95 = v20;

  v22 = *MEMORY[0x277CE99D8];
  v23 = [(ASContact *)self assistantTelephoneNumber];
  if (v23)
  {
    ABMultiValueAddValueAndLabel(Mutable, v23, v22, 0);
  }

  v99 = v8;
  v94 = v22;

  v24 = *MEMORY[0x277CE99E0];
  v25 = [(ASContact *)self carTelephoneNumber];
  if (v25)
  {
    ABMultiValueAddValueAndLabel(Mutable, v25, v24, 0);
  }

  v26 = *MEMORY[0x277CE9A20];
  v27 = [(ASContact *)self radioTelephoneNumber];
  if (v27)
  {
    ABMultiValueAddValueAndLabel(Mutable, v27, v26, 0);
  }

  v28 = *MEMORY[0x277CE99E8];
  v29 = [(ASContact *)self companyMainPhone];
  if (v29)
  {
    ABMultiValueAddValueAndLabel(Mutable, v29, v28, 0);
  }

  v93 = v28;

  v30 = *MEMORY[0x277CE9A18];
  if (!v4)
  {
    v31 = a3;
    goto LABEL_125;
  }

  v90 = v24;
  v91 = v18;
  v31 = a3;
  property = *MEMORY[0x277CE9A18];
  v32 = ABRecordCopyValue(a3, v30);
  v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  v101 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  v34 = [(ASContact *)self homeTelephoneNumber];

  if (v34)
  {
    v35 = [(ASContact *)self homeTelephoneNumber];
    [v33 addObject:v35];
  }

  v36 = [(ASContact *)self home2TelephoneNumber];

  if (v36)
  {
    v37 = [(ASContact *)self home2TelephoneNumber];
    [v33 addObject:v37];
  }

  v38 = [(ASContact *)self businessTelephoneNumber];

  if (v38)
  {
    v39 = [(ASContact *)self businessTelephoneNumber];
    [v101 addObject:v39];
  }

  v40 = [(ASContact *)self business2TelephoneNumber];

  if (v40)
  {
    v41 = [(ASContact *)self business2TelephoneNumber];
    [v101 addObject:v41];
  }

  v100 = v33;
  if (v32)
  {
    if (ABMultiValueGetCount(v32) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v32)) != 0)
    {
      v43 = MutableCopy;
      v87 = v32;
      v88 = a3;
      if (ABMultiValueGetCount(MutableCopy) >= 1)
      {
        Count = ABMultiValueGetCount(v43);
        if (Count >= 1)
        {
          v45 = Count;
          v96 = 0;
          v46 = 0;
          while (1)
          {
            v47 = ABMultiValueCopyLabelAtIndex(v43, v46);
            if ([(__CFString *)v13 isEqualToString:v47])
            {
              v48 = ABMultiValueCopyValueAtIndex(v43, v46);
              v49 = v33;
            }

            else
            {
              if (![(__CFString *)v99 isEqualToString:v47])
              {
                if ([(__CFString *)v98 isEqualToString:v47]&& ([(ASContact *)self businessFaxNumber], v50 = objc_claimAutoreleasedReturnValue(), v50, !v50))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v98;
                }

                else if ([(__CFString *)v97 isEqualToString:v47]&& ([(ASContact *)self homeFaxNumber], v51 = objc_claimAutoreleasedReturnValue(), v51, !v51))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v97;
                }

                else if ([(__CFString *)v91 isEqualToString:v47]&& ([(ASContact *)self mobileTelephoneNumber], v52 = objc_claimAutoreleasedReturnValue(), v52, !v52))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v91;
                }

                else if ([(__CFString *)v95 isEqualToString:v47]&& ([(ASContact *)self pagerNumber], v53 = objc_claimAutoreleasedReturnValue(), v53, !v53))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v95;
                }

                else if ([(__CFString *)v94 isEqualToString:v47]&& ([(ASContact *)self assistantTelephoneNumber], v54 = objc_claimAutoreleasedReturnValue(), v54, !v54))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v94;
                }

                else if ([(__CFString *)v90 isEqualToString:v47]&& ([(ASContact *)self carTelephoneNumber], v55 = objc_claimAutoreleasedReturnValue(), v55, !v55))
                {
                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v90;
                }

                else
                {
                  if (![(__CFString *)v26 isEqualToString:v47]|| ([(ASContact *)self radioTelephoneNumber], v56 = objc_claimAutoreleasedReturnValue(), v56, v56))
                  {
                    if (![(__CFString *)v93 isEqualToString:v47])
                    {
                      goto LABEL_80;
                    }

                    v57 = [(ASContact *)self companyMainPhone];

                    if (v57)
                    {
                      goto LABEL_80;
                    }

                    v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                    if (v48)
                    {
                      v58 = Mutable;
                      v59 = v48;
                      v60 = v93;
                      goto LABEL_77;
                    }

LABEL_78:
                    v96 = 1;
                    goto LABEL_79;
                  }

                  v48 = ABMultiValueCopyValueAtIndex(v43, v46);
                  if (!v48)
                  {
                    goto LABEL_78;
                  }

                  v58 = Mutable;
                  v59 = v48;
                  v60 = v26;
                }

LABEL_77:
                ABMultiValueAddValueAndLabel(v58, v59, v60, 0);
                goto LABEL_78;
              }

              v48 = ABMultiValueCopyValueAtIndex(v43, v46);
              v49 = v101;
            }

            [v49 addObject:v48];
LABEL_79:

LABEL_80:
            if (v45 == ++v46)
            {
              goto LABEL_86;
            }
          }
        }
      }

      v96 = 0;
LABEL_86:
      CFRelease(v43);
      v32 = v87;
      v31 = v88;
    }

    else
    {
      v96 = 0;
    }

    CFRelease(v32);
  }

  else
  {
    v96 = 0;
  }

  v61 = [(ASContact *)self homeTelephoneNumber];

  if (v61)
  {
    v62 = [(ASContact *)self homeTelephoneNumber];
    [v33 removeObject:v62];

    v63 = 1;
  }

  else
  {
    v63 = 0;
  }

  v64 = [(ASContact *)self home2TelephoneNumber];

  if (v64)
  {
    v65 = [(ASContact *)self home2TelephoneNumber];
    [v33 removeObject:v65];

    if (v61)
    {
      goto LABEL_106;
    }

    v63 = 1;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v66 = v33;
  v67 = [v66 countByEnumeratingWithState:&v106 objects:v111 count:16];
  if (v67)
  {
    v68 = v67;
    v89 = v31;
    v69 = 0;
    v70 = *v107;
LABEL_96:
    v71 = 0;
    v72 = v69;
    while (1)
    {
      if (*v107 != v70)
      {
        objc_enumerationMutation(v66);
      }

      v69 = *(*(&v106 + 1) + 8 * v71);

      if (v69)
      {
        ABMultiValueAddValueAndLabel(Mutable, v69, v13, 0);
      }

      if (v63)
      {
        break;
      }

      ++v71;
      v63 = 1;
      v72 = v69;
      if (v68 == v71)
      {
        v68 = [v66 countByEnumeratingWithState:&v106 objects:v111 count:16];
        if (v68)
        {
          goto LABEL_96;
        }

        break;
      }
    }

    v31 = v89;
    v33 = v100;
  }

LABEL_106:
  v73 = [(ASContact *)self businessTelephoneNumber];

  if (v73)
  {
    v74 = [(ASContact *)self businessTelephoneNumber];
    [v101 removeObject:v74];

    v75 = 1;
  }

  else
  {
    v75 = 0;
  }

  v76 = [(ASContact *)self business2TelephoneNumber];

  if (!v76)
  {
    goto LABEL_112;
  }

  v77 = [(ASContact *)self business2TelephoneNumber];
  [v101 removeObject:v77];

  if (!v73)
  {
    v75 = 1;
LABEL_112:
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v78 = v101;
    v79 = [v78 countByEnumeratingWithState:&v102 objects:v110 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = 0;
      v82 = *v103;
LABEL_114:
      v83 = 0;
      v84 = v81;
      while (1)
      {
        if (*v103 != v82)
        {
          objc_enumerationMutation(v78);
        }

        v81 = *(*(&v102 + 1) + 8 * v83);

        if (v81)
        {
          ABMultiValueAddValueAndLabel(Mutable, v81, v99, 0);
        }

        if (v75)
        {
          break;
        }

        ++v83;
        v75 = 1;
        v84 = v81;
        if (v80 == v83)
        {
          v80 = [v78 countByEnumeratingWithState:&v102 objects:v110 count:16];
          if (v80)
          {
            goto LABEL_114;
          }

          break;
        }
      }

      v33 = v100;
    }
  }

  v30 = property;
  LOBYTE(v4) = v96;
LABEL_125:
  ABRecordSetValue(v31, v30, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v85 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_saveStreetAddressesToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v53 = a4;
  multiValue = ABMultiValueCreateMutable(5u);
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  v7 = *MEMORY[0x277CE9810];
  v8 = [(ASContact *)self businessAddressCity];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277CE9820];
  v10 = [(ASContact *)self businessAddressCountry];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:v9];
  }

  record = a3;

  v11 = *MEMORY[0x277CE9840];
  v12 = [(ASContact *)self businessAddressPostalCode];
  if (v12)
  {
    [v6 setObject:v12 forKeyedSubscript:v11];
  }

  v13 = *MEMORY[0x277CE9830];
  v14 = [(ASContact *)self businessAddressState];
  if (v14)
  {
    [v6 setObject:v14 forKeyedSubscript:v13];
  }

  v15 = *MEMORY[0x277CE9838];
  v16 = [(ASContact *)self businessAddressStreet];
  if (v16)
  {
    [v6 setObject:v16 forKeyedSubscript:v15];
  }

  v56 = [v6 count];
  if (v56 && v6)
  {
    ABMultiValueAddValueAndLabel(multiValue, v6, *MEMORY[0x277CE9AE8], 0);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  v18 = [(ASContact *)self homeAddressCity];
  if (v18)
  {
    [v17 setObject:v18 forKeyedSubscript:v7];
  }

  v19 = [(ASContact *)self homeAddressCountry];
  if (v19)
  {
    [v17 setObject:v19 forKeyedSubscript:v9];
  }

  v20 = [(ASContact *)self homeAddressPostalCode];
  if (v20)
  {
    [v17 setObject:v20 forKeyedSubscript:v11];
  }

  v21 = [(ASContact *)self homeAddressState];
  if (v21)
  {
    [v17 setObject:v21 forKeyedSubscript:v13];
  }

  v22 = [(ASContact *)self homeAddressStreet];
  if (v22)
  {
    [v17 setObject:v22 forKeyedSubscript:v15];
  }

  v52 = [v17 count];
  if (v52 && v17)
  {
    ABMultiValueAddValueAndLabel(multiValue, v17, *MEMORY[0x277CE9800], 0);
  }

  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  v24 = [(ASContact *)self otherAddressCity];
  if (v24)
  {
    [v23 setObject:v24 forKeyedSubscript:v7];
  }

  v25 = [(ASContact *)self otherAddressCountry];
  if (v25)
  {
    [v23 setObject:v25 forKeyedSubscript:v9];
  }

  v26 = [(ASContact *)self otherAddressPostalCode];
  if (v26)
  {
    [v23 setObject:v26 forKeyedSubscript:v11];
  }

  v27 = [(ASContact *)self otherAddressState];
  if (v27)
  {
    [v23 setObject:v27 forKeyedSubscript:v13];
  }

  v28 = [(ASContact *)self otherAddressStreet];
  if (v28)
  {
    [v23 setObject:v28 forKeyedSubscript:v15];
  }

  v29 = [v23 count];
  v30 = multiValue;
  v31 = record;
  if (v29 && v23)
  {
    ABMultiValueAddValueAndLabel(multiValue, v23, *MEMORY[0x277CE9808], 0);
  }

  v32 = *MEMORY[0x277CE9828];
  if (v53 && (v33 = ABRecordCopyValue(record, *MEMORY[0x277CE9828])) != 0)
  {
    v34 = v33;
    if (ABMultiValueGetCount(v33) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v34)) != 0)
    {
      v36 = MutableCopy;
      v49 = v34;
      if (ABMultiValueGetCount(MutableCopy) >= 1)
      {
        Count = ABMultiValueGetCount(v36);
        if (Count >= 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = *MEMORY[0x277CE9AE8];
          v51 = *MEMORY[0x277CE9800];
          label = *MEMORY[0x277CE9808];
          while (1)
          {
            v40 = ABMultiValueCopyLabelAtIndex(v36, v38);
            v41 = [(__CFString *)v39 isEqualToString:v40];
            if (v56 || !v41)
            {
              v46 = [(__CFString *)v51 isEqualToString:v40, v49];
              if (v52 || !v46)
              {
                v47 = [(__CFString *)label isEqualToString:v40];
                if (v29 || !v47)
                {
                  goto LABEL_61;
                }

                v42 = ABMultiValueCopyValueAtIndex(v36, v38);
                if (v42)
                {
                  v43 = multiValue;
                  v44 = v42;
                  v45 = label;
                  goto LABEL_59;
                }
              }

              else
              {
                v42 = ABMultiValueCopyValueAtIndex(v36, v38);
                if (v42)
                {
                  v43 = multiValue;
                  v44 = v42;
                  v45 = v51;
                  goto LABEL_59;
                }
              }
            }

            else
            {
              v42 = ABMultiValueCopyValueAtIndex(v36, v38);
              if (v42)
              {
                v43 = multiValue;
                v44 = v42;
                v45 = v39;
LABEL_59:
                ABMultiValueAddValueAndLabel(v43, v44, v45, 0);
              }
            }

            v37 = 1;
LABEL_61:

            if (Count == ++v38)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v37 = 0;
LABEL_66:
      CFRelease(v36);
      v30 = multiValue;
      v31 = record;
      v34 = v49;
    }

    else
    {
      v37 = 0;
    }

    CFRelease(v34);
  }

  else
  {
    v37 = 0;
  }

  ABRecordSetValue(v31, v32, v30, 0);
  if (v30)
  {
    CFRelease(v30);
  }

  return v37 & 1;
}

- (BOOL)_saveEmailsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v53 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CBEEE8];
  v9 = [(ASContact *)self email1Address];
  if (v9)
  {
    ABMultiValueAddValueAndLabel(Mutable, v9, v8, 0);
  }

  v10 = [(ASContact *)self email2Address];
  if (v10)
  {
    ABMultiValueAddValueAndLabel(Mutable, v10, v8, 0);
  }

  v11 = [(ASContact *)self email3Address];
  if (v11)
  {
    ABMultiValueAddValueAndLabel(Mutable, v11, v8, 0);
  }

  if (!a4)
  {
    v19 = *MEMORY[0x277CE9888];
    goto LABEL_45;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:6];
  v13 = [(ASContact *)self email1Address];

  if (v13)
  {
    v14 = [(ASContact *)self email1Address];
    [v12 addObject:v14];
  }

  v15 = [(ASContact *)self email2Address];

  if (v15)
  {
    v16 = [(ASContact *)self email2Address];
    [v12 addObject:v16];
  }

  v17 = [(ASContact *)self email3Address];

  if (v17)
  {
    v18 = [(ASContact *)self email3Address];
    [v12 addObject:v18];
  }

  v19 = *MEMORY[0x277CE9888];
  v20 = ABRecordCopyValue(a3, *MEMORY[0x277CE9888]);
  if (v20)
  {
    v21 = v20;
    if (ABMultiValueGetCount(v20) >= 1)
    {
      MutableCopy = ABMultiValueCreateMutableCopy(v21);
      if (MutableCopy)
      {
        v23 = MutableCopy;
        v46 = v19;
        v24 = a3;
        if (ABMultiValueGetCount(MutableCopy) >= 1)
        {
          Count = ABMultiValueGetCount(v23);
          if (Count >= 1)
          {
            v26 = Count;
            for (i = 0; i != v26; ++i)
            {
              v28 = ABMultiValueCopyValueAtIndex(v23, i);
              [v12 addObject:v28];
            }
          }
        }

        CFRelease(v23);
        a3 = v24;
        v19 = v46;
      }
    }

    CFRelease(v21);
  }

  v29 = [(ASContact *)self email1Address];

  if (v29)
  {
    v30 = [(ASContact *)self email1Address];
    [v12 removeObject:v30];

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = [(ASContact *)self email2Address];

  if (v32)
  {
    v33 = [(ASContact *)self email2Address];
    [v12 removeObject:v33];

    ++v31;
  }

  v34 = [(ASContact *)self email3Address];

  if (!v34)
  {
    goto LABEL_32;
  }

  v35 = [(ASContact *)self email3Address];
  [v12 removeObject:v35];

  if (v31 <= 1)
  {
    ++v31;
LABEL_32:
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v12;
    v37 = [v36 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v37)
    {
      v38 = v37;
      v47 = v19;
      v45 = a3;
      v39 = 0;
      v40 = *v49;
LABEL_34:
      v41 = 0;
      v42 = v39;
      while (1)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v39 = *(*(&v48 + 1) + 8 * v41);

        if (v39)
        {
          ABMultiValueAddValueAndLabel(Mutable, v39, v8, 0);
        }

        if (v31 == 2)
        {
          break;
        }

        ++v41;
        ++v31;
        v42 = v39;
        if (v38 == v41)
        {
          v38 = [v36 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v38)
          {
            goto LABEL_34;
          }

          break;
        }
      }

      a3 = v45;
      v19 = v47;
    }
  }

LABEL_45:
  ABRecordSetValue(a3, v19, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v43 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_saveURLsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v4 = a4;
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE98D0];
  v9 = [(ASContact *)self webpage];
  if (v9)
  {
    ABMultiValueAddValueAndLabel(Mutable, v9, v8, 0);
  }

  v10 = *MEMORY[0x277CE9A58];
  if (v4 && (v11 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A58])) != 0)
  {
    v12 = v11;
    if (ABMultiValueGetCount(v11) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v12)) != 0)
    {
      v14 = MutableCopy;
      v24 = a3;
      v23 = v12;
      if (ABMultiValueGetCount(MutableCopy) < 1 || (Count = ABMultiValueGetCount(v14), Count < 1))
      {
        v17 = 0;
      }

      else
      {
        v16 = Count;
        v17 = 0;
        for (i = 0; i != v16; ++i)
        {
          v19 = ABMultiValueCopyLabelAtIndex(v14, i);
          if ([(__CFString *)v8 isEqualToString:v19])
          {
            v20 = [(ASContact *)self webpage];

            if (!v20)
            {
              v21 = ABMultiValueCopyValueAtIndex(v14, i);
              if (v21)
              {
                ABMultiValueAddValueAndLabel(Mutable, v21, v8, 0);
              }

              v17 = 1;
            }
          }
        }
      }

      CFRelease(v14);
      v12 = v23;
      a3 = v24;
    }

    else
    {
      v17 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v17 = 0;
  }

  ABRecordSetValue(a3, v10, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v17;
}

- (BOOL)_saveIMsToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4
{
  v57 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9808];
  v9 = [(ASContact *)self im1Address];
  addIMUserNameToMultiValue(Mutable, v8, v9);

  v10 = [(ASContact *)self im2Address];
  addIMUserNameToMultiValue(Mutable, v8, v10);

  v11 = [(ASContact *)self im3Address];
  addIMUserNameToMultiValue(Mutable, v8, v11);

  if (!a4)
  {
    v19 = *MEMORY[0x277CE98E8];
    goto LABEL_37;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:6];
  v13 = [(ASContact *)self im1Address];

  if (v13)
  {
    v14 = [(ASContact *)self im1Address];
    [v12 addObject:v14];
  }

  v15 = [(ASContact *)self im2Address];

  if (v15)
  {
    v16 = [(ASContact *)self im2Address];
    [v12 addObject:v16];
  }

  v17 = [(ASContact *)self im3Address];

  if (v17)
  {
    v18 = [(ASContact *)self im3Address];
    [v12 addObject:v18];
  }

  v19 = *MEMORY[0x277CE98E8];
  v20 = ABRecordCopyValue(a3, *MEMORY[0x277CE98E8]);
  if (v20)
  {
    v21 = v20;
    if (ABMultiValueGetCount(v20) >= 1)
    {
      MutableCopy = ABMultiValueCreateMutableCopy(v21);
      if (MutableCopy)
      {
        v23 = MutableCopy;
        v47 = v21;
        v48 = a3;
        v50 = v19;
        v24 = v12;
        if (ABMultiValueGetCount(MutableCopy) >= 1)
        {
          Count = ABMultiValueGetCount(v23);
          if (Count >= 1)
          {
            v26 = Count;
            v27 = 0;
            v28 = *MEMORY[0x277CE9948];
            do
            {
              v29 = ABMultiValueCopyValueAtIndex(v23, v27);
              v30 = [v29 objectForKeyedSubscript:v28];
              [v24 addObject:v30];

              ++v27;
            }

            while (v26 != v27);
          }
        }

        CFRelease(v23);
        v21 = v47;
        a3 = v48;
        v12 = v24;
        v19 = v50;
      }
    }

    CFRelease(v21);
  }

  v31 = [(ASContact *)self im1Address];

  if (v31)
  {
    v32 = [(ASContact *)self im1Address];
    [v12 removeObject:v32];

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = [(ASContact *)self im2Address];

  if (v34)
  {
    v35 = [(ASContact *)self im2Address];
    [v12 removeObject:v35];

    ++v33;
  }

  v36 = [(ASContact *)self im3Address];

  if (!v36)
  {
    goto LABEL_26;
  }

  v37 = [(ASContact *)self im3Address];
  [v12 removeObject:v37];

  if (v33 <= 1)
  {
    ++v33;
LABEL_26:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v12;
    v39 = [v38 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v39)
    {
      v40 = v39;
      v51 = v19;
      v49 = v12;
      v41 = 0;
      v42 = *v53;
LABEL_28:
      v43 = 0;
      v44 = v41;
      while (1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v41 = *(*(&v52 + 1) + 8 * v43);

        addIMUserNameToMultiValue(Mutable, v8, v41);
        if (v33 == 2)
        {
          break;
        }

        ++v43;
        ++v33;
        v44 = v41;
        if (v40 == v43)
        {
          v40 = [v38 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v40)
          {
            goto LABEL_28;
          }

          break;
        }
      }

      v12 = v49;
      v19 = v51;
    }
  }

LABEL_37:
  ABRecordSetValue(a3, v19, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v45 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_saveExternalRepToAddressBookWithExistingRecord:(void *)a3 shouldMergeProperties:(BOOL)a4 storeExternalRep:(BOOL)a5
{
  v5 = a5;
  v31 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CE98A0];
  v9 = ABRecordCopyValue(a3, *MEMORY[0x277CE98A0]);
  if (v9)
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = +[ASContact externalRepClasses];
    v32 = 0;
    v12 = [v10 unarchivedObjectOfClasses:v11 fromData:v9 error:&v32];
    v13 = v32;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 mutableCopy];

      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138412546;
        v34 = v13;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_24A0AC000, v15, v16, "Unable to decode existing object: %@ (Actually decoded %@)", buf, 0x16u);
      }
    }
  }

  v14 = objc_opt_new();
LABEL_9:
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fileAsAutoConstruction];
  [v14 setObject:v17 forKeyedSubscript:@"fileAsAutoConstruction"];

  if (v5)
  {
    if (!v31 || ([v14 objectForKeyedSubscript:@"easExtraProperties"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "mutableCopy"), v18, !v19))
    {
      v19 = objc_opt_new();
    }

    categories = self->_categories;
    if (categories)
    {
      [v19 setObject:categories forKeyedSubscript:&unk_285D57BB8];
    }

    children = self->_children;
    if (children)
    {
      [v19 setObject:children forKeyedSubscript:&unk_285D57BD0];
    }

    officeLocation = self->_officeLocation;
    if (officeLocation)
    {
      [v19 setObject:officeLocation forKeyedSubscript:&unk_285D57BE8];
    }

    yomiCompanyName = self->_yomiCompanyName;
    if (yomiCompanyName)
    {
      [v19 setObject:yomiCompanyName forKeyedSubscript:&unk_285D57C00];
    }

    customerID = self->_customerID;
    if (customerID)
    {
      [v19 setObject:customerID forKeyedSubscript:&unk_285D57C18];
    }

    governmentID = self->_governmentID;
    if (governmentID)
    {
      [v19 setObject:governmentID forKeyedSubscript:&unk_285D57C30];
    }

    accountName = self->_accountName;
    if (accountName)
    {
      [v19 setObject:accountName forKeyedSubscript:&unk_285D57C48];
    }

    mms = self->_mms;
    if (mms)
    {
      [v19 setObject:mms forKeyedSubscript:&unk_285D57C60];
    }

    [v14 setObject:v19 forKeyedSubscript:@"easExtraProperties"];
  }

  v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14];
  ABRecordSetValue(a3, v8, v28, 0);

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setABRecord:(void *)a3
{
  abRecord = self->_abRecord;
  if (abRecord != a3)
  {
    if (abRecord)
    {
      CFRelease(abRecord);
    }

    self->_abRecord = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (BOOL)loadABRecord
{
  if (self->_abRecord)
  {
    [(ASContact *)a2 loadABRecord];
  }

  v4 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v4)
  {
    [(ASContact *)a2 loadABRecord];
  }

  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [v5 abDB];
  v7 = [(ASChangedCollectionLeaf *)self clientID];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v6, [v7 intValue]);

  [(ASContact *)self _loadAttributesFromABRecord:PersonWithRecordID];
  [(ASContact *)self setABRecord:PersonWithRecordID];
  return PersonWithRecordID != 0;
}

- (BOOL)saveServerIDToContact
{
  abRecord = self->_abRecord;
  if (abRecord)
  {
    v3 = *MEMORY[0x277CE9890];
    v4 = [(ASChangedCollectionLeaf *)self serverID];
    ABRecordSetValue(abRecord, v3, v4, 0);
  }

  return abRecord != 0;
}

- (void)loadClientIDs
{
  abRecord = self->_abRecord;
  if (abRecord)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", ABRecordGetRecordID(abRecord)];
    [(ASChangedCollectionLeaf *)self setClientID:v4];
  }
}

- (BOOL)deleteFromAddressBook
{
  v3 = +[ASLocalDBHelper sharedInstance];
  v4 = [v3 abDB];

  if (!v4)
  {
    return 0;
  }

  abRecord = self->_abRecord;
  if (abRecord)
  {
    if (ABAddressBookRemoveRecord(v4, abRecord, 0))
    {
      return 1;
    }

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v9 = "Could not remove record from Address Book";
    v10 = buf;
    goto LABEL_9;
  }

  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 0;
    v9 = "No _abrecord set on contact to be deleted";
    v10 = &v11;
LABEL_9:
    _os_log_impl(&dword_24A0AC000, v7, v8, v9, v10, 2u);
  }

LABEL_10:

  return 0;
}

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v124 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 taskManager];
  v9 = [v8 protocol];
  v10 = [v9 usesAirSyncBaseNamespace];

  v11 = [v6 taskManager];
  v12 = [v11 protocol];
  v13 = [v12 shouldSendFullContactInfo];

  v14 = [(ASContact *)self body];
  if (v10)
  {
    [v7 switchToCodePage:17];
    [v7 openTag:10];
    [v7 appendTag:6 withIntContent:1];
    if ([v14 length])
    {
      [v7 appendTag:11 withStringContent:v14];
    }

    else
    {
      [v7 appendEmptyTag:11];
    }

    [v7 closeTag:10];
  }

  [v7 switchToCodePage:1];
  v15 = [(ASContact *)self anniversary];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 activeSyncString];
    [v7 appendTag:5 withStringContent:v17];
  }

  v18 = [(ASContact *)self assistantName];
  if (v18)
  {
    [v7 appendTag:6 withStringContent:v18];
  }

  v19 = [(ASContact *)self assistantTelephoneNumber];
  if (v19)
  {
    [v7 appendTag:7 withStringContent:v19];
  }

  v20 = [(ASContact *)self birthday];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 activeSyncString];
    [v7 appendTag:8 withStringContent:v22];
  }

  if ((v10 & 1) == 0)
  {
    if ([v14 length])
    {
      [v7 appendTag:9 withStringContent:v14];
    }

    else
    {
      [v7 appendEmptyTag:9];
    }
  }

  v23 = [(ASContact *)self business2TelephoneNumber];
  if (v23)
  {
    [v7 appendTag:12 withStringContent:v23];
  }

  v24 = [(ASContact *)self businessAddressCity];
  if (v24)
  {
    [v7 appendTag:13 withStringContent:v24];
  }

  v25 = [(ASContact *)self businessAddressCountry];
  if (v25)
  {
    [v7 appendTag:14 withStringContent:v25];
  }

  v26 = [(ASContact *)self businessAddressPostalCode];
  if (v26)
  {
    [v7 appendTag:15 withStringContent:v26];
  }

  v27 = [(ASContact *)self businessAddressState];
  if (v27)
  {
    [v7 appendTag:16 withStringContent:v27];
  }

  v28 = [(ASContact *)self businessAddressStreet];
  if (v28)
  {
    [v7 appendTag:17 withStringContent:v28];
  }

  v29 = [(ASContact *)self businessFaxNumber];
  if (v29)
  {
    [v7 appendTag:18 withStringContent:v29];
  }

  v30 = [(ASContact *)self businessTelephoneNumber];
  if (v30)
  {
    [v7 appendTag:19 withStringContent:v30];
  }

  v31 = [(ASContact *)self carTelephoneNumber];
  if (v31)
  {
    [v7 appendTag:20 withStringContent:v31];
  }

  v32 = [(ASContact *)self companyName];
  if (v32)
  {
    [v7 appendTag:25 withStringContent:v32];
  }

  v33 = [(ASContact *)self department];
  if (v33)
  {
    [v7 appendTag:26 withStringContent:v33];
  }

  v34 = [(ASContact *)self email1Address];
  if (v34)
  {
    [v7 appendTag:27 withStringContent:v34];
  }

  v35 = [(ASContact *)self email2Address];
  if (v35)
  {
    [v7 appendTag:28 withStringContent:v35];
  }

  v36 = [(ASContact *)self email3Address];
  if (v36)
  {
    [v7 appendTag:29 withStringContent:v36];
  }

  v37 = [(ASContact *)self fileAs];

  if (v37)
  {
    v38 = [(ASContact *)self fileAs];
  }

  else
  {
    v38 = objc_opt_new();
    v39 = [(ASContact *)self lastName];

    if (v39)
    {
      v40 = [(ASContact *)self lastName];
      [v38 appendString:v40];

      [v38 appendString:{@", "}];
    }

    v41 = [(ASContact *)self firstName];

    if (v41)
    {
      v42 = [(ASContact *)self firstName];
      [v38 appendString:v42];

      [v38 appendString:@" "];
    }

    v43 = [(ASContact *)self middleName];
    v44 = [v43 length];

    if (v44)
    {
      v45 = [(ASContact *)self middleName];
      v46 = [v45 substringToIndex:1];
      [v38 appendString:v46];

      [v38 appendString:@"."];
    }

    if (![v38 length])
    {
      v47 = [(ASContact *)self companyName];

      if (v47)
      {
        v48 = [(ASContact *)self companyName];
        [v38 appendString:v48];
      }
    }
  }

  [v7 appendTag:30 withStringContent:v38];

  v49 = [(ASContact *)self firstName];
  if (v49)
  {
    [v7 appendTag:31 withStringContent:v49];
  }

  v50 = [(ASContact *)self home2TelephoneNumber];
  if (v50)
  {
    [v7 appendTag:32 withStringContent:v50];
  }

  v51 = [(ASContact *)self homeAddressCity];
  if (v51)
  {
    [v7 appendTag:33 withStringContent:v51];
  }

  v52 = [(ASContact *)self homeAddressCountry];
  if (v52)
  {
    [v7 appendTag:34 withStringContent:v52];
  }

  v53 = [(ASContact *)self homeAddressPostalCode];
  if (v53)
  {
    [v7 appendTag:35 withStringContent:v53];
  }

  v54 = [(ASContact *)self homeAddressState];
  if (v54)
  {
    [v7 appendTag:36 withStringContent:v54];
  }

  v55 = [(ASContact *)self homeAddressStreet];
  if (v55)
  {
    [v7 appendTag:37 withStringContent:v55];
  }

  v56 = [(ASContact *)self homeFaxNumber];
  if (v56)
  {
    [v7 appendTag:38 withStringContent:v56];
  }

  v57 = [(ASContact *)self homeTelephoneNumber];
  if (v57)
  {
    [v7 appendTag:39 withStringContent:v57];
  }

  v58 = [(ASContact *)self jobTitle];
  if (v58)
  {
    [v7 appendTag:40 withStringContent:v58];
  }

  v59 = [(ASContact *)self lastName];
  if (v59)
  {
    [v7 appendTag:41 withStringContent:v59];
  }

  v60 = [(ASContact *)self middleName];
  if (v60)
  {
    [v7 appendTag:42 withStringContent:v60];
  }

  v61 = [(ASContact *)self mobileTelephoneNumber];
  if (v61)
  {
    [v7 appendTag:43 withStringContent:v61];
  }

  v62 = [(ASContact *)self otherAddressCity];
  if (v62)
  {
    [v7 appendTag:45 withStringContent:v62];
  }

  v63 = [(ASContact *)self otherAddressCountry];
  if (v63)
  {
    [v7 appendTag:46 withStringContent:v63];
  }

  v64 = [(ASContact *)self otherAddressPostalCode];
  if (v64)
  {
    [v7 appendTag:47 withStringContent:v64];
  }

  v65 = [(ASContact *)self otherAddressState];
  if (v65)
  {
    [v7 appendTag:48 withStringContent:v65];
  }

  v66 = [(ASContact *)self otherAddressStreet];
  if (v66)
  {
    [v7 appendTag:49 withStringContent:v66];
  }

  v67 = [(ASContact *)self pagerNumber];
  if (v67)
  {
    [v7 appendTag:50 withStringContent:v67];
  }

  v68 = [(ASContact *)self picture];
  v69 = v68;
  if (v68)
  {
    if ([v68 length] > 0x9266)
    {
      if ([v69 length] >= 0x9267)
      {
        v70 = DALoggingwithCategory();
        v71 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v70, v71))
        {
          *buf = 138412546;
          v121 = self;
          v122 = 2048;
          v123 = [v69 length];
          _os_log_impl(&dword_24A0AC000, v70, v71, "Ignoring photo for %@, as it's bigger than our limit of 36.6k, length: %lu", buf, 0x16u);
        }
      }
    }

    else
    {
      [v7 appendTag:60 withStringContent:v69];
    }
  }

  else
  {
    [v7 appendEmptyTag:60];
  }

  v72 = [(ASContact *)self radioTelephoneNumber];
  if (v72)
  {
    [v7 appendTag:51 withStringContent:v72];
  }

  v73 = [(ASContact *)self spouse];
  if (v73)
  {
    [v7 appendTag:52 withStringContent:v73];
  }

  v74 = [(ASContact *)self suffix];
  if (v74)
  {
    [v7 appendTag:53 withStringContent:v74];
  }

  v75 = [(ASContact *)self title];
  if (v75)
  {
    [v7 appendTag:54 withStringContent:v75];
  }

  v76 = [(ASContact *)self webpage];
  if (v76)
  {
    [v7 appendTag:55 withStringContent:v76];
  }

  v77 = [(ASContact *)self yomiFirstName];
  if (v77)
  {
    [v7 appendTag:57 withStringContent:v77];
  }

  v78 = [(ASContact *)self yomiLastName];
  if (v78)
  {
    [v7 appendTag:58 withStringContent:v78];
  }

  if (v13)
  {
    v79 = [(ASContact *)self yomiCompanyName];
    if (v79)
    {
      [v7 appendTag:56 withStringContent:v79];
    }

    v80 = [(ASContact *)self officeLocation];
    if (v80)
    {
      [v7 appendTag:44 withStringContent:v80];
    }

    if ([(NSArray *)self->_categories count])
    {
      [v7 openTag:21];
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v81 = self->_categories;
      v82 = [(NSArray *)v81 countByEnumeratingWithState:&v114 objects:v119 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v115;
        do
        {
          for (i = 0; i != v83; ++i)
          {
            if (*v115 != v84)
            {
              objc_enumerationMutation(v81);
            }

            [v7 appendTag:22 withStringContent:*(*(&v114 + 1) + 8 * i)];
          }

          v83 = [(NSArray *)v81 countByEnumeratingWithState:&v114 objects:v119 count:16];
        }

        while (v83);
      }

      [v7 closeTag:21];
    }

    if ([(NSArray *)self->_children count])
    {
      [v7 openTag:23];
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v86 = self->_children;
      v87 = [(NSArray *)v86 countByEnumeratingWithState:&v110 objects:v118 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v111;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v111 != v89)
            {
              objc_enumerationMutation(v86);
            }

            [v7 appendTag:24 withStringContent:{*(*(&v110 + 1) + 8 * j), v110}];
          }

          v88 = [(NSArray *)v86 countByEnumeratingWithState:&v110 objects:v118 count:16];
        }

        while (v88);
      }

      [v7 closeTag:23];
    }

    v91 = [(ASContact *)self customerID];
    if (v91)
    {
      v92 = 1;
    }

    else
    {
      v93 = [(ASContact *)self governmentID];
      if (v93)
      {
        v92 = 1;
      }

      else
      {
        v94 = [(ASContact *)self accountName];
        if (v94)
        {
          v92 = 1;
        }

        else
        {
          v95 = [(ASContact *)self mms];
          v92 = v95 != 0;
        }
      }
    }
  }

  else
  {
    v92 = 0;
  }

  v96 = [(ASContact *)self im1Address];
  if (v96)
  {
    goto LABEL_156;
  }

  v96 = [(ASContact *)self im2Address];
  if (v96 || ([(ASContact *)self im3Address], (v96 = objc_claimAutoreleasedReturnValue()) != 0) || ([(ASContact *)self managerName], (v96 = objc_claimAutoreleasedReturnValue()) != 0) || ([(ASContact *)self companyMainPhone], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_156:
  }

  else
  {
    v108 = [(ASContact *)self nickName];
    v109 = v108 != 0 || v92;

    if (!v109)
    {
      goto LABEL_183;
    }
  }

  [v7 switchToCodePage:12];
  if (v13)
  {
    v97 = [(ASContact *)self customerID];
    if (v97)
    {
      [v7 appendTag:5 withStringContent:v97];
    }

    v98 = [(ASContact *)self governmentID];
    if (v98)
    {
      [v7 appendTag:6 withStringContent:v98];
    }
  }

  v99 = [(ASContact *)self im1Address];
  if (v99)
  {
    [v7 appendTag:7 withStringContent:v99];
  }

  v100 = [(ASContact *)self im2Address];
  if (v100)
  {
    [v7 appendTag:8 withStringContent:v100];
  }

  v101 = [(ASContact *)self im3Address];
  if (v101)
  {
    [v7 appendTag:9 withStringContent:v101];
  }

  v102 = [(ASContact *)self managerName];
  if (v102)
  {
    [v7 appendTag:10 withStringContent:v102];
  }

  v103 = [(ASContact *)self companyMainPhone];
  if (v103)
  {
    [v7 appendTag:11 withStringContent:v103];
  }

  if (v13)
  {
    v104 = [(ASContact *)self accountName];
    if (v104)
    {
      [v7 appendTag:12 withStringContent:v104];
    }
  }

  v105 = [(ASContact *)self nickName];
  if (v105)
  {
    [v7 appendTag:13 withStringContent:v105];
  }

  if (v13)
  {
    v106 = [(ASContact *)self mms];
    if (v106)
    {
      [v7 appendTag:14 withStringContent:v106];
    }
  }

LABEL_183:

  v107 = *MEMORY[0x277D85DE8];
}

- (id)bestEmailFromAppData:(int)a3
{
  v4 = [(ASChangedCollectionLeaf *)self applicationData];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3 | 0x100u];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 mf_uncommentedAddress];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (void)postProcessApplicationData
{
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:261];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v5];
      [(ASContact *)self setAnniversary:v6];
    }
  }

  v7 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:262];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAssistantName:v9];
    }
  }

  v10 = [(ASChangedCollectionLeaf *)self applicationData];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:263];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAssistantTelephoneNumber:v12];
    }
  }

  v13 = [(ASChangedCollectionLeaf *)self applicationData];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:264];
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v15];
      [(ASContact *)self setBirthday:v16];
    }
  }

  v17 = [(ASChangedCollectionLeaf *)self applicationData];
  v193 = [v17 objectForKeyedSubscript:&unk_285D57C78];

  if (v193)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v19 = [v193 objectForKey:v18];

    if (v19)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASContact *)self setBody:v19];
      }
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInt:4364];
    v21 = [v193 objectForKey:v20];

    if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASContact setBodySize:](self, "setBodySize:", [v21 intValue]);
      }
    }

    v22 = [MEMORY[0x277CCABB0] numberWithInt:4365];
    v23 = [v193 objectForKey:v22];
  }

  else
  {
    v24 = [(ASChangedCollectionLeaf *)self applicationData];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:265];
    v26 = [v24 objectForKey:v25];

    if (v26)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASContact *)self setBody:v26];
      }
    }

    v27 = [(ASChangedCollectionLeaf *)self applicationData];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:266];
    v29 = [v27 objectForKey:v28];

    if (v29)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASContact setBodySize:](self, "setBodySize:", [v29 intValue]);
      }
    }

    v22 = [(ASChangedCollectionLeaf *)self applicationData];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:267];
    v23 = [v22 objectForKey:v30];
  }

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASContact setBodyTruncated:](self, "setBodyTruncated:", [v23 intValue] != 0);
    }
  }

  v31 = [(ASChangedCollectionLeaf *)self applicationData];
  v32 = [MEMORY[0x277CCABB0] numberWithInt:268];
  v33 = [v31 objectForKey:v32];

  if (v33)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusiness2TelephoneNumber:v33];
    }
  }

  v34 = [(ASChangedCollectionLeaf *)self applicationData];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:269];
  v36 = [v34 objectForKey:v35];

  if (v36)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressCity:v36];
    }
  }

  v37 = [(ASChangedCollectionLeaf *)self applicationData];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:270];
  v39 = [v37 objectForKey:v38];

  if (v39)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressCountry:v39];
    }
  }

  v40 = [(ASChangedCollectionLeaf *)self applicationData];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:271];
  v42 = [v40 objectForKey:v41];

  if (v42)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressPostalCode:v42];
    }
  }

  v43 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:272];
  v45 = [v43 objectForKey:v44];

  if (v45)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressState:v45];
    }
  }

  v46 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:273];
  v48 = [v46 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressStreet:v48];
    }
  }

  v49 = [(ASChangedCollectionLeaf *)self applicationData];
  v50 = [MEMORY[0x277CCABB0] numberWithInt:274];
  v51 = [v49 objectForKey:v50];

  if (v51)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessFaxNumber:v51];
    }
  }

  v52 = [(ASChangedCollectionLeaf *)self applicationData];
  v53 = [MEMORY[0x277CCABB0] numberWithInt:275];
  v54 = [v52 objectForKey:v53];

  if (v54)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessTelephoneNumber:v54];
    }
  }

  v55 = [(ASChangedCollectionLeaf *)self applicationData];
  v56 = [MEMORY[0x277CCABB0] numberWithInt:276];
  v57 = [v55 objectForKey:v56];

  if (v57)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCarTelephoneNumber:v57];
    }
  }

  v58 = [(ASChangedCollectionLeaf *)self applicationData];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:277];
  v60 = [v58 objectForKey:v59];

  if (v60)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCategories:v60];
    }
  }

  v61 = [(ASChangedCollectionLeaf *)self applicationData];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:279];
  v63 = [v61 objectForKey:v62];

  if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setChildren:v63];
    }
  }

  v64 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:281];
  v66 = [v64 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCompanyName:v66];
    }
  }

  v67 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:282];
  v69 = [v67 objectForKey:v68];

  if (v69)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setDepartment:v69];
    }
  }

  v70 = [(ASContact *)self bestEmailFromAppData:27];
  [(ASContact *)self setEmail1Address:v70];

  v71 = [(ASContact *)self bestEmailFromAppData:28];
  [(ASContact *)self setEmail2Address:v71];

  v72 = [(ASContact *)self bestEmailFromAppData:29];
  [(ASContact *)self setEmail3Address:v72];

  v73 = [(ASChangedCollectionLeaf *)self applicationData];
  v74 = [MEMORY[0x277CCABB0] numberWithInt:286];
  v75 = [v73 objectForKey:v74];

  if (v75)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setFileAs:v75];
    }
  }

  v76 = [(ASChangedCollectionLeaf *)self applicationData];
  v77 = [MEMORY[0x277CCABB0] numberWithInt:287];
  v78 = [v76 objectForKey:v77];

  if (v78)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setFirstName:v78];
    }
  }

  v79 = [(ASChangedCollectionLeaf *)self applicationData];
  v80 = [MEMORY[0x277CCABB0] numberWithInt:288];
  v81 = [v79 objectForKey:v80];

  if (v81)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHome2TelephoneNumber:v81];
    }
  }

  v82 = [(ASChangedCollectionLeaf *)self applicationData];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:289];
  v84 = [v82 objectForKey:v83];

  if (v84)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressCity:v84];
    }
  }

  v85 = [(ASChangedCollectionLeaf *)self applicationData];
  v86 = [MEMORY[0x277CCABB0] numberWithInt:290];
  v87 = [v85 objectForKey:v86];

  if (v87)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressCountry:v87];
    }
  }

  v88 = [(ASChangedCollectionLeaf *)self applicationData];
  v89 = [MEMORY[0x277CCABB0] numberWithInt:291];
  v90 = [v88 objectForKey:v89];

  if (v90)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressPostalCode:v90];
    }
  }

  v91 = [(ASChangedCollectionLeaf *)self applicationData];
  v92 = [MEMORY[0x277CCABB0] numberWithInt:292];
  v93 = [v91 objectForKey:v92];

  if (v93)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressState:v93];
    }
  }

  v94 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:293];
  v96 = [v94 objectForKey:v95];

  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressStreet:v96];
    }
  }

  v97 = [(ASChangedCollectionLeaf *)self applicationData];
  v98 = [MEMORY[0x277CCABB0] numberWithInt:294];
  v99 = [v97 objectForKey:v98];

  if (v99)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeFaxNumber:v99];
    }
  }

  v100 = [(ASChangedCollectionLeaf *)self applicationData];
  v101 = [MEMORY[0x277CCABB0] numberWithInt:295];
  v102 = [v100 objectForKey:v101];

  if (v102)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeTelephoneNumber:v102];
    }
  }

  v103 = [(ASChangedCollectionLeaf *)self applicationData];
  v104 = [MEMORY[0x277CCABB0] numberWithInt:296];
  v105 = [v103 objectForKey:v104];

  if (v105)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setJobTitle:v105];
    }
  }

  v106 = [(ASChangedCollectionLeaf *)self applicationData];
  v107 = [MEMORY[0x277CCABB0] numberWithInt:297];
  v108 = [v106 objectForKey:v107];

  if (v108)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setLastName:v108];
    }
  }

  v109 = [(ASChangedCollectionLeaf *)self applicationData];
  v110 = [MEMORY[0x277CCABB0] numberWithInt:298];
  v111 = [v109 objectForKey:v110];

  if (v111)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setMiddleName:v111];
    }
  }

  v112 = [(ASChangedCollectionLeaf *)self applicationData];
  v113 = [MEMORY[0x277CCABB0] numberWithInt:299];
  v114 = [v112 objectForKey:v113];

  if (v114)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setMobileTelephoneNumber:v114];
    }
  }

  v115 = [(ASChangedCollectionLeaf *)self applicationData];
  v116 = [MEMORY[0x277CCABB0] numberWithInt:300];
  v117 = [v115 objectForKey:v116];

  if (v117)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOfficeLocation:v117];
    }
  }

  v118 = [(ASChangedCollectionLeaf *)self applicationData];
  v119 = [MEMORY[0x277CCABB0] numberWithInt:301];
  v120 = [v118 objectForKey:v119];

  if (v120)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressCity:v120];
    }
  }

  v121 = [(ASChangedCollectionLeaf *)self applicationData];
  v122 = [MEMORY[0x277CCABB0] numberWithInt:302];
  v123 = [v121 objectForKey:v122];

  if (v123)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressCountry:v123];
    }
  }

  v124 = [(ASChangedCollectionLeaf *)self applicationData];
  v125 = [MEMORY[0x277CCABB0] numberWithInt:303];
  v126 = [v124 objectForKey:v125];

  if (v126)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressPostalCode:v126];
    }
  }

  v127 = [(ASChangedCollectionLeaf *)self applicationData];
  v128 = [MEMORY[0x277CCABB0] numberWithInt:304];
  v129 = [v127 objectForKey:v128];

  if (v129)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressState:v129];
    }
  }

  v130 = [(ASChangedCollectionLeaf *)self applicationData];
  v131 = [MEMORY[0x277CCABB0] numberWithInt:305];
  v132 = [v130 objectForKey:v131];

  if (v132)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressStreet:v132];
    }
  }

  v133 = [(ASChangedCollectionLeaf *)self applicationData];
  v134 = [MEMORY[0x277CCABB0] numberWithInt:306];
  v135 = [v133 objectForKey:v134];

  if (v135)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setPagerNumber:v135];
    }
  }

  v136 = [(ASChangedCollectionLeaf *)self applicationData];
  v137 = [MEMORY[0x277CCABB0] numberWithInt:316];
  v138 = [v136 objectForKey:v137];

  if (v138)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setPicture:v138];
    }
  }

  v139 = [(ASChangedCollectionLeaf *)self applicationData];
  v140 = [MEMORY[0x277CCABB0] numberWithInt:307];
  v141 = [v139 objectForKey:v140];

  if (v141)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setRadioTelephoneNumber:v141];
    }
  }

  v142 = [(ASChangedCollectionLeaf *)self applicationData];
  v143 = [MEMORY[0x277CCABB0] numberWithInt:308];
  v144 = [v142 objectForKey:v143];

  if (v144)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setSpouse:v144];
    }
  }

  v145 = [(ASChangedCollectionLeaf *)self applicationData];
  v146 = [MEMORY[0x277CCABB0] numberWithInt:309];
  v147 = [v145 objectForKey:v146];

  if (v147)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setSuffix:v147];
    }
  }

  v148 = [(ASChangedCollectionLeaf *)self applicationData];
  v149 = [MEMORY[0x277CCABB0] numberWithInt:310];
  v150 = [v148 objectForKey:v149];

  if (v150)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setTitle:v150];
    }
  }

  v151 = [(ASChangedCollectionLeaf *)self applicationData];
  v152 = [MEMORY[0x277CCABB0] numberWithInt:311];
  v153 = [v151 objectForKey:v152];

  if (v153)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setWebpage:v153];
    }
  }

  v154 = [(ASChangedCollectionLeaf *)self applicationData];
  v155 = [MEMORY[0x277CCABB0] numberWithInt:312];
  v156 = [v154 objectForKey:v155];

  if (v156)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiCompanyName:v156];
    }
  }

  v157 = [(ASChangedCollectionLeaf *)self applicationData];
  v158 = [MEMORY[0x277CCABB0] numberWithInt:313];
  v159 = [v157 objectForKey:v158];

  if (v159)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiFirstName:v159];
    }
  }

  v160 = [(ASChangedCollectionLeaf *)self applicationData];
  v161 = [MEMORY[0x277CCABB0] numberWithInt:314];
  v162 = [v160 objectForKey:v161];

  if (v162)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiLastName:v162];
    }
  }

  v163 = [(ASChangedCollectionLeaf *)self applicationData];
  v164 = [MEMORY[0x277CCABB0] numberWithInt:3077];
  v165 = [v163 objectForKey:v164];

  if (v165)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCustomerID:v165];
    }
  }

  v166 = [(ASChangedCollectionLeaf *)self applicationData];
  v167 = [MEMORY[0x277CCABB0] numberWithInt:3078];
  v168 = [v166 objectForKey:v167];

  if (v168)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setGovernmentID:v168];
    }
  }

  v169 = [(ASChangedCollectionLeaf *)self applicationData];
  v170 = [MEMORY[0x277CCABB0] numberWithInt:3079];
  v171 = [v169 objectForKey:v170];

  if (v171)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm1Address:v171];
    }
  }

  v172 = [(ASChangedCollectionLeaf *)self applicationData];
  v173 = [MEMORY[0x277CCABB0] numberWithInt:3080];
  v174 = [v172 objectForKey:v173];

  if (v174)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm2Address:v174];
    }
  }

  v175 = [(ASChangedCollectionLeaf *)self applicationData];
  v176 = [MEMORY[0x277CCABB0] numberWithInt:3081];
  v177 = [v175 objectForKey:v176];

  if (v177)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm3Address:v177];
    }
  }

  v178 = [(ASChangedCollectionLeaf *)self applicationData];
  v179 = [MEMORY[0x277CCABB0] numberWithInt:3082];
  v180 = [v178 objectForKey:v179];

  if (v180)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setManagerName:v180];
    }
  }

  v181 = [(ASChangedCollectionLeaf *)self applicationData];
  v182 = [MEMORY[0x277CCABB0] numberWithInt:3083];
  v183 = [v181 objectForKey:v182];

  if (v183)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCompanyMainPhone:v183];
    }
  }

  v184 = [(ASChangedCollectionLeaf *)self applicationData];
  v185 = [MEMORY[0x277CCABB0] numberWithInt:3084];
  v186 = [v184 objectForKey:v185];

  if (v186)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAccountName:v186];
    }
  }

  v187 = [(ASChangedCollectionLeaf *)self applicationData];
  v188 = [MEMORY[0x277CCABB0] numberWithInt:3085];
  v189 = [v187 objectForKey:v188];

  if (v189)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setNickName:v189];
    }
  }

  v190 = [(ASChangedCollectionLeaf *)self applicationData];
  v191 = [MEMORY[0x277CCABB0] numberWithInt:3086];
  v192 = [v190 objectForKey:v191];

  if (v192)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setMms:v192];
    }
  }

  [(ASContact *)self _detectFileAsAutoConstruction];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)dealloc
{
  abRecord = self->_abRecord;
  if (abRecord)
  {
    CFRelease(abRecord);
    self->_abRecord = 0;
  }

  v4.receiver = self;
  v4.super_class = ASContact;
  [(ASContact *)&v4 dealloc];
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v10.receiver = self;
  v10.super_class = ASContact;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
    }

    else if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1)
    {
      [(ASContact *)self postProcessApplicationData];
    }
  }
}

- (void)setBodySizeNumber:(id)a3
{
  v4 = [a3 intValue];

  [(ASContact *)self setBodySize:v4];
}

- (void)setBodyTruncatedNumber:(id)a3
{
  v4 = [a3 BOOLValue];

  [(ASContact *)self setBodyTruncated:v4];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  firstName = self->_firstName;
  v7 = [v3 initWithFormat:@"<%@: First Name: %@ Last Name: %@", v5, firstName, self->_lastName];

  fileAsAutoConstruction = self->_fileAsAutoConstruction;
  if (fileAsAutoConstruction > 0xD)
  {
    v9 = @"Out-of-bounds!";
  }

  else
  {
    v9 = off_278FC7E68[fileAsAutoConstruction];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ fileAs: %@>", v7, v9];

  return v10;
}

- (void)setBody:(id)a3
{
  v5 = a3;
  if (self->_body != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_body, a3);
    [(ASContact *)self setBodySize:[(NSString *)v6 lengthOfBytesUsingEncoding:4]];
    v5 = v6;
  }
}

- (ASContact)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASContact.m" lineNumber:1735 description:{@"Yes, I know ASContact is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASContact.m" lineNumber:1740 description:{@"Yes, I know ASContact is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
}

- (void)loadABRecord
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASContact.m" lineNumber:1349 description:{@"%@ asked to loadABRecord, but I have no client id", a2}];
}

@end