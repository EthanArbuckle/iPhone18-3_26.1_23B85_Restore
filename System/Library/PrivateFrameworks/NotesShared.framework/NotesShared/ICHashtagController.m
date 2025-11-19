@interface ICHashtagController
+ (BOOL)isBeginningHashtagAtSelectionRange:(_NSRange)a3 inString:(id)a4 languageHasSpaces:(BOOL)a5;
+ (BOOL)isValidPostfixCharacter:(unsigned __int16)a3;
+ (BOOL)isValidPrefixCharacter:(unsigned __int16)a3 languageHasSpaces:(BOOL)a4;
+ (BOOL)range:(_NSRange)a3 hasValidPostfixCharacterForString:(id)a4;
+ (BOOL)range:(_NSRange)a3 hasValidPrefixCharacterForString:(id)a4 languageHasSpaces:(BOOL)a5;
+ (BOOL)range:(_NSRange)a3 isPrefixedWithHashtagForString:(id)a4;
+ (BOOL)shouldAutoConvertToTag;
+ (_NSRange)range:(_NSRange)a3 appendingSubstringRange:(_NSRange)a4;
+ (_NSRange)rangeOfLastCharacterInRange:(_NSRange)a3;
- (BOOL)allowsHashtag;
- (ICAttachmentInsertionController)attachmentInsertionController;
- (ICHashtagAnalyticsDelegate)analyticsDelegate;
- (ICHashtagController)initWithNote:(id)a3;
- (ICHashtagKeyboardDelegate)hashtagKeyboardDelegate;
- (ICHashtagKeyboardDelegate)hashtagTableKeyboardDelegate;
- (ICNote)note;
- (ICTableColumnTextView)tableTextView;
- (UITextView)textView;
- (_NSRange)editedRange;
- (id)checkForHashtagInString:(id)a3 inRange:(_NSRange)a4 selectionRange:(_NSRange)a5 languageHasSpaces:(BOOL)a6;
- (id)hashtagSuggestionsForKey:(id)a3;
- (void)associateHashtagSuggestion:(id)a3 withKey:(id)a4;
- (void)crossAppHashtagDidChange:(id)a3;
- (void)dealloc;
- (void)updateHashtagsAssociations;
@end

@implementation ICHashtagController

- (void)updateHashtagsAssociations
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(ICHashtagController *)self allowsHashtag])
  {
    v3 = [(ICHashtagController *)self note];
    v4 = [v3 account];
    v5 = [v4 managedObjectContext];
    v6 = [ICHashtag allVisibleHashtagsInContext:v5];

    v7 = [ICHashtagSuggestionItem suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:v6];
    [(ICHashtagController *)self setMaxNameLength:0];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ICHashtagController *)self setHashtagSuggestionsDictionary:v8];

    v9 = objc_alloc_init(ICHashtagsNode);
    [(ICHashtagController *)self setHashtagsTree:v9];

    v10 = [MEMORY[0x277CBEB58] setWithCapacity:{4 * objc_msgSend(v7, "count")}];
    [(ICHashtagController *)self setHashtagsNames:v10];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 displayText];
          v18 = [v17 ic_tokenSafeText];
          [(ICHashtagController *)self associateHashtagSuggestion:v16 withKey:v18];

          v19 = [v16 displayText];
          v20 = [v19 length];

          v21 = [(ICHashtagController *)self maxNameLength];
          if (v20 <= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v20;
          }

          [(ICHashtagController *)self setMaxNameLength:v22];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)allowsHashtag
{
  v3 = [(ICHashtagController *)self note];
  if ([v3 isPasswordProtected])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(ICHashtagController *)self note];
    v4 = [v5 isSharedReadOnly] ^ 1;
  }

  return v4;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (ICHashtagController)initWithNote:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICHashtagController;
  v5 = [(ICHashtagController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, v4);
    [(ICHashtagController *)v6 updateHashtagsAssociations];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel_crossAppHashtagDidChange_ name:@"ICCrossAppHashtagDisplayTextUpdatedNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel_accountWasDeleted_ name:@"ICAccountWasDeletedNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICHashtagController;
  [(ICHashtagController *)&v4 dealloc];
}

- (id)checkForHashtagInString:(id)a3 inRange:(_NSRange)a4 selectionRange:(_NSRange)a5 languageHasSpaces:(BOOL)a6
{
  v6 = a6;
  length = a5.length;
  location = a5.location;
  v9 = a4.length;
  v10 = a4.location;
  v12 = a3;
  if (-[ICHashtagController allowsHashtag](self, "allowsHashtag") && ([v12 string], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v10 + v9 <= v14))
  {
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3010000000;
    v42[3] = "";
    v43 = xmmword_2150C0620;
    v16 = objc_alloc_init(ICHashtagsCheckResults);
    v17 = objc_opt_class();
    v18 = [v12 string];
    v19 = [v17 isBeginningHashtagAtSelectionRange:location inString:length languageHasSpaces:{v18, v6}];

    if (v19)
    {
      [(ICHashtagsCheckResults *)v16 setRangeOfHashtag:location - 1, 1];
      v20 = [(ICHashtagController *)self note];
      v21 = [v20 account];
      v22 = [v21 managedObjectContext];
      v23 = [ICHashtag allVisibleHashtagsInContext:v22];

      v24 = [ICHashtagSuggestionItem suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:v23];
      v25 = [MEMORY[0x277CBEB98] setWithArray:v24];
      [(ICHashtagsCheckResults *)v16 setMatchingHashtagSuggestions:v25];

      v15 = v16;
    }

    else
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x3032000000;
      v40[3] = __Block_byref_object_copy__2;
      v40[4] = __Block_byref_object_dispose__2;
      v41 = [(ICHashtagController *)self hashtagsTree];
      v26 = [v12 string];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __88__ICHashtagController_checkForHashtagInString_inRange_selectionRange_languageHasSpaces___block_invoke;
      v34[3] = &unk_278195030;
      v37 = v40;
      v38 = v42;
      v34[4] = self;
      v35 = v12;
      v39 = v6;
      v27 = v16;
      v36 = v27;
      [v26 enumerateSubstringsInRange:v10 options:v9 usingBlock:{2, v34}];

      if ([(ICHashtagsCheckResults *)v27 rangeOfHashtag]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        [(ICHashtagsCheckResults *)v27 rangeOfHashtag];
        v28 = [(ICHashtagsCheckResults *)v27 rangeOfHashtag];
        [(ICHashtagsCheckResults *)v27 rangeOfHashtag];
        [(ICHashtagsCheckResults *)v27 setRangeOfHashtag:v28 - 1, v29 + 1];
      }

      if ([(ICHashtagsCheckResults *)v27 rangeOfHashtag]== 0x7FFFFFFFFFFFFFFFLL || ([(ICHashtagsCheckResults *)v27 rangeOfHashtag], !v30))
      {
        v15 = 0;
      }

      else
      {
        v31 = [(ICHashtagsCheckResults *)v27 matchingHashtagSuggestions];
        v32 = [v31 count];

        if (!v32)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"results.matchingHashtagSuggestions.count > 0" functionName:"-[ICHashtagController checkForHashtagInString:inRange:selectionRange:languageHasSpaces:]" simulateCrash:1 showAlert:0 format:@"No matching hashtags"];
        }

        v15 = v27;
      }

      _Block_object_dispose(v40, 8);
    }

    _Block_object_dispose(v42, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __88__ICHashtagController_checkForHashtagInString_inRange_selectionRange_languageHasSpaces___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = [a2 ic_tokenSafeText];
  v7 = [v35 length];
  v8 = v35;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = [v8 ic_substringWithRange:{v10, 1}];
      v12 = [*(*(*(a1 + 56) + 8) + 40) children];
      v13 = [v12 objectForKey:v11];

      if (!v13)
      {
        break;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
      v14 = [v11 length];
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v10 += v15;

      v16 = [v35 length];
      v9 = v13;
      v8 = v35;
      if (v10 >= v16)
      {
        goto LABEL_10;
      }
    }

    *(*(*(a1 + 64) + 8) + 32) = xmmword_2150C0620;
    v17 = [*(a1 + 32) hashtagsTree];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [*(*(*(a1 + 56) + 8) + 40) children];
    v13 = [v20 objectForKey:v11];

    v8 = v35;
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_10:
    v21 = [objc_opt_class() range:*(*(*(a1 + 64) + 8) + 32) appendingSubstringRange:{*(*(*(a1 + 64) + 8) + 40), a3, a4}];
    v22 = *(*(a1 + 64) + 8);
    *(v22 + 32) = v21;
    *(v22 + 40) = v23;
    v24 = objc_opt_class();
    v25 = *(*(a1 + 64) + 8);
    v26 = [*(a1 + 40) string];
    LODWORD(v24) = [v24 range:*(v25 + 32) hasValidPrefixCharacterForString:*(v25 + 40) languageHasSpaces:{v26, *(a1 + 72)}];

    if (v24)
    {
      v27 = objc_opt_class();
      v28 = *(*(a1 + 64) + 8);
      v29 = [*(a1 + 40) string];
      LODWORD(v27) = [v27 range:*(v28 + 32) isPrefixedWithHashtagForString:{*(v28 + 40), v29}];

      if (v27)
      {
        [*(a1 + 48) setRangeOfHashtag:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
        v30 = [v13 possibleHashtagSuggestions];
        v31 = [v30 copy];
        [*(a1 + 48) setMatchingHashtagSuggestions:v31];
      }
    }

    v32 = *(*(a1 + 56) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v13;
    v34 = v13;

    v8 = v35;
  }

LABEL_14:
}

- (void)crossAppHashtagDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICHashtagController_crossAppHashtagDidChange___block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)associateHashtagSuggestion:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [(ICHashtagController *)self hashtagsNames];
    [v9 addObject:v8];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = [(ICHashtagController *)self hashtagsTree];
    v10 = [v8 length];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__ICHashtagController_associateHashtagSuggestion_withKey___block_invoke;
    v15[3] = &unk_278195058;
    v17 = &v18;
    v11 = v6;
    v16 = v11;
    [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v15}];
    [v19[5] addHashtagSuggestion:v11];
    v12 = [(ICHashtagController *)self hashtagSuggestionsDictionary];
    v13 = [v12 objectForKey:v8];

    if (v13)
    {
      [v13 addObject:v11];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v11, 0}];
    }

    v14 = [(ICHashtagController *)self hashtagSuggestionsDictionary];
    [v14 setObject:v13 forKey:v8];

    _Block_object_dispose(&v18, 8);
  }
}

void __58__ICHashtagController_associateHashtagSuggestion_withKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) children];
  v4 = [v3 objectForKey:v7];

  if (!v4)
  {
    v4 = objc_alloc_init(ICHashtagsNode);
    [(ICHashtagsNode *)v4 setKey:v7];
    [*(*(*(a1 + 40) + 8) + 40) addChild:v4];
  }

  [(ICHashtagsNode *)v4 addPossibleHashtagSuggestion:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)hashtagSuggestionsForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICHashtagController *)self hashtagSuggestionsDictionary];
  v6 = [v4 ic_tokenSafeText];

  v7 = [v5 objectForKey:v6];
  v8 = [v7 copy];

  return v8;
}

+ (_NSRange)rangeOfLastCharacterInRange:(_NSRange)a3
{
  v3 = a3.length != 0;
  if (a3.length)
  {
    v4 = a3.length + a3.location - 1;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v3;
  result.location = v4;
  return result;
}

+ (_NSRange)range:(_NSRange)a3 appendingSubstringRange:(_NSRange)a4
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = a4.location;
  }

  else
  {
    location = a3.location;
  }

  v5 = a4.location + a4.length - location;
  result.length = v5;
  result.location = location;
  return result;
}

+ (BOOL)isBeginningHashtagAtSelectionRange:(_NSRange)a3 inString:(id)a4 languageHasSpaces:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (location && !length)
  {
    if (location - 1 >= [v9 length])
    {
      v11 = 0;
    }

    else
    {
      v12 = [v10 characterAtIndex:location - 1];
      v20 = v12;
      v18 = 1;
      v19 = [MEMORY[0x277CCACA8] stringWithCharacters:&v20 length:1];
      v13 = [v19 stringByApplyingTransform:*MEMORY[0x277CBE750] reverse:0];
      v14 = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
      v15 = [v13 isEqualToString:v14];

      if (v12 == 35)
      {
        v15 = 1;
      }

      if (location < [v10 length])
      {
        v18 = [a1 range:location hasValidPostfixCharacterForString:{0, v10}];
      }

      v16 = [a1 range:location - 1 hasValidPrefixCharacterForString:0 languageHasSpaces:{v10, v5}];
      if (v15)
      {
        v11 = v18 & v16;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

+ (BOOL)range:(_NSRange)a3 isPrefixedWithHashtagForString:(id)a4
{
  location = a3.location;
  v5 = a4;
  v6 = v5;
  v7 = location < 1;
  v8 = location - 1;
  v9 = !v7 && v8 < [v5 length] && objc_msgSend(v6, "characterAtIndex:", v8) == 35;

  return v9;
}

+ (BOOL)range:(_NSRange)a3 hasValidPrefixCharacterForString:(id)a4 languageHasSpaces:(BOOL)a5
{
  v5 = a5;
  location = a3.location;
  v8 = a4;
  v9 = v8;
  if (location)
  {
    if (location < 1 || (v10 = location - 1, v10 >= [v8 length]))
    {
      v11 = 0;
    }

    else
    {
      v11 = [a1 isValidPrefixCharacter:objc_msgSend(v9 languageHasSpaces:{"characterAtIndex:", v10), v5}];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)isValidPrefixCharacter:(unsigned __int16)a3 languageHasSpaces:(BOOL)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = a3;
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([v5 characterIsMember:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v6 = [v7 characterIsMember:v4];
  }

  return v6;
}

+ (BOOL)range:(_NSRange)a3 hasValidPostfixCharacterForString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = v7;
  v9 = location + length;
  if (v9 < 0 || v9 >= [v7 length])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 isValidPostfixCharacter:{objc_msgSend(v8, "characterAtIndex:", v9)}];
  }

  return v10;
}

+ (BOOL)isValidPostfixCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([v4 characterIsMember:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [v6 characterIsMember:v3];
  }

  return v5;
}

+ (BOOL)shouldAutoConvertToTag
{
  objc_opt_class();
  v2 = [MEMORY[0x277D36260] objectForKey:@"ICHashtagsShouldAutoConvertToTagDefaultsKey"];
  v3 = ICCheckedDynamicCast();

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (ICHashtagKeyboardDelegate)hashtagKeyboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagKeyboardDelegate);

  return WeakRetained;
}

- (ICHashtagKeyboardDelegate)hashtagTableKeyboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagTableKeyboardDelegate);

  return WeakRetained;
}

- (ICAttachmentInsertionController)attachmentInsertionController
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentInsertionController);

  return WeakRetained;
}

- (_NSRange)editedRange
{
  length = self->_editedRange.length;
  location = self->_editedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (ICTableColumnTextView)tableTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableTextView);

  return WeakRetained;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (ICHashtagAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

@end