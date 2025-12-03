@interface CKMentionsController
- (BOOL)allowsMentions;
- (BOOL)attributedString:(id)string nextCharacterRangeFromRange:(_NSRange)range containsPossibleChild:(id)child;
- (BOOL)attributedString:(id)string shouldAddAutoCompleteAttributeForRange:(_NSRange)range;
- (BOOL)canSuggestSupplementalItemsForCurrentSelection;
- (BOOL)isValidPrefixCharacter:(unsigned __int16)character;
- (BOOL)range:(_NSRange)range hasValidPrefixCharacterForString:(id)string;
- (BOOL)shouldUpdateMentionsInRange:(_NSRange)range withReplacementText:(id)text;
- (BOOL)shouldUpdateMentionsInTextView:(id)view inRange:(_NSRange)range withReplacementText:(id)text;
- (CGRect)anchorRect;
- (CKMentionSuggestionView)mentionSuggestionView;
- (CKMentionsController)initWithEntryTextView:(id)view conversation:(id)conversation;
- (CKMentionsControllerTextEffectsDelegate)textEffectsDelegate;
- (CKPaddleOverlayView)paddleOverlayView;
- (_NSRange)_rangeFromUITextRange:(id)range;
- (_NSRange)lastFoundMentionRange;
- (_NSRange)rangeOfTappedMention;
- (id)_nodeForMentionNodeId:(id)id;
- (id)_nodeIdForMentionNode:(id)node;
- (id)entitiesForKey:(id)key;
- (id)suggestionView:(id)view entityAtIndex:(unint64_t)index;
- (id)suggestionView:(id)view indexPathOfEntityWithIdentifier:(id)identifier;
- (unint64_t)numberOfSuggestionsInSuggestionView:(id)view forSection:(unint64_t)section;
- (void)_enumerateAllAutomaticConfirmedMentionsInAttributedString:(id)string usingBlock:(id)block;
- (void)_enumerateNode:(id)node parentNodes:(id)nodes enumerator:(id)enumerator;
- (void)_populateSupplementalLexiconAsynchronously;
- (void)_updateMentionsLexiconWithItems:(id)items;
- (void)acceptAutomaticMentionConfirmation;
- (void)associateEntity:(id)entity withKey:(id)key;
- (void)cancelChooseSupplementalItemToInsert;
- (void)checkForMentions;
- (void)checkForMentionsInAttributedString:(id)string inTextView:(id)view;
- (void)checkForMentionsInAttributedString:(id)string textViewToUpdate:(id)update restoreSelectedRange:(_NSRange)range;
- (void)chooseSupplementalItemToInsert:(id)insert replacementRange:(id)range completionHandler:(id)handler;
- (void)configureAttributedString:(id)string inTextView:(id)view forMentionOverrideInRange:(_NSRange)range shouldOverride:(BOOL)override;
- (void)confirmAutomaticMention:(id)mention inTextView:(id)view isSending:(BOOL)sending selectedRange:(_NSRange *)range;
- (void)didDismissPaddleOverlayView:(id)view;
- (void)didFinishAnimatingMentionWithAnimationIdentifier:(id)identifier;
- (void)didSetAttributedTextOfTextView;
- (void)didTapMentionAtCharacterIndex:(double)index;
- (void)dismissPaddleOverlayIfNecessaryForText:(id)text;
- (void)insertMentionByName:(id)name;
- (void)insertMentionWithEntity:(id)entity replacementRange:(_NSRange)range fallbackName:(id)name source:(unsigned __int8)source;
- (void)insertSupplementalItem:(id)item forString:(id)string replacementRange:(id)range;
- (void)insertionPointEnteredRange:(_NSRange)range forMention:(id)mention withEntities:(id)entities;
- (void)insertionPointEnteredRange:(id)range string:(id)string supplementalItems:(id)items;
- (void)insertionPointExitedRangeWithSupplementalItems;
- (void)localeChanged;
- (void)reloadMentionsData;
- (void)reloadMentionsDataIfNecessary;
- (void)replaceAttributedText:(id)text inTextView:(id)view atIndex:(unint64_t)index updatedSelectedRange:(_NSRange *)range replacementRange:(_NSRange *)replacementRange;
- (void)resetStyleInAttributedString:(id)string inTextView:(id)view andApplyStyleUsingBlock:(id)block;
- (void)setShowMentionSuggestions:(BOOL)suggestions animated:(BOOL)animated completion:(id)completion;
- (void)showMentionSuggestionsForEntities:(id)entities replacementRange:(_NSRange)range;
- (void)suggestionView:(id)view didSelectEntity:(id)entity;
- (void)suggestionViewDidSelectEntity:(id)entity;
- (void)updateMentionsAssociations;
- (void)updateTextViewIfNecessary:(id)necessary withAttributedString:(id)string;
- (void)updateTextViewIfNecessary:(id)necessary withAttributedString:(id)string selectedRange:(_NSRange)range;
- (void)updateTypingAttributesIfNeededForTextView:(id)view;
@end

@implementation CKMentionsController

- (BOOL)canSuggestSupplementalItemsForCurrentSelection
{
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];

  if ([attributedText length])
  {
    textView2 = [(CKMentionsController *)self textView];
    selectedRange = [textView2 selectedRange];

    if (selectedRange)
    {
      v7 = selectedRange - 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [attributedText length];
    if (v7 >= v8 - 1)
    {
      v9 = v8 - 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = ![CKMentionsUtilities attributedString:attributedText containsConfirmedMentionInRange:v9, 1];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (CKMentionsController)initWithEntryTextView:(id)view conversation:(id)conversation
{
  viewCopy = view;
  conversationCopy = conversation;
  v16.receiver = self;
  v16.super_class = CKMentionsController;
  v9 = [(CKMentionsController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textView, view);
    objc_storeStrong(&v10->_conversation, conversation);
    [viewCopy setMentionsDelegate:v10];
    v11 = [CKMentionsAnimationController alloc];
    textView = [(CKMentionsController *)v10 textView];
    v13 = [(CKMentionsAnimationController *)v11 initWithEntryTextView:textView];
    mentionsAnimationController = v10->_mentionsAnimationController;
    v10->_mentionsAnimationController = v13;

    [(CKMentionsAnimationController *)v10->_mentionsAnimationController setDelegate:v10];
  }

  return v10;
}

- (unint64_t)numberOfSuggestionsInSuggestionView:(id)view forSection:(unint64_t)section
{
  viewCopy = view;
  mentionSuggestionView = [(CKMentionsController *)self mentionSuggestionView];

  if (mentionSuggestionView != viewCopy)
  {
    return 0;
  }

  currentMentionSuggestions = [(CKMentionsController *)self currentMentionSuggestions];
  v9 = [currentMentionSuggestions count];

  return v9;
}

- (id)suggestionView:(id)view entityAtIndex:(unint64_t)index
{
  viewCopy = view;
  mentionSuggestionView = [(CKMentionsController *)self mentionSuggestionView];

  if (mentionSuggestionView != viewCopy)
  {
    v8 = 0;
LABEL_5:

    goto LABEL_6;
  }

  currentMentionSuggestions = [(CKMentionsController *)self currentMentionSuggestions];
  v10 = [currentMentionSuggestions count];

  if (v10 > index)
  {
    mentionSuggestionView = [(CKMentionsController *)self currentMentionSuggestions];
    v8 = [mentionSuggestionView objectAtIndex:index];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)suggestionView:(id)view indexPathOfEntityWithIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  mentionSuggestionView = [(CKMentionsController *)self mentionSuggestionView];

  if (mentionSuggestionView == viewCopy)
  {
    currentMentionSuggestions = [(CKMentionsController *)self currentMentionSuggestions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__CKMentionsController_suggestionView_indexPathOfEntityWithIdentifier___block_invoke;
    v12[3] = &unk_1E72F1440;
    v13 = identifierCopy;
    v14 = &v15;
    [currentMentionSuggestions enumerateObjectsUsingBlock:v12];
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __71__CKMentionsController_suggestionView_indexPathOfEntityWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 defaultIMHandle];
  v8 = [v7 ID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (void)suggestionView:(id)view didSelectEntity:(id)entity
{
  entityCopy = entity;
  didSelectEntityCompletionHandler = [(CKMentionsController *)self didSelectEntityCompletionHandler];

  if (didSelectEntityCompletionHandler)
  {
    didSelectEntityCompletionHandler2 = [(CKMentionsController *)self didSelectEntityCompletionHandler];
    [(CKMentionsController *)self setDidSelectEntityCompletionHandler:0];
    (didSelectEntityCompletionHandler2)[2](didSelectEntityCompletionHandler2, entityCopy);
  }

  else
  {
    [(CKMentionsController *)self suggestionViewDidSelectEntity:entityCopy];
  }
}

- (CKMentionSuggestionView)mentionSuggestionView
{
  if (!self->_mentionSuggestionView && [(CKMentionsController *)self shouldShowMentionSuggestions])
  {
    v3 = objc_alloc_init(CKMentionSuggestionView);
    mentionSuggestionView = self->_mentionSuggestionView;
    self->_mentionSuggestionView = v3;

    [(CKMentionSuggestionView *)self->_mentionSuggestionView setClipsToBounds:1];
    [(CKMentionSuggestionView *)self->_mentionSuggestionView setDataSource:self];
    [(CKMentionSuggestionView *)self->_mentionSuggestionView setDelegate:self];
    textView = [(CKMentionsController *)self textView];
    [textView setNeedsLayout];
  }

  v6 = self->_mentionSuggestionView;

  return v6;
}

- (_NSRange)_rangeFromUITextRange:(id)range
{
  rangeCopy = range;
  textView = [(CKMentionsController *)self textView];
  textView2 = [(CKMentionsController *)self textView];
  beginningOfDocument = [textView2 beginningOfDocument];
  start = [rangeCopy start];
  v9 = [textView offsetFromPosition:beginningOfDocument toPosition:start];

  textView3 = [(CKMentionsController *)self textView];
  start2 = [rangeCopy start];
  v12 = [rangeCopy end];

  v13 = [textView3 offsetFromPosition:start2 toPosition:v12];
  v14 = v9;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (CGRect)anchorRect
{
  textView = [(CKMentionsController *)self textView];
  [textView textContainerInset];
  v5 = v4;
  v7 = v6;
  [(CKMentionsController *)self rangeOfTappedMention];
  if (v8)
  {
    textLayoutManager = [textView textLayoutManager];
    documentRange = [textLayoutManager documentRange];
    location = [documentRange location];
    v12 = [textLayoutManager locationFromLocation:location withOffset:{-[CKMentionsController rangeOfTappedMention](self, "rangeOfTappedMention")}];

    [(CKMentionsController *)self rangeOfTappedMention];
    v14 = [textLayoutManager locationFromLocation:v12 withOffset:v13];
    v15 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v12 endLocation:v14];
    documentRange2 = [textLayoutManager documentRange];
    [textLayoutManager ensureLayoutForRange:documentRange2];

    v35 = 0;
    v36 = &v35;
    v37 = 0x4010000000;
    v38 = &unk_190F92BB2;
    v39 = 0u;
    v40 = 0u;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __34__CKMentionsController_anchorRect__block_invoke;
    v34[3] = &unk_1E72F1468;
    v34[4] = &v35;
    [textLayoutManager enumerateTextSegmentsInRange:v15 type:0 options:0 usingBlock:v34];
    v17 = v36[4];
    v18 = v36[5];
    v19 = v36[6];
    v20 = v36[7];
    textView2 = [(CKMentionsController *)self textView];
    [textView convertRect:textView2 toView:{v7 + v17, v5 + v18, v19, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v23 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
  }

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

uint64_t __34__CKMentionsController_anchorRect__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 0;
}

- (CKPaddleOverlayView)paddleOverlayView
{
  if (!self->_paddleOverlayView && [(CKMentionsController *)self shouldShowMentionSuggestions])
  {
    v3 = [CKPaddleOverlayView alloc];
    mentionSuggestionView = [(CKMentionsController *)self mentionSuggestionView];
    [(CKMentionsController *)self anchorRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    textView = [(CKMentionsController *)self textView];
    v14 = [(CKPaddleOverlayView *)v3 initWithOverlayView:mentionSuggestionView atAnchorRect:textView inView:self delegate:v6, v8, v10, v12];
    paddleOverlayView = self->_paddleOverlayView;
    self->_paddleOverlayView = v14;
  }

  v16 = self->_paddleOverlayView;

  return v16;
}

- (BOOL)isValidPrefixCharacter:(unsigned __int16)character
{
  characterCopy = character;
  if (![(CKMentionsController *)self languageHasSpaces])
  {
    return 1;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ([whitespaceAndNewlineCharacterSet characterIsMember:characterCopy])
  {
    v5 = 1;
  }

  else
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v5 = [punctuationCharacterSet characterIsMember:characterCopy];
  }

  return v5;
}

- (BOOL)range:(_NSRange)range hasValidPrefixCharacterForString:(id)string
{
  location = range.location;
  stringCopy = string;
  v7 = stringCopy;
  if (!location || (v8 = location - 1, location == 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = ([stringCopy characterAtIndex:location - 1] != 64 || location >= 2 && (v8 = location - 2, location - 2 < objc_msgSend(v7, "length"))) && -[CKMentionsController isValidPrefixCharacter:](self, "isValidPrefixCharacter:", objc_msgSend(v7, "characterAtIndex:", v8));
  }

  return v9;
}

- (BOOL)allowsMentions
{
  conversation = [(CKMentionsController *)self conversation];
  allowsMentions = [conversation allowsMentions];

  return allowsMentions;
}

- (void)checkForMentions
{
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];
  v6 = [attributedText mutableCopy];

  LODWORD(attributedText) = +[CKMentionsUtilities supportsSupplementalLexiconMentions];
  textView2 = [(CKMentionsController *)self textView];
  if (attributedText)
  {
    [(CKMentionsController *)self resetStyleInAttributedString:v6 inTextView:textView2 andApplyStyleUsingBlock:&__block_literal_global_91];
  }

  else
  {
    [(CKMentionsController *)self checkForMentionsInAttributedString:v6 inTextView:textView2];
  }
}

- (void)_enumerateNode:(id)node parentNodes:(id)nodes enumerator:(id)enumerator
{
  v23 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  enumeratorCopy = enumerator;
  v10 = [nodes arrayByAddingObject:nodeCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  children = [nodeCopy children];
  allValues = [children allValues];

  v13 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(allValues);
      }

      v17 = *(*(&v18 + 1) + 8 * v16);
      if (!enumeratorCopy[2](enumeratorCopy, v17, v10))
      {
        break;
      }

      [(CKMentionsController *)self _enumerateNode:v17 parentNodes:v10 enumerator:enumeratorCopy];
      if (v14 == ++v16)
      {
        v14 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_nodeIdForMentionNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__28;
    v15 = __Block_byref_object_dispose__28;
    v16 = objc_alloc_init(CKMentionAutoCompleteNodeId);
    entityTree = [(CKMentionsController *)self entityTree];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__CKMentionsController__nodeIdForMentionNode___block_invoke;
    v8[3] = &unk_1E72F1490;
    v9 = nodeCopy;
    v10 = &v11;
    [(CKMentionsController *)self _enumerateNode:entityTree parentNodes:MEMORY[0x1E695E0F0] enumerator:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __46__CKMentionsController__nodeIdForMentionNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8 == v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 key];

          if (v14)
          {
            v15 = *(*(*(a1 + 40) + 8) + 40);
            v16 = [v13 key];
            v17 = [v15 nodeIdByAppendingKey:v16];
            v18 = *(*(a1 + 40) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = [v5 key];
    v22 = [v20 nodeIdByAppendingKey:v21];
    v23 = *(*(a1 + 40) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  return v8 != v5;
}

- (id)_nodeForMentionNodeId:(id)id
{
  v20 = *MEMORY[0x1E69E9840];
  idCopy = id;
  entityTree = [(CKMentionsController *)self entityTree];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keys = [idCopy keys];
  v7 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = entityTree;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(keys);
        }

        v12 = [v11 childWithKey:*(*(&v15 + 1) + 8 * v10)];
        if (!v12)
        {
          v13 = v11;

          goto LABEL_11;
        }

        entityTree = v12;

        ++v10;
        v11 = entityTree;
      }

      while (v8 != v10);
      v8 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = entityTree;
LABEL_11:

  return v13;
}

- (void)dismissPaddleOverlayIfNecessaryForText:(id)text
{
  textCopy = text;
  if (!+[CKMentionsUtilities supportsSupplementalLexiconMentions])
  {
    if ([textCopy attribute:*MEMORY[0x1E69A70C8] existsInRange:{0, objc_msgSend(textCopy, "length")}])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([(CKMentionsController *)self currentTappedCharacterIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    [(CKMentionsController *)self setShowMentionSuggestions:0 animated:1 completion:0];
  }

LABEL_6:
}

- (void)checkForMentionsInAttributedString:(id)string textViewToUpdate:(id)update restoreSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  updateCopy = update;
  if ([(CKMentionsController *)self allowsMentions])
  {
    if (![(CKMentionsController *)self isUpdatingMentionAttributedText])
    {
      markedTextRange = [updateCopy markedTextRange];

      if (!markedTextRange)
      {
        v32[0] = [(CKMentionsController *)self lastFoundMentionRange];
        v32[1] = v12;
        [CKMentionsUtilities configureAttributedStringForMentionsChecking:stringCopy excludingRange:v32];
        [(CKMentionsController *)self dismissPaddleOverlayIfNecessaryForText:stringCopy];
        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x3032000000;
        v30[3] = __Block_byref_object_copy__28;
        v30[4] = __Block_byref_object_dispose__28;
        entityTree = [(CKMentionsController *)self entityTree];
        v28[0] = 0;
        v28[1] = v28;
        v28[2] = 0x3010000000;
        v28[3] = &unk_190F92BB2;
        v29 = xmmword_190DCEFA0;
        string = [stringCopy string];
        string2 = [stringCopy string];
        v15 = [string2 length];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __97__CKMentionsController_checkForMentionsInAttributedString_textViewToUpdate_restoreSelectedRange___block_invoke;
        v20[3] = &unk_1E72F14B8;
        v16 = stringCopy;
        v24 = v30;
        v25 = v28;
        v21 = v16;
        selfCopy = self;
        v26 = location;
        v27 = length;
        v17 = updateCopy;
        v23 = v17;
        [string enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v20}];

        v18 = location;
        v19 = length;
        [(CKMentionsController *)self confirmAutomaticMention:v16 inTextView:v17 selectedRange:&v18];
        [(CKMentionsController *)self updateTextViewIfNecessary:v17 withAttributedString:v16 selectedRange:v18, v19];

        _Block_object_dispose(v28, 8);
        _Block_object_dispose(v30, 8);
      }
    }
  }
}

void __97__CKMentionsController_checkForMentionsInAttributedString_textViewToUpdate_restoreSelectedRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v47 = 0;
  v48 = 0;
  v8 = *MEMORY[0x1E69A70F8];
  v9 = [*(a1 + 32) attribute:*MEMORY[0x1E69A70F8] atIndex:a3 effectiveRange:&v47];

  if (!v9)
  {
    v11 = [v7 mentionsSafeText];
    if (![v11 length])
    {
      goto LABEL_22;
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [v11 substringWithRange:{v14, 1}];
      v17 = [*(*(*(a1 + 56) + 8) + 40) children];
      v18 = [v17 objectForKey:v16];

      if (!v18)
      {
        break;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v18);

      ++v14;
      v15 = v18;
      if ([v11 length] <= v14)
      {
        goto LABEL_11;
      }
    }

    *(*(*(a1 + 64) + 8) + 32) = xmmword_190DCEFA0;
    v19 = [*(a1 + 40) entityTree];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = [*(*(*(a1 + 56) + 8) + 40) children];
    v18 = [v22 objectForKey:v16];

    if (!v18)
    {
      goto LABEL_22;
    }

LABEL_11:
    v23 = [CKMentionsUtilities range:*(*(*(a1 + 64) + 8) + 32) appendingSubstringRange:*(*(*(a1 + 64) + 8) + 40), a3, a4];
    v24 = *(*(a1 + 64) + 8);
    *(v24 + 32) = v23;
    *(v24 + 40) = v25;
    v26 = [v18 entities];
    if (![v26 count])
    {
      goto LABEL_20;
    }

    v27 = *(*(a1 + 64) + 8);
    v28 = *(a1 + 40);
    v29 = [*(a1 + 32) string];
    LODWORD(v28) = [v28 range:*(v27 + 32) hasValidPrefixCharacterForString:{*(v27 + 40), v29}];

    if (!v28)
    {
LABEL_21:
      v43 = *(*(a1 + 56) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v18;
      v45 = v18;

      goto LABEL_22;
    }

    v30 = [v18 entities];
    v31 = [v30 count];

    v32 = *(*(a1 + 64) + 8);
    v33 = [*(a1 + 32) string];
    v34 = [CKMentionsUtilities range:*(v32 + 32) isPrefixedWithAtForString:*(v32 + 40), v33];

    v35 = [CKMentionsUtilities range:*(*(*(a1 + 64) + 8) + 32) containsEmptySelectedRange:*(*(*(a1 + 64) + 8) + 40), *(a1 + 72), *(a1 + 80)];
    v36 = [*(a1 + 40) attributedString:*(a1 + 32) shouldAddAutoCompleteAttributeForRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
    v26 = [*(a1 + 40) _nodeIdForMentionNode:v18];
    if (v31 == 1 && v34 && v36)
    {
      v37 = *(a1 + 32);
      v38 = *(a1 + 48);
      v39 = *(*(a1 + 64) + 8);
      v40 = *(v39 + 32);
      v41 = *(v39 + 40);
      BYTE1(v46) = 1;
      LOBYTE(v46) = v35;
    }

    else
    {
      if (!v34 || !v35)
      {
        if (v35)
        {
          [CKMentionsUtilities configureAttributedString:*(a1 + 32) inTextView:*(a1 + 48) forUnconfirmedMentionInRange:*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)];
        }

        goto LABEL_20;
      }

      v37 = *(a1 + 32);
      v38 = *(a1 + 48);
      v42 = *(*(a1 + 64) + 8);
      v40 = *(v42 + 32);
      v41 = *(v42 + 40);
      LOWORD(v46) = 1;
    }

    [CKMentionsUtilities configureAttributedString:v37 inTextView:v38 forDirectMentionInRange:v40 forChildNode:v41 nodeId:v18 addingVisualStyling:v26 shouldAddAutoComplete:v46];
LABEL_20:

    goto LABEL_21;
  }

  v10 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:0];
  v11 = [v10 objectForKeyedSubscript:v8];

  v12 = [*(a1 + 40) entityHandles];
  v13 = [v12 containsObject:v11];

  if (v13)
  {
    [CKMentionsUtilities configureAttributedString:*(a1 + 32) inTextView:*(a1 + 48) forConfirmedMentionInRange:v47 needingAnimation:v48, 0];
  }

  else
  {
    [CKMentionsUtilities removeMentionsAtIndex:a3 onAttributedString:*(a1 + 32) inTextView:*(a1 + 48)];
  }

LABEL_22:
}

- (void)checkForMentionsInAttributedString:(id)string inTextView:(id)view
{
  viewCopy = view;
  stringCopy = string;
  selectedRange = [viewCopy selectedRange];
  [(CKMentionsController *)self checkForMentionsInAttributedString:stringCopy textViewToUpdate:viewCopy restoreSelectedRange:selectedRange, v8];
}

- (void)updateTextViewIfNecessary:(id)necessary withAttributedString:(id)string
{
  stringCopy = string;
  necessaryCopy = necessary;
  selectedRange = [necessaryCopy selectedRange];
  [(CKMentionsController *)self updateTextViewIfNecessary:necessaryCopy withAttributedString:stringCopy selectedRange:selectedRange, v8];
}

- (void)updateTextViewIfNecessary:(id)necessary withAttributedString:(id)string selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  textView = [(CKMentionsController *)self textView];
  markedTextRange = [textView markedTextRange];

  if (!markedTextRange)
  {
    textView2 = [(CKMentionsController *)self textView];
    attributedText = [textView2 attributedText];
    v13 = [stringCopy isEqual:attributedText];

    if (v13)
    {
      mentionsAnimationController = [(CKMentionsController *)self mentionsAnimationController];
      [mentionsAnimationController updateMentionAttributes:stringCopy];
    }

    else
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __85__CKMentionsController_updateTextViewIfNecessary_withAttributedString_selectedRange___block_invoke;
      v19 = &unk_1E72ECCD0;
      selfCopy = self;
      v21 = stringCopy;
      v22 = location;
      v23 = length;
      v15 = _Block_copy(&v16);
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v15[2](v15);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v15);
      }
    }
  }
}

uint64_t __85__CKMentionsController_updateTextViewIfNecessary_withAttributedString_selectedRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsUpdatingMentionAttributedText:1];
  v2 = [*(a1 + 32) textView];
  [v2 setAttributedText:*(a1 + 40)];

  v3 = [*(a1 + 32) mentionsAnimationController];
  [v3 updateMentionAttributes:*(a1 + 40)];

  v4 = [*(a1 + 32) textView];
  [v4 setSelectedRange:{*(a1 + 48), *(a1 + 56)}];

  v5 = [*(a1 + 32) textView];
  v6 = [*(a1 + 32) textView];
  [v6 bounds];
  [v5 setNeedsDisplayInRect:?];

  v7 = *(a1 + 32);
  v8 = [v7 textView];
  [v7 updateTypingAttributesIfNeededForTextView:v8];

  v9 = *(a1 + 32);

  return [v9 setIsUpdatingMentionAttributedText:0];
}

- (void)updateTypingAttributesIfNeededForTextView:(id)view
{
  viewCopy = view;
  textColor = [viewCopy textColor];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  entryFieldTextColor = [theme entryFieldTextColor];
  v7 = [textColor isEqual:entryFieldTextColor];

  if ((v7 & 1) == 0)
  {
    typingAttributes = [viewCopy typingAttributes];
    v9 = [typingAttributes mutableCopy];

    v10 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v10 theme];
    entryFieldTextColor2 = [theme2 entryFieldTextColor];
    [v9 setObject:entryFieldTextColor2 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    [viewCopy setTypingAttributes:v9];
  }
}

- (void)didFinishAnimatingMentionWithAnimationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];
  v7 = [attributedText mutableCopy];

  mentionsAnimationController = [(CKMentionsController *)self mentionsAnimationController];
  finishedAnimationIdentifiersDuringMarkedText = [mentionsAnimationController finishedAnimationIdentifiersDuringMarkedText];

  v10 = *MEMORY[0x1E69A70D0];
  v11 = [v7 length];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__CKMentionsController_didFinishAnimatingMentionWithAnimationIdentifier___block_invoke;
  v19[3] = &unk_1E72F14E0;
  v12 = identifierCopy;
  v20 = v12;
  v13 = finishedAnimationIdentifiersDuringMarkedText;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  [v14 enumerateAttribute:v10 inRange:0 options:v11 usingBlock:{2, v19}];
  textView2 = [(CKMentionsController *)self textView];
  markedTextRange = [textView2 markedTextRange];

  if (markedTextRange)
  {
    [(CKMentionsAnimationController *)self->_mentionsAnimationController markAnimationIdentifierAsFinishedButPendingAmongMarkedText:v12];
    [(CKMentionsAnimationController *)self->_mentionsAnimationController updateMentionAttributes:v14];
  }

  textView3 = [(CKMentionsController *)self textView];
  [(CKMentionsController *)self updateTextViewIfNecessary:textView3 withAttributedString:v14];

  textEffectsDelegate = [(CKMentionsController *)self textEffectsDelegate];
  [textEffectsDelegate mentionsControllerDidFinishAnimation:self];
}

uint64_t __73__CKMentionsController_didFinishAnimatingMentionWithAnimationIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (([a2 isEqualToString:*(a1 + 32)] & 1) != 0 || (result = objc_msgSend(*(a1 + 40), "containsObject:", *(a1 + 32)), result))
  {
    v8 = *(a1 + 48);
    v9 = *MEMORY[0x1E69A70D0];

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

- (void)resetStyleInAttributedString:(id)string inTextView:(id)view andApplyStyleUsingBlock:(id)block
{
  stringCopy = string;
  viewCopy = view;
  blockCopy = block;
  if ([(CKMentionsController *)self allowsMentions])
  {
    if (![(CKMentionsController *)self isUpdatingMentionAttributedText])
    {
      markedTextRange = [viewCopy markedTextRange];

      if (!markedTextRange)
      {
        v23[0] = [(CKMentionsController *)self lastFoundMentionRange];
        v23[1] = v12;
        [CKMentionsUtilities configureAttributedStringForMentionsChecking:stringCopy excludingRange:v23];
        [(CKMentionsController *)self dismissPaddleOverlayIfNecessaryForText:stringCopy];
        v13 = *MEMORY[0x1E69A70F8];
        string = [stringCopy string];
        v15 = [string length];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __88__CKMentionsController_resetStyleInAttributedString_inTextView_andApplyStyleUsingBlock___block_invoke;
        v20[3] = &unk_1E72F14E0;
        v20[4] = self;
        v16 = stringCopy;
        v21 = v16;
        v17 = viewCopy;
        v22 = v17;
        [v16 enumerateAttribute:v13 inRange:0 options:v15 usingBlock:{2, v20}];

        blockCopy[2](blockCopy);
        selectedRange = [v17 selectedRange];
        [(CKMentionsController *)self updateTextViewIfNecessary:v17 withAttributedString:v16 selectedRange:selectedRange, v19];
      }
    }
  }
}

void __88__CKMentionsController_resetStyleInAttributedString_inTextView_andApplyStyleUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    v8 = [*(a1 + 32) entityHandles];
    v9 = [v8 containsObject:v10];

    if (v9)
    {
      [CKMentionsUtilities configureAttributedString:*(a1 + 40) inTextView:*(a1 + 48) forConfirmedMentionInRange:a3 needingAnimation:a4, 0];
    }

    else
    {
      [CKMentionsUtilities removeMentionsAtIndex:a3 onAttributedString:*(a1 + 40) inTextView:*(a1 + 48)];
    }

    v7 = v10;
  }
}

- (void)insertionPointEnteredRange:(_NSRange)range forMention:(id)mention withEntities:(id)entities
{
  length = range.length;
  location = range.location;
  mentionCopy = mention;
  entitiesCopy = entities;
  [(CKMentionsController *)self setLastFoundMentionRange:location, length];
  [(CKMentionsController *)self setCurrentMentionSuggestions:entitiesCopy];
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];
  v13 = [attributedText mutableCopy];

  textView2 = [(CKMentionsController *)self textView];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CKMentionsController_insertionPointEnteredRange_forMention_withEntities___block_invoke;
  v18[3] = &unk_1E72F1508;
  v23 = location;
  v24 = length;
  v19 = v13;
  v20 = entitiesCopy;
  selfCopy = self;
  v22 = mentionCopy;
  v15 = mentionCopy;
  v16 = entitiesCopy;
  v17 = v13;
  [(CKMentionsController *)self resetStyleInAttributedString:v17 inTextView:textView2 andApplyStyleUsingBlock:v18];
}

void __75__CKMentionsController_insertionPointEnteredRange_forMention_withEntities___block_invoke(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = [*(a1 + 32) attribute:*MEMORY[0x1E69A70F8] atIndex:v2 effectiveRange:v18];

  if (!v4)
  {
    if ([*(a1 + 40) count])
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 32) string];
      LODWORD(v5) = [v5 range:v2 hasValidPrefixCharacterForString:{v3, v6}];

      if (v5)
      {
        v7 = [*(a1 + 56) characterAtIndex:0];
        v8 = [*(a1 + 48) textView];
        v9 = [v8 selectedRange];
        v11 = [CKMentionsUtilities range:v2 containsEmptySelectedRange:v3, v9, v10];

        if (v7 == 64 && v11)
        {
          v12 = v3 - 1;
          if (!v12)
          {
            __75__CKMentionsController_insertionPointEnteredRange_forMention_withEntities___block_invoke_cold_1();
          }

          v13 = [*(a1 + 48) _nodeIdForMentionNode:0];
          v14 = *(a1 + 32);
          v15 = [*(a1 + 48) textView];
          LOWORD(v17) = 1;
          [CKMentionsUtilities configureAttributedString:v14 inTextView:v15 forDirectMentionInRange:v2 + 1 forChildNode:v12 nodeId:0 addingVisualStyling:v13 shouldAddAutoComplete:v17];

          goto LABEL_11;
        }

        if (v11)
        {
          v16 = *(a1 + 32);
          v13 = [*(a1 + 48) textView];
          [CKMentionsUtilities configureAttributedString:v16 inTextView:v13 forUnconfirmedMentionInRange:v2, v3];
LABEL_11:
        }
      }
    }
  }
}

- (void)showMentionSuggestionsForEntities:(id)entities replacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  entitiesCopy = entities;
  if ([entitiesCopy count])
  {
    [(CKMentionsController *)self setCurrentMentionSuggestions:entitiesCopy];
    [(CKMentionsController *)self setRangeOfTappedMention:location, length];
    [(CKMentionsController *)self setShowMentionSuggestions:1 animated:1 completion:0];
  }
}

- (void)didTapMentionAtCharacterIndex:(double)index
{
  if ([(CKMentionsController *)self allowsMentions])
  {
    textView = [(CKMentionsController *)self textView];
    attributedText = [textView attributedText];
    v7 = [attributedText mutableCopy];

    v15 = 0;
    v16 = 0;
    v8 = [v7 attribute:*MEMORY[0x1E69A70C8] atIndex:index longestEffectiveRange:&v15 inRange:{0, objc_msgSend(v7, "length")}];
    if (([v7 attribute:*MEMORY[0x1E69A70F8] existsInRange:{v15, v16}] & 1) == 0)
    {
      v9 = [v7 attribute:*MEMORY[0x1E69A7110] atIndex:v15 effectiveRange:0];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        string = [v7 string];
        v11 = [string substringWithRange:{v15, v16}];
      }

      if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
      {
        currentMentionSuggestions = [(CKMentionsController *)self currentMentionSuggestions];
      }

      else
      {
        v14 = [(CKMentionsController *)self entitiesForKey:v11];
        if ([v14 count])
        {
          currentMentionSuggestions = [v14 allObjects];
        }

        else
        {
          currentMentionSuggestions = 0;
        }
      }

      [(CKMentionsController *)self showMentionSuggestionsForEntities:currentMentionSuggestions replacementRange:v15, v16];
    }
  }
}

- (void)configureAttributedString:(id)string inTextView:(id)view forMentionOverrideInRange:(_NSRange)range shouldOverride:(BOOL)override
{
  overrideCopy = override;
  length = range.length;
  location = range.location;
  stringCopy = string;
  *&v22 = [view selectedRange];
  *(&v22 + 1) = v12;
  v21 = v22;
  if (location < [stringCopy length])
  {
    textView = [(CKMentionsController *)self textView];
    [(CKMentionsController *)self replaceAttributedText:stringCopy inTextView:textView atIndex:location updatedSelectedRange:&v22 replacementRange:&v21];

    if (length >= 2)
    {
      v14 = location + length;
      v15 = [stringCopy length];
      if (v14 >= v15 - 1)
      {
        v14 = v15 - 1;
      }

      textView2 = [(CKMentionsController *)self textView];
      [(CKMentionsController *)self replaceAttributedText:stringCopy inTextView:textView2 atIndex:v14 updatedSelectedRange:&v22 replacementRange:&v21];
    }
  }

  textView3 = [(CKMentionsController *)self textView];
  [(CKMentionsController *)self updateTextViewIfNecessary:textView3 withAttributedString:stringCopy selectedRange:v22];

  if (overrideCopy)
  {
    v18 = [stringCopy attributedSubstringFromRange:v21];
    string = [v18 string];

    if ([string length] && objc_msgSend(string, "characterAtIndex:", 0) == 64)
    {
      [stringCopy addAttribute:*MEMORY[0x1E69A7108] value:string range:v21];
    }
  }

  textView4 = [(CKMentionsController *)self textView];
  [(CKMentionsController *)self checkForMentionsInAttributedString:stringCopy inTextView:textView4];
}

- (void)replaceAttributedText:(id)text inTextView:(id)view atIndex:(unint64_t)index updatedSelectedRange:(_NSRange *)range replacementRange:(_NSRange *)replacementRange
{
  textCopy = text;
  viewCopy = view;
  v20 = 0;
  v21 = 0;
  v13 = [textCopy attribute:*MEMORY[0x1E69A70F8] atIndex:index longestEffectiveRange:&v20 inRange:{0, objc_msgSend(textCopy, "length")}];

  if (v13)
  {
    v14 = [textCopy attribute:*MEMORY[0x1E69A7100] atIndex:v20 longestEffectiveRange:0 inRange:{v20, v21}];
    v15 = [v14 length];
    v16 = v20;
    if (v15 && replacementRange->location > v20)
    {
      v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14];
      [textCopy deleteCharactersInRange:{v20, v21}];
      [textCopy insertAttributedString:v17 atIndex:v20];
      v18 = v20;
      range->location = [v17 length] + v18;
      v19 = [v17 length];
      v21 = v19;
      replacementRange->location = v20;
      replacementRange->length = v19;

      v16 = v20;
    }

    [CKMentionsUtilities configureAttributedString:textCopy inTextView:viewCopy forNoMentionInRange:v16, v21];
  }
}

- (BOOL)shouldUpdateMentionsInRange:(_NSRange)range withReplacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (-[CKMentionsController allowsMentions](self, "allowsMentions") && (location | length || [textCopy length]))
  {
    textView = [(CKMentionsController *)self textView];
    textCopy = [(CKMentionsController *)self shouldUpdateMentionsInTextView:textView inRange:location withReplacementText:length, textCopy];
  }

  else
  {
    textCopy = 1;
  }

  return textCopy;
}

- (BOOL)shouldUpdateMentionsInTextView:(id)view inRange:(_NSRange)range withReplacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  attributedText = [viewCopy attributedText];
  v12 = [attributedText mutableCopy];

  v13 = [textCopy length];
  v14 = [textCopy length];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = length > 1;
  }

  v16 = v15;
  if (!v13 && length == 1 && [CKMentionsUtilities attributedString:v12 containsConfirmedMentionInRange:location, 1])
  {
    v17 = 0;
    v18 = 1;
LABEL_14:
    [(CKMentionsController *)self configureAttributedString:v12 inTextView:viewCopy forMentionOverrideInRange:location shouldOverride:length, v18];
    goto LABEL_16;
  }

  if (!v16)
  {
    v17 = 1;
    goto LABEL_16;
  }

  v17 = 1;
  if ([CKMentionsUtilities attributedString:v12 containsConfirmedMentionInRange:location, length])
  {
    v18 = 0;
    goto LABEL_14;
  }

LABEL_16:

  return v17;
}

- (BOOL)attributedString:(id)string shouldAddAutoCompleteAttributeForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = *MEMORY[0x1E69A7108];
  stringCopy = string;
  v8 = [stringCopy attribute:v6 atIndex:location effectiveRange:0];
  string = [stringCopy string];

  v10 = [string substringWithRange:{location, length}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 isEqualToString:v10] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)insertMentionByName:(id)name
{
  nameCopy = name;
  allowsMentions = [(CKMentionsController *)self allowsMentions];
  v5 = nameCopy;
  if (allowsMentions)
  {
    mentionsSafeText = [nameCopy mentionsSafeText];
    if ([nameCopy length] && objc_msgSend(mentionsSafeText, "length"))
    {
      textView = [(CKMentionsController *)self textView];
      v8 = [(CKMentionsController *)self entitiesForKey:mentionsSafeText];
      v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:nameCopy];
      if ([v8 count] == 1)
      {
        anyObject = [v8 anyObject];
        defaultIMHandle = [anyObject defaultIMHandle];
        v12 = [defaultIMHandle ID];

        if ([v12 length])
        {
          v13 = [nameCopy length];
          [v9 ck_removeAnimatedTextEffectsFromRange:{0, v13}];
          [v9 addAttribute:*MEMORY[0x1E69A70F8] value:v12 range:{0, v13}];
          [CKMentionsUtilities configureAttributedString:v9 inTextView:textView forConfirmedMentionInRange:0 needingAnimation:v13, 1];
        }
      }

      else
      {
        +[CKMentionsUtilities configureAttributedString:inTextView:forUnconfirmedMentionInRange:](CKMentionsUtilities, "configureAttributedString:inTextView:forUnconfirmedMentionInRange:", v9, textView, 0, [nameCopy length]);
      }

      if ([(CKMentionsController *)self languageHasSpaces])
      {
        v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" "];
        [CKMentionsUtilities configureAttributedString:v14 inTextView:textView forNoMentionInRange:0, 1];
        [v9 appendAttributedString:v14];
        attributedText = [textView attributedText];
        v16 = [attributedText mutableCopy];

        selectedRange = [textView selectedRange];
        [v16 insertAttributedString:v9 atIndex:selectedRange + v18];
        [textView setAttributedText:v16];
        [(CKMentionsController *)self updateTextViewIfNecessary:textView withAttributedString:v16];
      }
    }

    v5 = nameCopy;
  }
}

- (void)insertMentionWithEntity:(id)entity replacementRange:(_NSRange)range fallbackName:(id)name source:(unsigned __int8)source
{
  sourceCopy = source;
  length = range.length;
  location = range.location;
  entityCopy = entity;
  nameCopy = name;
  [(CKMentionsController *)self setShowMentionSuggestions:0 animated:1 completion:0];
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];
  v15 = [attributedText mutableCopy];

  [v15 ck_removeAnimatedTextEffectsFromRange:{location, length}];
  v16 = nameCopy;
  v17 = v16;
  if (sourceCopy)
  {
    v18 = [v15 attribute:*MEMORY[0x1E69A7110] atIndex:location effectiveRange:0];
    v19 = v18;
    v17 = v16;
    if (v18)
    {
      v17 = v18;
    }
  }

  if (!v17)
  {
    [CKMentionsController insertMentionWithEntity:replacementRange:fallbackName:source:];
  }

  v20 = [v15 attributedSubstringFromRange:{location, length}];
  string = [v20 string];

  [v15 replaceCharactersInRange:location withString:{length, v17}];
  v33 = location;
  v34 = [v17 length];
  [CKMentionsUtilities replaceAttributedString:v15 withEntity:entityCopy fromInputText:v17 inRange:location updatingRange:v34, &v33];
  textView2 = [(CKMentionsController *)self textView];
  [CKMentionsUtilities configureAttributedString:v15 inTextView:textView2 withOriginalText:string inRange:v33, v34];

  textView3 = [(CKMentionsController *)self textView];
  [CKMentionsUtilities configureAttributedString:v15 inTextView:textView3 forConfirmedMentionInRange:v33 needingAnimation:v34, 1];

  textView4 = [(CKMentionsController *)self textView];
  [textView4 selectedRange];
  v26 = v25;

  v27 = v34 + v33;
  if (sourceCopy)
  {
    if (v27 == [v15 length] && -[CKMentionsController languageHasSpaces](self, "languageHasSpaces"))
    {
      v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" "];
      v31 = v34;
      v32 = v33;
      textView5 = [(CKMentionsController *)self textView];
      [CKMentionsUtilities configureAttributedString:v28 inTextView:textView5 forNoMentionInRange:0, 1];

      [v15 insertAttributedString:v28 atIndex:v31 + v32];
      v27 = [v15 length];
    }

    else
    {
      v27 = v34 + v33;
    }
  }

  textView6 = [(CKMentionsController *)self textView];
  [(CKMentionsController *)self checkForMentionsInAttributedString:v15 textViewToUpdate:textView6 restoreSelectedRange:v27, v26];
}

- (void)suggestionViewDidSelectEntity:(id)entity
{
  entityCopy = entity;
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];

  rangeOfTappedMention = [(CKMentionsController *)self rangeOfTappedMention];
  v8 = v7;
  if (v7 > [attributedText length])
  {
    v8 = [attributedText length];
  }

  if (v8 + rangeOfTappedMention > [attributedText length])
  {
    v8 = [attributedText length] - rangeOfTappedMention;
  }

  v9 = [attributedText attributedSubstringFromRange:{rangeOfTappedMention, v8}];
  string = [v9 string];

  [(CKMentionsController *)self insertMentionWithEntity:entityCopy replacementRange:rangeOfTappedMention fallbackName:v8 source:string, 1];
}

- (void)acceptAutomaticMentionConfirmation
{
  if (!+[CKMentionsUtilities supportsSupplementalLexiconMentions])
  {
    textView = [(CKMentionsController *)self textView];
    attributedText = [textView attributedText];
    v4 = [attributedText mutableCopy];

    [(CKMentionsController *)self confirmAutomaticMention:v4 inTextView:textView isSending:1 selectedRange:0];
    [(CKMentionsController *)self updateTextViewIfNecessary:textView withAttributedString:v4];
  }
}

- (void)_enumerateAllAutomaticConfirmedMentionsInAttributedString:(id)string usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__CKMentionsController__enumerateAllAutomaticConfirmedMentionsInAttributedString_usingBlock___block_invoke;
  v8[3] = &unk_1E72F1530;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [string ck_textKit2_enumerateAllAutomaticConfirmedMentionsUsingBlock:v8];
}

void __93__CKMentionsController__enumerateAllAutomaticConfirmedMentionsInAttributedString_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69A70E0];
  v4 = a2;
  v11 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A70F0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A70E8]];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [[CKMentionAutoCompleteNodeId alloc] initWithKeys:v7];
  v9 = [*(a1 + 32) _nodeForMentionNodeId:v8];
  v10 = [[CKMentionAutoCompleteAttribute alloc] initWithMentionEntityNode:v9 originalText:v5 displayText:v11];
  (*(*(a1 + 40) + 16))();
}

- (void)confirmAutomaticMention:(id)mention inTextView:(id)view isSending:(BOOL)sending selectedRange:(_NSRange *)range
{
  mentionCopy = mention;
  viewCopy = view;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CKMentionsController_confirmAutomaticMention_inTextView_isSending_selectedRange___block_invoke;
  v14[3] = &unk_1E72F1558;
  sendingCopy = sending;
  v15 = viewCopy;
  selfCopy = self;
  v17 = mentionCopy;
  rangeCopy = range;
  v12 = mentionCopy;
  v13 = viewCopy;
  [(CKMentionsController *)self _enumerateAllAutomaticConfirmedMentionsInAttributedString:v12 usingBlock:v14];
}

void __83__CKMentionsController_confirmAutomaticMention_inTextView_isSending_selectedRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v7 = a2;
  if (*(a1 + 64))
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) selectedRange];
    v8 = [CKMentionsUtilities range:a3 containsEmptySelectedRange:a4, v9, v10];
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [v7 mentionEntityNode];
  v14 = [v11 attributedString:v12 nextCharacterRangeFromRange:a3 containsPossibleChild:{a4, v13}];

  if (!v8 && (v14 & 1) == 0)
  {
    v15 = [*(a1 + 48) attributedSubstringFromRange:{a3, a4}];
    v16 = [v15 string];

    v17 = [v7 displayText];
    v18 = [v16 localizedCompare:v17];

    v19 = *(a1 + 48);
    if (v18)
    {
      [v19 removeAttribute:*MEMORY[0x1E69A70D8] range:{a3, a4}];
    }

    else
    {
      v20 = [v19 attribute:*MEMORY[0x1E69A7108] atIndex:a3 longestEffectiveRange:0 inRange:{a3, a4}];
      v21 = [v20 isEqualToString:v16];

      if ((v21 & 1) == 0)
      {
        [*(a1 + 48) removeAttribute:*MEMORY[0x1E69A70D8] range:{a3, a4}];
        v22 = [v7 mentionEntityNode];
        v23 = [v22 entities];

        v24 = [*(a1 + 48) attributedSubstringFromRange:{a3, a4}];
        v25 = [v24 string];

        v26 = [v23 anyObject];
        v27 = *(a1 + 48);
        v28 = [v7 originalText];
        [CKMentionsUtilities replaceAttributedString:v27 withEntity:v26 fromInputText:v28 inRange:a3 updatingRange:a4, &v32];

        v29 = *(a1 + 56);
        if (v29)
        {
          *v29 += v33 - a4;
        }

        if (*(a1 + 64))
        {
          v30 = 0;
          v31 = off_1E72E5000;
        }

        else
        {
          v31 = off_1E72E5000;
          [CKMentionsUtilities configureAttributedString:*(a1 + 48) inTextView:*(a1 + 32) withOriginalText:v25 inRange:v32, v33];
          v30 = *(a1 + 64) ^ 1;
        }

        [(__objc2_class *)v31[39] configureAttributedString:*(a1 + 48) inTextView:*(a1 + 32) forConfirmedMentionInRange:v32 needingAnimation:v33, v30 & 1];
      }
    }
  }
}

- (BOOL)attributedString:(id)string nextCharacterRangeFromRange:(_NSRange)range containsPossibleChild:(id)child
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  childCopy = child;
  v10 = location + length;
  if ([stringCopy length] >= v10 + 1)
  {
    string = [stringCopy string];
    v13 = [string substringWithRange:{v10, 1}];
    mentionsSafeText = [v13 mentionsSafeText];

    children = [childCopy children];
    v16 = [children objectForKey:mentionsSafeText];

    possibleEntities = [v16 possibleEntities];
    entities = [childCopy entities];
    anyObject = [entities anyObject];
    v20 = [possibleEntities containsObject:anyObject];

    if (v20)
    {
      entities2 = [childCopy entities];
      anyObject2 = [entities2 anyObject];
      defaultIMHandle = [anyObject2 defaultIMHandle];
      firstName = [defaultIMHandle firstName];

      entities3 = [childCopy entities];
      anyObject3 = [entities3 anyObject];
      defaultIMHandle2 = [anyObject3 defaultIMHandle];
      lastName = [defaultIMHandle2 lastName];

      if ([CKEntity string:firstName hasPrefix:mentionsSafeText]|| [CKEntity string:lastName hasPrefix:mentionsSafeText])
      {
        LOBYTE(v11) = 1;
        goto LABEL_10;
      }
    }

    if (!v16)
    {
      LOBYTE(v11) = 0;
      goto LABEL_12;
    }

    firstName = [v16 possibleEntities];
    lastName = [childCopy entities];
    anyObject4 = [lastName anyObject];
    v11 = [firstName containsObject:anyObject4] ^ 1;

LABEL_10:
LABEL_12:

    goto LABEL_13;
  }

  LOBYTE(v11) = 0;
LABEL_13:

  return v11;
}

- (void)reloadMentionsData
{
  [(CKMentionsController *)self updateMentionsAssociations];

  [(CKMentionsController *)self checkForMentions];
}

- (void)reloadMentionsDataIfNecessary
{
  if (+[CKMentionsUtilities supportsSupplementalLexiconMentions]&& !self->_mentionsLexicon)
  {

    [(CKMentionsController *)self reloadMentionsData];
  }
}

- (void)setShowMentionSuggestions:(BOOL)suggestions animated:(BOOL)animated completion:(id)completion
{
  suggestionsCopy = suggestions;
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = +[CKMentionsUtilities isPredictionBarAvailableForMentions];
  currentMentionSuggestions = [(CKMentionsController *)self currentMentionSuggestions];
  v10 = [currentMentionSuggestions count];

  if (v8 && v10 <= 1)
  {
    textView4 = IMLogHandleForCategory();
    if (os_log_type_enabled(textView4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = @"NO";
      v24 = 2112;
      v25 = @"YES";
      _os_log_impl(&dword_19020E000, textView4, OS_LOG_TYPE_INFO, "Not showing mentions paddle isDisambiguation:%@, isPredictionBarEnabled:%@", buf, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([(CKMentionsController *)self allowsMentions]&& [(CKMentionsController *)self showingMentionsSuggestions]!= suggestionsCopy)
  {
    [(CKMentionsController *)self setShowingMentionsSuggestions:suggestionsCopy];
    [(CKMentionsController *)self setPreventShowingCalloutMenu:suggestionsCopy];
    if (suggestionsCopy)
    {
      textView = [(CKMentionsController *)self textView];
      [textView setNeedsLayout];

      textView2 = [(CKMentionsController *)self textView];
      [textView2 layoutIfNeeded];

      textView3 = [(CKMentionsController *)self textView];
      [textView3 _dismissEditMenu];

      v15 = CKIsRunningInMacCatalyst() == 0;
      paddleOverlayView = [(CKMentionsController *)self paddleOverlayView];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __70__CKMentionsController_setShowMentionSuggestions_animated_completion___block_invoke;
      v20[3] = &unk_1E72ED1F0;
      v21 = completionCopy;
      [paddleOverlayView showPaddleAnimated:v15 completion:v20];

      goto LABEL_15;
    }

    [(CKPaddleOverlayView *)self->_paddleOverlayView dismiss];
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard textInputTraitsDidChange];

    textView4 = [(CKMentionsController *)self textView];
    [textView4 setNeedsLayout];
    goto LABEL_12;
  }

LABEL_13:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_15:
}

uint64_t __70__CKMentionsController_setShowMentionSuggestions_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateMentionsAssociations
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(CKMentionsController *)self allowsMentions])
  {
    v3 = objc_alloc(MEMORY[0x1E695DFA8]);
    conversation = [(CKMentionsController *)self conversation];
    recipients = [conversation recipients];
    v6 = [v3 initWithCapacity:{objc_msgSend(recipients, "count")}];
    [(CKMentionsController *)self setEntityHandles:v6];

    if (+[CKMentionsUtilities supportsSupplementalLexiconMentions])
    {
      [(CKMentionsController *)self _populateSupplementalLexiconAsynchronously];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      conversation2 = [(CKMentionsController *)self conversation];
      recipients2 = [conversation2 recipients];

      v9 = [recipients2 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(recipients2);
            }

            defaultIMHandle = [*(*(&v37 + 1) + 8 * i) defaultIMHandle];
            v14 = [defaultIMHandle ID];

            if ([v14 length])
            {
              entityHandles = [(CKMentionsController *)self entityHandles];
              [entityHandles addObject:v14];
            }
          }

          v10 = [recipients2 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(CKMentionsController *)self setEntityDictionary:v16];

      v17 = objc_alloc_init(CKMentionEntityNode);
      [(CKMentionsController *)self setEntityTree:v17];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      conversation3 = [(CKMentionsController *)self conversation];
      recipients2 = [conversation3 recipients];

      v19 = [recipients2 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(recipients2);
            }

            v23 = *(*(&v33 + 1) + 8 * j);
            if ([v23 isMentionable])
            {
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              mentionTokens = [v23 mentionTokens];
              v25 = [mentionTokens countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v30;
                do
                {
                  for (k = 0; k != v26; ++k)
                  {
                    if (*v30 != v27)
                    {
                      objc_enumerationMutation(mentionTokens);
                    }

                    [(CKMentionsController *)self associateEntity:v23 withKey:*(*(&v29 + 1) + 8 * k)];
                  }

                  v26 = [mentionTokens countByEnumeratingWithState:&v29 objects:v41 count:16];
                }

                while (v26);
              }
            }
          }

          v20 = [recipients2 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)_populateSupplementalLexiconAsynchronously
{
  v58[7] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptReplyPreviewContextContactImageDiameter];
  v5 = v4;

  v6 = MEMORY[0x1E695D0B0];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v39 = [v6 scopeWithPointSize:0 scale:0 rightToLeft:v5 style:{v5, v8}];

  v9 = objc_alloc(MEMORY[0x1E695D098]);
  defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
  v38 = [v9 initWithSettings:defaultSettings];

  v11 = *MEMORY[0x1E695C240];
  v58[0] = *MEMORY[0x1E695C230];
  v58[1] = v11;
  v12 = *MEMORY[0x1E695C340];
  v58[2] = *MEMORY[0x1E695C328];
  v58[3] = v12;
  v13 = *MEMORY[0x1E695C358];
  v58[4] = *MEMORY[0x1E695C348];
  v58[5] = v13;
  descriptorForRequiredKeys = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
  v58[6] = descriptorForRequiredKeys;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:7];

  v15 = dispatch_group_create();
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.Messages.CKMessageEntryView.renderingQueue", v16);

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = IMLogHandleForCategory();
  selfCopy = self;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    conversation = [(CKMentionsController *)self conversation];
    recipients = [conversation recipients];
    *buf = 134217984;
    v57 = [recipients count];
    _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Dispatching %llu entities to be rendered for mentions", buf, 0xCu);

    self = selfCopy;
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v49 = 0u;
  conversation2 = [(CKMentionsController *)self conversation];
  recipients2 = [conversation2 recipients];

  obj = recipients2;
  v23 = [recipients2 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        v28 = [v27 cnContactWithKeys:v37];
        v29 = [v28 copy];

        v53 = @"CKSupplementalItemEntityAttributeName";
        v54 = v27;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__CKMentionsController__populateSupplementalLexiconAsynchronously__block_invoke;
        block[3] = &unk_1E72F1580;
        v44 = v29;
        v45 = v38;
        v46 = v39;
        v47 = v30;
        v48 = v17;
        v31 = v30;
        v32 = v29;
        dispatch_group_async(v15, queue, block);
      }

      v24 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v24);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __66__CKMentionsController__populateSupplementalLexiconAsynchronously__block_invoke_240;
  v40[3] = &unk_1E72EB8D0;
  v41 = v17;
  v42 = selfCopy;
  v33 = v17;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v40);
}

void __66__CKMentionsController__populateSupplementalLexiconAsynchronously__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Creating supplemental item for contact %@ on background queue", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E69DD770]) initWithContact:*(a1 + 32)];
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v7 = [v5 avatarImageForContacts:v6 scope:*(a1 + 48)];
  [v4 setIcon:v7];

  [v4 setUserInfo:*(a1 + 56)];
  [*(a1 + 64) addObject:v4];
}

uint64_t __66__CKMentionsController__populateSupplementalLexiconAsynchronously__block_invoke_240(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Rendering group complete, assigning supplemental lexicon with %llu items", &v5, 0xCu);
  }

  return [*(a1 + 40) _updateMentionsLexiconWithItems:*(a1 + 32)];
}

- (void)_updateMentionsLexiconWithItems:(id)items
{
  itemsCopy = items;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [objc_alloc(MEMORY[0x1E69DD768]) initWithItems:itemsCopy searchPrefixes:1];

  [(CKMentionsController *)self setMentionsLexicon:v5];
  mentionsLexicon = [(CKMentionsController *)self mentionsLexicon];
  textView = [(CKMentionsController *)self textView];
  [textView setSupplementalLexicon:mentionsLexicon];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  textView2 = [(CKMentionsController *)self textView];
  [textView2 setSupplementalLexiconAmbiguousItemIcon:v8];

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard textInputTraitsDidChange];
}

- (void)associateEntity:(id)entity withKey:(id)key
{
  entityCopy = entity;
  keyCopy = key;
  if (keyCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__28;
    v23 = __Block_byref_object_dispose__28;
    entityTree = [(CKMentionsController *)self entityTree];
    v8 = [keyCopy length];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__CKMentionsController_associateEntity_withKey___block_invoke;
    v16[3] = &unk_1E72F15A8;
    v18 = &v19;
    v9 = entityCopy;
    v17 = v9;
    [keyCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v16}];
    [v20[5] addEntity:v9];
    defaultIMHandle = [v9 defaultIMHandle];
    v11 = [defaultIMHandle ID];

    if ([v11 length])
    {
      entityHandles = [(CKMentionsController *)self entityHandles];
      [entityHandles addObject:v11];
    }

    entityDictionary = [(CKMentionsController *)self entityDictionary];
    v14 = [entityDictionary objectForKey:keyCopy];

    if (v14)
    {
      [v14 addObject:v9];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v9, 0}];
    }

    entityDictionary2 = [(CKMentionsController *)self entityDictionary];
    [entityDictionary2 setObject:v14 forKey:keyCopy];

    _Block_object_dispose(&v19, 8);
  }
}

void __48__CKMentionsController_associateEntity_withKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) children];
  v4 = [v3 objectForKey:v7];

  if (!v4)
  {
    v4 = objc_alloc_init(CKMentionEntityNode);
    [(CKMentionEntityNode *)v4 setKey:v7];
    [*(*(*(a1 + 40) + 8) + 40) addChild:v4];
  }

  [(CKMentionEntityNode *)v4 addPossibleEntity:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)entitiesForKey:(id)key
{
  keyCopy = key;
  entityDictionary = [(CKMentionsController *)self entityDictionary];
  mentionsSafeText = [keyCopy mentionsSafeText];

  v7 = [entityDictionary objectForKey:mentionsSafeText];

  return v7;
}

- (void)didSetAttributedTextOfTextView
{
  mentionsAnimationController = [(CKMentionsController *)self mentionsAnimationController];
  [mentionsAnimationController didSetAttributedTextOfTextView];
}

- (void)insertSupplementalItem:(id)item forString:(id)string replacementRange:(id)range
{
  itemCopy = item;
  stringCopy = string;
  v9 = [(CKMentionsController *)self _rangeFromUITextRange:range];
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    userInfo = [itemCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"CKSupplementalItemEntityAttributeName"];
  }

  else
  {
    v13 = 0;
  }

  [(CKMentionsController *)self insertMentionWithEntity:v13 replacementRange:v9 fallbackName:v11 source:stringCopy, 0];
  if ([(CKMentionsController *)self allowsMentions])
  {
    if (![(CKMentionsController *)self isUpdatingMentionAttributedText])
    {
      [(CKMentionsController *)self setShowMentionSuggestions:0 animated:1 completion:0];
    }

    [(CKMentionsController *)self checkForMentions];
  }
}

- (void)insertionPointEnteredRange:(id)range string:(id)string supplementalItems:(id)items
{
  itemsCopy = items;
  stringCopy = string;
  v10 = [(CKMentionsController *)self _rangeFromUITextRange:range];
  v12 = v11;
  v14 = [itemsCopy __imArrayByApplyingBlock:&__block_literal_global_250];

  [(CKMentionsController *)self insertionPointEnteredRange:v10 forMention:v12 withEntities:stringCopy, v14];
  if (![(CKMentionsController *)self showingMentionsSuggestions])
  {
    currentTappedCharacterIndex = [(CKMentionsController *)self currentTappedCharacterIndex];
    if (currentTappedCharacterIndex >= v10 && currentTappedCharacterIndex - v10 < v12)
    {
      [(CKMentionsController *)self didTapMentionAtCharacterIndex:currentTappedCharacterIndex];
      [(CKMentionsController *)self setCurrentTappedCharacterIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }
}

id __76__CKMentionsController_insertionPointEnteredRange_string_supplementalItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"CKSupplementalItemEntityAttributeName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertionPointExitedRangeWithSupplementalItems
{
  [(CKMentionsController *)self setLastFoundMentionRange:0x7FFFFFFFFFFFFFFFLL, 0];
  textView = [(CKMentionsController *)self textView];
  attributedText = [textView attributedText];
  v6 = [attributedText mutableCopy];

  textView2 = [(CKMentionsController *)self textView];
  [(CKMentionsController *)self resetStyleInAttributedString:v6 inTextView:textView2 andApplyStyleUsingBlock:&__block_literal_global_252];
}

- (void)chooseSupplementalItemToInsert:(id)insert replacementRange:(id)range completionHandler:(id)handler
{
  insertCopy = insert;
  handlerCopy = handler;
  v10 = [(CKMentionsController *)self _rangeFromUITextRange:range];
  v12 = v11;
  v13 = [insertCopy __imArrayByApplyingBlock:&__block_literal_global_254];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke_2;
  v20 = &unk_1E72F1618;
  v21 = insertCopy;
  v22 = handlerCopy;
  v14 = insertCopy;
  v15 = handlerCopy;
  v16 = _Block_copy(&v17);
  [(CKMentionsController *)self setDidSelectEntityCompletionHandler:v16, v17, v18, v19, v20];
  [(CKMentionsController *)self showMentionSuggestionsForEntities:v13 replacementRange:v10, v12];
}

id __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"CKSupplementalItemEntityAttributeName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke_3;
    v9[3] = &unk_1E72F15F0;
    v10 = v3;
    v6 = [v5 indexOfObjectPassingTest:v9];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke_2_cold_1();
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

BOOL __90__CKMentionsController_chooseSupplementalItemToInsert_replacementRange_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"CKSupplementalItemEntityAttributeName"];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 == *(a1 + 32);

  return v6;
}

- (void)cancelChooseSupplementalItemToInsert
{
  [(CKMentionsController *)self setDidSelectEntityCompletionHandler:0];
  [(CKMentionsController *)self setShowMentionSuggestions:0 animated:1 completion:0];

  [(CKMentionsController *)self checkForMentions];
}

- (void)localeChanged
{
  currentInputMode = [MEMORY[0x1E69DD0E8] currentInputMode];
  if (currentInputMode)
  {
    v4 = MEMORY[0x1E695DF58];
    v9 = currentInputMode;
    primaryLanguage = [currentInputMode primaryLanguage];
    v6 = [v4 localeWithLocaleIdentifier:primaryLanguage];
    languageCode = [v6 languageCode];

    v8 = +[CKMentionsUtilities languagesWithoutSpaces];
    self->_languageHasSpaces = [v8 containsObject:languageCode] ^ 1;

    currentInputMode = v9;
  }

  else
  {
    self->_languageHasSpaces = 0;
  }
}

- (void)didDismissPaddleOverlayView:(id)view
{
  viewCopy = view;
  [(CKMentionsController *)self setPreventShowingCalloutMenu:0];
  paddleOverlayView = self->_paddleOverlayView;

  if (paddleOverlayView == viewCopy)
  {
    self->_paddleOverlayView = 0;
  }

  if (self->_mentionSuggestionView)
  {
    didSelectEntityCompletionHandler = [(CKMentionsController *)self didSelectEntityCompletionHandler];

    if (didSelectEntityCompletionHandler)
    {
      didSelectEntityCompletionHandler2 = [(CKMentionsController *)self didSelectEntityCompletionHandler];
      [(CKMentionsController *)self setDidSelectEntityCompletionHandler:0];
      didSelectEntityCompletionHandler2[2](didSelectEntityCompletionHandler2, 0);
    }

    [(CKMentionsController *)self setShowingMentionsSuggestions:0];
    mentionSuggestionView = self->_mentionSuggestionView;
    self->_mentionSuggestionView = 0;
  }
}

- (CKMentionsControllerTextEffectsDelegate)textEffectsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  return WeakRetained;
}

- (_NSRange)rangeOfTappedMention
{
  length = self->_rangeOfTappedMention.length;
  location = self->_rangeOfTappedMention.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)lastFoundMentionRange
{
  length = self->_lastFoundMentionRange.length;
  location = self->_lastFoundMentionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end