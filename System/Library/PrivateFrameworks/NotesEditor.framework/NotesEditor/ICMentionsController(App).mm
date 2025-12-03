@interface ICMentionsController(App)
- (id)moveCurrentUserToLast:()App;
- (void)insertMention:()App toTextView:atRange:viaAutoComplete:;
- (void)insertMentionAttachment:()App atRange:viaAutoComplete:;
- (void)updateAutoCompletionView:()App range:textView:mentionString:;
@end

@implementation ICMentionsController(App)

- (void)updateAutoCompletionView:()App range:textView:mentionString:
{
  v17 = a6;
  v12 = a7;
  v13 = a3;
  [self setEditedRange:{a4, a5}];
  objc_opt_class();
  v14 = ICDynamicCast();
  [self setTableTextView:v14];

  v15 = [self moveCurrentUserToLast:v13];

  if (([v17 ic_isInSecureWindow] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self mentionsTableKeyboardDelegate];
    }

    else
    {
      [self mentionsKeyboardDelegate];
    }
    v16 = ;
    [v16 updateKeyboardSuggestions:v15 mentionsController:self mentionString:v12];
  }
}

- (void)insertMentionAttachment:()App atRange:viaAutoComplete:
{
  v10 = a3;
  attachmentInsertionController = [self attachmentInsertionController];

  if (attachmentInsertionController)
  {
    tableTextView = [self tableTextView];
    if (tableTextView)
    {
      [self tableTextView];
    }

    else
    {
      [self textView];
    }
    v14 = ;
    [self insertMention:v10 toTextView:v14 atRange:a4 viaAutoComplete:{a5, a6}];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICHashtagController(App) insertHashtagWithText:v13 viaAutoComplete:? delimiter:? parentAttachment:?];
    }
  }
}

- (void)insertMention:()App toTextView:atRange:viaAutoComplete:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  selectedRange = [v13 selectedRange];
  objc_opt_class();
  textStorage = [v13 textStorage];
  v16 = ICDynamicCast();

  if (a5 <= [v16 length])
  {
    attachmentInsertionController = [self attachmentInsertionController];
    v19 = [attachmentInsertionController addInlineAttachment:v12 atTextRange:a5 textView:{a6, v13}];

    if (a7)
    {
      objc_opt_class();
      v20 = ICCheckedDynamicCast();
      v21 = v20;
      if (v20 && ![v20 languageHasSpaces])
      {
        v23 = 1;
      }

      else
      {
        textStorage2 = [v13 textStorage];
        [textStorage2 replaceCharactersInRange:a5 + 1 withString:{0, @" "}];

        v23 = 2;
      }

      [v13 setSelectedRange:{a5 + v23, 0}];
    }

    else if (selectedRange > a5)
    {
      v24 = selectedRange - a6;
      if (selectedRange < a6)
      {
        v24 = -1;
      }

      [v13 setSelectedRange:{v24 + 1, 0}];
    }

    [self setTableTextView:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v25 = ICDynamicCast();
      cellDelegate = [v25 cellDelegate];
      [cellDelegate setNeedsSaveAfterUserEdit];
    }

    note = [v12 note];
    note2 = [v12 note];
    v37[0] = v12;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v30 = [note persistMentionActivityEventForObject:note2 mentionAttachments:v29];

    analyticsDelegate = [self analyticsDelegate];

    if (analyticsDelegate)
    {
      analyticsDelegate2 = [self analyticsDelegate];
      note3 = [v12 note];
      identifier = [v12 identifier];
      tokenContentIdentifier = [v12 tokenContentIdentifier];
      [analyticsDelegate2 mentionInsertedInNote:note3 mentionID:identifier participantID:tokenContentIdentifier viaAutoComplete:a7];
    }

    note4 = [v12 note];
    [self sendPendingNotificationsAfterDelay:180 forNote:note4];

    [v12 accessibilityAnnounceCreationWithVoiceOver];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v38.location = a5;
      v38.length = a6;
      [ICHashtagController(App) insertHashtagAttachment:v38 toTextView:v16 range:v17 viaAutoComplete:? delimiter:?];
    }
  }
}

- (id)moveCurrentUserToLast:()App
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isCurrentUser])
        {
          v12 = v11;

          v8 = v12;
        }

        else
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);

    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  v13 = [v4 copy];

  return v13;
}

@end