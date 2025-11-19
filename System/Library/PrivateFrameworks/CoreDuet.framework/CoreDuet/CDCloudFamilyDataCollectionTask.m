@interface CDCloudFamilyDataCollectionTask
@end

@implementation CDCloudFamilyDataCollectionTask

void __167___CDCloudFamilyDataCollectionTask_initWithStorage_contactStore_medicalIDStore_activity_sessionPath_dataDirectory_collectionDate_samplingRate_maxBatches_daysPerBatch___block_invoke_969(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __167___CDCloudFamilyDataCollectionTask_initWithStorage_contactStore_medicalIDStore_activity_sessionPath_dataDirectory_collectionDate_samplingRate_maxBatches_daysPerBatch___block_invoke_969_cold_1();
  }

  v8 = v4;
  v7 = v4;
  OSAWriteLogForSubmission();
}

uint64_t __60___CDCloudFamilyDataCollectionTask_indexToInsertDate_array___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timeIntervalSinceDate:v5];
  if (v6 >= 0.0)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = v8 > 0.0;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v34 = v6;
  v35 = v5;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v5 members];
  v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    v36 = *v46;
    do
    {
      v17 = 0;
      v37 = v15;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v45 + 1) + 8 * v17);
        v19 = [v18 dictionary];
        v40 = [v19 objectForKeyedSubscript:@"member-phone-numbers"];
        if ([v40 length] >= 2)
        {
          v39 = v19;
          v20 = [v40 componentsSeparatedByString:{@", "}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v42;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v42 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(*(a1 + 40) + 8) + 40);
                v26 = [_CDContactResolver normalizedStringFromContactString:*(*(&v41 + 1) + 8 * i)];
                [v25 addObject:v26];
              }

              v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v22);
          }

          v16 = v36;
          v15 = v37;
          v19 = v39;
        }

        v27 = [v18 appleID];

        if (v27)
        {
          v28 = *(*(*(a1 + 40) + 8) + 40);
          v29 = [v18 appleID];
          [v28 addObject:v29];
        }

        v30 = [v18 inviteEmail];

        if (v30)
        {
          v31 = *(*(*(a1 + 40) + 8) + 40);
          v32 = [v18 inviteEmail];
          [v31 addObject:v32];
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v15);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v33 = *MEMORY[0x1E69E9840];
}

void __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_1035(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_1035_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v34 = v6;
  v35 = v5;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v5 members];
  v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    v36 = *v46;
    do
    {
      v17 = 0;
      v37 = v15;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v45 + 1) + 8 * v17);
        v19 = [v18 dictionary];
        v40 = [v19 objectForKeyedSubscript:@"member-phone-numbers"];
        if ([v40 length] >= 2)
        {
          v39 = v19;
          v20 = [v40 componentsSeparatedByString:{@", "}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v42;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v42 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(*(a1 + 40) + 8) + 40);
                v26 = [_CDContactResolver normalizedStringFromContactString:*(*(&v41 + 1) + 8 * i)];
                [v25 addObject:v26];
              }

              v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v22);
          }

          v16 = v36;
          v15 = v37;
          v19 = v39;
        }

        v27 = [v18 appleID];

        if (v27)
        {
          v28 = *(*(*(a1 + 40) + 8) + 40);
          v29 = [v18 appleID];
          [v28 addObject:v29];
        }

        v30 = [v18 inviteEmail];

        if (v30)
        {
          v31 = *(*(*(a1 + 40) + 8) + 40);
          v32 = [v18 inviteEmail];
          [v31 addObject:v32];
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v15);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v33 = *MEMORY[0x1E69E9840];
}

void __82___CDCloudFamilyDataCollectionTask_personRelationshipVocabularyByLocaleDictionary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"vocab" withExtension:@"plist"];

  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5];
  v4 = qword_1EADBD5E0;
  qword_1EADBD5E0 = v3;
}

void __58___CDCloudFamilyDataCollectionTask_fetchEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __53___CDCloudFamilyDataCollectionTask_contactsEmergency__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __55___CDCloudFamilyDataCollectionTask_airDropPeopleAtHome__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __87___CDCloudFamilyDataCollectionTask_callFeaturesFromInteractions_avgCallLength_contact___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 setObject:&unk_1F05EEA90 forKeyedSubscript:@"contactFavorite"];
  }

  return result;
}

void __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "FAFamilyMember request error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_1035_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "FAFamilyMember (force fetch server) request error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end