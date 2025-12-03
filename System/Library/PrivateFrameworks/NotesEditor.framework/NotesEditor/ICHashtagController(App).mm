@interface ICHashtagController(App)
+ (uint64_t)rangeOfUnconfirmedHashtagInTextStorage:()App;
+ (void)addUnconfirmedAttributeToTextStorage:()App atRange:;
- (__CFString)currentUnconfirmedHashtagString:()App textStorage:;
- (uint64_t)isEmoji:()App;
- (uint64_t)isExistingHashtag:()App hashtagSuggestionsArray:;
- (uint64_t)isValidElement:()App;
- (uint64_t)isValidPostfixCharacter:()App;
- (uint64_t)isValidPostfixString:()App;
- (uint64_t)range:()App hasValidPostfixCharacterForString:;
- (unint64_t)rangeToCheckForHashtagCreation:()App;
- (void)_checkForHashtagInEditedRange:()App ofTextStorage:note:textView:allowAutoExplicitHashtag:isEndingEditing:languageHasSpaces:parentAttachment:;
- (void)clearUnconfirmedHashtagInTextStorage:()App;
- (void)createNewHashtagIfNecessary:()App textStorage:ignoreDelimiter:parentAttachment:;
- (void)dismissAutoCompletionView;
- (void)insertHashtagAttachment:()App toTextView:range:viaAutoComplete:delimiter:;
- (void)insertHashtagWithText:()App viaAutoComplete:delimiter:parentAttachment:;
- (void)updateAutoCompletionView:()App range:textView:ofTextStorage:;
- (void)updatePredictiveBar:()App;
- (void)updateUIWhenAutoConversionOff:()App textStorage:;
@end

@implementation ICHashtagController(App)

- (void)_checkForHashtagInEditedRange:()App ofTextStorage:note:textView:allowAutoExplicitHashtag:isEndingEditing:languageHasSpaces:parentAttachment:
{
  v16 = a9;
  v67 = a5;
  v17 = a7;
  v18 = a11;
  if ([self allowsHashtag])
  {
    v19 = [v67 hasNamedStyle:4 inRange:{a3, a4}];
    if ((v19 & 1) != 0 || a4)
    {
      if (!v19)
      {
LABEL_5:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v27 = ICDynamicCast();
          [self setTableTextView:v27];
        }

        else
        {
          [self setTableTextView:0];
        }

        v28 = [self maxLengthOfStringForCheckingHashtag] + 1;
        v29 = a4;
        v30 = a3;
        v31 = v28 - a4;
        if (v28 > a4)
        {
          v29 = a4;
          v30 = a3;
          if ((v16 & 1) == 0)
          {
            v32 = a3 >= v31;
            v33 = a3 - v31;
            if (v32)
            {
              v30 = v33;
            }

            else
            {
              v30 = 0;
            }

            v34 = [v67 length];
            if (v28 >= v34 - v30)
            {
              v29 = v34 - v30;
            }

            else
            {
              v29 = v28;
            }
          }
        }

        selectedRange = [v17 selectedRange];
        v37 = [self checkForHashtagInString:v67 inRange:v30 selectionRange:v29 languageHasSpaces:{selectedRange, v36, a10}];
        v38 = v37;
        if (v37 && ([v37 matchingHashtagSuggestions], v39 = objc_claimAutoreleasedReturnValue(), v39, v39) && (v16 & 1) == 0)
        {
          v40 = a8;
          rangeOfHashtag = [v38 rangeOfHashtag];
          v43 = v42;
          if ([v67 containsAttachmentsInRange:{rangeOfHashtag, v42}])
          {
            [self clearUnconfirmedHashtagInTextStorage:v67];
LABEL_30:

            goto LABEL_31;
          }

          v66 = v18;
          if (rangeOfHashtag + v43 == a3 + a4)
          {
            string = [v67 string];
            if ([self range:rangeOfHashtag hasValidPostfixCharacterForString:{v43, string}])
            {

LABEL_38:
              [objc_opt_class() addUnconfirmedAttributeToTextStorage:v67 atRange:{rangeOfHashtag, v43}];
              matchingHashtagSuggestions = [v38 matchingHashtagSuggestions];
              allObjects = [matchingHashtagSuggestions allObjects];
              v53 = [allObjects mutableCopy];

              shouldAutoConvertToTag = [MEMORY[0x277D35EE8] shouldAutoConvertToTag];
              v55 = v67;
              if ((shouldAutoConvertToTag & 1) == 0)
              {
                string2 = [v67 string];
                v57 = [string2 substringWithRange:{a3, a4}];
                v58 = [self currentUnconfirmedHashtagString:v57 textStorage:v67];

                if (([self isExistingHashtag:v58 hashtagSuggestionsArray:v53] & 1) == 0)
                {
                  v59 = objc_alloc_init(MEMORY[0x277D35EF0]);
                  [v59 setDisplayText:v58];
                  [v53 addObject:v59];
                }

                v55 = v67;
              }

              [self updateAutoCompletionView:v53 range:rangeOfHashtag textView:v43 ofTextStorage:{v17, v55}];

              v18 = v66;
              goto LABEL_30;
            }

            v64 = [v67 length];

            if (rangeOfHashtag + v43 == v64)
            {
              goto LABEL_38;
            }
          }

          if (a3)
          {
            v60 = [v67 attribute:*MEMORY[0x277D36010] atIndex:a3 - 1 effectiveRange:0];
            if (v60)
            {
              v65 = objc_opt_class();
              shouldAutoConvertToTag2 = [MEMORY[0x277D35EE8] shouldAutoConvertToTag];
              if (shouldAutoConvertToTag2)
              {
                v62 = rangeOfHashtag;
              }

              else
              {
                v62 = a3;
              }

              if (shouldAutoConvertToTag2)
              {
                v63 = v43;
              }

              else
              {
                v63 = a4;
              }

              [v65 addUnconfirmedAttributeToTextStorage:v67 atRange:{v62, v63}];
            }
          }

          if (!v40)
          {
            goto LABEL_30;
          }

          selfCopy2 = self;
          v46 = a3;
          v47 = a4;
          v48 = v67;
          v49 = 0;
        }

        else
        {
          if (a3)
          {
            v44 = [v67 attribute:*MEMORY[0x277D36010] atIndex:a3 - 1 effectiveRange:0];
            if (v44)
            {
              [objc_opt_class() addUnconfirmedAttributeToTextStorage:v67 atRange:{a3, a4}];
            }
          }

          if (!a8)
          {
            goto LABEL_30;
          }

          selfCopy2 = self;
          v46 = a3;
          v47 = a4;
          v48 = v67;
          v49 = v16;
        }

        [selfCopy2 createNewHashtagIfNecessary:v46 textStorage:v47 ignoreDelimiter:v48 parentAttachment:{v49, v18}];
        goto LABEL_30;
      }
    }

    else
    {
      objc_opt_class();
      typingAttributes = [v17 typingAttributes];
      [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
      v21 = v17;
      v22 = a8;
      v24 = v23 = v18;
      v25 = ICDynamicCast();
      style = [v25 style];

      v18 = v23;
      a8 = v22;
      v17 = v21;
      v16 = a9;
      a4 = 0;

      if (style != 4)
      {
        goto LABEL_5;
      }
    }

    [self clearUnconfirmedHashtagInTextStorage:v67];
  }

LABEL_31:
}

- (void)clearUnconfirmedHashtagInTextStorage:()App
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self updateAutoCompletionView:0 range:0 textView:0 ofTextStorage:{0, v6}];
  }

  v4 = [objc_opt_class() rangeOfUnconfirmedHashtagInTextStorage:v6];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeAttribute:*MEMORY[0x277D36010] range:{v4, v5}];
  }
}

- (void)updateUIWhenAutoConversionOff:()App textStorage:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() rangeOfUnconfirmedHashtagInTextStorage:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    if ([v6 length] && (!objc_msgSend(self, "isValidElement:", objc_msgSend(v6, "characterAtIndex:", 0)) || objc_msgSend(self, "isEmoji:", v6)))
    {
      [self clearUnconfirmedHashtagInTextStorage:v7];
      [self updatePredictiveBar:0];
    }

    else
    {
      string = [v7 string];
      v13 = [string substringWithRange:{v10, v11}];

      if ([v13 length] >= 2 && objc_msgSend(v13, "ic_containsHashtagPrefix"))
      {
        v14 = objc_alloc_init(MEMORY[0x277D35EF0]);
        [v14 setDisplayText:v13];
        [self setEditedRange:{v10, v11}];
        v16[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        [self updatePredictiveBar:v15];
      }
    }
  }
}

- (__CFString)currentUnconfirmedHashtagString:()App textStorage:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() rangeOfUnconfirmedHashtagInTextStorage:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if ([v6 length] && (!objc_msgSend(self, "isValidElement:", objc_msgSend(v6, "characterAtIndex:", 0)) || objc_msgSend(self, "isEmoji:", v6)))
  {
    [self dismissAutoCompletionView];
LABEL_9:
    v13 = &stru_282757698;
    goto LABEL_10;
  }

  string = [v7 string];
  v13 = [string substringWithRange:{v10, v11}];

  if ([(__CFString *)v13 length]< 2 || ([(__CFString *)v13 ic_containsHashtagPrefix]& 1) == 0)
  {

    goto LABEL_9;
  }

LABEL_10:

  return v13;
}

- (void)updatePredictiveBar:()App
{
  v8 = a3;
  hashtagKeyboardDelegate = [self hashtagKeyboardDelegate];

  if (hashtagKeyboardDelegate)
  {
    hashtagKeyboardDelegate2 = [self hashtagKeyboardDelegate];
    [hashtagKeyboardDelegate2 updateKeyboardSuggestions:v8 hashtagController:self];
  }

  hashtagTableKeyboardDelegate = [self hashtagTableKeyboardDelegate];

  if (hashtagTableKeyboardDelegate)
  {
    hashtagTableKeyboardDelegate2 = [self hashtagTableKeyboardDelegate];
    [hashtagTableKeyboardDelegate2 updateKeyboardSuggestions:v8 hashtagController:self];
  }
}

- (void)createNewHashtagIfNecessary:()App textStorage:ignoreDelimiter:parentAttachment:
{
  v12 = a5;
  v13 = a7;
  string = [v12 string];
  v15 = [string substringWithRange:{a3, a4}];

  if (![MEMORY[0x277D35EE8] shouldAutoConvertToTag] || a3 + a4 > objc_msgSend(v12, "length"))
  {
    [self updateUIWhenAutoConversionOff:v15 textStorage:v12];
    goto LABEL_4;
  }

  if ([MEMORY[0x277D35EE8] shouldAutoConvertToTag])
  {
    [self updatePredictiveBar:0];
  }

  v16 = [self isValidPostfixString:v15];
  if ((([v15 length] != 0) & v16) == 0 && !a6)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    string2 = [v12 string];
    v18 = [string2 substringWithRange:{a3 - 1, 1}];

    v19 = [v12 attribute:*MEMORY[0x277D36010] atIndex:a3 - 1 effectiveRange:0];
    if (v19)
    {
    }

    else
    {
      v31 = [v18 stringByApplyingTransform:*MEMORY[0x277CBE750] reverse:0];
      ic_hashtagCharacterString = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
      v33 = [v31 isEqualToString:ic_hashtagCharacterString];

      if (!v33)
      {
LABEL_21:

        goto LABEL_4;
      }
    }

    [objc_opt_class() addUnconfirmedAttributeToTextStorage:v12 atRange:{a3, a4}];
    goto LABEL_21;
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__0;
  v47[4] = __Block_byref_object_dispose__0;
  v48 = &stru_282757698;
  v20 = a3;
  v21 = a4;
  if ((a6 & 1) == 0)
  {
    v20 = [self rangeToCheckForHashtagCreation:{a3, a4}];
  }

  v36 = v21;
  v37 = v20;
  v46 = 0;
  v22 = [MEMORY[0x277CCA948] dataDetectorWithTypes:-1 error:&v46];
  v34 = v46;
  if (!v22)
  {
    v23 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICHashtagController(App) createNewHashtagIfNecessary:v23 textStorage:? ignoreDelimiter:? parentAttachment:?];
    }
  }

  attributedString = [v12 attributedString];
  string3 = [attributedString string];

  v26 = [string3 paragraphRangeForRange:{a3, a4}];
  v28 = [v22 matchesInString:string3 options:0 range:{v26, v27}];
  string4 = [v12 string];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __101__ICHashtagController_App__createNewHashtagIfNecessary_textStorage_ignoreDelimiter_parentAttachment___block_invoke;
  v38[3] = &unk_2781ABC30;
  v30 = v28;
  v39 = v30;
  selfCopy = self;
  v44 = v47;
  v45 = a6;
  v41 = v15;
  v42 = v13;
  v43 = v12;
  [string4 enumerateSubstringsInRange:v37 options:v36 usingBlock:{258, v38}];

  _Block_object_dispose(v47, 8);
LABEL_4:
}

- (unint64_t)rangeToCheckForHashtagCreation:()App
{
  if (a3 >= 0x4C)
  {
    return a3 - 76;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isExistingHashtag:()App hashtagSuggestionsArray:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        displayText = [*(*(&v14 + 1) + 8 * i) displayText];
        ic_hashtagDisplayText = [v5 ic_hashtagDisplayText];
        v12 = [displayText isEqualToString:ic_hashtagDisplayText];

        if (v12)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)dismissAutoCompletionView
{
  tableTextView = [self tableTextView];

  if (tableTextView)
  {
    tableTextView2 = [self tableTextView];
    objc_opt_class();
    [self tableTextView];
  }

  else
  {
    tableTextView2 = [self textView];
    objc_opt_class();
    [self textView];
  }
  v3 = ;
  textStorage = [v3 textStorage];
  v5 = ICDynamicCast();
  [self updateAutoCompletionView:0 range:0 textView:0 ofTextStorage:{tableTextView2, v5}];
}

- (void)updateAutoCompletionView:()App range:textView:ofTextStorage:
{
  v23 = a3;
  v12 = a6;
  v13 = a7;
  if (v23)
  {
    v14 = MEMORY[0x277D35EF0];
    note = [self note];
    managedObjectContext = [note managedObjectContext];
    v17 = [v14 sortedItems:v23 context:managedObjectContext];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  [self setEditedRange:{a4, a5}];
  textView = [self textView];
  ic_isInSecureWindow = [textView ic_isInSecureWindow];

  if ((ic_isInSecureWindow & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      v20 = ICDynamicCast();
      [self setTableTextView:v20];

      hashtagTableKeyboardDelegate = [self hashtagTableKeyboardDelegate];
    }

    else
    {
      [self setTableTextView:0];
      hashtagTableKeyboardDelegate = [self hashtagKeyboardDelegate];
    }

    v22 = hashtagTableKeyboardDelegate;
    [hashtagTableKeyboardDelegate updateKeyboardSuggestions:v17 hashtagController:self];
  }
}

- (uint64_t)range:()App hasValidPostfixCharacterForString:
{
  v8 = a5;
  v9 = v8;
  v10 = a3 + a4;
  if (v10 < 0 || v10 >= [v8 length])
  {
    v11 = 0;
  }

  else
  {
    v11 = [self isValidPostfixCharacter:{objc_msgSend(v9, "characterAtIndex:", v10)}];
  }

  return v11;
}

- (uint64_t)isValidPostfixCharacter:()App
{
  ic_hashtagAllowedCharacterSet = [MEMORY[0x277CCA900] ic_hashtagAllowedCharacterSet];
  LODWORD(a3) = [ic_hashtagAllowedCharacterSet characterIsMember:a3];

  return a3 ^ 1;
}

- (uint64_t)isValidPostfixString:()App
{
  v4 = a3;
  if (([self isEmoji:v4] & 1) != 0 || !objc_msgSend(v4, "length"))
  {
    v6 = 0;
  }

  else
  {
    ic_hashtagAllowedCharacterSet = [MEMORY[0x277CCA900] ic_hashtagAllowedCharacterSet];
    v6 = [ic_hashtagAllowedCharacterSet characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}] ^ 1;
  }

  return v6;
}

- (uint64_t)isEmoji:()App
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v5 = [v3 length];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__ICHashtagController_App__isEmoji___block_invoke;
    v8[3] = &unk_2781ABC58;
    v8[4] = &v9;
    [v4 enumerateSubstringsInRange:0 options:v5 usingBlock:{258, v8}];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (uint64_t)isValidElement:()App
{
  ic_hashtagAllowedCharacterSet = [MEMORY[0x277CCA900] ic_hashtagAllowedCharacterSet];
  v5 = [ic_hashtagAllowedCharacterSet characterIsMember:a3];

  return v5;
}

- (void)insertHashtagWithText:()App viaAutoComplete:delimiter:parentAttachment:
{
  v10 = a5;
  v11 = MEMORY[0x277D35EF8];
  v12 = a6;
  v13 = a3;
  note = [self note];
  v15 = [v11 createHashtagAttachmentIfApplicableWithHashtagText:v13 creatingHashtagIfNecessary:1 note:note parentAttachment:v12];

  if (!v15)
  {
    v18 = os_log_create("com.apple.notes", "Hashtag");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICHashtagController(App) insertHashtagWithText:v18 viaAutoComplete:? delimiter:? parentAttachment:?];
    }

    goto LABEL_9;
  }

  attachmentInsertionController = [self attachmentInsertionController];

  if (!attachmentInsertionController)
  {
    v18 = os_log_create("com.apple.notes", "Hashtag");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICHashtagController(App) insertHashtagWithText:v18 viaAutoComplete:? delimiter:? parentAttachment:?];
    }

LABEL_9:

    goto LABEL_12;
  }

  tableTextView = [self tableTextView];
  if (tableTextView)
  {
    [self tableTextView];
  }

  else
  {
    [self textView];
  }
  v19 = ;
  editedRange = [self editedRange];
  [self insertHashtagAttachment:v15 toTextView:v19 range:editedRange viaAutoComplete:v21 delimiter:{a4, v10}];

  [v15 accessibilityAnnounceCreationWithVoiceOver];
LABEL_12:
}

- (void)insertHashtagAttachment:()App toTextView:range:viaAutoComplete:delimiter:
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  objc_opt_class();
  textStorage = [v15 textStorage];
  v18 = ICDynamicCast();

  if (a5 <= [v18 length])
  {
    analyticsDelegate = [self analyticsDelegate];

    if (analyticsDelegate)
    {
      analyticsDelegate2 = [self analyticsDelegate];
      [self note];
      v50 = a5;
      selfCopy = self;
      v23 = a6;
      v24 = v18;
      v26 = v25 = v16;
      tokenContentIdentifier = [v14 tokenContentIdentifier];
      [analyticsDelegate2 hashtagInsertedInNote:v26 tokenContentIdentifier:tokenContentIdentifier viaAutoComplete:a7];

      v16 = v25;
      v18 = v24;
      a6 = v23;
      self = selfCopy;
      a5 = v50;
    }

    attachmentInsertionController = [self attachmentInsertionController];
    v29 = [attachmentInsertionController addInlineAttachment:v14 atTextRange:a5 textView:{a6, v15}];

    if (a7)
    {
      objc_opt_class();
      v30 = ICCheckedDynamicCast();
      v31 = v30;
      if (v30 && ![v30 languageHasSpaces])
      {
        [v15 setSelectedRange:{a5 + 1, 0}];
      }

      else
      {
        v51 = v18;
        v32 = v14;
        textStorage2 = [v15 textStorage];
        v34 = [textStorage2 length];
        v35 = v16;
        v36 = [v16 length] + a5 + 1;

        v37 = v34 >= v36;
        v16 = v35;
        if (v37)
        {
          textStorage3 = [v15 textStorage];
          [textStorage3 replaceCharactersInRange:objc_msgSend(v35 withString:{"length") + a5 + 1, 0, @" "}];
        }

        textStorage4 = [v15 textStorage];
        v40 = [textStorage4 length];
        v41 = a5 + 2;
        v42 = [v35 length] + v41;

        if (v40 >= v42)
        {
          [v15 setSelectedRange:{objc_msgSend(v35, "length") + v41, 0}];
        }

        else
        {
          textStorage5 = [v15 textStorage];
          [v15 setSelectedRange:{objc_msgSend(textStorage5, "length"), 0}];
        }

        v14 = v32;
        v18 = v51;
      }
    }

    else
    {
      textStorage6 = [v15 textStorage];
      v45 = [textStorage6 length];
      v46 = a5 + 2;

      if (v45 <= v46)
      {
        textStorage7 = [v15 textStorage];
        [v15 setSelectedRange:{objc_msgSend(textStorage7, "length"), 0}];
      }

      else
      {
        [v15 setSelectedRange:{v46, 0}];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v48 = ICDynamicCast();
      cellDelegate = [v48 cellDelegate];
      [cellDelegate setNeedsSaveAfterUserEdit];

      [self setTableTextView:0];
    }

    [self updateNoteHashtags];
    [self setTableTextView:0];
  }

  else
  {
    v19 = os_log_create("com.apple.notes", "Hashtag");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v52.location = a5;
      v52.length = a6;
      [ICHashtagController(App) insertHashtagAttachment:v52 toTextView:v18 range:v19 viaAutoComplete:? delimiter:?];
    }
  }
}

+ (uint64_t)rangeOfUnconfirmedHashtagInTextStorage:()App
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_21552D17E;
  v13 = xmmword_2154BBE70;
  v4 = *MEMORY[0x277D36010];
  v5 = [v3 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__ICHashtagController_App__rangeOfUnconfirmedHashtagInTextStorage___block_invoke;
  v8[3] = &unk_2781ABC80;
  v8[4] = &v9;
  [v3 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{2, v8}];
  v6 = v10[4];
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (void)addUnconfirmedAttributeToTextStorage:()App atRange:
{
  v7 = *MEMORY[0x277D36010];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithBool:1];
  [v9 addAttribute:v7 value:v10 range:{a4, a5}];
}

- (void)insertHashtagAttachment:()App toTextView:range:viaAutoComplete:delimiter:.cold.1(NSRange a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRange(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = [a2 length];
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Attempted to addInlineAttachment:atTextRange: with an out of bound range: %@. textStorage length is %lu.", &v6, 0x16u);
}

@end