@interface SGDSuggestManagerInterface
+ (id)xpcInterfaceForProtocol:(id)a3;
+ (void)_addSGXPCResponseToReplyWhitelistForMethods:(objc_method_description *)a3 count:(unsigned int)a4 interface:(id)a5;
+ (void)_addSGXPCResponseToReplyWhitelistForProtocol:(id)a3 interface:(id)a4;
+ (void)_initialize;
+ (void)_registerWhitelistBlock:(id)a3 forProtocol:(id)a4;
+ (void)_whitelistXPCInterface:(id)a3 forProtocol:(id)a4 alreadyWhitelisted:(id)a5;
+ (void)interface:(id)a3 returns:(Class)a4 forSelector:(SEL)a5;
+ (void)interface:(id)a3 returnsArrayOf:(Class)a4 forSelector:(SEL)a5;
@end

@implementation SGDSuggestManagerInterface

void __41__SGDSuggestManagerInterface__initialize__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = _whitelistBlocks;
  _whitelistBlocks = v2;

  v4 = [objc_alloc(MEMORY[0x1E69C5D30]) initWithBehavior:1 copyWithZone:0];
  v5 = _classSetPool;
  _classSetPool = v4;

  v6 = _classSetPool;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v6 intern:v15];

  v17 = objc_alloc(MEMORY[0x1E69C5D60]);
  v18 = objc_opt_new();
  v19 = [v17 initWithGuardedData:v18];
  v20 = _interfaces;
  _interfaces = v19;

  v21 = *(a1 + 32);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_2;
  v48[3] = &unk_1E7EFC978;
  v22 = v16;
  v23 = *(a1 + 32);
  v49 = v22;
  v50 = v23;
  [v21 _registerWhitelistBlock:v48 forProtocol:&unk_1F387AE50];
  v24 = *(a1 + 32);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_3;
  v47[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v47[4] = v24;
  [v24 _registerWhitelistBlock:v47 forProtocol:&unk_1F387B388];
  v25 = *(a1 + 32);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_4;
  v46[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v46[4] = v25;
  [v25 _registerWhitelistBlock:v46 forProtocol:&unk_1F387B530];
  v26 = *(a1 + 32);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_5;
  v43[3] = &unk_1E7EFC978;
  v45 = v26;
  v27 = v22;
  v44 = v27;
  [v26 _registerWhitelistBlock:v43 forProtocol:&unk_1F387C368];
  v28 = *(a1 + 32);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_6;
  v42[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v42[4] = v28;
  [v28 _registerWhitelistBlock:v42 forProtocol:&unk_1F387BAF8];
  v29 = *(a1 + 32);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_7;
  v41[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v41[4] = v29;
  [v29 _registerWhitelistBlock:v41 forProtocol:&unk_1F387B7A0];
  v30 = *(a1 + 32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_8;
  v40[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v40[4] = v30;
  [v30 _registerWhitelistBlock:v40 forProtocol:&unk_1F387B990];
  v31 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_9;
  v39[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v39[4] = v31;
  [v31 _registerWhitelistBlock:v39 forProtocol:&unk_1F387BA20];
  v32 = *(a1 + 32);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_10;
  v38[3] = &__block_descriptor_40_e24_v16__0__NSXPCInterface_8l;
  v38[4] = v32;
  [v32 _registerWhitelistBlock:v38 forProtocol:&unk_1F387A410];
  v33 = *(a1 + 32);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke_11;
  v35[3] = &unk_1E7EFC978;
  v36 = v27;
  v37 = v33;
  v34 = v27;
  [v33 _registerWhitelistBlock:v35 forProtocol:&unk_1F387C510];
  [*(a1 + 32) _registerWhitelistBlock:&__block_literal_global_5418 forProtocol:&unk_1F387C670];
  [*(a1 + 32) _registerWhitelistBlock:&__block_literal_global_378 forProtocol:&unk_1F387C5D8];
}

+ (void)_initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SGDSuggestManagerInterface__initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_initialize_onceToken != -1)
  {
    dispatch_once(&_initialize_onceToken, block);
  }
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v29 = a2;
  [v3 interface:v29 returns:objc_opt_class() forSelector:sel_contactFromRecordId_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_cnContactMatchesForRecordId_withCompletion_];
  v4 = _classSetPool;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 intern:v7];
  [v29 setClasses:v8 forSelector:sel_cnContactMatchesForRecordIds_withCompletion_ argumentIndex:0 ofReply:0];

  v9 = _classSetPool;
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v9 intern:v12];
  [v29 setClasses:v13 forSelector:sel_cnContactMatchesForRecordIds_withCompletion_ argumentIndex:0 ofReply:1];

  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesWithContact_limitTo_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesWithContactIdentifier_limitTo_withCompletion_];
  v14 = _classSetPool;
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v14 intern:v17];
  [v29 setClasses:v18 forSelector:sel_contactMatchesWithContactIdentifiers_limitTo_withCompletion_ argumentIndex:0 ofReply:0];

  v19 = _classSetPool;
  v20 = objc_alloc(MEMORY[0x1E695DFD8]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v19 intern:v22];
  [v29 setClasses:v23 forSelector:sel_contactMatchesWithContactIdentifiers_limitTo_withCompletion_ argumentIndex:0 ofReply:1];

  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesWithFullTextSearch_limitTo_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesWithMessagingPrefix_limitTo_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesByPhoneNumber_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesByEmailAddress_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_contactMatchesBySocialProfile_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_birthdayExtractionsForInterval_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_celebrationExtractionsForInterval_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion_];
  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_namesForDetail_limitTo_prependMaybe_onlySignificant_supportsInfoLookup_withCompletion_];
  [*(a1 + 32) interface:v29 returns:objc_opt_class() forSelector:sel_interactionStoreLookupForDetail_withCompletion_];
  v24 = _classSetPool;
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v24 intern:v27];
  [v29 setClasses:v28 forSelector:sel_namesForDetailCacheSnapshotsWithCompletion_ argumentIndex:0 ofReply:1];

  [*(a1 + 32) interface:v29 returnsArrayOf:objc_opt_class() forSelector:sel_allContactsWithSnippets_limitTo_withCompletion_];
  [*(a1 + 32) interface:v29 returns:objc_opt_class() forSelector:sel_originFromRecordId_completion_];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_recentURLsWithLimit_withCompletion_];
  [*(a1 + 32) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_limit_withCompletion_];
  [*(a1 + 32) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_urlsFoundBetweenStartDate_endDate_excludingBundleIdentifiers_containingSubstring_flagFilter_limit_withCompletion_];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_schemaOrgToEvents_completion_];
  [*(a1 + 32) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_allEventsLimitedTo_withCompletion_];
  [*(a1 + 32) interface:v4 returns:objc_opt_class() forSelector:sel_isEventCandidateForURL_title_withCompletion_];
  [*(a1 + 32) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_suggestionsFromURL_title_HTMLPayload_withCompletion_];
  [*(a1 + 32) interface:v4 returns:objc_opt_class() forSelector:sel_eventFromUniqueId_completion_];
  [*(a1 + 32) interface:v4 returns:objc_opt_class() forSelector:sel_launchInfoForSuggestedEventWithUniqueIdentifier_sourceURL_clientLocale_ignoreUserActivitySupport_ignoreMailCheck_completion_];
}

+ (void)interface:(id)a3 returnsArrayOf:(Class)a4 forSelector:(SEL)a5
{
  v7 = _classSetPool;
  v8 = MEMORY[0x1E695DFD8];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = objc_opt_class();
  v13 = [v10 initWithObjects:{v11, objc_opt_class(), a4, 0}];
  v12 = [v7 intern:v13];
  [v9 setClasses:v12 forSelector:a5 argumentIndex:0 ofReply:1];
}

+ (void)interface:(id)a3 returns:(Class)a4 forSelector:(SEL)a5
{
  v7 = _classSetPool;
  v8 = MEMORY[0x1E695DFD8];
  v9 = a3;
  v11 = [[v8 alloc] initWithObjects:{a4, objc_opt_class(), 0}];
  v10 = [v7 intern:v11];
  [v9 setClasses:v10 forSelector:a5 argumentIndex:0 ofReply:1];
}

+ (void)_whitelistXPCInterface:(id)a3 forProtocol:(id)a4 alreadyWhitelisted:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:protocol_getName(v9)];
  if (([v10 containsObject:v11] & 1) == 0)
  {
    [v10 addObject:v11];
    outCount = 0;
    v12 = protocol_copyProtocolList(v9, &outCount);
    if (outCount)
    {
        ;
      }
    }

    v14 = [_whitelistBlocks objectForKeyedSubscript:v11];

    if (v14)
    {
      v15 = [_whitelistBlocks objectForKeyedSubscript:v11];
      (v15)[2](v15, v8);
    }

    free(v12);
    [a1 _addSGXPCResponseToReplyWhitelistForProtocol:v9 interface:v8];
  }
}

+ (void)_addSGXPCResponseToReplyWhitelistForProtocol:(id)a3 interface:(id)a4
{
  outCount = 0;
  v6 = a4;
  v7 = a3;
  v8 = protocol_copyMethodDescriptionList(v7, 1, 1, &outCount);
  [a1 _addSGXPCResponseToReplyWhitelistForMethods:v8 count:outCount interface:v6];
  free(v8);
  v9 = protocol_copyMethodDescriptionList(v7, 0, 1, &outCount);

  [a1 _addSGXPCResponseToReplyWhitelistForMethods:v9 count:outCount interface:v6];
  free(v9);
}

+ (void)_addSGXPCResponseToReplyWhitelistForMethods:(objc_method_description *)a3 count:(unsigned int)a4 interface:(id)a5
{
  LODWORD(v5) = a4;
  v34 = a5;
  if (v5)
  {
    v5 = v5;
    p_types = &a3->types;
    v8 = 0x1E695D000uLL;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(p_types - 1);
      v11 = *p_types;
      if (v10)
      {
        if (v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:a1 file:@"SGDSuggestManagerInterface.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"selector"}];

        if (v11)
        {
          goto LABEL_5;
        }
      }

      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:a1 file:@"SGDSuggestManagerInterface.m" lineNumber:411 description:{@"Invalid parameter not satisfying: %@", @"types"}];

LABEL_5:
      v12 = [*(v8 + 3944) signatureWithObjCTypes:v11];
      v13 = [v12 getArgumentTypeAtIndex:{objc_msgSend(v12, "numberOfArguments") - 1}];
      if (*v13 == 64 && v13[1] == 63 && !v13[2])
      {
        v14 = [v34 classesForSelector:v10 argumentIndex:0 ofReply:1];
        if (![v14 count] || objc_msgSend(v14, "count") == 1 && (objc_msgSend(v14, "anyObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "alloc"), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
        {
          v33 = _classSetPool;
          v32 = objc_alloc(MEMORY[0x1E695DFD8]);
          v31 = objc_opt_class();
          v30 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = objc_opt_class();
          v22 = [v32 initWithObjects:{v31, v30, v18, v19, v20, v21, objc_opt_class(), 0}];
          v23 = v33;
        }

        else
        {
          v24 = _classSetPool;
          v22 = [v14 setByAddingObject:objc_opt_class()];
          v23 = v24;
        }

        v25 = [v23 intern:v22];

        [v34 setClasses:v25 forSelector:v10 argumentIndex:0 ofReply:1];
        v8 = 0x1E695D000;
      }

      objc_autoreleasePoolPop(v9);
      p_types += 2;
      --v5;
    }

    while (v5);
  }
}

+ (id)xpcInterfaceForProtocol:(id)a3
{
  v4 = a3;
  [a1 _initialize];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:protocol_getName(v4)];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5414;
  v20 = __Block_byref_object_dispose__5415;
  v21 = 0;
  v6 = _interfaces;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SGDSuggestManagerInterface_xpcInterfaceForProtocol___block_invoke;
  v11[3] = &unk_1E7EFCA00;
  v14 = &v16;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v15 = a1;
  [v6 runWithLockAcquired:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __54__SGDSuggestManagerInterface_xpcInterfaceForProtocol___block_invoke(void *a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKeyedSubscript:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:a1[5]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = a1[7];
    v10 = a1[5];
    v11 = *(*(a1[6] + 8) + 40);
    v12 = objc_opt_new();
    [v9 _whitelistXPCInterface:v11 forProtocol:v10 alreadyWhitelisted:v12];

    [v13 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[4]];
  }
}

+ (void)_registerWhitelistBlock:(id)a3 forProtocol:(id)a4
{
  v5 = a4;
  v11 = [a3 copy];
  v6 = MEMORY[0x1BFAF7240]();
  v7 = _whitelistBlocks;
  v8 = MEMORY[0x1E696AEC0];
  Name = protocol_getName(v5);

  v10 = [v8 stringWithUTF8String:Name];
  [v7 setObject:v6 forKeyedSubscript:v10];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v80 = a2;
  [v80 setClasses:v3 forSelector:sel_suggestionsFromSearchableItem_options_withCompletion_ argumentIndex:0 ofReply:1];
  [v80 setClasses:*(a1 + 32) forSelector:sel_suggestionsFromSearchableItem_options_processingType_withCompletion_ argumentIndex:0 ofReply:1];
  [v80 setClasses:*(a1 + 32) forSelector:sel_harvestedSuggestionsFromSearchableItem_options_withCompletion_ argumentIndex:0 ofReply:1];
  v4 = _classSetPool;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 intern:v7];
  [v80 setClasses:v8 forSelector:sel_reportMessagesFound_lost_withCompletion_ argumentIndex:0 ofReply:0];

  v9 = _classSetPool;
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v9 intern:v12];
  [v80 setClasses:v13 forSelector:sel_reportMessagesFound_lost_withCompletion_ argumentIndex:1 ofReply:0];

  v14 = _classSetPool;
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v14 intern:v17];
  [v80 setClasses:v18 forSelector:sel_updateMessages_state_completion_ argumentIndex:0 ofReply:0];

  v19 = _classSetPool;
  v20 = objc_alloc(MEMORY[0x1E695DFD8]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v19 intern:v22];
  [v80 setClasses:v23 forSelector:sel_messagesToRefreshWithCompletion_ argumentIndex:0 ofReply:1];

  v24 = _classSetPool;
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v24 intern:v27];
  [v80 setClasses:v28 forSelector:sel_fullDownloadRequestBatch_withCompletion_ argumentIndex:0 ofReply:1];

  v29 = _classSetPool;
  v30 = objc_alloc(MEMORY[0x1E695DFD8]);
  v31 = objc_opt_class();
  v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
  v33 = [v29 intern:v32];
  [v80 setClasses:v33 forSelector:sel_resolveFullDownloadRequests_withCompletion_ argumentIndex:0 ofReply:0];

  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_saliencyFromRFC822Data_withCompletion_];
  [*(a1 + 40) interface:v80 returnsArrayOf:objc_opt_class() forSelector:sel_topSalienciesForMailboxId_limit_withCompletion_];
  [*(a1 + 40) interface:v80 returnsArrayOf:objc_opt_class() forSelector:sel_sortedSaliencyResultsRestrictedToMailboxTypes_mailboxIds_receivedOnOrAfter_ascending_limit_withCompletion_];
  v34 = _classSetPool;
  v35 = objc_alloc(MEMORY[0x1E695DFD8]);
  v36 = objc_opt_class();
  v37 = [v35 initWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [v34 intern:v37];
  [v80 setClasses:v38 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:3 ofReply:0];

  v39 = _classSetPool;
  v40 = objc_alloc(MEMORY[0x1E695DFD8]);
  v41 = objc_opt_class();
  v42 = [v40 initWithObjects:{v41, objc_opt_class(), 0}];
  v43 = [v39 intern:v42];
  [v80 setClasses:v43 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:4 ofReply:0];

  v44 = _classSetPool;
  v45 = objc_alloc(MEMORY[0x1E695DFD8]);
  v46 = objc_opt_class();
  v47 = [v45 initWithObjects:{v46, objc_opt_class(), 0}];
  v48 = [v44 intern:v47];
  [v80 setClasses:v48 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:5 ofReply:0];

  v49 = _classSetPool;
  v50 = objc_alloc(MEMORY[0x1E695DFD8]);
  v51 = objc_opt_class();
  v52 = [v50 initWithObjects:{v51, objc_opt_class(), 0}];
  v53 = [v49 intern:v52];
  [v80 setClasses:v53 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:6 ofReply:0];

  v54 = _classSetPool;
  v55 = objc_alloc(MEMORY[0x1E695DFD8]);
  v56 = objc_opt_class();
  v57 = [v55 initWithObjects:{v56, objc_opt_class(), 0}];
  v58 = [v54 intern:v57];
  [v80 setClasses:v58 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:7 ofReply:0];

  v59 = _classSetPool;
  v60 = objc_alloc(MEMORY[0x1E695DFD8]);
  v61 = objc_opt_class();
  v62 = [v60 initWithObjects:{v61, objc_opt_class(), 0}];
  v63 = [v59 intern:v62];
  [v80 setClasses:v63 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:8 ofReply:0];

  v64 = _classSetPool;
  v65 = objc_alloc(MEMORY[0x1E695DFD8]);
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = [v65 initWithObjects:{v66, v67, v68, v69, objc_opt_class(), 0}];
  v71 = [v64 intern:v70];
  [v80 setClasses:v71 forSelector:sel_identifyComposeWarningsFromSubject_content_attributes_toRecipients_ccRecipients_bccRecipients_originalToRecipients_originalCcRecipients_attachments_withCompletion_ argumentIndex:0 ofReply:1];

  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_reportUserEngagement_forWarning_withCompletion_];
  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_reportValue_forFeatureSetting_withCompletion_];
  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_reportMailIntelligenceFollowUpUserEngagement_forStringFromFollowUpWarning_withCompletion_];
  [*(a1 + 40) interface:v80 returnsArrayOf:objc_opt_class() forSelector:sel_sortedUnsubscriptionOpportunitiesForField_minCount_minScore_limit_withCompletion_];
  [*(a1 + 40) interface:v80 returnsArrayOf:objc_opt_class() forSelector:sel_sortedUnsubscriptionOpportunitiesForField_limit_withCompletion_];
  v72 = _classSetPool;
  v73 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  v74 = [v72 intern:v73];
  [v80 setClasses:v74 forSelector:sel_saliencyFromEmailHeaders_withCompletion_ argumentIndex:0 ofReply:0];

  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_identifyFollowUpWarningFromSubject_body_date_withCompletion_];
  [*(a1 + 40) interface:v80 returns:objc_opt_class() forSelector:sel_saliencyFromEmailHeaders_withCompletion_];
  [v80 setClasses:*(a1 + 32) forSelector:sel_dissectAttachmentsFromSearchableItem_options_withCompletion_ argumentIndex:0 ofReply:1];
  v75 = _classSetPool;
  v76 = objc_alloc(MEMORY[0x1E695DFD8]);
  v77 = objc_opt_class();
  v78 = [v76 initWithObjects:{v77, objc_opt_class(), 0}];
  v79 = [v75 intern:v78];
  [v80 setClasses:v79 forSelector:sel_filteredSuggestionsFromExtractions_origin_options_withCompletion_ argumentIndex:0 ofReply:0];

  [v80 setClasses:*(a1 + 32) forSelector:sel_filteredSuggestionsFromExtractions_origin_options_withCompletion_ argumentIndex:0 ofReply:1];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_eventsStartingAt_endingAt_limitTo_options_withCompletion_];
  [*(a1 + 40) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_eventsStartingAt_endingAt_prefix_limitTo_options_withCompletion_];
  [*(a1 + 40) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_eventsInFutureLimitTo_options_withCompletion_];
  [*(a1 + 40) interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_realtimeSuggestionsFromURL_title_HTMLPayload_extractionDate_withCompletion_];
  [v4 setClasses:*(a1 + 32) forSelector:sel_suggestionsFromRFC822Data_source_options_withCompletion_ argumentIndex:0 ofReply:1];
  [v4 setClasses:*(a1 + 32) forSelector:sel_suggestionsFromEmailContent_headers_source_options_withCompletion_ argumentIndex:0 ofReply:1];
  [v4 setClasses:*(a1 + 32) forSelector:sel_suggestionsFromSimpleMailMessage_headers_options_withCompletion_ argumentIndex:0 ofReply:1];
  v5 = _classSetPool;
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v8 = [v5 intern:v9];
  [v4 setClasses:v8 forSelector:sel_addInteractions_bundleId_completion_ argumentIndex:0 ofReply:0];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_ipsosMessagesFromSearchableItems_withCompletion_];
  v5 = _classSetPool;
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 intern:v8];
  [v4 setClasses:v9 forSelector:sel_ipsosMessagesFromSearchableItems_withCompletion_ argumentIndex:0 ofReply:0];

  [*(a1 + 32) interface:v4 returns:objc_opt_class() forSelector:sel_titleSuggestionForMessage_withCompletion_];
  v10 = _classSetPool;
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  v11 = [v10 intern:v12];
  [v4 setClasses:v11 forSelector:sel_titleSuggestionForMessage_withCompletion_ argumentIndex:0 ofReply:0];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 interface:v4 returnsArrayOf:objc_opt_class() forSelector:sel_allRemindersLimitedTo_withCompletion_];
  [*(a1 + 32) interface:v4 returns:objc_opt_class() forSelector:sel_reminderTitleForContent_withCompletion_];
  [*(a1 + 32) interface:v4 returns:0 forSelector:sel_logUserCreatedReminderTitle_withCompletion_];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 interface:v3 returnsArrayOf:objc_opt_class() forSelector:sel_allDeliveriesWithLimit_withCompletion_];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 interface:v3 returns:objc_opt_class() forSelector:sel_foundInStringForRecordId_style_withCompletion_];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_11(uint64_t a1, void *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = 0;
  v10 = a2;
  v11[0] = sel_suggestionsFromMessage_options_completionHandler_;
  v11[1] = sel_harvestedSuggestionsFromMessage_bundleIdentifier_options_completionHandler_;
  v11[2] = sel_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler_;
  do
  {
    [v10 setClasses:*(a1 + 32) forSelector:v11[v3++] argumentIndex:0 ofReply:1];
  }

  while (v3 != 3);
  v4 = _classSetPool;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 intern:v7];
  [v10 setClasses:v8 forSelector:sel_harvestedSuggestionsFromMessages_bundleIdentifier_options_completionHandler_ argumentIndex:0 ofReply:0];

  [*(a1 + 40) interface:v10 returns:objc_opt_class() forSelector:sel_harvestedSuggestionsFromMessage_bundleIdentifier_options_withCompletion_];
  v9 = *MEMORY[0x1E69E9840];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = _classSetPool;
  v3 = MEMORY[0x1E695DFD8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v7 = [v2 intern:v8];
  [v4 setClasses:v7 forSelector:sel_evaluateRecipe_attachments_completion_ argumentIndex:1 ofReply:0];
}

void __41__SGDSuggestManagerInterface__initialize__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = _classSetPool;
  v3 = MEMORY[0x1E695DFD8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v7 = [v2 intern:v8];
  [v4 setClasses:v7 forSelector:sel_extractAttributesAndDonate_withCompletion_ argumentIndex:0 ofReply:1];
}

@end