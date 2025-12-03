@interface CardDAVVCardItemCNImplementation
+ (id)keysToFetch;
- (BOOL)_commitChangesToContact:(id)contact databaseHelper:(id)helper;
- (BOOL)_createContact:(id)contact inContainer:(id)container databaseHelper:(id)helper;
- (BOOL)deleteFromContainer:(void *)container;
- (BOOL)deleteFromContainer:(void *)container account:(id)account;
- (BOOL)loadLocalItemWithAccount:(id)account;
- (CardDAVVCardItemCNImplementation)initWithDACardDAVRecord:(id)record contactStore:(id)store outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l;
- (CardDAVVCardItemCNImplementation)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
- (id)_contactFromDataPayload;
- (id)_containerForAccount:(id)account;
- (id)_localItemAsContact;
- (id)_localItemAsGroup;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type;
- (unint64_t)saveWithLocalObject:(id)object toContainer:(id)container containerURL:(id)l shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account shouldSaveGroups:(BOOL)groups;
- (void)_localItemAsContact;
- (void)_localItemAsGroup;
- (void)_setEmailAddress:(id)address contact:(id)contact;
- (void)_setInstantMessage:(id)message contact:(id)contact;
- (void)_setPhoneNumbers:(id)numbers contact:(id)contact;
- (void)_setStreetAddress:(id)address contact:(id)contact;
- (void)setLocalItem:(void *)item;
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

- (CardDAVVCardItemCNImplementation)initWithDACardDAVRecord:(id)record contactStore:(id)store outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l
{
  v36[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  storeCopy = store;
  lCopy = l;
  v33.receiver = self;
  v33.super_class = CardDAVVCardItemCNImplementation;
  v15 = [(CardDAVVCardItemCNImplementation *)&v33 init];
  v16 = v15;
  if (v15)
  {
    if (save)
    {
      *save = 0;
    }

    objc_storeStrong(&v15->_contactStore, store);
    [(CardDAVVCardItemCNImplementation *)v16 setCardDAVRecordItem:recordCopy];
    if ([recordCopy isContact])
    {
      _localItemAsContact = [(CardDAVVCardItemCNImplementation *)v16 _localItemAsContact];
      v18 = objc_alloc_init(MEMORY[0x277D81790]);
      [v18 setIncludeNotes:1];
      [v18 setIncludePhotos:1];
      [v18 setIncludePrivateFields:1];
      v19 = MEMORY[0x277CBDAC8];
      v36[0] = _localItemAsContact;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      v32 = 0;
      v21 = [v19 dataWithContacts:v20 options:v18 error:&v32];
      v22 = v32;
      [(CardDAVVCardItemCNImplementation *)v16 setDataPayload:v21];

      v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(_localItemAsContact, "iOSLegacyIdentifier")}];
      [(CardDAVVCardItemCNImplementation *)v16 setClientID:v23];

      externalModificationTag = [_localItemAsContact externalModificationTag];
      [(CardDAVVCardItemCNImplementation *)v16 setSyncKey:externalModificationTag];

      externalIdentifier = [_localItemAsContact externalIdentifier];
      v26 = externalIdentifier;
      if (externalIdentifier)
      {
        v27 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
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
      [recordCopy isGroup];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

- (CardDAVVCardItemCNImplementation)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  lCopy = l;
  tagCopy = tag;
  payloadCopy = payload;
  rLCopy = rL;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = CardDAVVCardItemCNImplementation;
  v17 = [(CardDAVVCardItemCNImplementation *)&v23 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    [(CardDAVVCardItemCNImplementation *)v17 setContactStore:v18];

    [(CardDAVVCardItemCNImplementation *)v17 setDataPayload:payloadCopy];
    [(CardDAVVCardItemCNImplementation *)v17 setServerID:lCopy];
    [(CardDAVVCardItemCNImplementation *)v17 setSyncKey:tagCopy];
    if (rLCopy)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemCNImplementation initWithURL:eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:];
      }

      homeURL = [providerCopy homeURL];
      v20 = [rLCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

      accountID = [providerCopy accountID];
      NSLog(&cfstr_OldCarddavCode.isa, accountID, v20);
    }
  }

  return v17;
}

- (id)_contactFromDataPayload
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDAC8];
  dataPayload = [(CardDAVVCardItemCNImplementation *)self dataPayload];
  v16 = 0;
  v5 = [v3 contactsWithData:dataPayload error:&v16];
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
      dataPayload2 = [(CardDAVVCardItemCNImplementation *)self dataPayload];
      *buf = 138412290;
      v18 = dataPayload2;
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
      dataPayload2 = [(CardDAVVCardItemCNImplementation *)self dataPayload];
      *buf = 138412290;
      v18 = dataPayload2;
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

- (void)_setEmailAddress:(id)address contact:(id)contact
{
  addressCopy = address;
  emailAddresses = [contact emailAddresses];
  firstObject = [emailAddresses firstObject];

  if (firstObject)
  {
    value = [firstObject value];
    [addressCopy setEmailAddress:value];
  }
}

- (void)_setStreetAddress:(id)address contact:(id)contact
{
  addressCopy = address;
  postalAddresses = [contact postalAddresses];
  firstObject = [postalAddresses firstObject];

  if (firstObject)
  {
    value = [firstObject value];
    street = [value street];
    [addressCopy setStreet:street];

    value2 = [firstObject value];
    city = [value2 city];
    [addressCopy setCity:city];

    value3 = [firstObject value];
    state = [value3 state];
    [addressCopy setState:state];

    value4 = [firstObject value];
    postalCode = [value4 postalCode];
    [addressCopy setZip:postalCode];

    value5 = [firstObject value];
    country = [value5 country];
    [addressCopy setCountry:country];
  }
}

- (void)_setInstantMessage:(id)message contact:(id)contact
{
  messageCopy = message;
  instantMessageAddresses = [contact instantMessageAddresses];
  firstObject = [instantMessageAddresses firstObject];

  if (firstObject)
  {
    value = [firstObject value];
    service = [value service];
    [messageCopy setImService:service];

    value2 = [firstObject value];
    username = [value2 username];
    [messageCopy setImUsername:username];
  }
}

- (void)_setPhoneNumbers:(id)numbers contact:(id)contact
{
  v35 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  phoneNumbers = [contact phoneNumbers];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [phoneNumbers countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        label = [v14 label];
        value = [v14 value];
        stringValue = [value stringValue];

        if ([label isEqualToString:v11])
        {
          [numbersCopy setWorkPhone:stringValue];
        }

        else if ([label isEqualToString:v12])
        {
          [numbersCopy setMobilePhone:stringValue];
        }

        else if ([label isEqualToString:v27])
        {
          [numbersCopy setHomePhone:stringValue];
        }

        else if ([label isEqualToString:v26])
        {
          [numbersCopy setIPhone:stringValue];
        }

        else if ([label isEqualToString:v25])
        {
          [numbersCopy setMainPhone:stringValue];
        }

        else if ([label isEqualToString:v24])
        {
          [numbersCopy setFaxPhone:stringValue];
        }

        else if ([label isEqualToString:v23])
        {
          [numbersCopy setWorkFaxPhone:stringValue];
        }

        else if ([label isEqualToString:v22])
        {
          [numbersCopy setPagerNumber:stringValue];
        }

        else
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, type))
          {
            *buf = v20;
            v33 = label;
            _os_log_impl(&dword_24850D000, v18, type, "Unknown phone number label %@", buf, 0xCu);
          }
        }
      }

      v9 = [phoneNumbers countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)convertToDAContactSearchResultElement
{
  _contactFromDataPayload = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  if (_contactFromDataPayload)
  {
    v4 = objc_opt_new();
    [v4 setDisplayName:0];
    givenName = [_contactFromDataPayload givenName];
    [v4 setFirstName:givenName];

    familyName = [_contactFromDataPayload familyName];
    [v4 setLastName:familyName];

    organizationName = [_contactFromDataPayload organizationName];
    [v4 setCompany:organizationName];

    jobTitle = [_contactFromDataPayload jobTitle];
    [v4 setTitle:jobTitle];

    nickname = [_contactFromDataPayload nickname];
    [v4 setAlias:nickname];

    [(CardDAVVCardItemCNImplementation *)self _setEmailAddress:v4 contact:_contactFromDataPayload];
    [(CardDAVVCardItemCNImplementation *)self _setStreetAddress:v4 contact:_contactFromDataPayload];
    [(CardDAVVCardItemCNImplementation *)self _setPhoneNumbers:v4 contact:_contactFromDataPayload];
    [(CardDAVVCardItemCNImplementation *)self _setInstantMessage:v4 contact:_contactFromDataPayload];
    if ([_contactFromDataPayload imageDataAvailable])
    {
      imageData = [_contactFromDataPayload imageData];
      [v4 setJpegPhoto:imageData];
    }

    emailAddress = [v4 emailAddress];
    [v4 setIdentifierOnServer:emailAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type
{
  _contactFromDataPayload = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  if (_contactFromDataPayload && !*type)
  {
    v5 = [[DAContactsContact alloc] initWithContact:_contactFromDataPayload];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_createContact:(id)contact inContainer:(id)container databaseHelper:(id)helper
{
  v7 = MEMORY[0x277CBDBA0];
  helperCopy = helper;
  containerCopy = container;
  contactCopy = contact;
  v11 = objc_alloc_init(v7);
  identifier = [containerCopy identifier];

  [v11 addContact:contactCopy toContainerWithIdentifier:identifier];
  [helperCopy addSaveRequest:v11];

  return 1;
}

- (BOOL)_commitChangesToContact:(id)contact databaseHelper:(id)helper
{
  v5 = MEMORY[0x277CBDBA0];
  helperCopy = helper;
  contactCopy = contact;
  v8 = objc_alloc_init(v5);
  [v8 updateContact:contactCopy];

  [helperCopy addSaveRequest:v8];
  return 1;
}

- (id)_containerForAccount:(id)account
{
  v4 = MEMORY[0x277CBDA28];
  accountID = [account accountID];
  v6 = [v4 predicateForAccountWithExternalIdentifier:accountID];

  contactStore = [(CardDAVVCardItemCNImplementation *)self contactStore];
  v19 = 0;
  v8 = [contactStore accountsMatchingPredicate:v6 error:&v19];
  v9 = v19;
  firstObject = [v8 firstObject];

  v11 = MEMORY[0x277CBDAD8];
  identifier = [firstObject identifier];
  v13 = [v11 predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore2 = [(CardDAVVCardItemCNImplementation *)self contactStore];
  v18 = 0;
  v15 = [contactStore2 containersMatchingPredicate:v13 error:&v18];
  firstObject2 = [v15 firstObject];

  return firstObject2;
}

- (unint64_t)saveWithLocalObject:(id)object toContainer:(id)container containerURL:(id)l shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account shouldSaveGroups:(BOOL)groups
{
  propertiesCopy = properties;
  v41 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  lCopy = l;
  accountCopy = account;
  if (objectCopy)
  {
    v16 = propertiesCopy;
  }

  else
  {
    v16 = 0;
  }

  _contactFromDataPayload = [(CardDAVVCardItemCNImplementation *)self _contactFromDataPayload];
  v18 = [_contactFromDataPayload mutableCopy];

  v19 = [(CardDAVVCardItemCNImplementation *)self _containerForAccount:accountCopy];
  if (!objectCopy)
  {
    databaseHelper = [accountCopy databaseHelper];
    LODWORD(v21) = [(CardDAVVCardItemCNImplementation *)self _createContact:v18 inContainer:v19 databaseHelper:databaseHelper];

    v28 = [[DAContactsContact alloc] initWithContact:v18];
    [(CardDAVVCardItemCNImplementation *)self setCardDAVRecordItem:v28];
    asContact = v18;

    goto LABEL_11;
  }

  if (![objectCopy isContact])
  {
    v26 = 0;
    goto LABEL_18;
  }

  [(CardDAVVCardItemCNImplementation *)self setLocalItem:objectCopy];
  asContact = [objectCopy asContact];
  v38 = 0;
  v21 = [NSClassFromString(&cfstr_Cncontactdiff.isa) diffContact:asContact to:v18 error:&v38];
  v22 = v38;
  if (!v22)
  {
    if (v21)
    {
      multiDictionary = [MEMORY[0x277CFBE40] multiDictionary];
      [v21 applyToMutableContact:asContact withIdentifierMap:multiDictionary];

      if (v16)
      {
        [asContact setExternalModificationTag:0];
        LODWORD(v21) = 0;
LABEL_13:
        serverID = [(CardDAVVCardItemCNImplementation *)self serverID];

        if (serverID)
        {
          serverID2 = [(CardDAVVCardItemCNImplementation *)self serverID];
          v33 = [serverID2 da_leastInfoStringRepresentationRelativeToParentURL:lCopy];

          [asContact setExternalIdentifier:v33];
        }

        databaseHelper2 = [accountCopy databaseHelper];
        v26 = [(CardDAVVCardItemCNImplementation *)self _commitChangesToContact:asContact databaseHelper:databaseHelper2]& v21;

        goto LABEL_16;
      }

      LODWORD(v21) = 0;
    }

    else
    {
    }

LABEL_11:
    syncKey = [(CardDAVVCardItemCNImplementation *)self syncKey];

    if (syncKey)
    {
      syncKey2 = [(CardDAVVCardItemCNImplementation *)self syncKey];
      [asContact setExternalModificationTag:syncKey2];
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

- (BOOL)deleteFromContainer:(void *)container
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItemCNImplementation.m" lineNumber:428 description:{@"Please read CardDAVVCardItem.h, and try again"}];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)container account:(id)account
{
  accountCopy = account;
  cardDAVRecordItem = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];

  if (cardDAVRecordItem)
  {
    cardDAVRecordItem2 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
    isContact = [cardDAVRecordItem2 isContact];

    if (isContact)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBDBA0]);
      _localItemAsContact = [(CardDAVVCardItemCNImplementation *)self _localItemAsContact];
      [v9 deleteContact:_localItemAsContact];
      databaseHelper = [accountCopy databaseHelper];
      [databaseHelper addSaveRequest:v9];
    }
  }

  cardDAVRecordItem3 = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  v13 = cardDAVRecordItem3 != 0;

  return v13;
}

- (BOOL)loadLocalItemWithAccount:(id)account
{
  accountCopy = account;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  [v6 setSortOrder:0];
  v7 = MEMORY[0x277CBDA58];
  clientID = [(CardDAVVCardItemCNImplementation *)self clientID];
  v9 = [v7 predicateForLegacyIdentifier:{objc_msgSend(clientID, "intValue")}];
  [v6 setPredicate:v9];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  databaseHelper = [accountCopy databaseHelper];
  contactStore = [databaseHelper contactStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__CardDAVVCardItemCNImplementation_loadLocalItemWithAccount___block_invoke;
  v14[3] = &unk_278F1ACE8;
  v14[4] = &v15;
  [contactStore enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v14];

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

- (void)setLocalItem:(void *)item
{
  if (item && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation setLocalItem:];
  }

  [(CardDAVVCardItemCNImplementation *)self setCardDAVRecordItem:item];
}

- (id)_localItemAsContact
{
  cardDAVRecordItem = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation _localItemAsContact];
  }

  asContact = [cardDAVRecordItem asContact];

  return asContact;
}

- (id)_localItemAsGroup
{
  cardDAVRecordItem = [(CardDAVVCardItemCNImplementation *)self cardDAVRecordItem];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [CardDAVVCardItemCNImplementation _localItemAsGroup];
  }

  asGroup = [cardDAVRecordItem asGroup];

  return asGroup;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_localItemAsGroup
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end