@interface ASContact
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)contactWithABRecord:(void *)record serverID:(id)d;
+ (id)externalRepClasses;
- (ASContact)initWithABRecord:(void *)record serverID:(id)d;
- (ASContact)initWithCoder:(id)coder;
- (BOOL)_saveDatesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_saveEmailsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_saveExternalRepToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties storeExternalRep:(BOOL)rep;
- (BOOL)_saveIMsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_savePhoneNumbersToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_saveRelatedNamesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_saveStreetAddressesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_saveURLsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties;
- (BOOL)_setDatesWithExistingRecord:(void *)record;
- (BOOL)_setEmailsWithExistingRecord:(void *)record;
- (BOOL)_setExternalRepWithExistingRecord:(void *)record;
- (BOOL)_setIMsWithExistingRecord:(void *)record;
- (BOOL)_setPhoneNumbersWithExistingRecord:(void *)record;
- (BOOL)_setRelatedNamesWithExistingRecord:(void *)record;
- (BOOL)_setStreetAddressesWithExistingRecord:(void *)record;
- (BOOL)_setURLsWithExistingRecord:(void *)record;
- (BOOL)deleteFromAddressBook;
- (BOOL)loadABRecord;
- (BOOL)saveServerIDToContact;
- (NSString)description;
- (id)_transformedDateForABFramework:(id)framework;
- (id)bestEmailFromAppData:(int)data;
- (void)_detectFileAsAutoConstruction;
- (void)_loadAttributesFromABRecord:(void *)record;
- (void)_reconstructFileAsField;
- (void)_setImageOnContactFromPerson:(void *)person;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadABRecord;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)setABRecord:(void *)record;
- (void)setBody:(id)body;
- (void)setBodySizeNumber:(id)number;
- (void)setBodyTruncatedNumber:(id)number;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_24 = v2;
    notifyOfUnknownTokens___haveChecked_24 = 1;
  }

  return v2 & 1;
}

- (id)_transformedDateForABFramework:(id)framework
{
  gmtMidnight = [framework gmtMidnight];
  v4 = [gmtMidnight dateByAddingYears:0 months:0 days:0 hours:12 minutes:0 seconds:0];

  return v4;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v37.receiver = self;
    v37.super_class = &OBJC_METACLASS___ASContact;
    v6 = objc_msgSendSuper2(&v37, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v35 = objc_alloc(MEMORY[0x277CBEAC0]);
    selfCopy = self;
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
    v21 = NSStringFromClass(selfCopy);
    [v20 setObject:v5 forKey:v21];
  }

  return v5;
}

- (void)_setImageOnContactFromPerson:(void *)person
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

- (BOOL)_setDatesWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9870]);
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

- (BOOL)_setRelatedNamesWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9A38]);
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

- (BOOL)_setPhoneNumbersWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9A18]);
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

- (BOOL)_setStreetAddressesWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9828]);
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

- (BOOL)_setEmailsWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9888]);
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

- (BOOL)_setURLsWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE9A58]);
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

- (BOOL)_setIMsWithExistingRecord:(void *)record
{
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE98E8]);
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

- (BOOL)_setExternalRepWithExistingRecord:(void *)record
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = ABRecordCopyValue(record, *MEMORY[0x277CE98A0]);
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
        intValue = [v13 intValue];
        self->_fileAsAutoConstruction = intValue;
        if (intValue >= 0xE)
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

- (void)_loadAttributesFromABRecord:(void *)record
{
  v33 = *MEMORY[0x277D85DE8];
  if (record)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", ABRecordGetRecordID(record)];
    [(ASChangedCollectionLeaf *)self setClientID:v5];

    v6 = ABRecordCopyValue(record, *MEMORY[0x277CE9858]);
    v7 = [(ASContact *)self _transformedDateForActiveSync:v6];
    [(ASContact *)self setBirthday:v7];

    v8 = ABRecordCopyValue(record, *MEMORY[0x277CE99B8]);
    [(ASContact *)self setBody:v8];

    v9 = ABRecordCopyValue(record, *MEMORY[0x277CE99C0]);
    [(ASContact *)self setCompanyName:v9];

    v10 = ABRecordCopyValue(record, *MEMORY[0x277CE9878]);
    [(ASContact *)self setDepartment:v10];

    v11 = ABRecordCopyValue(record, *MEMORY[0x277CE9880]);
    [(ASContact *)self setFileAs:v11];

    v12 = ABRecordCopyValue(record, *MEMORY[0x277CE98C0]);
    [(ASContact *)self setFirstName:v12];

    v13 = ABRecordCopyValue(record, *MEMORY[0x277CE9958]);
    [(ASContact *)self setJobTitle:v13];

    v14 = ABRecordCopyValue(record, *MEMORY[0x277CE9980]);
    [(ASContact *)self setLastName:v14];

    v15 = ABRecordCopyValue(record, *MEMORY[0x277CE99A0]);
    [(ASContact *)self setMiddleName:v15];

    v16 = ABRecordCopyValue(record, *MEMORY[0x277CE9A50]);
    [(ASContact *)self setSuffix:v16];

    v17 = ABRecordCopyValue(record, *MEMORY[0x277CE9A30]);
    [(ASContact *)self setTitle:v17];

    v18 = ABRecordCopyValue(record, *MEMORY[0x277CE99B0]);
    [(ASContact *)self setNickName:v18];

    v19 = ABRecordCopyValue(record, *MEMORY[0x277CE98B8]);
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

    v25 = ABRecordCopyValue(record, *MEMORY[0x277CE9978]);
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

    [(ASContact *)self _setImageOnContactFromPerson:record];
    [(ASContact *)self _setDatesWithExistingRecord:record];
    [(ASContact *)self _setRelatedNamesWithExistingRecord:record];
    [(ASContact *)self _setPhoneNumbersWithExistingRecord:record];
    [(ASContact *)self _setStreetAddressesWithExistingRecord:record];
    [(ASContact *)self _setEmailsWithExistingRecord:record];
    [(ASContact *)self _setURLsWithExistingRecord:record];
    [(ASContact *)self _setIMsWithExistingRecord:record];
    [(ASContact *)self _setExternalRepWithExistingRecord:record];
    [(ASContact *)self _reconstructFileAsField];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (ASContact)initWithABRecord:(void *)record serverID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ASContact;
  v7 = [(ASChangedCollectionLeaf *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASChangedCollectionLeaf *)v7 setServerID:dCopy];
    if (record)
    {
      [(ASContact *)v8 _loadAttributesFromABRecord:record];
      [(ASContact *)v8 setABRecord:record];
    }
  }

  return v8;
}

+ (id)contactWithABRecord:(void *)record serverID:(id)d
{
  dCopy = d;
  v7 = [[self alloc] initWithABRecord:record serverID:dCopy];

  return v7;
}

- (BOOL)_saveDatesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  Mutable = ABMultiValueCreateMutable(4u);
  v8 = *MEMORY[0x277CE9848];
  anniversary = [(ASContact *)self anniversary];
  v10 = [(ASContact *)self _transformedDateForABFramework:anniversary];
  if (v10)
  {
    ABMultiValueAddValueAndLabel(Mutable, v10, v8, 0);
  }

  if (properties)
  {
    anniversary2 = [(ASContact *)self anniversary];

    v12 = *MEMORY[0x277CE9870];
    if (anniversary2 || (v15 = ABRecordCopyValue(record, *MEMORY[0x277CE9870])) == 0)
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

  ABRecordSetValue(record, v12, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

- (BOOL)_saveRelatedNamesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9850];
  assistantName = [(ASContact *)self assistantName];
  if (assistantName)
  {
    ABMultiValueAddValueAndLabel(Mutable, assistantName, v8, 0);
  }

  v10 = *MEMORY[0x277CE9990];
  managerName = [(ASContact *)self managerName];
  if (managerName)
  {
    ABMultiValueAddValueAndLabel(Mutable, managerName, v10, 0);
  }

  v12 = *MEMORY[0x277CE9A48];
  spouse = [(ASContact *)self spouse];
  if (spouse)
  {
    ABMultiValueAddValueAndLabel(Mutable, spouse, v12, 0);
  }

  v14 = *MEMORY[0x277CE9A38];
  if (propertiesCopy && (v15 = ABRecordCopyValue(record, *MEMORY[0x277CE9A38])) != 0)
  {
    v16 = v15;
    if (ABMultiValueGetCount(v15) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v16)) != 0)
    {
      v18 = MutableCopy;
      recordCopy = record;
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

              spouse2 = [(ASContact *)self spouse];

              if (spouse2)
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
      record = recordCopy;
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

  ABRecordSetValue(record, v14, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

- (BOOL)_savePhoneNumbersToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v112 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9AE8];
  businessTelephoneNumber = [(ASContact *)self businessTelephoneNumber];
  if (businessTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, businessTelephoneNumber, v8, 0);
  }

  business2TelephoneNumber = [(ASContact *)self business2TelephoneNumber];
  if (business2TelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, business2TelephoneNumber, v8, 0);
  }

  v11 = *MEMORY[0x277CE9A28];
  businessFaxNumber = [(ASContact *)self businessFaxNumber];
  if (businessFaxNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, businessFaxNumber, v11, 0);
  }

  v98 = v11;

  v13 = *MEMORY[0x277CE9800];
  homeTelephoneNumber = [(ASContact *)self homeTelephoneNumber];
  if (homeTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, homeTelephoneNumber, v13, 0);
  }

  home2TelephoneNumber = [(ASContact *)self home2TelephoneNumber];
  if (home2TelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, home2TelephoneNumber, v13, 0);
  }

  v16 = *MEMORY[0x277CE99F0];
  homeFaxNumber = [(ASContact *)self homeFaxNumber];
  if (homeFaxNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, homeFaxNumber, v16, 0);
  }

  v97 = v16;

  v18 = *MEMORY[0x277CE9A08];
  mobileTelephoneNumber = [(ASContact *)self mobileTelephoneNumber];
  if (mobileTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, mobileTelephoneNumber, v18, 0);
  }

  v20 = *MEMORY[0x277CE9A10];
  pagerNumber = [(ASContact *)self pagerNumber];
  if (pagerNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, pagerNumber, v20, 0);
  }

  v95 = v20;

  v22 = *MEMORY[0x277CE99D8];
  assistantTelephoneNumber = [(ASContact *)self assistantTelephoneNumber];
  if (assistantTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, assistantTelephoneNumber, v22, 0);
  }

  v99 = v8;
  v94 = v22;

  v24 = *MEMORY[0x277CE99E0];
  carTelephoneNumber = [(ASContact *)self carTelephoneNumber];
  if (carTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, carTelephoneNumber, v24, 0);
  }

  v26 = *MEMORY[0x277CE9A20];
  radioTelephoneNumber = [(ASContact *)self radioTelephoneNumber];
  if (radioTelephoneNumber)
  {
    ABMultiValueAddValueAndLabel(Mutable, radioTelephoneNumber, v26, 0);
  }

  v28 = *MEMORY[0x277CE99E8];
  companyMainPhone = [(ASContact *)self companyMainPhone];
  if (companyMainPhone)
  {
    ABMultiValueAddValueAndLabel(Mutable, companyMainPhone, v28, 0);
  }

  v93 = v28;

  v30 = *MEMORY[0x277CE9A18];
  if (!propertiesCopy)
  {
    recordCopy2 = record;
    goto LABEL_125;
  }

  v90 = v24;
  v91 = v18;
  recordCopy2 = record;
  property = *MEMORY[0x277CE9A18];
  v32 = ABRecordCopyValue(record, v30);
  v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  v101 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  homeTelephoneNumber2 = [(ASContact *)self homeTelephoneNumber];

  if (homeTelephoneNumber2)
  {
    homeTelephoneNumber3 = [(ASContact *)self homeTelephoneNumber];
    [v33 addObject:homeTelephoneNumber3];
  }

  home2TelephoneNumber2 = [(ASContact *)self home2TelephoneNumber];

  if (home2TelephoneNumber2)
  {
    home2TelephoneNumber3 = [(ASContact *)self home2TelephoneNumber];
    [v33 addObject:home2TelephoneNumber3];
  }

  businessTelephoneNumber2 = [(ASContact *)self businessTelephoneNumber];

  if (businessTelephoneNumber2)
  {
    businessTelephoneNumber3 = [(ASContact *)self businessTelephoneNumber];
    [v101 addObject:businessTelephoneNumber3];
  }

  business2TelephoneNumber2 = [(ASContact *)self business2TelephoneNumber];

  if (business2TelephoneNumber2)
  {
    business2TelephoneNumber3 = [(ASContact *)self business2TelephoneNumber];
    [v101 addObject:business2TelephoneNumber3];
  }

  v100 = v33;
  if (v32)
  {
    if (ABMultiValueGetCount(v32) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v32)) != 0)
    {
      v43 = MutableCopy;
      v87 = v32;
      recordCopy3 = record;
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

                    companyMainPhone2 = [(ASContact *)self companyMainPhone];

                    if (companyMainPhone2)
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
      recordCopy2 = recordCopy3;
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

  homeTelephoneNumber4 = [(ASContact *)self homeTelephoneNumber];

  if (homeTelephoneNumber4)
  {
    homeTelephoneNumber5 = [(ASContact *)self homeTelephoneNumber];
    [v33 removeObject:homeTelephoneNumber5];

    v63 = 1;
  }

  else
  {
    v63 = 0;
  }

  home2TelephoneNumber4 = [(ASContact *)self home2TelephoneNumber];

  if (home2TelephoneNumber4)
  {
    home2TelephoneNumber5 = [(ASContact *)self home2TelephoneNumber];
    [v33 removeObject:home2TelephoneNumber5];

    if (homeTelephoneNumber4)
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
    v89 = recordCopy2;
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

    recordCopy2 = v89;
    v33 = v100;
  }

LABEL_106:
  businessTelephoneNumber4 = [(ASContact *)self businessTelephoneNumber];

  if (businessTelephoneNumber4)
  {
    businessTelephoneNumber5 = [(ASContact *)self businessTelephoneNumber];
    [v101 removeObject:businessTelephoneNumber5];

    v75 = 1;
  }

  else
  {
    v75 = 0;
  }

  business2TelephoneNumber4 = [(ASContact *)self business2TelephoneNumber];

  if (!business2TelephoneNumber4)
  {
    goto LABEL_112;
  }

  business2TelephoneNumber5 = [(ASContact *)self business2TelephoneNumber];
  [v101 removeObject:business2TelephoneNumber5];

  if (!businessTelephoneNumber4)
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
  LOBYTE(propertiesCopy) = v96;
LABEL_125:
  ABRecordSetValue(recordCopy2, v30, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v85 = *MEMORY[0x277D85DE8];
  return propertiesCopy;
}

- (BOOL)_saveStreetAddressesToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  multiValue = ABMultiValueCreateMutable(5u);
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  v7 = *MEMORY[0x277CE9810];
  businessAddressCity = [(ASContact *)self businessAddressCity];
  if (businessAddressCity)
  {
    [v6 setObject:businessAddressCity forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277CE9820];
  businessAddressCountry = [(ASContact *)self businessAddressCountry];
  if (businessAddressCountry)
  {
    [v6 setObject:businessAddressCountry forKeyedSubscript:v9];
  }

  record = record;

  v11 = *MEMORY[0x277CE9840];
  businessAddressPostalCode = [(ASContact *)self businessAddressPostalCode];
  if (businessAddressPostalCode)
  {
    [v6 setObject:businessAddressPostalCode forKeyedSubscript:v11];
  }

  v13 = *MEMORY[0x277CE9830];
  businessAddressState = [(ASContact *)self businessAddressState];
  if (businessAddressState)
  {
    [v6 setObject:businessAddressState forKeyedSubscript:v13];
  }

  v15 = *MEMORY[0x277CE9838];
  businessAddressStreet = [(ASContact *)self businessAddressStreet];
  if (businessAddressStreet)
  {
    [v6 setObject:businessAddressStreet forKeyedSubscript:v15];
  }

  v56 = [v6 count];
  if (v56 && v6)
  {
    ABMultiValueAddValueAndLabel(multiValue, v6, *MEMORY[0x277CE9AE8], 0);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  homeAddressCity = [(ASContact *)self homeAddressCity];
  if (homeAddressCity)
  {
    [v17 setObject:homeAddressCity forKeyedSubscript:v7];
  }

  homeAddressCountry = [(ASContact *)self homeAddressCountry];
  if (homeAddressCountry)
  {
    [v17 setObject:homeAddressCountry forKeyedSubscript:v9];
  }

  homeAddressPostalCode = [(ASContact *)self homeAddressPostalCode];
  if (homeAddressPostalCode)
  {
    [v17 setObject:homeAddressPostalCode forKeyedSubscript:v11];
  }

  homeAddressState = [(ASContact *)self homeAddressState];
  if (homeAddressState)
  {
    [v17 setObject:homeAddressState forKeyedSubscript:v13];
  }

  homeAddressStreet = [(ASContact *)self homeAddressStreet];
  if (homeAddressStreet)
  {
    [v17 setObject:homeAddressStreet forKeyedSubscript:v15];
  }

  v52 = [v17 count];
  if (v52 && v17)
  {
    ABMultiValueAddValueAndLabel(multiValue, v17, *MEMORY[0x277CE9800], 0);
  }

  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  otherAddressCity = [(ASContact *)self otherAddressCity];
  if (otherAddressCity)
  {
    [v23 setObject:otherAddressCity forKeyedSubscript:v7];
  }

  otherAddressCountry = [(ASContact *)self otherAddressCountry];
  if (otherAddressCountry)
  {
    [v23 setObject:otherAddressCountry forKeyedSubscript:v9];
  }

  otherAddressPostalCode = [(ASContact *)self otherAddressPostalCode];
  if (otherAddressPostalCode)
  {
    [v23 setObject:otherAddressPostalCode forKeyedSubscript:v11];
  }

  otherAddressState = [(ASContact *)self otherAddressState];
  if (otherAddressState)
  {
    [v23 setObject:otherAddressState forKeyedSubscript:v13];
  }

  otherAddressStreet = [(ASContact *)self otherAddressStreet];
  if (otherAddressStreet)
  {
    [v23 setObject:otherAddressStreet forKeyedSubscript:v15];
  }

  v29 = [v23 count];
  v30 = multiValue;
  recordCopy2 = record;
  if (v29 && v23)
  {
    ABMultiValueAddValueAndLabel(multiValue, v23, *MEMORY[0x277CE9808], 0);
  }

  v32 = *MEMORY[0x277CE9828];
  if (propertiesCopy && (v33 = ABRecordCopyValue(record, *MEMORY[0x277CE9828])) != 0)
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
      recordCopy2 = record;
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

  ABRecordSetValue(recordCopy2, v32, v30, 0);
  if (v30)
  {
    CFRelease(v30);
  }

  return v37 & 1;
}

- (BOOL)_saveEmailsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  v53 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CBEEE8];
  email1Address = [(ASContact *)self email1Address];
  if (email1Address)
  {
    ABMultiValueAddValueAndLabel(Mutable, email1Address, v8, 0);
  }

  email2Address = [(ASContact *)self email2Address];
  if (email2Address)
  {
    ABMultiValueAddValueAndLabel(Mutable, email2Address, v8, 0);
  }

  email3Address = [(ASContact *)self email3Address];
  if (email3Address)
  {
    ABMultiValueAddValueAndLabel(Mutable, email3Address, v8, 0);
  }

  if (!properties)
  {
    v19 = *MEMORY[0x277CE9888];
    goto LABEL_45;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:6];
  email1Address2 = [(ASContact *)self email1Address];

  if (email1Address2)
  {
    email1Address3 = [(ASContact *)self email1Address];
    [v12 addObject:email1Address3];
  }

  email2Address2 = [(ASContact *)self email2Address];

  if (email2Address2)
  {
    email2Address3 = [(ASContact *)self email2Address];
    [v12 addObject:email2Address3];
  }

  email3Address2 = [(ASContact *)self email3Address];

  if (email3Address2)
  {
    email3Address3 = [(ASContact *)self email3Address];
    [v12 addObject:email3Address3];
  }

  v19 = *MEMORY[0x277CE9888];
  v20 = ABRecordCopyValue(record, *MEMORY[0x277CE9888]);
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
        recordCopy = record;
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
        record = recordCopy;
        v19 = v46;
      }
    }

    CFRelease(v21);
  }

  email1Address4 = [(ASContact *)self email1Address];

  if (email1Address4)
  {
    email1Address5 = [(ASContact *)self email1Address];
    [v12 removeObject:email1Address5];

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  email2Address4 = [(ASContact *)self email2Address];

  if (email2Address4)
  {
    email2Address5 = [(ASContact *)self email2Address];
    [v12 removeObject:email2Address5];

    ++v31;
  }

  email3Address4 = [(ASContact *)self email3Address];

  if (!email3Address4)
  {
    goto LABEL_32;
  }

  email3Address5 = [(ASContact *)self email3Address];
  [v12 removeObject:email3Address5];

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
      recordCopy2 = record;
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

      record = recordCopy2;
      v19 = v47;
    }
  }

LABEL_45:
  ABRecordSetValue(record, v19, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v43 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_saveURLsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE98D0];
  webpage = [(ASContact *)self webpage];
  if (webpage)
  {
    ABMultiValueAddValueAndLabel(Mutable, webpage, v8, 0);
  }

  v10 = *MEMORY[0x277CE9A58];
  if (propertiesCopy && (v11 = ABRecordCopyValue(record, *MEMORY[0x277CE9A58])) != 0)
  {
    v12 = v11;
    if (ABMultiValueGetCount(v11) >= 1 && (MutableCopy = ABMultiValueCreateMutableCopy(v12)) != 0)
    {
      v14 = MutableCopy;
      recordCopy = record;
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
            webpage2 = [(ASContact *)self webpage];

            if (!webpage2)
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
      record = recordCopy;
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

  ABRecordSetValue(record, v10, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v17;
}

- (BOOL)_saveIMsToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties
{
  v57 = *MEMORY[0x277D85DE8];
  Mutable = ABMultiValueCreateMutable(1u);
  v8 = *MEMORY[0x277CE9808];
  im1Address = [(ASContact *)self im1Address];
  addIMUserNameToMultiValue(Mutable, v8, im1Address);

  im2Address = [(ASContact *)self im2Address];
  addIMUserNameToMultiValue(Mutable, v8, im2Address);

  im3Address = [(ASContact *)self im3Address];
  addIMUserNameToMultiValue(Mutable, v8, im3Address);

  if (!properties)
  {
    v19 = *MEMORY[0x277CE98E8];
    goto LABEL_37;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:6];
  im1Address2 = [(ASContact *)self im1Address];

  if (im1Address2)
  {
    im1Address3 = [(ASContact *)self im1Address];
    [v12 addObject:im1Address3];
  }

  im2Address2 = [(ASContact *)self im2Address];

  if (im2Address2)
  {
    im2Address3 = [(ASContact *)self im2Address];
    [v12 addObject:im2Address3];
  }

  im3Address2 = [(ASContact *)self im3Address];

  if (im3Address2)
  {
    im3Address3 = [(ASContact *)self im3Address];
    [v12 addObject:im3Address3];
  }

  v19 = *MEMORY[0x277CE98E8];
  v20 = ABRecordCopyValue(record, *MEMORY[0x277CE98E8]);
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
        recordCopy = record;
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
        record = recordCopy;
        v12 = v24;
        v19 = v50;
      }
    }

    CFRelease(v21);
  }

  im1Address4 = [(ASContact *)self im1Address];

  if (im1Address4)
  {
    im1Address5 = [(ASContact *)self im1Address];
    [v12 removeObject:im1Address5];

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  im2Address4 = [(ASContact *)self im2Address];

  if (im2Address4)
  {
    im2Address5 = [(ASContact *)self im2Address];
    [v12 removeObject:im2Address5];

    ++v33;
  }

  im3Address4 = [(ASContact *)self im3Address];

  if (!im3Address4)
  {
    goto LABEL_26;
  }

  im3Address5 = [(ASContact *)self im3Address];
  [v12 removeObject:im3Address5];

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
  ABRecordSetValue(record, v19, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v45 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_saveExternalRepToAddressBookWithExistingRecord:(void *)record shouldMergeProperties:(BOOL)properties storeExternalRep:(BOOL)rep
{
  repCopy = rep;
  propertiesCopy = properties;
  v37 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CE98A0];
  v9 = ABRecordCopyValue(record, *MEMORY[0x277CE98A0]);
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

  if (repCopy)
  {
    if (!propertiesCopy || ([v14 objectForKeyedSubscript:@"easExtraProperties"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "mutableCopy"), v18, !v19))
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
  ABRecordSetValue(record, v8, v28, 0);

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setABRecord:(void *)record
{
  abRecord = self->_abRecord;
  if (abRecord != record)
  {
    if (abRecord)
    {
      CFRelease(abRecord);
    }

    self->_abRecord = record;
    if (record)
    {

      CFRetain(record);
    }
  }
}

- (BOOL)loadABRecord
{
  if (self->_abRecord)
  {
    [(ASContact *)a2 loadABRecord];
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    [(ASContact *)a2 loadABRecord];
  }

  v5 = +[ASLocalDBHelper sharedInstance];
  abDB = [v5 abDB];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(abDB, [clientID2 intValue]);

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
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    ABRecordSetValue(abRecord, v3, serverID, 0);
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
  abDB = [v3 abDB];

  if (!abDB)
  {
    return 0;
  }

  abRecord = self->_abRecord;
  if (abRecord)
  {
    if (ABAddressBookRemoveRecord(abDB, abRecord, 0))
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

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v124 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  shouldSendFullContactInfo = [protocol2 shouldSendFullContactInfo];

  body = [(ASContact *)self body];
  if (usesAirSyncBaseNamespace)
  {
    [dataCopy switchToCodePage:17];
    [dataCopy openTag:10];
    [dataCopy appendTag:6 withIntContent:1];
    if ([body length])
    {
      [dataCopy appendTag:11 withStringContent:body];
    }

    else
    {
      [dataCopy appendEmptyTag:11];
    }

    [dataCopy closeTag:10];
  }

  [dataCopy switchToCodePage:1];
  anniversary = [(ASContact *)self anniversary];
  v16 = anniversary;
  if (anniversary)
  {
    activeSyncString = [anniversary activeSyncString];
    [dataCopy appendTag:5 withStringContent:activeSyncString];
  }

  assistantName = [(ASContact *)self assistantName];
  if (assistantName)
  {
    [dataCopy appendTag:6 withStringContent:assistantName];
  }

  assistantTelephoneNumber = [(ASContact *)self assistantTelephoneNumber];
  if (assistantTelephoneNumber)
  {
    [dataCopy appendTag:7 withStringContent:assistantTelephoneNumber];
  }

  birthday = [(ASContact *)self birthday];
  v21 = birthday;
  if (birthday)
  {
    activeSyncString2 = [birthday activeSyncString];
    [dataCopy appendTag:8 withStringContent:activeSyncString2];
  }

  if ((usesAirSyncBaseNamespace & 1) == 0)
  {
    if ([body length])
    {
      [dataCopy appendTag:9 withStringContent:body];
    }

    else
    {
      [dataCopy appendEmptyTag:9];
    }
  }

  business2TelephoneNumber = [(ASContact *)self business2TelephoneNumber];
  if (business2TelephoneNumber)
  {
    [dataCopy appendTag:12 withStringContent:business2TelephoneNumber];
  }

  businessAddressCity = [(ASContact *)self businessAddressCity];
  if (businessAddressCity)
  {
    [dataCopy appendTag:13 withStringContent:businessAddressCity];
  }

  businessAddressCountry = [(ASContact *)self businessAddressCountry];
  if (businessAddressCountry)
  {
    [dataCopy appendTag:14 withStringContent:businessAddressCountry];
  }

  businessAddressPostalCode = [(ASContact *)self businessAddressPostalCode];
  if (businessAddressPostalCode)
  {
    [dataCopy appendTag:15 withStringContent:businessAddressPostalCode];
  }

  businessAddressState = [(ASContact *)self businessAddressState];
  if (businessAddressState)
  {
    [dataCopy appendTag:16 withStringContent:businessAddressState];
  }

  businessAddressStreet = [(ASContact *)self businessAddressStreet];
  if (businessAddressStreet)
  {
    [dataCopy appendTag:17 withStringContent:businessAddressStreet];
  }

  businessFaxNumber = [(ASContact *)self businessFaxNumber];
  if (businessFaxNumber)
  {
    [dataCopy appendTag:18 withStringContent:businessFaxNumber];
  }

  businessTelephoneNumber = [(ASContact *)self businessTelephoneNumber];
  if (businessTelephoneNumber)
  {
    [dataCopy appendTag:19 withStringContent:businessTelephoneNumber];
  }

  carTelephoneNumber = [(ASContact *)self carTelephoneNumber];
  if (carTelephoneNumber)
  {
    [dataCopy appendTag:20 withStringContent:carTelephoneNumber];
  }

  companyName = [(ASContact *)self companyName];
  if (companyName)
  {
    [dataCopy appendTag:25 withStringContent:companyName];
  }

  department = [(ASContact *)self department];
  if (department)
  {
    [dataCopy appendTag:26 withStringContent:department];
  }

  email1Address = [(ASContact *)self email1Address];
  if (email1Address)
  {
    [dataCopy appendTag:27 withStringContent:email1Address];
  }

  email2Address = [(ASContact *)self email2Address];
  if (email2Address)
  {
    [dataCopy appendTag:28 withStringContent:email2Address];
  }

  email3Address = [(ASContact *)self email3Address];
  if (email3Address)
  {
    [dataCopy appendTag:29 withStringContent:email3Address];
  }

  fileAs = [(ASContact *)self fileAs];

  if (fileAs)
  {
    fileAs2 = [(ASContact *)self fileAs];
  }

  else
  {
    fileAs2 = objc_opt_new();
    lastName = [(ASContact *)self lastName];

    if (lastName)
    {
      lastName2 = [(ASContact *)self lastName];
      [fileAs2 appendString:lastName2];

      [fileAs2 appendString:{@", "}];
    }

    firstName = [(ASContact *)self firstName];

    if (firstName)
    {
      firstName2 = [(ASContact *)self firstName];
      [fileAs2 appendString:firstName2];

      [fileAs2 appendString:@" "];
    }

    middleName = [(ASContact *)self middleName];
    v44 = [middleName length];

    if (v44)
    {
      middleName2 = [(ASContact *)self middleName];
      v46 = [middleName2 substringToIndex:1];
      [fileAs2 appendString:v46];

      [fileAs2 appendString:@"."];
    }

    if (![fileAs2 length])
    {
      companyName2 = [(ASContact *)self companyName];

      if (companyName2)
      {
        companyName3 = [(ASContact *)self companyName];
        [fileAs2 appendString:companyName3];
      }
    }
  }

  [dataCopy appendTag:30 withStringContent:fileAs2];

  firstName3 = [(ASContact *)self firstName];
  if (firstName3)
  {
    [dataCopy appendTag:31 withStringContent:firstName3];
  }

  home2TelephoneNumber = [(ASContact *)self home2TelephoneNumber];
  if (home2TelephoneNumber)
  {
    [dataCopy appendTag:32 withStringContent:home2TelephoneNumber];
  }

  homeAddressCity = [(ASContact *)self homeAddressCity];
  if (homeAddressCity)
  {
    [dataCopy appendTag:33 withStringContent:homeAddressCity];
  }

  homeAddressCountry = [(ASContact *)self homeAddressCountry];
  if (homeAddressCountry)
  {
    [dataCopy appendTag:34 withStringContent:homeAddressCountry];
  }

  homeAddressPostalCode = [(ASContact *)self homeAddressPostalCode];
  if (homeAddressPostalCode)
  {
    [dataCopy appendTag:35 withStringContent:homeAddressPostalCode];
  }

  homeAddressState = [(ASContact *)self homeAddressState];
  if (homeAddressState)
  {
    [dataCopy appendTag:36 withStringContent:homeAddressState];
  }

  homeAddressStreet = [(ASContact *)self homeAddressStreet];
  if (homeAddressStreet)
  {
    [dataCopy appendTag:37 withStringContent:homeAddressStreet];
  }

  homeFaxNumber = [(ASContact *)self homeFaxNumber];
  if (homeFaxNumber)
  {
    [dataCopy appendTag:38 withStringContent:homeFaxNumber];
  }

  homeTelephoneNumber = [(ASContact *)self homeTelephoneNumber];
  if (homeTelephoneNumber)
  {
    [dataCopy appendTag:39 withStringContent:homeTelephoneNumber];
  }

  jobTitle = [(ASContact *)self jobTitle];
  if (jobTitle)
  {
    [dataCopy appendTag:40 withStringContent:jobTitle];
  }

  lastName3 = [(ASContact *)self lastName];
  if (lastName3)
  {
    [dataCopy appendTag:41 withStringContent:lastName3];
  }

  middleName3 = [(ASContact *)self middleName];
  if (middleName3)
  {
    [dataCopy appendTag:42 withStringContent:middleName3];
  }

  mobileTelephoneNumber = [(ASContact *)self mobileTelephoneNumber];
  if (mobileTelephoneNumber)
  {
    [dataCopy appendTag:43 withStringContent:mobileTelephoneNumber];
  }

  otherAddressCity = [(ASContact *)self otherAddressCity];
  if (otherAddressCity)
  {
    [dataCopy appendTag:45 withStringContent:otherAddressCity];
  }

  otherAddressCountry = [(ASContact *)self otherAddressCountry];
  if (otherAddressCountry)
  {
    [dataCopy appendTag:46 withStringContent:otherAddressCountry];
  }

  otherAddressPostalCode = [(ASContact *)self otherAddressPostalCode];
  if (otherAddressPostalCode)
  {
    [dataCopy appendTag:47 withStringContent:otherAddressPostalCode];
  }

  otherAddressState = [(ASContact *)self otherAddressState];
  if (otherAddressState)
  {
    [dataCopy appendTag:48 withStringContent:otherAddressState];
  }

  otherAddressStreet = [(ASContact *)self otherAddressStreet];
  if (otherAddressStreet)
  {
    [dataCopy appendTag:49 withStringContent:otherAddressStreet];
  }

  pagerNumber = [(ASContact *)self pagerNumber];
  if (pagerNumber)
  {
    [dataCopy appendTag:50 withStringContent:pagerNumber];
  }

  picture = [(ASContact *)self picture];
  v69 = picture;
  if (picture)
  {
    if ([picture length] > 0x9266)
    {
      if ([v69 length] >= 0x9267)
      {
        v70 = DALoggingwithCategory();
        v71 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v70, v71))
        {
          *buf = 138412546;
          selfCopy = self;
          v122 = 2048;
          v123 = [v69 length];
          _os_log_impl(&dword_24A0AC000, v70, v71, "Ignoring photo for %@, as it's bigger than our limit of 36.6k, length: %lu", buf, 0x16u);
        }
      }
    }

    else
    {
      [dataCopy appendTag:60 withStringContent:v69];
    }
  }

  else
  {
    [dataCopy appendEmptyTag:60];
  }

  radioTelephoneNumber = [(ASContact *)self radioTelephoneNumber];
  if (radioTelephoneNumber)
  {
    [dataCopy appendTag:51 withStringContent:radioTelephoneNumber];
  }

  spouse = [(ASContact *)self spouse];
  if (spouse)
  {
    [dataCopy appendTag:52 withStringContent:spouse];
  }

  suffix = [(ASContact *)self suffix];
  if (suffix)
  {
    [dataCopy appendTag:53 withStringContent:suffix];
  }

  title = [(ASContact *)self title];
  if (title)
  {
    [dataCopy appendTag:54 withStringContent:title];
  }

  webpage = [(ASContact *)self webpage];
  if (webpage)
  {
    [dataCopy appendTag:55 withStringContent:webpage];
  }

  yomiFirstName = [(ASContact *)self yomiFirstName];
  if (yomiFirstName)
  {
    [dataCopy appendTag:57 withStringContent:yomiFirstName];
  }

  yomiLastName = [(ASContact *)self yomiLastName];
  if (yomiLastName)
  {
    [dataCopy appendTag:58 withStringContent:yomiLastName];
  }

  if (shouldSendFullContactInfo)
  {
    yomiCompanyName = [(ASContact *)self yomiCompanyName];
    if (yomiCompanyName)
    {
      [dataCopy appendTag:56 withStringContent:yomiCompanyName];
    }

    officeLocation = [(ASContact *)self officeLocation];
    if (officeLocation)
    {
      [dataCopy appendTag:44 withStringContent:officeLocation];
    }

    if ([(NSArray *)self->_categories count])
    {
      [dataCopy openTag:21];
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

            [dataCopy appendTag:22 withStringContent:*(*(&v114 + 1) + 8 * i)];
          }

          v83 = [(NSArray *)v81 countByEnumeratingWithState:&v114 objects:v119 count:16];
        }

        while (v83);
      }

      [dataCopy closeTag:21];
    }

    if ([(NSArray *)self->_children count])
    {
      [dataCopy openTag:23];
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

            [dataCopy appendTag:24 withStringContent:{*(*(&v110 + 1) + 8 * j), v110}];
          }

          v88 = [(NSArray *)v86 countByEnumeratingWithState:&v110 objects:v118 count:16];
        }

        while (v88);
      }

      [dataCopy closeTag:23];
    }

    customerID = [(ASContact *)self customerID];
    if (customerID)
    {
      v92 = 1;
    }

    else
    {
      governmentID = [(ASContact *)self governmentID];
      if (governmentID)
      {
        v92 = 1;
      }

      else
      {
        accountName = [(ASContact *)self accountName];
        if (accountName)
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

  im1Address = [(ASContact *)self im1Address];
  if (im1Address)
  {
    goto LABEL_156;
  }

  im1Address = [(ASContact *)self im2Address];
  if (im1Address || ([(ASContact *)self im3Address], (im1Address = objc_claimAutoreleasedReturnValue()) != 0) || ([(ASContact *)self managerName], (im1Address = objc_claimAutoreleasedReturnValue()) != 0) || ([(ASContact *)self companyMainPhone], (im1Address = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_156:
  }

  else
  {
    nickName = [(ASContact *)self nickName];
    v109 = nickName != 0 || v92;

    if (!v109)
    {
      goto LABEL_183;
    }
  }

  [dataCopy switchToCodePage:12];
  if (shouldSendFullContactInfo)
  {
    customerID2 = [(ASContact *)self customerID];
    if (customerID2)
    {
      [dataCopy appendTag:5 withStringContent:customerID2];
    }

    governmentID2 = [(ASContact *)self governmentID];
    if (governmentID2)
    {
      [dataCopy appendTag:6 withStringContent:governmentID2];
    }
  }

  im1Address2 = [(ASContact *)self im1Address];
  if (im1Address2)
  {
    [dataCopy appendTag:7 withStringContent:im1Address2];
  }

  im2Address = [(ASContact *)self im2Address];
  if (im2Address)
  {
    [dataCopy appendTag:8 withStringContent:im2Address];
  }

  im3Address = [(ASContact *)self im3Address];
  if (im3Address)
  {
    [dataCopy appendTag:9 withStringContent:im3Address];
  }

  managerName = [(ASContact *)self managerName];
  if (managerName)
  {
    [dataCopy appendTag:10 withStringContent:managerName];
  }

  companyMainPhone = [(ASContact *)self companyMainPhone];
  if (companyMainPhone)
  {
    [dataCopy appendTag:11 withStringContent:companyMainPhone];
  }

  if (shouldSendFullContactInfo)
  {
    accountName2 = [(ASContact *)self accountName];
    if (accountName2)
    {
      [dataCopy appendTag:12 withStringContent:accountName2];
    }
  }

  nickName2 = [(ASContact *)self nickName];
  if (nickName2)
  {
    [dataCopy appendTag:13 withStringContent:nickName2];
  }

  if (shouldSendFullContactInfo)
  {
    v106 = [(ASContact *)self mms];
    if (v106)
    {
      [dataCopy appendTag:14 withStringContent:v106];
    }
  }

LABEL_183:

  v107 = *MEMORY[0x277D85DE8];
}

- (id)bestEmailFromAppData:(int)data
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  0x100u = [MEMORY[0x277CCABB0] numberWithInt:data | 0x100u];
  v6 = [applicationData objectForKeyedSubscript:0x100u];

  mf_uncommentedAddress = [v6 mf_uncommentedAddress];
  v8 = mf_uncommentedAddress;
  if (mf_uncommentedAddress)
  {
    v9 = mf_uncommentedAddress;
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
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:261];
  v5 = [applicationData objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v5];
      [(ASContact *)self setAnniversary:v6];
    }
  }

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:262];
  v9 = [applicationData2 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAssistantName:v9];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:263];
  v12 = [applicationData3 objectForKey:v11];

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAssistantTelephoneNumber:v12];
    }
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:264];
  v15 = [applicationData4 objectForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v15];
      [(ASContact *)self setBirthday:v16];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v193 = [applicationData5 objectForKeyedSubscript:&unk_285D57C78];

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

    applicationData8 = [MEMORY[0x277CCABB0] numberWithInt:4365];
    v23 = [v193 objectForKey:applicationData8];
  }

  else
  {
    applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:265];
    v26 = [applicationData6 objectForKey:v25];

    if (v26)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASContact *)self setBody:v26];
      }
    }

    applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:266];
    v29 = [applicationData7 objectForKey:v28];

    if (v29)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASContact setBodySize:](self, "setBodySize:", [v29 intValue]);
      }
    }

    applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:267];
    v23 = [applicationData8 objectForKey:v30];
  }

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASContact setBodyTruncated:](self, "setBodyTruncated:", [v23 intValue] != 0);
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v32 = [MEMORY[0x277CCABB0] numberWithInt:268];
  v33 = [applicationData9 objectForKey:v32];

  if (v33)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusiness2TelephoneNumber:v33];
    }
  }

  applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:269];
  v36 = [applicationData10 objectForKey:v35];

  if (v36)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressCity:v36];
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:270];
  v39 = [applicationData11 objectForKey:v38];

  if (v39)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressCountry:v39];
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:271];
  v42 = [applicationData12 objectForKey:v41];

  if (v42)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressPostalCode:v42];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:272];
  v45 = [applicationData13 objectForKey:v44];

  if (v45)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressState:v45];
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:273];
  v48 = [applicationData14 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessAddressStreet:v48];
    }
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v50 = [MEMORY[0x277CCABB0] numberWithInt:274];
  v51 = [applicationData15 objectForKey:v50];

  if (v51)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessFaxNumber:v51];
    }
  }

  applicationData16 = [(ASChangedCollectionLeaf *)self applicationData];
  v53 = [MEMORY[0x277CCABB0] numberWithInt:275];
  v54 = [applicationData16 objectForKey:v53];

  if (v54)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setBusinessTelephoneNumber:v54];
    }
  }

  applicationData17 = [(ASChangedCollectionLeaf *)self applicationData];
  v56 = [MEMORY[0x277CCABB0] numberWithInt:276];
  v57 = [applicationData17 objectForKey:v56];

  if (v57)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCarTelephoneNumber:v57];
    }
  }

  applicationData18 = [(ASChangedCollectionLeaf *)self applicationData];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:277];
  v60 = [applicationData18 objectForKey:v59];

  if (v60)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCategories:v60];
    }
  }

  applicationData19 = [(ASChangedCollectionLeaf *)self applicationData];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:279];
  v63 = [applicationData19 objectForKey:v62];

  if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setChildren:v63];
    }
  }

  applicationData20 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:281];
  v66 = [applicationData20 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCompanyName:v66];
    }
  }

  applicationData21 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:282];
  v69 = [applicationData21 objectForKey:v68];

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

  applicationData22 = [(ASChangedCollectionLeaf *)self applicationData];
  v74 = [MEMORY[0x277CCABB0] numberWithInt:286];
  v75 = [applicationData22 objectForKey:v74];

  if (v75)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setFileAs:v75];
    }
  }

  applicationData23 = [(ASChangedCollectionLeaf *)self applicationData];
  v77 = [MEMORY[0x277CCABB0] numberWithInt:287];
  v78 = [applicationData23 objectForKey:v77];

  if (v78)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setFirstName:v78];
    }
  }

  applicationData24 = [(ASChangedCollectionLeaf *)self applicationData];
  v80 = [MEMORY[0x277CCABB0] numberWithInt:288];
  v81 = [applicationData24 objectForKey:v80];

  if (v81)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHome2TelephoneNumber:v81];
    }
  }

  applicationData25 = [(ASChangedCollectionLeaf *)self applicationData];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:289];
  v84 = [applicationData25 objectForKey:v83];

  if (v84)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressCity:v84];
    }
  }

  applicationData26 = [(ASChangedCollectionLeaf *)self applicationData];
  v86 = [MEMORY[0x277CCABB0] numberWithInt:290];
  v87 = [applicationData26 objectForKey:v86];

  if (v87)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressCountry:v87];
    }
  }

  applicationData27 = [(ASChangedCollectionLeaf *)self applicationData];
  v89 = [MEMORY[0x277CCABB0] numberWithInt:291];
  v90 = [applicationData27 objectForKey:v89];

  if (v90)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressPostalCode:v90];
    }
  }

  applicationData28 = [(ASChangedCollectionLeaf *)self applicationData];
  v92 = [MEMORY[0x277CCABB0] numberWithInt:292];
  v93 = [applicationData28 objectForKey:v92];

  if (v93)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressState:v93];
    }
  }

  applicationData29 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:293];
  v96 = [applicationData29 objectForKey:v95];

  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeAddressStreet:v96];
    }
  }

  applicationData30 = [(ASChangedCollectionLeaf *)self applicationData];
  v98 = [MEMORY[0x277CCABB0] numberWithInt:294];
  v99 = [applicationData30 objectForKey:v98];

  if (v99)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeFaxNumber:v99];
    }
  }

  applicationData31 = [(ASChangedCollectionLeaf *)self applicationData];
  v101 = [MEMORY[0x277CCABB0] numberWithInt:295];
  v102 = [applicationData31 objectForKey:v101];

  if (v102)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setHomeTelephoneNumber:v102];
    }
  }

  applicationData32 = [(ASChangedCollectionLeaf *)self applicationData];
  v104 = [MEMORY[0x277CCABB0] numberWithInt:296];
  v105 = [applicationData32 objectForKey:v104];

  if (v105)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setJobTitle:v105];
    }
  }

  applicationData33 = [(ASChangedCollectionLeaf *)self applicationData];
  v107 = [MEMORY[0x277CCABB0] numberWithInt:297];
  v108 = [applicationData33 objectForKey:v107];

  if (v108)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setLastName:v108];
    }
  }

  applicationData34 = [(ASChangedCollectionLeaf *)self applicationData];
  v110 = [MEMORY[0x277CCABB0] numberWithInt:298];
  v111 = [applicationData34 objectForKey:v110];

  if (v111)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setMiddleName:v111];
    }
  }

  applicationData35 = [(ASChangedCollectionLeaf *)self applicationData];
  v113 = [MEMORY[0x277CCABB0] numberWithInt:299];
  v114 = [applicationData35 objectForKey:v113];

  if (v114)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setMobileTelephoneNumber:v114];
    }
  }

  applicationData36 = [(ASChangedCollectionLeaf *)self applicationData];
  v116 = [MEMORY[0x277CCABB0] numberWithInt:300];
  v117 = [applicationData36 objectForKey:v116];

  if (v117)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOfficeLocation:v117];
    }
  }

  applicationData37 = [(ASChangedCollectionLeaf *)self applicationData];
  v119 = [MEMORY[0x277CCABB0] numberWithInt:301];
  v120 = [applicationData37 objectForKey:v119];

  if (v120)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressCity:v120];
    }
  }

  applicationData38 = [(ASChangedCollectionLeaf *)self applicationData];
  v122 = [MEMORY[0x277CCABB0] numberWithInt:302];
  v123 = [applicationData38 objectForKey:v122];

  if (v123)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressCountry:v123];
    }
  }

  applicationData39 = [(ASChangedCollectionLeaf *)self applicationData];
  v125 = [MEMORY[0x277CCABB0] numberWithInt:303];
  v126 = [applicationData39 objectForKey:v125];

  if (v126)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressPostalCode:v126];
    }
  }

  applicationData40 = [(ASChangedCollectionLeaf *)self applicationData];
  v128 = [MEMORY[0x277CCABB0] numberWithInt:304];
  v129 = [applicationData40 objectForKey:v128];

  if (v129)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressState:v129];
    }
  }

  applicationData41 = [(ASChangedCollectionLeaf *)self applicationData];
  v131 = [MEMORY[0x277CCABB0] numberWithInt:305];
  v132 = [applicationData41 objectForKey:v131];

  if (v132)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setOtherAddressStreet:v132];
    }
  }

  applicationData42 = [(ASChangedCollectionLeaf *)self applicationData];
  v134 = [MEMORY[0x277CCABB0] numberWithInt:306];
  v135 = [applicationData42 objectForKey:v134];

  if (v135)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setPagerNumber:v135];
    }
  }

  applicationData43 = [(ASChangedCollectionLeaf *)self applicationData];
  v137 = [MEMORY[0x277CCABB0] numberWithInt:316];
  v138 = [applicationData43 objectForKey:v137];

  if (v138)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setPicture:v138];
    }
  }

  applicationData44 = [(ASChangedCollectionLeaf *)self applicationData];
  v140 = [MEMORY[0x277CCABB0] numberWithInt:307];
  v141 = [applicationData44 objectForKey:v140];

  if (v141)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setRadioTelephoneNumber:v141];
    }
  }

  applicationData45 = [(ASChangedCollectionLeaf *)self applicationData];
  v143 = [MEMORY[0x277CCABB0] numberWithInt:308];
  v144 = [applicationData45 objectForKey:v143];

  if (v144)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setSpouse:v144];
    }
  }

  applicationData46 = [(ASChangedCollectionLeaf *)self applicationData];
  v146 = [MEMORY[0x277CCABB0] numberWithInt:309];
  v147 = [applicationData46 objectForKey:v146];

  if (v147)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setSuffix:v147];
    }
  }

  applicationData47 = [(ASChangedCollectionLeaf *)self applicationData];
  v149 = [MEMORY[0x277CCABB0] numberWithInt:310];
  v150 = [applicationData47 objectForKey:v149];

  if (v150)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setTitle:v150];
    }
  }

  applicationData48 = [(ASChangedCollectionLeaf *)self applicationData];
  v152 = [MEMORY[0x277CCABB0] numberWithInt:311];
  v153 = [applicationData48 objectForKey:v152];

  if (v153)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setWebpage:v153];
    }
  }

  applicationData49 = [(ASChangedCollectionLeaf *)self applicationData];
  v155 = [MEMORY[0x277CCABB0] numberWithInt:312];
  v156 = [applicationData49 objectForKey:v155];

  if (v156)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiCompanyName:v156];
    }
  }

  applicationData50 = [(ASChangedCollectionLeaf *)self applicationData];
  v158 = [MEMORY[0x277CCABB0] numberWithInt:313];
  v159 = [applicationData50 objectForKey:v158];

  if (v159)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiFirstName:v159];
    }
  }

  applicationData51 = [(ASChangedCollectionLeaf *)self applicationData];
  v161 = [MEMORY[0x277CCABB0] numberWithInt:314];
  v162 = [applicationData51 objectForKey:v161];

  if (v162)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setYomiLastName:v162];
    }
  }

  applicationData52 = [(ASChangedCollectionLeaf *)self applicationData];
  v164 = [MEMORY[0x277CCABB0] numberWithInt:3077];
  v165 = [applicationData52 objectForKey:v164];

  if (v165)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCustomerID:v165];
    }
  }

  applicationData53 = [(ASChangedCollectionLeaf *)self applicationData];
  v167 = [MEMORY[0x277CCABB0] numberWithInt:3078];
  v168 = [applicationData53 objectForKey:v167];

  if (v168)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setGovernmentID:v168];
    }
  }

  applicationData54 = [(ASChangedCollectionLeaf *)self applicationData];
  v170 = [MEMORY[0x277CCABB0] numberWithInt:3079];
  v171 = [applicationData54 objectForKey:v170];

  if (v171)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm1Address:v171];
    }
  }

  applicationData55 = [(ASChangedCollectionLeaf *)self applicationData];
  v173 = [MEMORY[0x277CCABB0] numberWithInt:3080];
  v174 = [applicationData55 objectForKey:v173];

  if (v174)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm2Address:v174];
    }
  }

  applicationData56 = [(ASChangedCollectionLeaf *)self applicationData];
  v176 = [MEMORY[0x277CCABB0] numberWithInt:3081];
  v177 = [applicationData56 objectForKey:v176];

  if (v177)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setIm3Address:v177];
    }
  }

  applicationData57 = [(ASChangedCollectionLeaf *)self applicationData];
  v179 = [MEMORY[0x277CCABB0] numberWithInt:3082];
  v180 = [applicationData57 objectForKey:v179];

  if (v180)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setManagerName:v180];
    }
  }

  applicationData58 = [(ASChangedCollectionLeaf *)self applicationData];
  v182 = [MEMORY[0x277CCABB0] numberWithInt:3083];
  v183 = [applicationData58 objectForKey:v182];

  if (v183)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setCompanyMainPhone:v183];
    }
  }

  applicationData59 = [(ASChangedCollectionLeaf *)self applicationData];
  v185 = [MEMORY[0x277CCABB0] numberWithInt:3084];
  v186 = [applicationData59 objectForKey:v185];

  if (v186)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setAccountName:v186];
    }
  }

  applicationData60 = [(ASChangedCollectionLeaf *)self applicationData];
  v188 = [MEMORY[0x277CCABB0] numberWithInt:3085];
  v189 = [applicationData60 objectForKey:v188];

  if (v189)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASContact *)self setNickName:v189];
    }
  }

  applicationData61 = [(ASChangedCollectionLeaf *)self applicationData];
  v191 = [MEMORY[0x277CCABB0] numberWithInt:3086];
  v192 = [applicationData61 objectForKey:v191];

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

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v10.receiver = self;
  v10.super_class = ASContact;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
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

- (void)setBodySizeNumber:(id)number
{
  intValue = [number intValue];

  [(ASContact *)self setBodySize:intValue];
}

- (void)setBodyTruncatedNumber:(id)number
{
  bOOLValue = [number BOOLValue];

  [(ASContact *)self setBodyTruncated:bOOLValue];
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

- (void)setBody:(id)body
{
  bodyCopy = body;
  if (self->_body != bodyCopy)
  {
    v6 = bodyCopy;
    objc_storeStrong(&self->_body, body);
    [(ASContact *)self setBodySize:[(NSString *)v6 lengthOfBytesUsingEncoding:4]];
    bodyCopy = v6;
  }
}

- (ASContact)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASContact.m" lineNumber:1735 description:{@"Yes, I know ASContact is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASContact.m" lineNumber:1740 description:{@"Yes, I know ASContact is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
}

- (void)loadABRecord
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASContact.m" lineNumber:1349 description:{@"%@ asked to loadABRecord, but I have no client id", a2}];
}

@end