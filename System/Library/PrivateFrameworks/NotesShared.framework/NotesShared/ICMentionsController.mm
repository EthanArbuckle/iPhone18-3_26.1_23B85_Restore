@interface ICMentionsController
+ (BOOL)isBeginningExplicitMentionAtSelectionRange:(_NSRange)range inString:(id)string languageHasSpaces:(BOOL)spaces;
+ (BOOL)isValidPostfixCharacter:(unsigned __int16)character;
+ (BOOL)isValidPrefixCharacter:(unsigned __int16)character languageHasSpaces:(BOOL)spaces;
+ (BOOL)range:(_NSRange)range hasValidPostfixCharacterForString:(id)string;
+ (BOOL)range:(_NSRange)range hasValidPrefixCharacterForString:(id)string languageHasSpaces:(BOOL)spaces;
+ (BOOL)range:(_NSRange)range isPrefixedWithAtForString:(id)string;
+ (_NSRange)range:(_NSRange)range appendingSubstringRange:(_NSRange)substringRange;
+ (_NSRange)rangeOfLastCharacterInRange:(_NSRange)range;
- (BOOL)allowsMentions;
- (ICAttachmentInsertionController)attachmentInsertionController;
- (ICMentionsAnalyticsDelegate)analyticsDelegate;
- (ICMentionsController)initWithNote:(id)note;
- (ICMentionsKeyboardDelegate)mentionsKeyboardDelegate;
- (ICMentionsKeyboardDelegate)mentionsTableKeyboardDelegate;
- (ICNote)note;
- (ICTableColumnTextView)tableTextView;
- (UITextView)textView;
- (_NSRange)editedRange;
- (id)checkForMentionsInString:(id)string inRange:(_NSRange)range selectionRange:(_NSRange)selectionRange languageHasSpaces:(BOOL)spaces;
- (id)participantsForKey:(id)key;
- (void)addAllKeywordToParticipantTree;
- (void)associateParticipant:(id)participant withKey:(id)key;
- (void)dealloc;
- (void)updateMentionsAssociations;
@end

@implementation ICMentionsController

- (void)updateMentionsAssociations
{
  v60 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICMentionsController updateMentionsAssociations]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ([(ICMentionsController *)self allowsMentions])
  {
    note = [(ICMentionsController *)self note];
    serverShareCheckingParent = [note serverShareCheckingParent];

    v36 = serverShareCheckingParent;
    ic_acceptedParticipants = [serverShareCheckingParent ic_acceptedParticipants];
    [(ICMentionsController *)self setMaxNameLength:0];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ICMentionsController *)self setParticipantDictionary:v6];

    v7 = objc_alloc_init(ICMentionsParticipantNode);
    [(ICMentionsController *)self setParticipantTree:v7];

    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(ic_acceptedParticipants, "count")}];
    [(ICMentionsController *)self setParticipantRecordNames:v8];

    v9 = MEMORY[0x277CBEB58];
    v10 = [ic_acceptedParticipants count];
    v11 = [v9 setWithCapacity:{objc_msgSend(MEMORY[0x277CBC6A0], "ic_mentionTokensPerParticipant") * v10}];
    [(ICMentionsController *)self setParticipantNames:v11];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = ic_acceptedParticipants;
    v13 = [v12 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v38 = *v55;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v54 + 1) + 8 * i);
          ic_mentionTokens = [v16 ic_mentionTokens];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v18 = ic_mentionTokens;
          v19 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v51;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v51 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v50 + 1) + 8 * j);
                v24 = objc_autoreleasePoolPush();
                [(ICMentionsController *)self associateParticipant:v16 withKey:v23];
                v25 = [v23 length];
                maxNameLength = [(ICMentionsController *)self maxNameLength];
                if (v25 <= maxNameLength)
                {
                  v27 = maxNameLength;
                }

                else
                {
                  v27 = v25;
                }

                [(ICMentionsController *)self setMaxNameLength:v27];
                objc_autoreleasePoolPop(v24);
              }

              v20 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
            }

            while (v20);
          }
        }

        v12 = obj;
        v14 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v14);
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (self->_contactsRequestQueue)
    {
      contactsRequestBlock = self->_contactsRequestBlock;
      if (!contactsRequestBlock)
      {
LABEL_27:
        objc_initWeak(&location, self);
        v43 = 0;
        v44 = &v43;
        v45 = 0x3032000000;
        v46 = __Block_byref_object_copy__84;
        v47 = __Block_byref_object_dispose__85;
        v48 = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__ICMentionsController_updateMentionsAssociations__block_invoke;
        block[3] = &unk_2781966E0;
        objc_copyWeak(&v42, &location);
        v41 = &v43;
        v40 = v12;
        v32 = dispatch_block_create(0, block);
        v33 = self->_contactsRequestBlock;
        self->_contactsRequestBlock = v32;

        v34 = _Block_copy(self->_contactsRequestBlock);
        v35 = v44[5];
        v44[5] = v34;

        dispatch_async(self->_contactsRequestQueue, self->_contactsRequestBlock);
        objc_destroyWeak(&v42);
        _Block_object_dispose(&v43, 8);

        objc_destroyWeak(&location);
LABEL_28:
        [(ICMentionsController *)self addAllKeywordToParticipantTree];

        return;
      }

      dispatch_block_cancel(contactsRequestBlock);
      v29 = self->_contactsRequestBlock;
      self->_contactsRequestBlock = 0;
    }

    else
    {
      v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v30 = dispatch_queue_create("com.apple.notes.contactsRequests", v29);
      contactsRequestQueue = self->_contactsRequestQueue;
      self->_contactsRequestQueue = v30;
    }

    goto LABEL_27;
  }
}

- (BOOL)allowsMentions
{
  note = [(ICMentionsController *)self note];
  if ([note isSharedViaICloud])
  {
    note2 = [(ICMentionsController *)self note];
    v5 = [note2 isSharedReadOnly] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (ICMentionsController)initWithNote:(id)note
{
  noteCopy = note;
  v8.receiver = self;
  v8.super_class = ICMentionsController;
  v5 = [(ICMentionsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, noteCopy);
    [(ICMentionsController *)v6 updateMentionsAssociations];
    if (objc_opt_respondsToSelector())
    {
      [(ICMentionsController *)v6 registerForContactsChangedNotification];
    }
  }

  return v6;
}

- (void)dealloc
{
  contactsChangedObserverToken = [(ICMentionsController *)self contactsChangedObserverToken];

  if (contactsChangedObserverToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    contactsChangedObserverToken2 = [(ICMentionsController *)self contactsChangedObserverToken];
    [defaultCenter removeObserver:contactsChangedObserverToken2];

    [(ICMentionsController *)self setContactsChangedObserverToken:0];
  }

  v6.receiver = self;
  v6.super_class = ICMentionsController;
  [(ICMentionsController *)&v6 dealloc];
}

- (id)checkForMentionsInString:(id)string inRange:(_NSRange)range selectionRange:(_NSRange)selectionRange languageHasSpaces:(BOOL)spaces
{
  spacesCopy = spaces;
  length = selectionRange.length;
  location = selectionRange.location;
  v9 = range.length;
  v10 = range.location;
  stringCopy = string;
  if (-[ICMentionsController allowsMentions](self, "allowsMentions") && ([stringCopy string], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v10 + v9 <= v14))
  {
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3010000000;
    v41[3] = "";
    v42 = xmmword_2150C0620;
    v16 = objc_alloc_init(ICMentionCheckResults);
    v17 = objc_opt_class();
    string = [stringCopy string];
    v19 = [v17 isBeginningExplicitMentionAtSelectionRange:location inString:length languageHasSpaces:{string, spacesCopy}];

    if (v19)
    {
      [(ICMentionCheckResults *)v16 setRangeOfMention:location - 1, 1];
      [(ICMentionCheckResults *)v16 setIsPartialMention:1];
      [(ICMentionCheckResults *)v16 setIsExplicitMention:1];
      [(ICMentionCheckResults *)v16 setIsAllMention:1];
      note = [(ICMentionsController *)self note];
      serverShareCheckingParent = [note serverShareCheckingParent];

      v22 = MEMORY[0x277CBEB98];
      ic_acceptedParticipants = [serverShareCheckingParent ic_acceptedParticipants];
      v24 = [v22 setWithArray:ic_acceptedParticipants];
      [(ICMentionCheckResults *)v16 setMatchingParticipants:v24];

      [(ICMentionCheckResults *)v16 setMentionString:&stru_2827172C0];
      v15 = v16;
    }

    else
    {
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x3032000000;
      v39[3] = __Block_byref_object_copy__17;
      v39[4] = __Block_byref_object_dispose__17;
      participantTree = [(ICMentionsController *)self participantTree];
      string2 = [stringCopy string];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __90__ICMentionsController_checkForMentionsInString_inRange_selectionRange_languageHasSpaces___block_invoke;
      v33[3] = &unk_278195030;
      v36 = v39;
      v37 = v41;
      v33[4] = self;
      v34 = stringCopy;
      v38 = spacesCopy;
      v26 = v16;
      v35 = v26;
      [string2 enumerateSubstringsInRange:v10 options:v9 usingBlock:{2, v33}];

      if ([(ICMentionCheckResults *)v26 isExplicitMention])
      {
        [(ICMentionCheckResults *)v26 rangeOfMention];
        rangeOfMention = [(ICMentionCheckResults *)v26 rangeOfMention];
        [(ICMentionCheckResults *)v26 rangeOfMention];
        [(ICMentionCheckResults *)v26 setRangeOfMention:rangeOfMention - 1, v28 + 1];
      }

      if ([(ICMentionCheckResults *)v26 rangeOfMention]== 0x7FFFFFFFFFFFFFFFLL || ([(ICMentionCheckResults *)v26 rangeOfMention], !v29))
      {
        v15 = 0;
      }

      else
      {
        matchingParticipants = [(ICMentionCheckResults *)v26 matchingParticipants];
        if ([matchingParticipants count])
        {
        }

        else
        {
          isAllMention = [(ICMentionCheckResults *)v26 isAllMention];

          if (!isAllMention)
          {
            [MEMORY[0x277D36198] handleFailedAssertWithCondition:"results.matchingParticipants.count > 0 || results.isAllMention" functionName:"-[ICMentionsController checkForMentionsInString:inRange:selectionRange:languageHasSpaces:]" simulateCrash:1 showAlert:0 format:@"No matching participants found for mention"];
          }
        }

        v15 = v26;
      }

      _Block_object_dispose(v39, 8);
    }

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __90__ICMentionsController_checkForMentionsInString_inRange_selectionRange_languageHasSpaces___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v7 = [v52 ic_tokenSafeText];
  if ([v7 length])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [v7 ic_substringWithRange:{v9, 1}];
      v11 = [*(*(*(a1 + 56) + 8) + 40) children];
      v12 = [v11 objectForKey:v10];

      if (!v12)
      {
        break;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
      v13 = [v10 length];
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v9 += v14;

      v8 = v12;
      if (v9 >= [v7 length])
      {
        goto LABEL_10;
      }
    }

    *(*(*(a1 + 64) + 8) + 32) = xmmword_2150C0620;
    v15 = [*(a1 + 32) participantTree];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [*(*(*(a1 + 56) + 8) + 40) children];
    v12 = [v18 objectForKey:v10];

    if (!v12)
    {
      goto LABEL_34;
    }

LABEL_10:
    v19 = [objc_opt_class() range:*(*(*(a1 + 64) + 8) + 32) appendingSubstringRange:{*(*(*(a1 + 64) + 8) + 40), a3, a4}];
    v20 = *(*(a1 + 64) + 8);
    *(v20 + 32) = v19;
    *(v20 + 40) = v21;
    v22 = objc_opt_class();
    v23 = *(*(a1 + 64) + 8);
    v24 = [*(a1 + 40) string];
    LODWORD(v22) = [v22 range:*(v23 + 32) hasValidPrefixCharacterForString:*(v23 + 40) languageHasSpaces:{v24, *(a1 + 72)}];

    if (!v22)
    {
      goto LABEL_33;
    }

    v25 = objc_opt_class();
    v26 = *(*(a1 + 64) + 8);
    v27 = [*(a1 + 40) string];
    v28 = [v25 range:*(v26 + 32) isPrefixedWithAtForString:{*(v26 + 40), v27}];

    [*(a1 + 48) setRangeOfMention:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
    [*(a1 + 48) setIsExplicitMention:v28];
    v29 = [*(a1 + 40) string];
    v30 = [v29 substringWithRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
    [*(a1 + 48) setMentionString:v30];

    v31 = objc_opt_class();
    v32 = *(*(a1 + 64) + 8);
    v33 = [*(a1 + 40) string];
    LODWORD(v31) = [v31 range:*(v32 + 32) hasValidPostfixCharacterForString:{*(v32 + 40), v33}];

    if (v31)
    {
      v34 = [v12 participants];
      if ([v34 count])
      {

LABEL_26:
        [*(a1 + 48) setIsPartialMention:0];
        [*(a1 + 48) setIsAllMention:{objc_msgSend(v12, "isAll")}];
LABEL_29:
        v46 = [v12 participants];
LABEL_32:
        v47 = v46;
        v48 = [v46 copy];
        [*(a1 + 48) setMatchingParticipants:v48];

LABEL_33:
        v49 = *(*(a1 + 56) + 8);
        v50 = *(v49 + 40);
        *(v49 + 40) = v12;
        v51 = v12;

        goto LABEL_34;
      }

      if ([v12 isAll])
      {
        v35 = [v12 participants];
        v36 = [v35 count];

        if (!v36)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v37 = [v12 children];
      v38 = [v37 count];

      if (!v38)
      {
        goto LABEL_26;
      }
    }

    if (v28)
    {
      if (*(a1 + 72) == 1 && ([v52 ic_containsNonWhitespaceCharacters] & 1) == 0)
      {
        [*(a1 + 48) rangeOfMention];
        if (v39 >= 2)
        {
          v40 = [v12 possibleParticipants];
          v41 = [v40 count];

          if (v41 == 1)
          {
            v42 = [*(a1 + 48) rangeOfMention];
            [*(a1 + 48) rangeOfMention];
            [*(a1 + 48) setRangeOfMention:{v42, v43 - 1}];
            [*(a1 + 48) setIsPartialMention:0];
LABEL_31:
            v46 = [v12 possibleParticipants];
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      v44 = [v12 participants];
      v45 = [v44 count];

      if (v45)
      {
        [*(a1 + 48) setIsPartialMention:0];
        goto LABEL_29;
      }
    }

    [*(a1 + 48) setIsPartialMention:1];
    [*(a1 + 48) setIsAllMention:{objc_msgSend(v12, "isPossibleAll")}];
    goto LABEL_31;
  }

LABEL_34:
}

void __50__ICMentionsController_updateMentionsAssociations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  if (WeakRetained && v5 == WeakRetained[2])
  {
    v6 = [WeakRetained fetchContactNamesForParticipants:*(a1 + 32)];
    objc_copyWeak(&v8, (a1 + 48));
    v7 = v6;
    performBlockOnMainThread();

    objc_destroyWeak(&v8);
  }

  else
  {
    *(v4 + 40) = 0;
  }
}

void __50__ICMentionsController_updateMentionsAssociations__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(*(*(v1 + 40) + 8) + 40) == WeakRetained[2])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(v1 + 32);
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v6 = v1;
          v7 = [*(v1 + 32) objectForKeyedSubscript:v5];
          v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v24;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v23 + 1) + 8 * j);
                v13 = [v12 ic_tokenSafeText];
                [v3 associateParticipant:v5 withKey:v13];

                v14 = [v12 length];
                v15 = [v3 maxNameLength];
                if (v14 <= v15)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = v14;
                }

                [v3 setMaxNameLength:v16];
              }

              v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v9);
          }

          v1 = v6;
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    v17 = v3[2];
    v3[2] = 0;
  }

  v18 = *(*(v1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

- (void)associateParticipant:(id)participant withKey:(id)key
{
  participantCopy = participant;
  keyCopy = key;
  v8 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    participantNames = [(ICMentionsController *)self participantNames];
    [participantNames addObject:v8];

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__17;
    v26 = __Block_byref_object_dispose__17;
    participantTree = [(ICMentionsController *)self participantTree];
    v10 = [v8 length];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__ICMentionsController_associateParticipant_withKey___block_invoke;
    v19[3] = &unk_278195058;
    v21 = &v22;
    v11 = participantCopy;
    v20 = v11;
    [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v19}];
    [v23[5] addParticipant:v11];
    userIdentity = [v11 userIdentity];
    userRecordID = [userIdentity userRecordID];
    recordName = [userRecordID recordName];

    if ([recordName length])
    {
      participantRecordNames = [(ICMentionsController *)self participantRecordNames];
      [participantRecordNames addObject:recordName];
    }

    participantDictionary = [(ICMentionsController *)self participantDictionary];
    v17 = [participantDictionary objectForKey:v8];

    if (v17)
    {
      [v17 addObject:v11];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v11, 0}];
    }

    participantDictionary2 = [(ICMentionsController *)self participantDictionary];
    [participantDictionary2 setObject:v17 forKey:v8];

    _Block_object_dispose(&v22, 8);
  }
}

void __53__ICMentionsController_associateParticipant_withKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) children];
  v4 = [v3 objectForKey:v7];

  if (!v4)
  {
    v4 = objc_alloc_init(ICMentionsParticipantNode);
    [(ICMentionsParticipantNode *)v4 setKey:v7];
    [*(*(*(a1 + 40) + 8) + 40) addChild:v4];
  }

  [(ICMentionsParticipantNode *)v4 addPossibleParticipant:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)addAllKeywordToParticipantTree
{
  allKeyword = [objc_opt_class() allKeyword];
  ic_tokenSafeText = [allKeyword ic_tokenSafeText];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__17;
  participantTree = [(ICMentionsController *)self participantTree];
  v5 = [ic_tokenSafeText length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ICMentionsController_addAllKeywordToParticipantTree__block_invoke;
  v9[3] = &unk_278196708;
  v9[4] = &v10;
  [ic_tokenSafeText enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v9}];
  [v11[5] setIsAll:1];
  v6 = [ic_tokenSafeText length];
  maxNameLength = [(ICMentionsController *)self maxNameLength];
  if (v6 <= maxNameLength)
  {
    v8 = maxNameLength;
  }

  else
  {
    v8 = v6;
  }

  [(ICMentionsController *)self setMaxNameLength:v8];
  _Block_object_dispose(&v10, 8);
}

void __54__ICMentionsController_addAllKeywordToParticipantTree__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) children];
  v4 = [v3 objectForKey:v7];

  if (!v4)
  {
    v4 = objc_alloc_init(ICMentionsParticipantNode);
    [(ICMentionsParticipantNode *)v4 setKey:v7];
    [*(*(*(a1 + 32) + 8) + 40) addChild:v4];
  }

  [(ICMentionsParticipantNode *)v4 setIsPossibleAll:1];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)participantsForKey:(id)key
{
  keyCopy = key;
  ic_tokenSafeText = [keyCopy ic_tokenSafeText];
  allKeyword = [objc_opt_class() allKeyword];
  ic_tokenSafeText2 = [allKeyword ic_tokenSafeText];
  v8 = [ic_tokenSafeText isEqualToString:ic_tokenSafeText2];

  if (v8)
  {
    note = [(ICMentionsController *)self note];
    serverShareCheckingParent = [note serverShareCheckingParent];

    participants = [serverShareCheckingParent participants];
    v12 = [MEMORY[0x277CBEB98] setWithArray:participants];
  }

  else
  {
    serverShareCheckingParent = [(ICMentionsController *)self participantDictionary];
    participants = [keyCopy ic_tokenSafeText];
    v13 = [serverShareCheckingParent objectForKey:participants];
    v12 = [v13 copy];
  }

  return v12;
}

+ (_NSRange)rangeOfLastCharacterInRange:(_NSRange)range
{
  v3 = range.length != 0;
  if (range.length)
  {
    v4 = range.length + range.location - 1;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v3;
  result.location = v4;
  return result;
}

+ (_NSRange)range:(_NSRange)range appendingSubstringRange:(_NSRange)substringRange
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = substringRange.location;
  }

  else
  {
    location = range.location;
  }

  v5 = substringRange.location + substringRange.length - location;
  result.length = v5;
  result.location = location;
  return result;
}

+ (BOOL)isBeginningExplicitMentionAtSelectionRange:(_NSRange)range inString:(id)string languageHasSpaces:(BOOL)spaces
{
  spacesCopy = spaces;
  length = range.length;
  location = range.location;
  stringCopy = string;
  v10 = stringCopy;
  v11 = 0;
  if (location && !length)
  {
    if (location - 1 >= [stringCopy length])
    {
      v11 = 0;
    }

    else
    {
      v12 = [v10 characterAtIndex:location - 1] == 64 || objc_msgSend(v10, "characterAtIndex:", location - 1) == 65312;
      if (location >= [v10 length])
      {
        v13 = 1;
      }

      else
      {
        v13 = [self range:location hasValidPostfixCharacterForString:{0, v10}];
      }

      v14 = v13 & [self range:location - 1 hasValidPrefixCharacterForString:0 languageHasSpaces:{v10, spacesCopy}];
      if (v12)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

+ (BOOL)range:(_NSRange)range isPrefixedWithAtForString:(id)string
{
  location = range.location;
  stringCopy = string;
  v6 = stringCopy;
  v7 = location < 1;
  v8 = location - 1;
  v9 = !v7 && v8 < [stringCopy length] && (objc_msgSend(v6, "characterAtIndex:", v8) == 64 || objc_msgSend(v6, "characterAtIndex:", v8) == 65312);

  return v9;
}

+ (BOOL)range:(_NSRange)range hasValidPrefixCharacterForString:(id)string languageHasSpaces:(BOOL)spaces
{
  spacesCopy = spaces;
  length = range.length;
  location = range.location;
  stringCopy = string;
  v10 = [self range:location isPrefixedWithAtForString:{length, stringCopy}];
  v11 = -2;
  if (!v10)
  {
    v11 = -1;
  }

  v12 = 1;
  if (location)
  {
    v13 = v11 + location;
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 >= [stringCopy length])
      {
        v12 = 0;
      }

      else
      {
        v12 = [self isValidPrefixCharacter:objc_msgSend(stringCopy languageHasSpaces:{"characterAtIndex:", v13), spacesCopy}];
      }
    }
  }

  return v12;
}

+ (BOOL)isValidPrefixCharacter:(unsigned __int16)character languageHasSpaces:(BOOL)spaces
{
  if (!spaces)
  {
    return 1;
  }

  characterCopy = character;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([whitespaceAndNewlineCharacterSet characterIsMember:characterCopy])
  {
    v6 = 1;
  }

  else
  {
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v6 = [punctuationCharacterSet characterIsMember:characterCopy];
  }

  return v6;
}

+ (BOOL)range:(_NSRange)range hasValidPostfixCharacterForString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = stringCopy;
  v9 = location + length;
  if (v9 < 0 || v9 >= [stringCopy length])
  {
    v10 = 0;
  }

  else
  {
    v10 = [self isValidPostfixCharacter:{objc_msgSend(v8, "characterAtIndex:", v9)}];
  }

  return v10;
}

+ (BOOL)isValidPostfixCharacter:(unsigned __int16)character
{
  characterCopy = character;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([whitespaceAndNewlineCharacterSet characterIsMember:characterCopy])
  {
    v5 = 1;
  }

  else
  {
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [punctuationCharacterSet characterIsMember:characterCopy];
  }

  return v5;
}

- (ICMentionsKeyboardDelegate)mentionsKeyboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsKeyboardDelegate);

  return WeakRetained;
}

- (ICMentionsKeyboardDelegate)mentionsTableKeyboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsTableKeyboardDelegate);

  return WeakRetained;
}

- (ICAttachmentInsertionController)attachmentInsertionController
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentInsertionController);

  return WeakRetained;
}

- (ICTableColumnTextView)tableTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableTextView);

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

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (ICMentionsAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

@end