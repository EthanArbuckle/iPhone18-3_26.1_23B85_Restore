@interface MSPSharedTripContact
+ (BOOL)isHandleBlocked:(id)blocked;
+ (BOOL)isVirtualReceiver:(id)receiver;
+ (id)_propertiesForFetching;
+ (id)capabilityVersionsForVirtualReceiver:(id)receiver;
+ (id)contactsFromCNContact:(id)contact;
+ (id)contactsFromCNContact:(id)contact matchingHandles:(id)handles;
+ (id)contactsFromHandles:(id)handles;
+ (id)contactsFromIDSHandles:(id)handles;
+ (id)contactsFromVirtualReceiverHandles:(id)handles;
+ (id)iMessageVirtualReceiverWithName:(id)name;
+ (id)mapsVirtualReceiverWithName:(id)name receiverCapabilityVersion:(id)version;
+ (id)rcsVirtualReceiverWithName:(id)name;
+ (id)smsVirtualReceiverWithName:(id)name;
+ (id)virtualReceiverWithHandle:(id)handle;
+ (unint64_t)capabilityTypeForVirtualReceiver:(id)receiver;
+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)fetching;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHandleBlocked;
- (BOOL)isPhoneNumber;
- (MSPSharedTripContact)initWithCoder:(id)coder;
- (MSPSharedTripContact)initWithContact:(id)contact handle:(id)handle;
- (MSPSharedTripContact)initWithContact:(id)contact labeledValue:(id)value;
- (MSPSharedTripContact)initWithContactHandle:(id)handle;
- (NSString)displayName;
- (NSString)handleForIDS;
- (id)_stringValue;
- (id)description;
- (id)handleForDeviceVersion:(unint64_t)version;
- (unint64_t)hash;
- (void)_populateFromContactUsingHandle:(id)handle;
- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)version;
- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)version;
@end

@implementation MSPSharedTripContact

- (MSPSharedTripContact)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"contactHandle"];
  if (v4)
  {
    self = [(MSPSharedTripContact *)self initWithContactHandle:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    stringValue = [v5 stringValue];
    stringValue2 = [(MSPSharedTripContact *)self stringValue];
    if (stringValue == stringValue2)
    {
      v10 = 1;
    }

    else
    {
      stringValue3 = [v5 stringValue];
      stringValue4 = [(MSPSharedTripContact *)self stringValue];
      v10 = [stringValue3 isEqualToString:stringValue4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  stringValue = [(MSPSharedTripContact *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_displayName)
  {
    v11.receiver = self;
    v11.super_class = MSPSharedTripContact;
    v4 = [(MSPSharedTripContact *)&v11 description];
    displayName = self->_displayName;
    stringValue = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ %@ (%@)", v4, displayName, stringValue];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSPSharedTripContact;
    v4 = [(MSPSharedTripContact *)&v10 description];
    stringValue = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ (%@)", v4, stringValue, v9];
  }
  v7 = ;

  return v7;
}

+ (id)_propertiesForFetching
{
  v23[17] = *MEMORY[0x277D85DE8];
  v2 = keyDescriptorsForFetching;
  if (!keyDescriptorsForFetching)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v23[0] = v3;
    descriptorForRequiredKeys = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
    v5 = *MEMORY[0x277CBD068];
    v23[1] = descriptorForRequiredKeys;
    v23[2] = v5;
    v6 = *MEMORY[0x277CBD058];
    v23[3] = *MEMORY[0x277CBD000];
    v23[4] = v6;
    v7 = *MEMORY[0x277CBD070];
    v23[5] = *MEMORY[0x277CBCFF8];
    v23[6] = v7;
    v8 = *MEMORY[0x277CBD0B0];
    v23[7] = *MEMORY[0x277CBD078];
    v23[8] = v8;
    v9 = *MEMORY[0x277CBD0A8];
    v23[9] = *MEMORY[0x277CBD0B8];
    v23[10] = v9;
    v10 = *MEMORY[0x277CBD160];
    v23[11] = *MEMORY[0x277CBD090];
    v23[12] = v10;
    v11 = *MEMORY[0x277CBCFC0];
    v23[13] = *MEMORY[0x277CBD098];
    v23[14] = v11;
    v12 = *MEMORY[0x277CBD168];
    v23[15] = *MEMORY[0x277CBD0C8];
    v23[16] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:17];
    v14 = keyDescriptorsForFetching;
    keyDescriptorsForFetching = v13;

    if ([additionalKeyDescriptors count])
    {
      v15 = [keyDescriptorsForFetching mutableCopy];
      [v15 addObjectsFromArray:additionalKeyDescriptors];
      v16 = [v15 copy];
      v17 = keyDescriptorsForFetching;
      keyDescriptorsForFetching = v16;
    }

    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134217984;
      v22 = [keyDescriptorsForFetching count];
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "[Contact] Recompiled %lu keys for contact fetching", &v21, 0xCu);
    }

    v2 = keyDescriptorsForFetching;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_populateFromContactUsingHandle:(id)handle
{
  v39 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = handleCopy;
  if (self->_contact)
  {
    v6 = handleCopy;
    if (v6)
    {
      v28 = v5;
      v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v6];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      phoneNumbers = [(CNContact *)self->_contact phoneNumbers];
      v9 = [phoneNumbers countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          value = [v13 value];
          v15 = [value isLikePhoneNumber:v7];

          if (v15)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [phoneNumbers countByEnumeratingWithState:&v33 objects:v38 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v16 = v13;

        if (v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_11:
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      emailAddresses = [(CNContact *)self->_contact emailAddresses];
      v16 = [emailAddresses countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v16)
      {
        v18 = *v30;
        while (2)
        {
          for (i = 0; i != v16; i = (i + 1))
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            value2 = [v20 value];
            v22 = [value2 isEqualToString:v6];

            if (v22)
            {
              v16 = v20;
              goto LABEL_24;
            }
          }

          v16 = [emailAddresses countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

LABEL_25:
      v5 = v28;
    }

    else
    {
      v16 = 0;
    }

    labeledValue = self->_labeledValue;
    self->_labeledValue = v16;
    v24 = v16;

    v25 = [MEMORY[0x277CBDA78] stringFromContact:self->_contact style:1000];
    displayName = self->_displayName;
    self->_displayName = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (MSPSharedTripContact)initWithContactHandle:(id)handle
{
  v24[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    if ([MEMORY[0x277CBDAB8] _maps_isAuthorized])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v6 = objc_alloc(MEMORY[0x277CBDA70]);
      _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
      v8 = [v6 initWithKeysToFetch:_propertiesForFetching];

      v9 = MEMORY[0x277CBDA58];
      v24[0] = handleCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v11 = [v9 predicateForContactsMatchingHandleStrings:v10];
      [v8 setPredicate:v11];

      [v8 setSortOrder:1];
      *buf = 0;
      v19 = buf;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy_;
      v22 = __Block_byref_object_dispose_;
      v23 = 0;
      v16[4] = buf;
      v17 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__MSPSharedTripContact_initWithContactHandle___block_invoke;
      v16[3] = &unk_279866268;
      [v5 enumerateContactsWithFetchRequest:v8 error:&v17 usingBlock:v16];
      v12 = v17;
      self = [(MSPSharedTripContact *)self initWithContact:*(v19 + 5) handle:handleCopy];
      _Block_object_dispose(buf, 8);

      selfCopy = self;
    }

    else
    {
      v5 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handle to contact, but Maps is not authorised for Contacts", buf, 2u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (MSPSharedTripContact)initWithContact:(id)contact handle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = MSPSharedTripContact;
  v8 = [(MSPSharedTripContact *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
  if (([contactCopy areKeysAvailable:_propertiesForFetching] & 1) == 0)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    identifier = [contactCopy identifier];
    v12 = [v10 unifiedContactWithIdentifier:identifier keysToFetch:_propertiesForFetching error:0];

    contactCopy = v12;
    if (!v12)
    {

      labeledValue = 0;
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v8->_contact, contactCopy);
  objc_storeStrong(&v8->_originalHandle, handle);
  [(MSPSharedTripContact *)v8 _populateFromContactUsingHandle:handleCopy];
  labeledValue = v8->_labeledValue;

  if (labeledValue)
  {
LABEL_5:
    labeledValue = v8;
  }

LABEL_6:

  return labeledValue;
}

- (MSPSharedTripContact)initWithContact:(id)contact labeledValue:(id)value
{
  contactCopy = contact;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MSPSharedTripContact;
  v9 = [(MSPSharedTripContact *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    v11 = [MEMORY[0x277CBDA78] stringFromContact:v10->_contact style:1000];
    displayName = v10->_displayName;
    v10->_displayName = v11;

    objc_storeStrong(&v10->_labeledValue, value);
    _stringValue = [(MSPSharedTripContact *)v10 _stringValue];
    originalHandle = v10->_originalHandle;
    v10->_originalHandle = _stringValue;
  }

  return v10;
}

- (id)_stringValue
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    labeledValue2 = [(MSPSharedTripContact *)self labeledValue];
    value2 = [labeledValue2 value];
LABEL_5:
    v9 = value2;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    labeledValue3 = [(MSPSharedTripContact *)self labeledValue];
    labeledValue2 = [labeledValue3 value];

    value2 = [labeledValue2 unformattedInternationalStringValue];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (NSString)handleForIDS
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
    v7 = MEMORY[0x259C7A620]();
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
    v7 = IDSCopyIDForPhoneNumber();
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isPhoneNumber
{
  labeledValue = [(MSPSharedTripContact *)self labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [(MSPSharedTripContact *)self stringValue];
  }

  return stringValue;
}

+ (id)contactsFromCNContact:(id)contact matchingHandles:(id)handles
{
  v67 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  handlesCopy = handles;
  if ([handlesCopy count])
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [handlesCopy count];
      identifier = [contactCopy identifier];
      *buf = 134218499;
      v62 = v7;
      v63 = 2113;
      v64 = identifier;
      v65 = 2113;
      v66 = handlesCopy;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "Will attempt to match %lu handles for contact %{private}@ (%{private}@)", buf, 0x20u);
    }

    array = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [contactCopy phoneNumbers];
    v35 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v35)
    {
      v34 = *v54;
      do
      {
        v9 = 0;
        do
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v9;
          v10 = *(*(&v53 + 1) + 8 * v9);
          value = [v10 value];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v12 = handlesCopy;
          v13 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v50;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v50 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:*(*(&v49 + 1) + 8 * i) countryCode:0];
                if ([value isLikePhoneNumber:v17])
                {
                  v18 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:v10];
                  if (v18)
                  {
                    [array addObject:v18];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v14);
          }

          v9 = v37 + 1;
        }

        while ((v37 + 1) != v35);
        v35 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v35);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v19 = [emailAddresses countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v38 = *v46;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v22 = *(*(&v45 + 1) + 8 * j);
          value2 = [v22 value];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = handlesCopy;
          v25 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v42;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v42 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                if ([value2 isEqualToString:*(*(&v41 + 1) + 8 * k)])
                {
                  v29 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:v22];
                  if (v29)
                  {
                    [array addObject:v29];
                  }
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
            }

            while (v26);
          }
        }

        v20 = [emailAddresses countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v20);
    }

    v30 = [array copy];
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)contactsFromCNContact:(id)contact
{
  v34 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    *buf = 138477827;
    v33 = identifier;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "Will prepare contact values for contact %{private}@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v8 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v12 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:*(*(&v26 + 1) + 8 * i)];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v9 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v14 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v18 = [[MSPSharedTripContact alloc] initWithContact:contactCopy labeledValue:*(*(&v22 + 1) + 8 * j)];
        if (v18)
        {
          [array addObject:v18];
        }
      }

      v15 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [array copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)contactsFromHandles:(id)handles
{
  v25 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  if ([handlesCopy count])
  {
    _maps_isAuthorized = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    v5 = MSPGetSharedTripLog();
    v6 = v5;
    if (_maps_isAuthorized)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134218243;
        v22 = [handlesCopy count];
        v23 = 2113;
        v24 = handlesCopy;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "Will attempt to fetch contacts for %lu handles (%{private}@)", buf, 0x16u);
      }

      v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v7 = objc_alloc(MEMORY[0x277CBDA70]);
      _propertiesForFetching = [objc_opt_class() _propertiesForFetching];
      v9 = [v7 initWithKeysToFetch:_propertiesForFetching];

      v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:handlesCopy];
      [v9 setPredicate:v10];

      [v9 setSortOrder:1];
      v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v20 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__MSPSharedTripContact_contactsFromHandles___block_invoke;
      v17[3] = &unk_279866290;
      v18 = handlesCopy;
      v19 = v11;
      v12 = v11;
      [v6 enumerateContactsWithFetchRequest:v9 error:&v20 usingBlock:v17];
      v13 = v20;
      array = [v12 array];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handles to contacts, but Maps is not authorised for Contacts", buf, 2u);
      }

      array = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

void __44__MSPSharedTripContact_contactsFromHandles___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MSPSharedTripContact contactsFromCNContact:a2 matchingHandles:*(a1 + 32)];
  [*(a1 + 40) addObjectsFromArray:v3];
}

+ (id)contactsFromIDSHandles:(id)handles
{
  v4 = MapsMap(handles, &__block_literal_global_4);
  v5 = [self contactsFromHandles:v4];

  return v5;
}

id __47__MSPSharedTripContact_contactsFromIDSHandles___block_invoke()
{
  v0 = IDSCopyRawAddressForDestination();

  return v0;
}

+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)fetching
{
  v11 = *MEMORY[0x277D85DE8];
  fetchingCopy = fetching;
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = fetchingCopy;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "[Contact] Setting additional keys for contact fetching: %{private}@", &v9, 0xCu);
  }

  v5 = additionalKeyDescriptors;
  additionalKeyDescriptors = fetchingCopy;
  v6 = fetchingCopy;

  v7 = keyDescriptorsForFetching;
  keyDescriptorsForFetching = 0;

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isHandleBlocked:(id)blocked
{
  CMFItemFromString = CreateCMFItemFromString();
  v4 = CMFBlockListIsItemBlocked() != 0;
  CFRelease(CMFItemFromString);
  return v4;
}

- (BOOL)isHandleBlocked
{
  v27 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  lastCheckedBlocked = self->_lastCheckedBlocked;
  if (lastCheckedBlocked > 0.0 && v4 - lastCheckedBlocked < 30.0)
  {
    isBlocked = self->_isBlocked;
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      stringValue = [(MSPSharedTripContact *)self stringValue];
      *buf = 138477827;
      v26 = stringValue;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "[Contact] Checking if %{private}@ is blocked", buf, 0xCu);
    }

    self->_isBlocked = 0;
    v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v10 = v9;
    if (self->_originalHandle)
    {
      [v9 addObject:?];
    }

    stringValue2 = [(MSPSharedTripContact *)self stringValue];
    if (stringValue2)
    {
      [v10 addObject:stringValue2];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([objc_opt_class() isHandleBlocked:{*(*(&v20 + 1) + 8 * i), v20}])
          {
            self->_isBlocked = 1;
            goto LABEL_22;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    self->_lastCheckedBlocked = v4;
    isBlocked = self->_isBlocked;
  }

  v18 = *MEMORY[0x277D85DE8];
  return isBlocked;
}

+ (BOOL)isVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (unint64_t)capabilityTypeForVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  if ([self isVirtualReceiver:receiverCopy])
  {
    handleForIDS = [receiverCopy handleForIDS];
    CapabilityType = MSPSharedTripVirtualReceiverHandleGetCapabilityType(handleForIDS);
  }

  else
  {
    CapabilityType = 0;
  }

  return CapabilityType;
}

+ (id)capabilityVersionsForVirtualReceiver:(id)receiver
{
  receiverCopy = receiver;
  if ([self isVirtualReceiver:receiverCopy])
  {
    handleForIDS = [receiverCopy handleForIDS];
    v6 = MSPSharedTripVirtualReceiverHandleGetReceiverCapabilityVersions(handleForIDS);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

+ (id)virtualReceiverWithHandle:(id)handle
{
  handleCopy = handle;
  if (MSPSharedTripVirtualReceiverIsValid(handleCopy))
  {
    v4 = [[MSPSharedTripVirtualContact alloc] initWithVirtualReceiverHandle:handleCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contactsFromVirtualReceiverHandles:(id)handles
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__MSPSharedTripContact_VirtualReceivers__contactsFromVirtualReceiverHandles___block_invoke;
  v5[3] = &__block_descriptor_40_e43___MSPSharedTripContact_24__0__NSString_8Q16l;
  v5[4] = self;
  v3 = MapsMap(handles, v5);

  return v3;
}

+ (id)mapsVirtualReceiverWithName:(id)name receiverCapabilityVersion:(id)version
{
  v5 = MSPSharedTripVirtualReceiverHandleMake(name, 4, 0, version);
  v6 = [self virtualReceiverWithHandle:v5];

  return v6;
}

+ (id)iMessageVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 3, 0, 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)smsVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 2, @"SMS", 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)rcsVirtualReceiverWithName:(id)name
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(name, 2, @"RCS", 0);
  v5 = [self virtualReceiverWithHandle:v4];

  return v5;
}

- (id)handleForDeviceVersion:(unint64_t)version
{
  if ([objc_opt_class() isVirtualReceiver:self])
  {
    v5 = [(MSPSharedTripContact *)self _deviceHandleForVersion:version];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)version
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:version];
  if (v3)
  {
    v5 = v3;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:v5];

    v3 = v5;
  }
}

- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)version
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:version];
  if (v3)
  {
    v5 = v3;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:v5];

    v3 = v5;
  }
}

@end