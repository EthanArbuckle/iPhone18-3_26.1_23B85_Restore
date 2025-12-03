@interface ICDrawingHashtagsAndMentionsController
- (CKShare)share;
- (ICAttachment)attachment;
- (ICDrawingHashtagsAndMentionsController)initWithAttachment:(id)attachment;
- (ICNote)note;
- (NSArray)eligibleShareParticipants;
- (NSManagedObjectContext)managedObjectContext;
- (id)allConfirmedHashtagsForAttachmentView:(id)view;
- (id)allConfirmedMentionsForAttachmentView:(id)view;
- (id)attachmentView:(id)view participantMatchesForMentionText:(id)text;
- (void)allPossibleParticipantNameTokensForAttachmentView:(id)view completion:(id)completion;
- (void)attachmentView:(id)view userConfirmedHashtagWithUUID:(id)d displayText:(id)text;
- (void)attachmentView:(id)view userConfirmedMentionWithUUID:(id)d participantIdentifier:(id)identifier;
- (void)attachmentView:(id)view userDeletedHashtagWithUUID:(id)d;
- (void)attachmentView:(id)view userDeletedMentionWithUUID:(id)d;
- (void)fetchMentionTokensForParticipants:(id)participants completion:(id)completion;
@end

@implementation ICDrawingHashtagsAndMentionsController

- (ICDrawingHashtagsAndMentionsController)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = ICDrawingHashtagsAndMentionsController;
  v5 = [(ICDrawingHashtagsAndMentionsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attachment, attachmentCopy);
  }

  return v6;
}

- (void)allPossibleParticipantNameTokensForAttachmentView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = objc_opt_new();
  objc_initWeak(&location, self);
  eligibleShareParticipants = [(ICDrawingHashtagsAndMentionsController *)self eligibleShareParticipants];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__ICDrawingHashtagsAndMentionsController_allPossibleParticipantNameTokensForAttachmentView_completion___block_invoke;
  v12[3] = &unk_1E8469CD8;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v13 = v10;
  v11 = completionCopy;
  v14 = v11;
  [(ICDrawingHashtagsAndMentionsController *)self fetchMentionTokensForParticipants:eligibleShareParticipants completion:v12];

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

- (id)allConfirmedMentionsForAttachmentView:(id)view
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  selfCopy = self;
  share = [(ICDrawingHashtagsAndMentionsController *)self share];

  if (share)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    selfCopy2 = self;
    attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    visibleInlineAttachments = [attachment visibleInlineAttachments];

    v9 = [visibleInlineAttachments countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = 0x1E69B7000uLL;
    v12 = *v42;
    v39 = *v42;
    v37 = visibleInlineAttachments;
    while (1)
    {
      v13 = 0;
      v40 = v10;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(visibleInlineAttachments);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        if ([v14 isMentionAttachment])
        {
          tokenContentIdentifier = [v14 tokenContentIdentifier];
          allUserRecordName = [*(v11 + 2024) allUserRecordName];
          v17 = [tokenContentIdentifier isEqualToString:allUserRecordName];

          if (v17)
          {
            v18 = objc_alloc(MEMORY[0x1E696AFB0]);
            identifier = [v14 identifier];
            v20 = [v18 initWithUUIDString:identifier];

            allKeyword = [*(v11 + 2024) allKeyword];
            tintColor = [MEMORY[0x1E69DC888] tintColor];
            v23 = [MEMORY[0x1E69784B0] mentionWithDisplayName:allKeyword identifier:tokenContentIdentifier color:tintColor];
            [v4 setObject:v23 forKeyedSubscript:v20];
            goto LABEL_12;
          }

          note = [(ICDrawingHashtagsAndMentionsController *)selfCopy2 note];
          v20 = [note participantForUserID:tokenContentIdentifier];

          if (v20)
          {
            v25 = objc_alloc(MEMORY[0x1E696AFB0]);
            identifier2 = [v14 identifier];
            allKeyword = [v25 initWithUUIDString:identifier2];

            v27 = MEMORY[0x1E695BAD8];
            note2 = [(ICDrawingHashtagsAndMentionsController *)selfCopy2 note];
            tintColor = [v27 ic_participantNameOrFallbackForUserRecordName:tokenContentIdentifier note:note2];

            [(ICDrawingHashtagsAndMentionsController *)selfCopy2 note];
            v30 = v29 = v4;
            collaborationColorManager = [v30 collaborationColorManager];
            note3 = [(ICDrawingHashtagsAndMentionsController *)selfCopy2 note];
            v23 = [collaborationColorManager highlightColorForUserID:tokenContentIdentifier note:note3];

            selfCopy2 = selfCopy;
            v4 = v29;
            v11 = 0x1E69B7000;
            v33 = [MEMORY[0x1E69784B0] mentionWithDisplayName:tintColor identifier:tokenContentIdentifier color:v23];
            [v4 setObject:v33 forKeyedSubscript:allKeyword];

            visibleInlineAttachments = v37;
LABEL_12:

            v12 = v39;
          }

          v10 = v40;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [visibleInlineAttachments countByEnumeratingWithState:&v41 objects:v45 count:16];
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

- (id)attachmentView:(id)view participantMatchesForMentionText:(id)text
{
  v51 = *MEMORY[0x1E69E9840];
  textCopy = text;
  ic_tokenSafeText = [textCopy ic_tokenSafeText];
  v7 = objc_opt_new();
  share = [(ICDrawingHashtagsAndMentionsController *)self share];

  if (share)
  {
    allKeyword = [MEMORY[0x1E69B77E8] allKeyword];
    ic_tokenSafeText2 = [allKeyword ic_tokenSafeText];
    v11 = [ic_tokenSafeText isEqualToString:ic_tokenSafeText2];

    if (v11)
    {
      v12 = MEMORY[0x1E69784B0];
      allKeyword2 = [MEMORY[0x1E69B77E8] allKeyword];
      allUserRecordName = [MEMORY[0x1E69B77E8] allUserRecordName];
      tintColor = [MEMORY[0x1E69DC888] tintColor];
      v16 = [v12 mentionWithDisplayName:allKeyword2 identifier:allUserRecordName color:tintColor];

      [v7 addObject:v16];
    }

    else
    {
      v44 = v7;
      v41 = ic_tokenSafeText;
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
        v43 = textCopy;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v46 + 1) + 8 * i);
            mentionTokensForParticipants = [(ICDrawingHashtagsAndMentionsController *)self mentionTokensForParticipants];
            v23 = [mentionTokensForParticipants objectForKeyedSubscript:v21];

            ic_tokenSafeText3 = [textCopy ic_tokenSafeText];
            v25 = [v23 containsObject:ic_tokenSafeText3];

            if (v25)
            {
              note = [(ICDrawingHashtagsAndMentionsController *)self note];
              v27 = [v21 ic_userRecordNameInNote:note];

              v28 = [v21 ic_participantNameMatchingString:textCopy returnFullName:1];
              v29 = v28;
              if ((!v28 || ![v28 length]) && (objc_msgSend(v21, "ic_cachedDisplayNameFromContacts"), v30 = objc_claimAutoreleasedReturnValue(), v29, (v29 = v30) == 0) || !objc_msgSend(v29, "length"))
              {
                v31 = MEMORY[0x1E695BAD8];
                note2 = [(ICDrawingHashtagsAndMentionsController *)self note];
                v33 = [v31 ic_participantNameOrFallbackForUserRecordName:v27 note:note2];

                v29 = v33;
              }

              note3 = [(ICDrawingHashtagsAndMentionsController *)self note];
              collaborationColorManager = [note3 collaborationColorManager];
              note4 = [(ICDrawingHashtagsAndMentionsController *)self note];
              v37 = [collaborationColorManager highlightColorForUserID:v27 note:note4];

              v38 = [MEMORY[0x1E69784B0] mentionWithDisplayName:v29 identifier:v27 color:v37];
              [v44 addObject:v38];

              v19 = v42;
              textCopy = v43;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v18);
      }

      ic_tokenSafeText = v41;
      v7 = v44;
    }
  }

  v39 = [v7 copy];

  return v39;
}

- (void)attachmentView:(id)view userConfirmedMentionWithUUID:(id)d participantIdentifier:(id)identifier
{
  v57 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  allUserRecordName = [MEMORY[0x1E69B77E8] allUserRecordName];
  v10 = [identifierCopy isEqualToString:allUserRecordName];

  note = [(ICDrawingHashtagsAndMentionsController *)self note];
  v12 = [note participantForUserID:identifierCopy];

  if ((v10 & 1) != 0 || v12)
  {
    v41 = v12;
    v42 = identifierCopy;
    if (v10)
    {
      allKeyword = [MEMORY[0x1E69B77E8] allKeyword];
    }

    else
    {
      v15 = MEMORY[0x1E695BAD8];
      note2 = [(ICDrawingHashtagsAndMentionsController *)self note];
      allKeyword = [v15 ic_participantNameOrFallbackForUserRecordName:identifierCopy note:note2];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    inlineAttachments = [attachment inlineAttachments];

    v19 = [inlineAttachments countByEnumeratingWithState:&v43 objects:v56 count:16];
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
          objc_enumerationMutation(inlineAttachments);
        }

        v23 = *(*(&v43 + 1) + 8 * v22);
        identifier = [v23 identifier];
        uUIDString = [dCopy UUIDString];
        v26 = [identifier isEqualToString:uUIDString];

        if (v26)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [inlineAttachments countByEnumeratingWithState:&v43 objects:v56 count:16];
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

      v14 = allKeyword;
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

      v14 = allKeyword;
    }

    v27 = MEMORY[0x1E69B7778];
    uUIDString2 = [dCopy UUIDString];
    note3 = [(ICDrawingHashtagsAndMentionsController *)self note];
    attachment2 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
    v13 = [v27 newMentionAttachmentWithIdentifier:uUIDString2 mentionText:v14 userRecordName:v42 note:note3 parentAttachment:attachment2];

    [v13 setMentionNotificationState:1];
LABEL_24:
    [v13 updateChangeCountWithReason:@"Confirmed mention"];
    v31 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:v13 userConfirmedMentionWithUUID:? participantIdentifier:?];
    }

    note4 = [v13 note];
    note5 = [v13 note];
    v55 = v13;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v35 = [note4 persistMentionActivityEventForObject:note5 mentionAttachments:v34];

    managedObjectContext = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
    [managedObjectContext ic_save];

    v37 = +[ICMentionNotificationController sharedController];
    [v37 sendPendingNotifications];

    v12 = v41;
    identifierCopy = v42;
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      uUIDString3 = [dCopy UUIDString];
      share = [(ICDrawingHashtagsAndMentionsController *)self share];
      *buf = 138413058;
      v48 = uUIDString3;
      v49 = 2112;
      v50 = share;
      v51 = 2112;
      v52 = 0;
      v53 = 2112;
      v54 = identifierCopy;
      _os_log_error_impl(&dword_1D4171000, v13, OS_LOG_TYPE_ERROR, "Unable to confirm mention (%@) for share (%@) participant (%@; identifier %@)", buf, 0x2Au);
    }

    v14 = v13;
  }
}

- (void)attachmentView:(id)view userDeletedMentionWithUUID:(id)d
{
  dCopy = d;
  v6 = MEMORY[0x1E69B7778];
  uUIDString = [dCopy UUIDString];
  managedObjectContext = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:uUIDString context:managedObjectContext];

  v10 = os_log_create("com.apple.notes", "PencilKit");
  managedObjectContext2 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedMentionWithUUID:];
    }

    [MEMORY[0x1E69B7778] deleteAttachment:v9];
    managedObjectContext2 = [v9 managedObjectContext];
    [managedObjectContext2 ic_save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedMentionWithUUID:];
    }
  }
}

- (id)allConfirmedHashtagsForAttachmentView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  visibleInlineAttachments = [attachment visibleInlineAttachments];

  v7 = [visibleInlineAttachments countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(visibleInlineAttachments);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isHashtagAttachment])
        {
          v12 = objc_alloc(MEMORY[0x1E696AFB0]);
          identifier = [v11 identifier];
          v14 = [v12 initWithUUIDString:identifier];

          [v4 ic_addNonNilObject:v14];
        }
      }

      v8 = [visibleInlineAttachments countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)attachmentView:(id)view userConfirmedHashtagWithUUID:(id)d displayText:(id)text
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  textCopy = text;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  inlineAttachments = [attachment inlineAttachments];

  v10 = [inlineAttachments countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(inlineAttachments);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      identifier = [v14 identifier];
      uUIDString = [dCopy UUIDString];
      v17 = [identifier isEqualToString:uUIDString];

      if (v17)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [inlineAttachments countByEnumeratingWithState:&v27 objects:v31 count:16];
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

    v18 = textCopy;
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

    v18 = textCopy;
  }

  v20 = MEMORY[0x1E69B7778];
  uUIDString2 = [dCopy UUIDString];
  note = [(ICDrawingHashtagsAndMentionsController *)self note];
  attachment2 = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  v19 = [v20 newHashtagAttachmentWithIdentifier:uUIDString2 hashtagText:v18 creatingHashtagIfNecessary:1 note:note parentAttachment:attachment2];

LABEL_16:
  [v19 updateChangeCountWithReason:@"Confirmed tag"];
  v24 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ICDrawingHashtagsAndMentionsController attachmentView:v19 userConfirmedHashtagWithUUID:? displayText:?];
  }

  managedObjectContext = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  [managedObjectContext ic_save];
}

- (void)attachmentView:(id)view userDeletedHashtagWithUUID:(id)d
{
  dCopy = d;
  v6 = MEMORY[0x1E69B7778];
  uUIDString = [dCopy UUIDString];
  managedObjectContext = [(ICDrawingHashtagsAndMentionsController *)self managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:uUIDString context:managedObjectContext];

  v10 = os_log_create("com.apple.notes", "PencilKit");
  managedObjectContext2 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingHashtagsAndMentionsController attachmentView:userDeletedHashtagWithUUID:];
    }

    [MEMORY[0x1E69B7778] deleteAttachment:v9];
    managedObjectContext2 = [v9 managedObjectContext];
    [managedObjectContext2 ic_save];
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
  attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  managedObjectContext = [attachment managedObjectContext];

  return managedObjectContext;
}

- (ICNote)note
{
  attachment = [(ICDrawingHashtagsAndMentionsController *)self attachment];
  note = [attachment note];

  return note;
}

- (CKShare)share
{
  note = [(ICDrawingHashtagsAndMentionsController *)self note];
  serverShareCheckingParent = [note serverShareCheckingParent];

  return serverShareCheckingParent;
}

- (NSArray)eligibleShareParticipants
{
  note = [(ICDrawingHashtagsAndMentionsController *)self note];
  serverShareCheckingParent = [note serverShareCheckingParent];
  ic_acceptedParticipants = [serverShareCheckingParent ic_acceptedParticipants];
  v5 = ic_acceptedParticipants;
  if (ic_acceptedParticipants)
  {
    v6 = ic_acceptedParticipants;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)fetchMentionTokensForParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
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
  v15 = participantsCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = participantsCopy;
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