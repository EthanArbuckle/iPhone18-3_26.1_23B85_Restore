@interface CLSSocialServiceContacts
+ (BOOL)canAccessContactsStore;
+ (id)defaultKeysToFetch;
- (CLSSocialServiceContacts)initWithLocationCache:(id)a3;
- (CLSSocialServiceContactsDelegate)delegate;
- (float)_confidenceInPersonRecord:(id)a3 viewPerson:(id)a4 forName:(id)a5 components:(id)a6;
- (float)_fuzzyMatchingScoreBetweenNameComponents:(id)a3 andNameComponents:(id)a4;
- (id)__newPersonWithContact:(id)a3 viewPerson:(id)a4;
- (id)_allPersons;
- (id)_cnPostalAddressForGDLocationAddress:(id)a3;
- (id)_fullNameWithContact:(id)a3;
- (id)_initializeVisualIdentifierView;
- (id)_personResultsForPersonLocalIdentifier:(id)a3 isLackingFaces:(BOOL *)a4 inPhotoLibrary:(id)a5;
- (id)_personResultsForfullName:(id)a3;
- (id)_personWithContact:(id)a3 viewPerson:(id)a4 createPersonIfNeeded:(BOOL)a5;
- (id)_personWithContactIdentifier:(id)a3;
- (id)_personsMatchingPredicate:(id)a3;
- (id)contactsByIdentifierForIdentifiers:(id)a3;
- (id)contactsForIdentifiers:(id)a3;
- (id)fetchMeCardFromContactStore:(id)a3;
- (id)inferredDeviceOwnerForPhotoLibrary:(id)a3 ignoreContactLinking:(BOOL)a4;
- (id)matchingDictionaryForContactIdentifier:(id)a3;
- (id)mePerson;
- (id)personForIdentifier:(id)a3;
- (id)personForPersonHandle:(id)a3;
- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)a3;
- (id)personResultsForName:(id)a3 inPhotoLibrary:(id)a4;
- (id)personsInContactStoreForContactIdentifiers:(id)a3 needsRefetching:(BOOL)a4 progressBlock:(id)a5;
- (id)potentialBirthdayDateForCNIdentifier:(id)a3 fullName:(id)a4;
- (id)suggestionsService;
- (id)visionCacheStorageDirectoryURLForPhotoLibrary:(id)a3;
- (unint64_t)_ageCategoryFromFaceAgeType:(unsigned __int16)a3;
- (unint64_t)_relationshipForContact:(id)a3;
- (unint64_t)_relationshipForLabel:(id)a3;
- (unint64_t)_sexFromFaceBiologicalSex:(unsigned __int16)a3;
- (void)_addAddressesToPerson:(id)a3 withContact:(id)a4;
- (void)_addDelegateAddressesToPerson:(id)a3 ofType:(unint64_t)a4;
- (void)_addMissingPropertiesToPerson:(id)a3 withViewPerson:(id)a4;
- (void)enumerateAllPersonsUsingBlock:(id)a3;
- (void)enumeratePersonsAndPotentialBirthdayDateForContactIdentifiers:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersonsAndRelationshipUsingBlock:(id)a3;
- (void)enumeratePersonsForFullName:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersonsForIdentifiers:(id)a3 usingBlock:(id)a4;
- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)a3;
- (void)invalidateCacheForPersonWithContactIdentifiers:(id)a3;
- (void)invalidateCacheForPersonWithLocalIdentifiers:(id)a3;
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

- (float)_confidenceInPersonRecord:(id)a3 viewPerson:(id)a4 forName:(id)a5 components:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if (!v13)
  {
    v13 = [v12 clsBetterComponentsSeparatedByCharactersInSet:v14];
  }

  v15 = [(CLSSocialServiceContacts *)self _fullNameWithContact:v10];
  v16 = [v15 stringByTrimmingCharactersInSet:v14];

  v17 = [v11 names];
  v18 = [v17 firstObject];
  v19 = [v18 stringByTrimmingCharactersInSet:v14];

  if ((!v16 || [v16 compare:v12]) && (!v19 || objc_msgSend(v19, "compare:", v12)))
  {
    v55 = v19;
    v58 = [v11 nameComponents];
    v20 = [(CLSSocialServiceContacts *)self _firstNameForPersonRecord:v10];
    v21 = v20;
    v54 = v11;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v24 = [v11 nameComponents];
      v25 = [v24 givenNames];
      v22 = [v25 firstObject];
    }

    v26 = [v22 stringByTrimmingCharactersInSet:v14];

    v27 = [(CLSSocialServiceContacts *)self _lastNameForPersonRecord:v10];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v30 = [v58 familyNames];
      v29 = [v30 firstObject];
    }

    v31 = [v29 stringByTrimmingCharactersInSet:v14];

    v32 = [(CLSSocialServiceContacts *)self _nicknameForPersonRecord:v10];
    v33 = v32;
    v56 = v31;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v35 = [v58 nicknames];
      v34 = [v35 firstObject];

      v31 = v56;
    }

    v36 = [v34 stringByTrimmingCharactersInSet:v14];

    v37 = [(CLSSocialServiceContacts *)self _maidenNameForPersonRecord:v10];
    v57 = [v37 stringByTrimmingCharactersInSet:v14];

    if ([v13 count] == 1 && v26)
    {
      v38 = v57;
      if (![v12 compare:v26 options:129] || !objc_msgSend(v12, "compare:options:", v31, 129) || !objc_msgSend(v12, "compare:options:", v36, 129) || (v23 = 0.0, !objc_msgSend(v12, "compare:options:", v57, 129)))
      {
        v23 = 0.5;
      }

      goto LABEL_42;
    }

    v52 = v36;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v26)
    {
      v40 = [v26 clsBetterComponentsSeparatedByCharactersInSet:v14];
      [v39 addObjectsFromArray:v40];
    }

    if (v56)
    {
      v41 = [v56 clsBetterComponentsSeparatedByCharactersInSet:v14];
      [v39 addObjectsFromArray:v41];
    }

    v23 = 0.0;
    if (![v39 count])
    {
      if (v16)
      {
        v42 = [v16 clsBetterComponentsSeparatedByCharactersInSet:v14];
        [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:v13 andNameComponents:v42];
        v23 = v43;
      }

      if (v55)
      {
        v44 = [v55 clsBetterComponentsSeparatedByCharactersInSet:v14];
        [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:v13 andNameComponents:v44];
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

        v11 = v54;
        v19 = v55;
        goto LABEL_43;
      }

      v46 = objc_alloc(MEMORY[0x277CBEB18]);
      v47 = [v26 clsBetterComponentsSeparatedByCharactersInSet:v14];
      v48 = [v46 initWithArray:v47];

      v49 = [v57 clsBetterComponentsSeparatedByCharactersInSet:v14];
      [v48 addObjectsFromArray:v49];

      [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:v13 andNameComponents:v48];
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

- (float)_fuzzyMatchingScoreBetweenNameComponents:(id)a3 andNameComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = [v6 count];
  v9 = v7 >= v8;
  if (v7 >= v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v29 = 0;
  v30 = &v29;
  if (!v9)
  {
    v5 = v6;
  }

  v31 = 0x2020000000;
  v32 = 0;
  v11 = [v5 mutableCopy];
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
  v16 = (v13 / v14) * (1.0 - (v15 / [v5 count]));

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

- (id)potentialBirthdayDateForCNIdentifier:(id)a3 fullName:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CLSSocialServiceContacts *)self suggestionsService];
  v54 = 0;
  v9 = [v8 contactMatchesWithContactIdentifier:v6 limitTo:10 error:&v54];
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
      v41 = v8;
      v43 = v6;
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

          v18 = [*(*(&v50 + 1) + 8 * i) contact];
          v19 = [v18 birthday];
          v20 = [v19 dateComponents];

          v21 = [CLSCalendar dateFromComponents:v20 inTimeZone:0];
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

      v6 = v43;
      v9 = v39;
      v8 = v41;
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

  if ([v7 length])
  {

    v49 = 0;
    v24 = [v8 suggestContactMatchesWithFullTextSearch:v7 limitTo:10 error:&v49];
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
      v42 = v8;
      v44 = v6;
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

            v31 = [*(*(&v45 + 1) + 8 * j) contact];
            v32 = [v31 birthday];
            v33 = [v32 dateComponents];

            v34 = [CLSCalendar dateFromComponents:v33 inTimeZone:0];
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

      v6 = v44;
      v9 = v40;
      v8 = v42;
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

- (void)enumeratePersonsAndPotentialBirthdayDateForContactIdentifiers:(id)a3 usingBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
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
          [v17 setObject:v14 forKeyedSubscript:v13];
          v15 = [(CLSSocialServiceContacts *)self personForIdentifier:v13];
          v7[2](v7, v15, v14, &v22);
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
    v4 = [MEMORY[0x277D02118] serviceForContacts];
    v5 = self->_suggestionsService;
    self->_suggestionsService = v4;

    [(SGSuggestionsServiceContactsProtocol *)self->_suggestionsService setSyncTimeout:30.0];
    suggestionsService = self->_suggestionsService;
  }

  return suggestionsService;
}

- (unint64_t)_ageCategoryFromFaceAgeType:(unsigned __int16)a3
{
  if (a3 > 5u)
  {
    return 0;
  }

  else
  {
    return qword_22F992750[a3];
  }
}

- (unint64_t)_sexFromFaceBiologicalSex:(unsigned __int16)a3
{
  if (a3 > 2u)
  {
    return 0;
  }

  else
  {
    return qword_22F992738[a3];
  }
}

- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)a3
{
  v5 = a3;
  v4 = self->_personsInContactStoreForCNIdentifiers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsInContactStoreForCNIdentifiers removeObjectsForKeys:v5];
  objc_sync_exit(v4);
}

- (void)invalidateCacheForPersonWithContactIdentifiers:(id)a3
{
  v5 = a3;
  v4 = self->_personsForCNIdentifiers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsForCNIdentifiers removeObjectsForKeys:v5];
  objc_sync_exit(v4);
}

- (void)invalidateCacheForPersonWithLocalIdentifiers:(id)a3
{
  v5 = a3;
  v4 = self->_personsForLocalIdentifier;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_personsForLocalIdentifier removeObjectsForKeys:v5];
  objc_sync_exit(v4);
}

- (id)_personsMatchingPredicate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  contactStore = self->_contactStore;
  v6 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v27 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v4 keysToFetch:v6 error:&v27];
  v8 = v27;

  if (v8)
  {
    v9 = +[CLSLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_error_impl(&dword_22F907000, v10, OS_LOG_TYPE_ERROR, "Error fetching contact from predicate %@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v7;
    v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          visualIdentifierView = self->_visualIdentifierView;
          v18 = [v16 identifier];
          v19 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:v18];

          v20 = [(CLSSocialServiceContacts *)self _personWithContact:v16 viewPerson:v19 createPersonIfNeeded:1];
          [v11 addObject:v20];
        }

        v13 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
      v7 = v22;
      v8 = 0;
    }
  }

  return v11;
}

- (void)enumeratePersonsForFullName:(id)a3 usingBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && ([(NSMutableSet *)self->_nonFoundFullNames containsObject:v6]& 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_personByFullName objectForKey:v6];
    if (v8)
    {
      v9 = v8;
      [(NSMutableDictionary *)self->_personByFullName setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v6];
      v9 = [(CLSSocialServiceContacts *)self _personsMatchingPredicate:v10];
      if (![v9 count])
      {
        v15 = +[CLSLogging sharedLogging];
        v16 = [v15 loggingConnection];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_impl(&dword_22F907000, v16, OS_LOG_TYPE_INFO, "Contact %@ not found in Contact DB@", buf, 0xCu);
        }

        [(NSMutableSet *)self->_nonFoundFullNames addObject:v6];
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

        v7[2](v7, *(*(&v17 + 1) + 8 * v14++), buf);
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

- (id)personForPersonHandle:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableSet *)self->_nonFoundHandles containsObject:v4]& 1) == 0)
  {
    v5 = [(NSMutableDictionary *)self->_personByHandle objectForKey:v4];
    if (!v5)
    {
      if ([v4 containsString:@"@"])
      {
        v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v4];
      }

      else
      {
        v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
        v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v7];
      }

      v8 = [(CLSSocialServiceContacts *)self _personsMatchingPredicate:v6];
      if ([v8 count])
      {
        v5 = [v8 firstObject];
        [(NSMutableDictionary *)self->_personByHandle setObject:v5 forKeyedSubscript:v4];
      }

      else
      {
        [(NSMutableSet *)self->_nonFoundHandles addObject:v4];
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CLSSocialServiceContacts *)self personForIdentifier:v4];
  if ([v5 hasContactProfilePicture])
  {
    v43[0] = *MEMORY[0x277CBD158];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v7 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v6];
    v8 = MEMORY[0x277CBDA58];
    v42 = v4;
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
    v13 = v4;
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
      v17 = [v16 loggingConnection];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412546;
        v34 = v13;
        v35 = 2112;
        v36 = v15;
        _os_log_error_impl(&dword_22F907000, v17, OS_LOG_TYPE_ERROR, "Error while enumerating contacts for identifier %@: %@", v33, 0x16u);
      }
    }

    v18 = v28[5];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v19 = +[CLSLogging sharedLogging];
    v6 = [v19 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22F907000, v6, OS_LOG_TYPE_INFO, "ContactImage: Contact %@ has no profile picture", &buf, 0xCu);
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

- (void)enumeratePersonsAndRelationshipUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__CLSSocialServiceContacts_enumeratePersonsAndRelationshipUsingBlock___block_invoke;
    v6[3] = &unk_2788A8498;
    v7 = v4;
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

- (id)_fullNameWithContact:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v3 areKeysAvailable:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:0];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v3 givenName];
    v10 = [v3 familyName];
    v7 = [v8 stringWithFormat:@"%@ %@", v9, v10];
  }

  return v7;
}

- (id)personForIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5623;
  v13 = __Block_byref_object_dispose__5624;
  v14 = 0;
  v15[0] = v4;
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

- (void)enumeratePersonsForIdentifiers:(id)a3 usingBlock:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v37 = a4;
  if (!v37)
  {
    goto LABEL_36;
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v6;
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
  v35 = v6;
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
          v23 = [v22 identifier];
          [v14 setObject:v22 forKeyedSubscript:v23];
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
        v32 = [v29 identifier];
        v33 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:v32];

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
      v37[2](v37, v34, &v39);
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

  v6 = v35;
LABEL_36:
}

- (id)personsInContactStoreForContactIdentifiers:(id)a3 needsRefetching:(BOOL)a4 progressBlock:(id)a5
{
  v6 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = a5;
  v54 = 0;
  v8 = self;
  objc_sync_enter(v8);
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v6)
  {
    [v40 unionSet:v38];
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = v38;
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
            v14 = [(NSMutableDictionary *)v8->_personsInContactStoreForCNIdentifiers objectForKeyedSubscript:v13];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 CNIdentifier];
              v17 = [v16 length] == 0;

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
    [(CLSSocialServiceContacts *)v8 contactsForIdentifiers:v38];
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
          v39[2](v39, &v54, 0.5);
          v24 = v54;
          if ((v54 & 1) == 0)
          {
            v25 = [v22 identifier];
            if ([v25 length])
            {
              v26 = [(CLSSocialServiceContacts *)v8 __newPersonWithContact:v22 viewPerson:0];
              [v26 prefetchPersonAddressesIfNeededWithLocationCache:v8->_locationCache];
              [v41 setObject:v26 forKeyedSubscript:v25];
              [(NSMutableDictionary *)v8->_personsInContactStoreForCNIdentifiers setObject:v26 forKeyedSubscript:v25];
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
    v28 = [v41 allKeys];
    v37 = [v27 setWithArray:v28];

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
            [(NSMutableDictionary *)v8->_personsInContactStoreForCNIdentifiers setObject:v34 forKeyedSubscript:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v30);
    }
  }

  v35 = v41;
LABEL_42:

  objc_sync_exit(v8);

  return v35;
}

- (id)matchingDictionaryForContactIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v5 = [(CLSSocialServiceContacts *)self contactsForIdentifiers:v4];

  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
    v7 = [MEMORY[0x277D3AC28] matchingDictionaryForContact:v6 contactStore:self->_contactStore];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactsByIdentifierForIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x277CBDA70]);
    v6 = +[CLSSocialServiceContacts defaultKeysToFetch];
    v7 = [v5 initWithKeysToFetch:v6];

    v8 = MEMORY[0x277CBDA58];
    v9 = [v4 allObjects];
    v10 = [v8 predicateForContactsWithIdentifiers:v9];
    [v7 setPredicate:v10];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    contactStore = self->_contactStore;
    v18 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__CLSSocialServiceContacts_contactsByIdentifierForIdentifiers___block_invoke;
    v16[3] = &unk_2788A8470;
    v13 = v11;
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

- (id)contactsForIdentifiers:(id)a3
{
  v4 = MEMORY[0x277CBDA70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v8 = [v6 initWithKeysToFetch:v7];

  v9 = MEMORY[0x277CBDA58];
  v10 = [v5 allObjects];

  v11 = [v9 predicateForContactsWithIdentifiers:v10];
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

- (void)enumerateAllPersonsUsingBlock:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  allPersons = v5->_allPersons;
  if (allPersons)
  {
    if (v4)
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

          v4[2](v4, *(*(&v20 + 1) + 8 * v10), buf);
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
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = v5->_allPersons;
    v5->_allPersons = v11;

    v13 = objc_alloc(MEMORY[0x277CBDA70]);
    v14 = +[CLSSocialServiceContacts defaultKeysToFetch];
    v15 = [v13 initWithKeysToFetch:v14];

    contactStore = v5->_contactStore;
    v26 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__CLSSocialServiceContacts_enumerateAllPersonsUsingBlock___block_invoke;
    v24[3] = &unk_2788A8448;
    v24[4] = v5;
    v25 = v4;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v15 error:&v26 usingBlock:v24];
    v17 = v26;
    if (v17)
    {
      v18 = +[CLSLogging sharedLogging];
      v19 = [v18 loggingConnection];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_error_impl(&dword_22F907000, v19, OS_LOG_TYPE_ERROR, "Error fetching all persons: %@", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v5);
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

- (unint64_t)_relationshipForContact:(id)a3
{
  v41[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(CNContact *)self->_meContact identifier];
  v7 = [v5 isEqualToString:v6];

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
    v16 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v17 = [(CLSSocialServiceContacts *)self _fullNameWithContact:v4];
    v18 = [v17 clsBetterComponentsSeparatedByCharactersInSet:v16];

    [(CNContact *)self->_meContact contactRelations];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v39 = 0u;
    v8 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      v34 = v15;
      v35 = v4;
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
          v23 = [v22 value];
          v24 = [v23 name];

          v25 = [v24 clsBetterComponentsSeparatedByCharactersInSet:v16];
          [(CLSSocialServiceContacts *)self _fuzzyMatchingScoreBetweenNameComponents:v25 andNameComponents:v18];
          v27 = v26;

          if (v27 >= 0.8)
          {
            v28 = [v22 label];
            v15 = v34;
            v29 = [v34 indexOfObject:v28];
            if (v29 > 0xC)
            {
              v8 = 0;
            }

            else
            {
              v8 = qword_22F9926D0[v29];
            }

            v4 = v35;

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

      v4 = v35;
      v15 = v34;
    }

LABEL_16:

    v30 = [(CNContact *)self->_meContact organizationName];
    v31 = [v4 organizationName];
    v32 = v31;
    if (v30 && v31 && (![v30 rangeOfString:v31 options:129] || !objc_msgSend(v32, "rangeOfString:options:", v30, 129)))
    {
      v8 |= 1uLL;
    }
  }

  return v8;
}

- (void)_addAddressesToPerson:(id)a3 withContact:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  v19 = v5;
  [v5 postalAddresses];
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
        v15 = [v14 label];
        v16 = v15;
        v17 = v6;
        if (v15 == v11 || (v17 = v6, ([v15 isEqualToString:v11] & 1) != 0) || (v17 = v21, v16 == v12) || (v17 = v21, objc_msgSend(v16, "isEqualToString:", v12)))
        {
          v18 = [v14 value];
          [v17 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v20 addAddresses:v6 ofType:0];
  }

  if ([v21 count])
  {
    [v20 addAddresses:v21 ofType:1];
  }
}

- (id)_cnPostalAddressForGDLocationAddress:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBDB78]);
  v5 = [v3 thoroughfare];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 subThoroughfare];
    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v7];

      v6 = v8;
    }

    [v4 setValue:v6 forKey:*MEMORY[0x277CBD980]];
  }

  v9 = [v3 subLocality];
  if (v9)
  {
    [v4 setValue:v9 forKey:*MEMORY[0x277CBD990]];
  }

  v10 = [v3 locality];
  if (v10)
  {
    [v4 setValue:v10 forKey:*MEMORY[0x277CBD948]];
  }

  v11 = [v3 postalCode];
  if (v11)
  {
    [v4 setValue:v11 forKey:*MEMORY[0x277CBD968]];
  }

  v12 = [v3 subAdministrativeArea];
  if (v12)
  {
    [v4 setValue:v12 forKey:*MEMORY[0x277CBD988]];
  }

  v13 = [v3 administrativeArea];
  if (v13)
  {
    [v4 setValue:v13 forKey:*MEMORY[0x277CBD978]];
  }

  v14 = [v3 country];
  if (v14)
  {
    [v4 setValue:v14 forKey:*MEMORY[0x277CBD950]];
  }

  v15 = [v3 ISOCountryCode];
  if (v15)
  {
    [v4 setValue:v15 forKey:*MEMORY[0x277CBD958]];
  }

  return v4;
}

- (unint64_t)_relationshipForLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CBD4A8]])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD5F0]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD678]])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD2C8]])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD6F0]])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD318]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD4E8]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD6D0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CBD760]))
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD248]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CBD5E8]))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD740]])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD3E0]])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_addMissingPropertiesToPerson:(id)a3 withViewPerson:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v49 = v5;
  v7 = [v5 anniversaryDate];
  if (!v7)
  {
    v8 = [v6 anniversary];

    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = [v6 anniversary];
    v9 = [CLSCalendar dateFromComponents:v7 inTimeZone:0];
    [v5 setAnniversaryDate:v9];
  }

LABEL_5:
  v10 = [v5 birthdayDate];
  if (v10)
  {
LABEL_8:

    goto LABEL_9;
  }

  v11 = [v6 dateOfBirth];

  if (v11)
  {
    v10 = [v6 dateOfBirth];
    v12 = [CLSCalendar dateFromComponents:v10 inTimeZone:0];
    [v5 setBirthdayDate:v12];

    goto LABEL_8;
  }

LABEL_9:
  if (([v5 hasAddresses] & 1) == 0)
  {
    v13 = [v6 locations];
    v14 = [v13 count];

    if (v14)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v47 = v6;
      v15 = [v6 locations];
      v16 = [v15 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v54 + 1) + 8 * i);
          v23 = [v22 label];
          if ([v23 length])
          {
            if ([v23 isEqualToString:v19])
            {
              v24 = [v22 addresses];
              v25 = [v24 firstObject];
              v26 = [(CLSSocialServiceContacts *)self _cnPostalAddressForGDLocationAddress:v25];

              v27 = 0;
              v60 = v26;
              v28 = &v60;
            }

            else
            {
              if (![v23 isEqualToString:v20])
              {
                goto LABEL_22;
              }

              v29 = [v22 addresses];
              v30 = [v29 firstObject];
              v26 = [(CLSSocialServiceContacts *)self _cnPostalAddressForGDLocationAddress:v30];

              v59 = v26;
              v28 = &v59;
              v27 = 1;
            }

            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
            [v49 addAddresses:v31 ofType:v27];
          }

LABEL_22:
        }

        v17 = [v15 countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (!v17)
        {
LABEL_24:

          v6 = v47;
          break;
        }
      }
    }
  }

  if (self->_meViewPerson)
  {
    if (![v49 relationship])
    {
      v32 = [v6 relatedPeople];
      v33 = [v32 count];

      if (v33)
      {
        v34 = [(GDVisualIdentifierViewPerson *)self->_meViewPerson entityIdentifier];
        v35 = [v34 stringValue];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v36 = v6;
        v37 = [v6 relatedPeople];
        v38 = [v37 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v50 + 1) + 8 * j);
              v43 = [v42 linkedPersonEntityIdentifier];
              v44 = [v43 stringValue];
              v45 = [v44 isEqualToString:v35];

              if (v45)
              {
                v46 = [v42 relationshipLabel];
                [v49 setRelationship:{-[CLSSocialServiceContacts _relationshipForLabel:](self, "_relationshipForLabel:", v46)}];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v39);
        }

        v6 = v36;
      }
    }
  }
}

- (void)_addDelegateAddressesToPerson:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained mePersonAddressesOfType:a4];

  [v6 prefetchPersonAddressesIfNeededWithLocationCache:self->_locationCache];
  v9 = MEMORY[0x277CCAC30];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__CLSSocialServiceContacts__addDelegateAddressesToPerson_ofType___block_invoke;
  v16 = &unk_2788A8420;
  v10 = v6;
  v17 = v10;
  v18 = a4;
  v11 = [v9 predicateWithBlock:&v13];
  v12 = [v8 filteredArrayUsingPredicate:{v11, v13, v14, v15, v16}];

  if ([v12 count])
  {
    [v10 addAddresses:v12 ofType:a4];
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

- (id)__newPersonWithContact:(id)a3 viewPerson:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_45;
    }

    v10 = 0;
    goto LABEL_47;
  }

  v9 = [v6 identifier];
  v10 = [CLSPersonIdentity personWithCNIdentifier:v9];

  v11 = [v6 givenName];
  if ([v11 length])
  {
  }

  else
  {
    v12 = [v6 familyName];
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v15 = [v6 givenName];
  [v14 setGivenName:v15];

  v16 = [v6 familyName];
  [v14 setFamilyName:v16];

  v17 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v14 style:1 options:0];
  [v10 setLocalizedShortName:v17];

LABEL_8:
  v71 = v8;
  v18 = [(CLSSocialServiceContacts *)self _fullNameWithContact:v6];
  [v10 setFullName:v18];
  v19 = [v6 givenName];
  [v10 setFirstName:v19];

  v20 = [v6 middleName];
  [v10 setMiddleName:v20];

  v21 = [v6 familyName];
  [v10 setLastName:v21];

  v22 = [v6 nickname];
  [v10 setNickname:v22];

  v23 = [v6 birthday];
  v24 = [CLSCalendar dateFromComponents:v23 inTimeZone:0];
  [v10 setBirthdayDate:v24];

  v25 = [v10 birthdayDate];

  if (!v25)
  {
    v26 = [v6 identifier];
    v27 = [(CLSSocialServiceContacts *)self potentialBirthdayDateForCNIdentifier:v26 fullName:v18];

    [v10 setPotentialBirthdayDate:v27];
  }

  v69 = v18;
  v28 = [v6 organizationName];
  [v10 setCompanyName:v28];

  [v10 setRelationship:{-[CLSSocialServiceContacts _relationshipForContact:](self, "_relationshipForContact:", v6)}];
  [v6 dates];
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
        v36 = [v35 label];
        v37 = v36;
        if (v36 == v33 || [v36 isEqualToString:v33])
        {
          v38 = [v35 value];
          v39 = [CLSCalendar dateFromComponents:v38 inTimeZone:0];
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
  v70 = self;

  v40 = [v6 phoneNumbers];
  v41 = [v40 count];

  if (v41)
  {
    [v10 setHasPhoneNumber:1];
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v43 = [v6 emailAddresses];
  v44 = [v43 countByEnumeratingWithState:&v79 objects:v88 count:16];
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
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v79 + 1) + 8 * j) value];
        v49 = [v48 lowercaseString];
        [v42 addObject:v49];
      }

      v45 = [v43 countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v45);
  }

  [v10 setEmailAddresses:v42];
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v51 = [v6 phoneNumbers];
  v52 = [v51 countByEnumeratingWithState:&v75 objects:v87 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v75 + 1) + 8 * k) value];
        v57 = [v56 stringValue];
        [v50 addObject:v57];
      }

      v53 = [v51 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v53);
  }

  [v10 setPhoneNumbers:v50];
  self = v70;
  [(CLSSocialServiceContacts *)v70 _addAddressesToPerson:v10 withContact:v6];
  v8 = v71;
  if ([v10 isMe])
  {
    WeakRetained = objc_loadWeakRetained(&v70->_delegate);
    if ([WeakRetained hasAddressesForMePerson])
    {
      [(CLSSocialServiceContacts *)v70 _addDelegateAddressesToPerson:v10 ofType:0];
      [(CLSSocialServiceContacts *)v70 _addDelegateAddressesToPerson:v10 ofType:1];
    }
  }

  v59 = [v6 socialProfiles];
  v60 = [v59 count];

  if (v60)
  {
    v61 = objc_opt_new();
    v62 = [v6 socialProfiles];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __62__CLSSocialServiceContacts___newPersonWithContact_viewPerson___block_invoke;
    v72[3] = &unk_2788A83C8;
    v63 = v10;
    v73 = v63;
    v74 = v61;
    v64 = v61;
    [v62 enumerateObjectsUsingBlock:v72];

    [v63 setSocialProfiles:v64];
  }

  [v10 setHasContactProfilePicture:{objc_msgSend(v6, "imageDataAvailable")}];
  v65 = [v6 identifier];
  [v10 setSourceService:@"contacts" andID:v65];

  if (v71)
  {
    if (v10)
    {
LABEL_46:
      [(CLSSocialServiceContacts *)self _addMissingPropertiesToPerson:v10 withViewPerson:v8];
      goto LABEL_47;
    }

LABEL_45:
    v66 = [v8 entityIdentifier];
    v67 = [v66 stringValue];

    v10 = [CLSPersonIdentity personWithGDIdentifier:v67];
    [v10 setSourceService:@"megadome" andID:v67];

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

- (id)_personWithContactIdentifier:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5623;
  v17 = __Block_byref_object_dispose__5624;
  v18 = 0;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_personsForCNIdentifiers objectForKeyedSubscript:v4];
    v7 = v14[5];
    v14[5] = v6;

    objc_sync_exit(v5);
    v8 = v14[5];
    if (!v8)
    {
      v19[0] = v4;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__CLSSocialServiceContacts__personWithContactIdentifier___block_invoke;
      v12[3] = &unk_2788A83A0;
      v12[4] = &v13;
      [(CLSSocialServiceContacts *)v5 enumeratePersonsForIdentifiers:v9 usingBlock:v12];

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

- (id)_personWithContact:(id)a3 viewPerson:(id)a4 createPersonIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  if (v8)
  {
    v11 = [v8 identifier];
    v12 = [(NSMutableDictionary *)v10->_personsForCNIdentifiers objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = !v5;
    }

    if (!v13)
    {
      v12 = [(CLSSocialServiceContacts *)v10 __newPersonWithContact:v8 viewPerson:v9];
      if (v12)
      {
        [(NSMutableDictionary *)v10->_personsForCNIdentifiers setObject:v12 forKeyedSubscript:v11];
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v9)
  {
    v14 = [v9 entityIdentifier];
    v11 = [v14 stringValue];

    v12 = [(NSMutableDictionary *)v10->_personsForGDIdentifiers objectForKeyedSubscript:v11];
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = !v5;
    }

    if (!v15)
    {
      v12 = [(CLSSocialServiceContacts *)v10 __newPersonWithContact:0 viewPerson:v9];
      if (v12)
      {
        [(NSMutableDictionary *)v10->_personsForGDIdentifiers setObject:v12 forKeyedSubscript:v11];
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:
  objc_sync_exit(v10);

  return v12;
}

- (id)_personResultsForPersonLocalIdentifier:(id)a3 isLackingFaces:(BOOL *)a4 inPhotoLibrary:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    *a4 = 0;
  }

  v37 = [v9 librarySpecificFetchOptions];
  v11 = MEMORY[0x277CD9938];
  v40[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v13 = [v11 fetchPersonsWithLocalIdentifiers:v12 options:v37];

  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v15 = [v10 librarySpecificFetchOptions];
    v39 = *MEMORY[0x277CD9BC8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [v15 setFetchPropertySets:v16];

    v17 = [MEMORY[0x277CD9868] fetchKeyFaceForPerson:v14 options:v15];
    v18 = [v17 firstObject];
    v36 = -[CLSSocialServiceContacts _sexFromFaceBiologicalSex:](self, "_sexFromFaceBiologicalSex:", [v18 sexType]);
    v35 = -[CLSSocialServiceContacts _ageCategoryFromFaceAgeType:](self, "_ageCategoryFromFaceAgeType:", [v18 ageType]);
    v19 = [v14 name];
    v20 = [v14 personUri];

    if (v20 && [v20 length])
    {
      v21 = [(CLSSocialServiceContacts *)self _personWithContactIdentifier:v20];
    }

    else
    {
      v21 = 0;
    }

    v22 = 1.0;
    if (v19 && [v19 length] && !v21)
    {
      v23 = [(CLSSocialServiceContacts *)self _personResultsForfullName:v19];
      if ([v23 count])
      {
        v24 = [v23 firstObject];
        [v24 confidence];
        if (v25 >= 1.0)
        {
          v21 = [v24 person];
          [v24 confidence];
          v22 = v27;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    if (v21)
    {
      v28 = [v21 sourceService];
      v29 = [v28 isEqualToString:@"megadome"];

      if (v29)
      {
        v30 = [v14 name];
        [v21 setFullName:v30];
      }

      [v21 setLocalIdentifier:v8];
      [v21 setIsFavorite:{objc_msgSend(v14, "type") == 1}];
      [v21 setIsHidden:{objc_msgSend(v14, "type") == -1}];
      [v21 setIsUserCreated:1];
    }

    else
    {
      v21 = [CLSPersonIdentity personWithPHPerson:v14];
    }

    [v21 setAgeCategory:v35];
    [v21 setSex:v36];
    v31 = self->_personsForLocalIdentifier;
    objc_sync_enter(v31);
    [(NSMutableDictionary *)self->_personsForLocalIdentifier setObject:v21 forKeyedSubscript:v8];
    objc_sync_exit(v31);

    *&v32 = v22;
    v33 = [CLSPersonIdentityResult personResultWithPerson:v21 andConfidence:v32];
    v38 = v33;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_personResultsForfullName:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__CLSSocialServiceContacts__personResultsForfullName___block_invoke;
  aBlock[3] = &unk_2788A8300;
  aBlock[4] = self;
  v6 = v4;
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
          v24 = [v23 contactIdentifiers];
          v25 = [v24 firstObject];

          if ([v25 length])
          {
            v26 = [v17 objectForKeyedSubscript:v25];
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

- (id)personResultsForName:(id)a3 inPhotoLibrary:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_personsForLocalIdentifier;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_personsForLocalIdentifier objectForKeyedSubscript:v6];
  objc_sync_exit(v8);

  if (v9 || (v11 = self->_personsInContactStoreForCNIdentifiers, objc_sync_enter(v11), [(NSMutableDictionary *)self->_personsInContactStoreForCNIdentifiers objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_sync_exit(v11), v11, v9))
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

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v13 = [(CLSSocialServiceContacts *)self _personResultsForPersonLocalIdentifier:v6 isLackingFaces:&v15 inPhotoLibrary:v7];
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
  v13 = [(CLSSocialServiceContacts *)self _personResultsForfullName:v6];
LABEL_11:

  return v13;
}

- (id)mePerson
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_mePerson)
  {
    meContact = v2->_meContact;
    if (meContact)
    {
      visualIdentifierView = v2->_visualIdentifierView;
      v5 = [(CNContact *)meContact identifier];
      v6 = [(GDVisualIdentifierView *)visualIdentifierView personForIdentifier:v5];

      v7 = v2->_meContact;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = [(CLSSocialServiceContacts *)v2 _personWithContact:v7 viewPerson:v6 createPersonIfNeeded:1];
    v9 = v8;
    if (!v8)
    {
LABEL_14:
      mePerson = v2->_mePerson;
      v2->_mePerson = v9;
      v19 = v9;

      meViewPerson = v2->_meViewPerson;
      v2->_meViewPerson = v6;

      goto LABEL_15;
    }

    v10 = [(CLSPersonIdentity *)v8 localIdentifier];
    if (!v10)
    {
      v11 = [(CLSPersonIdentity *)v9 fullName];

      if (!v11)
      {
        goto LABEL_10;
      }

      v10 = v2->_personsForLocalIdentifier;
      objc_sync_enter(v10);
      personsForLocalIdentifier = v2->_personsForLocalIdentifier;
      v13 = [(CLSPersonIdentity *)v9 fullName];
      v14 = [(NSMutableDictionary *)personsForLocalIdentifier objectForKeyedSubscript:v13];
      v15 = [v14 localIdentifier];
      [(CLSPersonIdentity *)v9 setLocalIdentifier:v15];

      objc_sync_exit(v10);
    }

LABEL_10:
    if (![(CLSPersonIdentity *)v9 isMe])
    {
      v16 = +[CLSLogging sharedLogging];
      v17 = [v16 loggingConnection];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v23 = [(CLSPersonIdentity *)v9 relationship];
        v24 = [(CNContact *)v2->_meContact identifier];
        v25 = [(CLSPersonIdentity *)v9 CNIdentifier];
        v26 = 134218754;
        v27 = v23;
        v28 = 2048;
        v29 = 14;
        v30 = 2112;
        v31 = v24;
        v32 = 2112;
        v33 = v25;
        _os_log_fault_impl(&dword_22F907000, v17, OS_LOG_TYPE_FAULT, "mePerson has invalid relationship: %tu, expected %tu. meContact id: %@, mePerson id: %@", &v26, 0x2Au);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  objc_sync_exit(v2);

  v21 = v2->_mePerson;

  return v21;
}

- (void)refreshMeContactIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_meContact && v2->_contactStore)
  {
    v3 = [(CLSSocialServiceContacts *)v2 fetchMeCardFromContactStore:?];
    meContact = v2->_meContact;
    v2->_meContact = v3;

    v5 = +[CLSLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v2->_meContact;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_22F907000, v6, OS_LOG_TYPE_INFO, "Fetched me contact card, got %@", &v8, 0xCu);
    }
  }

  objc_sync_exit(v2);
}

- (id)inferredDeviceOwnerForPhotoLibrary:(id)a3 ignoreContactLinking:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CLSSocialServiceContacts *)self visionCacheStorageDirectoryURLForPhotoLibrary:v6];
  v28 = 0;
  v8 = [[CLSVisualUnderstandingServiceClient alloc] initWithVisionCacheURL:v7 error:&v28];
  v9 = v28;
  if (v8)
  {
    v10 = [(CLSVisualUnderstandingServiceClient *)v8 deviceOwnerPersonUUIDWithIgnoreContactsLinking:v4];
    v11 = +[CLSLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_22F907000, v12, OS_LOG_TYPE_INFO, "Device owner uuid %@", buf, 0xCu);
    }

    if (v10)
    {
      v13 = [v6 librarySpecificFetchOptions];
      [v13 setPersonContext:1];
      [v13 setFetchLimit:1];
      v27 = v7;
      v14 = v9;
      v15 = MEMORY[0x277CD9938];
      v16 = [v10 UUIDString];
      v17 = [v15 localIdentifierWithUUID:v16];

      v18 = MEMORY[0x277CD9938];
      v29 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v20 = [v18 fetchPersonsWithLocalIdentifiers:v19 options:v13];
      v21 = [v20 fetchedObjects];
      v22 = [v21 firstObject];

      v9 = v14;
      v7 = v27;
    }

    else
    {
      v22 = 0;
    }

    v24 = v22;

    v25 = v24;
  }

  else
  {
    v23 = +[CLSLogging sharedLogging];
    v24 = [v23 loggingConnection];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_error_impl(&dword_22F907000, v24, OS_LOG_TYPE_ERROR, "Failed to get VU Service %@", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)visionCacheStorageDirectoryURLForPhotoLibrary:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isSystemPhotoLibrary])
  {
    v10 = 0;
    v4 = [v3 urlForApplicationDataFolderIdentifier:2 error:&v10];

    v5 = v10;
    if (!v4)
    {
      v6 = +[CLSLogging sharedLogging];
      v7 = [v6 loggingConnection];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_error_impl(&dword_22F907000, v7, OS_LOG_TYPE_ERROR, "Failed to access the visual service URL. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = [v3 photoLibraryURL];

    v4 = [v8 URLByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision"];
  }

  return v4;
}

- (void)invalidateMemoryCaches
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  personByHandle = self->_personByHandle;
  self->_personByHandle = v3;

  v5 = [MEMORY[0x277CBEB58] set];
  nonFoundHandles = self->_nonFoundHandles;
  self->_nonFoundHandles = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  personByFullName = self->_personByFullName;
  self->_personByFullName = v7;

  v9 = [MEMORY[0x277CBEB58] set];
  nonFoundFullNames = self->_nonFoundFullNames;
  self->_nonFoundFullNames = v9;

  v11 = [MEMORY[0x277CBEB38] dictionary];
  personsForLocalIdentifier = self->_personsForLocalIdentifier;
  self->_personsForLocalIdentifier = v11;

  v13 = [MEMORY[0x277CBEB38] dictionary];
  personsForCNIdentifiers = self->_personsForCNIdentifiers;
  self->_personsForCNIdentifiers = v13;

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
  v2 = [MEMORY[0x277D1F480] defaultService];
  v9 = 0;
  v3 = [v2 visualIdentifierViewWithError:&v9];
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

- (id)fetchMeCardFromContactStore:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CLSSocialServiceContacts defaultKeysToFetch];
  v11 = 0;
  v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v11];

  v6 = v11;
  if (v6)
  {
    v7 = +[CLSLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "Error gaining access to me: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (CLSSocialServiceContacts)initWithLocationCache:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = CLSSocialServiceContacts;
  v6 = [(CLSSocialServiceContacts *)&v47 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(CLSSocialServiceContacts *)v6 _initializeVisualIdentifierView];
    visualIdentifierView = v7->_visualIdentifierView;
    v7->_visualIdentifierView = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    personByFullName = v7->_personByFullName;
    v7->_personByFullName = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    nonFoundFullNames = v7->_nonFoundFullNames;
    v7->_nonFoundFullNames = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    personByHandle = v7->_personByHandle;
    v7->_personByHandle = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    nonFoundHandles = v7->_nonFoundHandles;
    v7->_nonFoundHandles = v16;

    objc_storeStrong(&v7->_locationCache, a3);
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
      v22 = [MEMORY[0x277CBEB38] dictionary];
      personsForCNIdentifiers = v7->_personsForCNIdentifiers;
      v7->_personsForCNIdentifiers = v22;

      v24 = [MEMORY[0x277CBEB38] dictionary];
      personsInContactStoreForCNIdentifiers = v7->_personsInContactStoreForCNIdentifiers;
      v7->_personsInContactStoreForCNIdentifiers = v24;

      v26 = [MEMORY[0x277CBEB38] dictionary];
      personsForGDIdentifiers = v7->_personsForGDIdentifiers;
      v7->_personsForGDIdentifiers = v26;

      v28 = [MEMORY[0x277CBEB38] dictionary];
      personsForLocalIdentifier = v7->_personsForLocalIdentifier;
      v7->_personsForLocalIdentifier = v28;
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