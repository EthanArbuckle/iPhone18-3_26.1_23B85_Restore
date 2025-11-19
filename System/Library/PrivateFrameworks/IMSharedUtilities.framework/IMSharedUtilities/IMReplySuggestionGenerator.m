@interface IMReplySuggestionGenerator
+ (BOOL)includeSmartReplies;
+ (id)combinedPlainTextOfMessageItem:(id)a3;
+ (id)repliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7;
+ (id)textMessageItemsFilteredByIsOutgoing:(id)a3 isOutgoingContent:(BOOL)a4;
+ (void)_annotatedRepliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 actionsOnly:(BOOL)a9 completion:(id)a10;
+ (void)_contextualRepliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 includeDynamicSuggestions:(BOOL)a9 requestType:(unint64_t)a10 completion:(id)a11;
+ (void)_repliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 fetchUsingContactsFramework:(BOOL)a9 completion:(id)a10;
+ (void)primeResponseKitIfNeeded;
@end

@implementation IMReplySuggestionGenerator

+ (id)repliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1A8601F34;
  v25 = sub_1A8602188;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A867FEA4;
  v20[3] = &unk_1E78286C8;
  v20[4] = &v21;
  LOBYTE(v19) = 1;
  [a1 _repliesForMessages:v12 senderMessages:v13 recipientHandles:v14 languageCode:v15 languageCodeChangeDate:v16 loadAsync:0 fetchUsingContactsFramework:v19 completion:v20];
  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v17;
}

+ (void)_annotatedRepliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 actionsOnly:(BOOL)a9 completion:(id)a10
{
  v37 = a8;
  v51 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v40 = a4;
  v15 = a5;
  v16 = a6;
  v36 = a7;
  v17 = a10;
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = v16;
  v39 = v15;
  if (a9)
  {
    v20 = 2;
  }

  else
  {
    v35 = a1;
    v21 = sub_1A8680188(v15, v16, 1);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        v25 = 0;
        do
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * v25);
          v27 = [[IMReplySuggestion alloc] initWithType:2 text:v26 version:0];
          [(IMReplySuggestion *)v27 setStringRepresentation:v26];
          v28 = [v26 localizedLowercaseString];
          [v19 addObject:v28];

          [v18 addObject:v27];
          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v23);
    }

    v20 = 0;
    a1 = v35;
  }

  v29 = objc_opt_class();
  v30 = [a1 includeSmartReplies];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A86805EC;
  v42[3] = &unk_1E78286F0;
  v43 = v19;
  v44 = v18;
  v45 = v17;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  LOBYTE(v34) = v30;
  [v29 _contextualRepliesForMessages:v41 senderMessages:v40 recipientHandles:v39 languageCode:v38 languageCodeChangeDate:v36 loadAsync:v37 includeDynamicSuggestions:v34 requestType:v20 completion:v42];
}

+ (void)_repliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 fetchUsingContactsFramework:(BOOL)a9 completion:(id)a10
{
  v31 = a8;
  v16 = a10;
  v17 = MEMORY[0x1E695DF70];
  v30 = a7;
  v18 = a6;
  v19 = a5;
  v29 = a4;
  v20 = a3;
  v21 = [v17 array];
  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = sub_1A8680188(v19, v18, a9);
  sub_1A8680BDC(v21, v22, v23);

  v24 = objc_opt_class();
  LOBYTE(a7) = [a1 includeSmartReplies];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A8680D2C;
  v32[3] = &unk_1E78286F0;
  v33 = v21;
  v34 = v22;
  v35 = v16;
  v25 = v16;
  v26 = v22;
  v27 = v21;
  LOBYTE(v28) = a7;
  [v24 _contextualRepliesForMessages:v20 senderMessages:v29 recipientHandles:v19 languageCode:v18 languageCodeChangeDate:v30 loadAsync:v31 includeDynamicSuggestions:v28 requestType:1 completion:v32];
}

+ (BOOL)includeSmartReplies
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"IncludeSmartRepliesKey"];
  v4 = v3;
  v5 = MEMORY[0x1E695E118];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  return v7;
}

+ (void)_contextualRepliesForMessages:(id)a3 senderMessages:(id)a4 recipientHandles:(id)a5 languageCode:(id)a6 languageCodeChangeDate:(id)a7 loadAsync:(BOOL)a8 includeDynamicSuggestions:(BOOL)a9 requestType:(unint64_t)a10 completion:(id)a11
{
  v57 = a8;
  v84 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v55 = a5;
  v17 = a6;
  v59 = a7;
  v58 = a11;
  v63 = v17;
  if (![v17 length])
  {
    v18 = IMLogHandleForCategory("IMReplySuggestionGenerator");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C2804(v18);
    }

    v63 = 0;
  }

  v19 = [v15 firstObject];
  v20 = [v19 time];

  v21 = [v16 firstObject];
  v62 = [v21 time];

  v61 = v20;
  v60 = v61;
  if ([v61 compare:v62] == -1)
  {
    v60 = v62;
  }

  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v15;
  v22 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v22)
  {
    v23 = *v74;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v73 + 1) + 8 * i);
        v26 = objc_alloc_init(sub_1A8681584());
        v27 = [IMReplySuggestionGenerator combinedPlainTextOfMessageItem:v25];
        [v26 setTitle:v27];

        v28 = [v25 associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
        v30 = v28 == 3000 || v28 == 2000;
        [v26 setTapBack:v30];
        [v26 setRead:{objc_msgSend(v25, "isRead")}];
        [v26 setEmote:{objc_msgSend(v25, "isEmote")}];
        v31 = [v25 sender];
        v32 = [v31 copy];
        [v26 setSenderIdentifier:v32];

        v33 = [v25 time];
        [v26 setDateSent:v33];

        [v66 addObject:v26];
      }

      v22 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v22);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v64 = v16;
  v35 = [v64 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v35)
  {
    v36 = *v70;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v70 != v36)
        {
          objc_enumerationMutation(v64);
        }

        v38 = *(*(&v69 + 1) + 8 * j);
        v39 = objc_alloc_init(sub_1A8681584());
        v40 = [IMReplySuggestionGenerator combinedPlainTextOfMessageItem:v38];
        [v39 setTitle:v40];

        v41 = [v38 associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
        v43 = v41 == 3000 || v41 == 2000;
        [v39 setTapBack:v43];
        [v39 setRead:{objc_msgSend(v38, "isRead")}];
        [v39 setEmote:{objc_msgSend(v38, "isEmote")}];
        v44 = [v38 sender];
        v45 = [v44 copy];
        [v39 setSenderIdentifier:v45];

        v46 = [v38 time];
        [v39 setDateSent:v46];

        [v34 addObject:v39];
      }

      v35 = [v64 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v35);
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2050000000;
  v47 = qword_1EB30AFF8;
  v81 = qword_1EB30AFF8;
  if (!qword_1EB30AFF8)
  {
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = sub_1A8682248;
    v77[3] = &unk_1E78261C8;
    v77[4] = &v78;
    sub_1A8682248(v77);
    v47 = v79[3];
  }

  v48 = v47;
  _Block_object_dispose(&v78, 8);
  v49 = [[v47 alloc] initWithType:a10 receivedMessages:v66];
  [v49 setSenderMessages:v34];
  [v49 setLanguageCode:v63];
  [v49 setIncludesDynamicSuggestions:a9];
  [v49 setRequestDate:v60];
  [v49 setLanguageLastChangedDate:v59];
  v50 = [sub_1A8681664() sharedManager];
  v51 = v50;
  if (v57)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8681744;
    aBlock[3] = &unk_1E7828718;
    v68 = v58;
    v52 = _Block_copy(aBlock);
    [v51 suggestionsForRequest:v49 withCompletion:v52];

    v53 = v68;
  }

  else
  {
    v54 = [v50 suggestionsForRequest:v49];
    v53 = [v54 suggestions];

    (*(v58 + 2))(v58, v53);
  }
}

+ (void)primeResponseKitIfNeeded
{
  if (qword_1EB30AFB8 != -1)
  {
    sub_1A88C2848();
  }
}

+ (id)combinedPlainTextOfMessageItem:(id)a3
{
  v3 = a3;
  v4 = [v3 balloonBundleID];
  v5 = [v4 length];

  v6 = &stru_1F1BB91F0;
  if (!v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1A8601F34;
    v14 = sub_1A8602188;
    v15 = &stru_1F1BB91F0;
    v7 = [v3 body];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A86819B4;
    v9[3] = &unk_1E7828740;
    v9[4] = &v10;
    [v7 __im_visitMessageParts:v9];

    v6 = [v11[5] trimmedString];
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

+ (id)textMessageItemsFilteredByIsOutgoing:(id)a3 isOutgoingContent:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v23;
  v20 = v5;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = v14;
      if (!v14 || ([v14 isLastMessageCandidate] & 1) == 0)
      {
        goto LABEL_19;
      }

      v16 = [IMReplySuggestionGenerator combinedPlainTextOfMessageItem:v15];
      if ([v15 isFromMe] != v4 || (objc_msgSend(v15, "isTypingMessage") & 1) != 0 || !objc_msgSend(v16, "length"))
      {

LABEL_19:
        if (v9)
        {
          goto LABEL_24;
        }

        continue;
      }

      v17 = [v15 time];
      if (!v9)
      {
        v9 = [v15 time];
      }

      [v9 timeIntervalSinceDate:{v17, v20}];
      if (v18 > 120.0)
      {

        v5 = v20;
        goto LABEL_24;
      }

      [v21 insertObject:v15 atIndex:0];

      v5 = v20;
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return v21;
}

@end