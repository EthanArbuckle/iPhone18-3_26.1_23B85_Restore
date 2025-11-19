@interface ICDrawingHashtagsAndMentionsController
- (CKShare)share;
- (ICAttachment)attachment;
- (ICDrawingHashtagsAndMentionsController)initWithAttachment:(id)a3;
- (ICNote)note;
- (NSArray)eligibleShareParticipants;
- (NSManagedObjectContext)managedObjectContext;
- (id)allConfirmedHashtagsForAttachmentView:(id)a3;
- (id)allConfirmedMentionsForAttachmentView:(id)a3;
- (id)attachmentView:(id)a3 participantMatchesForMentionText:(id)a4;
- (void)allPossibleParticipantNameTokensForAttachmentView:(id)a3 completion:(id)a4;
- (void)attachmentView:(id)a3 userConfirmedHashtagWithUUID:(id)a4 displayText:(id)a5;
- (void)attachmentView:(id)a3 userConfirmedMentionWithUUID:(id)a4 participantIdentifier:(id)a5;
- (void)attachmentView:(id)a3 userDeletedHashtagWithUUID:(id)a4;
- (void)attachmentView:(id)a3 userDeletedMentionWithUUID:(id)a4;
- (void)fetchMentionTokensForParticipants:(id)a3 completion:(id)a4;
@end

@implementation ICDrawingHashtagsAndMentionsController

- (ICDrawingHashtagsAndMentionsController)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICDrawingHashtagsAndMentionsController;
  v5 = [(ICDrawingHashtagsAndMentionsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attachment, v4);
  }

  return v6;
}

- (void)allPossibleParticipantNameTokensForAttachmentView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  objc_initWeak(&location, self);
  v9 = [(ICDrawingHashtagsAndMentionsController *)self eligibleShareParticipants];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__ICDrawingHashtagsAndMentionsController_allPossibleParticipantNameTokensForAttachmentView_completion___block_invoke;
  v12[3] = &unk_1E8469CD8;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [(ICDrawingHashtagsAndMentionsController *)self fetchMentionTokensForParticipants:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __103__ICDrawingHashtagsAndMentionsController_allPossibleParticipantNameTokensForAttachmentView_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v4 = v3;
  v5 = a1[4];
  v6 = a1[5];
  performBlockOnMainThread();

  objc_destroyWeak(&v7);
}

void __103__ICDrawingHashtagsAndMentionsController_allPossibleParticipantNameTokensForAttachmentView_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) copy];
    [WeakRetained setMentionTokensForParticipants:v3];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [WeakRetained mentionTokensForParticipants];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          v10 = *(a1 + 40);
          v11 = [WeakRetained mentionTokensForParticipants];
          v12 = [v11 objectForKeyedSubscript:v9];
          [v10 unionSet:v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    if ([*(a1 + 40) count])
    {
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x1E69B77E8] allKeyword];
      v15 = [v14 ic_tokenSafeText];
      [v13 addObject:v15];
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) copy];
    (*(v16 + 16))(v16, v17);
  }
}

- (id)allConfirmedMentionsForAttachmentView:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v38 = self;
  v5 = [(ICDrawingHashtagsAndMentionsController *)self share];

  if (v5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = self;
    v7 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    v8 = [v7 visibleInlineAttachments];

    v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = 0x1E69B7000uLL;
    v12 = *v42;
    v39 = *v42;
    v37 = v8;
    while (1)
    {
      v13 = 0;
      v40 = v10;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        if ([v14 isMentionAttachment])
        {
          v15 = [v14 tokenContentIdentifier];
          v16 = [*(v11 + 2024) allUserRecordName];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            v18 = objc_alloc(MEMORY[0x1E696AFB0]);
            v19 = [v14 identifier];
            v20 = [v18 initWithUUIDString:v19];

            v21 = [*(v11 + 2024) allKeyword];
            v22 = [MEMORY[0x1E69DC888] tintColor];
            v23 = [MEMORY[0x1E69784B0] mentionWithDisplayName:v21 identifier:v15 color:v22];
            [v4 setObject:v23 forKeyedSubscript:v20];
            goto LABEL_12;
          }

          v24 = [(ICDrawingHashtagsAndMentionsController *)v6 note];
          v20 = [v24 participantForUserID:v15];

          if (v20)
          {
            v25 = objc_alloc(MEMORY[0x1E696AFB0]);
            v26 = [v14 identifier];
            v21 = [v25 initWithUUIDString:v26];

            v27 = MEMORY[0x1E695BAD8];
            v28 = [(ICDrawingHashtagsAndMentionsController *)v6 note];
            v22 = [v27 ic_participantNameOrFallbackForUserRecordName:v15 note:v28];

            [(ICDrawingHashtagsAndMentionsController *)v6 note];
            v30 = v29 = v4;
            v31 = [v30 collaborationColorManager];
            v32 = [(ICDrawingHashtagsAndMentionsController *)v6 note];
            v23 = [v31 highlightColorForUserID:v15 note:v32];

            v6 = v38;
            v4 = v29;
            v11 = 0x1E69B7000;
            v33 = [MEMORY[0x1E69784B0] mentionWithDisplayName:v22 identifier:v15 color:v23];
            [v4 setObject:v33 forKeyedSubscript:v21];

            v8 = v37;
LABEL_12:

            v12 = v39;
          }

          v10 = v40;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v10)
      {
LABEL_16:

        break;
      }
    }
  }

  v34 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [ICDrawingHashtagsAndMentionsController allConfirmedMentionsForAttachmentView:];
  }

  v35 = [v4 copy];

  return v35;
}

- (id)attachmentView:(id)a3 participantMatchesForMentionText:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 ic_tokenSafeText];
  v7 = objc_opt_new();
  v8 = [(ICDrawingHashtagsAndMentionsController *)self share];

  if (v8)
  {
    v9 = [MEMORY[0x1E69B77E8] allKeyword];
    v10 = [v9 ic_tokenSafeText];
    v11 = [v6 isEqualToString:v10];

    if (v11)
    {
      v12 = MEMORY[0x1E69784B0];
      v13 = [MEMORY[0x1E69B77E8] allKeyword];
      v14 = [MEMORY[0x1E69B77E8] allUserRecordName];
      v15 = [MEMORY[0x1E69DC888] tintColor];
      v16 = [v12 mentionWithDisplayName:v13 identifier:v14 color:v15];

      [v7 addObject:v16];
    }

    else
    {
      v44 = v7;
      v41 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = [(ICDrawingHashtagsAndMentionsController *)self eligibleShareParticipants];
      v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v47;
        v42 = *v47;
        v43 = v5;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v46 + 1) + 8 * i);
            v22 = [(ICDrawingHashtagsAndMentionsController *)self mentionTokensForParticipants];
            v23 = [v22 objectForKeyedSubscript:v21];

            v24 = [v5 ic_tokenSafeText];
            v25 = [v23 containsObject:v24];

            if (v25)
            {
              v26 = [(ICDrawingHashtagsAndMentionsController *)self note];
              v27 = [v21 ic_userRecordNameInNote:v26];

              v28 = [v21 ic_participantNameMatchingString:v5 returnFullName:1];
              v29 = v28;
              if ((!v28 || ![v28 length]) && (objc_msgSend(v21, "ic_cachedDisplayNameFromContacts"), v30 = objc_claimAutoreleasedReturnValue(), v29, (v29 = v30) == 0) || !objc_msgSend(v29, "length"))
              {
                v31 = MEMORY[0x1E695BAD8];
                v32 = [(ICDrawingHashtagsAndMentionsController *)self note];
                v33 = [v31 ic_participantNameOrFallbackForUserRecordName:v27 note:v32];

                v29 = v33;
              }

              v34 = [(ICDrawingHashtagsAndMentionsController *)self note];
              v35 = [v34 collaborationColorManager];
              v36 = [(ICDrawingHashtagsAndMentionsController *)self note];
              v37 = [v35 highlightColorForUserID:v27 note:v36];

              v38 = [MEMORY[0x1E69784B0] mentionWithDisplayName:v29 identifier:v27 color:v37];
              [v44 addObject:v38];

              v19 = v42;
              v5 = v43;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v18);
      }

      v6 = v41;
      v7 = v44;
    }
  }

  v39 = [v7 copy];

  return v39;
}

- (void)attachmentView:(id)a3 userConfirmedMentionWithUUID:(id)a4 participantIdentifier:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E69B77E8] allUserRecordName];
  v10 = [v8 isEqualToString:v9];

  v11 = [(ICDrawingHashtagsAndMentionsController *)self note];
  v12 = [v11 participantForUserID:v8];

  if ((v10 & 1) != 0 || v12)
  {
    v41 = v12;
    v42 = v8;
    if (v10)
    {
      v40 = [MEMORY[0x1E69B77E8] allKeyword];
    }

    else
    {
      v15 = MEMORY[0x1E695BAD8];
      v16 = [(ICDrawingHashtagsAndMentionsController *)self note];
      v40 = [v15 ic_participantNameOrFallbackForUserRecordName:v8 note:v16];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    v18 = [v17 inlineAttachments];

    v19 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
LABEL_11:
      v22 = 0;
      while (1)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * v22);
        v24 = [v23 identifier];
        v25 = [v7 UUIDString];
        v26 = [v24 isEqualToString:v25];

        if (v26)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v20)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v13 = v23;
      if ([v13 attachmentType]!= 2)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"inlineAttachment.attachmentType == ICInlineAttachmentTypeMention" functionName:"-[ICDrawingHashtagsAndMentionsController attachmentView:userConfirmedMentionWithUUID:participantIdentifier:]" simulateCrash:1 showAlert:1 format:@"Found existing inline attachment for a drawing but it is not a mention"];
      }

      v14 = v40;
      if ([v13 markedForDeletion])
      {
        [v13 unmarkForDeletion];
      }

      if (v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_17:

      v14 = v40;
    }

    v27 = MEMORY[0x1E69B7778];
    v28 = [v7 UUIDString];
    v29 = [(ICDrawingHashtagsAndMentionsController *)self note];
    v30 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    v13 = [v27 newMentionAttachmentWithIdentifier:v28 mentionText:v14 userRecordName:v42 note:v29 parentAttachment:v30];

    [v13 setMentionNotificationState:1];
LABEL_24:
    [v13 updateChangeCountWithReason:@"Confirmed mention"];
    v31 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:v13 userConfirmedMentionWithUUID:? participantIdentifier:?];
    }

    v32 = [v13 note];
    v33 = [v13 note];
    v55 = v13;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v35 = [v32 persistMentionActivityEventForObject:v33 mentionAttachments:v34];

    v36 = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
    [v36 ic_save];

    v37 = +[ICMentionNotificationController sharedController];
    [v37 sendPendingNotifications];

    v12 = v41;
    v8 = v42;
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v38 = [v7 UUIDString];
      v39 = [(ICDrawingHashtagsAndMentionsController *)self share];
      *buf = 138413058;
      v48 = v38;
      v49 = 2112;
      v50 = v39;
      v51 = 2112;
      v52 = 0;
      v53 = 2112;
      v54 = v8;
      _os_log_error_impl(&dword_1D4171000, v13, OS_LOG_TYPE_ERROR, "Unable to confirm mention (%@) for share (%@) participant (%@; identifier %@)", buf, 0x2Au);
    }

    v14 = v13;
  }
}

- (void)attachmentView:(id)a3 userDeletedMentionWithUUID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69B7778];
  v7 = [v5 UUIDString];
  v8 = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:v7 context:v8];

  v10 = os_log_create("com.apple.notes", "PencilKit");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedMentionWithUUID:];
    }

    [MEMORY[0x1E69B7778] deleteAttachment:v9];
    v11 = [v9 managedObjectContext];
    [v11 ic_save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedMentionWithUUID:];
    }
  }
}

- (id)allConfirmedHashtagsForAttachmentView:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v6 = [v5 visibleInlineAttachments];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isHashtagAttachment])
        {
          v12 = objc_alloc(MEMORY[0x1E696AFB0]);
          v13 = [v11 identifier];
          v14 = [v12 initWithUUIDString:v13];

          [v4 ic_addNonNilObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ICDrawingHashtagsAndMentionsController allConfirmedHashtagsForAttachmentView:];
  }

  v16 = [v4 copy];

  return v16;
}

- (void)attachmentView:(id)a3 userConfirmedHashtagWithUUID:(id)a4 displayText:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v9 = [v8 inlineAttachments];

  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      v15 = [v14 identifier];
      v16 = [v7 UUIDString];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v14;
    if ([v19 attachmentType] != 1)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"inlineAttachment.attachmentType == ICInlineAttachmentTypeHashtag" functionName:"-[ICDrawingHashtagsAndMentionsController attachmentView:userConfirmedHashtagWithUUID:displayText:]" simulateCrash:1 showAlert:1 format:@"Found existing inline attachment for a drawing but it is not a hashtag"];
    }

    v18 = v26;
    if ([v19 markedForDeletion])
    {
      [v19 unmarkForDeletion];
    }

    if (v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:

    v18 = v26;
  }

  v20 = MEMORY[0x1E69B7778];
  v21 = [v7 UUIDString];
  v22 = [(ICDrawingHashtagsAndMentionsController *)self note];
  v23 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v19 = [v20 newHashtagAttachmentWithIdentifier:v21 hashtagText:v18 creatingHashtagIfNecessary:1 note:v22 parentAttachment:v23];

LABEL_16:
  [v19 updateChangeCountWithReason:@"Confirmed tag"];
  v24 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ICDrawingHashtagsAndMentionsController attachmentView:v19 userConfirmedHashtagWithUUID:? displayText:?];
  }

  v25 = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  [v25 ic_save];
}

- (void)attachmentView:(id)a3 userDeletedHashtagWithUUID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69B7778];
  v7 = [v5 UUIDString];
  v8 = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:v7 context:v8];

  v10 = os_log_create("com.apple.notes", "PencilKit");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedHashtagWithUUID:];
    }

    [MEMORY[0x1E69B7778] deleteAttachment:v9];
    v11 = [v9 managedObjectContext];
    [v11 ic_save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedHashtagWithUUID:];
    }
  }
}

- (NSManagedObjectContext)managedObjectContext
{
  v2 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (ICNote)note
{
  v2 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v3 = [v2 note];

  return v3;
}

- (CKShare)share
{
  v2 = [(ICDrawingHashtagsAndMentionsController *)self note];
  v3 = [v2 serverShareCheckingParent];

  return v3;
}

- (NSArray)eligibleShareParticipants
{
  v2 = [(ICDrawingHashtagsAndMentionsController *)self note];
  v3 = [v2 serverShareCheckingParent];
  v4 = [v3 ic_acceptedParticipants];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)fetchMentionTokensForParticipants:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  contactsRequestQueue = self->_contactsRequestQueue;
  if (!contactsRequestQueue)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.notes.drawingContactsRequests", v9);
    v11 = self->_contactsRequestQueue;
    self->_contactsRequestQueue = v10;

    contactsRequestQueue = self->_contactsRequestQueue;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__ICDrawingHashtagsAndMentionsController_fetchMentionTokensForParticipants_completion___block_invoke;
  v14[3] = &unk_1E8468CF8;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(contactsRequestQueue, v14);
}

void __87__ICDrawingHashtagsAndMentionsController_fetchMentionTokensForParticipants_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 ic_mentionTokens];
        v10 = [v8 ic_mentionTokensFromContacts];
        v11 = [v10 setByAddingObjectsFromSet:v9];
        [v2 ic_setNonNilObject:v11 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = [v2 copy];
    (*(v12 + 16))(v12, v13);
  }
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (void)allConfirmedMentionsForAttachmentView:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [v1 attachment];
  v3 = [v2 shortLoggingDescription];
  v9 = [v0 allKeys];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)attachmentView:(void *)a1 userConfirmedMentionWithUUID:participantIdentifier:.cold.1(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)attachmentView:userDeletedMentionWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)attachmentView:userDeletedMentionWithUUID:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  [v1 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "Couldn't find inline mention attachment for deletion: %@ (parent: %@)", v6, v7, v8, v9, v10);
}

- (void)allConfirmedHashtagsForAttachmentView:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 attachment];
  v7 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)attachmentView:(void *)a1 userConfirmedHashtagWithUUID:displayText:.cold.1(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)attachmentView:userDeletedHashtagWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)attachmentView:userDeletedHashtagWithUUID:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  [v1 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "Couldn't find inline hashtag attachment for deletion: %@ (parent: %@)", v6, v7, v8, v9, v10);
}

@end