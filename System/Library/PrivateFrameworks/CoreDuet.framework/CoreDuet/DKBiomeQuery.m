@interface DKBiomeQuery
@end

@implementation DKBiomeQuery

uint64_t __55___DKBiomeQuery_biomeExclusiveStreamsFromEventStreams___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 canShimDuetStreamNamed:v3];

  return v4;
}

uint64_t __54___DKBiomeQuery_duetExclusiveStreamsFromEventStreams___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  LODWORD(v2) = [v2 canShimDuetStreamNamed:v3];

  return v2 ^ 1;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  BMDKEventClass = getBMDKEventClass();
  if ([(objc_class *)BMDKEventClass instancesRespondToSelector:sel_initWithData_dataVersion_decodeMetadata_])
  {
    v6 = [BMDKEventClass alloc];
    v7 = [v3 eventBodyData];
    v8 = [v6 initWithData:v7 dataVersion:objc_msgSend(v3 decodeMetadata:{"eventBodyDataVersion"), *(*(a1 + 32) + 65)}];
  }

  else
  {
    v8 = [v3 eventBody];
  }

  v9 = [v8 dkEvent];
  v10 = [v9 creationDate];
  [v9 setLocalCreationDate:v10];

  v11 = objc_opt_new();
  v12 = [*(a1 + 32) filterExcludedMetadataWithDKEvent:v9];
  [v11 setDkEvent:v12];

  objc_autoreleasePoolPop(v4);

  return v11;
}

uint64_t __38___DKBiomeQuery__publisherForStreams___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(*(a1 + 32) + 16) evaluateWithObject:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke_635(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + 1}];

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke_2_639(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AB80]);
  v5 = [v2 startDate];
  v6 = [v2 endDate];
  v7 = [v4 initWithStartDate:v5 endDate:v6];

  objc_autoreleasePoolPop(v3);

  return v7;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v3 valueForKeyPath:v11];
        if (v12)
        {
          [v4 setObject:v12 forKeyedSubscript:v11];
          if ([*(*(a1 + 40) + 56) containsObject:v11])
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if (*(*(a1 + 40) + 48) == 5)
  {
    v13 = [v3 endDate];
    v14 = [v3 startDate];
    [v13 timeIntervalSinceDate:v14];
    v16 = v15;

    v17 = [v3 startDate];
    [v4 setObject:v17 forKeyedSubscript:@"startDate"];

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    v19 = @"duration";
  }

  else
  {
    v20 = [v5 valueForKey:@"description"];
    v18 = [v20 _pas_componentsJoinedByString:@"-"];

    v19 = @"__groupByKey__";
  }

  [v4 setObject:v18 forKeyedSubscript:v19];

  v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v4];
  objc_autoreleasePoolPop(v24);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 mutableCopy];
  if (![v8 count])
  {
    [v8 addEntriesFromDictionary:v6];
    [v8 removeObjectForKey:@"__groupByKey__"];
  }

  v9 = *(*(a1 + 32) + 48);
  if (v9 != 6)
  {
    if (v9 != 4)
    {
      goto LABEL_11;
    }

    v10 = [v8 objectForKeyedSubscript:@"count"];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") + 1}];
    v12 = v8;
    v13 = v11;
    v14 = @"count";
    goto LABEL_9;
  }

  v10 = [v8 objectForKeyedSubscript:@"endDate"];
  v11 = [v6 objectForKeyedSubscript:@"endDate"];
  if (!v10)
  {
    v14 = @"endDate";
    v12 = v8;
    v13 = v11;
LABEL_9:
    [v12 setObject:v13 forKeyedSubscript:v14];
    goto LABEL_10;
  }

  v15 = [v10 laterDate:v11];
  [v8 setObject:v15 forKeyedSubscript:@"endDate"];

LABEL_10:
LABEL_11:
  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v8];

  objc_autoreleasePoolPop(v7);

  return v16;
}

id __38___DKBiomeQuery__publisherForStreams___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 allValues];
  v5 = [v4 bpsPublisher];

  objc_autoreleasePoolPop(v3);

  return v5;
}

id __33___DKBiomeQuery_bmdkEventStreams__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:*(a1 + 32) contentProtection:*MEMORY[0x1E696A388]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);

  return v5;
}

id __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 addObject:a3];

  return v4;
}

id __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5[4] || v5[3])
  {
    v6 = [v3 count];
    v7 = *(a1 + 32);
    v15.length = *(v7 + 24);
    v15.location = *(v7 + 32);
    v16.location = 0;
    v16.length = v6;
    v8 = NSIntersectionRange(v15, v16);
    if (v8.length)
    {
      v9 = [v4 sortedArrayUsingDescriptors:*(*(a1 + 32) + 40)];
      v10 = v9;
      if (v8.length == v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v9 subarrayWithRange:{v8.location, v8.length}];
      }

      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v12 = [v3 sortedArrayUsingDescriptors:v5[5]];
  }

  return v12;
}

BOOL __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  result = v2 <= v4 && v4 < *(v1 + 24) + v2;
  *(v3 + 24) = v4 + 1;
  return result;
}

id __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 addObject:a3];

  return v4;
}

id __68___DKBiomeQuery__publisherForQueryReturningIndividualResults_error___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 bpsPublisher];
  v4 = v3;
  if (!*(*(a1 + 32) + 48))
  {
    v5 = [v3 mapWithTransform:&__block_literal_global_686];

    v4 = v5;
  }

  return v4;
}

void __40___DKBiomeQuery_executeBiomeQueryError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __40___DKBiomeQuery_executeBiomeQueryError___block_invoke_cold_1(v2, v3);
  }
}

uint64_t __38___DKBiomeQuery_executeDeletionQuery___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  BMDKEventClass = getBMDKEventClass();
  if ([(objc_class *)BMDKEventClass instancesRespondToSelector:sel_initWithData_dataVersion_decodeMetadata_])
  {
    v8 = [BMDKEventClass alloc];
    v9 = [v5 eventBodyData];
    v10 = [v8 initWithData:v9 dataVersion:objc_msgSend(v5 decodeMetadata:{"eventBodyDataVersion"), *(a1[4] + 65)}];
  }

  else
  {
    v10 = [v5 eventBody];
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v10 dkEvent];
  v12 = [v11 creationDate];
  [v11 setLocalCreationDate:v12];

  v13 = objc_opt_new();
  [v13 setDkEvent:v11];
  v14 = *(a1[4] + 16);
  if (v14 && ![v14 evaluateWithObject:v13])
  {
    v17 = 0;
  }

  else
  {
    ++*(*(a1[5] + 8) + 24);
    v15 = *(a1[4] + 24);
    if (v15)
    {
      v16 = *(*(a1[5] + 8) + 24) + *(*(a1[6] + 8) + 24);
      v17 = 1;
      if (v16 >= v15)
      {
        *a3 = 1;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

void __40___DKBiomeQuery_executeBiomeQueryError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "_DKBiomeQuery publisher sink completion: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end