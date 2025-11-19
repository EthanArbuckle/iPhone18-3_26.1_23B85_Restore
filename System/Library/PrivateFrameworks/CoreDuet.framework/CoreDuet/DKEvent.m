@interface DKEvent
@end

@implementation DKEvent

uint64_t __54___DKEvent_CSSearchableItem__allowedWebpageURLSchemes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"http", @"https", 0}];
  v1 = allowedWebpageURLSchemes_result;
  allowedWebpageURLSchemes_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __95___DKEvent_CSSearchableItem__eventRepresentingUserActivityWithSearchableItem_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __63___DKEvent_INInteraction__relatedContactIdentifiersFromIntent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 contactIdentifier];
    if (v5)
    {
      [v6 addObject:v5];
    }
  }
}

void __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  if ([a2 isEqual:v5])
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

void __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _keyImage];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

uint64_t __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DF00];
  [*(a1 + 32) startDate];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

uint64_t __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E695DF00];
  [*(a1 + 32) endDate];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

uint64_t __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = [*(a1 + 32) secondsFromGMT];

  return [v1 timeZoneForSecondsFromGMT:v2];
}

void __72___DKEvent_MOConversion__fetchCustomMetadataWithName_valueHash_context___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"CustomMetadata" inManagedObjectContext:a1[4]];
  [v2 setEntity:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name == %@ AND valueHash == %@", a1[5], a1[6]];
  [v2 setPredicate:v4];

  v5 = a1[4];
  v12 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v12];
  v7 = v12;
  v8 = [v6 lastObject];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v7)
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __72___DKEvent_MOConversion__fetchCustomMetadataWithName_valueHash_context___block_invoke_cold_1();
    }
  }
}

uint64_t __23___DKEvent_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _DKStringContainsPrivacySensitiveMetadataKey(v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __72___DKEvent_MOConversion__fetchCustomMetadataWithName_valueHash_context___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, v0, OS_LOG_TYPE_ERROR, "Error during fetch request: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end