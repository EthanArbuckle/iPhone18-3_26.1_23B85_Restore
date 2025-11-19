@interface ICMentionNotificationController
+ (_NSRange)rangeOfMention:(id)a3;
+ (_NSRange)rangeOfParagraphForMention:(id)a3;
+ (_NSRange)rangeOfSentenceAfterMention:(id)a3;
+ (_NSRange)rangeOfSentenceBeforeMention:(id)a3;
+ (_NSRange)rangeOfSentenceForMention:(id)a3;
+ (_NSRange)rangeOfSnippetForMentions:(id)a3;
+ (id)coalesceMentions:(id)a3;
+ (id)noteTitleForMentions:(id)a3;
+ (id)pendingMentionsInContext:(id)a3 createdBeforeDate:(id)a4;
+ (id)predicateForMentionsInState:(int)a3 inContext:(id)a4;
+ (id)sameNoteMentionsFrom:(id)a3;
+ (id)senderNameForMentions:(id)a3;
+ (id)sharedController;
+ (id)snippetForMentions:(id)a3;
+ (void)triggerNotificationForMentionAttachments:(id)a3 context:(id)a4;
- (OS_dispatch_queue)notificationSerialQueue;
- (void)listenForReachabilityChange;
- (void)reachabilityChanged:(id)a3;
- (void)sendPendingNotifications;
- (void)sendPendingNotificationsCreatedBefore:(id)a3;
@end

@implementation ICMentionNotificationController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[ICMentionNotificationController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __51__ICMentionNotificationController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICMentionNotificationController);
  sharedController_sharedController = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (OS_dispatch_queue)notificationSerialQueue
{
  if (notificationSerialQueue_onceToken != -1)
  {
    [ICMentionNotificationController notificationSerialQueue];
  }

  v3 = notificationSerialQueue_queue;

  return v3;
}

void __58__ICMentionNotificationController_notificationSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.mentionNotificationQueue", v2);
  v1 = notificationSerialQueue_queue;
  notificationSerialQueue_queue = v0;
}

- (void)listenForReachabilityChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69B7B50];
  v5 = [MEMORY[0x1E69B7AA0] sharedReachabilityForInternetConnection];
  [v3 addObserver:self selector:sel_reachabilityChanged_ name:v4 object:v5];

  [(ICMentionNotificationController *)self sendPendingNotifications];
}

- (void)reachabilityChanged:(id)a3
{
  v4 = dispatch_get_global_queue(9, 0);
  v5 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICMentionNotificationController_reachabilityChanged___block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_after(v5, v4, block);
}

- (void)sendPendingNotifications
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(ICMentionNotificationController *)self sendPendingNotificationsCreatedBefore:v3];
}

- (void)sendPendingNotificationsCreatedBefore:(id)a3
{
  v4 = a3;
  v5 = [(ICMentionNotificationController *)self notificationSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke;
  v7[3] = &unk_1E8468F80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7AA0] sharedReachabilityForInternetConnection];
  v3 = [v2 currentReachabilityStatus];

  if (v3)
  {
    v4 = [MEMORY[0x1E69B7800] sharedContext];
    v5 = [v4 workerManagedObjectContext];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke_2;
    v9[3] = &unk_1E8468D98;
    v10 = v5;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = v6;
    v12 = v7;
    v8 = v5;
    [v8 performBlockAndWait:v9];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke_cold_1();
    }
  }
}

void __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [ICMentionNotificationController pendingMentionsInContext:*(a1 + 32) createdBeforeDate:*(a1 + 40)];
  v3 = os_log_create("com.apple.notes", "Mentions");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke_2_cold_1((a1 + 40), v2, v3);
  }

  v4 = [ICMentionNotificationController coalesceMentions:v2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = os_log_create("com.apple.notes", "Mentions");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_debug_impl(&dword_1D4171000, v10, OS_LOG_TYPE_DEBUG, "Attempting to send notification for coalesced mentions: %@", buf, 0xCu);
        }

        [objc_opt_class() triggerNotificationForMentionAttachments:v9 context:*(a1 + 32)];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }
}

+ (void)triggerNotificationForMentionAttachments:(id)a3 context:(id)a4
{
  v121 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstObject];
  v8 = [v7 tokenContentIdentifier];
  v9 = [v7 note];
  v10 = [v9 folder];
  v11 = [v10 account];
  v12 = [v11 identifier];

  v88 = v8;
  v13 = [v9 participantForUserID:v8];
  v14 = [v7 serverShareCheckingParent];
  v15 = [v14 recordID];
  v16 = [v15 recordName];

  v17 = [v14 owner];
  v82 = [v17 ic_userRecordNameInNote:v9];

  v18 = [v9 recordID];
  v87 = [v18 recordName];

  v19 = [v7 recordID];
  v83 = [v19 recordName];

  v86 = v16;
  v81 = v14;
  if (!v16 || !v87 || !v88)
  {
    v26 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      +[ICMentionNotificationController triggerNotificationForMentionAttachments:context:];
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v21 = v5;
    v27 = [v21 countByEnumeratingWithState:&v105 objects:v120 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v106;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v106 != v29)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v105 + 1) + 8 * i) setMentionNotificationState:3];
        }

        v28 = [v21 countByEnumeratingWithState:&v105 objects:v120 count:16];
      }

      while (v28);
    }

    goto LABEL_24;
  }

  if ([v13 isCurrentUser])
  {
    v20 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[ICMentionNotificationController triggerNotificationForMentionAttachments:context:];
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v21 = v5;
    v22 = [v21 countByEnumeratingWithState:&v101 objects:v119 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v102;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v102 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v101 + 1) + 8 * j) setMentionNotificationState:3];
        }

        v23 = [v21 countByEnumeratingWithState:&v101 objects:v119 count:16];
      }

      while (v23);
    }

LABEL_24:

    [v6 ic_save];
    goto LABEL_48;
  }

  v75 = v13;
  v76 = v12;
  v77 = v9;
  v78 = v7;
  v79 = v6;
  v80 = v5;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v97 = 0u;
  obj = v5;
  v31 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v98;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v98 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v97 + 1) + 8 * k);
        v36 = [v35 tokenContentIdentifier];
        v37 = [v88 isEqualToString:v36];

        if ((v37 & 1) == 0)
        {
          v38 = MEMORY[0x1E69B7A38];
          v39 = [v35 tokenContentIdentifier];
          [v38 handleFailedAssertWithCondition:"[recipientUserId isEqualToString:mention.tokenContentIdentifier]" functionName:"+[ICMentionNotificationController triggerNotificationForMentionAttachments:context:]" simulateCrash:1 showAlert:0 format:{@"Mismatch triggering coalesced mention notification to %@, expecting %@", v39, v88}];
        }

        v40 = [v35 serverShareCheckingParent];
        v41 = [v40 recordID];
        v42 = [v41 recordName];
        v43 = [v86 isEqualToString:v42];

        if ((v43 & 1) == 0)
        {
          v44 = MEMORY[0x1E69B7A38];
          v45 = [v35 serverShareCheckingParent];
          v46 = [v45 recordID];
          v47 = [v46 recordName];
          [v44 handleFailedAssertWithCondition:"[shareRecordName isEqualToString:mention.serverShareCheckingParent.recordID.recordName]" functionName:"+[ICMentionNotificationController triggerNotificationForMentionAttachments:context:]" simulateCrash:1 showAlert:0 format:{@"Mismatch triggering coalesced mention notification for %@, expecting %@", v47, v86}];
        }

        v48 = [v35 note];
        v49 = [v48 recordID];
        v50 = [v49 recordName];
        v51 = [v87 isEqualToString:v50];

        if ((v51 & 1) == 0)
        {
          v52 = MEMORY[0x1E69B7A38];
          v53 = [v35 note];
          v54 = [v53 recordID];
          v55 = [v54 recordName];
          [v52 handleFailedAssertWithCondition:"[noteRecordName isEqualToString:mention.note.recordID.recordName]" functionName:"+[ICMentionNotificationController triggerNotificationForMentionAttachments:context:]" simulateCrash:1 showAlert:0 format:{@"Mismatch triggering coalesced mention notification for note %@, expecting %@", v55, v87}];
        }
      }

      v32 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
    }

    while (v32);
  }

  v56 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v83];
  v57 = [MEMORY[0x1E696AD88] defaultCenter];
  v74 = v56;
  [v57 postNotificationName:@"ICMentionNotificationControllerWillSendNotification" object:v56];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v58 = obj;
  v59 = [v58 countByEnumeratingWithState:&v93 objects:v117 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v94;
    obja = v58;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v94 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v93 + 1) + 8 * m);
        [v63 setMentionNotificationState:2];
        [v63 setMentionNotificationAttemptCount:{objc_msgSend(v63, "mentionNotificationAttemptCount") + 1}];
        v64 = os_log_create("com.apple.notes", "Mentions");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = [v63 mentionNotificationAttemptCount];
          v66 = [MEMORY[0x1E69B76E8] sharedConfiguration];
          v67 = [v66 mentionNotificationMaxRetries];
          v68 = [v63 ic_loggingIdentifier];
          *buf = 67109890;
          v110 = v65;
          v111 = 2048;
          v112 = v67;
          v113 = 2112;
          v114 = v88;
          v115 = 2112;
          v116 = v68;
          _os_log_debug_impl(&dword_1D4171000, v64, OS_LOG_TYPE_DEBUG, "Attempt (%d/%lu) to send notification to participant (%@) for mention: %@", buf, 0x26u);

          v58 = obja;
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v93 objects:v117 count:16];
    }

    while (v60);
  }

  v6 = v79;
  [v79 ic_save];
  v69 = [objc_opt_class() senderNameForMentions:v58];
  v70 = [objc_opt_class() noteTitleForMentions:v58];
  v71 = [objc_opt_class() snippetForMentions:v58];
  v72 = [MEMORY[0x1E69B76F8] sharedController];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke;
  v89[3] = &unk_1E846D780;
  v90 = v79;
  v91 = v58;
  v92 = v74;
  v73 = v74;
  v12 = v76;
  [v72 sendMentionNotificationToParticipant:v88 inlineAttachmentRecordName:v83 shareRecordName:v86 shareOwnerUserId:v82 accountId:v76 noteRecordName:v87 senderName:v69 noteTitle:v70 mentionSnippet:v71 callback:v89];

  v5 = v80;
  v9 = v77;
  v7 = v78;
  v13 = v75;
LABEL_48:
}

void __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke_2;
  v6[3] = &unk_1E846A3A0;
  v4 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v9 = a1[4];
  v10 = a1[6];
  v5 = v3;
  [v4 performBlock:v6];
}

void __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412802;
    v21 = v4;
    v22 = v2;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = os_log_create("com.apple.notes", "Mentions");
        v11 = v10;
        if (!v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke_2_cold_1(v27, v8, &v28, v11);
          }

          v15 = v8;
          v16 = 2;
          goto LABEL_14;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = [v8 ic_loggingIdentifier];
          v18 = *(a1 + 40);
          v19 = [v18 userInfo];
          *buf = v21;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          v33 = 2112;
          v34 = v19;
          _os_log_error_impl(&dword_1D4171000, v11, OS_LOG_TYPE_ERROR, "Failed to send mention (%@) notification: %@ (userInfo=%@)", buf, 0x20u);

          v2 = v22;
        }

        v12 = [v8 mentionNotificationAttemptCount];
        v13 = [MEMORY[0x1E69B76E8] sharedConfiguration];
        v14 = [v13 mentionNotificationMaxRetries];

        v15 = v8;
        if (v14 > v12)
        {
          v16 = 1;
LABEL_14:
          [v15 setMentionNotificationState:{v16, v21}];
          continue;
        }

        [v8 setMentionNotificationState:3];
        [MEMORY[0x1E69B7AC0] postBasicEvent:4];
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICMentionNotificationController triggerNotificationForMentionAttachments:context:]_block_invoke" simulateCrash:1 showAlert:1 format:@"Unrecoverable failure sending mention notification"];
      }

      v5 = [v2 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) ic_save];
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 postNotificationName:@"ICMentionNotificationControllerDidSendNotification" object:*(a1 + 56)];
}

+ (id)coalesceMentions:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v28 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v28)
  {
    v6 = *v33;
    v27 = *v33;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [v8 note];
        v10 = [v9 identifier];

        v11 = [v8 tokenContentIdentifier];
        if (v10 && ([v10 length] ? (v12 = v11 == 0) : (v12 = 1), !v12 && objc_msgSend(v11, "length")))
        {
          v13 = [v10 stringByAppendingString:v11];
          if (!v13)
          {
            [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((noteParticipantParentKey) != nil)" functionName:"+[ICMentionNotificationController coalesceMentions:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteParticipantParentKey"}];
          }

          v14 = [v8 parentAttachment];
          v15 = [v14 identifier];

          if (v15)
          {
            v16 = [v8 parentAttachment];
            v17 = [v16 identifier];
            [v13 stringByAppendingString:v17];
            v18 = v5;
            v20 = v19 = v4;

            v13 = v20;
            v4 = v19;
            v5 = v18;
            v6 = v27;
          }

          v21 = [v4 objectForKeyedSubscript:v13];
          if (!v21)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v4 setObject:v21 forKeyedSubscript:v13];
          }

          [v21 ic_addNonNilObject:v8];
        }

        else
        {
          v13 = os_log_create("com.apple.notes", "Mentions");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v11;
            v38 = 2112;
            v39 = v10;
            _os_log_error_impl(&dword_1D4171000, v13, OS_LOG_TYPE_ERROR, "Coalesce mentions skipping mention of %@ in note %@", buf, 0x16u);
          }
        }
      }

      v28 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v28);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __52__ICMentionNotificationController_coalesceMentions___block_invoke;
  v29[3] = &unk_1E846D7D0;
  v30 = v25;
  v31 = a1;
  v22 = v25;
  [v4 enumerateKeysAndObjectsUsingBlock:v29];
  v23 = [v22 copy];

  return v23;
}

void __52__ICMentionNotificationController_coalesceMentions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v32 = [v3 firstObject];
  v4 = [v32 parentAttachment];
  v33 = v3;
  if (v4)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          v11 = [v10 parentAttachment];
          v12 = [v11 identifier];
          v13 = [v4 identifier];

          if (v12 != v13)
          {
            v14 = MEMORY[0x1E69B7A38];
            v15 = [v10 parentAttachment];
            v16 = [v15 identifier];
            v17 = [v4 identifier];
            [v14 handleFailedAssertWithCondition:"mentionInParent.parentAttachment.identifier == parent.identifier" functionName:"+[ICMentionNotificationController coalesceMentions:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Error trying to coalesce mentions by parent attachment got %@, expected %@", v16, v17}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v7);
    }

    v18 = *(a1 + 32);
    v19 = [v5 copy];
    [v18 addObject:v19];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v3;
    v20 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v39 + 1) + 8 * j);
          v25 = *(a1 + 40);
          v47 = v24;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          v27 = [v25 rangeOfSnippetForMentions:v26];
          v29 = v28;

          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = [MEMORY[0x1E696B098] valueWithRange:{v27, v29}];
            v31 = [v35 objectForKeyedSubscript:v30];
            if (!v31)
            {
              v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v35 setObject:v31 forKeyedSubscript:v30];
            }

            [v31 addObject:v24];
          }
        }

        v21 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v21);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __52__ICMentionNotificationController_coalesceMentions___block_invoke_2;
    v37[3] = &unk_1E846D7A8;
    v38 = *(a1 + 32);
    v19 = v35;
    [v35 enumerateKeysAndObjectsUsingBlock:v37];
  }
}

void __52__ICMentionNotificationController_coalesceMentions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 copy];
  [v3 addObject:v4];
}

+ (id)sameNoteMentionsFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 note];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ICMentionNotificationController_sameNoteMentionsFrom___block_invoke;
  v9[3] = &unk_1E846D7F8;
  v10 = v5;
  v6 = v5;
  v7 = [v3 ic_compactMap:v9];

  return v7;
}

void *__56__ICMentionNotificationController_sameNoteMentionsFrom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 note];
  if (v4 == *(a1 + 32))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)senderNameForMentions:(id)a3
{
  v4 = a3;
  v5 = [a1 sameNoteMentionsFrom:v4];
  v6 = [v5 count];
  v7 = [v4 count];

  if (v6 != v7)
  {
    v8 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ICMentionNotificationController senderNameForMentions:];
    }
  }

  v9 = [v5 firstObject];
  v10 = [v9 note];

  if (!v10)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"note" functionName:"+[ICMentionNotificationController senderNameForMentions:]" simulateCrash:1 showAlert:0 format:@"Tried to get a sender name for mentions without a note"];
  }

  v11 = [v10 serverShareCheckingParent];
  if (!v11)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"share" functionName:"+[ICMentionNotificationController senderNameForMentions:]" simulateCrash:1 showAlert:0 format:@"Tried to a sender name for a note without a share"];
  }

  v12 = [v11 currentUserParticipant];
  v13 = [v12 ic_shortParticipantName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F4F94F00;
  }

  v16 = v15;

  return v15;
}

+ (id)noteTitleForMentions:(id)a3
{
  v4 = a3;
  v5 = [a1 sameNoteMentionsFrom:v4];
  v6 = [v5 count];
  v7 = [v4 count];

  if (v6 != v7)
  {
    v8 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ICMentionNotificationController senderNameForMentions:];
    }
  }

  v9 = [v5 firstObject];
  v10 = [v9 note];

  if (!v10)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"note" functionName:"+[ICMentionNotificationController noteTitleForMentions:]" simulateCrash:1 showAlert:0 format:@"Tried to get title for mentions without a note"];
  }

  v11 = [v10 title];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F4F94F00;
  }

  v14 = v13;

  return v13;
}

+ (id)snippetForMentions:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (![v4 count])
  {
    v11 = &stru_1F4F94F00;
    goto LABEL_10;
  }

  v6 = [v4 firstObject];
  v7 = [v6 note];

  v8 = [v5 parentAttachment];
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E69B7680] mentionNotificationSnippetForAttachmentType:{objc_msgSend(v8, "attachmentType")}];
    v11 = [v10 ic_trimmedString];
LABEL_8:

    goto LABEL_9;
  }

  v12 = [a1 rangeOfSnippetForMentions:v4];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v12;
    v15 = v13;
    v16 = [v7 attributedString];
    v10 = [v16 attributedSubstringFromRange:{v14, v15}];

    v17 = [v7 managedObjectContext];
    v18 = [v10 ic_attributedStringByFlatteningInlineAttachmentsWithContext:v17 formatter:&__block_literal_global_78_0];

    v19 = [v18 string];
    v11 = [v19 ic_trimmedString];

    goto LABEL_8;
  }

  v11 = &stru_1F4F94F00;
LABEL_9:

LABEL_10:

  return v11;
}

+ (_NSRange)rangeOfSnippetForMentions:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 sameNoteMentionsFrom:v4];
  v6 = [v5 count];
  if (v6 != [v4 count])
  {
    v7 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ICMentionNotificationController senderNameForMentions:];
    }
  }

  v8 = [v5 firstObject];
  v9 = [v8 note];

  if (!v9)
  {
    v30 = 0;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_93;
  }

  v81 = v9;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v95 objects:v102 count:16];
  v82 = v10;
  v77 = v5;
  v79 = v4;
  if (!v11)
  {
LABEL_19:

    goto LABEL_20;
  }

  v12 = v11;
  length = 0;
  v14 = *v96;
  location = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v96 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [a1 rangeOfParagraphForMention:{*(*(&v95 + 1) + 8 * i), v77, v79}];
      v19.location = v17;
      v19.length = v18;
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }

        v104.location = location;
        v104.length = length;
        v19 = NSUnionRange(v104, v19);
      }

      location = v19.location;
      length = v19.length;
      if (v19.length > 0xC8)
      {
        goto LABEL_19;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v95 objects:v102 count:16];
  }

  while (v12);

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_20:
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (!v21)
    {
      length = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_34;
    }

    v22 = v21;
    v23 = 0;
    v24 = *v92;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v92 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = [a1 rangeOfSentenceForMention:{*(*(&v91 + 1) + 8 * j), v77, v79}];
        location = v27;
        length = v28;
        if (v25 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }

          v105.location = v25;
          v105.length = v23;
          v111.location = location;
          v111.length = length;
          v29 = NSUnionRange(v105, v111);
          location = v29.location;
          length = v29.length;
        }

        v25 = location;
        v23 = length;
        if (length > 0xC8)
        {
          goto LABEL_34;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v91 objects:v101 count:16];
      length = v23;
      location = v25;
      if (!v22)
      {
LABEL_34:

        v10 = v82;
        break;
      }
    }
  }

  v32 = length > 0xC8 || location == 0x7FFFFFFFFFFFFFFFLL;
  v9 = v81;
  if (!v32)
  {
    goto LABEL_55;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v33 = v10;
  v34 = [v33 countByEnumeratingWithState:&v87 objects:v100 count:16];
  location = 0x7FFFFFFFFFFFFFFFLL;
  if (!v34)
  {
    length = 0;
    v10 = v82;
    goto LABEL_54;
  }

  v35 = v34;
  length = 0;
  v36 = *v88;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (k = 0; k != v35; ++k)
    {
      if (*v88 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v39 = [a1 rangeOfMention:{*(*(&v87 + 1) + 8 * k), v77, v79}];
      v41.location = v39;
      v41.length = v40;
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        length = v40;
        v37 = v39;
      }

      else if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v106.location = v37;
        v106.length = length;
        v42 = NSUnionRange(v106, v41);
        v37 = v42.location;
        length = v42.length;
      }
    }

    v35 = [v33 countByEnumeratingWithState:&v87 objects:v100 count:16];
  }

  while (v35);

  location = 0x7FFFFFFFFFFFFFFFLL;
  v10 = v82;
  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [v81 attributedString];
    v112.length = [v33 length];
    v107.location = v37;
    v107.length = 200;
    v112.location = 0;
    v43 = NSIntersectionRange(v107, v112);
    location = v43.location;
    length = v43.length;
LABEL_54:
  }

LABEL_55:
  v44 = [v81 attributedString];
  v45 = [v44 string];
  v46 = [v45 ic_rangeIsValid:{location, length}];

  if (v46)
  {
    v47 = location == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v47 = 1;
  }

  if (v47 && ([v10 firstObject], v48 = objc_claimAutoreleasedReturnValue(), location = objc_msgSend(a1, "rangeOfMention:", v48), length = v49, v48, location == 0x7FFFFFFFFFFFFFFFLL))
  {
    v50 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v51 = [v81 attributedString];
    v52 = [v51 string];
    v50 = [v52 substringWithRange:{location, length}];
  }

  v53 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v54 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v53 formUnionWithCharacterSet:v54];

  v55 = [v50 stringByTrimmingCharactersInSet:v53];
  v56 = [v55 length];

  if (v56 == 1)
  {
    v57 = [v82 firstObject];
    v58 = [a1 rangeOfSentenceBeforeMention:v57];
    v60 = v59;
    v113.location = [a1 rangeOfSentenceAfterMention:v57];
    v113.length = v61;
    v108.location = v58;
    v108.length = v60;
    v62 = NSUnionRange(v108, v113);
    location = v62.location;
    if (v62.length >= 0xC8)
    {
      length = 200;
    }

    else
    {
      length = v62.length;
    }
  }

  if (length > 0xC8 || location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v63 = v82;
    v64 = [v63 countByEnumeratingWithState:&v83 objects:v99 count:16];
    if (v64)
    {
      v65 = v64;
      length = 0;
      v66 = *v84;
      location = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (m = 0; m != v65; ++m)
        {
          if (*v84 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = [a1 rangeOfMention:*(*(&v83 + 1) + 8 * m)];
          v70.location = v68;
          v70.length = v69;
          if (location == 0x7FFFFFFFFFFFFFFFLL)
          {
            length = v69;
            location = v68;
          }

          else if (v68 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v109.location = location;
            v109.length = length;
            v71 = NSUnionRange(v109, v70);
            location = v71.location;
            length = v71.length;
          }
        }

        v65 = [v63 countByEnumeratingWithState:&v83 objects:v99 count:16];
      }

      while (v65);
    }

    else
    {
      length = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (length >= 0xC8)
    {
      length = 200;
    }

    v9 = v81;
  }

  v72 = [v9 attributedString];
  v73 = [v72 string];
  v74 = [v73 ic_rangeIsValid:{location, length}];
  if (v74)
  {
    v31 = location;
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v74)
  {
    v30 = length;
  }

  else
  {
    v30 = 0;
  }

  v5 = v78;
  v4 = v80;
LABEL_93:

  v75 = v31;
  v76 = v30;
  result.length = v76;
  result.location = v75;
  return result;
}

+ (_NSRange)rangeOfMention:(id)a3
{
  v3 = a3;
  v4 = [v3 note];
  v5 = [v4 attributedString];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1D449C2A9;
  v20 = xmmword_1D4433FC0;
  v6 = [v5 length];
  v7 = *MEMORY[0x1E69B7628];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__ICMentionNotificationController_rangeOfMention___block_invoke;
  v13[3] = &unk_1E846A510;
  v8 = v3;
  v14 = v8;
  v15 = &v16;
  [v5 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v13}];
  v9 = v17[4];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

uint64_t __50__ICMentionNotificationController_rangeOfMention___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = a2;
  v9 = [v16 conformsToProtocol:&unk_1F4FC5D80];
  if (v9)
  {
    v10 = v16;
    if ([MEMORY[0x1E69B7888] isInlineAttachment:v10])
    {
      v11 = [*(a1 + 32) identifier];
      v12 = [v10 attachmentIdentifier];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = *(*(a1 + 40) + 8);
        *(v14 + 32) = a3;
        *(v14 + 40) = a4;
        *a5 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v9);
}

+ (_NSRange)rangeOfParagraphForMention:(id)a3
{
  v4 = a3;
  v5 = [v4 note];
  v6 = [v5 attributedString];

  v7 = [a1 rangeOfMention:v4];
  v9 = v8;

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 string];
    v10 = [v12 paragraphRangeForRange:{v7, v9}];
    v11 = v13;
  }

  v14 = v10;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (_NSRange)rangeOfSentenceForMention:(id)a3
{
  v4 = a3;
  v5 = [v4 note];
  v6 = [v5 attributedString];

  v7 = [a1 rangeOfMention:v4];
  v9 = v8;

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 string];
    v10 = [v12 ic_sentenceRangeForRange:{v7, v9}];
    v11 = v13;
  }

  v14 = v10;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (_NSRange)rangeOfSentenceBeforeMention:(id)a3
{
  v4 = a3;
  v5 = [v4 note];
  v6 = [v5 attributedString];
  v7 = [v6 string];

  v8 = [a1 rangeOfMention:v4];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v12 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v11 formUnionWithCharacterSet:v12];

  v13 = v8;
  do
  {
    if (!v13)
    {
      break;
    }

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    --v13;
  }

  while (([v11 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", v13)}] & 1) != 0);
  v20.location = v13;
  v20.length = v10;
  v22.location = v8;
  v22.length = v10;
  v14 = NSUnionRange(v20, v22);
  v15 = [v7 ic_sentenceRangeForRange:{v14.location, v14.length}];
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

+ (_NSRange)rangeOfSentenceAfterMention:(id)a3
{
  v4 = a3;
  v5 = [v4 note];
  v6 = [v5 attributedString];
  v7 = [v6 string];

  v8 = [a1 rangeOfMention:v4];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v12 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v11 formUnionWithCharacterSet:v12];

  v13 = v8;
  while (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v7 length] >= 2 && v13 < objc_msgSend(v7, "length") - 2 && (objc_msgSend(v11, "characterIsMember:", objc_msgSend(v7, "characterAtIndex:", ++v13)) & 1) != 0)
    {
      continue;
    }

    goto LABEL_8;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  v20.location = v13;
  v20.length = v10;
  v22.location = v8;
  v22.length = v10;
  v14 = NSUnionRange(v20, v22);
  v15 = [v7 ic_sentenceRangeForRange:{v14.location, v14.length}];
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

+ (id)predicateForMentionsInState:(int)a3 inContext:(id)a4
{
  v4 = *&a3;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69B7778] predicateForMentionsInContext:a4];
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v8 = [v6 predicateWithFormat:@"mentionNotificationState == %@", v7];

  v9 = MEMORY[0x1E696AB28];
  v13[0] = v5;
  v13[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  return v11;
}

+ (id)pendingMentionsInContext:(id)a3 createdBeforeDate:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 predicateForMentionsInState:1 inContext:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate <= %@", v6];

  v10 = MEMORY[0x1E69B7778];
  v11 = MEMORY[0x1E696AB28];
  v16[0] = v8;
  v16[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];
  v14 = [v10 ic_objectsMatchingPredicate:v13 context:v7];

  return v14;
}

void __73__ICMentionNotificationController_sendPendingNotificationsCreatedBefore___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "Pending mentions before %@: %@", &v4, 0x16u);
}

void __84__ICMentionNotificationController_triggerNotificationForMentionAttachments_context___block_invoke_2_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1D4171000, a4, OS_LOG_TYPE_DEBUG, "Successfully sent notification for mention: %@", a1, 0xCu);
}

@end