@interface IMDINInteractionMessageDonationJob
- (IMDINInteractionMessageDonationJob)initWithContext:(id)context;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation IMDINInteractionMessageDonationJob

- (IMDINInteractionMessageDonationJob)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = IMDINInteractionMessageDonationJob;
  v6 = [(IMDINInteractionMessageDonationJob *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    interactions = v7->_interactions;
    v7->_interactions = v8;
  }

  return v7;
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  v10 = objc_msgSend_context(self, v8, v9);
  isReindexing = objc_msgSend_isReindexing(v10, v11, v12);

  if ((isReindexing & 1) == 0 && objc_msgSend_canDonateItemDictionary_(IMDIndexingUtilities, v14, dictionaryCopy))
  {
    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v15, @"flags");
    v19 = objc_msgSend_unsignedLongLongValue(v16, v17, v18);

    v21 = objc_msgSend_objectForKey_(dictionaryCopy, v20, @"time");
    v23 = objc_msgSend_objectForKey_(dictionaryCopy, v22, @"plainBody");
    v26 = v23;
    if (v21)
    {
      if (objc_msgSend_length(v23, v24, v25))
      {
        if ((v19 & 4) == 0)
        {
          v29 = objc_msgSend_context(self, v27, v28);
          objc_msgSend_reason(v29, v30, v31);
          IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();

          if (IsIncomingMessage)
          {
            v33 = [IMDINInteractionDonationContext alloc];
            v35 = objc_msgSend_initWithIndexableChatDictionary_messageDictionary_(v33, v34, chatDictionaryCopy, dictionaryCopy);
            v38 = objc_msgSend_sharedController(IMDINInteractionDonationController, v36, v37);
            v40 = objc_msgSend_createInteractionWithContext_updateHandler_(v38, v39, v35, 0);

            if (v40)
            {
              v43 = objc_msgSend_interactions(self, v41, v42);
              objc_msgSend_addObject_(v43, v44, v40);
            }

            goto LABEL_20;
          }

          v45 = IMLogHandleForCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v48 = 0;
            v46 = "Not donating INInteraction for non-incoming message";
            v47 = &v48;
            goto LABEL_18;
          }

LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v45 = IMLogHandleForCategory();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v49 = 0;
        v46 = "Not donating INInteraction for message from me";
        v47 = &v49;
      }

      else
      {
        v45 = IMLogHandleForCategory();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v50 = 0;
        v46 = "Not donating INInteraction for non-text message.";
        v47 = &v50;
      }
    }

    else
    {
      v45 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v51 = 0;
      v46 = "Not donating INInteraction for message without a date, to prevent message send from appearing to have taken place now.";
      v47 = &v51;
    }

LABEL_18:
    _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, v46, v47, 2u);
    goto LABEL_19;
  }

LABEL_21:
}

- (void)finishWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_interactions(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_donateInteractionWithCompletion_(*(*(&v15 + 1) + 8 * v13++), v10, &unk_1F2FA0CB0);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  completionCopy[2](completionCopy, 0);
  v14 = *MEMORY[0x1E69E9840];
}

@end