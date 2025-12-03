@interface IMReplySuggestionGenerator
+ (BOOL)includeSmartReplies;
+ (id)combinedPlainTextOfMessageItem:(id)item;
+ (id)repliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date;
+ (id)textMessageItemsFilteredByIsOutgoing:(id)outgoing isOutgoingContent:(BOOL)content;
+ (void)_annotatedRepliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async actionsOnly:(BOOL)only completion:(id)self0;
+ (void)_contextualRepliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async includeDynamicSuggestions:(BOOL)suggestions requestType:(unint64_t)self0 completion:(id)self1;
+ (void)_repliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async fetchUsingContactsFramework:(BOOL)framework completion:(id)self0;
+ (void)primeResponseKitIfNeeded;
@end

@implementation IMReplySuggestionGenerator

+ (id)repliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date
{
  messagesCopy = messages;
  senderMessagesCopy = senderMessages;
  handlesCopy = handles;
  codeCopy = code;
  dateCopy = date;
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
  [self _repliesForMessages:messagesCopy senderMessages:senderMessagesCopy recipientHandles:handlesCopy languageCode:codeCopy languageCodeChangeDate:dateCopy loadAsync:0 fetchUsingContactsFramework:v19 completion:v20];
  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v17;
}

+ (void)_annotatedRepliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async actionsOnly:(BOOL)only completion:(id)self0
{
  asyncCopy = async;
  v51 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  senderMessagesCopy = senderMessages;
  handlesCopy = handles;
  codeCopy = code;
  dateCopy = date;
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = codeCopy;
  v39 = handlesCopy;
  if (only)
  {
    v20 = 2;
  }

  else
  {
    selfCopy = self;
    v21 = sub_1A8680188(handlesCopy, codeCopy, 1);
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
          localizedLowercaseString = [v26 localizedLowercaseString];
          [v19 addObject:localizedLowercaseString];

          [array addObject:v27];
          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v23);
    }

    v20 = 0;
    self = selfCopy;
  }

  v29 = objc_opt_class();
  includeSmartReplies = [self includeSmartReplies];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A86805EC;
  v42[3] = &unk_1E78286F0;
  v43 = v19;
  v44 = array;
  v45 = completionCopy;
  v31 = completionCopy;
  v32 = array;
  v33 = v19;
  LOBYTE(v34) = includeSmartReplies;
  [v29 _contextualRepliesForMessages:messagesCopy senderMessages:senderMessagesCopy recipientHandles:v39 languageCode:v38 languageCodeChangeDate:dateCopy loadAsync:asyncCopy includeDynamicSuggestions:v34 requestType:v20 completion:v42];
}

+ (void)_repliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async fetchUsingContactsFramework:(BOOL)framework completion:(id)self0
{
  asyncCopy = async;
  completionCopy = completion;
  v17 = MEMORY[0x1E695DF70];
  dateCopy = date;
  codeCopy = code;
  handlesCopy = handles;
  senderMessagesCopy = senderMessages;
  messagesCopy = messages;
  array = [v17 array];
  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = sub_1A8680188(handlesCopy, codeCopy, framework);
  sub_1A8680BDC(array, v22, v23);

  v24 = objc_opt_class();
  LOBYTE(date) = [self includeSmartReplies];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A8680D2C;
  v32[3] = &unk_1E78286F0;
  v33 = array;
  v34 = v22;
  v35 = completionCopy;
  v25 = completionCopy;
  v26 = v22;
  v27 = array;
  LOBYTE(v28) = date;
  [v24 _contextualRepliesForMessages:messagesCopy senderMessages:senderMessagesCopy recipientHandles:handlesCopy languageCode:codeCopy languageCodeChangeDate:dateCopy loadAsync:asyncCopy includeDynamicSuggestions:v28 requestType:1 completion:v32];
}

+ (BOOL)includeSmartReplies
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"IncludeSmartRepliesKey"];
  v4 = v3;
  v5 = MEMORY[0x1E695E118];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

+ (void)_contextualRepliesForMessages:(id)messages senderMessages:(id)senderMessages recipientHandles:(id)handles languageCode:(id)code languageCodeChangeDate:(id)date loadAsync:(BOOL)async includeDynamicSuggestions:(BOOL)suggestions requestType:(unint64_t)self0 completion:(id)self1
{
  asyncCopy = async;
  v84 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  senderMessagesCopy = senderMessages;
  handlesCopy = handles;
  codeCopy = code;
  dateCopy = date;
  completionCopy = completion;
  v63 = codeCopy;
  if (![codeCopy length])
  {
    v18 = IMLogHandleForCategory("IMReplySuggestionGenerator");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C2804(v18);
    }

    v63 = 0;
  }

  firstObject = [messagesCopy firstObject];
  time = [firstObject time];

  firstObject2 = [senderMessagesCopy firstObject];
  time2 = [firstObject2 time];

  v61 = time;
  v60 = v61;
  if ([v61 compare:time2] == -1)
  {
    v60 = time2;
  }

  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = messagesCopy;
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
        sender = [v25 sender];
        v32 = [sender copy];
        [v26 setSenderIdentifier:v32];

        time3 = [v25 time];
        [v26 setDateSent:time3];

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
  v64 = senderMessagesCopy;
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
        sender2 = [v38 sender];
        v45 = [sender2 copy];
        [v39 setSenderIdentifier:v45];

        time4 = [v38 time];
        [v39 setDateSent:time4];

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
  v49 = [[v47 alloc] initWithType:type receivedMessages:v66];
  [v49 setSenderMessages:v34];
  [v49 setLanguageCode:v63];
  [v49 setIncludesDynamicSuggestions:suggestions];
  [v49 setRequestDate:v60];
  [v49 setLanguageLastChangedDate:dateCopy];
  sharedManager = [sub_1A8681664() sharedManager];
  v51 = sharedManager;
  if (asyncCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8681744;
    aBlock[3] = &unk_1E7828718;
    v68 = completionCopy;
    v52 = _Block_copy(aBlock);
    [v51 suggestionsForRequest:v49 withCompletion:v52];

    suggestions = v68;
  }

  else
  {
    v54 = [sharedManager suggestionsForRequest:v49];
    suggestions = [v54 suggestions];

    (*(completionCopy + 2))(completionCopy, suggestions);
  }
}

+ (void)primeResponseKitIfNeeded
{
  if (qword_1EB30AFB8 != -1)
  {
    sub_1A88C2848();
  }
}

+ (id)combinedPlainTextOfMessageItem:(id)item
{
  itemCopy = item;
  balloonBundleID = [itemCopy balloonBundleID];
  v5 = [balloonBundleID length];

  trimmedString = &stru_1F1BB91F0;
  if (!v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1A8601F34;
    v14 = sub_1A8602188;
    v15 = &stru_1F1BB91F0;
    body = [itemCopy body];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A86819B4;
    v9[3] = &unk_1E7828740;
    v9[4] = &v10;
    [body __im_visitMessageParts:v9];

    trimmedString = [v11[5] trimmedString];
    _Block_object_dispose(&v10, 8);
  }

  return trimmedString;
}

+ (id)textMessageItemsFilteredByIsOutgoing:(id)outgoing isOutgoingContent:(BOOL)content
{
  contentCopy = content;
  v27 = *MEMORY[0x1E69E9840];
  outgoingCopy = outgoing;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  reverseObjectEnumerator = [outgoingCopy reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    time2 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  time2 = 0;
  v10 = *v23;
  v20 = outgoingCopy;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
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
      if ([v15 isFromMe] != contentCopy || (objc_msgSend(v15, "isTypingMessage") & 1) != 0 || !objc_msgSend(v16, "length"))
      {

LABEL_19:
        if (time2)
        {
          goto LABEL_24;
        }

        continue;
      }

      time = [v15 time];
      if (!time2)
      {
        time2 = [v15 time];
      }

      [time2 timeIntervalSinceDate:{time, v20}];
      if (v18 > 120.0)
      {

        outgoingCopy = v20;
        goto LABEL_24;
      }

      [v21 insertObject:v15 atIndex:0];

      outgoingCopy = v20;
    }

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
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