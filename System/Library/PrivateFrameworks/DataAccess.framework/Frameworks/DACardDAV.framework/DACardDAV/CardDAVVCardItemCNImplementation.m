@interface CardDAVVCardItemCNImplementation
+ (id)keysToFetch;
- (BOOL)_commitChangesToContact:(id)a3 databaseHelper:(id)a4;
- (BOOL)_createContact:(id)a3 inContainer:(id)a4 databaseHelper:(id)a5;
- (BOOL)deleteFromContainer:(void *)a3;
- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4;
- (BOOL)loadLocalItemWithAccount:(id)a3;
- (CardDAVVCardItemCNImplementation)initWithDACardDAVRecord:(id)a3 contactStore:(id)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8;
- (CardDAVVCardItemCNImplementation)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7;
- (id)_contactFromDataPayload;
- (id)_containerForAccount:(id)a3;
- (id)_localItemAsContact;
- (id)_localItemAsGroup;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3;
- (unint64_t)saveWithLocalObject:(id)a3 toContainer:(id)a4 containerURL:(id)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8 shouldSaveGroups:(BOOL)a9;
- (void)_localItemAsContact;
- (void)_localItemAsGroup;
- (void)_setEmailAddress:(id)a3 contact:(id)a4;
- (void)_setInstantMessage:(id)a3 contact:(id)a4;
- (void)_setPhoneNumbers:(id)a3 contact:(id)a4;
- (void)_setStreetAddress:(id)a3 contact:(id)a4;
- (void)setLocalItem:(void *)a3;
@end

@implementation CardDAVVCardItemCNImplementation

+ (id)keysToFetch
{
  if (keysToFetch_onceToken != -1)
  {
    +[CardDAVVCardItemCNImplementation keysToFetch];
  }

  v3 = keysToFetch_sharedKeysToFetch;

  return v3;
}

void __47__CardDAVVCardItemCNImplementation_keysToFetch__block_invoke()
{
  v8[8] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
  v1 = *MEMORY[0x277CBCFD0];
  v8[0] = v0;
  v8[1] = v1;
  v2 = *MEMORY[0x277CBCFE0];
  v8[2] = *MEMORY[0x277CBCFE8];
  v8[3] = v2;
  v3 = *MEMORY[0x277CBCFD8];
  v8[4] = *MEMORY[0x277CBCFF0];
  v8[5] = v3;
  v4 = *MEMORY[0x277CBD010];
  v8[6] = *MEMORY[0x277CBD018];
  v8[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:8];
  v6 = keysToFetch_sharedKeysToFetch;
  keysToFetch_sharedKeysToFetch = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (CardDAVVCardItemCNImplementation)initWithDACardDAVRecord:(id)a3 contactStore:(id)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8
{
  v36[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a8;
  v33.receiver = self;
  v33.super_class = CardDAVVCardItemCNImplementation;
  v15 = [(CardDAVVCardItemCNImplementation *)&v33 init];
  v16 = v15;
  if (v15)
  {
    if (a5)
    {
      *a5 = 0;
    }

    objc_storeStrong(&v15->_contactStore, a4);
    [(CardDAVVCardItemCNImplementation *)v16 setCardDAVRecordItem:v12];
    if ([v12 isContact])
    {
      v17 = [(CardDAVVCardItemCNImplementation *)v16 _localItemAsContact];
      v18 = objc_alloc_init(MEMORY[0x277D81790]);
      [v18 setIncludeNotes:1];
      [v18 setIncludePhotos:1];
      [v18 setIncludePrivateFields:1];
      v19 = MEMORY[0x277CBDAC8];
      v36[0] = v17;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      v32 = 0;
      v21 = [v19 dataWithContacts:v20 options:v18 error:&v32];
      v22 = v32;
      [(CardDAVVCardItemCNImplementation *)v16 setDataPayload:v21];

      v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "iOSLegacyIdentifier")}];
      [(CardDAVVCardItemCNImplementation *)v16 setClientID:v23];

      v24 = [v17 externalModificationTag];
      [(CardDAVVCardItemCNImplementation *)v16 setSyncKey:v24];

      v25 = [v17 externalIdentifier];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v14];
        [(CardDAVVCardItemCNImplementation *)v16 setServerID:v27];
      }

      if (v22)
      {
        v28 = DALoggingwithCategory();
        v29 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 138412290;
          v35 = v22;
          _os_log_impl(&dword_24850D000, v28, v29, "Serialization error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [v12 isGroup];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

- (CardDAVVCardItemCNImplementation)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = CardDAVVCardItemCNImplementation;
  v17 = [(CardDAVVCardItemCNImplementation *)&v23 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    [(CardDAVVCardItemCNImplementation *)v17 setContactStore:v18];

    [(CardDAVVCardItemCNImplementation *)v17 setDataPayload:v14];
    [(CardDAVVCardItemCNImplementation *)v17 setServerID:v12];
    [(CardDAVVCardItemCNImplementation *)v17 setSyncKey:v13];
    if (v15)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemCNImplementation initWithURL:eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:];
      }

      v19 = [v16 homeURL];
      v20 = [v15 da_leastInfoStringRepresentationRelativeToParentURL:v19];

      v21 = [v16 accountID];
      NSLog(&cfstr_OldCarddavCode.isa, v21, v20);
    }
  }

  return v17;
}

- (id)_contactFromDataPayload
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDAC8];
  v4 = [(CardDAVVCardItemCNImplementation *)self dataPayload];
  v16 = 0;
  v5 = [v3 contactsWithData:v4 error:&v16];
  v6 = v16;

  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_24850D000, v7, v8, "Unexpected error %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (![v5 count])
  {
    v7 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v9))
    {
      v10 = [(CardDAVVCardItemCNImplementation *)self dataPayload];
      *buf = 138412290;
      v18 = v10;
      v11 = "Unable to parse the contact with this data %@";
      goto LABEL_10;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if ([v5 count] >= 2)
  {
    v7 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v9))
    {
      v10 = [(CardDAVVCardItemCNImplementation *)self dataPayload];
      *buf = 138412290;
      v18 = v10;
      v11 = "Unexpected multiple contacts with this data %@";
LABEL_10:
      _os_log_impl(&dword_24850D000, v7, v9, v11, buf, 0xCu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v7 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v15 = [v5 objectAtIndexedSubscript:0];
  v12 = [v15 copyWithPropertyKeys:v7];

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_setEmailAddress:(id)a3 contact:(id)a4
{
  v8 = a3;
  v5 = [a4 emailAddresses];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 value];
    [v8 setEmailAddress:v7];
  }
}

- (void)_setStreetAddress:(id)a3 contact:(id)a4
{
  v17 = a3;
  v5 = [a4 postalAddresses];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 value];
    v8 = [v7 street];
    [v17 setStreet:v8];

    v9 = [v6 value];
    v10 = [v9 city];
    [v17 setCity:v10];

    v11 = [v6 value];
    v12 = [v11 state];
    [v17 setState:v12];

    v13 = [v6 value];
    v14 = [v13 postalCode];
    [v17 setZip:v14];

    v15 = [v6 value];
    v16 = [v15 country];
    [v17 setCountry:v16];
  }
}

- (void)_setInstantMessage:(id)a3 contact:(id)a4
{
  v11 = a3;
  v5 = [a4 instantMessageAddresses];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 value];
    v8 = [v7 service];
    [v11 setImService:v8];

    v9 = [v6 value];
    v10 = [v9 username];
    [v11 setImUsername:v10];
  }
}

- (void)_setPhoneNumbers:(id)a3 contact:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 phoneNumbers];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    v11 = *MEMORY[0x277CBD940];
    v12 = *MEMORY[0x277CBD908];
    v27 = *MEMORY[0x277CBD8E0];
    v26 = *MEMORY[0x277CBD928];
    v25 = *MEMORY[0x277CBD900];
    v24 = *MEMORY[0x277CBD8F8];
    v23 = *MEMORY[0x277CBD920];
    v22 = *MEMORY[0x277CBD918];
    type = *(MEMORY[0x277D03988] + 3);
    *&v8 = 138412290;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 label];
        v16 = [v14 value];
        v17 = [v16 stringValue];

        if ([v15 isEqualToString:v11])
        {
          [v5 setWorkPhone:v17];
        }

        else if ([v15 isEqualToString:v12])
        {
          [v5 setMobilePhone:v17];
        }

        else if ([v15 isEqualToString:v27])
        {
          [v5 setHomePhone:v17];
        }

        else if ([v15 isEqualToString:v26])
        {
          [v5 setIPhone:v17];
        }

        else if ([v15 isEqualToString:v25])
        {
          [v5 setMainPhone:v17];
        }

        else if ([v15 isEqualToString:v24])
        {
          [v5 setFaxPhone:v17];
        }

        else if ([v15 isEqualToString:v23])
        {
          [v5 setWorkFaxPhone:v17];
        }

        else if ([v15 isEqualToString:v22])
        {
          [v5 setPagerNumber:v17];
        }

        else
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, type))
          {
            *buf = v20;
            v33 = v15;
            _os_log_impl(&dword_24850D000, v18, type, "Unknown phone number label %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)convertToDAContactSearchResultElement
{
  v3 = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setDisplayName:0];
    v5 = [v3 givenName];
    [v4 setFirstName:v5];

    v6 = [v3 familyName];
    [v4 setLastName:v6];

    v7 = [v3 organizationName];
    [v4 setCompany:v7];

    v8 = [v3 jobTitle];
    [v4 setTitle:v8];

    v9 = [v3 nickname];
    [v4 setAlias:v9];

    [(CardDAVVCardItemCNImplementation *)self _setEmailAddress:v4 contact:v3];
    [(CardDAVVCardItemCNImplementation *)self _setStreetAddress:v4 contact:v3];
    [(CardDAVVCardItemCNImplementation *)self _setPhoneNumbers:v4 contact:v3];
    [(CardDAVVCardItemCNImplementation *)self _setInstantMessage:v4 contact:v3];
    if ([v3 imageDataAvailable])
    {
      v10 = [v3 imageData];
      [v4 setJpegPhoto:v10];
    }

    v11 = [v4 emailAddress];
    [v4 setIdentifierOnServer:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3
{
  v4 = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  if (v4 && !*a3)
  {
    v5 = [[DAContactsContact alloc] initWithContact:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_createContact:(id)a3 inContainer:(id)a4 databaseHelper:(id)a5
{
  v7 = MEMORY[0x277CBDBA0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [v9 identifier];

  [v11 addContact:v10 toContainerWithIdentifier:v12];
  [v8 addSaveRequest:v11];

  return 1;
}

- (BOOL)_commitChangesToContact:(id)a3 databaseHelper:(id)a4
{
  v5 = MEMORY[0x277CBDBA0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 updateContact:v7];

  [v6 addSaveRequest:v8];
  return 1;
}

- (id)_containerForAccount:(id)a3
{
  v4 = MEMORY[0x277CBDA28];
  v5 = [a3 accountID];
  v6 = [v4 predicateForAccountWithExternalIdentifier:v5];

  v7 = [(CardDAVVCardItemCNImplementation *)self contactStore];
  v19 = 0;
  v8 = [v7 accountsMatchingPredicate:v6 error:&v19];
  v9 = v19;
  v10 = [v8 firstObject];

  v11 = MEMORY[0x277CBDAD8];
  v12 = [v10 identifier];
  v13 = [v11 predicateForContainersInAccountWithIdentifier:v12 includingDisabledContainers:1];

  v14 = [(CardDAVVCardItemCNImplementation *)self contactStore];
  v18 = 0;
  v15 = [v14 containersMatchingPredicate:v13 error:&v18];
  v16 = [v15 firstObject];

  return v16;
}

- (unint64_t)saveWithLocalObject:(id)a3 toContainer:(id)a4 containerURL:(id)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8 shouldSaveGroups:(BOOL)a9
{
  v10 = a6;
  v41 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a8;
  if (v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  v18 = [v17 mutableCopy];

  v19 = [(CardDAVVCardItemCNImplementation *)self _containerForAccount:v15];
  if (!v13)
  {
    v27 = [v15 databaseHelper];
    LODWORD(v21) = [(CardDAVVCardItemCNImplementation *)self _createContact:v18 inContainer:v19 databaseHelper:v27];

    v28 = [[DAContactsContact alloc] initWithContact:v18];
    [(CardDAVVCardItemCNImplementation *)self setCardDAVRecordItem:v28];
    v20 = v18;

    goto LABEL_11;
  }

  if (![v13 isContact])
  {
    v26 = 0;
    goto LABEL_18;
  }

  [(CardDAVVCardItemCNImplementation *)self setLocalItem:v13];
  v20 = [v13 asContact];
  v38 = 0;
  v21 = [NSClassFromString(&cfstr_Cncontactdiff.isa) diffContact:v20 to:v18 error:&v38];
  v22 = v38;
  if (!v22)
  {
    if (v21)
    {
      v37 = [MEMORY[0x277CFBE40] multiDictionary];
      [v21 applyToMutableContact:v20 withIdentifierMap:v37];

      if (v16)
      {
        [v20 setExternalModificationTag:0];
        LODWORD(v21) = 0;
LABEL_13:
        v31 = [(CardDAVVCardItemCNImplementation *)self serverID];

        if (v31)
        {
          v32 = [(CardDAVVCardItemCNImplementation *)self serverID];
          v33 = [v32 da_leastInfoStringRepresentationRelativeToParentURL:v14];

          [v20 setExternalIdentifier:v33];
        }

        v34 = [v15 databaseHelper];
        v26 = [(CardDAVVCardItemCNImplementation *)self _commitChangesToContact:v20 databaseHelper:v34]& v21;

        goto LABEL_16;
      }

      LODWORD(v21) = 0;
    }

    else
    {
    }

LABEL_11:
    v29 = [(CardDAVVCardItemCNImplementation *)self syncKey];

    if (v29)
    {
      v30 = [(CardDAVVCardItemCNImplementation *)self syncKey];
      [v20 setExternalModificationTag:v30];
    }

    goto LABEL_13;
  }

  v23 = v22;
  v24 = DALoggingwithCategory();
  v25 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v24, v25))
  {
    *buf = 138412290;
    v40 = v23;
    _os_log_impl(&dword_24850D000, v24, v25, "Unexpected result comparing local and server contacts: error=%@", buf, 0xCu);
  }

  v26 = 0;
LABEL_16:

LABEL_18:
  v35 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)deleteFromContainer:(void *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItemCNImplementation.m" lineNumber:428 description:{@"Please read CardDAVVCardItem.h, and try again"}];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4
{
  v5 = a4;
  v6 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];

  if (v6)
  {
    v7 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
    v8 = [v7 isContact];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBDBA0]);
      v10 = [(CardDAVVCardItemCNImplementation *)self _localItemAsContact];
      [v9 deleteContact:v10];
      v11 = [v5 databaseHelper];
      [v11 addSaveRequest:v9];
    }
  }

  v12 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  v13 = v12 != 0;

  return v13;
}

- (BOOL)loadLocalItemWithAccount:(id)a3
{
  v4 = a3;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  [v6 setSortOrder:0];
  v7 = MEMORY[0x277CBDA58];
  v8 = [(CardDAVVCardItemCNImplementation *)self clientID];
  v9 = [v7 predicateForLegacyIdentifier:{objc_msgSend(v8, "intValue")}];
  [v6 setPredicate:v9];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v10 = [v4 databaseHelper];
  v11 = [v10 contactStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__CardDAVVCardItemCNImplementation_loadLocalItemWithAccount___block_invoke;
  v14[3] = &unk_278F1ACE8;
  v14[4] = &v15;
  [v11 enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v14];

  v12 = v16[5];
  if (v12)
  {
    [(CardDAVVCardItemCNImplementation *)self setLocalItem:v16[5]];
  }

  _Block_object_dispose(&v15, 8);

  return v12 != 0;
}

void __61__CardDAVVCardItemCNImplementation_loadLocalItemWithAccount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [[DAContactsContact alloc] initWithContact:v5];

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a3 = 1;
}

- (void)setLocalItem:(void *)a3
{
  if (a3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation setLocalItem:];
  }

  [(CardDAVVCardItemCNImplementation *)self setCardDAVRecordItem:a3];
}

- (id)_localItemAsContact
{
  v2 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation _localItemAsContact];
  }

  v3 = [v2 asContact];

  return v3;
}

- (id)_localItemAsGroup
{
  v2 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation _localItemAsGroup];
  }

  v3 = [v2 asGroup];

  return v3;
}

- (void)initWithURL:eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setLocalItem:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_localItemAsContact
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_localItemAsGroup
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end