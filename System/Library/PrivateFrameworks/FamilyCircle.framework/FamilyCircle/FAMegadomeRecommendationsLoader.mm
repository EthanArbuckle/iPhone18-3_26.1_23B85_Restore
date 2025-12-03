@interface FAMegadomeRecommendationsLoader
+ (id)normalizedPhoneNumbersForPhoneNumbers:(id)numbers;
+ (id)taggingOptions;
- (id)familyHandles;
- (id)megadomePeopleFromScoredEntities:(id)entities inVisualIdentifierView:(id)view;
- (id)megadomeResultsForFamilyTagWithError:(id *)error;
- (id)peopleViewWithError:(id *)error;
- (void)familyHandles;
@end

@implementation FAMegadomeRecommendationsLoader

+ (id)taggingOptions
{
  v17[18] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:0.7];
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:0.82];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getGDPersonTaggingOptionsClass_softClass;
  v15 = getGDPersonTaggingOptionsClass_softClass;
  if (!getGDPersonTaggingOptionsClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getGDPersonTaggingOptionsClass_block_invoke;
    v11[3] = &unk_1E7CA4F30;
    v11[4] = &v12;
    __getGDPersonTaggingOptionsClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = [v4 alloc];
  v16[0] = @"family";
  v16[1] = @"parent";
  v17[0] = v2;
  v17[1] = v2;
  v16[2] = @"father";
  v16[3] = @"mother";
  v17[2] = v2;
  v17[3] = v2;
  v16[4] = @"child";
  v16[5] = @"daughter";
  v17[4] = v2;
  v17[5] = v2;
  v16[6] = @"son";
  v16[7] = @"sibling";
  v17[6] = v2;
  v17[7] = v2;
  v16[8] = @"brother";
  v16[9] = @"sister";
  v17[8] = v2;
  v17[9] = v2;
  v16[10] = @"partner";
  v16[11] = @"husband";
  v17[10] = v3;
  v17[11] = v2;
  v16[12] = @"wife";
  v16[13] = @"friend";
  v17[12] = v2;
  v17[13] = v2;
  v16[14] = @"coworker";
  v16[15] = @"alumni";
  v17[14] = v2;
  v17[15] = v2;
  v16[16] = @"myself";
  v16[17] = @"familyAndFriends";
  v17[16] = v2;
  v17[17] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:18];
  v8 = [v6 initWithTagThresholds:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)peopleViewWithError:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FAMegadomeRecommendationsLoader_peopleViewWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = error;
  v3 = _Block_copy(aBlock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getGDViewServiceClass_softClass;
  v18 = getGDViewServiceClass_softClass;
  if (!getGDViewServiceClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getGDViewServiceClass_block_invoke;
    v14[3] = &unk_1E7CA4F30;
    v14[4] = &v15;
    __getGDViewServiceClass_block_invoke(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  clientService = [v4 clientService];
  v12 = 0;
  v7 = [clientService visualIdentifierViewWithError:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader peopleViewWithError:];
    }

    v3[2](v3, v8);
  }

  return v7;
}

void **__55__FAMegadomeRecommendationsLoader_peopleViewWithError___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)megadomeResultsForFamilyTagWithError:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__FAMegadomeRecommendationsLoader_megadomeResultsForFamilyTagWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = error;
  v3 = _Block_copy(aBlock);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v4 = getGDConfigurationClass_softClass;
  v29 = getGDConfigurationClass_softClass;
  if (!getGDConfigurationClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getGDConfigurationClass_block_invoke;
    v24 = &unk_1E7CA4F30;
    v25 = &v26;
    __getGDConfigurationClass_block_invoke(&v21);
    v4 = v27[3];
  }

  v5 = v4;
  _Block_object_dispose(&v26, 8);
  v6 = objc_alloc_init(v4);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v7 = getGDEntityTaggingServiceClass_softClass;
  v29 = getGDEntityTaggingServiceClass_softClass;
  if (!getGDEntityTaggingServiceClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getGDEntityTaggingServiceClass_block_invoke;
    v24 = &unk_1E7CA4F30;
    v25 = &v26;
    __getGDEntityTaggingServiceClass_block_invoke(&v21);
    v7 = v27[3];
  }

  v8 = v7;
  _Block_object_dispose(&v26, 8);
  v19 = 0;
  v9 = [[v7 alloc] initWithConfig:v6 error:&v19];
  v10 = v19;
  if (v9)
  {
    v11 = +[FAMegadomeRecommendationsLoader taggingOptions];
    v18 = 0;
    v12 = [v9 entitiesForTag:4 options:v11 error:&v18];
    v13 = v18;
    if (v12)
    {
      v3[2](v3, 0);
      v14 = v12;
    }

    else
    {
      v16 = _FALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [FAMegadomeRecommendationsLoader megadomeResultsForFamilyTagWithError:];
      }

      (v3)[2](v3, v13);
    }
  }

  else
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader megadomeResultsForFamilyTagWithError:];
    }

    (v3)[2](v3, v10);
    v12 = 0;
  }

  return v12;
}

void **__72__FAMegadomeRecommendationsLoader_megadomeResultsForFamilyTagWithError___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)megadomePeopleFromScoredEntities:(id)entities inVisualIdentifierView:(id)view
{
  v26 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  viewCopy = view;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = entitiesCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(*(*(&v19 + 1) + 8 * i), "idValue")];
        v13 = [viewCopy personForIdentifier:v12];
        if (v13)
        {
          v14 = [[FAMegadomePerson alloc] initWithVisualIdentifierViewPerson:v13];
          [v7 addObject:v14];
        }

        else
        {
          v14 = _FALogSystem();
          if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_1B70B0000, &v14->super, OS_LOG_TYPE_DEFAULT, "Did not find megadome person with identifier %@. Skipping recommendation.", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = [v7 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)familyHandles
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v21 = objc_alloc_init(FAFetchFamilyCircleRequest);
  v2 = [(FAFetchFamilyCircleRequest *)v21 fetchFamilyCircleWithError:&v26];
  v3 = v26;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader familyHandles];
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  members = [v2 members];
  v7 = [members countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(members);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        appleID = [v11 appleID];

        if (appleID)
        {
          appleID2 = [v11 appleID];
          [v5 addObject:appleID2];
        }

        memberPhoneNumbers = [v11 memberPhoneNumbers];

        if (memberPhoneNumbers)
        {
          memberPhoneNumbers2 = [v11 memberPhoneNumbers];
          v16 = [memberPhoneNumbers2 componentsSeparatedByString:{@", "}];

          v17 = [FAMegadomeRecommendationsLoader normalizedPhoneNumbersForPhoneNumbers:v16];
          [v5 addObjectsFromArray:v17];
        }
      }

      v8 = [members countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v18 = [v5 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)normalizedPhoneNumbersForPhoneNumbers:(id)numbers
{
  v26 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = numbersCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{v11, v18, v19}];
        formattedStringValue = [v12 formattedStringValue];
        if (formattedStringValue)
        {
          [v4 addObject:formattedStringValue];
        }

        else
        {
          v14 = _FALogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v11;
            _os_log_error_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_ERROR, "Could not normalize phone number %@.", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)peopleViewWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error initializing megadome visual identifier view: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)megadomeResultsForFamilyTagWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error initializing megadome entities for Family tag: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)megadomeResultsForFamilyTagWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error initializing megadome entity tagging service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)familyHandles
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FAFetchFamilyCircleRequest failed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end