@interface CKCollaborationNoticeSuggestion
+ (id)suggestionWithNotice:(id)notice delegate:(id)delegate wantsInlineReplyStyle:(BOOL)style;
- (CKCollaborationNoticeSuggestion)initWithNotice:(id)notice wantsInlineReplyStyle:(BOOL)style;
- (CKCollaborationNoticeSuggestionDelegate)delegate;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)aggregateUTTypeForItems:(id)items withAggregateNoticeType:(int64_t)type;
- (id)collaborationNoticeSuggestionsForItems:(id)items;
- (id)collaborationTitleForUTType:(id)type numberOfFiles:(int64_t)files;
- (id)suggestionBackgroundVisualEffectView;
- (id)suggestionCategoryId;
- (id)suggestionCategoryImage;
- (id)suggestionCategoryLocalizedCountOfItems:(id)items;
- (id)suggestionCategoryTitle;
- (id)suggestionCategoryTitleForItems:(id)items;
- (id)suggestionCategoryTitleWithSenderName:(id)name documentTitle:(id)title noticeType:(int64_t)type;
- (id)suggestionCategoryTitleWithSenderName:(id)name numberOfFiles:(int64_t)files numberOfItems:(int64_t)items aggregateContentType:(id)type aggregateNoticeType:(int64_t)noticeType;
- (id)suggestionDismissAction;
- (id)suggestionDivider;
- (id)suggestionHandlesForItems:(id)items;
- (id)suggestionImageSGView;
- (id)suggestionListTitle;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (id)suggestionURLsForItems:(id)items;
- (int64_t)aggregateCollaborationNoticeTypeForItems:(id)items;
- (void)suggestionImageSGView;
@end

@implementation CKCollaborationNoticeSuggestion

+ (id)suggestionWithNotice:(id)notice delegate:(id)delegate wantsInlineReplyStyle:(BOOL)style
{
  styleCopy = style;
  delegateCopy = delegate;
  noticeCopy = notice;
  v9 = [[CKCollaborationNoticeSuggestion alloc] initWithNotice:noticeCopy wantsInlineReplyStyle:styleCopy];

  [(CKCollaborationNoticeSuggestion *)v9 setDelegate:delegateCopy];

  return v9;
}

- (CKCollaborationNoticeSuggestion)initWithNotice:(id)notice wantsInlineReplyStyle:(BOOL)style
{
  noticeCopy = notice;
  v14.receiver = self;
  v14.super_class = CKCollaborationNoticeSuggestion;
  v8 = [(CKCollaborationNoticeSuggestion *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notice, notice);
    senderHandle = [noticeCopy senderHandle];
    v11 = [CKEntity entityForAddress:senderHandle];
    senderEntity = v9->_senderEntity;
    v9->_senderEntity = v11;

    v9->_wantsInlineReplyStyle = style;
  }

  return v9;
}

- (id)suggestionListTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UPDATES" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)suggestionPrimaryAction
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  notice = [(CKCollaborationNoticeSuggestion *)self notice];
  metadata = [notice metadata];
  type = [metadata type];

  if (type < 8)
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"SHOW" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v10 = __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_3;
LABEL_3:
    v9[2] = v10;
    v9[3] = &unk_1E72F7928;
    v9[4] = self;
    v9[5] = v3;
    v11 = _Block_copy(v9);

    goto LABEL_4;
  }

  if (type == 8)
  {
    v15 = CKFrameworkBundle();
    v8 = [v15 localizedStringForKey:@"ADD_TO_DOCUMENT_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v10 = __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_4;
    goto LABEL_3;
  }

  if (type == 9)
  {
    v14 = CKFrameworkBundle();
    v8 = [v14 localizedStringForKey:@"REMOVE_FROM_DOCUMENT_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v10 = __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_5;
    goto LABEL_3;
  }

  v11 = 0;
  v8 = 0;
LABEL_4:
  v12 = [MEMORY[0x1E6999348] actionWithTitle:v8 handler:v11];

  return v12;
}

void __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_2;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) suggestionDismissAction];
  [v1 execute];
}

uint64_t __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) notice];
  v3 = [v2 metadata];
  v4 = [v3 contentURL];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [*(a1 + 32) notice];
    v7 = [v6 metadata];
    v8 = [v7 contentURL];
    [v5 openURL:v8 withCompletionHandler:0];
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

uint64_t __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 addToCollaboration:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __58__CKCollaborationNoticeSuggestion_suggestionPrimaryAction__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeFromCollaboration:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)suggestionDismissAction
{
  delegate = [(CKCollaborationNoticeSuggestion *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = MEMORY[0x1E6999348];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"IGNORE" value:&stru_1F04268F8 table:@"ChatKit"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__CKCollaborationNoticeSuggestion_suggestionDismissAction__block_invoke;
    v10[3] = &unk_1E72F4D88;
    v10[4] = self;
    v8 = [v5 actionWithTitle:v7 handler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58__CKCollaborationNoticeSuggestion_suggestionDismissAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 collaborationNoticeSuggestionWillDismiss:*(a1 + 32)];
}

- (id)suggestionBackgroundVisualEffectView
{
  if (self->_wantsInlineReplyStyle)
  {
    v2 = objc_alloc(MEMORY[0x1E69DD298]);
    v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    replyTranscriptBlurBackgroundEffects = [theme replyTranscriptBlurBackgroundEffects];
    [v3 setBackgroundEffects:replyTranscriptBlurBackgroundEffects];

    v7 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v7 theme];
    replyTranscriptBlurBackgroundColor = [theme2 replyTranscriptBlurBackgroundColor];
    [v3 setBackgroundColor:replyTranscriptBlurBackgroundColor];

    [v3 _setGroupName:@"inlineReplyVisualEffectViewGroup"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)suggestionDivider
{
  if (self->_wantsInlineReplyStyle)
  {
    v2 = objc_alloc(MEMORY[0x1E6999330]);
    v3 = +[CKUIBehavior sharedBehaviors];
    theme = [v3 theme];
    entryFieldBorderColor = [theme entryFieldBorderColor];
    v6 = [v2 initWithPosition:3 color:entryFieldBorderColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)suggestionSubtitle
{
  notice = [(CKCollaborationNoticeSuggestion *)self notice];
  metadata = [notice metadata];
  type = [metadata type];

  if (type > 9)
  {
    v11 = 0;
  }

  else
  {
    notice2 = [(CKCollaborationNoticeSuggestion *)self notice];
    date = [notice2 date];

    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    if (v9 <= -3.0)
    {
      v11 = 0;
    }

    else
    {
      if (v9 / 60 % 60 <= 0)
      {
        v10 = CKFrameworkBundle();
        [v10 localizedStringForKey:@"TIME_STATUS_JUST_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E696AE78]);
        [v10 localizedStringForDate:date relativeToDate:date2];
      }
      v11 = ;
    }
  }

  return v11;
}

- (id)suggestionImageSGView
{
  v23[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  notice = [(CKCollaborationNoticeSuggestion *)self notice];
  senderHandle = [notice senderHandle];
  v6 = [MEMORY[0x1E695D188] descriptorForRequiredKeysIncludingImage:1];
  v23[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v8 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleID:senderHandle withKeys:v7];

  v9 = objc_alloc_init(MEMORY[0x1E695D0F0]);
  if (v8)
  {
    v22 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v9 setContacts:v10];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CKCollaborationNoticeSuggestion *)self suggestionImageSGView];
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E695D0E8]);
  [v11 setPosition:2];
  [v11 setCropStyle:1];
  [v9 setBadgeStyleSettings:v11];
  notice2 = [(CKCollaborationNoticeSuggestion *)self notice];
  metadata = [notice2 metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  if (bundleIdentifier)
  {
    v15 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:bundleIdentifier];
    v16 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    v17 = [v15 prepareImageForDescriptor:v16];
    cGImage = [v17 CGImage];

    v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage];
    [v9 setBadgeImage:v19];
  }

  view = [v9 view];
  [view setBounds:{0.0, 0.0, 32.0, 32.0}];

  return view;
}

- (id)suggestionTitle
{
  senderEntity = [(CKCollaborationNoticeSuggestion *)self senderEntity];
  abbreviatedDisplayName = [senderEntity abbreviatedDisplayName];

  notice = [(CKCollaborationNoticeSuggestion *)self notice];
  metadata = [notice metadata];
  contentTitle = [metadata contentTitle];

  notice2 = [(CKCollaborationNoticeSuggestion *)self notice];
  metadata2 = [notice2 metadata];
  type = [metadata2 type];

  v11 = [(CKCollaborationNoticeSuggestion *)self suggestionCategoryTitleWithSenderName:abbreviatedDisplayName documentTitle:contentTitle noticeType:type];

  return v11;
}

- (id)suggestionCategoryId
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)suggestionCategoryImage
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAB8]);

  return v2;
}

- (id)suggestionCategoryLocalizedCountOfItems:(id)items
{
  v3 = MEMORY[0x1E696AEC0];
  itemsCopy = items;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"N_COLLABORATIONS" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [itemsCopy count];

  v8 = [v3 localizedStringWithFormat:v6, v7];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v11 = @"\u200F";
  }

  else
  {
    v11 = @"\u200E";
  }

  v12 = [(__CFString *)v11 stringByAppendingString:v8];

  return v12;
}

- (id)suggestionCategoryTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"COLLABORATIONS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)suggestionCategoryTitleForItems:(id)items
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [(CKCollaborationNoticeSuggestion *)self collaborationNoticeSuggestionsForItems:?];
  v5 = [(CKCollaborationNoticeSuggestion *)self suggestionHandlesForItems:v4];
  v6 = [(CKCollaborationNoticeSuggestion *)self suggestionURLsForItems:v4];
  v7 = [(CKCollaborationNoticeSuggestion *)self aggregateCollaborationNoticeTypeForItems:v4];
  v8 = [(CKCollaborationNoticeSuggestion *)self aggregateUTTypeForItems:v4 withAggregateNoticeType:v7];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "aggregateNoticeType: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "aggregateContentType: %@", buf, 0xCu);
    }
  }

  v12 = [v5 count];
  v13 = [v6 count];
  v14 = v13;
  if (v12 == 1)
  {
    if (v13 == 1)
    {
      firstObject = [v4 firstObject];
      notice = [firstObject notice];

      metadata = [notice metadata];
      contentTitle = [metadata contentTitle];

      senderEntity = [(CKCollaborationNoticeSuggestion *)self senderEntity];
      abbreviatedDisplayName = [senderEntity abbreviatedDisplayName];
      v21 = [(CKCollaborationNoticeSuggestion *)self suggestionCategoryTitleWithSenderName:abbreviatedDisplayName documentTitle:contentTitle noticeType:v7];

      goto LABEL_15;
    }

    notice = [(CKCollaborationNoticeSuggestion *)self senderEntity];
    contentTitle = [notice abbreviatedDisplayName];
    v24 = -[CKCollaborationNoticeSuggestion suggestionCategoryTitleWithSenderName:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:](self, "suggestionCategoryTitleWithSenderName:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:", contentTitle, v14, [v4 count], v8, v7);
  }

  else
  {
    firstObject2 = [v4 firstObject];
    notice = [firstObject2 notice];

    metadata2 = [notice metadata];
    contentTitle = [metadata2 contentTitle];

    v24 = [MEMORY[0x1E696AEC0] ck_suggestionCategoryTitleWithNumberOfSenders:v12 documentTitle:contentTitle numberOfFiles:v14 numberOfItems:objc_msgSend(v4 aggregateContentType:"count") aggregateNoticeType:{v8, v7}];
  }

  v21 = v24;
LABEL_15:

  return v21;
}

- (id)collaborationNoticeSuggestionsForItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)suggestionHandlesForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        notice = [*(*(&v13 + 1) + 8 * i) notice];
        senderHandle = [notice senderHandle];
        [v4 addObject:senderHandle];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)suggestionURLsForItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        notice = [*(*(&v14 + 1) + 8 * i) notice];
        metadata = [notice metadata];
        contentURL = [metadata contentURL];
        [v4 addObject:contentURL];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)aggregateUTTypeForItems:(id)items withAggregateNoticeType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  itemsCopy = items;
  v6 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = *MEMORY[0x1E6982D50];
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(itemsCopy);
      }

      notice = [*(*(&v17 + 1) + 8 * v11) notice];
      metadata = [notice metadata];
      contentType = [metadata contentType];

      if (v8)
      {
        if (contentType != v8)
        {
          v15 = v10;

          v8 = v15;
        }
      }

      else
      {
        v8 = contentType;
      }

      if (!type && v8 == v10)
      {
        break;
      }

      if (v7 == ++v11)
      {
        v7 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)aggregateCollaborationNoticeTypeForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = -1;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        notice = [*(*(&v13 + 1) + 8 * i) notice];
        metadata = [notice metadata];
        type = [metadata type];

        if (v7 == -1)
        {
          v7 = type;
          if (!type)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (type != v7)
          {
            v7 = 0;
            goto LABEL_16;
          }

          if (!v7)
          {
            goto LABEL_16;
          }
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = -1;
  }

LABEL_16:

  return v7;
}

- (id)suggestionCategoryTitleWithSenderName:(id)name documentTitle:(id)title noticeType:(int64_t)type
{
  nameCopy = name;
  titleCopy = title;
  v9 = titleCopy;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type != 7)
      {
        if (type == 8)
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = CKFrameworkBundle();
          v12 = v11;
          v13 = @"ADD_USER_TO_DOCUMENT_BANNER_TITLE";
          goto LABEL_28;
        }

        if (type == 9)
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = CKFrameworkBundle();
          v12 = v11;
          v13 = @"REMOVE_USER_FROM_DOCUMENT_BANNER_TITLE";
LABEL_28:
          v22 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
          [v10 stringWithFormat:v22, nameCopy, v9];
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      v19 = [titleCopy length];
      v10 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      if (v19)
      {
        v13 = @"%@_MOVED_%@";
        goto LABEL_27;
      }

      v15 = @"%@_MOVED_A_FILE";
LABEL_35:
      v14 = v12;
      goto LABEL_36;
    }

    if (type == 5)
    {
      v20 = [titleCopy length];
      v10 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      if (v20)
      {
        v13 = @"%@_DELETED_%@";
        goto LABEL_27;
      }

      v15 = @"%@_DELETED_A_FILE";
      goto LABEL_35;
    }

    v17 = [titleCopy length];
    v10 = MEMORY[0x1E696AEC0];
    v12 = CKFrameworkBundle();
    if (!v17)
    {
      v15 = @"%@_RENAMED_A_FILE";
      goto LABEL_35;
    }

    v13 = @"%@_RENAMED_%@";
LABEL_27:
    v11 = v12;
    goto LABEL_28;
  }

  if (type > 2)
  {
    if (type != 3)
    {
      v16 = [titleCopy length];
      v10 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      if (!v16)
      {
        v15 = @"%@_CREATED_A_FILE";
        goto LABEL_35;
      }

      v13 = @"%@_CREATED_%@";
      goto LABEL_27;
    }

    v10 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v12 = v14;
    v15 = @"%@_MENTIONED_YOU";
  }

  else
  {
    if (type == 1)
    {
      v18 = [titleCopy length];
      v10 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      if (!v18)
      {
        v15 = @"%@_MADE_EDITS_TO_FILE";
        goto LABEL_35;
      }

      v13 = @"%@_MADE_EDITS_TO_%@";
      goto LABEL_27;
    }

    if (type != 2)
    {
LABEL_25:
      v21 = [titleCopy length];
      v10 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      if (v21)
      {
        v13 = @"%@_COLLABORATION_UPDATES_TO_%@";
        goto LABEL_27;
      }

      v15 = @"%@_COLLABORATION_UPDATES_TO_FILE";
      goto LABEL_35;
    }

    v10 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v12 = v14;
    v15 = @"%@_LEFT_COMMENTS";
  }

LABEL_36:
  v22 = [v14 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
  [v10 stringWithFormat:v22, nameCopy, v29];
  v23 = LABEL_37:;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v26 = @"\u200F";
  }

  else
  {
    v26 = @"\u200E";
  }

  v27 = [(__CFString *)v26 stringByAppendingString:v23];

  return v27;
}

- (id)suggestionCategoryTitleWithSenderName:(id)name numberOfFiles:(int64_t)files numberOfItems:(int64_t)items aggregateContentType:(id)type aggregateNoticeType:(int64_t)noticeType
{
  nameCopy = name;
  v13 = [(CKCollaborationNoticeSuggestion *)self collaborationTitleForUTType:type numberOfFiles:files];
  v14 = MEMORY[0x1E696AEC0];
  v15 = CKFrameworkBundle();
  v16 = v15;
  if (noticeType <= 4)
  {
    if (noticeType > 2)
    {
      if (noticeType != 3)
      {
        v17 = @"CREATED_N_COLLABORATION";
        goto LABEL_21;
      }

      v18 = @"%@_MENTIONED_YOU";
    }

    else
    {
      if (noticeType == 1)
      {
        v17 = @"MADE_EDITS_TO_N_COLLABORATION";
        goto LABEL_21;
      }

      if (noticeType != 2)
      {
        goto LABEL_29;
      }

      v18 = @"%@_LEFT_COMMENTS";
    }

    v19 = [v15 localizedStringForKey:v18 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_22:
    items = [v14 stringWithFormat:v19, nameCopy, v27];
    goto LABEL_23;
  }

  if (noticeType <= 6)
  {
    if (noticeType == 5)
    {
      v17 = @"DELETED_N_COLLABORATION";
    }

    else
    {
      v17 = @"RENAMED_N_COLLABORATION";
    }

    goto LABEL_21;
  }

  switch(noticeType)
  {
    case 7:
      v17 = @"MOVED_N_COLLABORATION";
      goto LABEL_21;
    case 8:
      v17 = @"ADD_USER_TO_N_DOCUMENT_BANNER_TITLE";
      goto LABEL_21;
    case 9:
      v17 = @"REMOVE_USER_FROM_N_DOCUMENT_BANNER_TITLE";
LABEL_21:
      v19 = [v15 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
      v27 = v13;
      goto LABEL_22;
  }

LABEL_29:
  v19 = [v15 localizedStringForKey:@"N_COLLABORATION_UPDATES" value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  items = [v14 localizedStringWithFormat:v19, items];
LABEL_23:
  v21 = items;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v24 = @"\u200F";
  }

  else
  {
    v24 = @"\u200E";
  }

  v25 = [(__CFString *)v24 stringByAppendingString:v21];

  return v25;
}

- (id)collaborationTitleForUTType:(id)type numberOfFiles:(int64_t)files
{
  typeCopy = type;
  v6 = typeCopy;
  if (*MEMORY[0x1E6982FE8] == typeCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = v9;
    v11 = @"SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == typeCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = v9;
    v11 = @"PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == typeCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = v9;
    v11 = @"DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == typeCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = v9;
    v11 = @"COLLABORATIONS";
  }

  else
  {
    v7 = *MEMORY[0x1E6982DC8];
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = v9;
    if (v7 == v6)
    {
      v11 = @"FOLDERS";
    }

    else
    {
      v11 = @"COLLABORATIONS";
    }
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
  files = [v8 localizedStringWithFormat:v12, files];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v16 = @"\u200F";
  }

  else
  {
    v16 = @"\u200E";
  }

  v17 = [(__CFString *)v16 stringByAppendingString:files];

  return v17;
}

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->suggestionDelegate);

  return WeakRetained;
}

- (CKCollaborationNoticeSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)suggestionImageSGView
{
  v7 = *MEMORY[0x1E69E9840];
  notice = [self notice];
  senderHandle = [notice senderHandle];
  v5 = 138412290;
  v6 = senderHandle;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch CNContact for senderHandle: %@", &v5, 0xCu);
}

@end