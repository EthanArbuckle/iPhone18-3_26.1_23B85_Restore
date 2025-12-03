@interface CLSSocialServiceContacts
+ (BOOL)canAccessContactsStore;
+ (id)defaultKeysToFetch;
- (CLSSocialServiceContacts)initWithLocationCache:(id)cache;
- (CLSSocialServiceContactsDelegate)delegate;
- (float)_confidenceInPersonRecord:(id)record viewPerson:(id)person forName:(id)name components:(id)components;
- (float)_fuzzyMatchingScoreBetweenNameComponents:(id)components andNameComponents:(id)nameComponents;
- (id)__newPersonWithContact:(id)contact viewPerson:(id)person;
- (id)_allPersons;
- (id)_cnPostalAddressForGDLocationAddress:(id)address;
- (id)_fullNameWithContact:(id)contact;
- (id)_initializeVisualIdentifierView;
- (id)_personResultsForPersonLocalIdentifier:(id)identifier isLackingFaces:(BOOL *)faces inPhotoLibrary:(id)library;
- (id)_personResultsForfullName:(id)name;
- (id)_personWithContact:(id)contact viewPerson:(id)person createPersonIfNeeded:(BOOL)needed;
- (id)_personWithContactIdentifier:(id)identifier;
- (id)_personsMatchingPredicate:(id)predicate;
- (id)contactsByIdentifierForIdentifiers:(id)identifiers;
- (id)contactsForIdentifiers:(id)identifiers;
- (id)fetchMeCardFromContactStore:(id)store;
- (id)inferredDeviceOwnerForPhotoLibrary:(id)library ignoreContactLinking:(BOOL)linking;
- (id)matchingDictionaryForContactIdentifier:(id)identifier;
- (id)mePerson;
- (id)personForIdentifier:(id)identifier;
- (id)personForPersonHandle:(id)handle;
- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)identifier;
- (id)personResultsForName:(id)name inPhotoLibrary:(id)library;
- (id)personsInContactStoreForContactIdentifiers:(id)identifiers needsRefetching:(BOOL)refetching progressBlock:(id)block;
- (id)potentialBirthdayDateForCNIdentifier:(id)identifier fullName:(id)name;
- (id)suggestionsService;
- (id)visionCacheStorageDirectoryURLForPhotoLibrary:(id)library;
- (unint64_t)_ageCategoryFromFaceAgeType:(unsigned __int16)type;
- (unint64_t)_relationshipForContact:(id)contact;
- (unint64_t)_relationshipForLabel:(id)label;
- (unint64_t)_sexFromFaceBiologicalSex:(unsigned __int16)sex;
- (void)_addAddressesToPerson:(id)person withContact:(id)contact;
- (void)_addDelegateAddressesToPerson:(id)person ofType:(unint64_t)type;
- (void)_addMissingPropertiesToPerson:(id)person withViewPerson:(id)viewPerson;
- (void)enumerateAllPersonsUsingBlock:(id)block;
- (void)enumeratePersonsAndPotentialBirthdayDateForContactIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumeratePersonsAndRelationshipUsingBlock:(id)block;
- (void)enumeratePersonsForFullName:(id)name usingBlock:(id)block;
- (void)enumeratePersonsForIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)identifiers;
- (void)invalidateCacheForPersonWithContactIdentifiers:(id)identifiers;
- (void)invalidateCacheForPersonWithLocalIdentifiers:(id)identifiers;
- (void)invalidateMePerson;
- (void)invalidateMemoryCaches;
- (void)refreshMeContactIfNeeded;
@end

@implementation CLSSocialServiceContacts

- (CLSSocialServiceContactsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (float)_confidenceInPersonRecord:(id)record viewPerson:(id)person forName:(id)name components:(id)components
{
  recordCopy = record;
  personCopy = person;
  nameCopy = name;
  componentsCopy = components;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if (!componentsCopy)
  {
    componentsCopy = [nameCopy clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  v15 = [(CLSSocialServiceContacts *)self _fullNameWithContact:recordCopy];
  v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  names = [personCopy names];
  firstObject = [names firstObject];
  v19 = [firstObject stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ((!v16 || [v16 compare:nameCopy]) && (!v19 || objc_msgSend(v19, "compare:", nameCopy)))
  {
    v55 = v19;
    nameComponents = [personCopy nameComponents];
    v20 = [(CLSSocialServiceContacts *)self _firstNameForPersonRecord:recordCopy];
    v21 = v20;
    v54 = personCopy;
    if (v20)
    {
      firstObject2 = v20;
    }

    else
    {
      nameComponents2 = [personCopy nameComponents];
      givenNames = [nameComponents2 givenNames];
      firstObject2 = [givenNames firstObject];
    }

    v26 = [firstObject2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v27 = [(CLSSocialServiceContacts *)self _lastNameForPersonRecord:recordCopy];
    v28 = v27;
    if (v27)
    {
      firstObject3 = v27;
    }

    else
    {
      familyNames = [nameComponents familyNames];
      firstObject3 = [familyNames firstObject];
    }

    v31 = [firstObject3 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v32 = [(CLSSocialServiceContacts *)self _nicknameForPersonRecord:recordCopy];
    v33 = v32;
    v56 = v31;
    if (v32)
    {
      firstObject4 = v32;
    }

    else
    {
      nicknames = [nameComponents nicknames];
      firstObject4 = [nicknames firstObject];

      v31 = v56;
    }

    v36 = [firstObject4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v37 = [(CLSSocialServiceContacts *)self _maidenNameForPersonRecord:recordCopy];
    v57 = [v37 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([componentsCopy count] == 1 && v26)
    {
      v38 = v57;
      if (![nameCopy compare:v26 options:129] || !objc_msgSend(nameCopy, "compare:options:", v31, 129) || !objc_msgSend(nameCopy, "compare:options:", v36, 129) || (v23 = 0.0, !objc_msgSend(nameCopy, "compare:options:", v57, 129)))
      {
        v23 = 0.5;
      }

      goto LABEL_42;
    }

    v52 = v36;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v26)
    {
      v40 = [v26 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      [v39 addObjectsFromArray:v40];
    }

    if (v56)
    {
      v41 = [v56 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      [v39 addObjectsFromArray:v41];
    }

    v23 = 0.0;
    if (![v39 count])
    {
      if (v16)
      {
        v42 = [v16 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
        [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:componentsCopy andNameComponents:v42];
        v23 = v43;
      }

      if (v55)
      {
        v44 = [v55 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
        [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:componentsCopy andNameComponents:v44];
        if (v45 > v23)
        {
          v23 = v45;
        }
      }
    }

    if (v26)
    {
      v38 = v57;
      if (!v57)
      {
LABEL_41:

        v31 = v56;
        v36 = v53;
LABEL_42:

        personCopy = v54;
        v19 = v55;
        goto LABEL_43;
      }

      v46 = objc_alloc(MEMORY[0x277CBEB18]);
      v47 = [v26 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      v48 = [v46 initWithArray:v47];

      v49 = [v57 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      [v48 addObjectsFromArray:v49];

      [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:componentsCopy andNameComponents:v48];
      if (v50 > v23)
      {
        v23 = v50;
      }
    }

    v38 = v57;
    goto LABEL_41;
  }

  v23 = 1.0;
LABEL_43:

  return v23;
}

- (float)_fuzzyMatchingScoreBetweenNameComponents:(id)components andNameComponents:(id)nameComponents
{
  componentsCopy = components;
  nameComponentsCopy = nameComponents;
  v7 = [componentsCopy count];
  v8 = [nameComponentsCopy count];
  v9 = v7 >= v8;
  if (v7 >= v8)
  {
    v10 = nameComponentsCopy;
  }

  else
  {
    v10 = componentsCopy;
  }

  v29 = 0;
  v30 = &v29;
  if (!v9)
  {
    componentsCopy = nameComponentsCopy;
  }

  v31 = 0x2020000000;
  v32 = 0;
  v11 = [componentsCopy mutableCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__CLSSocialServiceContacts__fuzzyMatchingScoreBetweenNameComponents_andNameComponents___block_invoke;
  v25[3] = &unk_2788A8510;
  v12 = v11;
  v27 = &v29;
  v28 = 129;
  v26 = v12;
  [v10 enumerateObjectsUsingBlock:v25];
  if ([v12 count])
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __87__CLSSocialServiceContacts__fuzzyMatchingScoreBetweenNameComponents_andNameComponents___block_invoke_2;
    v21 = &unk_2788A8510;
    v24 = 129;
    v22 = v12;
    v23 = &v29;
    [v10 enumerateObjectsUsingBlock:&v18];
  }

  v13 = v30[6];
  v14 = [v10 count];
  v15 = [v12 count];
  v16 = (v13 / v14) * (1.0 - (v15 / [componentsCopy count]));

  _Block_object_dispose(&v29, 8);
  return v16;
}

void __87__CLSSocialServiceContacts__fuzzyMatchingScoreBetweenNameComponents_andNameComponents___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v5 = [v6 compare:v4 options:*(a1 + 48)];

      if (!v5)
      {
        break;
      }

      if (++v3 >= [*(a1 + 32) count])
      {
        goto LABEL_7;
      }
    }

    [*(a1 + 32) removeObjectAtIndex:v3];
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 1.0;
  }

LABEL_7:
}

void __87__CLSSocialServiceContacts__fuzzyMatchingScoreBetweenNameComponents_andNameComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      if (![v5 rangeOfString:v4 options:*(a1 + 48)] || !objc_msgSend(v4, "rangeOfString:options:", v5, *(a1 + 48)))
      {
        break;
      }

      if (++v3 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) removeObjectAtIndex:v3];
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 0.5;
  }

LABEL_8:
}

- (id)potentialBirthdayDateForCNIdentifier:(id)identifier fullName:(id)name
{
  v59 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  suggestionsService = [(CLSSocialServiceContacts *)self suggestionsService];
  v54 = 0;
  v9 = [suggestionsService contactMatchesWithContactIdentifier:identifierCopy limitTo:10 error:&v54];
  v10 = v54;
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = [v10 description];
      *buf = 138412290;
      v58 = v11;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Error suggestionService contactMatchesWithContactIdentifier: %@", buf, 0xCu);
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v39 = v9;
      v41 = suggestionsService;
      v43 = identifierCopy;
      v15 = 0;
      v16 = *v51;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v12);
          }

          contact = [*(*(&v50 + 1) + 8 * i) contact];
          birthday = [contact birthday];
          dateComponents = [birthday dateComponents];

          v21 = [CLSCalendar dateFromComponents:dateComponents inTimeZone:0];
          v22 = v21;
          if (v21)
          {
            v23 = v21;

            v15 = v23;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v14);

      identifierCopy = v43;
      v9 = v39;
      suggestionsService = v41;
      if (v15)
      {
        v10 = 0;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  if ([nameCopy length])
  {

    v49 = 0;
    v24 = [suggestionsService suggestContactMatchesWithFullTextSearch:nameCopy limitTo:10 error:&v49];
    v10 = v49;
    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = [v10 description];
        *buf = 138412290;
        v58 = v25;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Error suggestionService suggestContactMatchesWithFullTextSearch: %@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v40 = v9;
      v42 = suggestionsService;
      v44 = identifierCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = v24;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v15 = 0;
        v29 = *v46;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v26);
            }

            contact2 = [*(*(&v45 + 1) + 8 * j) contact];
            birthday2 = [contact2 birthday];
            dateComponents2 = [birthday2 dateComponents];

            v34 = [CLSCalendar dateFromComponents:dateComponents2 inTimeZone:0];
            v35 = v34;
            if (v34)
            {
              v36 = v34;

              v15 = v36;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v28);
      }

      else
      {
        v15 = 0;
      }

      identifierCopy = v44;
      v9 = v40;
      suggestionsService = v42;
      v24 = v38;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_35:

  return v15;
}

- (void)enumeratePersonsAndPotentialBirthdayDateForContactIdentifiers:(id)identifiers usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  blockCopy = block;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(CLSSocialServiceContacts *)self potentialBirthdayDateForCNIdentifier:v13 fullName:0];
        if (v14)
        {
          [dictionary setObject:v14 forKeyedSubscript:v13];
          v15 = [(CLSSocialServiceContacts *)self personForIdentifier:v13];
          blockCopy[2](blockCopy, v15, v14, &v22);
          v16 = v22;

          if (v16 == 1)
          {

            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)suggestionsService
{
  suggestionsService = self->_suggestionsService;
  if (!suggestionsService)
  {
    serviceForContacts = [MEMORY[0x277D02118] serviceForContacts];
    v5 = self->_suggestionsService;
    self->_suggestionsService = serviceForContacts;

    [(SGSuggestionsServiceContactsProtocol *)self->_suggestionsService setSyncTimeout:30.0];
    suggestionsService = self->_suggestionsService;
  }

  return suggestionsService;
}

- (unint64_t)_ageCategoryFromFaceAgeType:(unsigned __int16)type
{
  if (type > 5u)
  {
    return 0;
  }

  else
  {
    return qword_22F992750[type];
  }
}

- (unint64_t)_sexFromFaceBiologicalSex:(unsigned __int16)sex
{
  if (sex > 2u)
  {
    return 0;
  }

  else
  {
    return qword_22F992738[sex];
  }
}

- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = self->_personsInContactStoreForCNIdentifiers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsInContactStoreForCNIdentifiers removeObjectsForKeys:identifiersCopy];
  objc_sync_exit(v4);
}

- (void)invalidateCacheForPersonWithContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = self->_personsForCNIdentifiers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsForCNIdentifiers removeObjectsForKeys:identifiersCopy];
  objc_sync_exit(v4);
}

- (void)invalidateCacheForPersonWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = self->_personsForLocalIdentifier;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsForLocalIdentifier removeObjectsForKeys:identifiersCopy];
  objc_sync_exit(v4);
}

- (id)_personsMatchingPredicate:(id)predicate
{
  v31 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contactStore = self->_contactStore;
  v6 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v27 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:predicateCopy keysToFetch:v6 error:&v27];
  v8 = v27;

  if (v8)
  {
    v9 = +[CLSLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Error fetching contact from predicate %@", buf, 0xCu);
    }

    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    loggingConnection = v7;
    v12 = [loggingConnection countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v22 = v7;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(loggingConnection);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          visualIdentifierView = self->_visualIdentifierView;
          identifier = [v16 identifier];
          v19 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:identifier];

          v20 = [(CLSSocialServiceContacts *)self _personWithContact:v16 viewPerson:v19 createPersonIfNeeded:1];
          [array addObject:v20];
        }

        v13 = [loggingConnection countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
      v7 = v22;
      v8 = 0;
    }
  }

  return array;
}

- (void)enumeratePersonsForFullName:(id)name usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  if (blockCopy && ([(NSMutableSet *)self->_nonFoundFullNames containsObject:nameCopy]& 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_personByFullName objectForKey:nameCopy];
    if (v8)
    {
      v9 = v8;
      [(NSMutableDictionary *)self->_personByFullName setObject:v8 forKeyedSubscript:nameCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:nameCopy];
      v9 = [(CLSSocialServiceContacts *)self _personsMatchingPredicate:v10];
      if (![v9 count])
      {
        v15 = +[CLSLogging sharedLogging];
        loggingConnection = [v15 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = nameCopy;
          _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Contact %@ not found in Contact DB@", buf, 0xCu);
        }

        [(NSMutableSet *)self->_nonFoundFullNames addObject:nameCopy];
LABEL_16:

        goto LABEL_17;
      }
    }

    buf[0] = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v9;
    v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (buf[0])
        {
          break;
        }

        blockCopy[2](blockCopy, *(*(&v17 + 1) + 8 * v14++), buf);
        if (v12 == v14)
        {
          v12 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (id)personForPersonHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy && ([(NSMutableSet *)self->_nonFoundHandles containsObject:handleCopy]& 1) == 0)
  {
    firstObject = [(NSMutableDictionary *)self->_personByHandle objectForKey:handleCopy];
    if (!firstObject)
    {
      if ([handleCopy containsString:@"@"])
      {
        v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:handleCopy];
      }

      else
      {
        v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:handleCopy];
        v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v7];
      }

      v8 = [(CLSSocialServiceContacts *)self _personsMatchingPredicate:v6];
      if ([v8 count])
      {
        firstObject = [v8 firstObject];
        [(NSMutableDictionary *)self->_personByHandle setObject:firstObject forKeyedSubscript:handleCopy];
      }

      else
      {
        [(NSMutableSet *)self->_nonFoundHandles addObject:handleCopy];
        firstObject = 0;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)identifier
{
  v43[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(CLSSocialServiceContacts *)self personForIdentifier:identifierCopy];
  if ([v5 hasContactProfilePicture])
  {
    v43[0] = *MEMORY[0x277CBD158];
    loggingConnection2 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v7 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:loggingConnection2];
    v8 = MEMORY[0x277CBDA58];
    v42 = identifierCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v10 = [v8 predicateForContactsWithIdentifiers:v9];
    [v7 setPredicate:v10];

    v11 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__5623;
    v40 = __Block_byref_object_dispose__5624;
    v41 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__5623;
    v31 = __Block_byref_object_dispose__5624;
    v32 = 0;
    contactStore = self->_contactStore;
    v26 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__CLSSocialServiceContacts_personLocalIdentifierMatchingContactPictureForContactIdentifier___block_invoke;
    v21[3] = &unk_2788A84E8;
    v13 = identifierCopy;
    v22 = v13;
    p_buf = &buf;
    v14 = v11;
    v23 = v14;
    v25 = &v27;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v7 error:&v26 usingBlock:v21];
    v15 = v26;
    if (v15)
    {
      v16 = +[CLSLogging sharedLogging];
      loggingConnection = [v16 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412546;
        v34 = v13;
        v35 = 2112;
        v36 = v15;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Error while enumerating contacts for identifier %@: %@", v33, 0x16u);
      }
    }

    v18 = v28[5];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v19 = +[CLSLogging sharedLogging];
    loggingConnection2 = [v19 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_INFO, "ContactImage: Contact %@ has no profile picture", &buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

void __92__CLSSocialServiceContacts_personLocalIdentifierMatchingContactPictureForContactIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 thumbnailImageData];
  if (v7)
  {
    v8 = [MEMORY[0x277CBF758] imageWithData:v7];
    if (v8)
    {
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v9 = [MEMORY[0x277D26888] service];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      v12 = objc_alloc_init(MEMORY[0x277D26860]);
      [v12 setMaximumFaceCount:1];
      dispatch_group_enter(*(a1 + 40));
      v13 = *(*(*(a1 + 48) + 8) + 40);
      v26 = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __92__CLSSocialServiceContacts_personLocalIdentifierMatchingContactPictureForContactIdentifier___block_invoke_260;
      v20[3] = &unk_2788A84C0;
      v21 = *(a1 + 32);
      v22 = v12;
      v24 = *(a1 + 56);
      v25 = a3;
      v23 = *(a1 + 40);
      v15 = v12;
      [v13 performRequests:v14 onCIImage:v8 withOrientation:1 andIdentifier:0 completionHandler:v20];

      dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v18 = +[CLSLogging sharedLogging];
      v15 = [v18 loggingConnection];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v28 = v19;
        _os_log_error_impl(&dword_22F907000, v15, OS_LOG_TYPE_ERROR, "ContactImage: Cannot get CIImage from thumbnailImageData of contact %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = +[CLSLogging sharedLogging];
    v8 = [v16 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v28 = v17;
      _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "ContactImage: Contact %@ has a nil thumbnailImageData", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __92__CLSSocialServiceContacts_personLocalIdentifierMatchingContactPictureForContactIdentifier___block_invoke_260(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[CLSLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 67109634;
      *v34 = a2;
      *&v34[4] = 2112;
      *&v34[6] = v8;
      *&v34[14] = 2112;
      *&v34[16] = v5;
      _os_log_error_impl(&dword_22F907000, v7, OS_LOG_TYPE_ERROR, "ContactImage: Error while performRequest %d for %@: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = [*(a1 + 40) results];
    v10 = [v9 firstObject];

    v11 = +[CLSLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = [v10 resultItems];
      *buf = 138412546;
      *v34 = v13;
      *&v34[8] = 2048;
      *&v34[10] = [v14 count];
      _os_log_impl(&dword_22F907000, v12, OS_LOG_TYPE_INFO, "ContactImage: Image data processed for contact %@, Result count: %zu", buf, 0x16u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v10;
    v15 = [v10 resultItems];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v20 personIdentifier];
          [v20 confidence];
          v23 = v22;
          v24 = +[CLSLogging sharedLogging];
          v25 = [v24 loggingConnection];

          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
          if (v23 >= 0.45)
          {
            if (v26)
            {
              *buf = 138412290;
              *v34 = v21;
              _os_log_impl(&dword_22F907000, v25, OS_LOG_TYPE_INFO, "ContactImage: MAD Resolved personId = %@", buf, 0xCu);
            }

            objc_storeStrong((*(*(a1 + 56) + 8) + 40), v21);
            **(a1 + 64) = 1;
          }

          else
          {
            if (v26)
            {
              *buf = 134218242;
              *v34 = v23;
              *&v34[8] = 2112;
              *&v34[10] = v21;
              _os_log_impl(&dword_22F907000, v25, OS_LOG_TYPE_INFO, "ContactImage: MAD Resolved personId below confidence (%.2f) = %@", buf, 0x16u);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v7 = v27;
    v5 = 0;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)enumeratePersonsAndRelationshipUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__CLSSocialServiceContacts_enumeratePersonsAndRelationshipUsingBlock___block_invoke;
    v6[3] = &unk_2788A8498;
    v7 = blockCopy;
    [(CLSSocialServiceContacts *)self enumerateAllPersonsUsingBlock:v6];
  }
}

void __70__CLSSocialServiceContacts_enumeratePersonsAndRelationshipUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 relationship])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_fullNameWithContact:(id)contact
{
  v12[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [contactCopy areKeysAvailable:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    givenName = [contactCopy givenName];
    familyName = [contactCopy familyName];
    v7 = [v8 stringWithFormat:@"%@ %@", givenName, familyName];
  }

  return v7;
}

- (id)personForIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5623;
  v13 = __Block_byref_object_dispose__5624;
  v14 = 0;
  v15[0] = identifierCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__CLSSocialServiceContacts_personForIdentifier___block_invoke;
  v8[3] = &unk_2788A83A0;
  v8[4] = &v9;
  [(CLSSocialServiceContacts *)self enumeratePersonsForIdentifiers:v5 usingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)enumeratePersonsForIdentifiers:(id)identifiers usingBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  blockCopy = block;
  if (!blockCopy)
  {
    goto LABEL_36;
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_personsForCNIdentifiers objectForKeyedSubscript:v12];
        if (!v13)
        {
          [v38 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v9);
  }

  v14 = [v38 count];
  v35 = identifiersCopy;
  if (v14)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v14];
    v15 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v16 = [(CLSSocialServiceContacts *)self contactsForIdentifiers:v15];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * j);
          identifier = [v22 identifier];
          [v14 setObject:v22 forKeyedSubscript:identifier];
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v19);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v24 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v24)
  {
    goto LABEL_35;
  }

  v25 = v24;
  v26 = *v41;
  while (2)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*v41 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v40 + 1) + 8 * k);
      if (v14 && ([v14 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * k)], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v29;
        visualIdentifierView = self->_visualIdentifierView;
        identifier2 = [v29 identifier];
        v33 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:identifier2];

        v34 = [(CLSSocialServiceContacts *)self _personWithContact:v30 viewPerson:v33 createPersonIfNeeded:1];

        if (!v34)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v34 = [(NSMutableDictionary *)self->_personsForCNIdentifiers objectForKeyedSubscript:v28, v35];
        v30 = 0;
        if (!v34)
        {
          goto LABEL_31;
        }
      }

      v39 = 0;
      blockCopy[2](blockCopy, v34, &v39);
      if (v39)
      {

        goto LABEL_35;
      }

LABEL_31:
    }

    v25 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_35:

  identifiersCopy = v35;
LABEL_36:
}

- (id)personsInContactStoreForContactIdentifiers:(id)identifiers needsRefetching:(BOOL)refetching progressBlock:(id)block
{
  refetchingCopy = refetching;
  v58 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  blockCopy = block;
  v54 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (refetchingCopy)
  {
    [v40 unionSet:identifiersCopy];
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v10)
    {
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          if ([v13 length])
          {
            v14 = [(NSMutableDictionary *)selfCopy->_personsInContactStoreForCNIdentifiers objectForKeyedSubscript:v13];
            v15 = v14;
            if (v14)
            {
              cNIdentifier = [v14 CNIdentifier];
              v17 = [cNIdentifier length] == 0;

              if (!v17)
              {
                [v41 setObject:v15 forKeyedSubscript:v13];
              }
            }

            else
            {
              [v40 addObject:v13];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v10);
    }
  }

  if ([v40 count])
  {
    [(CLSSocialServiceContacts *)selfCopy contactsForIdentifiers:identifiersCopy];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v18 = v47 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v19)
    {
      v20 = *v47;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v23 = objc_autoreleasePoolPush();
          blockCopy[2](blockCopy, &v54, 0.5);
          v24 = v54;
          if ((v54 & 1) == 0)
          {
            identifier = [v22 identifier];
            if ([identifier length])
            {
              v26 = [(CLSSocialServiceContacts *)selfCopy __newPersonWithContact:v22 viewPerson:0];
              [v26 prefetchPersonAddressesIfNeededWithLocationCache:selfCopy->_locationCache];
              [v41 setObject:v26 forKeyedSubscript:identifier];
              [(NSMutableDictionary *)selfCopy->_personsInContactStoreForCNIdentifiers setObject:v26 forKeyedSubscript:identifier];
            }
          }

          objc_autoreleasePoolPop(v23);
          if (v24)
          {

            v35 = MEMORY[0x277CBEC10];
            goto LABEL_42;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v27 = MEMORY[0x277CBEB98];
    allKeys = [v41 allKeys];
    v37 = [v27 setWithArray:allKeys];

    [v40 minusSet:v37];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = v40;
    v30 = [v29 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v30)
    {
      v31 = *v43;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v42 + 1) + 8 * k);
          if ([v33 length])
          {
            v34 = objc_alloc_init(CLSPersonIdentity);
            [(NSMutableDictionary *)selfCopy->_personsInContactStoreForCNIdentifiers setObject:v34 forKeyedSubscript:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v30);
    }
  }

  v35 = v41;
LABEL_42:

  objc_sync_exit(selfCopy);

  return v35;
}

- (id)matchingDictionaryForContactIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:identifier];
  v5 = [(CLSSocialServiceContacts *)self contactsForIdentifiers:v4];

  if ([v5 count] == 1)
  {
    anyObject = [v5 anyObject];
    v7 = [MEMORY[0x277D3AC28] matchingDictionaryForContact:anyObject contactStore:self->_contactStore];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactsByIdentifierForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = objc_alloc(MEMORY[0x277CBDA70]);
    v6 = +[CLSSocialServiceContacts defaultKeysToFetch];
    v7 = [v5 initWithKeysToFetch:v6];

    v8 = MEMORY[0x277CBDA58];
    allObjects = [identifiersCopy allObjects];
    v10 = [v8 predicateForContactsWithIdentifiers:allObjects];
    [v7 setPredicate:v10];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contactStore = self->_contactStore;
    v18 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__CLSSocialServiceContacts_contactsByIdentifierForIdentifiers___block_invoke;
    v16[3] = &unk_2788A8470;
    v13 = dictionary;
    v17 = v13;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v7 error:&v18 usingBlock:v16];
    v14 = v18;
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  return v13;
}

void __63__CLSSocialServiceContacts_contactsByIdentifierForIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)contactsForIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x277CBDA70];
  identifiersCopy = identifiers;
  v6 = [v4 alloc];
  v7 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v8 = [v6 initWithKeysToFetch:v7];

  v9 = MEMORY[0x277CBDA58];
  allObjects = [identifiersCopy allObjects];

  v11 = [v9 predicateForContactsWithIdentifiers:allObjects];
  [v8 setPredicate:v11];

  v12 = [MEMORY[0x277CBEB58] set];
  contactStore = self->_contactStore;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__CLSSocialServiceContacts_contactsForIdentifiers___block_invoke;
  v17[3] = &unk_2788A8470;
  v14 = v12;
  v18 = v14;
  [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v8 error:&v19 usingBlock:v17];
  v15 = v19;

  return v14;
}

- (id)_allPersons
{
  [(CLSSocialServiceContacts *)self enumerateAllPersonsUsingBlock:0];
  allPersons = self->_allPersons;

  return allPersons;
}

- (void)enumerateAllPersonsUsingBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allPersons = selfCopy->_allPersons;
  if (allPersons)
  {
    if (blockCopy)
    {
      buf[0] = 0;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = allPersons;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v8)
      {
        v9 = *v21;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v7);
          }

          blockCopy[2](blockCopy, *(*(&v20 + 1) + 8 * v10), buf);
          if (buf[0])
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = selfCopy->_allPersons;
    selfCopy->_allPersons = array;

    v13 = objc_alloc(MEMORY[0x277CBDA70]);
    v14 = +[CLSSocialServiceContacts defaultKeysToFetch];
    v15 = [v13 initWithKeysToFetch:v14];

    contactStore = selfCopy->_contactStore;
    v26 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__CLSSocialServiceContacts_enumerateAllPersonsUsingBlock___block_invoke;
    v24[3] = &unk_2788A8448;
    v24[4] = selfCopy;
    v25 = blockCopy;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v15 error:&v26 usingBlock:v24];
    v17 = v26;
    if (v17)
    {
      v18 = +[CLSLogging sharedLogging];
      loggingConnection = [v18 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Error fetching all persons: %@", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __58__CLSSocialServiceContacts_enumerateAllPersonsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a2;
  v7 = [v6 identifier];
  v10 = [v5 personForIdentifier:v7];

  v8 = [*(a1 + 32) _personWithContact:v6 viewPerson:v10 createPersonIfNeeded:1];

  if (v8)
  {
    [*(*(a1 + 32) + 64) addObject:v8];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, a3);
  }
}

- (unint64_t)_relationshipForContact:(id)contact
{
  v41[13] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  identifier = [contactCopy identifier];
  identifier2 = [(CNContact *)self->_meContact identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    v8 = 14;
  }

  else
  {
    v9 = *MEMORY[0x277CBD5F0];
    v41[0] = *MEMORY[0x277CBD4A8];
    v41[1] = v9;
    v10 = *MEMORY[0x277CBD2C8];
    v41[2] = *MEMORY[0x277CBD678];
    v41[3] = v10;
    v11 = *MEMORY[0x277CBD318];
    v41[4] = *MEMORY[0x277CBD6F0];
    v41[5] = v11;
    v12 = *MEMORY[0x277CBD760];
    v41[6] = *MEMORY[0x277CBD4E8];
    v41[7] = v12;
    v13 = *MEMORY[0x277CBD248];
    v41[8] = *MEMORY[0x277CBD6D0];
    v41[9] = v13;
    v14 = *MEMORY[0x277CBD740];
    v41[10] = *MEMORY[0x277CBD5E8];
    v41[11] = v14;
    v41[12] = *MEMORY[0x277CBD3E0];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:13];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v17 = [(CLSSocialServiceContacts *)self _fullNameWithContact:contactCopy];
    v18 = [v17 clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    [(CNContact *)self->_meContact contactRelations];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v39 = 0u;
    v8 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v34 = v15;
      v35 = contactCopy;
      v20 = *v37;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v19);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          value = [v22 value];
          name = [value name];

          v25 = [name clsBetterComponentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
          [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:v25 andNameComponents:v18];
          v27 = v26;

          if (v27 >= 0.8)
          {
            label = [v22 label];
            v15 = v34;
            v29 = [v34 indexOfObject:label];
            if (v29 > 0xC)
            {
              v8 = 0;
            }

            else
            {
              v8 = qword_22F9926D0[v29];
            }

            contactCopy = v35;

            goto LABEL_16;
          }
        }

        v8 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      contactCopy = v35;
      v15 = v34;
    }

LABEL_16:

    organizationName = [(CNContact *)self->_meContact organizationName];
    organizationName2 = [contactCopy organizationName];
    v32 = organizationName2;
    if (organizationName && organizationName2 && (![organizationName rangeOfString:organizationName2 options:129] || !objc_msgSend(v32, "rangeOfString:options:", organizationName, 129)))
    {
      v8 |= 1uLL;
    }
  }

  return v8;
}

- (void)_addAddressesToPerson:(id)person withContact:(id)contact
{
  v27 = *MEMORY[0x277D85DE8];
  personCopy = person;
  contactCopy = contact;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v19 = contactCopy;
  [contactCopy postalAddresses];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = *MEMORY[0x277CBD8E0];
    v12 = *MEMORY[0x277CBD940];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        label = [v14 label];
        v16 = label;
        v17 = array;
        if (label == v11 || (v17 = array, ([label isEqualToString:v11] & 1) != 0) || (v17 = array2, v16 == v12) || (v17 = array2, objc_msgSend(v16, "isEqualToString:", v12)))
        {
          value = [v14 value];
          [v17 addObject:value];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    [personCopy addAddresses:array ofType:0];
  }

  if ([array2 count])
  {
    [personCopy addAddresses:array2 ofType:1];
  }
}

- (id)_cnPostalAddressForGDLocationAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(MEMORY[0x277CBDB78]);
  thoroughfare = [addressCopy thoroughfare];
  if (thoroughfare)
  {
    v6 = thoroughfare;
    subThoroughfare = [addressCopy subThoroughfare];
    if (subThoroughfare)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, subThoroughfare];

      v6 = v8;
    }

    [v4 setValue:v6 forKey:*MEMORY[0x277CBD980]];
  }

  subLocality = [addressCopy subLocality];
  if (subLocality)
  {
    [v4 setValue:subLocality forKey:*MEMORY[0x277CBD990]];
  }

  locality = [addressCopy locality];
  if (locality)
  {
    [v4 setValue:locality forKey:*MEMORY[0x277CBD948]];
  }

  postalCode = [addressCopy postalCode];
  if (postalCode)
  {
    [v4 setValue:postalCode forKey:*MEMORY[0x277CBD968]];
  }

  subAdministrativeArea = [addressCopy subAdministrativeArea];
  if (subAdministrativeArea)
  {
    [v4 setValue:subAdministrativeArea forKey:*MEMORY[0x277CBD988]];
  }

  administrativeArea = [addressCopy administrativeArea];
  if (administrativeArea)
  {
    [v4 setValue:administrativeArea forKey:*MEMORY[0x277CBD978]];
  }

  country = [addressCopy country];
  if (country)
  {
    [v4 setValue:country forKey:*MEMORY[0x277CBD950]];
  }

  iSOCountryCode = [addressCopy ISOCountryCode];
  if (iSOCountryCode)
  {
    [v4 setValue:iSOCountryCode forKey:*MEMORY[0x277CBD958]];
  }

  return v4;
}

- (unint64_t)_relationshipForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:*MEMORY[0x277CBD4A8]])
  {
    v4 = 10;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD5F0]])
  {
    v4 = 9;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD678]])
  {
    v4 = 8;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD2C8]])
  {
    v4 = 11;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD6F0]])
  {
    v4 = 12;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD318]])
  {
    v4 = 5;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD4E8]])
  {
    v4 = 2;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD6D0]] & 1) != 0 || (objc_msgSend(labelCopy, "isEqualToString:", *MEMORY[0x277CBD760]))
  {
    v4 = 13;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD248]] & 1) != 0 || (objc_msgSend(labelCopy, "isEqualToString:", *MEMORY[0x277CBD5E8]))
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD740]])
  {
    v4 = 7;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277CBD3E0]])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_addMissingPropertiesToPerson:(id)person withViewPerson:(id)viewPerson
{
  v62 = *MEMORY[0x277D85DE8];
  personCopy = person;
  viewPersonCopy = viewPerson;
  v49 = personCopy;
  anniversaryDate = [personCopy anniversaryDate];
  if (!anniversaryDate)
  {
    anniversary = [viewPersonCopy anniversary];

    if (!anniversary)
    {
      goto LABEL_5;
    }

    anniversaryDate = [viewPersonCopy anniversary];
    v9 = [CLSCalendar dateFromComponents:anniversaryDate inTimeZone:0];
    [personCopy setAnniversaryDate:v9];
  }

LABEL_5:
  birthdayDate = [personCopy birthdayDate];
  if (birthdayDate)
  {
LABEL_8:

    goto LABEL_9;
  }

  dateOfBirth = [viewPersonCopy dateOfBirth];

  if (dateOfBirth)
  {
    birthdayDate = [viewPersonCopy dateOfBirth];
    v12 = [CLSCalendar dateFromComponents:birthdayDate inTimeZone:0];
    [personCopy setBirthdayDate:v12];

    goto LABEL_8;
  }

LABEL_9:
  if (([personCopy hasAddresses] & 1) == 0)
  {
    locations = [viewPersonCopy locations];
    v14 = [locations count];

    if (v14)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v47 = viewPersonCopy;
      locations2 = [viewPersonCopy locations];
      v16 = [locations2 countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v16;
      v18 = *v55;
      v19 = *MEMORY[0x277CBD8E0];
      v20 = *MEMORY[0x277CBD940];
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(locations2);
          }

          v22 = *(*(&v54 + 1) + 8 * i);
          label = [v22 label];
          if ([label length])
          {
            if ([label isEqualToString:v19])
            {
              addresses = [v22 addresses];
              firstObject = [addresses firstObject];
              v26 = [(CLSSocialServiceContacts *)self _cnPostalAddressForGDLocationAddress:firstObject];

              v27 = 0;
              v60 = v26;
              v28 = &v60;
            }

            else
            {
              if (![label isEqualToString:v20])
              {
                goto LABEL_22;
              }

              addresses2 = [v22 addresses];
              firstObject2 = [addresses2 firstObject];
              v26 = [(CLSSocialServiceContacts *)self _cnPostalAddressForGDLocationAddress:firstObject2];

              v59 = v26;
              v28 = &v59;
              v27 = 1;
            }

            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
            [v49 addAddresses:v31 ofType:v27];
          }

LABEL_22:
        }

        v17 = [locations2 countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (!v17)
        {
LABEL_24:

          viewPersonCopy = v47;
          break;
        }
      }
    }
  }

  if (self->_meViewPerson)
  {
    if (![v49 relationship])
    {
      relatedPeople = [viewPersonCopy relatedPeople];
      v33 = [relatedPeople count];

      if (v33)
      {
        entityIdentifier = [(GDVisualIdentifierViewPerson *)self->_meViewPerson entityIdentifier];
        stringValue = [entityIdentifier stringValue];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v36 = viewPersonCopy;
        relatedPeople2 = [viewPersonCopy relatedPeople];
        v38 = [relatedPeople2 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v51;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v51 != v40)
              {
                objc_enumerationMutation(relatedPeople2);
              }

              v42 = *(*(&v50 + 1) + 8 * j);
              linkedPersonEntityIdentifier = [v42 linkedPersonEntityIdentifier];
              stringValue2 = [linkedPersonEntityIdentifier stringValue];
              v45 = [stringValue2 isEqualToString:stringValue];

              if (v45)
              {
                relationshipLabel = [v42 relationshipLabel];
                [v49 setRelationship:{-[CLSSocialServiceContacts _relationshipForLabel:](self, "_relationshipForLabel:", relationshipLabel)}];
              }
            }

            v39 = [relatedPeople2 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v39);
        }

        viewPersonCopy = v36;
      }
    }
  }
}

- (void)_addDelegateAddressesToPerson:(id)person ofType:(unint64_t)type
{
  personCopy = person;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained mePersonAddressesOfType:type];

  [personCopy prefetchPersonAddressesIfNeededWithLocationCache:self->_locationCache];
  v9 = MEMORY[0x277CCAC30];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__CLSSocialServiceContacts__addDelegateAddressesToPerson_ofType___block_invoke;
  v16 = &unk_2788A8420;
  v10 = personCopy;
  v17 = v10;
  typeCopy = type;
  v11 = [v9 predicateWithBlock:&v13];
  v12 = [v8 filteredArrayUsingPredicate:{v11, v13, v14, v15, v16}];

  if ([v12 count])
  {
    [v10 addAddresses:v12 ofType:type];
  }
}

BOOL __65__CLSSocialServiceContacts__addDelegateAddressesToPerson_ofType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__CLSSocialServiceContacts__addDelegateAddressesToPerson_ofType___block_invoke_2;
  v12[3] = &unk_2788A83F8;
  v14 = &v15;
  v9 = v5;
  v13 = v9;
  [v7 enumerateAddressesOfType:v8 asPlacemarkWithBlock:v12];
  v10 = *(v16 + 24) == 0;

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __65__CLSSocialServiceContacts__addDelegateAddressesToPerson_ofType___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 location];
  v6 = [*(a1 + 32) location];
  [v5 distanceFromLocation:v6];
  *(*(*(a1 + 40) + 8) + 24) = v7 <= 100.0;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

- (id)__newPersonWithContact:(id)contact viewPerson:(id)person
{
  v90 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  personCopy = person;
  v8 = personCopy;
  if (!contactCopy)
  {
    if (personCopy)
    {
      goto LABEL_45;
    }

    v10 = 0;
    goto LABEL_47;
  }

  identifier = [contactCopy identifier];
  v10 = [CLSPersonIdentity personWithCNIdentifier:identifier];

  givenName = [contactCopy givenName];
  if ([givenName length])
  {
  }

  else
  {
    familyName = [contactCopy familyName];
    v13 = [familyName length];

    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CCAC00]);
  givenName2 = [contactCopy givenName];
  [v14 setGivenName:givenName2];

  familyName2 = [contactCopy familyName];
  [v14 setFamilyName:familyName2];

  v17 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v14 style:1 options:0];
  [v10 setLocalizedShortName:v17];

LABEL_8:
  v71 = v8;
  v18 = [(CLSSocialServiceContacts *)self _fullNameWithContact:contactCopy];
  [v10 setFullName:v18];
  givenName3 = [contactCopy givenName];
  [v10 setFirstName:givenName3];

  middleName = [contactCopy middleName];
  [v10 setMiddleName:middleName];

  familyName3 = [contactCopy familyName];
  [v10 setLastName:familyName3];

  nickname = [contactCopy nickname];
  [v10 setNickname:nickname];

  birthday = [contactCopy birthday];
  v24 = [CLSCalendar dateFromComponents:birthday inTimeZone:0];
  [v10 setBirthdayDate:v24];

  birthdayDate = [v10 birthdayDate];

  if (!birthdayDate)
  {
    identifier2 = [contactCopy identifier];
    v27 = [(CLSSocialServiceContacts *)self potentialBirthdayDateForCNIdentifier:identifier2 fullName:v18];

    [v10 setPotentialBirthdayDate:v27];
  }

  v69 = v18;
  organizationName = [contactCopy organizationName];
  [v10 setCompanyName:organizationName];

  [v10 setRelationship:{-[CLSSocialServiceContacts _relationshipForContact:](self, "_relationshipForContact:", contactCopy)}];
  [contactCopy dates];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v29 = v86 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v84;
    v33 = *MEMORY[0x277CBD8D0];
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v84 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v83 + 1) + 8 * i);
        label = [v35 label];
        v37 = label;
        if (label == v33 || [label isEqualToString:v33])
        {
          value = [v35 value];
          v39 = [CLSCalendar dateFromComponents:value inTimeZone:0];
          [v10 setAnniversaryDate:v39];

          goto LABEL_21;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v83 objects:v89 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  selfCopy = self;

  phoneNumbers = [contactCopy phoneNumbers];
  v41 = [phoneNumbers count];

  if (v41)
  {
    [v10 setHasPhoneNumber:1];
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v44 = [emailAddresses countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v80;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v80 != v46)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value2 = [*(*(&v79 + 1) + 8 * j) value];
        lowercaseString = [value2 lowercaseString];
        [v42 addObject:lowercaseString];
      }

      v45 = [emailAddresses countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v45);
  }

  [v10 setEmailAddresses:v42];
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  phoneNumbers2 = [contactCopy phoneNumbers];
  v52 = [phoneNumbers2 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v76;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v76 != v54)
        {
          objc_enumerationMutation(phoneNumbers2);
        }

        value3 = [*(*(&v75 + 1) + 8 * k) value];
        stringValue = [value3 stringValue];
        [v50 addObject:stringValue];
      }

      v53 = [phoneNumbers2 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v53);
  }

  [v10 setPhoneNumbers:v50];
  self = selfCopy;
  [(CLSSocialServiceContacts *)selfCopy _addAddressesToPerson:v10 withContact:contactCopy];
  v8 = v71;
  if ([v10 isMe])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    if ([WeakRetained hasAddressesForMePerson])
    {
      [(CLSSocialServiceContacts *)selfCopy _addDelegateAddressesToPerson:v10 ofType:0];
      [(CLSSocialServiceContacts *)selfCopy _addDelegateAddressesToPerson:v10 ofType:1];
    }
  }

  socialProfiles = [contactCopy socialProfiles];
  v60 = [socialProfiles count];

  if (v60)
  {
    v61 = objc_opt_new();
    socialProfiles2 = [contactCopy socialProfiles];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __62__CLSSocialServiceContacts___newPersonWithContact_viewPerson___block_invoke;
    v72[3] = &unk_2788A83C8;
    v63 = v10;
    v73 = v63;
    v74 = v61;
    v64 = v61;
    [socialProfiles2 enumerateObjectsUsingBlock:v72];

    [v63 setSocialProfiles:v64];
  }

  [v10 setHasContactProfilePicture:{objc_msgSend(contactCopy, "imageDataAvailable")}];
  identifier3 = [contactCopy identifier];
  [v10 setSourceService:@"contacts" andID:identifier3];

  if (v71)
  {
    if (v10)
    {
LABEL_46:
      [(CLSSocialServiceContacts *)self _addMissingPropertiesToPerson:v10 withViewPerson:v8];
      goto LABEL_47;
    }

LABEL_45:
    entityIdentifier = [v8 entityIdentifier];
    stringValue2 = [entityIdentifier stringValue];

    v10 = [CLSPersonIdentity personWithGDIdentifier:stringValue2];
    [v10 setSourceService:@"megadome" andID:stringValue2];

    goto LABEL_46;
  }

LABEL_47:

  return v10;
}

void __62__CLSSocialServiceContacts___newPersonWithContact_viewPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v10 = [v4 service];

  v5 = [v3 value];

  v6 = [v5 username];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [*(a1 + 32) fullName];
  }

  v9 = v8;

  if (v10 && v9)
  {
    [*(a1 + 40) setObject:v9 forKey:v10];
  }
}

- (id)_personWithContactIdentifier:(id)identifier
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5623;
  v17 = __Block_byref_object_dispose__5624;
  v18 = 0;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_personsForCNIdentifiers objectForKeyedSubscript:identifierCopy];
    v7 = v14[5];
    v14[5] = v6;

    objc_sync_exit(selfCopy);
    v8 = v14[5];
    if (!v8)
    {
      v19[0] = identifierCopy;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__CLSSocialServiceContacts__personWithContactIdentifier___block_invoke;
      v12[3] = &unk_2788A83A0;
      v12[4] = &v13;
      [(CLSSocialServiceContacts *)selfCopy enumeratePersonsForIdentifiers:v9 usingBlock:v12];

      v8 = v14[5];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)_personWithContact:(id)contact viewPerson:(id)person createPersonIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  contactCopy = contact;
  personCopy = person;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (contactCopy)
  {
    identifier = [contactCopy identifier];
    v12 = [(NSMutableDictionary *)selfCopy->_personsForCNIdentifiers objectForKeyedSubscript:identifier];
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = !neededCopy;
    }

    if (!v13)
    {
      v12 = [(CLSSocialServiceContacts *)selfCopy __newPersonWithContact:contactCopy viewPerson:personCopy];
      if (v12)
      {
        [(NSMutableDictionary *)selfCopy->_personsForCNIdentifiers setObject:v12 forKeyedSubscript:identifier];
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  if (personCopy)
  {
    entityIdentifier = [personCopy entityIdentifier];
    identifier = [entityIdentifier stringValue];

    v12 = [(NSMutableDictionary *)selfCopy->_personsForGDIdentifiers objectForKeyedSubscript:identifier];
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = !neededCopy;
    }

    if (!v15)
    {
      v12 = [(CLSSocialServiceContacts *)selfCopy __newPersonWithContact:0 viewPerson:personCopy];
      if (v12)
      {
        [(NSMutableDictionary *)selfCopy->_personsForGDIdentifiers setObject:v12 forKeyedSubscript:identifier];
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:
  objc_sync_exit(selfCopy);

  return v12;
}

- (id)_personResultsForPersonLocalIdentifier:(id)identifier isLackingFaces:(BOOL *)faces inPhotoLibrary:(id)library
{
  v40[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  libraryCopy = library;
  v10 = libraryCopy;
  if (faces)
  {
    *faces = 0;
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v11 = MEMORY[0x277CD9938];
  v40[0] = identifierCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v13 = [v11 fetchPersonsWithLocalIdentifiers:v12 options:librarySpecificFetchOptions];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    librarySpecificFetchOptions2 = [v10 librarySpecificFetchOptions];
    v39 = *MEMORY[0x277CD9BC8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v16];

    v17 = [MEMORY[0x277CD9868] fetchKeyFaceForPerson:firstObject options:librarySpecificFetchOptions2];
    firstObject2 = [v17 firstObject];
    v36 = -[CLSSocialServiceContacts _sexFromFaceBiologicalSex:](self, "_sexFromFaceBiologicalSex:", [firstObject2 sexType]);
    v35 = -[CLSSocialServiceContacts _ageCategoryFromFaceAgeType:](self, "_ageCategoryFromFaceAgeType:", [firstObject2 ageType]);
    name = [firstObject name];
    personUri = [firstObject personUri];

    if (personUri && [personUri length])
    {
      person = [(CLSSocialServiceContacts *)self _personWithContactIdentifier:personUri];
    }

    else
    {
      person = 0;
    }

    v22 = 1.0;
    if (name && [name length] && !person)
    {
      v23 = [(CLSSocialServiceContacts *)self _personResultsForfullName:name];
      if ([v23 count])
      {
        firstObject3 = [v23 firstObject];
        [firstObject3 confidence];
        if (v25 >= 1.0)
        {
          person = [firstObject3 person];
          [firstObject3 confidence];
          v22 = v27;
        }

        else
        {
          person = 0;
        }
      }

      else
      {
        person = 0;
      }
    }

    if (person)
    {
      sourceService = [person sourceService];
      v29 = [sourceService isEqualToString:@"megadome"];

      if (v29)
      {
        name2 = [firstObject name];
        [person setFullName:name2];
      }

      [person setLocalIdentifier:identifierCopy];
      [person setIsFavorite:{objc_msgSend(firstObject, "type") == 1}];
      [person setIsHidden:{objc_msgSend(firstObject, "type") == -1}];
      [person setIsUserCreated:1];
    }

    else
    {
      person = [CLSPersonIdentity personWithPHPerson:firstObject];
    }

    [person setAgeCategory:v35];
    [person setSex:v36];
    v31 = self->_personsForLocalIdentifier;
    objc_sync_enter(v31);
    [(NSMutableDictionary *)self->_personsForLocalIdentifier setObject:person forKeyedSubscript:identifierCopy];
    objc_sync_exit(v31);

    *&v32 = v22;
    v33 = [CLSPersonIdentityResult personResultWithPerson:person andConfidence:v32];
    v38 = v33;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_personResultsForfullName:(id)name
{
  v53 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke;
  aBlock[3] = &unk_2788A8300;
  aBlock[4] = self;
  v6 = nameCopy;
  v48 = v6;
  v51 = 0;
  v7 = v5;
  v49 = v7;
  v50 = 0;
  v8 = _Block_copy(aBlock);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke_2;
  v45[3] = &unk_2788A8328;
  v9 = v8;
  v46 = v9;
  v10 = _Block_copy(v45);
  v11 = v10;
  if (self->_visualIdentifierView)
  {
    v36 = v10;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    visualIdentifierView = self->_visualIdentifierView;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke_3;
    v42[3] = &unk_2788A8350;
    v15 = v13;
    v43 = v15;
    v16 = v12;
    v44 = v16;
    v37 = v6;
    [(GDVisualIdentifierView *)visualIdentifierView enumeratePeopleMatchingName:v6 block:v42];
    v35 = v16;
    v17 = [(CLSSocialServiceContacts *)self contactsByIdentifierForIdentifiers:v16];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          contactIdentifiers = [v23 contactIdentifiers];
          firstObject = [contactIdentifiers firstObject];

          if ([firstObject length])
          {
            v26 = [v17 objectForKeyedSubscript:firstObject];
          }

          else
          {
            v26 = 0;
          }

          (*(v9 + 2))(v9, v26, v23);
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v20);
    }

    v6 = v37;
    v27 = v35;
    v11 = v36;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CBDA70]);
    v29 = +[CLSSocialServiceContacts defaultKeysToFetch];
    v27 = [v28 initWithKeysToFetch:v29];

    v30 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v6];
    [v27 setPredicate:v30];

    [(CNContactStore *)self->_contactStore enumerateContactsAndMatchInfoWithFetchRequest:v27 error:0 usingBlock:v11];
  }

  if ([0 count] < 2)
  {
    v31 = v7;
  }

  else
  {
    v31 = [v7 sortedArrayUsingComparator:&__block_literal_global_237];
  }

  v32 = v31;
  v33 = v31;

  return v32;
}

void __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  [*(a1 + 32) _confidenceInPersonRecord:v14 viewPerson:v5 forName:*(a1 + 40) components:0];
  v6 = *&v7;
  LODWORD(v7) = 1.0;
  if (*(a1 + 64) == 1)
  {
    v8 = v14;
    if (v6 != 1.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 1.0)
  {
    [*(a1 + 48) removeAllObjects];
LABEL_7:
    v9 = [*(a1 + 32) _personWithContact:v14 viewPerson:v5 createPersonIfNeeded:1];
    v10 = *(a1 + 48);
    *&v11 = v6;
    v12 = [CLSPersonIdentityResult personResultWithPerson:v9 andConfidence:v11];
    [v10 addObject:v12];

    v8 = v14;
    goto LABEL_8;
  }

  LODWORD(v7) = 0.5;
  v8 = v14;
  if (v6 >= 0.5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v8)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      [v13 addObject:{v14, v7}];
    }
  }
}

void __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [v4 contactIdentifiers];

  v6 = [v5 firstObject];

  if ([v6 length])
  {
    [*(a1 + 40) addObject:v6];
  }
}

uint64_t __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 >= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)personResultsForName:(id)name inPhotoLibrary:(id)library
{
  v16[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  libraryCopy = library;
  v8 = self->_personsForLocalIdentifier;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_personsForLocalIdentifier objectForKeyedSubscript:nameCopy];
  objc_sync_exit(v8);

  if (v9 || (v11 = self->_personsInContactStoreForCNIdentifiers, objc_sync_enter(v11), [(NSMutableDictionary *)self->_personsInContactStoreForCNIdentifiers objectForKeyedSubscript:nameCopy], v9 = objc_claimAutoreleasedReturnValue(), objc_sync_exit(v11), v11, v9))
  {
    LODWORD(v10) = 1.0;
    v12 = [CLSPersonIdentityResult personResultWithPerson:v9 andConfidence:v10];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

    v15 = 0;
    if (v13)
    {
      goto LABEL_11;
    }

    if (!libraryCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    if (!libraryCopy)
    {
      goto LABEL_10;
    }
  }

  v13 = [(CLSSocialServiceContacts *)self _personResultsForPersonLocalIdentifier:nameCopy isLackingFaces:&v15 inPhotoLibrary:libraryCopy];
  if (v13)
  {
    goto LABEL_11;
  }

  if (v15)
  {
    v13 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v13 = [(CLSSocialServiceContacts *)self _personResultsForfullName:nameCopy];
LABEL_11:

  return v13;
}

- (id)mePerson
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_mePerson)
  {
    meContact = selfCopy->_meContact;
    if (meContact)
    {
      visualIdentifierView = selfCopy->_visualIdentifierView;
      identifier = [(CNContact *)meContact identifier];
      v6 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:identifier];

      v7 = selfCopy->_meContact;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = [(CLSSocialServiceContacts *)selfCopy _personWithContact:v7 viewPerson:v6 createPersonIfNeeded:1];
    v9 = v8;
    if (!v8)
    {
LABEL_14:
      mePerson = selfCopy->_mePerson;
      selfCopy->_mePerson = v9;
      v19 = v9;

      meViewPerson = selfCopy->_meViewPerson;
      selfCopy->_meViewPerson = v6;

      goto LABEL_15;
    }

    localIdentifier = [(CLSPersonIdentity *)v8 localIdentifier];
    if (!localIdentifier)
    {
      fullName = [(CLSPersonIdentity *)v9 fullName];

      if (!fullName)
      {
        goto LABEL_10;
      }

      localIdentifier = selfCopy->_personsForLocalIdentifier;
      objc_sync_enter(localIdentifier);
      personsForLocalIdentifier = selfCopy->_personsForLocalIdentifier;
      fullName2 = [(CLSPersonIdentity *)v9 fullName];
      v14 = [(NSMutableDictionary *)personsForLocalIdentifier objectForKeyedSubscript:fullName2];
      localIdentifier2 = [v14 localIdentifier];
      [(CLSPersonIdentity *)v9 setLocalIdentifier:localIdentifier2];

      objc_sync_exit(localIdentifier);
    }

LABEL_10:
    if (![(CLSPersonIdentity *)v9 isMe])
    {
      v16 = +[CLSLogging sharedLogging];
      loggingConnection = [v16 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
      {
        relationship = [(CLSPersonIdentity *)v9 relationship];
        identifier2 = [(CNContact *)selfCopy->_meContact identifier];
        cNIdentifier = [(CLSPersonIdentity *)v9 CNIdentifier];
        v26 = 134218754;
        v27 = relationship;
        v28 = 2048;
        v29 = 14;
        v30 = 2112;
        v31 = identifier2;
        v32 = 2112;
        v33 = cNIdentifier;
        _os_log_fault_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_FAULT, "mePerson has invalid relationship: %tu, expected %tu. meContact id: %@, mePerson id: %@", &v26, 0x2Au);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_sync_exit(selfCopy);

  v21 = selfCopy->_mePerson;

  return v21;
}

- (void)refreshMeContactIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_meContact && selfCopy->_contactStore)
  {
    v3 = [(CLSSocialServiceContacts *)selfCopy fetchMeCardFromContactStore:?];
    meContact = selfCopy->_meContact;
    selfCopy->_meContact = v3;

    v5 = +[CLSLogging sharedLogging];
    loggingConnection = [v5 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v7 = selfCopy->_meContact;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Fetched me contact card, got %@", &v8, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)inferredDeviceOwnerForPhotoLibrary:(id)library ignoreContactLinking:(BOOL)linking
{
  linkingCopy = linking;
  v32 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  v7 = [(CLSSocialServiceContacts *)self visionCacheStorageDirectoryURLForPhotoLibrary:libraryCopy];
  v28 = 0;
  v8 = [[CLSVisualUnderstandingServiceClient alloc] initWithVisionCacheURL:v7 error:&v28];
  v9 = v28;
  if (v8)
  {
    v10 = [(CLSVisualUnderstandingServiceClient *)v8 deviceOwnerPersonUUIDWithIgnoreContactsLinking:linkingCopy];
    v11 = +[CLSLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Device owner uuid %@", buf, 0xCu);
    }

    if (v10)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      [librarySpecificFetchOptions setPersonContext:1];
      [librarySpecificFetchOptions setFetchLimit:1];
      v27 = v7;
      v14 = v9;
      v15 = MEMORY[0x277CD9938];
      uUIDString = [v10 UUIDString];
      v17 = [v15 localIdentifierWithUUID:uUIDString];

      v18 = MEMORY[0x277CD9938];
      v29 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v20 = [v18 fetchPersonsWithLocalIdentifiers:v19 options:librarySpecificFetchOptions];
      fetchedObjects = [v20 fetchedObjects];
      firstObject = [fetchedObjects firstObject];

      v9 = v14;
      v7 = v27;
    }

    else
    {
      firstObject = 0;
    }

    loggingConnection2 = firstObject;

    v25 = loggingConnection2;
  }

  else
  {
    v23 = +[CLSLogging sharedLogging];
    loggingConnection2 = [v23 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "Failed to get VU Service %@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)visionCacheStorageDirectoryURLForPhotoLibrary:(id)library
{
  v13 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  if ([libraryCopy isSystemPhotoLibrary])
  {
    v10 = 0;
    v4 = [libraryCopy urlForApplicationDataFolderIdentifier:2 error:&v10];

    v5 = v10;
    if (!v4)
    {
      v6 = +[CLSLogging sharedLogging];
      loggingConnection = [v6 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to access the visual service URL. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    photoLibraryURL = [libraryCopy photoLibraryURL];

    v4 = [photoLibraryURL URLByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision"];
  }

  return v4;
}

- (void)invalidateMemoryCaches
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  personByHandle = self->_personByHandle;
  self->_personByHandle = dictionary;

  v5 = [MEMORY[0x277CBEB58] set];
  nonFoundHandles = self->_nonFoundHandles;
  self->_nonFoundHandles = v5;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  personByFullName = self->_personByFullName;
  self->_personByFullName = dictionary2;

  v9 = [MEMORY[0x277CBEB58] set];
  nonFoundFullNames = self->_nonFoundFullNames;
  self->_nonFoundFullNames = v9;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  personsForLocalIdentifier = self->_personsForLocalIdentifier;
  self->_personsForLocalIdentifier = dictionary3;

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  personsForCNIdentifiers = self->_personsForCNIdentifiers;
  self->_personsForCNIdentifiers = dictionary4;

  self->_personsForGDIdentifiers = [MEMORY[0x277CBEB38] dictionary];

  MEMORY[0x2821F96F8]();
}

- (void)invalidateMePerson
{
  obj = self;
  objc_sync_enter(obj);
  mePerson = obj->_mePerson;
  obj->_mePerson = 0;

  objc_sync_exit(obj);
}

- (id)_initializeVisualIdentifierView
{
  v13 = *MEMORY[0x277D85DE8];
  defaultService = [MEMORY[0x277D1F480] defaultService];
  v9 = 0;
  v3 = [defaultService visualIdentifierViewWithError:&v9];
  v4 = v9;
  if (v3)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CLSSocialServiceContacts__initializeVisualIdentifierView__block_invoke;
    v8[3] = &unk_2788A82D8;
    v8[4] = &buf;
    [v3 enumeratePeopleWithBlock:v8];
    if (*(*(&buf + 1) + 24))
    {
      v5 = v3;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Megadome] failed to get visualIdentifierView with error: Graph has not yet been run", v7, 2u);
      }

      v5 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Megadome] failed to get visualIdentifierView with error: %@", &buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t __59__CLSSocialServiceContacts__initializeVisualIdentifierView__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (id)fetchMeCardFromContactStore:(id)store
{
  v14 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v4 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v11 = 0;
  v5 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v11];

  v6 = v11;
  if (v6)
  {
    v7 = +[CLSLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Error gaining access to me: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (CLSSocialServiceContacts)initWithLocationCache:(id)cache
{
  cacheCopy = cache;
  v47.receiver = self;
  v47.super_class = CLSSocialServiceContacts;
  v6 = [(CLSSocialServiceContacts *)&v47 init];
  v7 = v6;
  if (v6)
  {
    _initializeVisualIdentifierView = [(CLSSocialServiceContacts *)v6 _initializeVisualIdentifierView];
    visualIdentifierView = v7->_visualIdentifierView;
    v7->_visualIdentifierView = _initializeVisualIdentifierView;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personByFullName = v7->_personByFullName;
    v7->_personByFullName = dictionary;

    v12 = [MEMORY[0x277CBEB58] set];
    nonFoundFullNames = v7->_nonFoundFullNames;
    v7->_nonFoundFullNames = v12;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    personByHandle = v7->_personByHandle;
    v7->_personByHandle = dictionary2;

    v16 = [MEMORY[0x277CBEB58] set];
    nonFoundHandles = v7->_nonFoundHandles;
    v7->_nonFoundHandles = v16;

    objc_storeStrong(&v7->_locationCache, cache);
    v18 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__5623;
    v45 = __Block_byref_object_dispose__5624;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v19 = dispatch_semaphore_create(0);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50__CLSSocialServiceContacts_initWithLocationCache___block_invoke;
    v31[3] = &unk_2788A82B0;
    v35 = &v37;
    v36 = &v41;
    v7 = v7;
    v32 = v7;
    v20 = v18;
    v33 = v20;
    v21 = v19;
    v34 = v21;
    [v20 requestAccessForEntityType:0 completionHandler:v31];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v38 + 24) == 1)
    {
      objc_storeStrong(&v7->_contactStore, v18);
      objc_storeStrong(&v7->_meContact, v42[5]);
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      personsForCNIdentifiers = v7->_personsForCNIdentifiers;
      v7->_personsForCNIdentifiers = dictionary3;

      dictionary4 = [MEMORY[0x277CBEB38] dictionary];
      personsInContactStoreForCNIdentifiers = v7->_personsInContactStoreForCNIdentifiers;
      v7->_personsInContactStoreForCNIdentifiers = dictionary4;

      dictionary5 = [MEMORY[0x277CBEB38] dictionary];
      personsForGDIdentifiers = v7->_personsForGDIdentifiers;
      v7->_personsForGDIdentifiers = dictionary5;

      dictionary6 = [MEMORY[0x277CBEB38] dictionary];
      personsForLocalIdentifier = v7->_personsForLocalIdentifier;
      v7->_personsForLocalIdentifier = dictionary6;
    }

    else
    {
      personsForLocalIdentifier = v7;
      v7 = 0;
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  return v7;
}

void __50__CLSSocialServiceContacts_initWithLocationCache___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v12 = +[CLSLogging sharedLogging];
    v10 = [v12 loggingConnection];

    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_error_impl(&dword_22F907000, v10, OS_LOG_TYPE_ERROR, "Error gaining access to Contacts: %@", &v13, 0xCu);
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v11 = "Not authorized to access Contacts";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v6 = [*(a1 + 32) fetchMeCardFromContactStore:*(a1 + 40)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = +[CLSLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v11 = "Contact for me is nil";
LABEL_11:
      _os_log_impl(&dword_22F907000, v10, OS_LOG_TYPE_INFO, v11, &v13, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 48));
}

+ (id)defaultKeysToFetch
{
  v10[15] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x277CBD000], *MEMORY[0x277CBD058], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBD0E0], *MEMORY[0x277CBD078]}];
  v3 = *MEMORY[0x277CBD090];
  v10[5] = v2;
  v10[6] = v3;
  v4 = *MEMORY[0x277CBCFC0];
  v10[7] = *MEMORY[0x277CBCF90];
  v10[8] = v4;
  v5 = *MEMORY[0x277CBD0C8];
  v10[9] = *MEMORY[0x277CBD098];
  v10[10] = v5;
  v6 = *MEMORY[0x277CBD120];
  v10[11] = *MEMORY[0x277CBCFB0];
  v10[12] = v6;
  v7 = *MEMORY[0x277CBD020];
  v10[13] = *MEMORY[0x277CBD138];
  v10[14] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:15];

  return v8;
}

+ (BOOL)canAccessContactsStore
{
  if (canAccessContactsStore_onceToken != -1)
  {
    dispatch_once(&canAccessContactsStore_onceToken, &__block_literal_global_5677);
  }

  return canAccessContactsStore_isDeviceGreenTea != 1 || [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3;
}

uint64_t __50__CLSSocialServiceContacts_canAccessContactsStore__block_invoke()
{
  result = PLIsChinaSKU();
  canAccessContactsStore_isDeviceGreenTea = result;
  return result;
}

@end