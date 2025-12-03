@interface ICInlineAttachment(UI)
+ (BOOL)canInsertInlineAttachmentType:()UI intoNote:parentAttachment:;
+ (id)createHashtagAttachmentIfApplicableWithHashtagText:()UI creatingHashtagIfNecessary:note:parentAttachment:;
+ (id)createHashtagAttachmentIfApplicableWithHashtagText:()UI forHashtag:note:parentAttachment:;
+ (id)createInlineAttachmentIfApplicableWithTypeUTI:()UI altText:tokenContentIdentifier:note:parentAttachment:;
+ (id)createMentionAttachmentIfApplicableWithMentionText:()UI userRecordName:note:parentAttachment:;
+ (uint64_t)newLinkAttachmentToNote:()UI fromNote:parentAttachment:;
- (id)uiModel;
- (void)_announceAttachmentChangeWithString:()UI;
- (void)accessibilityAnnounceCreationWithVoiceOver;
- (void)accessibilityAnnounceDeletionWithVoiceOver;
@end

@implementation ICInlineAttachment(UI)

- (id)uiModel
{
  attachmentType = [self attachmentType];
  if (attachmentType > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(*off_1E846BE38[attachmentType]) initWithAttachment:self];
  }

  return v3;
}

+ (id)createHashtagAttachmentIfApplicableWithHashtagText:()UI creatingHashtagIfNecessary:note:parentAttachment:
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([self canInsertInlineAttachmentType:1 intoNote:v11 parentAttachment:v12])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [self newHashtagAttachmentWithIdentifier:uUIDString hashtagText:v10 creatingHashtagIfNecessary:a4 note:v11 parentAttachment:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createHashtagAttachmentIfApplicableWithHashtagText:()UI forHashtag:note:parentAttachment:
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([self canInsertInlineAttachmentType:1 intoNote:v10 parentAttachment:v11])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [self newHashtagAttachmentWithIdentifier:uUIDString forHashtag:v9 note:v10 parentAttachment:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)createMentionAttachmentIfApplicableWithMentionText:()UI userRecordName:note:parentAttachment:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([self canInsertInlineAttachmentType:2 intoNote:v12 parentAttachment:v13])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [self newMentionAttachmentWithIdentifier:uUIDString mentionText:v10 userRecordName:v11 note:v12 parentAttachment:v13];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (uint64_t)newLinkAttachmentToNote:()UI fromNote:parentAttachment:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([self canInsertInlineAttachmentType:3 intoNote:v9 parentAttachment:v10])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [self newLinkAttachmentWithIdentifier:uUIDString toNote:v8 fromNote:v9 parentAttachment:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createInlineAttachmentIfApplicableWithTypeUTI:()UI altText:tokenContentIdentifier:note:parentAttachment:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([self canInsertInlineAttachmentType:0 intoNote:v15 parentAttachment:v16])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v19 = [self newAttachmentWithIdentifier:uUIDString typeUTI:v12 altText:v13 tokenContentIdentifier:v14 note:v15 parentAttachment:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)canInsertInlineAttachmentType:()UI intoNote:parentAttachment:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (a3 > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E846BE68[a3];
  }

  v10 = v7 != 0;
  if (!v7)
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_INFO, "Rejected an attempt to insert %@ into a nil note", &v18, 0xCu);
    }
  }

  if ([v7 needsInitialFetchFromCloud])
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [v7 shortLoggingDescription];
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = shortLoggingDescription;
      _os_log_impl(&dword_1D4171000, v12, OS_LOG_TYPE_INFO, "Rejected an attempt to insert %@ into a placeholder note: %@", &v18, 0x16u);
    }

    v10 = 0;
  }

  if (v8 && [v8 needsInitialFetchFromCloud])
  {
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription2 = [v8 shortLoggingDescription];
      shortLoggingDescription3 = [v7 shortLoggingDescription];
      v18 = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = shortLoggingDescription2;
      v22 = 2112;
      v23 = shortLoggingDescription3;
      _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_INFO, "Rejected an attempt to insert %@ into a placeholder attachment %@ in note: %@", &v18, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)accessibilityAnnounceCreationWithVoiceOver
{
  if (![self _checkIsVoiceOverRunning])
  {
    return;
  }

  if ([self isHashtagAttachment])
  {
    v2 = @"Inserted %@";
    goto LABEL_7;
  }

  if ([self isMentionAttachment])
  {
    v2 = @"Inserted mention %@";
LABEL_7:
    v3 = __ICLocalizedFrameworkString_impl(v2, v2, 0, 1);
    if (v3)
    {
      v8 = v3;
      displayText = [self displayText];

      if (displayText)
      {
        v5 = MEMORY[0x1E696AEC0];
        displayText2 = [self displayText];
        v7 = [v5 localizedStringWithFormat:v8, displayText2];

        [self _announceAttachmentChangeWithString:v7];
      }

      v3 = v8;
    }

    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
}

- (void)accessibilityAnnounceDeletionWithVoiceOver
{
  if (![self _checkIsVoiceOverRunning])
  {
    return;
  }

  if ([self isHashtagAttachment])
  {
    v2 = @"Deleted %@";
    goto LABEL_7;
  }

  if ([self isMentionAttachment])
  {
    v2 = @"Deleted mention %@";
LABEL_7:
    v3 = __ICLocalizedFrameworkString_impl(v2, v2, 0, 1);
    if (v3)
    {
      v8 = v3;
      displayText = [self displayText];

      if (displayText)
      {
        v5 = MEMORY[0x1E696AEC0];
        displayText2 = [self displayText];
        v7 = [v5 localizedStringWithFormat:v8, displayText2];

        [self _announceAttachmentChangeWithString:v7];
      }

      v3 = v8;
    }

    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
}

- (void)_announceAttachmentChangeWithString:()UI
{
  v4 = a3;
  v3 = v4;
  dispatchMainAfterDelay();
}

@end