@interface PKPaymentOptionsRecents
+ (PKPaymentOptionsRecents)defaultInstance;
+ (id)_coreRecentsKindForPreference:(id)preference;
- (CNContact)meCard;
- (PKPaymentOptionsRecents)init;
- (id)_contactFromRecent:(id)recent preference:(id)preference;
- (id)_contactsFromKeychainForPreference:(id)preference;
- (id)_defaultCRSearchQuery;
- (id)_keychainDataForKey:(id)key;
- (id)_keychainKeyFromContactKey:(id)key;
- (id)_labelsToPropertiesDictionaryForContact:(id)contact;
- (id)_meCardEntries:(id)entries forContactKey:(id)key labelsToProperties:(id)properties;
- (id)_meCardEntries:(id)entries forContactKeys:(id)keys labelsToProperties:(id)properties;
- (id)_postalAddressLabeledValueFromRecent:(id)recent;
- (id)contactMetadataForContact:(id)contact preference:(id)preference;
- (id)meCardEntriesForPreference:(id)preference;
- (id)postalAddressMetadataForContact:(id)contact;
- (id)recentsForPreference:(id)preference;
- (id)saveContactToCoreRecents:(id)recents preference:(id)preference;
- (void)_addContactToKeychain:(id)keychain forPreference:(id)preference;
- (void)_coreRecentsContactsForPreference:(id)preference queue:(id)queue completion:(id)completion;
- (void)_deleteRecentContactFromKeychain:(id)keychain forPreference:(id)preference;
- (void)_deleteRecentContactsFromKeychainForContactKey:(id)key;
- (void)_deleteRecentContactsFromKeychainForPreference:(id)preference;
- (void)_setKeychainData:(id)data forKey:(id)key;
- (void)_updateRecentsWithContactsFromContactInformation:(id)information currentKeychainContacts:(id)contacts forContactKey:(id)key;
- (void)dealloc;
- (void)deleteAllRecentsWithCallbackQueue:(id)queue completion:(id)completion;
- (void)deleteRecent:(id)recent;
- (void)deleteRecentsForPreference:(id)preference callbackQueue:(id)queue completion:(id)completion;
- (void)meCardEntriesForPreference:(id)preference queue:(id)queue completion:(id)completion;
- (void)recentsForPreference:(id)preference queue:(id)queue completion:(id)completion;
- (void)setMeCardCachingEnabled:(BOOL)enabled;
- (void)updateRecentsAndKeychainWithContactInformation:(id)information;
@end

@implementation PKPaymentOptionsRecents

- (CNContact)meCard
{
  if ([(PKPaymentOptionsRecents *)self isMeCardCachingEnabled]&& (v3 = self->_cachedMeContact) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    pkPassbookRequiredKeys = [MEMORY[0x1E695CD58] pkPassbookRequiredKeys];
    v4 = [v5 _crossPlatformUnifiedMeContactWithKeysToFetch:pkPassbookRequiredKeys error:0];

    if ([(PKPaymentOptionsRecents *)self isMeCardCachingEnabled])
    {
      cachedMeContact = self->_cachedMeContact;
      p_cachedMeContact = &self->_cachedMeContact;
      if (!cachedMeContact)
      {
        if (v4)
        {
          objc_storeStrong(p_cachedMeContact, v4);
        }
      }
    }
  }

  return v4;
}

+ (PKPaymentOptionsRecents)defaultInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PKPaymentOptionsRecents_defaultInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6D2118 != -1)
  {
    dispatch_once(&qword_1ED6D2118, block);
  }

  v2 = _MergedGlobals_273;

  return v2;
}

void __42__PKPaymentOptionsRecents_defaultInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = _MergedGlobals_273;
  _MergedGlobals_273 = v0;
}

- (PKPaymentOptionsRecents)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentOptionsRecents;
  v2 = [(PKPaymentOptionsRecents *)&v8 init];
  if (v2)
  {
    defaultInstance = [MEMORY[0x1E6998FC8] defaultInstance];
    recentContactsLibrary = v2->_recentContactsLibrary;
    v2->_recentContactsLibrary = defaultInstance;

    v5 = objc_alloc_init(PKPaymentOptionsSynchronization);
    optionsSynchronization = v2->_optionsSynchronization;
    v2->_optionsSynchronization = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_meContactDidChangeNotificationObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_meContactDidChangeNotificationObserver];
  }

  v4.receiver = self;
  v4.super_class = PKPaymentOptionsRecents;
  [(PKPaymentOptionsRecents *)&v4 dealloc];
}

- (id)postalAddressMetadataForContact:(id)contact
{
  contactCopy = contact;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  postalAddresses = [contactCopy postalAddresses];
  firstObject = [postalAddresses firstObject];

  value = [firstObject value];
  backwardsCompatibleDictionaryRepresentation = [value backwardsCompatibleDictionaryRepresentation];

  [dictionary setObject:backwardsCompatibleDictionaryRepresentation forKey:@"postalAddress"];
  value2 = [firstObject value];
  iSOCountryCode = [value2 ISOCountryCode];
  if ([iSOCountryCode caseInsensitiveCompare:@"cn"])
  {
  }

  else
  {
    v11 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C320]];

    if (!v11)
    {
      goto LABEL_6;
    }

    value2 = [contactCopy note];
    [dictionary setObject:value2 forKey:@"pkdistrict"];
  }

LABEL_6:
  v12 = [dictionary copy];

  return v12;
}

- (id)contactMetadataForContact:(id)contact preference:(id)preference
{
  v56 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  preferenceCopy = preference;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v47 = contactCopy;
  nameComponents = [contactCopy nameComponents];
  givenName = [nameComponents givenName];

  if (givenName)
  {
    givenName2 = [nameComponents givenName];
    [dictionary setObject:givenName2 forKey:@"givenName"];
  }

  familyName = [nameComponents familyName];

  if (familyName)
  {
    familyName2 = [nameComponents familyName];
    [dictionary setObject:familyName2 forKey:@"familyName"];
  }

  phoneticRepresentation = [nameComponents phoneticRepresentation];
  givenName3 = [phoneticRepresentation givenName];

  if (givenName3)
  {
    givenName4 = [phoneticRepresentation givenName];
    [dictionary setObject:givenName4 forKey:@"phoneticGivenName"];
  }

  familyName3 = [phoneticRepresentation familyName];

  if (familyName3)
  {
    familyName4 = [phoneticRepresentation familyName];
    [dictionary setObject:familyName4 forKey:@"phoneticFamilyName"];
  }

  contactKey = [preferenceCopy contactKey];
  v19 = *MEMORY[0x1E695C360];
  v20 = [contactKey isEqualToString:*MEMORY[0x1E695C360]];

  if (v20)
  {
    v21 = [(PKPaymentOptionsRecents *)self postalAddressMetadataForContact:v47];
    [dictionary addEntriesFromDictionary:v21];
  }

  contactKeys = [preferenceCopy contactKeys];
  v23 = [contactKeys count];

  if (v23 >= 2)
  {
    v44 = phoneticRepresentation;
    v45 = nameComponents;
    v24 = MEMORY[0x1E695DFB8];
    contactKeys2 = [preferenceCopy contactKeys];
    v46 = preferenceCopy;
    contactKeys3 = [preferenceCopy contactKeys];
    v27 = [v24 orderedSetWithOrderedSet:contactKeys2 range:1 copyItems:{objc_msgSend(contactKeys3, "count") - 1, 0}];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
    v30 = v47;
    if (!v29)
    {
      goto LABEL_30;
    }

    v31 = v29;
    v32 = *v52;
    v33 = *MEMORY[0x1E695C208];
    v48 = *MEMORY[0x1E695C330];
    v49 = dictionary;
    while (1)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v52 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v35 = *(*(&v51 + 1) + 8 * i);
        if ([v35 isEqualToString:v19])
        {
          value = [(PKPaymentOptionsRecents *)self postalAddressMetadataForContact:v30];
          [dictionary addEntriesFromDictionary:value];
        }

        else if ([v35 isEqualToString:v33])
        {
          emailAddresses = [v30 emailAddresses];
          firstObject = [emailAddresses firstObject];
          value = [firstObject value];

          if (!value)
          {
            goto LABEL_26;
          }

          dictionary = v49;
          [v49 setObject:value forKey:@"emailAddresses"];
        }

        else
        {
          if (![v35 isEqualToString:v48])
          {
            continue;
          }

          phoneNumbers = [v30 phoneNumbers];
          firstObject2 = [phoneNumbers firstObject];
          value2 = [firstObject2 value];
          value = [value2 stringValue];

          if (!value)
          {
            v30 = v47;
LABEL_26:
            dictionary = v49;
            goto LABEL_27;
          }

          dictionary = v49;
          [v49 setObject:value forKey:@"phoneNumbers"];
          v30 = v47;
        }

LABEL_27:
      }

      v31 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (!v31)
      {
LABEL_30:

        nameComponents = v45;
        preferenceCopy = v46;
        phoneticRepresentation = v44;
        break;
      }
    }
  }

  if ([v47 recentFromContactInformation])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"contactFromContactInformation"];
  }

  v42 = [dictionary copy];

  return v42;
}

- (id)saveContactToCoreRecents:(id)recents preference:(id)preference
{
  v56[1] = *MEMORY[0x1E69E9840];
  recentsCopy = recents;
  preferenceCopy = preference;
  contactKey = [preferenceCopy contactKey];
  if (![(PKPaymentOptionsSynchronization *)self->_optionsSynchronization shouldSyncToCloud])
  {
    v29 = objc_alloc_init(PKRecentContact);
    -[PKRecentContact setContactID:](v29, "setContactID:", [recentsCopy hash]);
    [(PKPaymentOptionsRecents *)self _addContactToKeychain:recentsCopy forPreference:preferenceCopy];
    value2 = 0;
    v36 = 0;
    goto LABEL_31;
  }

  v49 = [(PKPaymentOptionsRecents *)self contactMetadataForContact:recentsCopy preference:preferenceCopy];
  if ([contactKey isEqualToString:*MEMORY[0x1E695C360]])
  {
    postalAddresses = [recentsCopy postalAddresses];
    firstObject = [postalAddresses firstObject];

    value3 = objc_alloc_init(MEMORY[0x1E695CF68]);
    v48 = firstObject;
    value = [firstObject value];
    v13 = [value3 stringFromPostalAddress:value];

    pkFullName = [recentsCopy pkFullName];
    value2 = [v13 stringByAppendingString:pkFullName];
  }

  else
  {
    if ([contactKey isEqualToString:*MEMORY[0x1E695C208]])
    {
      emailAddresses = [recentsCopy emailAddresses];
      firstObject2 = [emailAddresses firstObject];

      v48 = firstObject2;
      value2 = [firstObject2 value];
      if (value2)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    if (![contactKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      v36 = 0;
      goto LABEL_27;
    }

    phoneNumbers = [recentsCopy phoneNumbers];
    firstObject3 = [phoneNumbers firstObject];

    v48 = firstObject3;
    value3 = [firstObject3 value];
    value2 = [value3 stringValue];
  }

  if (!value2)
  {
LABEL_19:
    v36 = v48;
LABEL_27:
    v41 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Couldn't turn address into a single string for storage", buf, 2u);
    }

    value2 = 0;
    v29 = 0;
    goto LABEL_30;
  }

LABEL_5:
  [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6998F90]];
  v17 = v16 = preferenceCopy;
  v18 = MEMORY[0x1E6998FC8];
  label = [v48 label];
  v46 = v16;
  v20 = [PKPaymentOptionsRecents _coreRecentsKindForPreference:v16];
  date = [MEMORY[0x1E695DF00] date];
  v22 = [v49 copy];
  v47 = v17;
  v23 = [v18 recentEventForAddress:value2 displayName:label kind:v20 date:date weight:v17 metadata:v22 options:1];

  if (v23)
  {
    v44 = contactKey;
    v45 = recentsCopy;
    recentContactsLibrary = self->_recentContactsLibrary;
    v43 = v23;
    v56[0] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    [(CRRecentContactsLibrary *)recentContactsLibrary recordContactEvents:v25 recentsDomain:*MEMORY[0x1E6998FB8] sendingAddress:0 completion:&__block_literal_global_209];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    preferenceCopy = v46;
    v26 = [(PKPaymentOptionsRecents *)self recentsForPreference:v46];
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v52;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v51 + 1) + 8 * i);
          recentContact = [v32 recentContact];
          v34 = [recentContact hasFullTextMatch:value2];

          if (v34)
          {
            recentContact2 = [v32 recentContact];

            v29 = recentContact2;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    contactKey = v44;
    recentsCopy = v45;
    v23 = v43;
  }

  else
  {
    v29 = 0;
    preferenceCopy = v46;
  }

  v41 = v47;
  v36 = v48;
LABEL_30:

LABEL_31:

  return v29;
}

void __63__PKPaymentOptionsRecents_saveContactToCoreRecents_preference___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentOptionsRecents: Failed to save contact to CoreRecents with error: %@", &v4, 0xCu);
    }
  }
}

- (id)recentsForPreference:(id)preference
{
  v24 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__77;
  v20 = __Block_byref_object_dispose__77;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PKPaymentOptionsRecents_recentsForPreference___block_invoke;
  v12[3] = &unk_1E79E1578;
  v6 = preferenceCopy;
  v13 = v6;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [(PKPaymentOptionsRecents *)self recentsForPreference:v6 queue:0 completion:v12];
  v8 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Timed out awaiting recents for preference: %@", buf, 0xCu);
    }
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __48__PKPaymentOptionsRecents_recentsForPreference___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "PKPaymentOptionsRecents: Failed to get recents from CoreRecents for preference: %@ with error: %@", &v12, 0x16u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)recentsForPreference:(id)preference queue:(id)queue completion:(id)completion
{
  preferenceCopy = preference;
  queueCopy = queue;
  completionCopy = completion;
  if ([(PKPaymentOptionsSynchronization *)self->_optionsSynchronization shouldSyncToCloud])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PKPaymentOptionsRecents_recentsForPreference_queue_completion___block_invoke;
    v12[3] = &unk_1E79E15A0;
    v12[4] = self;
    v13 = preferenceCopy;
    v14 = completionCopy;
    [(PKPaymentOptionsRecents *)self _coreRecentsContactsForPreference:v13 queue:queueCopy completion:v12];
  }

  else
  {
    v11 = [(PKPaymentOptionsRecents *)self _contactsFromKeychainForPreference:preferenceCopy];
    (*(completionCopy + 2))(completionCopy, v11, 0);
  }
}

void __65__PKPaymentOptionsRecents_recentsForPreference_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  if (!v6)
  {
    v8 = [v5 count];
    if (v8 >= 6)
    {
      v9 = [v5 subarrayWithRange:{5, v8 - 5}];
      v10 = *(*(a1 + 32) + 40);
      v26 = 0;
      [v10 removeRecentContacts:v9 error:&v26];
      v11 = v26;
      v12 = [v5 subarrayWithRange:{0, 5}];

      v13 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 count];
        v15 = objc_opt_class();
        *buf = 67109634;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v11;
        v16 = v15;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Culled %d recents for preference %@ with error: %@", buf, 0x1Cu);
      }

      v5 = v12;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v5;
    v17 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v21 = [*(a1 + 32) _contactFromRecent:*(*(&v22 + 1) + 8 * v20) preference:{*(a1 + 40), v22}];
          [v7 safelyAddObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)deleteRecentsForPreference:(id)preference callbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  optionsSynchronization = self->_optionsSynchronization;
  preferenceCopy = preference;
  if ([(PKPaymentOptionsSynchronization *)optionsSynchronization shouldSyncToCloud])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PKPaymentOptionsRecents_deleteRecentsForPreference_callbackQueue_completion___block_invoke;
    v12[3] = &unk_1E79C4BD0;
    v12[4] = self;
    v13 = completionCopy;
    [(PKPaymentOptionsRecents *)self _coreRecentsContactsForPreference:preferenceCopy queue:queueCopy completion:v12];
  }

  else
  {
    [(PKPaymentOptionsRecents *)self _deleteRecentContactsFromKeychainForPreference:preferenceCopy];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __79__PKPaymentOptionsRecents_deleteRecentsForPreference_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if ([v5 count])
    {
      v8 = *(*(a1 + 32) + 40);
      v10 = 0;
      [v8 removeRecentContacts:v5 error:&v10];
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }
}

- (void)deleteRecent:(id)recent
{
  v12[1] = *MEMORY[0x1E69E9840];
  recentCopy = recent;
  if (recentCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPaymentOptionsRecents *)self _deleteRecentContactFromKeychain:recentCopy forPreference:0];
    }

    else
    {
      recentContactsLibrary = self->_recentContactsLibrary;
      v12[0] = recentCopy;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v9 = 0;
      [(CRRecentContactsLibrary *)recentContactsLibrary removeRecentContacts:v6 error:&v9];
      v7 = v9;

      if (v7)
      {
        v8 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v11 = v7;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentOptionsRecents: Failed to remove contact from CoreRecents with error: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)_postalAddressLabeledValueFromRecent:(id)recent
{
  recentCopy = recent;
  metadata = [recentCopy metadata];
  v5 = [metadata objectForKey:@"postalAddress"];
  v6 = [MEMORY[0x1E695CF60] backwardsCompatiblePostalAddressDictionary:v5];

  v7 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v6];
  v8 = [v7 mutableCopy];

  PKCorrectCountryCodeIfNecessaryForPostalAddress(v8);
  objc_claimAutoreleasedReturnValue();

  v9 = MEMORY[0x1E695CEE0];
  displayName = [recentCopy displayName];

  v11 = [v8 copy];
  v12 = [v9 labeledValueWithLabel:displayName value:v11];

  return v12;
}

- (id)_contactFromRecent:(id)recent preference:(id)preference
{
  v73 = *MEMORY[0x1E69E9840];
  recentCopy = recent;
  preferenceCopy = preference;
  metadata = [recentCopy metadata];
  contactKey = [preferenceCopy contactKey];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = *MEMORY[0x1E695C360];
  if ([contactKey isEqualToString:*MEMORY[0x1E695C360]])
  {
    if (metadata)
    {
      v11 = [(PKPaymentOptionsRecents *)self _postalAddressLabeledValueFromRecent:recentCopy];
      v12 = dictionary;
      v13 = v11;
      v14 = v10;
LABEL_8:
      [v12 setObject:v13 forKey:v14];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E695C330];
    if ([contactKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      v16 = MEMORY[0x1E695CF50];
      address = [recentCopy address];
      v11 = [v16 phoneNumberWithStringValue:address];

      v18 = MEMORY[0x1E695CEE0];
      displayName = [recentCopy displayName];
      v20 = [v18 labeledValueWithLabel:displayName value:v11];

      [dictionary setObject:v20 forKey:v15];
LABEL_9:

      goto LABEL_10;
    }

    v21 = *MEMORY[0x1E695C208];
    if ([contactKey isEqualToString:*MEMORY[0x1E695C208]])
    {
      v22 = MEMORY[0x1E695CEE0];
      displayName2 = [recentCopy displayName];
      address2 = [recentCopy address];
      v11 = [v22 labeledValueWithLabel:displayName2 value:address2];

      v12 = dictionary;
      v13 = v11;
      v14 = v21;
      goto LABEL_8;
    }
  }

LABEL_10:
  contactKeys = [preferenceCopy contactKeys];
  v26 = [contactKeys count];

  v63 = recentCopy;
  if (v26 < 2)
  {
    goto LABEL_29;
  }

  v61 = contactKey;
  v27 = MEMORY[0x1E695DFB8];
  contactKeys2 = [preferenceCopy contactKeys];
  v62 = preferenceCopy;
  contactKeys3 = [preferenceCopy contactKeys];
  v30 = [v27 orderedSetWithOrderedSet:contactKeys2 range:1 copyItems:{objc_msgSend(contactKeys3, "count") - 1, 0}];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (!v32)
  {
    goto LABEL_28;
  }

  v33 = v32;
  v34 = *v69;
  v35 = *MEMORY[0x1E695C208];
  v64 = metadata;
  v65 = *MEMORY[0x1E695C330];
  v66 = dictionary;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v69 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v37 = *(*(&v68 + 1) + 8 * i);
      if ([v37 isEqualToString:v10])
      {
        v38 = [(PKPaymentOptionsRecents *)self _postalAddressLabeledValueFromRecent:recentCopy];
        [dictionary setObject:v38 forKey:v10];
      }

      else if ([v37 isEqualToString:v35])
      {
        v38 = [metadata objectForKey:@"emailAddresses"];
        if (v38)
        {
          v39 = MEMORY[0x1E695CEE0];
          displayName3 = [recentCopy displayName];
          v41 = [v39 labeledValueWithLabel:displayName3 value:v38];

          metadata = v64;
          [v66 setObject:v41 forKey:v35];
LABEL_24:

          dictionary = v66;
        }
      }

      else
      {
        if (![v37 isEqualToString:v65])
        {
          continue;
        }

        v38 = [metadata objectForKey:@"phoneNumbers"];
        if (v38)
        {
          v41 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v38];
          v42 = MEMORY[0x1E695CEE0];
          displayName4 = [recentCopy displayName];
          v44 = [v42 labeledValueWithLabel:displayName4 value:v41];

          recentCopy = v63;
          [v66 setObject:v44 forKey:v65];

          metadata = v64;
          goto LABEL_24;
        }
      }
    }

    v33 = [v31 countByEnumeratingWithState:&v68 objects:v72 count:16];
  }

  while (v33);
LABEL_28:

  contactKey = v61;
  preferenceCopy = v62;
LABEL_29:
  v45 = [dictionary keysOfEntriesPassingTest:&__block_literal_global_87_1];
  allObjects = [v45 allObjects];
  [dictionary removeObjectsForKeys:allObjects];

  allKeys = [dictionary allKeys];
  v48 = dictionary;
  v49 = [allKeys count];

  if (v49)
  {
    v50 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v51 = [metadata PKStringForKey:@"givenName"];
    [v50 setGivenName:v51];

    v52 = [metadata PKStringForKey:@"familyName"];
    [v50 setFamilyName:v52];

    v53 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v54 = [metadata PKStringForKey:@"phoneticGivenName"];
    [v53 setGivenName:v54];

    v55 = [metadata PKStringForKey:@"phoneticFamilyName"];
    [v53 setFamilyName:v55];

    [v50 setPhoneticRepresentation:v53];
    [MEMORY[0x1E695CD58] pkContactWithNameComponents:v50 labeledValues:v48];
    v57 = v56 = metadata;
  }

  else
  {
    v56 = metadata;
    v57 = 0;
  }

  v58 = [v56 valueForKey:@"contactFromContactInformation"];
  bOOLValue = [v58 BOOLValue];

  [v57 setRecentFromContactInformation:bOOLValue];
  [v57 setRecentContact:v63];
  [v57 setContactSource:3];

  return v57;
}

uint64_t __57__PKPaymentOptionsRecents__contactFromRecent_preference___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 value];
  if (v4)
  {
    v5 = [v3 value];
    v6 = [MEMORY[0x1E695DFB0] null];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)deleteAllRecentsWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if ([(PKPaymentOptionsSynchronization *)self->_optionsSynchronization shouldSyncToCloud])
  {
    _defaultCRSearchQuery = [(PKPaymentOptionsRecents *)self _defaultCRSearchQuery];
    [_defaultCRSearchQuery setSearchPredicate:0];
    recentContactsLibrary = self->_recentContactsLibrary;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKPaymentOptionsRecents_deleteAllRecentsWithCallbackQueue_completion___block_invoke;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = completionCopy;
    [(CRRecentContactsLibrary *)recentContactsLibrary performRecentsSearch:_defaultCRSearchQuery queue:queueCopy completion:v10];
  }

  else
  {
    [(PKPaymentOptionsRecents *)self _deleteRecentContactsFromKeychainForContactKey:*MEMORY[0x1E695C208]];
    [(PKPaymentOptionsRecents *)self _deleteRecentContactsFromKeychainForContactKey:*MEMORY[0x1E695C330]];
    [(PKPaymentOptionsRecents *)self _deleteRecentContactsFromKeychainForContactKey:*MEMORY[0x1E695C360]];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __72__PKPaymentOptionsRecents_deleteAllRecentsWithCallbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if ([v5 count])
    {
      v8 = *(*(a1 + 32) + 40);
      v10 = 0;
      [v8 removeRecentContacts:v5 error:&v10];
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }
}

- (id)meCardEntriesForPreference:(id)preference
{
  preferenceCopy = preference;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__77;
  v16 = __Block_byref_object_dispose__77;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKPaymentOptionsRecents_meCardEntriesForPreference___block_invoke;
  v9[3] = &unk_1E79C9C40;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(PKPaymentOptionsRecents *)self meCardEntriesForPreference:preferenceCopy queue:0 completion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__PKPaymentOptionsRecents_meCardEntriesForPreference___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)meCardEntriesForPreference:(id)preference queue:(id)queue completion:(id)completion
{
  v34[1] = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  queueCopy = queue;
  completionCopy = completion;
  array = [MEMORY[0x1E695DEC8] array];
  if (queueCopy)
  {
    v12 = queueCopy;
  }

  else
  {
    v12 = dispatch_get_global_queue(0, 0);
  }

  v13 = v12;
  meCard = [(PKPaymentOptionsRecents *)self meCard];
  if (meCard)
  {
    v15 = [(PKPaymentOptionsRecents *)self _labelsToPropertiesDictionaryForContact:meCard];
    contactKeys = [preferenceCopy contactKeys];
    v17 = [contactKeys count];

    if (v17 < 2)
    {
      contactKey = [preferenceCopy contactKey];
      [(PKPaymentOptionsRecents *)self _meCardEntries:meCard forContactKey:contactKey labelsToProperties:v15];
    }

    else
    {
      contactKey = [preferenceCopy contactKeys];
      [(PKPaymentOptionsRecents *)self _meCardEntries:meCard forContactKeys:contactKey labelsToProperties:v15];
    }
    v19 = ;

    if (![v19 count])
    {
      contactKeys2 = [preferenceCopy contactKeys];
      v21 = [contactKeys2 containsObject:*MEMORY[0x1E695C230]];

      if (v21)
      {
        v22 = MEMORY[0x1E695CD58];
        nameComponents = [meCard nameComponents];
        v24 = [v22 pkContactWithNameComponents:nameComponents labeledValues:MEMORY[0x1E695E0F8]];

        [v24 setContactSource:1];
        v34[0] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

        v19 = v25;
      }
    }

    array = v19;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __71__PKPaymentOptionsRecents_meCardEntriesForPreference_queue_completion___block_invoke;
  v29[3] = &unk_1E79C44A0;
  v30 = array;
  v31 = completionCopy;
  v26 = v29;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_18;
  block[3] = &unk_1E79C4428;
  v33 = v26;
  v27 = array;
  v28 = completionCopy;
  dispatch_async(v13, block);
}

- (id)_meCardEntries:(id)entries forContactKeys:(id)keys labelsToProperties:(id)properties
{
  v51 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  keysCopy = keys;
  propertiesCopy = properties;
  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = propertiesCopy;
  obj = [propertiesCopy allKeys];
  v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v36)
  {
    v33 = *v46;
    v8 = *MEMORY[0x1E695C360];
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v9;
        v10 = [v34 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * v9)];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v12 = keysCopy;
        v40 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v40)
        {
          v38 = v10;
          v39 = *v42;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v42 != v39)
              {
                objc_enumerationMutation(v12);
              }

              v14 = *(*(&v41 + 1) + 8 * i);
              v15 = [v10 objectForKeyedSubscript:v14];
              v16 = v15;
              if (v15)
              {
                firstObject = [v15 firstObject];
                value = [firstObject value];
                if ([v14 isEqualToString:v8] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v19 = [value mutableCopy];
                  PKCorrectCountryCodeIfNecessaryForPostalAddress(v19);
                  objc_claimAutoreleasedReturnValue();

                  [firstObject labeledValueBySettingValue:v19];
                  v21 = v20 = v8;
                  [dictionary setObject:v21 forKeyedSubscript:v14];

                  v8 = v20;
                  v10 = v38;
                }

                else
                {
                  [dictionary setObject:firstObject forKeyedSubscript:v14];
                }
              }
            }

            v40 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v40);
        }

        allKeys = [dictionary allKeys];
        v23 = [allKeys count];

        if (v23)
        {
          v24 = MEMORY[0x1E695CD58];
          nameComponents = [entriesCopy nameComponents];
          v26 = [dictionary copy];
          v27 = [v24 pkContactWithNameComponents:nameComponents labeledValues:v26];

          [v27 setContactSource:1];
          [array addObject:v27];
        }

        v9 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v36);
  }

  v28 = [array copy];

  return v28;
}

- (id)_meCardEntries:(id)entries forContactKey:(id)key labelsToProperties:(id)properties
{
  v45 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  keyCopy = key;
  propertiesCopy = properties;
  if (keyCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [propertiesCopy allKeys];
    v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v29)
    {
      v27 = *v40;
      v9 = *MEMORY[0x1E695C360];
      v28 = propertiesCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v10;
          v30 = [propertiesCopy objectForKeyedSubscript:*(*(&v39 + 1) + 8 * v10)];
          v32 = [v30 objectForKeyedSubscript:keyCopy];
          if (v32)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v11 = [v32 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v36;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v36 != v13)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v15 = *(*(&v35 + 1) + 8 * i);
                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  value = [v15 value];
                  if ([keyCopy isEqualToString:v9] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v18 = [value mutableCopy];
                    PKCorrectCountryCodeIfNecessaryForPostalAddress(v18);
                    objc_claimAutoreleasedReturnValue();

                    v19 = [v15 labeledValueBySettingValue:v18];
                    [dictionary setObject:v19 forKeyedSubscript:keyCopy];
                  }

                  else
                  {
                    [dictionary setObject:v15 forKeyedSubscript:keyCopy];
                  }

                  v20 = MEMORY[0x1E695CD58];
                  nameComponents = [entriesCopy nameComponents];
                  v22 = [dictionary copy];
                  v23 = [v20 pkContactWithNameComponents:nameComponents labeledValues:v22];

                  [v23 setContactSource:1];
                  [array addObject:v23];
                }

                v12 = [v32 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v12);
            }
          }

          v10 = v31 + 1;
          propertiesCopy = v28;
        }

        while (v31 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v29);
    }

    v24 = [array copy];
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (void)setMeCardCachingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentOptionsRecents_setMeCardCachingEnabled___block_invoke;
  aBlock[3] = &unk_1E79C9D80;
  objc_copyWeak(&v15, &location);
  v5 = _Block_copy(aBlock);
  if (self->_meCardCachingEnabled != enabledCopy)
  {
    if (self->_meCardCachingEnabled)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self->_meContactDidChangeNotificationObserver];

      meContactDidChangeNotificationObserver = self->_meContactDidChangeNotificationObserver;
      self->_meContactDidChangeNotificationObserver = 0;
    }

    self->_meCardCachingEnabled = enabledCopy;
    if (enabledCopy)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = *MEMORY[0x1E695C3E0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__PKPaymentOptionsRecents_setMeCardCachingEnabled___block_invoke_2;
      v12[3] = &unk_1E79E15E8;
      v13 = v5;
      v10 = [defaultCenter2 addObserverForName:v9 object:0 queue:0 usingBlock:v12];
      v11 = self->_meContactDidChangeNotificationObserver;
      self->_meContactDidChangeNotificationObserver = v10;
    }

    else
    {
      v5[2](v5);
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __51__PKPaymentOptionsRecents_setMeCardCachingEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)updateRecentsAndKeychainWithContactInformation:(id)information
{
  informationCopy = information;
  v11 = +[PKContactInformation contactInformationFromKeychain];
  postalAddresses = [informationCopy postalAddresses];
  postalAddresses2 = [v11 postalAddresses];
  [(PKPaymentOptionsRecents *)self _updateRecentsWithContactsFromContactInformation:postalAddresses currentKeychainContacts:postalAddresses2 forContactKey:*MEMORY[0x1E695C360]];

  emailAddresses = [informationCopy emailAddresses];
  emailAddresses2 = [v11 emailAddresses];
  [(PKPaymentOptionsRecents *)self _updateRecentsWithContactsFromContactInformation:emailAddresses currentKeychainContacts:emailAddresses2 forContactKey:*MEMORY[0x1E695C208]];

  phoneNumbers = [informationCopy phoneNumbers];
  phoneNumbers2 = [v11 phoneNumbers];
  [(PKPaymentOptionsRecents *)self _updateRecentsWithContactsFromContactInformation:phoneNumbers currentKeychainContacts:phoneNumbers2 forContactKey:*MEMORY[0x1E695C330]];

  [PKContactInformation saveContactInformationToKeychain:informationCopy];
}

- (void)_updateRecentsWithContactsFromContactInformation:(id)information currentKeychainContacts:(id)contacts forContactKey:(id)key
{
  v92 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  contactsCopy = contacts;
  keyCopy = key;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = contactsCopy;
  v53 = [contactsCopy mutableCopy];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = informationCopy;
  v10 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v81;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v80 + 1) + 8 * i);
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v15 = v58;
        v16 = [v15 countByEnumeratingWithState:&v76 objects:v90 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v77;
LABEL_8:
          v19 = 0;
          while (1)
          {
            if (*v77 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v76 + 1) + 8 * v19);
            if ([v20 isEqualIgnoringIdentifiers:{v14, keyCopy}])
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v76 objects:v90 count:16];
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v21 = v20;

          if (!v21)
          {
            goto LABEL_19;
          }

          [v53 removeObject:v21];
          v22 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v21 description];
            uTF8String = [v23 UTF8String];
            *buf = 136315138;
            v89 = uTF8String;
            _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Not adding contact info to CoreRecents as it exists in KeyChain:\n%s\n", buf, 0xCu);
          }
        }

        else
        {
LABEL_14:

LABEL_19:
          [v9 addObject:{v14, keyCopy}];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v11);
  }

  v25 = objc_alloc_init(PKPaymentPreferenceContact);
  [(PKPaymentPreferenceContact *)v25 setContactKey:keyCopy];
  v57 = v25;
  v26 = [(PKPaymentOptionsRecents *)self recentsForPreference:v25];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v55 = v9;
  v27 = [v55 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v73;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(v55);
        }

        v31 = *(*(&v72 + 1) + 8 * j);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v32 = v26;
        v33 = [v32 countByEnumeratingWithState:&v68 objects:v86 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v69;
LABEL_29:
          v36 = 0;
          while (1)
          {
            if (*v69 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v68 + 1) + 8 * v36);
            if ([v37 isEqualIgnoringIdentifiers:{v31, keyCopy}])
            {
              break;
            }

            if (v34 == ++v36)
            {
              v34 = [v32 countByEnumeratingWithState:&v68 objects:v86 count:16];
              if (v34)
              {
                goto LABEL_29;
              }

              goto LABEL_35;
            }
          }

          v38 = v37;

          if (v38)
          {
            goto LABEL_38;
          }
        }

        else
        {
LABEL_35:
        }

        [v31 setRecentFromContactInformation:{1, keyCopy}];
        v39 = [(PKPaymentOptionsRecents *)self saveContactToCoreRecents:v31 preference:v57];
        v38 = 0;
LABEL_38:
      }

      v28 = [v55 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v28);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v54 = v53;
  v40 = [v54 countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v65;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v65 != v42)
        {
          objc_enumerationMutation(v54);
        }

        v44 = *(*(&v64 + 1) + 8 * k);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v45 = v26;
        v46 = [v45 countByEnumeratingWithState:&v60 objects:v84 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v61;
          while (2)
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v61 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v60 + 1) + 8 * m);
              if ([v50 isEqualIgnoringIdentifiers:{v44, keyCopy}])
              {
                recentContact = [v50 recentContact];
                [(PKPaymentOptionsRecents *)self deleteRecent:recentContact];

                goto LABEL_55;
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v60 objects:v84 count:16];
            if (v47)
            {
              continue;
            }

            break;
          }
        }

LABEL_55:
      }

      v41 = [v54 countByEnumeratingWithState:&v64 objects:v85 count:16];
    }

    while (v41);
  }
}

- (id)_labelsToPropertiesDictionaryForContact:(id)contact
{
  v36 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *MEMORY[0x1E695C330];
  v34[0] = *MEMORY[0x1E695C360];
  v34[1] = v4;
  v34[2] = *MEMORY[0x1E695C208];
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v23 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v23)
  {
    v21 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        v7 = [contactCopy valueForKey:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              label = [v12 label];

              if (label)
              {
                label2 = [v12 label];
                dictionary2 = [dictionary objectForKey:label2];

                if (!dictionary2)
                {
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                  label3 = [v12 label];
                  [dictionary setObject:dictionary2 forKey:label3];
                }

                array = [dictionary2 objectForKeyedSubscript:v6];
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                  [dictionary2 setObject:array forKey:v6];
                }

                [array addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v9);
        }

        v5 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v23);
  }

  v18 = [dictionary copy];

  return v18;
}

+ (id)_coreRecentsKindForPreference:(id)preference
{
  preferenceCopy = preference;
  contactKey = [preferenceCopy contactKey];
  v5 = [contactKey isEqualToString:*MEMORY[0x1E695C360]];

  if (v5)
  {
    v6 = MEMORY[0x1E6998F58];
LABEL_7:
    v11 = *v6;
    goto LABEL_8;
  }

  contactKey2 = [preferenceCopy contactKey];
  v8 = [contactKey2 isEqualToString:*MEMORY[0x1E695C208]];

  if (v8)
  {
    v6 = MEMORY[0x1E6998F48];
    goto LABEL_7;
  }

  contactKey3 = [preferenceCopy contactKey];
  v10 = [contactKey3 isEqualToString:*MEMORY[0x1E695C330]];

  if (v10)
  {
    v6 = MEMORY[0x1E6998F60];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)_coreRecentsContactsForPreference:(id)preference queue:(id)queue completion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E6998FD8];
  preferenceCopy = preference;
  frecencyComparator = [v10 frecencyComparator];
  _defaultCRSearchQuery = [(PKPaymentOptionsRecents *)self _defaultCRSearchQuery];
  v14 = [PKPaymentOptionsRecents _coreRecentsKindForPreference:preferenceCopy];

  if (v14)
  {
    v15 = MEMORY[0x1E6998FD0];
    v16 = *MEMORY[0x1E6998F88];
    v19[0] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = [v15 predicateForKey:v16 inCollection:v17];
    [_defaultCRSearchQuery setSearchPredicate:v18];

    [_defaultCRSearchQuery setComparator:frecencyComparator];
    [(CRRecentContactsLibrary *)self->_recentContactsLibrary performRecentsSearch:_defaultCRSearchQuery queue:queueCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
  }
}

- (id)_defaultCRSearchQuery
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6998FD8]);
  v5[0] = *MEMORY[0x1E6998FB8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setDomains:v3];

  return v2;
}

- (id)_keychainKeyFromContactKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x1E695C330]])
  {
    v4 = @"PKRecentPhonesKeychainKey";
  }

  else if ([keyCopy isEqualToString:*MEMORY[0x1E695C208]])
  {
    v4 = @"PKRecentEmailsKeychainKey";
  }

  else if ([keyCopy isEqualToString:*MEMORY[0x1E695C360]])
  {
    v4 = @"PKRecentAddressKeychainKey";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_keychainDataForKey:(id)key
{
  keyCopy = key;
  v4 = [[PKKeychainItemWrapper alloc] initWithIdentifier:keyCopy accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:0 invisible:0];

  v5 = [(PKKeychainItemWrapper *)v4 objectForKey:*MEMORY[0x1E697B3C0]];

  return v5;
}

- (void)_setKeychainData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  v7 = [[PKKeychainItemWrapper alloc] initWithIdentifier:keyCopy accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:0 invisible:0];

  [(PKKeychainItemWrapper *)v7 setObject:dataCopy forKey:*MEMORY[0x1E697B3C0]];
}

- (void)_addContactToKeychain:(id)keychain forPreference:(id)preference
{
  preferenceCopy = preference;
  keychainCopy = keychain;
  v8 = [(PKPaymentOptionsRecents *)self _contactsFromKeychainForPreference:preferenceCopy];
  v12 = [v8 mutableCopy];

  [v12 addObject:keychainCopy];
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  contactKey = [preferenceCopy contactKey];

  v11 = [(PKPaymentOptionsRecents *)self _keychainKeyFromContactKey:contactKey];

  [(PKPaymentOptionsRecents *)self _setKeychainData:v9 forKey:v11];
}

- (void)_deleteRecentContactFromKeychain:(id)keychain forPreference:(id)preference
{
  v42[1] = *MEMORY[0x1E69E9840];
  keychainCopy = keychain;
  preferenceCopy = preference;
  v26 = preferenceCopy;
  if (preferenceCopy)
  {
    contactKey = [preferenceCopy contactKey];
    v42[0] = contactKey;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  }

  else
  {
    v9 = *MEMORY[0x1E695C330];
    v41[0] = *MEMORY[0x1E695C208];
    v41[1] = v9;
    v41[2] = *MEMORY[0x1E695C360];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = objc_alloc_init(PKPaymentPreferenceContact);
        [(PKPaymentPreferenceContact *)v12 setContactKey:v11];
        v13 = [(PKPaymentOptionsRecents *)self _contactsFromKeychainForPreference:v12];
        v14 = [v13 mutableCopy];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
LABEL_11:
          v19 = 0;
          while (1)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v31 + 1) + 8 * v19);
            v21 = [v20 hash];
            if (v21 == [keychainCopy contactID])
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v17)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

          v22 = v20;

          if (!v22)
          {
            goto LABEL_19;
          }

          v23 = [v15 pk_arrayByRemovingObject:v22];

          v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:0];
          if (v24)
          {
            v25 = [(PKPaymentOptionsRecents *)self _keychainKeyFromContactKey:v11];
            [(PKPaymentOptionsRecents *)self _setKeychainData:v24 forKey:v25];
          }

          goto LABEL_25;
        }

LABEL_17:

LABEL_19:
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
}

- (void)_deleteRecentContactsFromKeychainForPreference:(id)preference
{
  contactKey = [preference contactKey];
  [(PKPaymentOptionsRecents *)self _deleteRecentContactsFromKeychainForContactKey:contactKey];
}

- (void)_deleteRecentContactsFromKeychainForContactKey:(id)key
{
  v4 = MEMORY[0x1E696ACC8];
  keyCopy = key;
  v7 = [v4 archivedDataWithRootObject:MEMORY[0x1E695E0F0] requiringSecureCoding:1 error:0];
  v6 = [(PKPaymentOptionsRecents *)self _keychainKeyFromContactKey:keyCopy];

  [(PKPaymentOptionsRecents *)self _setKeychainData:v7 forKey:v6];
}

- (id)_contactsFromKeychainForPreference:(id)preference
{
  v31 = *MEMORY[0x1E69E9840];
  contactKey = [preference contactKey];
  v5 = [(PKPaymentOptionsRecents *)self _keychainKeyFromContactKey:contactKey];
  v6 = [(PKPaymentOptionsRecents *)self _keychainDataForKey:v5];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = objc_opt_class();
  v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
  v27 = 0;
  v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v27];
  v12 = v27;

  if (v12)
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v12;
      _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "PKPaymentOptionsRecents: error trying to read contact data from keychain. %{public}@.", buf, 0xCu);
    }
  }

  if (!v11)
  {
LABEL_7:
    v11 = MEMORY[0x1E695E0F0];
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:MEMORY[0x1E695E0F0] requiringSecureCoding:1 error:0];
    [(PKPaymentOptionsRecents *)self _setKeychainData:v14 forKey:v5];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        v21 = objc_alloc_init(PKRecentContact);
        -[PKRecentContact setContactID:](v21, "setContactID:", [v20 hash]);
        [v20 setRecentContact:v21];
        [v20 setContactSource:3];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  return v15;
}

@end