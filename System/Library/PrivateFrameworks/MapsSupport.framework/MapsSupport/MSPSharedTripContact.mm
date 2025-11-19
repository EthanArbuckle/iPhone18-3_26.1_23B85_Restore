@interface MSPSharedTripContact
+ (BOOL)isHandleBlocked:(id)a3;
+ (BOOL)isVirtualReceiver:(id)a3;
+ (id)_propertiesForFetching;
+ (id)capabilityVersionsForVirtualReceiver:(id)a3;
+ (id)contactsFromCNContact:(id)a3;
+ (id)contactsFromCNContact:(id)a3 matchingHandles:(id)a4;
+ (id)contactsFromHandles:(id)a3;
+ (id)contactsFromIDSHandles:(id)a3;
+ (id)contactsFromVirtualReceiverHandles:(id)a3;
+ (id)iMessageVirtualReceiverWithName:(id)a3;
+ (id)mapsVirtualReceiverWithName:(id)a3 receiverCapabilityVersion:(id)a4;
+ (id)rcsVirtualReceiverWithName:(id)a3;
+ (id)smsVirtualReceiverWithName:(id)a3;
+ (id)virtualReceiverWithHandle:(id)a3;
+ (unint64_t)capabilityTypeForVirtualReceiver:(id)a3;
+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHandleBlocked;
- (BOOL)isPhoneNumber;
- (MSPSharedTripContact)initWithCoder:(id)a3;
- (MSPSharedTripContact)initWithContact:(id)a3 handle:(id)a4;
- (MSPSharedTripContact)initWithContact:(id)a3 labeledValue:(id)a4;
- (MSPSharedTripContact)initWithContactHandle:(id)a3;
- (NSString)displayName;
- (NSString)handleForIDS;
- (id)_stringValue;
- (id)description;
- (id)handleForDeviceVersion:(unint64_t)a3;
- (unint64_t)hash;
- (void)_populateFromContactUsingHandle:(id)a3;
- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)a3;
- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)a3;
@end

@implementation MSPSharedTripContact

- (MSPSharedTripContact)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"contactHandle"];
  if (v4)
  {
    self = [(MSPSharedTripContact *)self initWithContactHandle:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 stringValue];
    v7 = [(MSPSharedTripContact *)self stringValue];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 stringValue];
      v9 = [(MSPSharedTripContact *)self stringValue];
      v10 = [v8 isEqualToString:v9];
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
  v2 = [(MSPSharedTripContact *)self stringValue];
  v3 = [v2 hash];

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
    v6 = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ %@ (%@)", v4, displayName, v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSPSharedTripContact;
    v4 = [(MSPSharedTripContact *)&v10 description];
    v6 = [(MSPSharedTripContact *)self stringValue];
    [v3 stringWithFormat:@"%@ (%@)", v4, v6, v9];
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
    v4 = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
    v5 = *MEMORY[0x277CBD068];
    v23[1] = v4;
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

- (void)_populateFromContactUsingHandle:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_contact)
  {
    v6 = v4;
    if (v6)
    {
      v28 = v5;
      v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v6];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = [(CNContact *)self->_contact phoneNumbers];
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          v14 = [v13 value];
          v15 = [v14 isLikePhoneNumber:v7];

          if (v15)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
      v17 = [(CNContact *)self->_contact emailAddresses];
      v16 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v16)
      {
        v18 = *v30;
        while (2)
        {
          for (i = 0; i != v16; i = (i + 1))
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v17);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v20 value];
            v22 = [v21 isEqualToString:v6];

            if (v22)
            {
              v16 = v20;
              goto LABEL_24;
            }
          }

          v16 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
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

- (MSPSharedTripContact)initWithContactHandle:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([MEMORY[0x277CBDAB8] _maps_isAuthorized])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v6 = objc_alloc(MEMORY[0x277CBDA70]);
      v7 = [objc_opt_class() _propertiesForFetching];
      v8 = [v6 initWithKeysToFetch:v7];

      v9 = MEMORY[0x277CBDA58];
      v24[0] = v4;
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
      self = [(MSPSharedTripContact *)self initWithContact:*(v19 + 5) handle:v4];
      _Block_object_dispose(buf, 8);

      v13 = self;
    }

    else
    {
      v5 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handle to contact, but Maps is not authorised for Contacts", buf, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MSPSharedTripContact)initWithContact:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MSPSharedTripContact;
  v8 = [(MSPSharedTripContact *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [objc_opt_class() _propertiesForFetching];
  if (([v6 areKeysAvailable:v9] & 1) == 0)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v11 = [v6 identifier];
    v12 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v9 error:0];

    v6 = v12;
    if (!v12)
    {

      labeledValue = 0;
      goto LABEL_6;
    }
  }

  objc_storeStrong(&v8->_contact, v6);
  objc_storeStrong(&v8->_originalHandle, a4);
  [(MSPSharedTripContact *)v8 _populateFromContactUsingHandle:v7];
  labeledValue = v8->_labeledValue;

  if (labeledValue)
  {
LABEL_5:
    labeledValue = v8;
  }

LABEL_6:

  return labeledValue;
}

- (MSPSharedTripContact)initWithContact:(id)a3 labeledValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MSPSharedTripContact;
  v9 = [(MSPSharedTripContact *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    v11 = [MEMORY[0x277CBDA78] stringFromContact:v10->_contact style:1000];
    displayName = v10->_displayName;
    v10->_displayName = v11;

    objc_storeStrong(&v10->_labeledValue, a4);
    v13 = [(MSPSharedTripContact *)v10 _stringValue];
    originalHandle = v10->_originalHandle;
    v10->_originalHandle = v13;
  }

  return v10;
}

- (id)_stringValue
{
  v3 = [(MSPSharedTripContact *)self labeledValue];
  v4 = [v3 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MSPSharedTripContact *)self labeledValue];
    v7 = [v6 value];
LABEL_5:
    v9 = v7;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    v8 = [(MSPSharedTripContact *)self labeledValue];
    v6 = [v8 value];

    v7 = [v6 unformattedInternationalStringValue];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (NSString)handleForIDS
{
  v3 = [(MSPSharedTripContact *)self labeledValue];
  v4 = [v3 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MSPSharedTripContact *)self stringValue];
    v7 = MEMORY[0x259C7A620]();
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    v6 = [(MSPSharedTripContact *)self stringValue];
    v7 = IDSCopyIDForPhoneNumber();
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isPhoneNumber
{
  v2 = [(MSPSharedTripContact *)self labeledValue];
  v3 = [v2 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    v3 = displayName;
  }

  else
  {
    v3 = [(MSPSharedTripContact *)self stringValue];
  }

  return v3;
}

+ (id)contactsFromCNContact:(id)a3 matchingHandles:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v39 = a4;
  if ([v39 count])
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v39 count];
      v8 = [v5 identifier];
      *buf = 134218499;
      v62 = v7;
      v63 = 2113;
      v64 = v8;
      v65 = 2113;
      v66 = v39;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "Will attempt to match %lu handles for contact %{private}@ (%{private}@)", buf, 0x20u);
    }

    v40 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [v5 phoneNumbers];
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
          v11 = [v10 value];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v12 = v39;
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
                if ([v11 isLikePhoneNumber:v17])
                {
                  v18 = [[MSPSharedTripContact alloc] initWithContact:v5 labeledValue:v10];
                  if (v18)
                  {
                    [v40 addObject:v18];
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
    v36 = [v5 emailAddresses];
    v19 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
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
            objc_enumerationMutation(v36);
          }

          v22 = *(*(&v45 + 1) + 8 * j);
          v23 = [v22 value];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = v39;
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

                if ([v23 isEqualToString:*(*(&v41 + 1) + 8 * k)])
                {
                  v29 = [[MSPSharedTripContact alloc] initWithContact:v5 labeledValue:v22];
                  if (v29)
                  {
                    [v40 addObject:v29];
                  }
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v41 objects:v57 count:16];
            }

            while (v26);
          }
        }

        v20 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v20);
    }

    v30 = [v40 copy];
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)contactsFromCNContact:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 identifier];
    *buf = 138477827;
    v33 = v5;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "Will prepare contact values for contact %{private}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v3 phoneNumbers];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [[MSPSharedTripContact alloc] initWithContact:v3 labeledValue:*(*(&v26 + 1) + 8 * i)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v3 emailAddresses];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [[MSPSharedTripContact alloc] initWithContact:v3 labeledValue:*(*(&v22 + 1) + 8 * j)];
        if (v18)
        {
          [v6 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [v6 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)contactsFromHandles:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    v5 = MSPGetSharedTripLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134218243;
        v22 = [v3 count];
        v23 = 2113;
        v24 = v3;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "Will attempt to fetch contacts for %lu handles (%{private}@)", buf, 0x16u);
      }

      v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v7 = objc_alloc(MEMORY[0x277CBDA70]);
      v8 = [objc_opt_class() _propertiesForFetching];
      v9 = [v7 initWithKeysToFetch:v8];

      v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v3];
      [v9 setPredicate:v10];

      [v9 setSortOrder:1];
      v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v20 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__MSPSharedTripContact_contactsFromHandles___block_invoke;
      v17[3] = &unk_279866290;
      v18 = v3;
      v19 = v11;
      v12 = v11;
      [v6 enumerateContactsWithFetchRequest:v9 error:&v20 usingBlock:v17];
      v13 = v20;
      v14 = [v12 array];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Contact] Asked to resolve handles to contacts, but Maps is not authorised for Contacts", buf, 2u);
      }

      v14 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __44__MSPSharedTripContact_contactsFromHandles___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MSPSharedTripContact contactsFromCNContact:a2 matchingHandles:*(a1 + 32)];
  [*(a1 + 40) addObjectsFromArray:v3];
}

+ (id)contactsFromIDSHandles:(id)a3
{
  v4 = MapsMap(a3, &__block_literal_global_4);
  v5 = [a1 contactsFromHandles:v4];

  return v5;
}

id __47__MSPSharedTripContact_contactsFromIDSHandles___block_invoke()
{
  v0 = IDSCopyRawAddressForDestination();

  return v0;
}

+ (void)setAdditionalKeyDescriptorsForContactFetching:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "[Contact] Setting additional keys for contact fetching: %{private}@", &v9, 0xCu);
  }

  v5 = additionalKeyDescriptors;
  additionalKeyDescriptors = v3;
  v6 = v3;

  v7 = keyDescriptorsForFetching;
  keyDescriptorsForFetching = 0;

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isHandleBlocked:(id)a3
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
      v8 = [(MSPSharedTripContact *)self stringValue];
      *buf = 138477827;
      v26 = v8;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "[Contact] Checking if %{private}@ is blocked", buf, 0xCu);
    }

    self->_isBlocked = 0;
    v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v10 = v9;
    if (self->_originalHandle)
    {
      [v9 addObject:?];
    }

    v11 = [(MSPSharedTripContact *)self stringValue];
    if (v11)
    {
      [v10 addObject:v11];
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

+ (BOOL)isVirtualReceiver:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (unint64_t)capabilityTypeForVirtualReceiver:(id)a3
{
  v4 = a3;
  if ([a1 isVirtualReceiver:v4])
  {
    v5 = [v4 handleForIDS];
    CapabilityType = MSPSharedTripVirtualReceiverHandleGetCapabilityType(v5);
  }

  else
  {
    CapabilityType = 0;
  }

  return CapabilityType;
}

+ (id)capabilityVersionsForVirtualReceiver:(id)a3
{
  v4 = a3;
  if ([a1 isVirtualReceiver:v4])
  {
    v5 = [v4 handleForIDS];
    v6 = MSPSharedTripVirtualReceiverHandleGetReceiverCapabilityVersions(v5);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

+ (id)virtualReceiverWithHandle:(id)a3
{
  v3 = a3;
  if (MSPSharedTripVirtualReceiverIsValid(v3))
  {
    v4 = [[MSPSharedTripVirtualContact alloc] initWithVirtualReceiverHandle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)contactsFromVirtualReceiverHandles:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__MSPSharedTripContact_VirtualReceivers__contactsFromVirtualReceiverHandles___block_invoke;
  v5[3] = &__block_descriptor_40_e43___MSPSharedTripContact_24__0__NSString_8Q16l;
  v5[4] = a1;
  v3 = MapsMap(a3, v5);

  return v3;
}

+ (id)mapsVirtualReceiverWithName:(id)a3 receiverCapabilityVersion:(id)a4
{
  v5 = MSPSharedTripVirtualReceiverHandleMake(a3, 4, 0, a4);
  v6 = [a1 virtualReceiverWithHandle:v5];

  return v6;
}

+ (id)iMessageVirtualReceiverWithName:(id)a3
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(a3, 3, 0, 0);
  v5 = [a1 virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)smsVirtualReceiverWithName:(id)a3
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(a3, 2, @"SMS", 0);
  v5 = [a1 virtualReceiverWithHandle:v4];

  return v5;
}

+ (id)rcsVirtualReceiverWithName:(id)a3
{
  v4 = MSPSharedTripVirtualReceiverHandleMake(a3, 2, @"RCS", 0);
  v5 = [a1 virtualReceiverWithHandle:v4];

  return v5;
}

- (id)handleForDeviceVersion:(unint64_t)a3
{
  if ([objc_opt_class() isVirtualReceiver:self])
  {
    v5 = [(MSPSharedTripContact *)self _deviceHandleForVersion:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startLiveUpdatesForCapabilityVersion:(unint64_t)a3
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:a3];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 postNotificationName:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:v5];

    v3 = v5;
  }
}

- (void)stopLiveUpdatesForCapabilityVersion:(unint64_t)a3
{
  v3 = [(MSPSharedTripContact *)self handleForDeviceVersion:a3];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 postNotificationName:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:v5];

    v3 = v5;
  }
}

@end