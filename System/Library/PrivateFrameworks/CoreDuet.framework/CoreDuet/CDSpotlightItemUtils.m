@interface CDSpotlightItemUtils
@end

@implementation CDSpotlightItemUtils

uint64_t __33___CDSpotlightItemUtils_policies__block_invoke()
{
  v0 = +[_CDInteractionPolicies interactionPolicies];
  v1 = policies_policies;
  policies_policies = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

id __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69C5D98];
  if ([*(a1 + 32) count] <= a3)
  {
    v8 = [v6 tupleWithFirst:v5 second:0];
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = [v6 tupleWithFirst:v5 second:v7];
  }

  return v8;
}

id __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_4(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 first];
  v6 = [(_CDSpotlightItemUtils *)v4 _contactForPerson:v5];

  v7 = [v3 second];

  if (v7)
  {
    v8 = [v3 second];
    [v6 setParticipantStatus:{objc_msgSend(v8, "integerValue")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v6 identifier];
          v16 = [v14 identifier];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            [v14 setParticipantStatus:{objc_msgSend(v6, "participantStatus")}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __65___CDSpotlightItemUtils_interactionForSearchableItem_nsUserName___block_invoke_581(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [_CDSpotlightItemUtils shouldFilterEmailAddress:v2];

  return v3;
}

uint64_t __50___CDSpotlightItemUtils_shouldFilterEmailAddress___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F05EF260];
  v1 = shouldFilterEmailAddress___localPartBlackList;
  shouldFilterEmailAddress___localPartBlackList = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __51___CDSpotlightItemUtils_UTI__expectedSupportedUTIs__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = expectedSupportedUTIs_hardCodedUTIs;
  expectedSupportedUTIs_hardCodedUTIs = v2;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = +[_CDSpotlightItemUtils mechanismUtiMap];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [expectedSupportedUTIs_hardCodedUTIs addObjectsFromArray:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = expectedSupportedUTIs_hardCodedUTIs;
  v12 = *(a1 + 32);
  objc_opt_self();
  result = [v11 addObjectsFromArray:&unk_1F05EF3C8];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __45___CDSpotlightItemUtils_UTI__mechanismUtiMap__block_invoke()
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F05EE880;
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"public.message", @"public.url", @"com.apple.ichat.transcript", getkUTTypeMessage(), 0}];
  v1 = [v0 allObjects];
  v10[0] = v1;
  v9[1] = &unk_1F05EE898;
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.ical.ics.event", @"public.calendar-event", getkUTTypeCalendarEvent(), 0}];
  v3 = [v2 allObjects];
  v10[1] = v3;
  v9[2] = &unk_1F05EE8B0;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mail.emlx", getkUTTypeEmailMessage(), 0}];
  v5 = [v4 allObjects];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = mechanismUtiMap_mechanismUtiMap;
  mechanismUtiMap_mechanismUtiMap = v6;

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __45___CDSpotlightItemUtils_UTI__utiConformCache__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = utiConformCache_utiConformCache;
  utiConformCache_utiConformCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end