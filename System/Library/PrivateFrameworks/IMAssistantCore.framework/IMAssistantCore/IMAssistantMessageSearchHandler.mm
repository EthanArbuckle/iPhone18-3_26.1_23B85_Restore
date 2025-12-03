@interface IMAssistantMessageSearchHandler
- (IMAssistantMessageSearchHandler)initWithDataSource:(id)source attributeSanitizer:(id)sanitizer intentIdentifier:(id)identifier;
- (id)resolveSpeakableGroupNames:(id)names forIntent:(id)intent;
- (void)handleSearchForMessages:(id)messages completion:(id)completion;
- (void)resolveAttributesForSearchForMessages:(id)messages withCompletion:(id)completion;
- (void)resolveRecipientsAndSender:(id)sender withCompletion:(id)completion;
- (void)resolveRecipientsForSearchForMessages:(id)messages withCompletion:(id)completion;
- (void)resolveSendersForSearchForMessages:(id)messages withCompletion:(id)completion;
- (void)resolveSpeakableGroupNamesForSearchForMessages:(id)messages withCompletion:(id)completion;
@end

@implementation IMAssistantMessageSearchHandler

- (IMAssistantMessageSearchHandler)initWithDataSource:(id)source attributeSanitizer:(id)sanitizer intentIdentifier:(id)identifier
{
  sanitizerCopy = sanitizer;
  v13.receiver = self;
  v13.super_class = IMAssistantMessageSearchHandler;
  v9 = [(IMAssistantMessageHandler *)&v13 initWithDataSource:source intentIdentifier:identifier];
  if (v9)
  {
    if (sanitizerCopy)
    {
      v10 = sanitizerCopy;
    }

    else
    {
      v10 = objc_alloc_init(IMAssistantMessageReadAttributeSanitizer);
    }

    attributeSanitizer = v9->_attributeSanitizer;
    v9->_attributeSanitizer = v10;
  }

  return v9;
}

- (void)resolveRecipientsForSearchForMessages:(id)messages withCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  completionCopy = completion;
  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveRecipientsForSearchForMessages", &unk_2547CAD0B, buf, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = messagesCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "resolveRecipients called with intent: %@", buf, 0xCu);
  }

  recipients = [messagesCopy recipients];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2547B4A48;
  v16[3] = &unk_2797868D8;
  v17 = completionCopy;
  v18 = v9;
  v14 = completionCopy;
  [(IMAssistantMessageQueryHandler *)self resolvePersons:recipients forIntent:messagesCopy completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resolveSendersForSearchForMessages:(id)messages withCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  completionCopy = completion;
  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveSendersForSearchForMessages", &unk_2547CAD0B, buf, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = messagesCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "resolveSenders called with intent: %@", buf, 0xCu);
  }

  senders = [messagesCopy senders];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2547B4D48;
  v16[3] = &unk_2797868D8;
  v17 = completionCopy;
  v18 = v9;
  v14 = completionCopy;
  [(IMAssistantMessageQueryHandler *)self resolvePersons:senders forIntent:messagesCopy completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resolveAttributesForSearchForMessages:(id)messages withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  completionCopy = completion;
  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveAttributesForSearchForMessages", &unk_2547CAD0B, &v26, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = messagesCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "resolveAttributes called with intent: %@", &v26, 0xCu);
  }

  attributes = [messagesCopy attributes];
  attributeSanitizer = [(IMAssistantMessageSearchHandler *)self attributeSanitizer];
  v15 = [IMAssistantMessageAttributeOptions optionsWithAttributes:attributes sanitizer:attributeSanitizer];

  if ([v15 includeRead])
  {
    identifiers = [messagesCopy identifiers];
    v17 = [identifiers count];

    if (!v17)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = messagesCopy;
        _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "intent with read options lacks message identifiers: %@", &v26, 0xCu);
      }
    }

    dateTimeRange = [messagesCopy dateTimeRange];

    if (!dateTimeRange)
    {
      v20 = IMLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = messagesCopy;
        _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "intent with read options lacks dateTimeRange: %@", &v26, 0xCu);
      }
    }
  }

  v21 = [MEMORY[0x277CD3DE8] successWithResolvedMessageAttributeOptions:{objc_msgSend(v15, "attributes")}];
  v22 = IMLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v21;
    _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Calling resolveAttributes completion handler with result: %@", &v26, 0xCu);
  }

  v23 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v24 = v23;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v24, OS_SIGNPOST_INTERVAL_END, v9, "resolveAttributesForSearchForMessages", &unk_2547CAD0B, &v26, 2u);
  }

  completionCopy[2](completionCopy, v21);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)resolveSpeakableGroupNamesForSearchForMessages:(id)messages withCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  completionCopy = completion;
  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveSpeakableGroupNamesForSearchForMessages", &unk_2547CAD0B, buf, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = messagesCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "resolveSpeakableGroupNames called with intent: %@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2547B5544;
  v25[3] = &unk_279786900;
  v25[4] = self;
  v13 = messagesCopy;
  v26 = v13;
  v28 = v9;
  v14 = completionCopy;
  v27 = v14;
  v15 = MEMORY[0x259C19590](v25);
  speakableGroupNames = [v13 speakableGroupNames];
  v17 = [speakableGroupNames count];

  if (v17)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v15[2](v15);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547B569C;
      block[3] = &unk_279786928;
      v24 = v15;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_async(MEMORY[0x277D85CD0], v21);
    }
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Calling resolveSpeakableGroupNames completion handler with empty results", buf, 2u);
    }

    v19 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
    v20 = v19;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v20, OS_SIGNPOST_INTERVAL_END, v9, "resolveSpeakableGroupNamesForSearchForMessages", &unk_2547CAD0B, buf, 2u);
    }

    (*(v14 + 2))(v14, MEMORY[0x277CBEBF8]);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleSearchForMessages:(id)messages completion:(id)completion
{
  messagesCopy = messages;
  completionCopy = completion;
  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handleSearchForMessages", &unk_2547CAD0B, buf, 2u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2547B5890;
  v18[3] = &unk_279786900;
  v12 = messagesCopy;
  v19 = v12;
  selfCopy = self;
  v22 = v9;
  v13 = completionCopy;
  v21 = v13;
  v14 = MEMORY[0x259C19590](v18);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2547B6114;
    block[3] = &unk_279786928;
    v17 = v14;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

- (void)resolveRecipientsAndSender:(id)sender withCompletion:(id)completion
{
  senderCopy = sender;
  completionCopy = completion;
  recipients = [senderCopy recipients];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2547B6204;
  v11[3] = &unk_279786978;
  selfCopy = self;
  v14 = completionCopy;
  v12 = senderCopy;
  v9 = completionCopy;
  v10 = senderCopy;
  [(IMAssistantMessageQueryHandler *)self resolvePersons:recipients forIntent:v10 completionHandler:v11];
}

- (id)resolveSpeakableGroupNames:(id)names forIntent:(id)intent
{
  v55 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = namesCopy;
  v39 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v39)
  {
    v7 = 0x277CBE000uLL;
    v8 = *v42;
    *&v6 = 138412546;
    v36 = v6;
    v37 = *v42;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v53 = v10;
        v11 = [*(v7 + 2656) arrayWithObjects:&v53 count:{1, v36}];
        v12 = [(IMAssistantMessageQueryHandler *)self chatsForChatNames:v11];

        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          spokenPhrase = [v10 spokenPhrase];
          vocabularyIdentifier = [v10 vocabularyIdentifier];
          v16 = [v12 count];
          *buf = 138413058;
          v46 = spokenPhrase;
          v47 = 2112;
          v48 = vocabularyIdentifier;
          v49 = 2048;
          v50 = v16;
          v51 = 2112;
          v52 = v12;
          _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "resolveSpeakableGroupName for name:%@ vocabularyIdentifier:%@ matches %ld chats: %@", buf, 0x2Au);
        }

        if ([v12 count] == 1)
        {
          v17 = v7;
          v18 = v5;
          firstObject = [v12 firstObject];
          displayName = [firstObject displayName];
          chatIdentifier = [firstObject chatIdentifier];
          messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
          v23 = [messageHandlerDataSource screentimeAllowedToShowChat:firstObject error:0];

          if (v23)
          {
            if ([displayName length])
            {
              v24 = [objc_alloc(MEMORY[0x277CD4188]) initWithVocabularyIdentifier:chatIdentifier spokenPhrase:displayName pronunciationHint:0];
              v25 = IMLogHandleForCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = v36;
                v46 = displayName;
                v47 = 2112;
                v48 = chatIdentifier;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Resolve chatName: %@ and vocabularyIdentifier: %@", buf, 0x16u);
              }
            }

            else
            {
              v32 = IMLogHandleForCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_25479E000, v32, OS_LOG_TYPE_INFO, "Chat search by name resolved to a chat without a displayName. Passing through the input name instead.", buf, 2u);
              }

              v24 = v10;
            }
          }

          else
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = v36;
              v46 = displayName;
              v47 = 2112;
              v48 = chatIdentifier;
              _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "downtime suppressing resolve for chatName: %@ and vocabularyIdentifier: %@", buf, 0x16u);
            }

            v24 = 0;
          }

          v31 = [MEMORY[0x277CD4198] successWithResolvedString:v24];

          v5 = v18;
          v7 = v17;
          v8 = v37;
        }

        else
        {
          v26 = [v12 count];
          v27 = IMLogHandleForCategory();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
          if (v26 < 2)
          {
            if (v28)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "No matching chats were found, returning unsupported/notFound for resolveSpeakableGroupNames", buf, 2u);
            }

            unsupported = [MEMORY[0x277CD4198] unsupported];
          }

          else
          {
            if (v28)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Using input as resolved value.", buf, 2u);
            }

            unsupported = [MEMORY[0x277CD4198] successWithResolvedString:v10];
          }

          v31 = unsupported;
        }

        [v5 addObject:v31];
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v39);
  }

  v33 = [v5 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end