@interface CDInteraction
@end

@implementation CDInteraction

void __29___CDInteraction__internPool__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = _internPool__pasExprOnceResult;
  _internPool__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __67___CDInteraction_generateConversationIdFromObjectsWithIdentifiers___block_invoke(uint64_t a1, void **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = v3;
  v6 = [v5 identifier];
  v7 = [v4 identifier];

  v8 = [v6 compare:v7 options:3];
  return v8;
}

void __67___CDInteraction_recipientIdentifiersFromMobileMailConversationId___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 rangeOfString:@"%" options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = [v8 stringByRemovingPercentEncoding];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1F05B9908;
    }

    [v4 addObject:v7];

    objc_autoreleasePoolPop(v3);
  }
}

void __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke_780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 targetBundleID];
    if (v6 && (v7 = v6, v8 = *(a1 + 32), [v5 targetBundleID], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "containsObject:", v9), v9, v7, v8))
    {
      v10 = [*(a1 + 40) metadataFromFeedbackEvent:v5];
      v11 = MEMORY[0x1E695DF00];
      [v3 timestamp];
      v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      v13 = [_DKSource alloc];
      v14 = [v5 sourceBundleID];
      v15 = [(_DKSource *)v13 initWithIdentifier:@"sharesheet" bundleIdentifier:v14 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];

      v16 = [_DKEventStream eventStreamWithName:@"/dummyStream/tempStream"];
      v17 = [_DKEvent eventWithStream:v16 source:v15 startDate:v12 endDate:v12 identifierStringValue:0 metadata:v10];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

void __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Finalizing local events failed: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end