@interface BMCoreDuetDiscoverabilitySignalsSource
- (void)sendEvent:(id)a3;
@end

@implementation BMCoreDuetDiscoverabilitySignalsSource

- (void)sendEvent:(id)a3
{
  v67[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMCoreDuetDiscoverabilitySignalsSource *)self sendEvent:v4, v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v51 = [v6 identifier];
    v50 = [v6 bundleID];
    v48 = [v6 context];
    v7 = [v6 userInfo];
    v8 = MGCopyAnswer();
    if (v8)
    {
      v49 = [@"iOS-" stringByAppendingString:v8];
    }

    else
    {
      v49 = 0;
    }

    if (v51 && v50 && v49)
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
      v10 = objc_alloc(MEMORY[0x1E695DF90]);
      v67[0] = v49;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
      v12 = [get_DKDiscoverabilitySignalsMetadataKeyClass() osBuild];
      v66 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      v47 = [v10 initWithObjects:v11 forKeys:v13];

      if (v48)
      {
        v14 = [get_DKDiscoverabilitySignalsMetadataKeyClass() context];
        [v47 setObject:v48 forKeyedSubscript:v14];
      }

      if (v7)
      {
        v15 = [get_DKDiscoverabilitySignalsMetadataKeyClass() userInfo];
        [v47 setObject:v7 forKeyedSubscript:v15];
      }

      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v16 = get_DKSourceClass_softClass;
      v63 = get_DKSourceClass_softClass;
      if (!get_DKSourceClass_softClass)
      {
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = __get_DKSourceClass_block_invoke;
        v58 = &unk_1E6E52EB0;
        v59 = &v60;
        __get_DKSourceClass_block_invoke(&v55);
        v16 = v61[3];
      }

      v17 = v16;
      _Block_object_dispose(&v60, 8);
      v46 = [[v16 alloc] initWithIdentifier:0 bundleIdentifier:v50 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v18 = get_DKEventClass_softClass_2;
      v63 = get_DKEventClass_softClass_2;
      if (!get_DKEventClass_softClass_2)
      {
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = __get_DKEventClass_block_invoke_2;
        v58 = &unk_1E6E52EB0;
        v59 = &v60;
        __get_DKEventClass_block_invoke_2(&v55);
        v18 = v61[3];
      }

      v19 = v18;
      _Block_object_dispose(&v60, 8);
      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v20 = get_DKSystemEventStreamsClass_softClass_1;
      v63 = get_DKSystemEventStreamsClass_softClass_1;
      if (!get_DKSystemEventStreamsClass_softClass_1)
      {
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = __get_DKSystemEventStreamsClass_block_invoke_1;
        v58 = &unk_1E6E52EB0;
        v59 = &v60;
        __get_DKSystemEventStreamsClass_block_invoke_1(&v55);
        v20 = v61[3];
      }

      v21 = v20;
      _Block_object_dispose(&v60, 8);
      v22 = [v20 discoverabilitySignalsStream];
      v23 = [v47 copy];
      v45 = [v18 eventWithStream:v22 source:v46 startDate:v9 endDate:v9 identifierStringValue:v51 metadata:v23];

      if (v7)
      {
        v54 = 0;
        v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v54];
        v25 = v54;
        if (v25)
        {
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [BMCoreDuetDiscoverabilitySignalsSource sendEvent:];
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v27 = getBMDiscoverabilitySignalsClass_softClass;
      v63 = getBMDiscoverabilitySignalsClass_softClass;
      if (!getBMDiscoverabilitySignalsClass_softClass)
      {
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = __getBMDiscoverabilitySignalsClass_block_invoke;
        v58 = &unk_1E6E52EB0;
        v59 = &v60;
        __getBMDiscoverabilitySignalsClass_block_invoke(&v55);
        v27 = v61[3];
      }

      v28 = v27;
      _Block_object_dispose(&v60, 8);
      v29 = [v27 alloc];
      v30 = [v6 identifier];
      v31 = [v6 context];
      v32 = [v29 initWithContentIdentifier:v30 context:v31 osBuild:v49 userInfo:v24];

      v33 = BMRootLibraryBridge();
      v34 = [v33 streamWithIdentifier:@"Discoverability.Signals" error:0];

      v35 = [v34 source];
      [v35 sendEvent:v32];

      v36 = objc_alloc(MEMORY[0x1E695DF90]);
      v65[0] = v51;
      v65[1] = v50;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
      v38 = [v36 initWithObjects:v37 forKeys:&unk_1EF309260];

      if (v48)
      {
        [v38 setObject:v48 forKeyedSubscript:@"context"];
      }

      if (v7)
      {
        [v38 setObject:v7 forKeyedSubscript:@"userInfo"];
      }

      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v39 = get_DKKnowledgeStoreClass_softClass_0;
      v63 = get_DKKnowledgeStoreClass_softClass_0;
      if (!get_DKKnowledgeStoreClass_softClass_0)
      {
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = __get_DKKnowledgeStoreClass_block_invoke_0;
        v58 = &unk_1E6E52EB0;
        v59 = &v60;
        __get_DKKnowledgeStoreClass_block_invoke_0(&v55);
        v39 = v61[3];
      }

      v40 = v39;
      _Block_object_dispose(&v60, 8);
      v41 = [v39 userKnowledgeStore];
      v64 = v45;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke;
      v52[3] = &unk_1E6E53900;
      v53 = v38;
      v43 = v38;
      [v41 saveObjects:v42 responseQueue:0 withCompletion:v52];
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMCoreDuetDiscoverabilitySignalsSource sendEvent:];
      }
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMCoreDuetDiscoverabilitySignalsSource sendEvent:v6];
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = get_CDContextualKeyPathClass_softClass;
    v21 = get_CDContextualKeyPathClass_softClass;
    if (!get_CDContextualKeyPathClass_softClass)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __get_CDContextualKeyPathClass_block_invoke;
      v16 = &unk_1E6E52EB0;
      v17 = &v18;
      __get_CDContextualKeyPathClass_block_invoke(&v13);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 ephemeralKeyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v9 = [*(a1 + 32) copy];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = get_CDClientContextClass_softClass_0;
    v21 = get_CDClientContextClass_softClass_0;
    if (!get_CDClientContextClass_softClass_0)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __get_CDClientContextClass_block_invoke_0;
      v16 = &unk_1E6E52EB0;
      v17 = &v18;
      __get_CDClientContextClass_block_invoke_0(&v13);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = [v10 userContext];
    [v12 setObject:v9 forKeyedSubscript:v8];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke_cold_1();
    }
  }
}

@end