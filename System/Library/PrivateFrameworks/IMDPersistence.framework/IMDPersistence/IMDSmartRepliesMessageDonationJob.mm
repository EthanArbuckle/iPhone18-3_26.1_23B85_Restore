@interface IMDSmartRepliesMessageDonationJob
- (BOOL)isMessageTimeWithinBoundsForSmartRepliesDonation:(id)donation;
- (IMDSmartRepliesMessageDonationJob)init;
- (id)srMessageFromMessageDictionary:(id)dictionary;
- (id)srRequestForMessage:(id)message;
- (void)finishWithCompletion:(id)completion;
- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary;
@end

@implementation IMDSmartRepliesMessageDonationJob

- (IMDSmartRepliesMessageDonationJob)init
{
  v6.receiver = self;
  v6.super_class = IMDSmartRepliesMessageDonationJob;
  v2 = [(IMDSmartRepliesMessageDonationJob *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    srMessages = v2->_srMessages;
    v2->_srMessages = v3;
  }

  return v2;
}

- (BOOL)isMessageTimeWithinBoundsForSmartRepliesDonation:(id)donation
{
  if (!donation)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF00];
  donationCopy = donation;
  v7 = objc_msgSend_date(v3, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v7, v8, donationCopy);
  v10 = v9;

  v11 = v10 < 180.0;
  return v11;
}

- (id)srMessageFromMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"guid");
  v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"time");
  if (objc_msgSend_isMessageTimeWithinBoundsForSmartRepliesDonation_(self, v9, v8))
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2050000000;
    v12 = qword_1EDBE5B48;
    v60 = qword_1EDBE5B48;
    if (!qword_1EDBE5B48)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = sub_1B7B8F1D4;
      v56[3] = &unk_1E7CB6EA8;
      v56[4] = &v57;
      sub_1B7B8F1D4(v56, v10, v11);
      v12 = v58[3];
    }

    v13 = v12;
    _Block_object_dispose(&v57, 8);
    v14 = objc_alloc_init(v12);
    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, @"plainBody");
    if (objc_msgSend_length(v16, v17, v18))
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v19, @"associatedMessageType");
      v23 = objc_msgSend_integerValue(v20, v21, v22);

      if ((v23 - 2000) >= 7 && (v23 - 3000) >= 7)
      {
        objc_msgSend_setTapBack_(v14, v24, 0);
      }

      else
      {
        objc_msgSend_setTapBack_(v14, v24, 1);
      }

      v28 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"timeRead");
      if (v28)
      {
        v29 = objc_alloc(MEMORY[0x1E695DF00]);
        v32 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v29, v30, v31, 0.0);
        isEqual = objc_msgSend_isEqual_(v28, v33, v32);
        objc_msgSend_setRead_(v14, v35, isEqual ^ 1u);
      }

      else
      {
        objc_msgSend_setRead_(v14, v27, 0);
      }

      objc_msgSend_setEmote_(v14, v36, 0);
      v40 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"flags");
      v43 = objc_msgSend_unsignedLongLongValue(v40, v41, v42);

      if ((v43 & 4) != 0)
      {
        objc_msgSend_setSenderIdentifier_(v14, v44, 0);
      }

      else
      {
        v45 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v44, @"handle");
        v48 = objc_msgSend_copy(v45, v46, v47);
        objc_msgSend_setSenderIdentifier_(v14, v49, v48);
      }

      v52 = objc_msgSend_copy(v16, v50, v51);
      objc_msgSend_setSummary_(v14, v53, v52);

      objc_msgSend_setDateSent_(v14, v54, v8);
      v37 = v14;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LOWORD(v56[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Skipping donation of message to SmartReplies due to nil text", v56, 2u);
        }
      }

      v37 = 0;
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CF8AD4(v6, v14);
    }

    v37 = 0;
  }

  return v37;
}

- (id)srRequestForMessage:(id)message
{
  v32[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v6 = messageCopy;
  if (messageCopy)
  {
    v7 = objc_msgSend_senderIdentifier(messageCopy, v4, v5);

    v32[0] = v6;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v32, 1);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v12 = qword_1EDBE5B38;
    v31 = qword_1EDBE5B38;
    if (!qword_1EDBE5B38)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1B7B8F394;
      v27[3] = &unk_1E7CB6EA8;
      v27[4] = &v28;
      sub_1B7B8F394(v27, v9, v10);
      v12 = v29[3];
    }

    v13 = v12;
    _Block_object_dispose(&v28, 8);
    v14 = [v12 alloc];
    if (v7)
    {
      v16 = objc_msgSend_initWithType_receivedMessages_(v14, v15, 0, v11);
    }

    else
    {
      v16 = objc_msgSend_initWithType_receivedMessages_(v14, v15, 0, MEMORY[0x1E695E0F0]);
    }

    v18 = v16;
    if (v16)
    {
      if (v7)
      {
        objc_msgSend_setSenderMessages_(v16, v17, 0);
      }

      else
      {
        objc_msgSend_setSenderMessages_(v16, v17, v11);
      }

      objc_msgSend_setIncludesDynamicSuggestions_(v18, v19, 1);
      v22 = objc_msgSend_dateSent(v6, v20, v21);
      objc_msgSend_setRequestDate_(v18, v23, v22);

      v24 = v18;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)processMessageDictionary:(id)dictionary chatDictionary:(id)chatDictionary
{
  v5 = objc_msgSend_srMessageFromMessageDictionary_(self, a2, dictionary, chatDictionary);
  if (v5)
  {
    v10 = v5;
    v8 = objc_msgSend_srMessages(self, v6, v7);
    objc_msgSend_addObject_(v8, v9, v10);

    v5 = v10;
  }
}

- (void)finishWithCompletion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = objc_msgSend_srMessages(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v12 = qword_1EDBE5B58;
    v47 = qword_1EDBE5B58;
    if (!qword_1EDBE5B58)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_1B7B8F3EC;
      v43[3] = &unk_1E7CB6EA8;
      v43[4] = &v44;
      sub_1B7B8F3EC(v43, v10, v11);
      v12 = v45[3];
    }

    v13 = v12;
    _Block_object_dispose(&v44, 8);
    v16 = objc_msgSend_sharedManager(v12, v14, v15);
    v17 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = objc_msgSend_srMessages(self, v18, v19);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v39, v48, 16);
    if (v21)
    {
      v22 = *v40;
      do
      {
        v23 = 0;
        do
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v39 + 1) + 8 * v23);
          dispatch_group_enter(v17);
          v25 = objc_autoreleasePoolPush();
          v27 = objc_msgSend_srRequestForMessage_(self, v26, v24);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = sub_1B7B8F190;
          v37[3] = &unk_1E7CBB548;
          v38 = v17;
          objc_msgSend_suggestionsForRequest_withCompletion_(v16, v28, v27, v37);

          objc_autoreleasePoolPop(v25);
          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v39, v48, 16);
      }

      while (v21);
    }

    v30 = IMDIndexingClientRequestQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B8F198;
    block[3] = &unk_1E7CB67C0;
    v36 = completionCopy;
    dispatch_group_notify(v17, v30, block);

    v31 = completionCopy;
  }

  else
  {
    v31 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end