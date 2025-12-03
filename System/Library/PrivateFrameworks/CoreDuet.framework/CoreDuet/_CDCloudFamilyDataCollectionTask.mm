@interface _CDCloudFamilyDataCollectionTask
- (BOOL)regexMatchForRegex:(void *)regex string:;
- (_CDCloudFamilyDataCollectionTask)initWithActivity:(id)activity;
- (id)aggregateInteractionDataUsingStore:(void *)store contact:(void *)contact callHistoryManager:(void *)manager avgCallDur:;
- (id)airDropPeopleAtHome;
- (id)allAirDropInteractionsFromStore:(uint64_t)store fetchLimit:;
- (id)allEmailAndPhoneNumberHandlesForContact:(void *)contact;
- (id)avgOfAllCallsUsingManager:(uint64_t)manager;
- (id)callFeaturesFromInteractions:(void *)interactions avgCallLength:(double)length contact:;
- (id)contactFamilyNameForContact:me:;
- (id)contactFamilyRelationForContact:contactRelations:me:;
- (id)contactKeysToFetch;
- (id)contactParentsUsingRegexNamesUsingContacts:;
- (id)contactRelationsUsingMe:;
- (id)contactsEmergency;
- (id)contactsEmergencyFamily;
- (id)contactsInContactStore;
- (id)contactsInHome;
- (id)dataPath;
- (id)fetchEmergencyContacts;
- (id)fetchInteractionFeatureDictionaryWithPredicate:(void *)predicate store:(void *)store sortDescription:;
- (id)getThirdPartyPredicateForContact:(void *)contact handles:;
- (id)initWithStorage:(void *)storage contactStore:(void *)store medicalIDStore:(void *)dStore activity:(void *)activity sessionPath:(void *)path dataDirectory:(void *)directory collectionDate:(double)date samplingRate:(void *)self0 maxBatches:(void *)self1 daysPerBatch:;
- (id)labelMembers;
- (id)personRelationshipVocabularyByLocaleDictionary;
- (id)relationshipRegularExpressionForRelationship;
- (id)thirdPartyMessageFeaturesFromFeatureDictionary:(uint64_t)dictionary;
- (id)truncatedFileHandle;
- (uint64_t)indexToInsertDate:(void *)date array:;
- (void)_execute;
- (void)airDropPeopleAtHome;
- (void)cleanup;
- (void)execute;
- (void)messagesCumulativeFeaturesFromInteractionsBatch:(void *)batch mutableMessagesDictionary:;
- (void)messagesFeaturesFromCumulativeDict:(uint64_t)dict;
- (void)setSession:(uint64_t)session;
- (void)submitDataForCollection;
@end

@implementation _CDCloudFamilyDataCollectionTask

- (_CDCloudFamilyDataCollectionTask)initWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = NSTemporaryDirectory();
  v23 = [v5 stringByAppendingPathComponent:@"CoreDuet/DataCollection/CloudFamily"];

  date = [MEMORY[0x1E695DF00] date];
  v6 = 1.0;
  if (!CRIsAppleInternal())
  {
    v7 = OSAGetDATaskingValue();
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        v6 = v8;
      }
    }
  }

  v9 = OSAGetDATaskingValue();
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 12;
  }

  v11 = OSAGetDATaskingValue();
  v21 = v9;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 30;
  }

  v13 = +[_CDInteractionStore defaultDatabaseDirectory];
  v14 = [_CDInteractionStore storeWithDirectory:v13 readOnly:1];
  v15 = objc_alloc_init(getCNContactStoreClass());
  v16 = objc_alloc(getHKMedicalIDStoreClass());
  v17 = objc_alloc_init(getHKHealthStoreClass());
  v18 = [v16 initWithHealthStore:v17];
  v19 = [(_CDCloudFamilyDataCollectionTask *)&self->super.isa initWithStorage:v14 contactStore:v15 medicalIDStore:v18 activity:activityCopy sessionPath:@"/var/mobile/Library/CoreDuet/DataCollection/CloudFamily/session.archive" dataDirectory:v23 collectionDate:date samplingRate:v6 maxBatches:unsignedIntegerValue daysPerBatch:unsignedIntegerValue2];

  return v19;
}

- (id)initWithStorage:(void *)storage contactStore:(void *)store medicalIDStore:(void *)dStore activity:(void *)activity sessionPath:(void *)path dataDirectory:(void *)directory collectionDate:(double)date samplingRate:(void *)self0 maxBatches:(void *)self1 daysPerBatch:
{
  v47 = a2;
  storageCopy = storage;
  storeCopy = store;
  dStoreCopy = dStore;
  activityCopy = activity;
  pathCopy = path;
  directoryCopy = directory;
  if (self)
  {
    v52.receiver = self;
    v52.super_class = _CDCloudFamilyDataCollectionTask;
    self = objc_msgSendSuper2(&v52, sel_init, storeCopy, storageCopy, v47);
    if (self)
    {
      objc_initWeak(&location, self);
      v24 = objc_alloc(MEMORY[0x1E69C5D58]);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __167___CDCloudFamilyDataCollectionTask_initWithStorage_contactStore_medicalIDStore_activity_sessionPath_dataDirectory_collectionDate_samplingRate_maxBatches_daysPerBatch___block_invoke;
      v49[3] = &unk_1E7369890;
      objc_copyWeak(&v50, &location);
      v25 = [v24 initWithBlock:v49];
      v26 = self[16];
      self[16] = v25;

      objc_storeStrong(self + 7, a2);
      objc_storeStrong(self + 8, storage);
      objc_storeStrong(self + 9, store);
      objc_storeStrong(self + 2, dStore);
      v27 = [activityCopy copy];
      v28 = self[5];
      self[5] = v27;

      v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self[5] options:0 error:0];
      if (v29)
      {
        v48 = 0;
        v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:&v48];
        v31 = v48;
        if (v31)
        {
          v32 = +[_CDLogging dataCollectionChannel];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [_CDCloudFamilyDataCollectionTask initWithStorage:v31 contactStore:v32 medicalIDStore:v33 activity:v34 sessionPath:v35 dataDirectory:v36 collectionDate:v37 samplingRate:v38 maxBatches:? daysPerBatch:?];
          }
        }
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(self + 11, v30);
      v39 = [pathCopy copy];
      v40 = self[4];
      self[4] = v39;

      v41 = [directoryCopy copy];
      v42 = self[6];
      self[6] = v41;

      *(self + 12) = date;
      self[13] = rate;
      self[14] = batches;
      *(self + 9) = 1;
      v43 = self[3];
      self[3] = &__block_literal_global_47;

      objc_destroyWeak(&v50);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

- (id)contactsEmergency
{
  v69 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v41 = *(self + 72);
    v46 = [MEMORY[0x1E695DFA8] set];
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__14;
    v64 = __Block_byref_object_dispose__14;
    v65 = 0;
    v2 = dispatch_semaphore_create(0);
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __53___CDCloudFamilyDataCollectionTask_contactsEmergency__block_invoke;
    v57 = &unk_1E7369970;
    v59 = &v60;
    dsema = v2;
    v58 = dsema;
    [v41 fetchMedicalIDEmergencyContactsWithCompletion:&v54];
    v3 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(dsema, v3))
    {
      v4 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask contactsEmergency];
      }

      v5 = [MEMORY[0x1E695DFA8] set];

      v46 = v5;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v61[5];
    v6 = 0;
    v7 = [obj countByEnumeratingWithState:&v50 objects:v68 count:16];
    if (v7)
    {
      v47 = *v51;
      *&v8 = 138412290;
      v43 = v8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v50 + 1) + 8 * i);
          nameContactIdentifier = [v10 nameContactIdentifier];

          if (nameContactIdentifier)
          {
            v12 = *(self + 64);
            nameContactIdentifier2 = [v10 nameContactIdentifier];
            v21 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v14];
            v49 = v6;
            v22 = [v12 unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:v21 error:&v49];
            v23 = v49;

            v24 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v67 = v23;
              _os_log_error_impl(&dword_191750000, v24, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
            }

            if (v22)
            {
              [v46 addObject:v22];
            }
          }

          else
          {
            v23 = v6;
          }

          phoneNumberContactIdentifier = [v10 phoneNumberContactIdentifier];

          if (phoneNumberContactIdentifier)
          {
            v26 = *(self + 64);
            phoneNumberContactIdentifier2 = [v10 phoneNumberContactIdentifier];
            v35 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v28];
            v48 = v23;
            v36 = [v26 unifiedContactWithIdentifier:phoneNumberContactIdentifier2 keysToFetch:v35 error:&v48];
            v6 = v48;

            v37 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v67 = v6;
              _os_log_error_impl(&dword_191750000, v37, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
            }

            if (v36)
            {
              [v46 addObject:v36];
            }
          }

          else
          {
            v6 = v23;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v50 objects:v68 count:16];
      }

      while (v7);
    }

    allObjects = [v46 allObjects];

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    allObjects = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)contactsInContactStore
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    v29 = [MEMORY[0x1E695DFA8] set];
    v2 = objc_alloc_init(getCNContactStoreClass());
    v3 = objc_alloc(getCNContactFetchRequestClass());
    v11 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v4];
    v12 = [v3 initWithKeysToFetch:v11];

    [v12 setContactBatchCount:25];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __58___CDCloudFamilyDataCollectionTask_contactsInContactStore__block_invoke;
    v22 = &unk_1E7369900;
    v23 = &v24;
    [v2 enumerateContactsWithFetchRequest:v12 error:0 usingBlock:&v19];
    v13 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v25[5] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "_PSFamilyRecommender: Fetched %tu contact ids from contact store", &buf, 0xCu);
    }

    allObjects = [v25[5] allObjects];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    allObjects = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)airDropPeopleAtHome
{
  v92 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self)
  {
    dictionary = 0;
    goto LABEL_38;
  }

  context = objc_autoreleasePoolPush();
  defaultManager = [getRTRoutineManagerClass() defaultManager];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__14;
  v87 = __Block_byref_object_dispose__14;
  v88 = 0;
  v80 = 0;
  v81[0] = &v80;
  v81[1] = 0x3032000000;
  v81[2] = __Block_byref_object_copy__14;
  v81[3] = __Block_byref_object_dispose__14;
  v82 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v2 = dispatch_semaphore_create(0);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __55___CDCloudFamilyDataCollectionTask_airDropPeopleAtHome__block_invoke;
  v76[3] = &unk_1E73685F0;
  v78 = &v83;
  v79 = &v80;
  v3 = v2;
  v77 = v3;
  [defaultManager fetchLocationsOfInterestOfType:0 withHandler:v76];
  v4 = dispatch_time(0, 300000000000);
  v58 = v3;
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_CDCloudFamilyDataCollectionTask airDropPeopleAtHome];
    }

LABEL_23:

    goto LABEL_24;
  }

  if (*(v81[0] + 40))
  {
    v5 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_CDCloudFamilyDataCollectionTask *)v81 airDropPeopleAtHome:v5];
    }

    goto LABEL_23;
  }

  if (v84[5])
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v5 = v84[5];
    v12 = [v5 countByEnumeratingWithState:&v72 objects:v91 count:16];
    if (v12)
    {
      v13 = *v73;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v73 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v72 + 1) + 8 * i);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          visits = [v15 visits];
          v17 = [visits countByEnumeratingWithState:&v68 objects:v90 count:16];
          if (v17)
          {
            v18 = *v69;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v69 != v18)
                {
                  objc_enumerationMutation(visits);
                }

                [array addObject:*(*(&v68 + 1) + 8 * j)];
              }

              v17 = [visits countByEnumeratingWithState:&v68 objects:v90 count:16];
            }

            while (v17);
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v72 objects:v91 count:16];
      }

      while (v12);
    }

    goto LABEL_23;
  }

LABEL_24:
  v62 = [array valueForKey:@"entryDate"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = selfCopy[7];
  v21 = [(_CDCloudFamilyDataCollectionTask *)selfCopy allAirDropInteractionsFromStore:v20 fetchLimit:0];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v64 objects:v89 count:16];
  if (v22)
  {
    v23 = *v65;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v64 + 1) + 8 * k);
        recipients = [v25 recipients];
        firstObject = [recipients firstObject];
        personId = [firstObject personId];

        if (personId)
        {
          startDate = [v25 startDate];
          v30 = [(_CDCloudFamilyDataCollectionTask *)selfCopy indexToInsertDate:startDate array:v62];

          if (v30)
          {
            v31 = [array objectAtIndexedSubscript:v30 - 1];
            exitDate = [v31 exitDate];
            startDate2 = [v25 startDate];
            [exitDate timeIntervalSinceDate:startDate2];
            v35 = v34 > 0.0;

            if (v35)
            {
              v36 = selfCopy[8];
              recipients2 = [v25 recipients];
              firstObject2 = [recipients2 firstObject];
              personId2 = [firstObject2 personId];
              v47 = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v40];
              v48 = [v36 unifiedContactWithIdentifier:personId2 keysToFetch:v47 error:0];

              if (v48)
              {
                v49 = MEMORY[0x1E696AD98];
                identifier = [v48 identifier];
                v51 = [dictionary objectForKeyedSubscript:identifier];
                v52 = [v49 numberWithInteger:{objc_msgSend(v51, "integerValue") + 1}];
                identifier2 = [v48 identifier];
                [dictionary setObject:v52 forKeyedSubscript:identifier2];
              }
            }
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v64 objects:v89 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v83, 8);

  objc_autoreleasePoolPop(context);
LABEL_38:
  v54 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)execute
{
  [(_CDCloudFamilyDataCollectionTask *)self _execute];

  [(_CDCloudFamilyDataCollectionTask *)self cleanup];
}

- (id)labelMembers
{
  if (self)
  {
    v1 = objc_alloc_init(getFAFetchFamilyCircleRequestClass());
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    array = [MEMORY[0x1E695DF70] array];
    v2 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke;
    v21[3] = &unk_1E7369948;
    v23 = &v24;
    v3 = v2;
    v22 = v3;
    [v1 startRequestWithCompletionHandler:v21];
    v4 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask labelMembers];
      }

      array2 = [MEMORY[0x1E695DF70] array];
      v7 = v25[5];
      v25[5] = array2;
    }

    if (![v25[5] count])
    {
      [v1 setForceServerFetch:1];
      v8 = dispatch_semaphore_create(0);

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_1035;
      v18 = &unk_1E7369948;
      v20 = &v24;
      v3 = v8;
      v19 = v3;
      [v1 startRequestWithCompletionHandler:&v15];
      v9 = dispatch_time(0, 300000000000);
      if (dispatch_semaphore_wait(v3, v9))
      {
        v10 = [_CDLogging dataCollectionChannel:v15];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [_CDCloudFamilyDataCollectionTask labelMembers];
        }

        array3 = [MEMORY[0x1E695DF70] array];
        v12 = v25[5];
        v25[5] = array3;
      }
    }

    v13 = [v25[5] copy];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)regexMatchForRegex:(void *)regex string:
{
  v5 = a2;
  regexCopy = regex;
  v7 = regexCopy;
  v8 = 0;
  if (self && regexCopy)
  {
    v8 = [v5 numberOfMatchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}] != 0;
  }

  return v8;
}

- (id)fetchEmergencyContacts
{
  if (self)
  {
    v1 = *(self + 72);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__14;
    v18 = __Block_byref_object_dispose__14;
    v19 = 0;
    v2 = dispatch_semaphore_create(0);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58___CDCloudFamilyDataCollectionTask_fetchEmergencyContacts__block_invoke;
    v11 = &unk_1E7369970;
    v13 = &v14;
    v3 = v2;
    v12 = v3;
    [v1 fetchMedicalIDEmergencyContactsWithCompletion:&v8];
    v4 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = [_CDLogging dataCollectionChannel:v8];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask contactsEmergency];
      }
    }

    v6 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactKeysToFetch
{
  OUTLINED_FUNCTION_70_0();
  a29 = v30;
  a30 = v31;
  a18 = *MEMORY[0x1E69E9840];
  if (v32)
  {
    v33 = getCNContactIdentifierKey();
    a9 = v33;
    v34 = getCNContactBirthdayKey();
    a10 = v34;
    v35 = getCNContactRelationsKey();
    a11 = v35;
    v36 = getCNContactGivenNameKey();
    a12 = v36;
    v37 = getCNContactMiddleNameKey();
    a13 = v37;
    v38 = getCNContactFamilyNameKey();
    a14 = v38;
    v39 = getCNContactNicknameKey();
    a15 = v39;
    v40 = getCNContactPhoneNumbersKey();
    a16 = v40;
    v41 = getCNContactEmailAddressesKey();
    a17 = v41;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&a9 count:9];
    objc_claimAutoreleasedReturnValue();
  }

  v42 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_72_0();

  return v43;
}

- (id)contactRelationsUsingMe:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v47[7] = *MEMORY[0x1E69E9840];
  v3 = v2;
  v34 = v3;
  v35 = v1;
  if (v1)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = getCNLabelContactRelationManager();
    v47[0] = v6;
    v7 = getCNLabelContactRelationAssistant();
    v47[1] = v7;
    v8 = getCNLabelContactRelationColleague();
    v47[2] = v8;
    v9 = getCNLabelContactRelationTeacher();
    v47[3] = v9;
    v10 = getCNLabelContactRelationFriend();
    v47[4] = v10;
    v11 = getCNLabelContactRelationMaleFriend();
    v47[5] = v11;
    v12 = getCNLabelContactRelationFemaleFriend();
    v47[6] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:7];

    contactRelations = [v4 contactRelations];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [contactRelations countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        v18 = 0;
        do
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(contactRelations);
          }

          v19 = *(*(&v41 + 1) + 8 * v18);
          label = [v19 label];
          v21 = [OUTLINED_FUNCTION_66_0() containsObject:?];

          if ((v21 & 1) == 0)
          {
            value = [v19 value];
            name = [value name];

            v36 = name;
            v24 = [(_CDCloudFamilyDataCollectionTask *)v35 queryContactsForGivenName:name];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v38;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v38 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  [v5 addObject:*(*(&v37 + 1) + 8 * i)];
                }

                v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v26);
            }
          }

          ++v18;
        }

        while (v18 != v16);
        v29 = [contactRelations countByEnumeratingWithState:&v41 objects:v46 count:16];
        v16 = v29;
      }

      while (v29);
    }

    [v5 allObjects];
    objc_claimAutoreleasedReturnValue();
  }

  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_0();

  return v31;
}

- (id)avgOfAllCallsUsingManager:(uint64_t)manager
{
  v2 = *MEMORY[0x1E69E9840];
  if (manager)
  {
    v3 = [a2 callsWithPredicate:0 limit:0 offset:0 batchSize:0];
    v4 = [v3 count];
    OUTLINED_FUNCTION_43_0();
    v5 = v3;
    OUTLINED_FUNCTION_36();
    duration = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (duration)
    {
      v15 = duration;
      v16 = *v26;
      v17 = 0.0;
      do
      {
        v18 = 0;
        do
        {
          OUTLINED_FUNCTION_29_1(duration, v8, v9, v10, v11, v12, v13, v14, v24, v25, v26);
          if (v19 != v16)
          {
            objc_enumerationMutation(v5);
          }

          duration = [*(v25 + 8 * v18) duration];
          v17 = v17 + v20;
          ++v18;
        }

        while (v15 != v18);
        OUTLINED_FUNCTION_36();
        duration = [v5 countByEnumeratingWithState:? objects:? count:?];
        v15 = duration;
      }

      while (duration);
    }

    else
    {
      v17 = 0.0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v17 / v4];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)contactsEmergencyFamily
{
  v75[7] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v56 = [MEMORY[0x1E695DFA8] set];
    v2 = getCNLabelContactRelationManager();
    v75[0] = v2;
    v3 = getCNLabelContactRelationAssistant();
    v75[1] = v3;
    v4 = getCNLabelContactRelationColleague();
    v75[2] = v4;
    v5 = getCNLabelContactRelationTeacher();
    v75[3] = v5;
    nameContactIdentifier = getCNLabelContactRelationFriend();
    v75[4] = nameContactIdentifier;
    v7 = getCNLabelContactRelationMaleFriend();
    v75[5] = v7;
    v8 = getCNLabelContactRelationFemaleFriend();
    v75[6] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:7];

    fetchEmergencyContacts = [(_CDCloudFamilyDataCollectionTask *)self fetchEmergencyContacts];
    v11 = OUTLINED_FUNCTION_16_2();
    v13 = [v12 countByEnumeratingWithState:&v62 objects:&v72 count:{16, v11}];
    if (v13)
    {
      v22 = v13;
      selfCopy = self;
      v23 = 0;
      v24 = *v64;
      *&v21 = 138412290;
      v55 = v21;
      v58 = fetchEmergencyContacts;
      do
      {
        v25 = 0;
        do
        {
          OUTLINED_FUNCTION_48_0(v13, v14, v15, v16, v17, v18, v19, v20, v55, *(&v55 + 1), v56, v57, v58, selfCopy, v60, v61, v62, v63, v64);
          if (v26 != v24)
          {
            objc_enumerationMutation(fetchEmergencyContacts);
          }

          v27 = *(v63 + 8 * v25);
          [v27 relationship];
          objc_claimAutoreleasedReturnValue();
          v28 = [OUTLINED_FUNCTION_40_0() containsObject:?];

          if ((v28 & 1) == 0)
          {
            nameContactIdentifier = [v27 nameContactIdentifier];

            if (nameContactIdentifier)
            {
              v31 = selfCopy[8];
              nameContactIdentifier2 = [v27 nameContactIdentifier];
              nameContactIdentifier = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v33];
              v61 = v23;
              v57 = [v31 unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:nameContactIdentifier error:&v61];
              v29 = v61;

              v40 = +[_CDLogging dataCollectionChannel];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = v55;
                *(&buf + 4) = v29;
                _os_log_error_impl(&dword_191750000, v40, OS_LOG_TYPE_ERROR, "Error querying contacts %@", &buf, 0xCu);
              }

              if (v57)
              {
                [v56 addObject:v57];
              }

              fetchEmergencyContacts = v58;
            }

            else
            {
              v29 = v23;
            }

            phoneNumberContactIdentifier = [v27 phoneNumberContactIdentifier];

            if (phoneNumberContactIdentifier)
            {
              v41 = selfCopy[8];
              phoneNumberContactIdentifier2 = [v27 phoneNumberContactIdentifier];
              v50 = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v43];
              v60 = v29;
              nameContactIdentifier = [v41 unifiedContactWithIdentifier:phoneNumberContactIdentifier2 keysToFetch:v50 error:&v60];
              v23 = v60;

              v51 = +[_CDLogging dataCollectionChannel];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = v55;
                *(&buf + 4) = v23;
                _os_log_error_impl(&dword_191750000, v51, OS_LOG_TYPE_ERROR, "Error querying contacts %@", &buf, 0xCu);
              }

              fetchEmergencyContacts = v58;
              if (nameContactIdentifier)
              {
                [v56 addObject:nameContactIdentifier];
              }
            }

            else
            {
              v23 = v29;
            }
          }

          ++v25;
        }

        while (v22 != v25);
        v13 = [fetchEmergencyContacts countByEnumeratingWithState:&v62 objects:&v72 count:16];
        v22 = v13;
      }

      while (v13);
    }

    else
    {
      v23 = 0;
    }

    allObjects = [v56 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)contactParentsUsingRegexNamesUsingContacts:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v92 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v61 = v3;
  if (v1)
  {
    v4 = v3;
    relationshipRegularExpressionForRelationship = [_CDCloudFamilyDataCollectionTask relationshipRegularExpressionForRelationship];
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = v4;
    OUTLINED_FUNCTION_55();
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (!v8)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_54(v8, v9, v10, v11, v12, v13, v14, v15, v61, obj, v63, relationshipRegularExpressionForRelationship, v8, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, 0, 0, 0);
    v64 = v24;
    while (1)
    {
      v25 = 0;
      do
      {
        OUTLINED_FUNCTION_54(v16, v17, v18, v19, v20, v21, v22, v23, v61, obj, v64, relationshipRegularExpressionForRelationship, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v89, v90, v91);
        if (v26 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v25;
        v27 = *(v90 + 8 * v25);
        OUTLINED_FUNCTION_16_2();
        v28 = relationshipRegularExpressionForRelationship;
        OUTLINED_FUNCTION_60_0();
        v30 = [v29 countByEnumeratingWithState:? objects:? count:?];
        if (v30)
        {
          v38 = v30;
          v39 = *v78;
          v70 = v28;
          do
          {
            v40 = 0;
            v72 = v38;
            do
            {
              OUTLINED_FUNCTION_48_0(v30, v31, v32, v33, v34, v35, v36, v37, v61, obj, v64, relationshipRegularExpressionForRelationship, v66, v68, v70, v72, v74, v76, v78);
              if (v41 != v39)
              {
                objc_enumerationMutation(v28);
              }

              v42 = *(v76 + 8 * v40);
              givenName = [v27 givenName];
              v44 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v44 regexMatchForRegex:v45 string:givenName])
              {
                goto LABEL_17;
              }

              middleName = [v27 middleName];
              v47 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v47 regexMatchForRegex:v48 string:middleName])
              {
                goto LABEL_16;
              }

              familyName = [v27 familyName];
              v50 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v50 regexMatchForRegex:v51 string:familyName])
              {

                v38 = v72;
LABEL_16:

LABEL_17:
LABEL_18:
                v30 = [v5 addObject:v27];
                goto LABEL_19;
              }

              [v27 nickname];
              v53 = v52 = v5;
              v54 = OUTLINED_FUNCTION_64_0();
              v56 = [(_CDCloudFamilyDataCollectionTask *)v54 regexMatchForRegex:v55 string:v53];

              v5 = v52;
              v28 = v70;

              v38 = v72;
              if (v56)
              {
                goto LABEL_18;
              }

LABEL_19:
              ++v40;
            }

            while (v38 != v40);
            OUTLINED_FUNCTION_60_0();
            v30 = [v28 countByEnumeratingWithState:? objects:? count:?];
            v38 = v30;
          }

          while (v30);
        }

        v25 = v68 + 1;
      }

      while (v68 + 1 != v66);
      OUTLINED_FUNCTION_55();
      v16 = [obj countByEnumeratingWithState:? objects:? count:?];
      v66 = v16;
      if (!v16)
      {
LABEL_26:

        [v5 allObjects];
        objc_claimAutoreleasedReturnValue();

        break;
      }
    }
  }

  v57 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_0();

  return v58;
}

- (id)contactsInHome
{
  if (self)
  {
    v1 = +[_CDHomeManagerUtilities sharedInstance];
    contactsInHome = [v1 contactsInHome];
  }

  else
  {
    contactsInHome = 0;
  }

  return contactsInHome;
}

- (void)_execute
{
  v215 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    activity = [self activity];
    if (activity)
    {
      v5 = activity;
      activity2 = [selfCopy activity];
      if (xpc_activity_should_defer(activity2))
      {
        activity3 = [selfCopy activity];
        v2 = xpc_activity_set_state(activity3, 3);

        if (v2)
        {
          *(selfCopy + 9) = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v7 = *(selfCopy + 48);
    labelMembers = [(_CDCloudFamilyDataCollectionTask *)selfCopy labelMembers];
    if ([labelMembers count])
    {
      if (!*(selfCopy + 88))
      {
        v9 = *(selfCopy + 96);
        v10 = arc4random_uniform(0xF4241u) / 1000000.0;
        *(selfCopy + 8) = v10 <= v9;
        if (v10 > v9)
        {
          goto LABEL_11;
        }

        v12 = +[_CDLogging dataCollectionChannel];
        if (OUTLINED_FUNCTION_53_0(v12))
        {
          *buf = 0;
          OUTLINED_FUNCTION_24_3();
          _os_log_debug_impl(v14, v15, v16, v17, v18, 2u);
        }

        activity3 = +[_CDCloudFamilyDataCollectionSession generateNewSession];
        [(_CDCloudFamilyDataCollectionTask *)selfCopy setSession:activity3];
      }

      if ([(_CDCloudFamilyDataCollectionSession *)*(selfCopy + 88) isValidForCollectionDate:v7])
      {
        v19 = +[_CDLogging dataCollectionChannel];
        if (OUTLINED_FUNCTION_53_0(v19))
        {
          v32 = MEMORY[0x1E696AD98];
          v33 = *(selfCopy + 88);
          if (v33)
          {
            v34 = v33[5];
          }

          else
          {
            v34 = 0;
          }

          contextb = v33;
          v2 = [v32 numberWithUnsignedInteger:v34];
          *buf = 138412290;
          v212 = v2;
          OUTLINED_FUNCTION_24_3();
          _os_log_debug_impl(v35, v36, v37, v38, v39, 0xCu);
        }

        v20 = *(selfCopy + 88);
        if (v20)
        {
          v20 = *(v20 + 32);
        }

        if (v20)
        {
          v21 = *(selfCopy + 112) * 86400.0;
          v22 = *(selfCopy + 88);
          v23 = v22 ? v22[4] : 0;
          v24 = v22;
          [OUTLINED_FUNCTION_67_0() timeIntervalSinceDate:v23];
          v26 = v25;

          if (v26 < v21)
          {
            v31 = +[_CDLogging dataCollectionChannel];
            if (OUTLINED_FUNCTION_53_0(v31))
            {
              *buf = 0;
              OUTLINED_FUNCTION_24_3();
              _os_log_debug_impl(v52, v53, v54, v55, v56, 2u);
            }

            *(selfCopy + 9) = 0;
            goto LABEL_11;
          }
        }

        v27 = *(selfCopy + 88);
        if (v27)
        {
          v28 = v27[5];
          v29 = *(selfCopy + 104);

          if (v28 > v29)
          {
            v30 = +[_CDLogging dataCollectionChannel];
            if (OUTLINED_FUNCTION_53_0(v30))
            {
              v42 = MEMORY[0x1E696AD98];
              v43 = *(selfCopy + 88);
              if (v43)
              {
                v44 = v43[5];
              }

              else
              {
                v44 = 0;
              }

              v45 = v43;
              v46 = [v42 numberWithUnsignedInteger:v44];
              [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(selfCopy + 104)];
              *buf = 138412546;
              v212 = v46;
              v214 = v213 = 2112;
              OUTLINED_FUNCTION_24_3();
              _os_log_debug_impl(v47, v48, v49, v50, v51, 0x16u);
            }

            goto LABEL_27;
          }
        }

        truncatedFileHandle = [(_CDCloudFamilyDataCollectionTask *)selfCopy truncatedFileHandle];
        v28 = truncatedFileHandle;
        if (!truncatedFileHandle)
        {
          v41 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_73_0(v41))
          {
            *buf = 0;
            _os_log_error_impl(&dword_191750000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to open file for writing cloud family data collection data", buf, 2u);
          }

          goto LABEL_37;
        }

        v150 = truncatedFileHandle;
        context = MEMORY[0x1E696AEC0];
        v57 = *(selfCopy + 88);
        if (v57)
        {
          v58 = v57[1];
        }

        else
        {
          v58 = 0;
        }

        v59 = MEMORY[0x1E696AD98];
        v60 = *(selfCopy + 88);
        if (v60)
        {
          v61 = v60[5];
        }

        else
        {
          v61 = 0;
        }

        v62 = v60;
        v63 = v58;
        v64 = v57;
        v145 = [v59 numberWithUnsignedInteger:v61];
        v65 = [context stringWithFormat:@"{collection_id:cloud_family, sessionID:%@, batch:%@, events:["];

        v148 = v65;
        v66 = [v65 dataUsingEncoding:4];
        [v150 writeData:v66];

        contactsInContactStore = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsInContactStore];
        activity5 = *(selfCopy + 64);
        [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v69];
        objc_claimAutoreleasedReturnValue();
        v76 = [OUTLINED_FUNCTION_28_2() _ios_meContactWithKeysToFetch:v61 error:0];

        v188 = v76;
        v167 = [_CDCloudFamilyDataCollectionTask contactRelationsUsingMe:];
        contactsEmergencyFamily = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsEmergencyFamily];
        contactsEmergency = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsEmergency];
        contactsInHome = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsInHome];
        v159 = [_CDCloudFamilyDataCollectionTask contactParentsUsingRegexNamesUsingContacts:];
        photosPeople = [(_CDCloudFamilyDataCollectionTask *)selfCopy photosPeople];
        airDropPeople = [(_CDCloudFamilyDataCollectionTask *)selfCopy airDropPeople];
        airDropPeopleAtHome = [(_CDCloudFamilyDataCollectionTask *)selfCopy airDropPeopleAtHome];
        v155 = objc_alloc_init(getCHManagerClass());
        v153 = [(_CDCloudFamilyDataCollectionTask *)selfCopy avgOfAllCallsUsingManager:v155];
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        obj = contactsInContactStore;
        v187 = [obj countByEnumeratingWithState:&v199 objects:v210 count:16];
        if (v187)
        {
          v186 = *v200;
          do
          {
            v77 = 0;
            do
            {
              if (*v200 != v186)
              {
                objc_enumerationMutation(obj);
              }

              v78 = *(*(&v199 + 1) + 8 * v77);
              contexta = objc_autoreleasePoolPush();
              activity4 = [selfCopy activity];
              if (activity4)
              {
                v80 = activity4;
                activity5 = [selfCopy activity];
                if (xpc_activity_should_defer(activity5))
                {
                  activity6 = [selfCopy activity];
                  v82 = xpc_activity_set_state(activity6, 3);

                  if (v82)
                  {
                    *(selfCopy + 9) = 1;
                    objc_autoreleasePoolPop(contexta);
                    v138 = obj;
                    goto LABEL_89;
                  }
                }

                else
                {
                }
              }

              identifier = [v188 identifier];
              [v78 identifier];
              objc_claimAutoreleasedReturnValue();
              v84 = [OUTLINED_FUNCTION_8_6() isEqualToString:?];

              if ((v84 & 1) == 0)
              {
                v85 = OUTLINED_FUNCTION_32_1();
                v87 = [(_CDCloudFamilyDataCollectionTask *)v85 allEmailAndPhoneNumberHandlesForContact:v86];
                v195 = 0u;
                v196 = 0u;
                v197 = 0u;
                v198 = 0u;
                v88 = v87;
                v89 = [v88 countByEnumeratingWithState:&v195 objects:v209 count:16];
                if (v89)
                {
                  v91 = v89;
                  v92 = *v196;
                  while (2)
                  {
                    for (i = 0; i != v91; ++i)
                    {
                      if (*v196 != v92)
                      {
                        objc_enumerationMutation(v88);
                      }

                      if ([labelMembers containsObject:*(*(&v195 + 1) + 8 * i)])
                      {
                        v90 = &unk_1F05EEA90;
                        goto LABEL_69;
                      }
                    }

                    v91 = [v88 countByEnumeratingWithState:&v195 objects:v209 count:16];
                    if (v91)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v90 = &unk_1F05EEA78;
LABEL_69:
                v183 = v90;

                v94 = [(_CDCloudFamilyDataCollectionTask *)selfCopy aggregateInteractionDataUsingStore:v78 contact:v155 callHistoryManager:v153 avgCallDur:?];
                v95 = [v94 mutableCopy];

                OUTLINED_FUNCTION_32_1();
                v96 = [_CDCloudFamilyDataCollectionTask contactFamilyRelationForContact:contactRelations:me:];
                v181 = [v96 mutableCopy];

                v97 = OUTLINED_FUNCTION_32_1();
                v98 = [_CDCloudFamilyDataCollectionTask contactFamilyEmergencyForContact:v97 contactFamilyEmergency:?];
                v179 = [v98 mutableCopy];

                v99 = OUTLINED_FUNCTION_32_1();
                v100 = [_CDCloudFamilyDataCollectionTask contactEmergencyForContact:v99 contactEmergency:?];
                v177 = [v100 mutableCopy];

                v101 = OUTLINED_FUNCTION_32_1();
                v102 = [_CDCloudFamilyDataCollectionTask contactParentsForContact:v101 contactParents:?];
                v175 = [v102 mutableCopy];

                v103 = OUTLINED_FUNCTION_32_1();
                v104 = [_CDCloudFamilyDataCollectionTask contactsInHomeForContact:v103 homeContacts:?];
                v105 = [v104 mutableCopy];

                [v95 addEntriesFromDictionary:v181];
                [v95 addEntriesFromDictionary:v179];
                [v95 addEntriesFromDictionary:v177];
                [v95 addEntriesFromDictionary:v175];
                v171 = v105;
                [v95 addEntriesFromDictionary:v105];
                OUTLINED_FUNCTION_32_1();
                [_CDCloudFamilyDataCollectionTask contactFamilyNameForContact:me:];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_8_6() addEntriesFromDictionary:?];

                v207 = @"labelFinal";
                v208 = v183;
                v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                v184 = v95;
                [v95 addEntriesFromDictionary:v106];

                if ([photosPeople count])
                {
                  identifier2 = [v78 identifier];
                  v108 = [photosPeople containsObject:identifier2];

                  if (v108)
                  {
                    v205 = @"contactInPhotos";
                    v206 = &unk_1F05EEA90;
                    v109 = MEMORY[0x1E695DF20];
                    v110 = &v206;
                    v111 = &v205;
                  }

                  else
                  {
                    v203 = @"contactInPhotos";
                    v204 = &unk_1F05EEA78;
                    v109 = MEMORY[0x1E695DF20];
                    v110 = &v204;
                    v111 = &v203;
                  }

                  v112 = [v109 dictionaryWithObjects:v110 forKeys:v111 count:1];
                  [v95 addEntriesFromDictionary:v112];
                }

                allKeys = [airDropPeople allKeys];
                identifier3 = [v78 identifier];
                v115 = [allKeys containsObject:identifier3];

                if (v115)
                {
                  identifier4 = [v78 identifier];
                  v117 = [airDropPeople objectForKeyedSubscript:identifier4];
                  [v184 setObject:v117 forKeyedSubscript:@"contactInAirDrop"];
                }

                else
                {
                  [v184 setObject:&unk_1F05EEA78 forKeyedSubscript:@"contactInAirDrop"];
                }

                allKeys2 = [airDropPeopleAtHome allKeys];
                identifier5 = [v78 identifier];
                v120 = [allKeys2 containsObject:identifier5];

                if (v120)
                {
                  identifier6 = [v78 identifier];
                  v122 = [airDropPeople objectForKeyedSubscript:identifier6];
                  v123 = v184;
                  [v184 setObject:v122 forKeyedSubscript:@"contactInAirDropAtHome"];
                }

                else
                {
                  v123 = v184;
                  [v184 setObject:&unk_1F05EEA78 forKeyedSubscript:@"contactInAirDropAtHome"];
                }

                activity5 = MEMORY[0x1E696ACB0];
                v124 = [v123 copy];
                v194 = 0;
                v125 = [activity5 dataWithJSONObject:v124 options:0 error:&v194];
                v126 = v194;

                if (v126)
                {
                  activity5 = +[_CDLogging dataCollectionChannel];
                  if (os_log_type_enabled(activity5, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v212 = v126;
                    _os_log_error_impl(&dword_191750000, activity5, OS_LOG_TYPE_ERROR, "Error during JSON serialization %@", buf, 0xCu);
                  }
                }

                else
                {
                  [v151 writeData:v125];
                  [@" "];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_8_6() writeData:?];
                }
              }

              objc_autoreleasePoolPop(contexta);
              ++v77;
            }

            while (v77 != v187);
            v127 = [obj countByEnumeratingWithState:&v199 objects:v210 count:16];
            v187 = v127;
          }

          while (v127);
        }

        v128 = [@" "];
        v129 = [v128 length];

        [v151 truncateFileAtOffset:{objc_msgSend(v151, "offsetInFile") - v129}];
        v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"]}"];
        [v130 dataUsingEncoding:4];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_17_5() writeData:?];

        [v151 closeFile];
        [_CDCloudFamilyDataCollectionTask submitDataForCollection];
        if (!v131)
        {
LABEL_90:

          selfCopy = v149;
          v28 = v151;
LABEL_37:

LABEL_27:
          goto LABEL_11;
        }

        v132 = MEMORY[0x1E695DF00];
        v133 = *(selfCopy + 88);
        [v132 distantPast];
        objc_claimAutoreleasedReturnValue();
        v134 = OUTLINED_FUNCTION_28_2();
        v138 = [(_CDCloudFamilyDataCollectionSession *)v134 subsequentSessionWithlatestStartDate:v151 lastCollectionDate:v7];

        v193 = 0;
        v135 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v138 requiringSecureCoding:1 error:&v193];
        v136 = v193;
        if (v136)
        {
          v137 = v136;
        }

        else
        {
          stringByDeletingLastPathComponent = [*(selfCopy + 40) stringByDeletingLastPathComponent];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

          v141 = *(selfCopy + 40);
          v192 = 0;
          v142 = v141;
          [v135 writeToFile:v142 options:0 error:&v192];
          v137 = v192;

          if (!v137)
          {
            *(selfCopy + 9) = 0;
            goto LABEL_95;
          }
        }

        v143 = +[_CDLogging dataCollectionChannel];
        if (OUTLINED_FUNCTION_73_0(v143))
        {
          *buf = 138412290;
          v212 = v137;
          OUTLINED_FUNCTION_10(&dword_191750000, selfCopy, v144, "Error archiving subsequent airplay data collection session: %@", buf);
        }

LABEL_95:
LABEL_89:

        goto LABEL_90;
      }
    }

LABEL_11:
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  v14 = *MEMORY[0x1E69E9840];
  if (self && *(self + 9) == 1)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = *(self + 40);
    [OUTLINED_FUNCTION_37_0() removeItemAtPath:? error:?];
    v4 = 0;

    if (!v4)
    {
LABEL_13:

      goto LABEL_14;
    }

    userInfo = [v4 userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v6)
    {
      domain = [v6 domain];
      if (([domain isEqualToString:*MEMORY[0x1E696A798]]& 1) != 0)
      {
        code = [v6 code];

        if (code == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v9 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_73_0(v9))
      {
        v12 = 138412290;
        v13 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, domain, v10, "Error remove previous session file: %@", &v12);
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setSession:(uint64_t)session
{
  if (session)
  {
    objc_storeStrong((session + 88), a2);
  }
}

- (id)truncatedFileHandle
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dataPath = [(_CDCloudFamilyDataCollectionTask *)self dataPath];
    stringByDeletingLastPathComponent = [dataPath stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v12];
    v4 = v12;

    if (v4)
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, v5, v6, "Error creating directory for data collection: %@", &v13);
      }

      v7 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      data = [MEMORY[0x1E695DEF0] data];
      [OUTLINED_FUNCTION_66_0() createFileAtPath:? contents:? attributes:?];

      v7 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:dataPath];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(void *)contact
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (contact)
  {
    phoneNumbers = [v3 phoneNumbers];
    v6 = [phoneNumbers valueForKey:@"value"];

    contact = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_43_0();
    v7 = v6;
    OUTLINED_FUNCTION_36();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v17 = v9;
      v18 = *v34;
      do
      {
        v19 = 0;
        do
        {
          OUTLINED_FUNCTION_29_1(v9, v10, v11, v12, v13, v14, v15, v16, v32, v33, v34);
          if (v20 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v21 = *(v33 + 8 * v19);
          unformattedInternationalStringValue = [v21 unformattedInternationalStringValue];

          if (unformattedInternationalStringValue)
          {
            unformattedInternationalStringValue2 = [v21 unformattedInternationalStringValue];
            [contact addObject:unformattedInternationalStringValue2];
          }

          ++v19;
        }

        while (v17 != v19);
        OUTLINED_FUNCTION_36();
        v9 = OUTLINED_FUNCTION_47_0(v24, v25, v26, v27);
        v17 = v9;
      }

      while (v9);
    }

    emailAddresses = [v4 emailAddresses];
    v29 = [emailAddresses valueForKey:@"value"];

    [contact addObjectsFromArray:v29];
  }

  v30 = *MEMORY[0x1E69E9840];

  return contact;
}

- (id)aggregateInteractionDataUsingStore:(void *)store contact:(void *)contact callHistoryManager:(void *)manager avgCallDur:
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v9 = MEMORY[0x1E695DF90];
    managerCopy = manager;
    contactCopy = contact;
    storeCopy = store;
    v10 = a2;
    v31 = objc_alloc_init(v9);
    v11 = [(_CDCloudFamilyDataCollectionTask *)self allEmailAndPhoneNumberHandlesForContact:storeCopy];
    v38 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v12 = MEMORY[0x1E696AE18];
    v43[0] = @"com.apple.MobileSMS";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    v35 = [v12 predicateWithFormat:@"bundleId IN %@", v13];

    v14 = MEMORY[0x1E696AE18];
    v42 = @"com.apple.UIKit.activity.Message";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v34 = [v14 predicateWithFormat:@"targetBundleId IN %@", v15];

    v41[0] = v35;
    v41[1] = v34;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v33 = [OUTLINED_FUNCTION_63_0() orPredicateWithSubpredicates:?];

    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v11];
    v40[0] = v33;
    v40[1] = v32;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v30 = [OUTLINED_FUNCTION_63_0() andPredicateWithSubpredicates:?];

    v18 = [(_CDCloudFamilyDataCollectionTask *)self fetchInteractionFeatureDictionaryWithPredicate:v30 store:v10 sortDescription:v38];
    v19 = v31;
    [v31 addEntriesFromDictionary:v18];
    v20 = [(_CDCloudFamilyDataCollectionTask *)self getThirdPartyPredicateForContact:storeCopy handles:v11];
    v21 = [(_CDCloudFamilyDataCollectionTask *)self fetchInteractionFeatureDictionaryWithPredicate:v20 store:v10 sortDescription:v38];

    v22 = [(_CDCloudFamilyDataCollectionTask *)self thirdPartyMessageFeaturesFromFeatureDictionary:v21];
    [v31 addEntriesFromDictionary:v22];
    v23 = [getCHRecentCallClass() predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:v11];
    v24 = [contactCopy callsWithPredicate:v23 limit:0 offset:0 batchSize:0];

    [managerCopy doubleValue];
    v26 = v25;

    v27 = [(_CDCloudFamilyDataCollectionTask *)self callFeaturesFromInteractions:v24 avgCallLength:storeCopy contact:v26];

    [OUTLINED_FUNCTION_66_0() addEntriesFromDictionary:?];
  }

  else
  {
    v19 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)contactFamilyRelationForContact:contactRelations:me:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v63[17] = *MEMORY[0x1E69E9840];
  v7 = v6;
  v8 = v3;
  v9 = v1;
  if (v5)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = v8;
    v10 = v8;
    OUTLINED_FUNCTION_61_0();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v54;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v53 + 1) + 8 * v15);
          identifier = [v7 identifier];
          identifier2 = [v16 identifier];
          v19 = [identifier isEqualToString:identifier2];

          if (v19)
          {
            v62 = @"contactFamilyRelation";
            v63[0] = &unk_1F05EEA90;
            v41 = MEMORY[0x1E695DF20];
            v42 = v63;
            v43 = &v62;
            goto LABEL_20;
          }

          ++v15;
        }

        while (v13 != v15);
        OUTLINED_FUNCTION_61_0();
        v13 = OUTLINED_FUNCTION_74(v20, v21, v22, v23);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [_CDCloudFamilyDataCollectionTask contactRelationsUsingMe:];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_26_3();
    v10 = v24;
    v25 = [v10 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v25)
    {
      v33 = v25;
      v34 = *v52;
      while (2)
      {
        v35 = 0;
        do
        {
          OUTLINED_FUNCTION_44_0(v25, v26, v27, v28, v29, v30, v31, v32, v48, v49, v50, v51, v52);
          if (!v36)
          {
            objc_enumerationMutation(v10);
          }

          v37 = *(v51 + 8 * v35);
          identifier3 = [v9 identifier];
          identifier4 = [v37 identifier];
          v40 = [identifier3 isEqualToString:identifier4];

          if (v40)
          {
            v59 = @"contactFamilyRelation";
            v60 = &unk_1F05EEA90;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            objc_claimAutoreleasedReturnValue();

            goto LABEL_21;
          }

          ++v35;
        }

        while (v33 != v35);
        v25 = OUTLINED_FUNCTION_74(v25, v26, &v50, v61);
        v33 = v25;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v57 = @"contactFamilyRelation";
    v58 = &unk_1F05EEA78;
    v41 = MEMORY[0x1E695DF20];
    v42 = &v58;
    v43 = &v57;
LABEL_20:
    [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
    objc_claimAutoreleasedReturnValue();
LABEL_21:

    v8 = v49;
  }

  v44 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_0();

  return v45;
}

- (id)contactFamilyNameForContact:me:
{
  OUTLINED_FUNCTION_52_0();
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  v6 = v5;
  if (v1)
  {
    familyName = [v5 familyName];
    [v6 familyName];
    if (objc_claimAutoreleasedReturnValue())
    {
      familyName2 = [OUTLINED_FUNCTION_9_5() familyName];
      if (familyName2)
      {
        v9 = familyName2;
        familyName3 = [v6 familyName];
        familyName4 = [v4 familyName];
        v12 = [familyName length];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v14 = [familyName3 compare:familyName4 options:129 range:0 locale:{v12, currentLocale}];

        if (!v14)
        {
          v23 = @"contactFamilyName";
          v24[0] = &unk_1F05EEA90;
          v15 = MEMORY[0x1E695DF20];
          v16 = v24;
          v17 = &v23;
LABEL_8:
          v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v21 = @"contactFamilyName";
    v22 = &unk_1F05EEA78;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v22;
    v17 = &v21;
    goto LABEL_8;
  }

  v18 = 0;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)submitDataForCollection
{
  OUTLINED_FUNCTION_50_0();
  v24 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v2 = v1;
    v3 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_191750000, v3, OS_LOG_TYPE_DEBUG, "Compressing airplay data collection json file", buf, 2u);
    }

    dataPath = [(_CDCloudFamilyDataCollectionTask *)&v2->isa dataPath];
    v5 = [dataPath stringByAppendingPathExtension:@"tar.gz"];
    [dataPath fileSystemRepresentation];
    lastPathComponent = [OUTLINED_FUNCTION_67_0() lastPathComponent];
    [lastPathComponent fileSystemRepresentation];

    [v5 fileSystemRepresentation];
    archive_write_new();
    if (!archive_write_add_filter_gzip() && !archive_write_set_format_pax_restricted())
    {
      OUTLINED_FUNCTION_65_0();
      if (!archive_write_open_filename())
      {
        bzero(&v19, 0x90uLL);
        stat(v0, &v19);
        archive_entry_new();
        archive_entry_set_size();
        archive_entry_set_filetype();
        archive_entry_set_perm();
        archive_entry_set_pathname();
        OUTLINED_FUNCTION_65_0();
        if (!archive_write_header())
        {
          v12 = open(v0, 0);
          while (read(v12, buf, 0x2000uLL))
          {
            archive_write_data();
          }

          close(v12);
          archive_entry_free();
          archive_write_close();
          archive_write_free();
          v18 = 0;
          v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:8 error:&v18];
          v14 = v18;
          if (v14)
          {
            lastPathComponent2 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v21 = v14;
              OUTLINED_FUNCTION_10(&dword_191750000, lastPathComponent2, v16, "Error mapping gzipped data collection file for DA submission: %@", buf);
            }
          }

          else
          {
            lastPathComponent2 = [v5 lastPathComponent];
            submissionBlock = [v2 submissionBlock];
            (submissionBlock)[2](submissionBlock, lastPathComponent2, v13);
          }

          goto LABEL_12;
        }

        archive_entry_free();
      }
    }

    v7 = archive_errno();
    v8 = archive_error_string();
    v9 = +[_CDLogging dataCollectionChannel];
    if (OUTLINED_FUNCTION_73_0(v9))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      *buf = 138412546;
      v21 = v11;
      v22 = 2080;
      v23 = v8;
      _os_log_error_impl(&dword_191750000, v2, OS_LOG_TYPE_ERROR, "Error compressing data collection file. code:%@ %s", buf, 0x16u);
    }

    archive_write_close();
    archive_write_free();
LABEL_12:
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_0();
}

- (id)dataPath
{
  selfCopy = self;
  if (self)
  {
    if (self[11])
    {
      v2 = self[11];
      if (v2)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 0;
      }

      v4 = self[11];
      if (v4)
      {
        v5 = v4[5];
      }

      v6 = v4;
      v7 = v3;
      v8 = v2;
      v9 = [OUTLINED_FUNCTION_37_0() numberWithUnsignedInteger:?];
      v10 = [v7 stringByAppendingFormat:@".%@.json", v9];

      selfCopy = [selfCopy[4] stringByAppendingPathComponent:v10];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)indexToInsertDate:(void *)date array:
{
  if (result)
  {
    dateCopy = date;
    v5 = a2;
    [dateCopy count];
    v6 = [OUTLINED_FUNCTION_51_0() indexOfObject:? inSortedRange:? options:? usingComparator:?];

    return v6;
  }

  return result;
}

- (id)allAirDropInteractionsFromStore:(uint64_t)store fetchLimit:
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = MEMORY[0x1E696AE18];
    v5 = a2;
    v6 = [v4 predicateWithFormat:@"(targetBundleId == %@)", @"com.apple.UIKit.activity.AirDrop"];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F05EEAA8];
    v22[0] = v7;
    v22[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v9 = [OUTLINED_FUNCTION_62_0() andPredicateWithSubpredicates:?];

    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v21 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v18 = 0;
    v12 = [v5 queryInteractionsUsingPredicate:v9 sortDescriptors:v11 limit:store error:&v18];

    v13 = v18;
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v13;
        OUTLINED_FUNCTION_10(&dword_191750000, MEMORY[0x1E69E9C10], v14, "Error querying interactions database: %@", &v19);
      }

      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)relationshipRegularExpressionForRelationship
{
  OUTLINED_FUNCTION_50_0();
  v68 = *MEMORY[0x1E69E9840];
  if (v0)
  {
    personRelationshipVocabularyByLocaleDictionary = [(_CDCloudFamilyDataCollectionTask *)v0 personRelationshipVocabularyByLocaleDictionary];
    allValues = [personRelationshipVocabularyByLocaleDictionary allValues];
    array = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v2 = allValues;
    OUTLINED_FUNCTION_55();
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v4)
    {
      OUTLINED_FUNCTION_54(v4, v5, v6, v7, v8, v9, v10, v11, v44, personRelationshipVocabularyByLocaleDictionary, obj, v48, v4, v51, array, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65);
      v49 = v20;
      do
      {
        v21 = 0;
        do
        {
          OUTLINED_FUNCTION_54(v12, v13, v14, v15, v16, v17, v18, v19, v45, personRelationshipVocabularyByLocaleDictionary, obj, v49, v50, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65);
          if (v22 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v52 = v21;
          allValues2 = [*(*(&v64 + 1) + 8 * v21) allValues];
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_60_0();
          v25 = [v24 countByEnumeratingWithState:? objects:? count:?];
          if (v25)
          {
            v33 = v25;
            v34 = *v58;
            do
            {
              v35 = 0;
              do
              {
                OUTLINED_FUNCTION_48_0(v25, v26, v27, v28, v29, v30, v31, v32, v45, personRelationshipVocabularyByLocaleDictionary, obj, v49, v50, v52, v54, v55, v56, v57, v58);
                if (v36 != v34)
                {
                  objc_enumerationMutation(allValues2);
                }

                v37 = MEMORY[0x1E696AEC0];
                v45 = [*(v57 + 8 * v35) componentsJoinedByString:@"|"];
                v38 = [v37 stringWithFormat:@"^(%@)$"];

                v55 = 0;
                v39 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v38 options:1 error:&v55];
                if (v39)
                {
                  [v54 addObject:v39];
                }

                ++v35;
              }

              while (v33 != v35);
              OUTLINED_FUNCTION_60_0();
              v25 = [allValues2 countByEnumeratingWithState:? objects:? count:?];
              v33 = v25;
            }

            while (v25);
          }

          v21 = v52 + 1;
        }

        while (v52 + 1 != v50);
        OUTLINED_FUNCTION_55();
        v12 = [obj countByEnumeratingWithState:? objects:? count:?];
        v50 = v12;
      }

      while (v12);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_0();

  return v41;
}

- (id)personRelationshipVocabularyByLocaleDictionary
{
  if (self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82___CDCloudFamilyDataCollectionTask_personRelationshipVocabularyByLocaleDictionary__block_invoke;
    block[3] = &unk_1E7367440;
    block[4] = self;
    if (_MergedGlobals_1 != -1)
    {
      dispatch_once(&_MergedGlobals_1, block);
    }

    self = qword_1EADBD5E0;
    v1 = block[6];
  }

  return self;
}

- (id)callFeaturesFromInteractions:(void *)interactions avgCallLength:(double)length contact:
{
  v248 = *MEMORY[0x1E69E9840];
  v7 = a2;
  interactionsCopy = interactions;
  if (self)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v237 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v237 setDateFormat:@"dd/MM/yyyy"];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    birthday = [interactionsCopy birthday];
    v238 = [MEMORY[0x1E695DFA8] set];
    lastObject = [v7 lastObject];
    date = [lastObject date];

    if (date && ([MEMORY[0x1E695DF00] date], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentCalendar, "components:fromDate:toDate:options:", 16, date, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
    {
      v15 = [v14 day];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];

      if (v15 && [v7 count])
      {
        v229 = v15;
        v230 = v14;
        v231 = date;
        v17 = +[_CDContactFavoritesUtilities sharedInstance];
        v245[0] = MEMORY[0x1E69E9820];
        v245[1] = 3221225472;
        v245[2] = __87___CDCloudFamilyDataCollectionTask_callFeaturesFromInteractions_avgCallLength_contact___block_invoke;
        v245[3] = &unk_1E7369998;
        v232 = v9;
        v18 = v9;
        v246 = v18;
        v233 = interactionsCopy;
        [v17 accessEntriesForContact:interactionsCopy withBlock:v245];

        [v18 setObject:&unk_1F05EF180 forKeyedSubscript:@"callMaxDur"];
        v243 = 0u;
        v244 = 0u;
        v241 = 0u;
        v242 = 0u;
        v234 = v7;
        obj = v7;
        v19 = 0x1E696A000uLL;
        v239 = [obj countByEnumeratingWithState:&v241 objects:v247 count:16];
        if (!v239)
        {
          goto LABEL_74;
        }

        v236 = *v242;
        v20 = length + length;
        while (1)
        {
          v21 = 0;
          do
          {
            if (*v242 != v236)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v241 + 1) + 8 * v21);
            v23 = *(v19 + 3480);
            v24 = [v18 objectForKeyedSubscript:@"callTotalDur"];
            [v24 doubleValue];
            v26 = v25;
            [v22 duration];
            [v23 numberWithDouble:v26 + v27];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            [v22 duration];
            v29 = v28;
            v30 = [v18 objectForKeyedSubscript:@"callMaxDur"];
            [v30 doubleValue];
            v32 = v31;

            if (v29 > v32)
            {
              v33 = *(v19 + 3480);
              [v22 duration];
              [v33 numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            callStatus = [v22 callStatus];
            if (callStatus == getkCHCallStatusConnectedOutgoing())
            {
              v35 = *(v19 + 3480);
              v36 = [v18 objectForKeyedSubscript:@"callOutgoingRatio"];
              [v35 numberWithInteger:{objc_msgSend(v36, "integerValue") + 1}];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            [v22 duration];
            v38 = v37;
            if (v37 >= v20)
            {
              v39 = *(v19 + 3480);
              v40 = [v18 objectForKeyedSubscript:@"callLongRatio"];
              [v39 numberWithInteger:{objc_msgSend(v40, "integerValue") + 1}];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            date2 = [v22 date];
            v42 = [v237 stringFromDate:date2];

            [v238 addObject:v42];
            date3 = [v22 date];
            v19 = currentCalendar;
            v44 = [currentCalendar components:568 fromDate:date3];

            [v44 weekday];
            [OUTLINED_FUNCTION_58_0() hour];
            v45 = [OUTLINED_FUNCTION_9_5() day];
            month = [v44 month];
            if ([birthday day] == v45 && objc_msgSend(birthday, "month") == month)
            {
              [v18 setObject:&unk_1F05EEA90 forKeyedSubscript:@"callBirthday"];
            }

            v47 = date3 - 6;
            if ((currentCalendar - 2) > 3)
            {
              if (currentCalendar != 7)
              {
                if (currentCalendar == 6)
                {
                  if (v47 > 5)
                  {
                    OUTLINED_FUNCTION_56_0();
                    v19 = 0x1E696A000;
                    if (!v56 & v55)
                    {
                      v91 = OUTLINED_FUNCTION_10_6();
                      if (v92 > 5)
                      {
                        v103 = [v91 objectForKeyedSubscript:@"callNightFri"];
                        [v103 integerValue];
                        [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v104 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightFri"];
                        [v104 doubleValue];
                        OUTLINED_FUNCTION_33_0();
                        [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v52 = @"callLongNightFri";
                        if (v38 < v20)
                        {
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                        v93 = [v91 objectForKeyedSubscript:@"callEveFri"];
                        [v93 integerValue];
                        [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v94 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveFri"];
                        [v94 doubleValue];
                        OUTLINED_FUNCTION_33_0();
                        [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v52 = @"callLongEveFri";
                        if (v38 < v20)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    else
                    {
                      v83 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callNoonFri"];
                      [v83 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v84 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonFri"];
                      [v84 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongNoonFri";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }
                  }

                  else
                  {
                    v53 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callMorningFri"];
                    [v53 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v54 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurMorningFri"];
                    [v54 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongMorningFri";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else if (v47 > 5)
                {
                  OUTLINED_FUNCTION_56_0();
                  v19 = 0x1E696A000;
                  if (!v56 & v55)
                  {
                    v99 = OUTLINED_FUNCTION_10_6();
                    if (v100 > 5)
                    {
                      v107 = [v99 objectForKeyedSubscript:@"callNightSun"];
                      [v107 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v108 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightSun"];
                      [v108 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongNightSun";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v101 = [v99 objectForKeyedSubscript:@"callEveSun"];
                      [v101 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v102 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveSun"];
                      [v102 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongEveSun";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }
                  }

                  else
                  {
                    v87 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callNoonSun"];
                    [v87 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v88 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonSun"];
                    [v88 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNoonSun";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v77 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callMorningSun"];
                  [v77 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v78 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurMorningSun"];
                  [v78 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongMorningSun";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_34;
              }

              if (v47 > 5)
              {
                OUTLINED_FUNCTION_56_0();
                if (!v56 & v55)
                {
                  v95 = OUTLINED_FUNCTION_7_5();
                  if (v96 > 5)
                  {
                    v105 = [v95 objectForKeyedSubscript:@"callNightSat"];
                    [v105 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v106 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightSat"];
                    [v106 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNightSat";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v97 = [v95 objectForKeyedSubscript:@"callEveSat"];
                    [v97 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v98 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveSat"];
                    [v98 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongEveSat";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v85 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callNoonSat"];
                  [v85 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v86 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonSat"];
                  [v86 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongNoonSat";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

LABEL_34:
                v61 = *(v19 + 3480);
                v62 = [v18 objectForKeyedSubscript:v52];
                v63 = [v61 numberWithInteger:{objc_msgSend(v62, "integerValue") + 1}];
                [v18 setObject:v63 forKeyedSubscript:v52];

                goto LABEL_35;
              }

              v48 = 0x1E696A000uLL;
              v59 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callMorningSat"];
              [v59 integerValue];
              [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v60 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callDurMorningSat"];
              [v60 doubleValue];
              OUTLINED_FUNCTION_33_0();
              [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v51 = v38 < v20;
              v52 = @"callLongMorningSat";
            }

            else
            {
              if (v47 > 5)
              {
                OUTLINED_FUNCTION_56_0();
                if (!v56 & v55)
                {
                  v79 = OUTLINED_FUNCTION_7_5();
                  if (v80 > 5)
                  {
                    v89 = [v79 objectForKeyedSubscript:@"callNightWeekday"];
                    [v89 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v90 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightWeekday"];
                    [v90 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNightWeekday";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v81 = [v79 objectForKeyedSubscript:@"callEveWeekday"];
                    [v81 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v82 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveWeekday"];
                    [v82 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongEveWeekday";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v57 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callNoonWeekday"];
                  [v57 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v58 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonWeekday"];
                  [v58 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongNoonWeekday";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_34;
              }

              v48 = 0x1E696A000;
              v49 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callMorningWeekday"];
              [v49 integerValue];
              [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v50 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callDurMorningWeekday"];
              [v50 doubleValue];
              OUTLINED_FUNCTION_33_0();
              [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v51 = v38 < v20;
              v52 = @"callLongMorningWeekday";
            }

            v19 = v48;
            if (!v51)
            {
              goto LABEL_34;
            }

LABEL_35:
            date4 = [v22 date];
            [date4 timeIntervalSinceNow];
            v66 = v65;

            v67 = @"callTwoWeeks";
            if (v66 >= -1209600.0)
            {
              goto LABEL_38;
            }

            date5 = [v22 date];
            [date5 timeIntervalSinceNow];
            v70 = v69;

            v67 = @"callSixWeeks";
            if (v70 >= -3628800.0 || ([v22 date], v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "timeIntervalSinceNow"), v73 = v72, v71, v67 = @"callTwelveWeeks", v73 >= -7257600.0))
            {
LABEL_38:
              v74 = *(v19 + 3480);
              v75 = [v18 objectForKeyedSubscript:v67];
              v76 = [v74 numberWithInteger:{objc_msgSend(v75, "integerValue") + 1}];
              [v18 setObject:v76 forKeyedSubscript:v67];
            }

            ++v21;
          }

          while (v239 != v21);
          v109 = [obj countByEnumeratingWithState:&v241 objects:v247 count:16];
          v239 = v109;
          if (!v109)
          {
LABEL_74:

            v110 = [v18 objectForKeyedSubscript:@"callTotal"];
            integerValue = [v110 integerValue];

            v112 = [*(v19 + 3480) numberWithDouble:{objc_msgSend(v238, "count") / v229}];
            [v18 setObject:v112 forKeyedSubscript:@"callDayRatio"];

            v113 = *(v19 + 3480);
            v114 = v19;
            v115 = [v18 objectForKeyedSubscript:@"callOutgoingRatio"];
            v116 = integerValue;
            [v113 numberWithDouble:{objc_msgSend(v115, "integerValue") / integerValue}];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v117 = *(v19 + 3480);
            v118 = [v18 objectForKeyedSubscript:@"callTotalDur"];
            [v118 doubleValue];
            v120 = [v117 numberWithLong:10 * (llround(v119 / v116) / 10)];
            [v18 setObject:v120 forKeyedSubscript:@"callAvgDur"];

            v121 = *(v19 + 3480);
            v122 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v122 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v123 = *(v114 + 3480);
            v124 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v124 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v125 = *(v114 + 3480);
            v126 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v126 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v127 = *(v114 + 3480);
            v128 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v128 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v129 = *(v114 + 3480);
            v130 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v130 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v131 = *(v114 + 3480);
            v132 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v132 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v133 = *(v114 + 3480);
            v134 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v134 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v135 = *(v114 + 3480);
            v136 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v136 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v137 = *(v114 + 3480);
            v138 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v138 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v139 = *(v114 + 3480);
            v140 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v140 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v141 = *(v114 + 3480);
            v142 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v142 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v143 = *(v114 + 3480);
            v144 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v144 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v145 = *(v114 + 3480);
            v146 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v146 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v147 = *(v114 + 3480);
            v148 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v148 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v149 = *(v114 + 3480);
            v150 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v150 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v151 = *(v114 + 3480);
            v152 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v152 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v153 = *(v114 + 3480);
            v154 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v154 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v155 = *(v114 + 3480);
            v156 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v156 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v157 = *(v114 + 3480);
            v158 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v158 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v159 = *(v114 + 3480);
            v160 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v160 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v161 = *(v114 + 3480);
            v162 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v162 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v163 = *(v114 + 3480);
            v164 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v164 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v165 = *(v114 + 3480);
            v166 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v166 doubleValue];
            [v165 numberWithLong:llround(v167 / v116)];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v168 = *(v114 + 3480);
            v169 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v169 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v170 = *(v114 + 3480);
            v171 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v171 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v172 = *(v114 + 3480);
            v173 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v173 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v174 = *(v114 + 3480);
            v175 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v175 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v176 = *(v114 + 3480);
            v177 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v177 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v178 = *(v114 + 3480);
            v179 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v179 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v180 = *(v114 + 3480);
            v181 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v181 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v182 = *(v114 + 3480);
            v183 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v183 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v184 = *(v114 + 3480);
            v185 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v185 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v186 = *(v114 + 3480);
            v187 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v187 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v188 = *(v114 + 3480);
            v189 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v189 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v190 = *(v114 + 3480);
            v191 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v191 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v192 = *(v114 + 3480);
            v193 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v193 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v194 = *(v114 + 3480);
            v195 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v195 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v196 = *(v114 + 3480);
            v197 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v197 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v198 = *(v114 + 3480);
            v199 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v199 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v200 = *(v114 + 3480);
            v201 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v201 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v202 = *(v114 + 3480);
            v203 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v203 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v204 = *(v114 + 3480);
            v205 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v205 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v206 = *(v114 + 3480);
            v207 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v207 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v208 = *(v114 + 3480);
            v209 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v209 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v210 = *(v114 + 3480);
            v211 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v211 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v212 = *(v114 + 3480);
            v213 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v213 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v214 = *(v114 + 3480);
            v215 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v215 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v216 = *(v114 + 3480);
            v217 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v217 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v218 = *(v114 + 3480);
            v219 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v219 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v220 = *(v114 + 3480);
            v221 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v221 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v222 = *(v114 + 3480);
            v223 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v223 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v224 = v18;
            interactionsCopy = v233;
            v7 = v234;
            date = v231;
            v9 = v232;
            v14 = v230;
            goto LABEL_77;
          }
        }
      }

      v226 = v9;
LABEL_77:

      v225 = v9;
    }

    else
    {
      v225 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v225 = 0;
  }

  v227 = *MEMORY[0x1E69E9840];

  return v225;
}

- (void)messagesCumulativeFeaturesFromInteractionsBatch:(void *)batch mutableMessagesDictionary:
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  batchCopy = batch;
  if (!self)
  {
    goto LABEL_37;
  }

  v49 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v49 setDateFormat:@"dd/MM/yyyy"];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if (![v5 count])
  {
    goto LABEL_36;
  }

  v7 = 0x1E696A000uLL;
  v8 = MEMORY[0x1E696AD98];
  v9 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v5, "count") + objc_msgSend(v9, "integerValue")}];
  [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = v5;
  obj = v5;
  v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v50)
  {
    goto LABEL_35;
  }

  v47 = *v52;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v52 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v51 + 1) + 8 * i);
      if ([v12 direction] == 1)
      {
        v13 = *(v7 + 3480);
        v14 = [batchCopy objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];
        [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];
      }

      startDate = [v12 startDate];
      v17 = [v49 stringFromDate:startDate];

      v18 = [batchCopy objectForKeyedSubscript:@"daysSeen"];

      if (!v18)
      {
        v19 = objc_opt_new();
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      }

      v20 = [batchCopy objectForKeyedSubscript:@"fromDate"];

      if (!v20 || ([batchCopy objectForKeyedSubscript:@"fromDate"], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "startDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "compare:", v22), v22, v21, v23 == 1))
      {
        startDate2 = [v12 startDate];
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      }

      v25 = [batchCopy objectForKeyedSubscript:@"daysSeen"];
      [v25 addObject:v17];

      startDate3 = [v12 startDate];
      v27 = [currentCalendar components:544 fromDate:startDate3];

      weekday = [v27 weekday];
      hour = [v27 hour];
      v30 = hour - 6;
      if ((weekday - 2) > 3)
      {
        if (weekday == 7)
        {
          if (v30 >= 6 && (hour - 12) >= 6)
          {
LABEL_29:
            OUTLINED_FUNCTION_68_0();
          }
        }

        else if (weekday == 6)
        {
          if (v30 >= 6 && (hour - 12) >= 6)
          {
            goto LABEL_29;
          }
        }

        else if (v30 >= 6 && (hour - 12) >= 6)
        {
          goto LABEL_29;
        }
      }

      else if (v30 >= 6 && (hour - 12) >= 6)
      {
        goto LABEL_29;
      }

      v31 = *(v7 + 3480);
      [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
      v33 = v32 = v7;
      [v33 integerValue];
      v34 = [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
      [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

      v7 = v32;
      startDate4 = [v12 startDate];
      [startDate4 timeIntervalSinceNow];
      v37 = v36;

      if (v37 >= -1209600.0 || ([v12 startDate], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "timeIntervalSinceNow"), v40 = v39, v38, v40 >= -3628800.0))
      {
        v41 = *(v32 + 3480);
        v42 = [batchCopy objectForKeyedSubscript:@"firstPartyMsgTwoWeeks"];
        [v42 integerValue];
        v43 = [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];
      }
    }

    v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v50);
LABEL_35:

  v5 = v45;
LABEL_36:

LABEL_37:
  v44 = *MEMORY[0x1E69E9840];
}

- (void)messagesFeaturesFromCumulativeDict:(uint64_t)dict
{
  v3 = a2;
  v4 = v3;
  if (dict)
  {
    if ([v3 count])
    {
      v5 = [v4 objectForKeyedSubscript:@"firstPartyMsgTotal"];
      integerValue = [v5 integerValue];

      if (integerValue)
      {
        v7 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v8 = [v4 objectForKeyedSubscript:@"fromDate"];
        [OUTLINED_FUNCTION_14_0() removeObjectForKey:?];
        [v4 removeObjectForKey:@"fromDate"];
        if (v8)
        {
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          date = [MEMORY[0x1E695DF00] date];
          v11 = [currentCalendar components:16 fromDate:v8 toDate:date options:0];

          if (v11)
          {
            v12 = [v11 day];
            if (!v12)
            {

              goto LABEL_12;
            }

            v13 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v7, "count") / v12}];
            [v4 setObject:v13 forKeyedSubscript:@"firstPartyMsgDayRatio"];
          }

          else
          {
            [v4 setObject:&unk_1F05EF190 forKeyedSubscript:@"firstPartyMsgDayRatio"];
            v13 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v52 = 0;
              _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "Number of days was not valid, could not calculate ratio", v52, 2u);
            }
          }
        }

        v14 = MEMORY[0x1E696AD98];
        v15 = [v4 objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"];
        [v14 numberWithDouble:{objc_msgSend(v15, "integerValue") / integerValue}];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v16 = MEMORY[0x1E696AD98];
        v17 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v17 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v18 = MEMORY[0x1E696AD98];
        v19 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v19 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v20 = MEMORY[0x1E696AD98];
        v21 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v21 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v22 = MEMORY[0x1E696AD98];
        v23 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v23 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v24 = MEMORY[0x1E696AD98];
        v25 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v25 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v26 = MEMORY[0x1E696AD98];
        v27 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v27 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v28 = MEMORY[0x1E696AD98];
        v29 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v29 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v30 = MEMORY[0x1E696AD98];
        v31 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v31 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v32 = MEMORY[0x1E696AD98];
        v33 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v33 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v34 = MEMORY[0x1E696AD98];
        v35 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v35 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v36 = MEMORY[0x1E696AD98];
        v37 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v37 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v38 = MEMORY[0x1E696AD98];
        v39 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v39 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v40 = MEMORY[0x1E696AD98];
        v41 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v41 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v42 = MEMORY[0x1E696AD98];
        v43 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v43 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v44 = MEMORY[0x1E696AD98];
        v45 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v45 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v46 = MEMORY[0x1E696AD98];
        v47 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v47 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v48 = MEMORY[0x1E696AD98];
        v49 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v49 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v50 = MEMORY[0x1E696AD98];
        v51 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v51 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

LABEL_12:
      }
    }
  }
}

- (id)thirdPartyMessageFeaturesFromFeatureDictionary:(uint64_t)dictionary
{
  v3 = a2;
  if (dictionary)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v3 count])
    {
      v5 = v3;
      if ([v5 count])
      {
        v6 = [v5 objectForKeyedSubscript:@"firstPartyMsgTotal"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v7 = [v5 objectForKeyedSubscript:@"firstPartyMsgDayRatio"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v8 = [v5 objectForKeyedSubscript:@"firstPartyMsgTwoWeeks"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v9 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v10 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v11 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v12 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v13 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v14 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v15 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v16 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v17 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v18 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v19 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v20 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v21 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v22 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v23 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v24 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v25 = v4;
      }

      else
      {
        v25 = MEMORY[0x1E695E0F8];
      }
    }

    else
    {
      v25 = v4;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)getThirdPartyPredicateForContact:(void *)contact handles:
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = a2;
  contactCopy = contact;
  v43 = contactCopy;
  if (self)
  {
    v7 = contactCopy;
    array = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId != %@", @"com.apple.MobileSMS"];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"direction IN %@", &unk_1F05EF488];
    v38 = &unk_1F05EF4A0;
    [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@"];
    objc_claimAutoreleasedReturnValue();
    v41 = v9;
    [OUTLINED_FUNCTION_67_0() addObject:v9];
    v40 = v10;
    [array addObject:v10];
    v42 = array;
    v39 = v3;
    [array addObject:v3];
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    OUTLINED_FUNCTION_16_2();
    obj = v7;
    v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v13)
    {
      v21 = v13;
      v22 = *v48;
      do
      {
        v23 = 0;
        do
        {
          OUTLINED_FUNCTION_48_0(v13, v14, v15, v16, v17, v18, v19, v20, v38, v39, v40, v41, v42, v43, v44, obj, v46, v47, v48);
          if (v24 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(v47 + 8 * v23);
          v26 = [_CDContactResolver normalizedStringFromContactString:v25];
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v28 = [v25 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

          v38 = v28;
          v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)"];
          [v12 addObject:v3];

          [OUTLINED_FUNCTION_62_0() addObject:?];
          ++v23;
        }

        while (v21 != v23);
        v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        v21 = v13;
      }

      while (v13);
    }

    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ANY recipients.identifier IN %@)", v11];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(derivedIntentIdentifier IN %@)", v12];
    v31 = MEMORY[0x1E696AE18];
    [v44 identifier];
    objc_claimAutoreleasedReturnValue();
    v32 = [OUTLINED_FUNCTION_8_6() setWithObject:?];
    v33 = [v31 predicateWithFormat:@"(ANY recipients.personId IN %@)", v32];

    v49[0] = v29;
    v49[1] = v30;
    v49[2] = v33;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
    objc_claimAutoreleasedReturnValue();
    v34 = [OUTLINED_FUNCTION_8_6() orPredicateWithSubpredicates:?];
    [v42 addObject:v34];

    v35 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v42];
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)fetchInteractionFeatureDictionaryWithPredicate:(void *)predicate store:(void *)store sortDescription:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  predicateCopy = predicate;
  storeCopy = store;
  if (self)
  {
    v10 = objc_opt_new();
    v11 = 0;
    v12 = MEMORY[0x1E695E0F0];
    do
    {
      v13 = v12;
      v14 = objc_autoreleasePoolPush();
      v18[0] = storeCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v12 = [OUTLINED_FUNCTION_51_0() queryInteractionsUsingPredicate:? sortDescriptors:? limit:? offset:? error:?];

      [(_CDCloudFamilyDataCollectionTask *)self messagesCumulativeFeaturesFromInteractionsBatch:v12 mutableMessagesDictionary:v10];
      v11 += 128;
      objc_autoreleasePoolPop(v14);
    }

    while ([v12 count] == 128);
    [(_CDCloudFamilyDataCollectionTask *)self messagesFeaturesFromCumulativeDict:v10];
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)initWithStorage:(uint64_t)a3 contactStore:(uint64_t)a4 medicalIDStore:(uint64_t)a5 activity:(uint64_t)a6 sessionPath:(uint64_t)a7 dataDirectory:(uint64_t)a8 collectionDate:samplingRate:maxBatches:daysPerBatch:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "Error unarchiving cloud family data collection session: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)airDropPeopleAtHome
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*self + 40));
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "Error fetching home visits: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end