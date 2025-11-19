@interface EDMessageTransformer
+ (OS_os_log)log;
+ (id)mailboxesForPersistedMessage:(id)a3 mailboxProvider:(id)a4;
- (EDMessageTransformer)initWithMailboxProvider:(id)a3 userProfileProvider:(id)a4 blockedSenderManager:(id)a5 vipReader:(id)a6;
- (id)_transformBaseMessage:(id)a3 messageObjectID:(id)a4 duplicateInfo:(id)a5 additionalBuilder:(id)a6;
- (id)_transformPersistedMessage:(id)a3 mailboxScope:(id)a4 duplicateInfo:(id)a5 additionalBuilder:(id)a6;
- (id)transformBaseMessage:(id)a3 mailboxScope:(id)a4 loaderBlock:(id)a5;
- (id)transformPersistedMessages:(id)a3 mailboxScope:(id)a4;
@end

@implementation EDMessageTransformer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageTransformer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_68 != -1)
  {
    dispatch_once(&log_onceToken_68, block);
  }

  v2 = log_log_68;

  return v2;
}

void __27__EDMessageTransformer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_68;
  log_log_68 = v1;
}

- (EDMessageTransformer)initWithMailboxProvider:(id)a3 userProfileProvider:(id)a4 blockedSenderManager:(id)a5 vipReader:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EDMessageTransformer;
  v15 = [(EDMessageTransformer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mailboxProvider, a3);
    objc_storeStrong(&v16->_userProfileProvider, a4);
    objc_storeStrong(&v16->_blockedSenderManager, a5);
    objc_storeStrong(&v16->_vipReader, a6);
  }

  return v16;
}

- (id)transformBaseMessage:(id)a3 mailboxScope:(id)a4 loaderBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__EDMessageTransformer_transformBaseMessage_mailboxScope_loaderBlock___block_invoke;
  aBlock[3] = &unk_1E8255A28;
  v11 = v10;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v8 persistentID];

  if (v13)
  {
    v14 = [(EDMessageTransformer *)self _transformPersistedMessage:v8 mailboxScope:v9 duplicateInfo:0 additionalBuilder:v12];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E699ADA8]);
    v14 = [(EDMessageTransformer *)self _transformBaseMessage:v8 messageObjectID:v15 duplicateInfo:0 additionalBuilder:v12];
  }

  return v14;
}

- (id)transformPersistedMessages:(id)a3 mailboxScope:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v22 = a4;
  v26 = objc_opt_new();
  v24 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v23;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "globalMessageID")}];
        v11 = [(EDMessageTransformer *)self mailboxProvider];
        v12 = [EDMessageTransformer mailboxesForPersistedMessage:v9 mailboxProvider:v11];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [v26 objectForKeyedSubscript:v10];
          v15 = v14;
          if (v14)
          {
            [(_EDMessageDuplicateInfo *)v14 addMessage:v9];
          }

          else
          {
            v16 = [_EDMessageDuplicateInfo alloc];
            v17 = [(EDMessageTransformer *)self mailboxProvider];
            v15 = [(_EDMessageDuplicateInfo *)v16 initWithMailboxProvider:v17];

            [(_EDMessageDuplicateInfo *)v15 addMessage:v9];
            [v26 setObject:v15 forKeyedSubscript:v10];
            [v24 addObject:v15];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__EDMessageTransformer_transformPersistedMessages_mailboxScope___block_invoke;
  v27[3] = &unk_1E8255A50;
  v27[4] = self;
  v18 = v22;
  v28 = v18;
  v19 = [v24 ef_compactMap:v27];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

id __64__EDMessageTransformer_transformPersistedMessages_mailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 combinedMailboxes];
  v5 = [v3 primaryPersistedMessage];
  if (![v4 count])
  {
    v6 = +[EDMessageTransformer log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 persistentID];
      objc_claimAutoreleasedReturnValue();
      __64__EDMessageTransformer_transformPersistedMessages_mailboxScope___block_invoke_cold_1();
    }
  }

  if ([v4 count])
  {
    v7 = [*(a1 + 32) _transformPersistedMessage:v5 mailboxScope:*(a1 + 40) duplicateInfo:v3 additionalBuilder:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_transformPersistedMessage:(id)a3 mailboxScope:(id)a4 duplicateInfo:(id)a5 additionalBuilder:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33 = v12;
  v14 = [v12 combinedMailboxes];
  if (!v14)
  {
    v15 = [(EDMessageTransformer *)self mailboxProvider];
    v14 = [EDMessageTransformer mailboxesForPersistedMessage:v10 mailboxProvider:v15];
  }

  v34 = v14;
  if (![v14 count])
  {
    v16 = +[EDMessageTransformer log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [v10 persistentID];
      objc_claimAutoreleasedReturnValue();
      [EDMessageTransformer _transformPersistedMessage:mailboxScope:duplicateInfo:additionalBuilder:];
    }
  }

  v17 = [MEMORY[0x1E699AD28] noMailboxesScope];
  v18 = v17 == v11;

  if (v18)
  {
    v19 = MEMORY[0x1E699AD28];
    v20 = [v14 ef_mapSelector:sel_objectID];
    v21 = [v19 mailboxScopeForMailboxObjectIDs:v20 forExclusion:0];

    v11 = v21;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke;
  v41[3] = &unk_1E8253370;
  v22 = v11;
  v42 = v22;
  v23 = [v14 ef_filter:v41];
  v24 = +[EDConversationPersistence conversationNotificationLevelForConversationFlags:](EDConversationPersistence, "conversationNotificationLevelForConversationFlags:", [v10 conversationFlags]);
  v25 = [objc_alloc(MEMORY[0x1E699ADA8]) initWithGlobalMessageID:objc_msgSend(v10 mailboxScope:{"globalMessageID"), v22}];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2;
  v35[3] = &unk_1E8255A78;
  v26 = v10;
  v36 = v26;
  v37 = v25;
  v27 = v23;
  v38 = v27;
  v40 = v24;
  v28 = v13;
  v39 = v28;
  v29 = v25;
  v30 = [(EDMessageTransformer *)self _transformBaseMessage:v26 messageObjectID:v29 duplicateInfo:v33 additionalBuilder:v35];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

void __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) displayDate];
  [v3 setDisplayDate:v4];

  v5 = [*(a1 + 32) readLater];
  [v3 setReadLater:v5];

  v6 = [*(a1 + 32) sendLaterDate];
  [v3 setSendLaterDate:v6];

  v7 = [*(a1 + 32) followUp];
  [v3 setFollowUp:v7];

  v8 = [*(a1 + 32) category];
  [v3 setCategory:v8];

  [v3 setBusinessID:{objc_msgSend(*(a1 + 32), "businessID")}];
  v9 = [*(a1 + 32) businessLogoID];
  [v3 setBusinessLogoID:v9];

  v10 = [v3 category];

  if (!v10)
  {
    v11 = +[EDMessageTransformer log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2_cold_1(a1, v11);
    }
  }

  if (![v3 businessID])
  {
    v12 = +[EDMessageTransformer log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2_cold_2(a1, v12);
    }
  }

  v13 = [*(a1 + 32) summary];
  [v3 setSummary:v13];

  v14 = [*(a1 + 32) generatedSummary];
  [v3 setGeneratedSummary:v14];

  [v3 setIsUrgent:{objc_msgSend(*(a1 + 32), "isUrgent")}];
  [v3 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v3 setMailboxes:*(a1 + 48)];
  [v3 setConversationNotificationLevel:*(a1 + 64)];
  v15 = [*(a1 + 32) brandIndicatorLocation];
  [v3 setBrandIndicatorLocation:v15];

  v16 = [*(a1 + 32) persistedMessageID];
  v17 = [EDSearchableIndexItem searchableMessageIDForPersistedMessageID:v16];
  [v3 setSearchableMessageID:v17];

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v3);
  }
}

- (id)_transformBaseMessage:(id)a3 messageObjectID:(id)a4 duplicateInfo:(id)a5 additionalBuilder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x1E699AD30]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__EDMessageTransformer__transformBaseMessage_messageObjectID_duplicateInfo_additionalBuilder___block_invoke;
  v20[3] = &unk_1E8255AA0;
  v15 = v12;
  v21 = v15;
  v16 = v10;
  v22 = v16;
  v23 = self;
  v17 = v13;
  v24 = v17;
  v18 = [v14 initWithObjectID:v11 builder:v20];

  return v18;
}

void __94__EDMessageTransformer__transformBaseMessage_messageObjectID_duplicateInfo_additionalBuilder___block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = [*(a1 + 32) combinedDate];
  v4 = v3;
  if (!v3)
  {
    v4 = [*(a1 + 40) dateReceived];
  }

  [v33 setDate:v4];
  if (!v3)
  {
  }

  v5 = [*(a1 + 40) subjectIfAvailable];
  [v33 setSubject:v5];

  v6 = [*(a1 + 40) senders];
  [v33 setSenderList:v6];

  v7 = [*(a1 + 40) to];
  [v33 setToList:v7];

  v8 = [*(a1 + 40) cc];
  [v33 setCcList:v8];

  v9 = [*(a1 + 32) combinedMessageFlags];
  v10 = v9;
  if (!v9)
  {
    v10 = [*(a1 + 40) flags];
  }

  [v33 setFlags:v10];
  if (!v9)
  {
  }

  v11 = [*(a1 + 48) blockedSenderManager];
  v12 = [*(a1 + 40) senders];
  v13 = [v12 firstObject];
  v14 = [v11 isEmailAddressBlocked:v13];

  [v33 setIsBlocked:v14];
  [v33 setHasAttachments:{objc_msgSend(*(a1 + 40), "numberOfAttachments") != 0}];
  [v33 setConversationID:{objc_msgSend(*(a1 + 40), "conversationID")}];
  v15 = [*(a1 + 40) documentID];
  [v33 setDocumentID:v15];

  v16 = [*(a1 + 48) userProfileProvider];
  v17 = [*(a1 + 40) to];
  [v33 setIsToMe:{objc_msgSend(v16, "isMyEmailAddressContainedInAddressList:", v17)}];

  v18 = [*(a1 + 40) cc];
  [v33 setIsCCMe:{objc_msgSend(v16, "isMyEmailAddressContainedInAddressList:", v18)}];

  v19 = [*(a1 + 48) vipReader];
  v20 = [*(a1 + 40) senders];
  v21 = [v20 firstObject];
  [v33 setIsVIP:{objc_msgSend(v19, "isVIPAddress:", v21)}];

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v33);
  }

  v23 = *(a1 + 40);
  v24 = objc_opt_respondsToSelector();
  v25 = *(a1 + 40);
  if (v24)
  {
    [v25 bccIfAvailable];
  }

  else
  {
    [v25 bcc];
  }
  v26 = ;
  [v33 setBccList:v26];

  v27 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v28 = [*(a1 + 40) authenticationState];
    if ((v28 & 0xE08) != 0x408)
    {
LABEL_18:
      v29 = 0;
      goto LABEL_23;
    }

    if ((v28 & 0x10) != 0)
    {
      v29 = 0;
      if ((v28 & 0x20) == 0 || (v28 & 0x1C0) == 0xC0 || (v28 & 3) == 1)
      {
LABEL_23:
        [v33 setIsAuthenticated:v29];
        v30 = [*(a1 + 40) authenticationState];
        if ((v30 & 0x10000) == 0)
        {
          v31 = (v30 >> 9) & 7;
          if ((v30 & 8) == 0 || v31 != 2)
          {
            goto LABEL_33;
          }

          if ((v30 & 0x10) != 0)
          {
            if ((v30 & 0x20) == 0 || (v30 & 0x1C0) == 0xC0 || (v30 & 3) == 1)
            {
              goto LABEL_33;
            }
          }

          else if ((v30 & 0x1C2) != 0x82)
          {
LABEL_33:
            v32 = (v31 != 0) & (v30 >> 2);
            goto LABEL_34;
          }
        }

        v32 = 0;
LABEL_34:
        [v33 setAllowAuthenticationWarning:v32];
        goto LABEL_35;
      }
    }

    else if ((v28 & 0x1C2) != 0x82)
    {
      goto LABEL_18;
    }

    v29 = 1;
    goto LABEL_23;
  }

LABEL_35:
}

+ (id)mailboxesForPersistedMessage:(id)a3 mailboxProvider:(id)a4
{
  v23[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 labels];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v5 labels];
    v10 = [v9 ef_compactMap:&__block_literal_global_73_0];
    v11 = [v10 allObjects];
  }

  else
  {
    v12 = [v5 mailbox];
    if (!v12)
    {
      v13 = +[EDMessageTransformer log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [v5 persistentID];
        objc_claimAutoreleasedReturnValue();
        +[EDMessageTransformer mailboxesForPersistedMessage:mailboxProvider:];
      }
    }

    v14 = [v12 URL];
    v15 = v14;
    if (v14)
    {
      v23[0] = v14;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v16 = +[EDMessageTransformer log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v5 persistentID];
        objc_claimAutoreleasedReturnValue();
        +[EDMessageTransformer mailboxesForPersistedMessage:mailboxProvider:];
      }

      v11 = MEMORY[0x1E695E0F0];
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__EDMessageTransformer_mailboxesForPersistedMessage_mailboxProvider___block_invoke_75;
  v21[3] = &unk_1E8255AE8;
  v17 = v6;
  v22 = v17;
  v18 = [v11 ef_compactMap:v21];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id __69__EDMessageTransformer_mailboxesForPersistedMessage_mailboxProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 URL];

  return v2;
}

id __69__EDMessageTransformer_mailboxesForPersistedMessage_mailboxProvider___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v3];
  v5 = [*(a1 + 32) mailboxForObjectID:v4];

  return v5;
}

void __64__EDMessageTransformer_transformPersistedMessages_mailboxScope___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "No mailboxes were found for legacy message database id: %{public}@", v5);
}

- (void)_transformPersistedMessage:mailboxScope:duplicateInfo:additionalBuilder:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to find mailboxes for legacy message database id: %{public}@", v5);
}

void __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Attempting to transform message %@ with no category", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __96__EDMessageTransformer__transformPersistedMessage_mailboxScope_duplicateInfo_additionalBuilder___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Attempting to transform a message %@ with a nil business ID", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)mailboxesForPersistedMessage:mailboxProvider:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "No mailbox was found for legacy message database id: %{public}@", v5);
}

+ (void)mailboxesForPersistedMessage:mailboxProvider:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "No mailbox URL was found for legacy message database id: %{public}@", v5);
}

@end