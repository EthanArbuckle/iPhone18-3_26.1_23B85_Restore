@interface ICMentionsController(UI)
+ (uint64_t)hasMentionInTextStorage:()UI inRange:;
+ (uint64_t)rangeOfUnconfirmedMentionInTextStorage:()UI;
- (id)fetchContactNamesForParticipants:()UI;
- (uint64_t)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:;
- (void)applyUnconfirmedMentionToTextStorage:()UI participants:range:textView:mentionString:;
- (void)clearUnconfirmedMentionInTextStorage:()UI;
- (void)insertMentionWithText:()UI uuidString:parentAttachment:;
- (void)registerForContactsChangedNotification;
- (void)sendPendingNotificationsAfterDelay:()UI forNote:;
@end

@implementation ICMentionsController(UI)

- (void)registerForContactsChangedNotification
{
  v2 = [a1 contactsChangedObserverToken];

  if (!v2)
  {
    objc_initWeak(&location, a1);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = [MEMORY[0x1E695BAD8] ic_mentionableNamesCache];
    v5 = *MEMORY[0x1E69B79E0];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __66__ICMentionsController_UI__registerForContactsChangedNotification__block_invoke;
    v10 = &unk_1E846D5E8;
    objc_copyWeak(&v11, &location);
    v6 = [v3 addObserverForName:v5 object:v4 queue:0 usingBlock:&v7];
    [a1 setContactsChangedObserverToken:{v6, v7, v8, v9, v10}];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)fetchContactNamesForParticipants:()UI
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"-[ICMentionsController(UI) fetchContactNamesForParticipants:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 ic_mentionTokensFromContacts];
        [v4 ic_setNonNilObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (uint64_t)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a11;
  if ([a1 allowsMentions])
  {
    v20 = [a1 maxLengthOfStringForCheckingMention];
    v21 = v20 + 1;
    v22 = a4;
    v23 = a3;
    if (v20 + 1 > a4)
    {
      if (a3 >= v20 + 1 - a4)
      {
        v24 = v20 + 1 - a4;
      }

      else
      {
        v24 = a3;
      }

      v23 = a3 - v24;
      v25 = [v16 length] - (a3 - v24);
      if (v21 < v25)
      {
        v25 = v21;
      }

      if (v25 + v23 <= a3 + a4)
      {
        v22 = v25;
      }

      else
      {
        v22 = v24 + a4;
      }
    }

    v26 = [v16 hasNamedStyle:4 inRange:{a3, a4}];
    v81 = a1;
    if ((v26 & 1) != 0 || a4)
    {
      if ((v26 & 1) == 0)
      {
LABEL_14:
        v36 = [v18 selectedRange];
        v38 = [v81 checkForMentionsInString:v16 inRange:v23 selectionRange:v22 languageHasSpaces:{v36, v37, a10}];
        if (v38)
        {
          v78 = v19;
          v39 = os_log_create("com.apple.notes", "Mentions");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v84.location = a3;
            v84.length = a4;
            [ICMentionsController(UI) checkForMentionInEditedRange:v84 ofTextStorage:v38 note:? textView:? allowAutoExplicitMention:? isEndingEditing:? languageHasSpaces:? parentAttachment:?];
          }

          v41 = [v38 rangeOfMention];
          v42 = v40;
          v43 = a3 + a4;
          if (v41 + v40 == a3 + a4)
          {
            v44 = v40;
            v45 = objc_opt_class();
            v46 = [v16 string];
            v47 = v45;
            v42 = v44;
            if (([v47 range:v41 hasValidPostfixCharacterForString:{v44, v46}] & 1) != 0 || v43 == objc_msgSend(v16, "length"))
            {

              if ((a9 & 1) == 0)
              {
                if ([v38 isExplicitMention])
                {
                  v48 = os_log_create("com.apple.notes", "Mentions");
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v82.location = v41;
                    v82.length = v44;
                    [ICMentionsController(UI) checkForMentionInEditedRange:v82 ofTextStorage:? note:? textView:? allowAutoExplicitMention:? isEndingEditing:? languageHasSpaces:? parentAttachment:?];
                  }

LABEL_52:

                  [v38 matchingParticipants];
                  v58 = v57 = v42;
                  v59 = [v38 mentionString];
                  [v81 applyUnconfirmedMentionToTextStorage:v16 participants:v58 range:v41 textView:v57 mentionString:{v18, v59}];

                  v49 = 1;
                  v19 = v78;
                  goto LABEL_34;
                }

                if (([v38 isPartialMention] & 1) == 0)
                {
                  v48 = os_log_create("com.apple.notes", "Mentions");
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v85.location = v41;
                    v85.length = v44;
                    [ICMentionsController(UI) checkForMentionInEditedRange:v85 ofTextStorage:? note:? textView:? allowAutoExplicitMention:? isEndingEditing:? languageHasSpaces:? parentAttachment:?];
                  }

                  goto LABEL_52;
                }

LABEL_31:
                v49 = 0;
LABEL_32:
                v19 = v78;
                goto LABEL_33;
              }
            }

            else
            {
            }
          }

          v50 = [v38 rangeOfMention];
          if (v51 + v50 + 1 != v43 && !a9)
          {
            goto LABEL_31;
          }

          v53 = [v38 isExplicitMention];
          if (!a8)
          {
            v49 = 0;
            if (v53 && (a9 & 1) == 0)
            {
              v48 = os_log_create("com.apple.notes", "Mentions");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v83.location = v41;
                v83.length = v42;
                [ICMentionsController(UI) checkForMentionInEditedRange:v83 ofTextStorage:? note:? textView:? allowAutoExplicitMention:? isEndingEditing:? languageHasSpaces:? parentAttachment:?];
              }

              goto LABEL_52;
            }

            goto LABEL_32;
          }

          if (!v53 || ([v38 isPartialMention] & 1) != 0)
          {
            goto LABEL_31;
          }

          v54 = v17;
          v55 = [v38 matchingParticipants];
          if ([v55 count] == 1)
          {
          }

          else
          {
            if (![v38 isAllMention])
            {
              v49 = 0;
LABEL_74:
              v19 = v78;

              v17 = v54;
              goto LABEL_33;
            }

            [v38 matchingParticipants];
            v61 = v60 = v42;
            v62 = [v61 count];

            v42 = v60;
            if (v62)
            {
              v49 = 0;
              v17 = v54;
              goto LABEL_32;
            }
          }

          v56 = os_log_create("com.apple.notes", "Mentions");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v86.location = v41;
            v86.length = v42;
            [ICMentionsController(UI) checkForMentionInEditedRange:v86 ofTextStorage:? note:? textView:? allowAutoExplicitMention:? isEndingEditing:? languageHasSpaces:? parentAttachment:?];
          }

          if ([v38 isAllMention])
          {
            v55 = [objc_opt_class() allUserRecordName];
          }

          else
          {
            [v38 matchingParticipants];
            v64 = v63 = v42;
            v65 = [v64 anyObject];
            v55 = [v65 ic_userRecordNameInNote:v54];

            v42 = v63;
          }

          if ([v38 isAllMention])
          {
            v66 = [objc_opt_class() allKeyword];
LABEL_68:
            v74 = [MEMORY[0x1E69B7778] createMentionAttachmentIfApplicableWithMentionText:v66 userRecordName:v55 note:v54 parentAttachment:v78];
            v75 = v74;
            if (v74)
            {
              [v74 setAnimateInsertion:1];
              [v75 setMentionNotificationState:1];
              v49 = objc_opt_respondsToSelector();
              if (v49)
              {
                [v81 insertMentionAttachment:v75 atRange:v41 viaAutoComplete:{v42, 0}];
              }

              [v54 save];
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_74;
          }

          v80 = v42;
          v67 = [v38 matchingParticipants];
          v68 = [v67 anyObject];

          v69 = [v38 mentionString];
          v70 = [v69 length];

          if (v70)
          {
            v71 = [v38 mentionString];
            v72 = [v71 ic_trailingTrimmedString];
            v73 = [v68 ic_participantNameMatchingString:v72 returnFullName:0];

            if (v73)
            {
              v66 = v73;
              v42 = v80;
              if ([v73 length])
              {
LABEL_67:

                goto LABEL_68;
              }

LABEL_66:
              v66 = [v68 ic_shortParticipantName];

              goto LABEL_67;
            }
          }

          else
          {
            v73 = 0;
          }

          v42 = v80;
          goto LABEL_66;
        }

LABEL_27:
        v49 = 0;
LABEL_33:
        [v81 clearUnconfirmedMentionInTextStorage:{v16, v76}];
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      objc_opt_class();
      [v18 typingAttributes];
      v27 = v77 = v23;
      [v27 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      v28 = v76 = v22;
      v29 = ICDynamicCast();
      v30 = v19;
      v31 = v18;
      v32 = v16;
      v33 = v17;
      v34 = [v29 style];

      v22 = v76;
      v23 = v77;
      v35 = v34 == 4;
      v17 = v33;
      v16 = v32;
      v18 = v31;
      v19 = v30;
      if (!v35)
      {
        goto LABEL_14;
      }
    }

    v38 = 0;
    goto LABEL_27;
  }

  v49 = 0;
LABEL_35:

  return v49 & 1;
}

+ (uint64_t)rangeOfUnconfirmedMentionInTextStorage:()UI
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1D449C2A9;
  v13 = xmmword_1D4433FC0;
  v4 = *MEMORY[0x1E69B7958];
  v5 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__ICMentionsController_UI__rangeOfUnconfirmedMentionInTextStorage___block_invoke;
  v8[3] = &unk_1E846A0D0;
  v8[4] = &v9;
  [v3 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{2, v8}];
  v6 = v10[4];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)clearUnconfirmedMentionInTextStorage:()UI
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 updateAutoCompletionView:0 range:0 textView:0 mentionString:{0, 0}];
  }

  v4 = [objc_opt_class() rangeOfUnconfirmedMentionInTextStorage:v6];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeAttribute:*MEMORY[0x1E69B7958] range:{v4, v5}];
  }
}

- (void)insertMentionWithText:()UI uuidString:parentAttachment:
{
  v8 = MEMORY[0x1E69B7778];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [a1 note];
  v13 = [v8 createMentionAttachmentIfApplicableWithMentionText:v11 userRecordName:v10 note:v12 parentAttachment:v9];

  if (v13)
  {
    [v13 setAnimateInsertion:1];
    [v13 setMentionNotificationState:1];
    if (objc_opt_respondsToSelector())
    {
      v14 = [a1 editedRange];
      [a1 insertMentionAttachment:v13 atRange:v14 viaAutoComplete:{v15, 1}];
    }
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICMentionsController(UI) insertMentionWithText:v16 uuidString:? parentAttachment:?];
    }
  }
}

- (void)sendPendingNotificationsAfterDelay:()UI forNote:
{
  v5 = [MEMORY[0x1E695DF00] now];
  if ([a1 allowsMentions])
  {
    v6 = dispatch_time(0, 1000000000 * a3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ICMentionsController_UI__sendPendingNotificationsAfterDelay_forNote___block_invoke;
    block[3] = &unk_1E8468BA0;
    v8 = v5;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }
}

+ (uint64_t)hasMentionInTextStorage:()UI inRange:
{
  v7 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__ICMentionsController_UI__hasMentionInTextStorage_inRange___block_invoke;
  v12[3] = &unk_1E846A120;
  v12[4] = &v13;
  [v7 enumerateAttributesInRange:a4 options:a5 usingBlock:{0x100000, v12}];
  if (v14[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = *MEMORY[0x1E69DB5F8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__ICMentionsController_UI__hasMentionInTextStorage_inRange___block_invoke_2;
    v11[3] = &unk_1E846A0D0;
    v11[4] = &v13;
    [v7 enumerateAttribute:v9 inRange:a4 options:a5 usingBlock:{0, v11}];
    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);

  return v8 & 1;
}

- (void)applyUnconfirmedMentionToTextStorage:()UI participants:range:textView:mentionString:
{
  v19 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = *MEMORY[0x1E69B7958];
  if (v14)
  {
    [v19 addAttribute:*MEMORY[0x1E69B7958] value:v14 range:{a5, a6}];
  }

  else
  {
    v18 = [MEMORY[0x1E695DFD8] set];
    [v19 addAttribute:v17 value:v18 range:{a5, a6}];
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 updateAutoCompletionView:v14 range:a5 textView:a6 mentionString:{v15, v16}];
  }
}

- (void)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:.cold.1(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  v9 = [a2 debugDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:.cold.2(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:.cold.3(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:.cold.4(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkForMentionInEditedRange:()UI ofTextStorage:note:textView:allowAutoExplicitMention:isEndingEditing:languageHasSpaces:parentAttachment:.cold.5(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end