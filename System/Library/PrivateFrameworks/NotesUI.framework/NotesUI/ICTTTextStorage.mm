@interface ICTTTextStorage
+ (double)listItemGlyphPointSizeForUnorderedListStyle:(unsigned int)a3 zoomFactor:(double)a4;
+ (id)bulletTextAttributesWithTextFont:(id)a3 paragraphStyle:(id)a4 zoomFactor:(double)a5;
+ (id)filteredAttributedSubstring:(id)a3 fromRange:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6 fixAttachments:(BOOL)a7 insertListMarkers:(BOOL)a8;
+ (id)removeDataDetectorLinksForAttributedString:(id)a3;
+ (id)removeTextAttachmentsForAttributedString:(id)a3 translateICTTFont:(BOOL)a4;
+ (id)standardizedAttributedStringFromAttributedString:(id)a3 withStyler:(id)a4 fixAttachments:(BOOL)a5 translateICTTFont:(BOOL)a6 context:(id)a7;
+ (void)fixAttachmentsForRenderingInAttributedString:(id)a3 forPlainText:(BOOL)a4 forStandardizedText:(BOOL)a5;
- (BOOL)hasAnyTextViewWithDarkAppearance;
- (BOOL)hasNamedStyle:(unsigned int)a3 inRange:(_NSRange)a4;
- (BOOL)isDeletingContentAttachmentWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4;
- (BOOL)isDeletingDictationAttachmentWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4;
- (BOOL)isEditingOrConvertingMarkedText:(BOOL)a3;
- (BOOL)isForTextKit2;
- (BOOL)isRightToLeftAtIndex:(int64_t)a3;
- (BOOL)mergeableStringIsEqualAfterSerialization:(id)a3;
- (BOOL)shouldBreakUndoCoalescingWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4;
- (BOOL)textViewHasMarkedText:(id)a3;
- (BOOL)validateIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (BOOL)wantsTimestampUpdates;
- (ICOutlineController)outlineController;
- (ICTTTextStorage)initWithAttributedString:(id)a3 replicaID:(id)a4;
- (ICTTTextStorage)initWithAttributedString:(id)a3 replicaID:(id)a4 sourceZoomController:(id)a5 keepSourceZoomController:(BOOL)a6 existingStyler:(id)a7;
- (ICTTTextStorage)initWithData:(id)a3 replicaID:(id)a4;
- (ICTTTextStorage)initWithDocument:(id)a3;
- (ICTTTextUndoTarget)overrideUndoTarget;
- (ICTTTextUndoTarget)undoTarget;
- (NSNumber)currentTimestamp;
- (NSSet)textLayoutManagers;
- (NSSet)textViews;
- (NSUUID)replicaID;
- (_NSRange)beforeEndEditedRange;
- (_NSRange)lastUndoEditRange;
- (_NSRange)logicalRangeForLocation:(unint64_t)a3;
- (_NSRange)safeCharacterRangeForRange:(_NSRange)a3;
- (_NSRange)ttEditedRange;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6;
- (id)attributedSubstringFromRange:(_NSRange)a3;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5;
- (id)copyDataForUTI:(id)a3 range:(_NSRange)a4 persistenceHelper:(id)a5;
- (id)correctParagraphStyleReuseForRange:(_NSRange)a3 withNewAttributedString:(id)a4;
- (id)customPasteboardDataFromRange:(_NSRange)a3 persistenceHelper:(id)a4;
- (id)dataFromRange:(_NSRange)a3 documentAttributes:(id)a4 error:(id *)a5;
- (id)editAtIndex:(unint64_t)a3;
- (id)filteredAttributedStringForUTI:(id)a3 range:(_NSRange)a4;
- (id)filteredAttributedSubstringFromRange:(_NSRange)a3;
- (id)filteredAttributedSubstringFromRange:(_NSRange)a3 insertListMarkers:(BOOL)a4;
- (id)itemProviderForRange:(_NSRange)a3 andNote:(id)a4;
- (id)paragraphUUIDsInRange:(_NSRange)a3;
- (id)plainTextParagraphsFromRange:(_NSRange)a3;
- (id)savedSelectionWithSelectionAffinity:(unint64_t)a3;
- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)a3 context:(id)a4;
- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)a3 styler:(id)a4 context:(id)a5;
- (id)standardizedAttributedStringFixingTextAttachmentsInContext:(id)a3;
- (id)string;
- (unint64_t)attributeOptions;
- (unint64_t)length;
- (unint64_t)mergeWithDocument:(id)a3;
- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5;
- (void)addTextLayoutManager:(id)a3;
- (void)addUndoCommand:(id)a3;
- (void)applyUndoGroup:(id)a3;
- (void)applyUndoWithBlock:(id)a3;
- (void)beginEditing;
- (void)beginSkippingTimestampUpdates;
- (void)beginTemporaryAttributeEditing;
- (void)breakUndoCoalescing;
- (void)convertNSTablesToTabs:(id)a3;
- (void)coordinateAccess:(id)a3;
- (void)coordinateEditing:(id)a3;
- (void)coordinateReading:(id)a3;
- (void)dd_makeLinksForResultsInAttributesOfType:(unint64_t)a3 context:(id)a4 range:(_NSRange)a5;
- (void)dd_resetResults;
- (void)editWithAttributeOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)endEditing;
- (void)endSkippingTimestampUpdates;
- (void)endTemporaryAttributeEditing;
- (void)endTemporaryAttributes;
- (void)enumerateEditsInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)executeDelayedFixupAfterEditing;
- (void)fixupAfterEditing;
- (void)fixupAfterEditingDelayedToEndOfRunLoop;
- (void)forceFixupAfterEditingIfDelayed;
- (void)handleDidUndoRedoNotification:(id)a3;
- (void)preReplaceCharactersInRange:(_NSRange)a3 withStringLength:(unint64_t)a4;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)removeAttribute:(id)a3 range:(_NSRange)a4;
- (void)removeTextLayoutManager:(id)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)replaceWithDocument:(id)a3;
- (void)resetHighlightsAttributedString;
- (void)resetTTEdits;
- (void)resetUndoManager;
- (void)restoreAttributedString:(id)a3;
- (void)restoreSelection:(id)a3;
- (void)saveSelectionDuringBlock:(id)a3 affinity:(unint64_t)a4;
- (void)setAttributeOptions:(unint64_t)a3;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
- (void)setTimestamp:(id)a3 range:(_NSRange)a4;
- (void)styleTextInRange:(_NSRange)a3;
- (void)suppressingShiftStateUpdatesIfNecessaryWithSelection:(void *)a3 perform:;
@end

@implementation ICTTTextStorage

- (void)resetHighlightsAttributedString
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = [(NSMutableAttributedString *)self->_attributedString string];
  v5 = [v3 initWithString:v4];
  highlightsAttributedString = self->_highlightsAttributedString;
  self->_highlightsAttributedString = v5;

  attributedString = self->_attributedString;
  v8 = *MEMORY[0x1E69DB650];
  v9 = [(NSMutableAttributedString *)attributedString ic_range];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke;
  v16[3] = &unk_1E846A170;
  v16[4] = self;
  [(NSMutableAttributedString *)attributedString enumerateAttribute:v8 inRange:v9 options:v10 usingBlock:0, v16];
  v11 = self->_attributedString;
  v12 = *MEMORY[0x1E69B75D8];
  v13 = [(NSMutableAttributedString *)v11 ic_range];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke_2;
  v15[3] = &unk_1E846A170;
  v15[4] = self;
  [(NSMutableAttributedString *)v11 enumerateAttribute:v12 inRange:v13 options:v14 usingBlock:0, v15];
}

uint64_t __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(*(result + 32) + 112) addAttribute:*MEMORY[0x1E69B7960] value:a2 range:{a3, a4}];
  }

  return result;
}

uint64_t __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(*(result + 32) + 112) addAttribute:*MEMORY[0x1E69B75D8] value:a2 range:{a3, a4}];
  }

  return result;
}

- (void)resetTTEdits
{
  self->_ttEditedRange = xmmword_1D4433FC0;
  self->_ttEditedMask = 0;
  self->_ttChangeInLength = 0;
}

- (unint64_t)length
{
  v2 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  v3 = [v2 attributedString];
  v4 = [v3 length];

  return v4;
}

- (void)beginSkippingTimestampUpdates
{
  v3 = [(ICTTTextStorage *)self skipTimestampUpdatesCount]+ 1;

  [(ICTTTextStorage *)self setSkipTimestampUpdatesCount:v3];
}

- (id)string
{
  v2 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  v3 = [v2 attributedString];

  v4 = [v3 string];

  return v4;
}

- (void)beginEditing
{
  [(ICTTTextStorage *)self setEditingCount:[(ICTTTextStorage *)self editingCount]+ 1];
  v4.receiver = self;
  v4.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v4 beginEditing];
  v3 = [(ICTTTextStorage *)self mergeableString];
  [v3 beginEditing];
}

- (void)endEditing
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(ICTTTextStorage *)self mergeableString];
  [v3 endEditing];

  v4 = [(ICTTTextStorage *)self changeInLength];
  v5 = [(ICTTTextStorage *)self editedRange];
  v7 = v6;
  v8 = [(ICTTTextStorage *)self editedMask];
  [(ICTTTextStorage *)self setBeforeEndEditedRange:v5, v7];
  if ([(ICTTTextStorage *)self isEndingEditing])
  {
    [(ICTTTextStorage *)self beginSkippingTimestampUpdates];
    v37.receiver = self;
    v37.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v37 endEditing];
    [(ICTTTextStorage *)self endSkippingTimestampUpdates];
  }

  else
  {
    [(ICTTTextStorage *)self setIsEndingEditing:1];
    [(ICTTTextStorage *)self beginSkippingTimestampUpdates];
    v37.receiver = self;
    v37.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v37 endEditing];
    [(ICTTTextStorage *)self endSkippingTimestampUpdates];
    [(ICTTTextStorage *)self setIsEndingEditing:0];
  }

  if ([(ICTTTextStorage *)self editingCount])
  {
    [(ICTTTextStorage *)self setEditingCount:[(ICTTTextStorage *)self editingCount]- 1];
  }

  if (![(ICTTTextStorage *)self editingCount])
  {
    if (![(ICTTTextStorage *)self isFixing]&& v8)
    {
      p_ttEditedRange = &self->_ttEditedRange;
      location = self->_ttEditedRange.location;
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        p_ttEditedRange->location = v5;
        self->_ttEditedRange.length = v7;
      }

      else
      {
        if (v5 >= location)
        {
          v11 = self->_ttEditedRange.location;
        }

        else
        {
          v11 = v5;
        }

        v12 = self->_ttEditedRange.length + location;
        if (v7 - v4 + v5 > v12)
        {
          v12 = v7 - v4 + v5;
        }

        p_ttEditedRange->location = v11;
        self->_ttEditedRange.length = v4 - v11 + v12;
        v4 += self->_ttChangeInLength;
      }

      self->_ttChangeInLength = v4;
      [(ICTTTextStorage *)self setTtEditedMask:[(ICTTTextStorage *)self ttEditedMask]| v8];
      if (![(ICTTTextStorage *)self isApplyingUndoCommand]&& ![(ICTTTextStorage *)self isEditingTemporaryAttributes])
      {
        [(ICTTTextStorage *)self fixupAfterEditingDelayedToEndOfRunLoop];
      }
    }

    [(NSMutableArray *)self->_deletedRanges removeAllObjects];
    v13 = [(ICTTTextStorage *)self undoCommands];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(ICTTTextStorage *)self coalescingUndoGroup];

      if (!v15)
      {
        v16 = [(ICTTTextStorage *)self undoTarget];
        v17 = [v16 newCoalescingUndoGroup];
        [(ICTTTextStorage *)self setCoalescingUndoGroup:v17];

        v18 = [(ICTTTextStorage *)self undoManager];
        v19 = [(ICTTTextStorage *)self coalescingUndoGroup];
        [v18 registerUndoWithTarget:v16 selector:sel_applyUndoGroup_ object:v19];

        v20 = [(ICTTTextStorage *)self undoManager];
        v21 = [v20 undoActionName];
        v22 = [v21 length];

        if (!v22)
        {
          v23 = [(ICTTTextStorage *)self undoManager];
          v24 = __ICLocalizedFrameworkString_impl(@"Typing", @"Typing", 0, 1);
          [v23 setActionName:v24];
        }
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = [(ICTTTextStorage *)self undoCommands];
      v26 = [v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v34;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v33 + 1) + 8 * i);
            v31 = [(ICTTTextStorage *)self coalescingUndoGroup];
            [v31 addCommand:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v27);
      }

      v32 = [(ICTTTextStorage *)self undoCommands];
      [v32 removeAllObjects];
    }
  }
}

- (void)endSkippingTimestampUpdates
{
  [(ICTTTextStorage *)self setSkipTimestampUpdatesCount:[(ICTTTextStorage *)self skipTimestampUpdatesCount]- 1];
  if ([(ICTTTextStorage *)self skipTimestampUpdatesCount]< 0)
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICTTTextStorage *)v3 endSkippingTimestampUpdates];
    }
  }
}

- (void)beginTemporaryAttributeEditing
{
  [(ICTTTextStorage *)self beginTemporaryAttributes];

  [(ICTTTextStorage *)self beginEditing];
}

- (BOOL)wantsTimestampUpdates
{
  v3 = [(ICTTTextStorage *)self wantsUndoCommands];
  if (v3)
  {
    if ([(ICTTTextStorage *)self isSkippingTimestampUpdates]|| [(ICTTTextStorage *)self isEditingTemporaryAttributes]|| [(ICTTTextStorage *)self disableUndoCoalesceBreaking])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(ICTTTextStorage *)self isFixing];
    }
  }

  return v3;
}

- (void)endTemporaryAttributeEditing
{
  [(ICTTTextStorage *)self endEditing];

  [(ICTTTextStorage *)self endTemporaryAttributes];
}

- (void)endTemporaryAttributes
{
  temporaryAttributeEditing = self->_temporaryAttributeEditing;
  if (temporaryAttributeEditing)
  {
    v3 = temporaryAttributeEditing - 1;
    self->_temporaryAttributeEditing = v3;
    self->_isEditingTemporaryAttributes = v3 != 0;
  }
}

- (NSSet)textViews
{
  if ([(ICTTTextStorage *)self isForTextKit2])
  {
    v3 = [(ICTTTextStorage *)self textLayoutManagers];
    v4 = [v3 ic_compactMap:&__block_literal_global_142];
  }

  else
  {
    v5 = MEMORY[0x1E695DFD8];
    v3 = [(ICTTTextStorage *)self layoutManagers];
    v6 = [v3 ic_flatMap:&__block_literal_global_146];
    v4 = [v5 setWithArray:v6];
  }

  return v4;
}

- (BOOL)isForTextKit2
{
  if (ICInternalSettingsIsTextKit2Enabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v2 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (NSSet)textLayoutManagers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(ICTTTextStorage *)self textLayoutManagerReferences];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 object];

        if (v11)
        {
          v12 = [v10 object];
          [v3 addObject:v12];
        }

        else
        {
          v12 = [(ICTTTextStorage *)self textLayoutManagerReferences];
          [v12 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];

  return v13;
}

id __28__ICTTTextStorage_textViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 textContainer];

  v4 = [v3 textView];
  v5 = [v4 superview];
  v6 = ICDynamicCast();

  return v6;
}

- (void)forceFixupAfterEditingIfDelayed
{
  if ([(ICTTTextStorage *)self pendingFixupAfterEditing])
  {
    v3 = [(ICTTTextStorage *)self wantsUndoCommands];
    [(ICTTTextStorage *)self setWantsUndoCommands:[(ICTTTextStorage *)self delayedFixupAfterEditingWantsUndoCommand]];
    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    [(ICTTTextStorage *)self fixupAfterEditing];
    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:0];

    [(ICTTTextStorage *)self setWantsUndoCommands:v3];
  }
}

- (BOOL)hasAnyTextViewWithDarkAppearance
{
  v2 = [(ICTTTextStorage *)self textViews];
  v3 = [v2 ic_containsObjectPassingTest:&__block_literal_global_42];

  return v3;
}

uint64_t __51__ICTTTextStorage_hasAnyTextViewWithDarkAppearance__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 ic_isDark];

  return v3;
}

- (ICTTTextStorage)initWithAttributedString:(id)a3 replicaID:(id)a4
{
  v6 = a3;
  v7 = [(ICTTTextStorage *)self initWithData:0 replicaID:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(ICTTTextStorage *)v7 isForTextKit2];
    v10 = off_1E8466318;
    if (!v9)
    {
      v10 = off_1E84663E0;
    }

    v11 = objc_alloc_init(*v10);
    [(ICTTTextStorage *)v8 setStyler:v11];

    [(ICTTTextStorage *)v8 setConvertAttributes:1];
    [(ICTTTextStorage *)v8 setWantsUndoCommands:0];
    [(ICTTTextStorage *)v8 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v8 length], v6];
    [(ICTTTextStorage *)v8 fixupAfterEditing];
    [(ICTTTextStorage *)v8 setConvertAttributes:0];
  }

  return v8;
}

- (ICTTTextStorage)initWithAttributedString:(id)a3 replicaID:(id)a4 sourceZoomController:(id)a5 keepSourceZoomController:(BOOL)a6 existingStyler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [(ICTTTextStorage *)self initWithData:0 replicaID:a4];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_8;
  }

  if (!v14)
  {
    if ([(ICTTTextStorage *)v15 isForTextKit2])
    {
      v26 = ICTK2TextController;
    }

    else
    {
      v26 = ICTextController;
    }

    v27 = objc_alloc_init(v26);
    [(ICTTTextStorage *)v16 setStyler:v27];

    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(ICTTTextStorage *)v15 setStyler:v14];
  if (v13)
  {
LABEL_4:
    objc_opt_class();
    v17 = [(ICTTTextStorage *)v16 styler];
    v18 = ICDynamicCast();
    [v18 setZoomController:v13];
  }

LABEL_5:
  [(ICTTTextStorage *)v16 setConvertAttributes:1];
  [(ICTTTextStorage *)v16 setWantsUndoCommands:0];
  [(ICTTTextStorage *)v16 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v16 length], v12];
  v19 = [(ICTTTextStorage *)v16 styler];
  v20 = [(ICTTTextStorage *)v16 editedRange];
  [v19 styleText:v16 inRange:v20 fixModelAttributes:{v21, 1}];

  [(ICTTTextStorage *)v16 fixupAfterEditing];
  [(ICTTTextStorage *)v16 setConvertAttributes:0];
  if (v13 && !a6)
  {
    objc_opt_class();
    v22 = [(ICTTTextStorage *)v16 styler];
    v23 = ICDynamicCast();

    v24 = objc_alloc_init(objc_opt_class());
    [v23 setZoomController:v24];

    [v23 refreshTextStylingForTextStorage:v16 withTextController:v23];
  }

LABEL_8:

  return v16;
}

- (void)preReplaceCharactersInRange:(_NSRange)a3 withStringLength:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = [ICTTTextStorage isDeletingDictationAttachmentWithReplacementRange:"isDeletingDictationAttachmentWithReplacementRange:replacementLength:" replacementLength:?];
  v9 = [(ICTTTextStorage *)self shouldBreakUndoCoalescingWithReplacementRange:location replacementLength:length, a4];
  if ([(ICTTTextStorage *)self isPerformingAccessibilityUndoableTextInsertion]|| ![(ICTTTextStorage *)self isDragging]&& ![(ICTTTextStorage *)self isPausingUndoActions]&& !v8 && v9 && ![(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    [(ICTTTextStorage *)self breakUndoCoalescing];
  }

  if (length)
  {
    if (!a4)
    {
      v10 = [(ICTTTextStorage *)self deletedRanges];
      v11 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
      v15[0] = v11;
      v12 = [(ICTTTextStorage *)self attributedString];
      v13 = [v12 attributedSubstringFromRange:{location, length}];
      v15[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      [v10 addObject:v14];
    }
  }
}

- (BOOL)isDeletingDictationAttachmentWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4
{
  LOBYTE(v4) = 0;
  if (a3.length && !a4)
  {
    v5 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69DB5F8] atIndex:a3.location effectiveRange:?];
    v4 = ![ICTextAttachment textAttachmentIsContent:v5];
  }

  return v4;
}

- (BOOL)isEditingOrConvertingMarkedText:(BOOL)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(ICTTTextStorage *)self textViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ICTTTextStorage_UI__isEditingOrConvertingMarkedText___block_invoke;
  v8[3] = &unk_1E846A0A8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = *(v10 + 24);
  if (v3)
  {
    [(ICTTTextStorage *)self setPreviouslyHadMarkedText:*(v10 + 24)];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __55__ICTTTextStorage_UI__isEditingOrConvertingMarkedText___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) textViewHasMarkedText:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (BOOL)textViewHasMarkedText:(id)a3
{
  v3 = [a3 markedTextRange];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDeletingContentAttachmentWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4
{
  length = a3.length;
  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a3.length && !a4)
  {
    location = a3.location;
    v7 = *MEMORY[0x1E69DB5F8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__ICTTTextStorage_UI__isDeletingContentAttachmentWithReplacementRange_replacementLength___block_invoke;
    v9[3] = &unk_1E846A0D0;
    v9[4] = &v10;
    [(ICTTTextStorage *)self enumerateAttribute:v7 inRange:location options:length usingBlock:0, v9];
    v5 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v5 & 1;
}

uint64_t __89__ICTTTextStorage_UI__isDeletingContentAttachmentWithReplacementRange_replacementLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7 && [ICTextAttachment textAttachmentIsContent:v7])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)shouldBreakUndoCoalescingWithReplacementRange:(_NSRange)a3 replacementLength:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(ICTTTextStorage *)self isEditingOrConvertingMarkedText:1];
  v9 = [(ICTTTextStorage *)self lastUndoEditRange];
  v11 = location != v9 + v10 && location + length != [(ICTTTextStorage *)self lastUndoEditRange];
  if (location >= [(ICTTTextStorage *)self length])
  {
    v14 = 0;
  }

  else
  {
    v12 = [(ICTTTextStorage *)self string];
    [v12 rangeOfComposedCharacterSequenceAtIndex:location];
    v14 = v13;
  }

  v15 = length == v14 && a4 == 0;
  v16 = [(ICTTTextStorage *)self isDeletingContentAttachmentWithReplacementRange:location replacementLength:length, a4];
  if (a4)
  {
    v17 = length == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17 || v15)
  {
    v20 = !v8 && (v11 || v16);
  }

  else
  {
    v18 = length != 0;
    v19 = a4 == 0;
    if (!a4)
    {
      v18 = 0;
    }

    if (length <= v14)
    {
      v19 = 0;
    }

    v20 = (v18 || v19) && !v8;
  }

  if (![(ICTTTextStorage *)self isHandlingTextCheckingResults])
  {
    [(ICTTTextStorage *)self setLastUndoEditRange:location, a4];
  }

  return v20;
}

- (void)convertNSTablesToTabs:(id)a3
{
  v3 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3010000000;
  v13[3] = &unk_1D449C2A9;
  v14 = xmmword_1D4433FC0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__18;
  v11[4] = __Block_byref_object_dispose__18;
  v12 = 0;
  v4 = [v3 length];
  v5 = *MEMORY[0x1E69DB688];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ICTTTextStorage_UI__convertNSTablesToTabs___block_invoke;
  v7[3] = &unk_1E846A0F8;
  v9 = v13;
  v10 = v11;
  v6 = v3;
  v8 = v6;
  [v6 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v7}];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __45__ICTTTextStorage_UI__convertNSTablesToTabs___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v20 = v7;
    v8 = [v7 textBlocks];
    v9 = [v8 count];

    v7 = v20;
    if (v9)
    {
      v10 = [v20 textBlocks];
      v11 = [v10 lastObject];

      if (*(*(*(a1 + 40) + 8) + 32) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [*(*(*(a1 + 48) + 8) + 40) startingRow];
        if (v12 == [v11 startingRow])
        {
          v13 = [*(*(*(a1 + 48) + 8) + 40) table];
          v14 = [v11 table];

          if (v13 == v14)
          {
            v15 = [&stru_1F4F94F00 stringByPaddingToLength:objc_msgSend(*(*(*(a1 + 48) + 8) + 40) withString:"columnSpan") startingAtIndex:{@"\t", 0}];
            [*(a1 + 32) replaceCharactersInRange:*(*(*(a1 + 40) + 8) + 32) + *(*(*(a1 + 40) + 8) + 40) - 1 withString:{1, v15}];
          }
        }
      }

      if (a4)
      {
        v16 = [*(a1 + 32) string];
        v17 = [v16 characterAtIndex:a4 + a3 - 1];

        if (v17 == 10)
        {
          v18 = *(*(a1 + 40) + 8);
          *(v18 + 32) = a3;
          *(v18 + 40) = a4;
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
        }
      }

      v19 = [v20 mutableCopy];
      [v19 setAlignment:4];
      [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB688] value:v19 range:{a3, a4}];

      v7 = v20;
    }
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (location + length > -[ICTTTextStorage length](self, "length") || (-[ICTTTextStorage attributedString](self, "attributedString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, location + length > v9))
  {
    v10 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v132.location = location;
      v132.length = length;
      [ICTTTextStorage(UI) replaceCharactersInRange:v132 withAttributedString:self];
    }

    v11 = v10;
    goto LABEL_52;
  }

  v12 = [(ICTTTextStorage *)self styler];

  v112 = v12;
  if ([(ICTTTextStorage *)self parsePresentationIntents])
  {
    if (![(ICTTTextStorage *)self convertAttributes])
    {
      v13 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ICTTTextStorage(UI) replaceCharactersInRange:v13 withAttributedString:?];
      }

      [(ICTTTextStorage *)self setConvertAttributes:1];
    }

    if (!v12)
    {
      v14 = objc_alloc_init(ICTextController);
      [(ICTTTextStorage *)self setStyler:v14];
    }

    if ([ICMarkdownRepresentation isMarkdownAttributedString:v7])
    {
      v15 = [[ICMarkdownRepresentation alloc] initWithMarkdown:v7];
      [(ICMarkdownRepresentation *)v15 setKeepOriginalAttributes:1];
      [(ICMarkdownRepresentation *)v15 setFilterConflictingAttributes:1];
      v16 = [(ICMarkdownRepresentation *)v15 createRenderableAttributedString];

      v7 = v16;
    }
  }

  if ([(ICTTTextStorage *)self shouldRemoveLeadingWhitespaceForChecklistDrop])
  {
    [(ICTTTextStorage *)self setShouldRemoveLeadingWhitespaceForChecklistDrop:0];
    if (!length)
    {
      v17 = [(ICTTTextStorage *)self string];
      v18 = [v17 lineRangeForRange:{location, 0}];
      v20 = [v17 ic_substringWithRange:{v18, v19}];
      v21 = [v20 ic_leadingTrimmedString];
      v22 = [v20 length];
      v23 = v22 - [v21 length];
      if (v23)
      {
        location = v18;
      }

      length = v23;
    }
  }

  v24 = [(ICTTTextStorage *)self correctParagraphStyleReuseForRange:location withNewAttributedString:length, v7];

  -[ICTTTextStorage preReplaceCharactersInRange:withStringLength:](self, "preReplaceCharactersInRange:withStringLength:", location, length, [v24 length]);
  v25 = [(ICTTTextStorage *)self isEditingViaWritingTools];
  v26 = MEMORY[0x1E69B75F8];
  if (v25)
  {
    v27 = [v24 mutableCopy];
    v28 = *v26;
    v29 = [v27 ic_range];
    [v27 addAttribute:v28 value:&unk_1F4FC3DB0 range:{v29, v30}];
  }

  else
  {
    v31 = *MEMORY[0x1E69B75F8];
    v32 = [v24 ic_range];
    if (![v24 ic_containsAttribute:v31 inRange:{v32, v33}])
    {
      goto LABEL_25;
    }

    v27 = [v24 mutableCopy];
    v34 = *v26;
    v35 = [v27 ic_range];
    [v27 removeAttribute:v34 range:{v35, v36}];
  }

  v37 = [v27 copy];

  v24 = v37;
LABEL_25:
  v114 = [v24 copy];
  v38 = [v24 mutableCopy];
  v39 = *MEMORY[0x1E69B7618];
  v40 = [v38 ic_range];
  [v38 removeAttribute:v39 range:{v40, v41}];
  v10 = v38;

  v42 = [(ICTTTextStorage *)self filterPastedAttributes];
  v113 = length;
  if ([(ICTTTextStorage *)self convertAttributes]|| [(ICTTTextStorage *)self isEditingViaWritingTools]&& ![(ICTTTextStorage *)self isEditingPlaceholderForWritingTools])
  {
    v43 = [v10 mutableCopy];
    if ([(ICTTTextStorage *)self shouldConvertTablesToTabs])
    {
      [(ICTTTextStorage *)self convertNSTablesToTabs:v43];
    }

    else
    {
      v44 = [(ICTTTextStorage *)self styler];
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        v46 = [(ICTTTextStorage *)self styler];
        v47 = [(ICTTTextStorage *)self pasteboardTypes];
        [v46 convertNSTablesToICTables:v43 pasteboardTypes:v47 filterPastedAttributes:v42 isReadingSelectionFromPasteboard:{-[ICTTTextStorage isReadingSelectionFromPasteboard](self, "isReadingSelectionFromPasteboard")}];
      }
    }

    v108 = [v43 mutableCopy];
    if (v42)
    {
      v48 = [(ICTTTextStorage *)self styler];
      [v48 guessFontSizeThresholdsForTTStylesInAttributedString:v43];
    }

    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x2020000000;
    v131 = 0;
    v49 = [v43 ic_range];
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke;
    v129[3] = &unk_1E846A120;
    v129[4] = v130;
    [v43 enumerateAttributesInRange:v49 options:v50 usingBlock:{0, v129}];
    objc_opt_class();
    v51 = MEMORY[0x1E69B7600];
    v52 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    v53 = ICDynamicCast();

    v127[0] = 0;
    v127[1] = v127;
    v127[2] = 0x2020000000;
    v128 = 0;
    v54 = *v51;
    v55 = [v10 ic_range];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_2;
    v126[3] = &unk_1E846A0D0;
    v126[4] = v127;
    [v10 enumerateAttribute:v54 inRange:v55 options:v56 usingBlock:0, v126];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = 0;
    }

    else
    {
      v57 = v10;
    }

    v58 = [(ICTTTextStorage *)self styler];
    [v58 prepareIndentInformationInAttributedString:v10];

    v59 = [v43 ic_range];
    v61 = v60;
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_3;
    v119[3] = &unk_1E846A148;
    v119[4] = self;
    v125 = v42;
    v62 = v57;
    v120 = v62;
    v63 = v53;
    v121 = v63;
    v124 = v130;
    v64 = v109;
    v122 = v64;
    v65 = v43;
    v123 = v65;
    [v65 enumerateAttributesInRange:v59 options:v61 usingBlock:{0, v119}];
    v66 = [(ICTTTextStorage *)self styler];
    [v66 resetGuessedFontSizes];

    v67 = [(ICTTTextStorage *)self styler];
    [v67 resetIndentInformation];

    v7 = [v65 copy];
    v68 = [v64 copy];

    _Block_object_dispose(v127, 8);
    _Block_object_dispose(v130, 8);

    v114 = v68;
    length = v113;
  }

  else
  {
    v7 = v10;
  }

  if ([(ICTTTextStorage *)self wantsTimestampUpdates])
  {
    v69 = [v114 mutableCopy];
    v70 = *MEMORY[0x1E69B7618];
    v71 = [(ICTTTextStorage *)self currentTimestamp];
    v72 = [v69 ic_range];
    [v69 addAttribute:v70 value:v71 range:{v72, v73}];

    length = v113;
    v74 = [v69 copy];

    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    v114 = v74;
  }

  v75 = [(ICTTTextStorage *)self document];
  v76 = [v75 mergeableString];
  v77 = [v76 attributedString];
  v110 = [v77 attributedSubstringFromRange:{location, length}];

  v78 = [(ICTTTextStorage *)self delegate];
  LOBYTE(v76) = objc_opt_respondsToSelector();

  if (v76)
  {
    v79 = [(ICTTTextStorage *)self delegate];
    [v79 textStorageWillChange:self];
  }

  [(ICTTTextStorage *)self setDirectlyEditing:1, v110];
  objc_opt_class();
  v80 = [(ICTTTextStorage *)self attributedString];
  v81 = ICCheckedDynamicCast();
  [v81 replaceCharactersInRange:location withAttributedString:{length, v7}];

  v82 = objc_alloc(MEMORY[0x1E696AD40]);
  v83 = [v7 string];
  v84 = [v82 initWithString:v83];

  v85 = *MEMORY[0x1E69DB650];
  v86 = [v7 ic_range];
  v88 = v87;
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_4;
  v117[3] = &unk_1E846A170;
  v89 = v84;
  v118 = v89;
  [v7 enumerateAttribute:v85 inRange:v86 options:v88 usingBlock:{0, v117}];
  v90 = *MEMORY[0x1E69B75D8];
  v91 = [v7 ic_range];
  v93 = v92;
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_5;
  v115[3] = &unk_1E846A170;
  v94 = v89;
  v116 = v94;
  [v7 enumerateAttribute:v90 inRange:v91 options:v93 usingBlock:{0, v115}];
  objc_opt_class();
  v95 = [(ICTTTextStorage *)self highlightsAttributedString];
  v96 = ICCheckedDynamicCast();
  v97 = [v94 copy];
  [v96 replaceCharactersInRange:location withAttributedString:{v113, v97}];

  v98 = [(ICTTTextStorage *)self document];
  v99 = [v98 mergeableString];
  v11 = v114;
  [v99 replaceCharactersInRange:location withAttributedString:{v113, v114}];

  if ([(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    v100 = [(ICTTTextStorage *)self paragraphUUIDsInRange:location, v113];
    v101 = [(ICTTTextStorage *)self outlineController];
    [v101 expandUUIDs:v100];
  }

  if (!v112)
  {
    [(ICTTTextStorage *)self setStyler:0];
  }

  [(ICTTTextStorage *)self setDirectlyEditing:0];
  v102 = [(ICTTTextStorage *)self delegate];
  v103 = objc_opt_respondsToSelector();

  if (v103)
  {
    v104 = [(ICTTTextStorage *)self delegate];
    [v104 textStorage:self didReplace:v111 with:v7];
  }

  v105 = [(ICTTTextStorage *)self delegate];
  v106 = objc_opt_respondsToSelector();

  if (v106)
  {
    v107 = [(ICTTTextStorage *)self delegate];
    [v107 textStorageDidChange:self];
  }

  [(ICTTTextStorage *)self setHasEditedCharactersAfterTextSelection:1];

LABEL_52:
}

void __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
  v5 = ICDynamicCast();
  *(*(*(a1 + 32) + 8) + 24) |= v5 != 0;

  objc_opt_class();
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B7630]];

  v6 = ICDynamicCast();
  v7 = [v6 textLists];
  *(*(*(a1 + 32) + 8) + 24) = ([v7 count] | *(*(*(a1 + 32) + 8) + 24)) != 0;
}

void __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  if ([v8 isBlockQuote])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 styler];
  v10 = [v9 modelForStyleAttributes:v8 filterAttributes:*(a1 + 80) pasteboardAttributedString:*(a1 + 40)];

  v21 = [v10 mutableCopy];
  if (*(a1 + 48) && *(a1 + 80) == 1 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    objc_opt_class();
    v11 = MEMORY[0x1E69B7600];
    v12 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
    v13 = ICDynamicCast();
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E69B78B8]);
    }

    v17 = v16;

    [v17 setStyle:{objc_msgSend(*(a1 + 48), "style")}];
    v18 = [v17 copy];
    [v21 setObject:v18 forKeyedSubscript:*v11];
  }

  [*(a1 + 56) setAttributes:v21 range:{a3, a4}];
  v19 = [*(a1 + 32) styler];
  v20 = [v19 styleForModelAttributes:v21];

  [*(a1 + 64) setAttributes:v20 range:{a3, a4}];
}

uint64_t __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69B7960] value:a2 range:{a3, a4}];
  }

  return result;
}

uint64_t __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69B75D8] value:a2 range:{a3, a4}];
  }

  return result;
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (location + length <= -[ICTTTextStorage length](self, "length") && (-[ICTTTextStorage attributedString](self, "attributedString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, location + length <= v9))
  {
    -[ICTTTextStorage preReplaceCharactersInRange:withStringLength:](self, "preReplaceCharactersInRange:withStringLength:", location, length, [v7 length]);
    v11 = [(ICTTTextStorage *)self document];
    v12 = [v11 mergeableString];
    v13 = [v12 attributedString];
    v10 = [v13 attributedSubstringFromRange:{location, length}];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
    [(ICTTTextStorage *)self setDirectlyEditing:1];
    objc_opt_class();
    v15 = [(ICTTTextStorage *)self attributedString];
    v16 = ICCheckedDynamicCast();
    [v16 replaceCharactersInRange:location withString:{length, v7}];

    objc_opt_class();
    v17 = [(ICTTTextStorage *)self highlightsAttributedString];
    v18 = ICCheckedDynamicCast();
    [v18 replaceCharactersInRange:location withString:{length, v7}];

    v19 = [(ICTTTextStorage *)self document];
    v20 = [v19 mergeableString];
    [v20 replaceCharactersInRange:location withString:{length, v7}];

    if ([v7 length] && -[ICTTTextStorage wantsTimestampUpdates](self, "wantsTimestampUpdates"))
    {
      v21 = [(ICTTTextStorage *)self document];
      v22 = [v21 mergeableString];
      v23 = [v22 attributesAtIndex:location effectiveRange:0];
      v24 = [v23 mutableCopy];

      v25 = [(ICTTTextStorage *)self currentTimestamp];
      [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69B7618]];

      v26 = [(ICTTTextStorage *)self document];
      v27 = [v26 mergeableString];
      v28 = [v24 copy];
      [v27 setAttributes:v28 range:{location, objc_msgSend(v7, "length")}];
    }

    if ([(ICTTTextStorage *)self wantsTimestampUpdates])
    {
      [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    }

    [(ICTTTextStorage *)self setDirectlyEditing:0];
    v29 = [(ICTTTextStorage *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = [(ICTTTextStorage *)self delegate];
      [v31 textStorage:self didReplace:v10 with:v14];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32.location = location;
      v32.length = length;
      [ICTTTextStorage(UI) replaceCharactersInRange:v32 withString:self];
    }
  }
}

+ (id)bulletTextAttributesWithTextFont:(id)a3 paragraphStyle:(id)a4 zoomFactor:(double)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__onceToken != -1)
  {
    +[ICTTTextStorage(UI) bulletTextAttributesWithTextFont:paragraphStyle:zoomFactor:];
  }

  v10 = [[TTBulletTextAttributesCacheKey alloc] initWithTextFont:v8 paragraphStyle:v9 zoomFactor:a5];
  v11 = [bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__cache objectForKey:v10];
  if (!v11)
  {
    if ([v9 style] == 100)
    {
      [a1 listItemGlyphPointSizeForUnorderedListStyle:100 zoomFactor:a5];
      v12 = [MEMORY[0x1E69DB878] fontWithName:@"Menlo-Regular" size:?];
    }

    else
    {
      v13 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
      if ([v9 style] == 101)
      {
        [a1 listItemGlyphPointSizeForUnorderedListStyle:101 zoomFactor:a5];
        v12 = [v13 ic_fontWithSize:?];
      }

      else
      {
        [v8 pointSize];
        v14 = [v13 ic_fontWithSize:?];
        v12 = [v14 ic_fontWithTabularNumbers];
      }
    }

    v15 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
    [v15 setBaseWritingDirection:{objc_msgSend(v9, "layoutWritingDirection")}];
    v16 = *MEMORY[0x1E69DB688];
    v19[0] = *MEMORY[0x1E69DB648];
    v19[1] = v16;
    v20[0] = v12;
    v20[1] = v15;
    v19[2] = *MEMORY[0x1E69DB650];
    v17 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    v20[2] = v17;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    [bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__cache setObject:v11 forKey:v10];
  }

  return v11;
}

uint64_t __82__ICTTTextStorage_UI__bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor___block_invoke()
{
  bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__cache = objc_alloc_init(MEMORY[0x1E69B7A48]);

  return MEMORY[0x1EEE66BB8]();
}

+ (double)listItemGlyphPointSizeForUnorderedListStyle:(unsigned int)a3 zoomFactor:(double)a4
{
  if (a3 == 100)
  {
    v4 = 12.0;
    v5 = 26.0;
  }

  else if (a3 == 101)
  {
    v4 = 17.0;
    v5 = 32.0;
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICTTTextStorage(UI) listItemGlyphPointSizeForUnorderedListStyle:zoomFactor:]" simulateCrash:1 showAlert:0 format:{@"Expected bulleted or dashed list style", a4}];
    v5 = 0.0;
    v4 = 0.0;
  }

  v6 = [MEMORY[0x1E69DB878] ic_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] adjustedForDefaultSize:v4 maxSize:v5];
  [v6 pointSize];
  v8 = v7;

  return ceil(v8);
}

+ (id)standardizedAttributedStringFromAttributedString:(id)a3 withStyler:(id)a4 fixAttachments:(BOOL)a5 translateICTTFont:(BOOL)a6 context:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a7;
  v13 = a4;
  objc_opt_class();
  v14 = ICDynamicCast();

  v15 = [v11 mutableCopy];
  if (v14)
  {
    [v14 styleFontInAttributedString:v15 inRange:0 contentSizeCategory:{objc_msgSend(v11, "length"), *MEMORY[0x1E69DDC70]}];
    [v14 styleListsAndIndentsInAttributedString:v15 inRange:{0, objc_msgSend(v15, "length")}];
    v16 = [v15 copy];

    v17 = [v14 zoomController];
    [v17 zoomFactor];
    if (v18 != 1.0)
    {
      v19 = [v17 unzoomAttributedString:v16];

      v16 = v19;
    }

    v11 = v16;
  }

  LOBYTE(v25) = 1;
  v20 = +[ICTTTextStorage filteredAttributedSubstring:fromRange:forPlainText:forStandardizedText:fixAttachments:insertListMarkers:](ICTTTextStorage, "filteredAttributedSubstring:fromRange:forPlainText:forStandardizedText:fixAttachments:insertListMarkers:", v11, 0, [v11 length], 0, 1, v9, v25);
  v21 = [v20 ic_attributedStringByFlatteningInlineAttachmentsWithContext:v12];

  v22 = [ICTTTextStorage removeTextAttachmentsForAttributedString:v21 translateICTTFont:v8];

  v23 = [ICTTTextStorage removeDataDetectorLinksForAttributedString:v22];

  return v23;
}

- (id)standardizedAttributedStringFixingTextAttachmentsInContext:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextStorage *)self attributedString];
  v6 = -[ICTTTextStorage standardizedAttributedStringFixingTextAttachmentsForRange:context:](self, "standardizedAttributedStringFixingTextAttachmentsForRange:context:", 0, [v5 length], v4);

  return v6;
}

- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)a3 context:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTTTextStorage *)self styler];
  v9 = [(ICTTTextStorage *)self standardizedAttributedStringFixingTextAttachmentsForRange:location styler:length context:v8, v7];

  return v9;
}

- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)a3 styler:(id)a4 context:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v10 = a4;
  v11 = [(ICTTTextStorage *)self attributedString];
  v12 = [v11 attributedSubstringFromRange:{location, length}];

  v13 = [ICTTTextStorage standardizedAttributedStringFromAttributedString:v12 withStyler:v10 fixAttachments:1 translateICTTFont:1 context:v9];

  return v13;
}

- (id)dataFromRange:(_NSRange)a3 documentAttributes:(id)a4 error:(id *)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  if ([(ICTTTextStorage *)self filterSubstringAttributes])
  {
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB630]];
    v11 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location insertListMarkers:length, v10 != *MEMORY[0x1E69DB658]];
    v12 = [v11 dataFromRange:0 documentAttributes:objc_msgSend(v11 error:{"length"), v9, a5}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICTTTextStorage;
    v12 = [(ICTTTextStorage *)&v14 dataFromRange:location documentAttributes:length error:v9, a5];
  }

  return v12;
}

- (id)filteredAttributedSubstringFromRange:(_NSRange)a3 insertListMarkers:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v11) = a4;
  v9 = [ICTTTextStorage filteredAttributedSubstring:v8 fromRange:location forPlainText:length forStandardizedText:[(ICTTTextStorage *)self filterSubstringAttributesForPlainText] fixAttachments:0 insertListMarkers:1, v11];

  return v9;
}

- (id)filteredAttributedSubstringFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v9) = 1;
  v7 = [ICTTTextStorage filteredAttributedSubstring:v6 fromRange:location forPlainText:length forStandardizedText:[(ICTTTextStorage *)self filterSubstringAttributesForPlainText] fixAttachments:0 insertListMarkers:1, v9];

  return v7;
}

- (id)plainTextParagraphsFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v11) = 0;
  v6 = [ICTTTextStorage filteredAttributedSubstring:v5 fromRange:location forPlainText:length forStandardizedText:1 fixAttachments:0 insertListMarkers:1, v11];
  v7 = [v6 string];

  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];

  return v9;
}

- (id)attributedSubstringFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICTTTextStorage *)self attributedString];
  v14.location = [v6 ic_range];
  v15.location = location;
  v15.length = length;
  v7 = NSIntersectionRange(v14, v15);

  if ([(ICTTTextStorage *)self filterSubstringAttributes])
  {
    v8 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:v7.location, v7.length];
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = [(ICTTTextStorage *)self attributedString];
  v10 = [v9 string];

  if (!v10 || (-[ICTTTextStorage attributedString](self, "attributedString"), v11 = objc_claimAutoreleasedReturnValue(), [v11 attributedSubstringFromRange:{v7.location, v7.length}], v8 = objc_claimAutoreleasedReturnValue(), v11, !v8))
  {
LABEL_6:
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4F94F00 attributes:0];
  }

LABEL_7:

  return v8;
}

+ (id)removeDataDetectorLinksForAttributedString:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = *MEMORY[0x1E69DB670];
  v5 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__ICTTTextStorage_UI__removeDataDetectorLinksForAttributedString___block_invoke;
  v8[3] = &unk_1E846A170;
  v6 = v3;
  v9 = v6;
  [v6 ic_enumerateClampedAttribute:v4 inRange:0 options:v5 usingBlock:{0x100000, v8}];
  [v6 removeAttribute:*MEMORY[0x1E6999A70] range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

void __66__ICTTTextStorage_UI__removeDataDetectorLinksForAttributedString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) attribute:*MEMORY[0x1E6999A70] atIndex:a3 longestEffectiveRange:0 inRange:{a3, a4}];

  if (v7)
  {
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB670] range:{a3, a4}];
    v8 = *MEMORY[0x1E69DB650];
    if (!a3 || ([*(a1 + 32) attribute:*MEMORY[0x1E69DB650] atIndex:a3 - 1 effectiveRange:0], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    }

    v10 = v9;
    [*(a1 + 32) addAttribute:v8 value:v9 range:{a3, a4}];
  }
}

+ (id)removeTextAttachmentsForAttributedString:(id)a3 translateICTTFont:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 mutableCopy];
  v6 = *MEMORY[0x1E69DB5F8];
  v7 = [v5 length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ICTTTextStorage_UI__removeTextAttachmentsForAttributedString_translateICTTFont___block_invoke;
  v14[3] = &unk_1E846A198;
  v8 = v5;
  v15 = v8;
  [v8 ic_enumerateClampedAttribute:v6 inRange:0 options:v7 usingBlock:{0x100000, v14}];
  if (v4)
  {
    v9 = *MEMORY[0x1E69B75E0];
    v10 = [v8 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__ICTTTextStorage_UI__removeTextAttachmentsForAttributedString_translateICTTFont___block_invoke_2;
    v12[3] = &unk_1E846A1C0;
    v13 = v8;
    [v13 ic_enumerateClampedAttribute:v9 inRange:0 options:v10 usingBlock:{0x100000, v12}];
  }

  return v8;
}

void __82__ICTTTextStorage_UI__removeTextAttachmentsForAttributedString_translateICTTFont___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E69DB5F8];

    [v9 removeAttribute:v10 range:{a3, a4}];
  }
}

void __82__ICTTTextStorage_UI__removeTextAttachmentsForAttributedString_translateICTTFont___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v11 = ICCheckedDynamicCast();

  if (v11)
  {
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69B75E0] range:{a3, a4}];
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB648];
    v10 = [v11 nativeFontForStyle:3];
    [v8 addAttribute:v9 value:v10 range:{a3, a4}];
  }
}

+ (void)fixAttachmentsForRenderingInAttributedString:(id)a3 forPlainText:(BOOL)a4 forStandardizedText:(BOOL)a5
{
  v7 = a3;
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [v7 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__ICTTTextStorage_UI__fixAttachmentsForRenderingInAttributedString_forPlainText_forStandardizedText___block_invoke;
  v11[3] = &unk_1E846A1E8;
  v12 = v7;
  v13 = a4;
  v14 = a5;
  v10 = v7;
  [v10 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v11}];
}

void __101__ICTTTextStorage_UI__fixAttachmentsForRenderingInAttributedString_forPlainText_forStandardizedText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 fixAttachmentForAttributedString:*(a1 + 32) range:a3 forPlainText:a4 forStandardizedText:{*(a1 + 40), *(a1 + 41)}];
    }
  }
}

+ (id)filteredAttributedSubstring:(id)a3 fromRange:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6 fixAttachments:(BOOL)a7 insertListMarkers:(BOOL)a8
{
  v64 = a6;
  v65 = a7;
  v74 = a5;
  length = a4.length;
  location = a4.location;
  v92[4] = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__18;
  v87 = __Block_byref_object_dispose__18;
  v66 = a3;
  v10 = [v66 attributedSubstringFromRange:{location, length}];
  v88 = [v10 mutableCopy];

  v72 = [ICTextController shouldRetainFirstListStyleForFilteredAttributedSubstring:v66 fromRange:location, length];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v74)
  {
    v91[0] = &unk_1F4FC3DC8;
    v91[1] = &unk_1F4FC3DE0;
    v92[0] = @"*";
    v92[1] = @"-";
    v91[2] = &unk_1F4FC3DF8;
    v91[3] = &unk_1F4FC3E10;
    v92[2] = @"- [ ]";
    v92[3] = @"{decimal}.";
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:4];
    v12 = @"- [x]";
  }

  else
  {
    v89[0] = &unk_1F4FC3DC8;
    v89[1] = &unk_1F4FC3DE0;
    v90[0] = @"{disc}";
    v90[1] = @"{hyphen}";
    v89[2] = &unk_1F4FC3DF8;
    v89[3] = &unk_1F4FC3E10;
    v90[2] = @"{circle}";
    v90[3] = @"{decimal}.";
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];
    v12 = @"{check}";
  }

  v67 = v12;
  if (!filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers__NSTextListClass)
  {
    filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers__NSTextListClass = NSClassFromString(&cfstr_Nstextlist.isa);
  }

  v13 = 0;
  v73 = *MEMORY[0x1E69DB648];
  v68 = *MEMORY[0x1E69DB688];
  while (v13 < [v84[5] length])
  {
    v81 = 0;
    v82 = 0;
    v14 = [v84[5] attribute:*MEMORY[0x1E69B7600] atIndex:v13 longestEffectiveRange:&v81 inRange:{0, objc_msgSend(v84[5], "length")}];
    if ([v14 isList])
    {
      while (1)
      {
        v15 = [v14 indent];
        if (v15 + 1 <= [v11 count])
        {
          break;
        }

        v16 = [filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers__NSTextListClass alloc];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "style")}];
        v18 = [v76 objectForKeyedSubscript:v17];
        v19 = [v16 initWithMarkerFormat:v18 options:0];

        if ([v14 startingItemNumber])
        {
          [v19 setStartingItemNumber:{objc_msgSend(v14, "startingItemNumber")}];
        }

        [v11 addObject:v19];
      }

      v20 = [v14 indent];
      if (v20 + 1 < [v11 count])
      {
        [v11 removeObjectsInRange:{objc_msgSend(v14, "indent") + 1, objc_msgSend(v11, "count") + ~objc_msgSend(v14, "indent")}];
      }

      v21 = [v11 lastObject];
      v22 = [v14 todo];
      if (v22 && ([v14 todo], v69 = objc_claimAutoreleasedReturnValue(), v70 = v67, (objc_msgSend(v69, "done") & 1) != 0) || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v14, "style")), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "objectForKeyedSubscript:", v23), v70 = objc_claimAutoreleasedReturnValue(), v23, v22))
      {
      }

      v24 = [v21 markerFormat];
      v25 = [v24 isEqualToString:v70];

      if (v25)
      {
        v75 = v21;
      }

      else
      {
        v75 = [[filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers__NSTextListClass alloc] initWithMarkerFormat:v70 options:0];

        if ([v14 startingItemNumber])
        {
          [v75 setStartingItemNumber:{objc_msgSend(v14, "startingItemNumber")}];
        }

        [v11 replaceObjectAtIndex:objc_msgSend(v11 withObject:{"count") - 1, v75}];
      }

      v71 = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      v26 = [v71 tabStops];
      v27 = [v26 mutableCopy];

      v28 = [v27 count];
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          v30 = [v27 objectAtIndexedSubscript:i];
          v31 = objc_alloc(MEMORY[0x1E69DB858]);
          v32 = [v30 alignment];
          v33 = [v14 indent];
          v34 = [v30 options];
          if (i)
          {
            v35 = 0.0;
          }

          else
          {
            v35 = 11.0;
          }

          v36 = [v31 initWithTextAlignment:v32 location:v34 options:v35 + (i + v33) * 36.0];

          [v27 replaceObjectAtIndex:i withObject:v36];
        }
      }

      [v71 setTabStops:v27];
      [v71 setTextLists:v11];
      v38 = v81;
      v37 = v82;
      if (a8 && v81 < v82 + v81)
      {
        do
        {
          v39 = [v84[5] attribute:*MEMORY[0x1E69B7950] atIndex:v38 effectiveRange:{0, v37}];
          v40 = [v39 unsignedIntegerValue];

          v41 = MEMORY[0x1E696AEC0];
          if (v74)
          {
            v42 = [&stru_1F4F94F00 stringByPaddingToLength:4 * objc_msgSend(v14 withString:"indent") startingAtIndex:{@" ", 0}];
            v43 = [v75 markerForItemNumber:v40];
            v44 = [v41 stringWithFormat:@"%@%@ ", v42, v43];
          }

          else
          {
            v42 = [v75 markerForItemNumber:v40];
            v44 = [v41 stringWithFormat:@"\t%@\t", v42];
          }

          v45 = [v84[5] attribute:v73 atIndex:v38 effectiveRange:0];
          v46 = [ICTTTextStorage bulletTextAttributesWithTextFont:v45 paragraphStyle:v14 zoomFactor:1.0];
          v47 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v44 attributes:v46];
          v48 = [v84[5] string];
          v49 = [v48 paragraphRangeForRange:{v38, 0}];
          v38 = v50;

          if (v49 != 0 || v72)
          {
            [v84[5] replaceCharactersInRange:v49 withAttributedString:{0, v47}];
            v51 = [v44 length];
            v82 += v51;
            v38 += v49 + [v44 length];
          }

          else
          {
            v52 = v81 - v38 + v82;
            v81 = v38;
            v82 = v52;
          }

          v37 = v82;
        }

        while (v38 < v82 + v81);
        v38 = v81;
      }

      [v84[5] addAttribute:v68 value:v71 range:{v38, v37}];
    }

    else
    {
      [v11 removeAllObjects];
    }

    v53 = v81;
    v54 = v82;

    v13 = v54 + v53;
  }

  v55 = v84[5];
  v56 = *MEMORY[0x1E69B75F0];
  v57 = [v55 length];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __127__ICTTTextStorage_UI__filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers___block_invoke;
  v80[3] = &unk_1E846A0D0;
  v80[4] = &v83;
  [v55 enumerateAttribute:v56 inRange:0 options:v57 usingBlock:{0, v80}];
  if (v65)
  {
    [a1 fixAttachmentsForRenderingInAttributedString:v84[5] forPlainText:v74 forStandardizedText:v64];
    v58 = [MEMORY[0x1E69B7800] sharedContext];
    v59 = [v58 workerManagedObjectContext];

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __127__ICTTTextStorage_UI__filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers___block_invoke_2;
    v77[3] = &unk_1E8468FA8;
    v79 = &v83;
    v60 = v59;
    v78 = v60;
    [v60 performBlockAndWait:v77];
  }

  v61 = v84[5];

  _Block_object_dispose(&v83, 8);

  return v61;
}

uint64_t __127__ICTTTextStorage_UI__filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return [*(*(*(result + 32) + 8) + 40) removeAttribute:*MEMORY[0x1E69DB650] range:{a3, a4}];
  }

  return result;
}

void __127__ICTTTextStorage_UI__filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers___block_invoke_2(uint64_t a1)
{
  v5 = [*(*(*(a1 + 40) + 8) + 40) ic_attributedStringByFlatteningInlineAttachmentsWithContext:*(a1 + 32)];
  v2 = [v5 mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (_NSRange)safeCharacterRangeForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICTTTextStorage *)self length];
  if (v5 == location)
  {
    v6 = 0;
LABEL_5:
    v8 = location;
    goto LABEL_9;
  }

  v7.length = v5;
  if (v5 < location)
  {
    v6 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  v9.location = location;
  v9.length = length;
  v7.location = 0;

  v10 = NSIntersectionRange(v9, v7);
  v6 = v10.length;
  v8 = v10.location;
LABEL_9:
  result.length = v6;
  result.location = v8;
  return result;
}

- (unint64_t)attributeOptions
{
  v3 = [(ICTTTextStorage *)self convertAttributes];
  if ([(ICTTTextStorage *)self filterPastedAttributes])
  {
    v3 |= 2uLL;
  }

  if ([(ICTTTextStorage *)self parsePresentationIntents])
  {
    return v3 | 5;
  }

  else
  {
    return v3;
  }
}

- (void)setAttributeOptions:(unint64_t)a3
{
  [(ICTTTextStorage *)self setConvertAttributes:a3 & 1];
  [(ICTTTextStorage *)self setFilterPastedAttributes:(a3 >> 1) & 1];

  [(ICTTTextStorage *)self setParsePresentationIntents:(a3 & 5) != 0];
}

- (void)editWithAttributeOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(ICTTTextStorage *)self attributeOptions];
  [(ICTTTextStorage *)self beginEditing];
  [(ICTTTextStorage *)self setAttributeOptions:a3];
  v6[2](v6);

  [(ICTTTextStorage *)self endEditing];

  [(ICTTTextStorage *)self setAttributeOptions:v7];
}

- (id)itemProviderForRange:(_NSRange)a3 andNote:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [[ICTTTextStorageWithRange alloc] initWithTextStorage:self range:location note:length, v7];

  v9 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v8];
  [(ICTTTextStorageWithRange *)v8 prepareTextStorage];

  return v9;
}

- (ICTTTextStorage)initWithDocument:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = ICTTTextStorage;
  v6 = [(ICTTTextStorage *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, a3);
    v8 = [(ICTTMergeableStringVersionedDocument *)v7->_document mergeableString];
    [v8 setDelegate:v7];

    v9 = [(ICTTMergeableStringVersionedDocument *)v7->_document mergeableString];
    v10 = [v9 attributedString];
    v11 = [v10 mutableCopy];
    attributedString = v7->_attributedString;
    v7->_attributedString = v11;

    v13 = v7->_attributedString;
    v14 = *MEMORY[0x1E69B7618];
    v15 = [(NSMutableAttributedString *)v13 ic_range];
    [(NSMutableAttributedString *)v13 removeAttribute:v14 range:v15, v16];
    v17 = [[ICTTUndoManager_135534566 alloc] initWithTextStorage:v7];
    undoManager = v7->_undoManager;
    v7->_undoManager = &v17->super;

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v7 selector:sel_handleDidUndoRedoNotification_ name:*MEMORY[0x1E696AA30] object:v7->_undoManager];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v7 selector:sel_handleDidUndoRedoNotification_ name:*MEMORY[0x1E696AA28] object:v7->_undoManager];

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    undoCommands = v7->_undoCommands;
    v7->_undoCommands = v21;

    v7->_wantsUndoCommands = 1;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedRanges = v7->_deletedRanges;
    v7->_deletedRanges = v23;

    v7->_previouslyHadMarkedText = 0;
    v25 = [MEMORY[0x1E695DFA8] set];
    textLayoutManagerReferences = v7->_textLayoutManagerReferences;
    v7->_textLayoutManagerReferences = v25;

    [(ICTTTextStorage *)v7 resetHighlightsAttributedString];
    [(ICTTTextStorage *)v7 resetTTEdits];
  }

  return v7;
}

- (ICTTTextStorage)initWithData:(id)a3 replicaID:(id)a4
{
  v6 = MEMORY[0x1E69B78B0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithData:v8 replicaID:v7];

  v10 = [(ICTTTextStorage *)self initWithDocument:v9];
  return v10;
}

- (NSUUID)replicaID
{
  v2 = [(ICTTTextStorage *)self document];
  v3 = [v2 replicaID];

  return v3;
}

- (void)handleDidUndoRedoNotification:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    v4 = [(ICTTTextStorage *)self undoCommands];
    v5 = [v4 count];

    if (!v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(ICTTTextStorage *)self textViews];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) _customUndoManagerDidFinishUndoRedoChanges];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)restoreAttributedString:(id)a3
{
  objc_storeStrong(&self->_attributedString, a3);
  v5 = a3;
  attributedString = self->_attributedString;
  v7 = *MEMORY[0x1E69B7618];
  v8 = [(NSMutableAttributedString *)attributedString ic_range];
  [(NSMutableAttributedString *)attributedString removeAttribute:v7 range:v8, v9];

  [(ICTTTextStorage *)self resetHighlightsAttributedString];
}

- (_NSRange)logicalRangeForLocation:(unint64_t)a3
{
  v3 = [(ICTTTextStorage *)self length];
  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v23.receiver = self;
  v23.super_class = ICTTTextStorage;
  [ICTTTextStorage edited:sel_edited_range_changeInLength_ range:? changeInLength:?];
  if (!self->_directlyEditing && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
    v11 = [v10 attributedString];

    v12 = [(NSMutableAttributedString *)self->_attributedString attributedSubstringFromRange:location, length];
    v13 = [v11 attributedSubstringFromRange:{location, length + a5}];
    v14 = [v13 mutableCopy];

    v15 = *MEMORY[0x1E69B7618];
    v16 = [v14 ic_range];
    [v14 removeAttribute:v15 range:{v16, v17}];
    [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:location withAttributedString:length, v14];
    highlightsAttributedString = self->_highlightsAttributedString;
    v19 = [v14 string];
    [(NSMutableAttributedString *)highlightsAttributedString replaceCharactersInRange:location withString:length, v19];

    if ((v8 & 2) != 0)
    {
      v20 = [(ICTTTextStorage *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(ICTTTextStorage *)self delegate];
        [v22 textStorage:self didReplace:v12 with:v14];
      }
    }
  }
}

- (id)paragraphUUIDsInRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    length = a3.length;
    location = a3.location;
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = v7;
    v9 = *MEMORY[0x1E69B7600];
    if (length)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __41__ICTTTextStorage_paragraphUUIDsInRange___block_invoke;
      v14[3] = &unk_1E846A170;
      v15 = v7;
      [(ICTTTextStorage *)self enumerateAttribute:v9 inRange:location options:length usingBlock:0, v14];
    }

    else
    {
      v10 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
      objc_opt_class();
      v11 = ICDynamicCast();
      v12 = [v11 uuid];
      [v8 ic_addNonNilObject:v12];
    }

    v3 = [v8 copy];
  }

  return v3;
}

void __41__ICTTTextStorage_paragraphUUIDsInRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v4 = *(a1 + 32);
  v5 = [v6 uuid];
  [v4 ic_addNonNilObject:v5];
}

- (ICTTTextUndoTarget)undoTarget
{
  v2 = self;
  v3 = [(ICTTTextStorage *)self overrideUndoTarget];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (void)addUndoCommand:(id)a3
{
  v4 = a3;
  [(ICTTTextStorage *)self beginEditing];
  [(NSMutableArray *)self->_undoCommands addObject:v4];

  [(ICTTTextStorage *)self endEditing];
}

- (void)applyUndoGroup:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__ICTTTextStorage_applyUndoGroup___block_invoke;
  v6[3] = &unk_1E8468F80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICTTTextStorage *)self applyUndoWithBlock:v6];
}

void __34__ICTTTextStorage_applyUndoGroup___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) mergeableString];
  [v2 applyUndoCommand:*(a1 + 40)];
}

- (void)applyUndoWithBlock:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = [(ICTTTextStorage *)self styler];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICTTTextStorage *)self styler];
    [v6 setDisableAddingExtraLinesIfNeeded:1];
  }

  [(ICTTTextStorage *)self setIsApplyingUndoCommand:1];
  [(ICTTTextStorage *)self breakUndoCoalescing];
  v7 = [(ICTTTextStorage *)self writingToolsSessionUUID];

  v8 = &off_1D4433000;
  if (v7)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [(ICTTTextStorage *)self textViews];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [(ICTTTextStorage *)self writingToolsSessionUUID];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke;
          v29[3] = &unk_1E846B730;
          v29[4] = self;
          v30 = v26;
          [v14 _performExternalEditsForWritingToolsSessionIdentifier:v15 action:1 usingBlock:v29];
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v8 = &off_1D4433000;
  }

  else
  {
    [(ICTTTextStorage *)self beginEditing];
    v26[2]();
    [(ICTTTextStorage *)self endEditing];
  }

  v16 = [(ICTTTextStorage *)self ttEditedRange];
  v18 = v17;
  [(ICTTTextStorage *)self setPendingFixupAfterEditing:1];
  [(ICTTTextStorage *)self fixupAfterEditing];
  [(ICTTTextStorage *)self breakUndoCoalescing];
  v19 = [(ICTTTextStorage *)self textViews];
  v28[0] = MEMORY[0x1E69E9820];
  v20 = *(v8 + 491);
  v28[1] = v20;
  v28[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_2;
  v28[3] = &unk_1E846B758;
  v28[4] = self;
  v28[5] = v16;
  v28[6] = v18;
  [v19 enumerateObjectsUsingBlock:v28];

  [(ICTTTextStorage *)self setIsApplyingUndoCommand:0];
  v21 = [(ICTTTextStorage *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v21 textStorageDidPerformUndo:self];
  }

  v22 = [(ICTTTextStorage *)self styler];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(ICTTTextStorage *)self styler];
    [v24 setDisableAddingExtraLinesIfNeeded:0];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && v16 + v18 <= [(ICTTTextStorage *)self length])
  {
    v25 = *MEMORY[0x1E69DB5F8];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = v20;
    v27[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_3;
    v27[3] = &unk_1E846A170;
    v27[4] = self;
    [(ICTTTextStorage *)self enumerateAttribute:v25 inRange:v16 options:v18 usingBlock:0, v27];
  }
}

uint64_t __38__ICTTTextStorage_applyUndoWithBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginEditing];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) endEditing];
  return 1;
}

void __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isFirstResponder] & 1) == 0 && objc_msgSend(v5, "canBecomeFirstResponder") && objc_msgSend(v5, "isEditable"))
  {
    [v5 becomeFirstResponder];
  }

  objc_opt_class();
  v3 = [*(a1 + 32) styler];
  v4 = ICDynamicCast();
  [v4 refreshTypingAttributesForTextView:v5 textStorage:*(a1 + 32)];

  [v5 setSelectedRange:{*(a1 + 40), *(a1 + 48)}];
}

void __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) layoutManagers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) invalidateLayoutForCharacterRange:a3 actualCharacterRange:{a4, 0}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)breakUndoCoalescing
{
  if (![(ICTTTextStorage *)self disableUndoCoalesceBreaking])
  {
    v3 = [(ICTTTextStorage *)self coalescingUndoGroup];
    [v3 closeGroup];

    [(ICTTTextStorage *)self setCoalescingUndoGroup:0];
  }
}

- (void)resetUndoManager
{
  if ([(ICTTTextStorage *)self disableUndoCoalesceBreaking])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.disableUndoCoalesceBreaking == __objc_no" functionName:"-[ICTTTextStorage resetUndoManager]" simulateCrash:1 showAlert:0 format:@"We shouldn't get here when disableUndoCoalesceBreaking == YES"];
  }

  v3 = [(ICTTTextStorage *)self undoManager];
  [v3 removeAllActions];

  v4 = [(ICTTTextStorage *)self coalescingUndoGroup];
  [v4 closeGroup];

  [(ICTTTextStorage *)self setCoalescingUndoGroup:0];

  [(ICTTTextStorage *)self setIsPerformingAccessibilityUndoableTextInsertion:0];
}

- (void)fixupAfterEditing
{
  v3 = [(ICTTTextStorage *)self pendingFixupAfterEditing];
  [(ICTTTextStorage *)self setPendingFixupAfterEditing:0];
  if (![(ICTTTextStorage *)self isFixing]&& [(ICTTTextStorage *)self ttEditedRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTTTextStorage *)self setIsFixing:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__ICTTTextStorage_fixupAfterEditing__block_invoke;
    v5[3] = &unk_1E8468BA0;
    v5[4] = self;
    [(ICTTTextStorage *)self saveSelectionDuringBlock:v5];
    [(ICTTTextStorage *)self resetTTEdits];
    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:0];
    [(ICTTTextStorage *)self setIsFixing:0];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"ICTTTextStorageDidProcessEndEditingNotification" object:self];
    }
  }
}

void __36__ICTTTextStorage_fixupAfterEditing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) styler];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) styler];
    v5 = *(a1 + 32);
    v6 = [v5 ttEditedMask];
    v7 = [*(a1 + 32) ttEditedRange];
    [v4 fixTextStorage:v5 afterProcessingEditing:v6 range:v7 changeInLength:{v8, objc_msgSend(*(a1 + 32), "ttChangeInLength")}];
  }

  if (([*(a1 + 32) directlyEditing] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isEditingTemporaryAttributes") & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [*(a1 + 32) ttEditedRange];
    v13 = [v9 ic_enclosingRangeContainingCharactersInSet:v10 forRange:{v11, v12}];
    v15 = v14;

    v23.location = [*(a1 + 32) ic_range];
    v23.length = v16;
    v22.location = v13;
    v22.length = v15;
    v17 = NSIntersectionRange(v22, v23);
    objc_opt_class();
    v20 = [*(a1 + 32) styler];
    v18 = ICDynamicCast();
    v19 = [v18 authorHighlightsController];
    [v19 performHighlightUpdatesForRange:v17.location inTextStorage:v17.length updates:{*(a1 + 32), 0}];
  }
}

- (void)executeDelayedFixupAfterEditing
{
  if (![(ICTTTextStorage *)self isZombie]&& [(ICTTTextStorage *)self pendingFixupAfterEditing])
  {
    v3 = [(ICTTTextStorage *)self wantsUndoCommands];
    [(ICTTTextStorage *)self setWantsUndoCommands:[(ICTTTextStorage *)self delayedFixupAfterEditingWantsUndoCommand]];
    v4 = [(ICTTTextStorage *)self textViews];
    [v4 enumerateObjectsUsingBlock:&__block_literal_global_78];

    [(ICTTTextStorage *)self fixupAfterEditing];
    v5 = [(ICTTTextStorage *)self textViews];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_126];

    [(ICTTTextStorage *)self setWantsUndoCommands:v3];
  }
}

void __50__ICTTTextStorage_executeDelayedFixupAfterEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F5091B00])
  {
    [v2 willBeginPostLayoutFixupAfterEditing];
  }
}

void __50__ICTTTextStorage_executeDelayedFixupAfterEditing__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F5091B00])
  {
    [v2 didEndPostLayoutFixupAfterEditing];
  }
}

- (void)fixupAfterEditingDelayedToEndOfRunLoop
{
  [(ICTTTextStorage *)self setDelayedFixupAfterEditingWantsUndoCommand:[(ICTTTextStorage *)self wantsUndoCommands]];
  if (![(ICTTTextStorage *)self pendingFixupAfterEditing])
  {
    [(ICTTTextStorage *)self setPendingFixupAfterEditing:1];

    [(ICTTTextStorage *)self performSelector:sel_executeDelayedFixupAfterEditing withObject:0 afterDelay:0.0];
  }
}

- (BOOL)mergeableStringIsEqualAfterSerialization:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextStorage *)self mergeableString];

  if (v5 == v4)
  {
    v46 = 1;
  }

  else
  {
    v6 = [(ICTTTextStorage *)self mergeableString];
    v7 = [v6 attributedString];
    v8 = [v7 string];
    v9 = [v4 attributedString];
    v10 = [v9 string];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v50 = v4;
      v48 = self;
      v12 = [(ICTTTextStorage *)self mergeableString];
      v13 = [v12 attributedString];
      v51 = [v13 length];

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v17 = *MEMORY[0x1E69DB5F8];
      v49 = 1;
      v18 = MEMORY[0x1E69B7600];
      do
      {
        if (v16 >= v51)
        {
          break;
        }

        if (v16 >= v54 + v55)
        {
          v19 = [(ICTTTextStorage *)v48 mergeableString];
          v20 = [v19 attributedString];
          v21 = [v20 attributesAtIndex:v16 effectiveRange:&v54];
          v22 = [v21 mutableCopy];

          v15 = v22;
        }

        if (v16 >= v52 + v53)
        {
          v23 = [v50 attributedString];
          v24 = [v23 attributesAtIndex:v16 effectiveRange:&v52];
          v25 = [v24 mutableCopy];

          v14 = v25;
        }

        v26 = [v15 objectForKeyedSubscript:*v18];
        v27 = [v26 mutableCopy];

        v28 = [v14 objectForKeyedSubscript:*v18];
        v29 = [v28 mutableCopy];

        [v27 setNeedsParagraphCleanup:0];
        [v27 setNeedsListCleanup:0];
        [v29 setNeedsParagraphCleanup:0];
        [v29 setNeedsListCleanup:0];
        v30 = [MEMORY[0x1E696AFB0] UUID];
        v31 = [v27 todo];

        if (v31)
        {
          v32 = objc_alloc(MEMORY[0x1E69B78E0]);
          v33 = [v27 todo];
          v34 = [v32 initWithIdentifier:v30 done:{objc_msgSend(v33, "done")}];
          [v27 setTodo:v34];
        }

        v35 = [v29 todo];

        if (v35)
        {
          v36 = objc_alloc(MEMORY[0x1E69B78E0]);
          v37 = [v29 todo];
          v38 = [v36 initWithIdentifier:v30 done:{objc_msgSend(v37, "done")}];
          [v29 setTodo:v38];
        }

        v39 = [v27 copy];
        [v15 setObject:v39 forKeyedSubscript:*v18];

        v40 = [v29 copy];
        [v14 setObject:v40 forKeyedSubscript:*v18];

        v41 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v42 = [v15 objectForKeyedSubscript:v17];

        if (v42)
        {
          [v15 setObject:v41 forKeyedSubscript:v17];
        }

        v43 = [v14 objectForKeyedSubscript:v17];

        if (v43)
        {
          [v14 setObject:v41 forKeyedSubscript:v17];
        }

        v44 = [v15 isEqualToDictionary:v14];
        v45 = v44;
        if (v44)
        {
          v16 = v52 + v53 >= (v54 + v55) ? v54 + v55 : v52 + v53;
        }

        else
        {
          v49 = 0;
        }
      }

      while ((v45 & 1) != 0);

      v4 = v50;
      v46 = v49;
    }

    else
    {
      v46 = 0;
    }
  }

  return v46 & 1;
}

- (void)addTextLayoutManager:(id)a3
{
  v4 = MEMORY[0x1E69B7AD8];
  v5 = a3;
  v7 = [[v4 alloc] initWithObject:v5];

  v6 = [(ICTTTextStorage *)self textLayoutManagerReferences];
  [v6 addObject:v7];
}

- (void)removeTextLayoutManager:(id)a3
{
  v4 = MEMORY[0x1E69B7AD8];
  v5 = a3;
  v7 = [[v4 alloc] initWithObject:v5];

  v6 = [(ICTTTextStorage *)self textLayoutManagerReferences];
  [v6 removeObject:v7];
}

id __28__ICTTTextStorage_textViews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 textContainers];
  v3 = [v2 ic_compactMap:&__block_literal_global_149];

  return v3;
}

id __28__ICTTTextStorage_textViews__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 textView];

  v4 = [v3 superview];
  v5 = ICDynamicCast();

  return v5;
}

- (id)editAtIndex:(unint64_t)a3
{
  v4 = [(ICTTTextStorage *)self mergeableString];
  v5 = [v4 editAtIndex:a3];

  return v5;
}

- (void)enumerateEditsInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTTTextStorage *)self mergeableString];
  [v8 enumerateEditsInRange:location usingBlock:{length, v7}];
}

- (void)redactAuthorAttributionsToCurrentUser
{
  [(ICTTTextStorage *)self setWantsUndoCommands:0];
  v9 = [(ICTTTextStorage *)self mutableCopy];
  v3 = *MEMORY[0x1E69B7618];
  v4 = [(ICTTTextStorage *)self currentTimestamp];
  v5 = [v9 ic_range];
  [v9 addAttribute:v3 value:v4 range:{v5, v6}];

  v7 = [v9 ic_range];
  [(ICTTTextStorage *)self replaceCharactersInRange:v7 withAttributedString:v8, v9];
  [(ICTTTextStorage *)self setWantsUndoCommands:1];
}

- (void)coordinateReading:(id)a3
{
  v4 = a3;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateReading:v4];
}

- (void)coordinateEditing:(id)a3
{
  v4 = a3;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateEditing:v4];
}

- (void)coordinateAccess:(id)a3
{
  v4 = a3;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateAccess:v4];
}

- (id)savedSelectionWithSelectionAffinity:(unint64_t)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(ICTTTextStorage *)self textViews];
  v6 = [v5 allObjects];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = MEMORY[0x1E696B098];
        v13 = [*(*(&v24 + 1) + 8 * i) selectedRange];
        v15 = [v12 valueWithRange:{v13, v14}];
        v29 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];

        v17 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        v18 = [v17 selectionForCharacterRanges:v16 selectionAffinity:a3];

        [v7 addObject:v18];
        v19 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        v20 = [v19 objectsNeedingUpdatedRanges];
        [v20 addObject:v18];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v28[0] = obj;
  v28[1] = v7;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  return v21;
}

void __36__ICTTTextStorage_restoreSelection___block_invoke(id *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] count];
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    *&v3 = 138412546;
    v27 = v3;
    do
    {
      v6 = [*(a1[5] + 26) mergeableString];
      v7 = [a1[6] objectAtIndexedSubscript:v5];
      v8 = [v6 characterRangesForSelection:v7];
      v9 = [v8 lastObject];
      location = [v9 rangeValue];
      length = v11;

      v13 = [a1[4] objectAtIndexedSubscript:v5];
      if ([v13 selectedRange] != location || v14 != length)
      {
        if (location + length > [a1[5] length])
        {
          v16 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __36__ICTTTextStorage_restoreSelection___block_invoke_cold_1(&v28, v29, v16);
          }

          v17 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v37.location = location;
            v37.length = length;
            v25 = NSStringFromRange(v37);
            v26 = [a1[5] length];
            *buf = v27;
            v33 = v25;
            v34 = 2048;
            v35 = v26;
            _os_log_error_impl(&dword_1D4171000, v17, OS_LOG_TYPE_ERROR, "original selRange: %@, self.length = %lu", buf, 0x16u);
          }

          v18 = [a1[5] length];
          v19.location = [a1[5] length];
          v19.length = v19.location;
          if (location >= v18)
          {
            length = 0;
            location = v19.location;
          }

          else
          {
            v19.location = 0;
            v39.location = location;
            v39.length = length;
            v20 = NSIntersectionRange(v19, v39);
            location = v20.location;
            length = v20.length;
          }

          v21 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v38.location = location;
            v38.length = length;
            __36__ICTTTextStorage_restoreSelection___block_invoke_cold_2(v30, v38, &v31, v21);
          }
        }

        [v13 setSelectedRange:{location, length}];
      }

      v22 = [*(a1[5] + 26) mergeableString];
      v23 = [v22 objectsNeedingUpdatedRanges];
      v24 = [a1[6] objectAtIndexedSubscript:v5];
      [v23 removeObject:v24];

      ++v5;
    }

    while (v4 != v5);
  }
}

- (void)saveSelectionDuringBlock:(id)a3 affinity:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICTTTextStorage *)self savedSelectionWithSelectionAffinity:a4];
  v6[2](v6);

  [(ICTTTextStorage *)self restoreSelection:v7];
}

- (unint64_t)mergeWithDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextStorage *)self savedSelectionWithSelectionAffinity:0];
  v6 = [(ICTTTextStorage *)self document];
  v7 = [v6 mergeWithStringVersionedDocument:v4];

  [(ICTTTextStorage *)self restoreSelection:v5];
  return v7;
}

- (void)replaceWithDocument:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableAttributedString *)self->_attributedString length];
  v6 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  [v6 setDelegate:0];

  document = self->_document;
  self->_document = v4;
  v8 = v4;

  v9 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  [v9 setDelegate:self];

  v10 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  v11 = [v10 attributedString];
  v12 = [v11 mutableCopy];
  attributedString = self->_attributedString;
  self->_attributedString = v12;

  v14 = self->_attributedString;
  v15 = *MEMORY[0x1E69B7618];
  v16 = [(NSMutableAttributedString *)v14 ic_range];
  [(NSMutableAttributedString *)v14 removeAttribute:v15 range:v16, v17];
  [(ICTTTextStorage *)self resetHighlightsAttributedString];
  v18 = [(NSMutableAttributedString *)self->_attributedString length];
  v19.receiver = self;
  v19.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v19 edited:3 range:0 changeInLength:v5, v18 - v5];
}

- (BOOL)validateIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(NSMutableAttributedString *)self->_attributedString length];
  if (a4 && v6 <= a3)
  {
    *a4 = xmmword_1D4433FC0;
  }

  return v6 > a3;
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  if ([ICTTTextStorage validateIndex:"validateIndex:effectiveRange:" effectiveRange:?])
  {
    v7 = [(NSMutableAttributedString *)self->_attributedString attributesAtIndex:a3 effectiveRange:a4];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if ([ICTTTextStorage validateIndex:"validateIndex:effectiveRange:" effectiveRange:?])
  {
    v12.receiver = self;
    v12.super_class = ICTTTextStorage;
    v10 = [(ICTTTextStorage *)&v12 attributesAtIndex:a3 longestEffectiveRange:a4 inRange:location, length];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v8 = a3;
  if ([(ICTTTextStorage *)self validateIndex:a4 effectiveRange:a5])
  {
    v9 = [(NSMutableAttributedString *)self->_attributedString attribute:v8 atIndex:a4 effectiveRange:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  if ([(ICTTTextStorage *)self validateIndex:a4 effectiveRange:a5])
  {
    v14.receiver = self;
    v14.super_class = ICTTTextStorage;
    v12 = [(ICTTTextStorage *)&v14 attribute:v11 atIndex:a4 longestEffectiveRange:a5 inRange:location, length];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)correctParagraphStyleReuseForRange:(_NSRange)a3 withNewAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = ![(ICTTTextStorage *)self hasEditedCharactersAfterTextSelection]&& [(ICTTTextStorage *)self isTypingOrMarkingText];
  v9 = [(ICTTTextStorage *)self string];
  v10 = [v9 paragraphRangeForRange:{location, length}];
  v12 = v11;

  v13 = v10 + v12;
  if (v12 && v10 + v12 != 0 && v8)
  {
    v14 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v15 = [(ICTTTextStorage *)self string];
    v16 = [v14 characterIsMember:{objc_msgSend(v15, "characterAtIndex:", v13 - 1)}];

    if (!v16 || v12 != 1)
    {
      goto LABEL_13;
    }
  }

  else if (v10 + v12 == 0 || !v8)
  {
    goto LABEL_13;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__35;
  v27 = __Block_byref_object_dispose__35;
  v28 = 0;
  v17 = [(ICTTTextStorage *)self textViews];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__ICTTTextStorage_correctParagraphStyleReuseForRange_withNewAttributedString___block_invoke;
  v22[3] = &unk_1E846B800;
  v22[4] = &v23;
  [v17 enumerateObjectsUsingBlock:v22];

  if (v24[5])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [v7 string];
    v20 = [v18 initWithString:v19 attributes:v24[5]];

    v7 = v20;
  }

  _Block_object_dispose(&v23, 8);

LABEL_13:

  return v7;
}

uint64_t __78__ICTTTextStorage_correctParagraphStyleReuseForRange_withNewAttributedString___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 typingAttributes];
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = a4;
  if (addAttribute_value_range__onceToken != -1)
  {
    [ICTTTextStorage addAttribute:value:range:];
  }

  if (-[ICTTTextStorage isEditingTemporaryAttributes](self, "isEditingTemporaryAttributes") || ![MEMORY[0x1E696AD40] dd_isTransientAttribute:v9])
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(ICTTTextStorage *)self beginTemporaryAttributes];
  v11 = 1;
  if (v10)
  {
LABEL_8:
    v12.receiver = self;
    v12.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v12 addAttribute:v9 value:v10 range:location, length];
  }

LABEL_9:
  if (v11)
  {
    [(ICTTTextStorage *)self endTemporaryAttributes];
  }
}

void __44__ICTTTextStorage_addAttribute_value_range___block_invoke()
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0 && !dlopen("/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI", 1))
  {
    v0 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __44__ICTTTextStorage_addAttribute_value_range___block_invoke_cold_1(v0);
    }
  }
}

- (void)dd_makeLinksForResultsInAttributesOfType:(unint64_t)a3 context:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
  objc_opt_class();
  v11 = [(ICTTTextStorage *)self delegate];
  v12 = ICDynamicCast();

  objc_opt_class();
  v13 = [v12 calculateDocumentController];
  v14 = ICDynamicCast();

  if (v14)
  {
    v15 = [v14 expressionsIndexSet];
    [v10 removeIndexes:v15];
  }

  [(ICTTTextStorage *)self beginTemporaryAttributes];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__ICTTTextStorage_dd_makeLinksForResultsInAttributesOfType_context_range___block_invoke;
  v18[3] = &unk_1E846B828;
  v20 = self;
  v21 = a3;
  v19 = v9;
  v16 = v9;
  [v10 enumerateRangesUsingBlock:v18];
  [(ICTTTextStorage *)self endTemporaryAttributes];
  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 postNotificationName:@"ICTTTextStorageDidUpdateDataDetectionResultsNotification" object:self];
}

id __74__ICTTTextStorage_dd_makeLinksForResultsInAttributesOfType_context_range___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = ICTTTextStorage;
  return objc_msgSendSuper2(&v7, sel_dd_makeLinksForResultsInAttributesOfType_context_range_, v4, v5, a2, a3);
}

- (void)dd_resetResults
{
  [(ICTTTextStorage *)self beginTemporaryAttributes];
  v3 = *MEMORY[0x1E6999A70];
  v4 = [(ICTTTextStorage *)self length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__ICTTTextStorage_dd_resetResults__block_invoke;
  v10[3] = &unk_1E846A170;
  v10[4] = self;
  [(ICTTTextStorage *)self enumerateAttribute:v3 inRange:0 options:v4 usingBlock:0, v10];
  v9.receiver = self;
  v9.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v9 dd_resetResults];
  v5 = *MEMORY[0x1E69DB650];
  v6 = [(ICTTTextStorage *)self length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__ICTTTextStorage_dd_resetResults__block_invoke_2;
  v8[3] = &unk_1E84694A8;
  v8[4] = self;
  [(ICTTTextStorage *)self enumerateAttribute:v5 inRange:0 options:v6 usingBlock:0, v8];
  [(ICTTTextStorage *)self endTemporaryAttributes];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICTTTextStorageDidUpdateDataDetectionResultsNotification" object:self];
}

uint64_t __34__ICTTTextStorage_dd_resetResults__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    v7 = *(result + 32);
    v8 = *MEMORY[0x1E69DB650];
    v9 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    [v7 addAttribute:v8 value:v9 range:{a3, a4}];

    v10 = *(v6 + 32);
    v11 = *MEMORY[0x1E69B7960];
    v12 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    [v10 addAttribute:v11 value:v12 range:{a3, a4}];

    v13 = *(v6 + 32);
    v14 = *MEMORY[0x1E69DB750];

    return [v13 removeAttribute:v14 range:{a3, a4}];
  }

  return result;
}

void __34__ICTTTextStorage_dd_resetResults__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB650];
    v10 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    [v8 addAttribute:v9 value:v10 range:{a3, a4}];

    v11 = *(a1 + 32);
    v12 = *MEMORY[0x1E69B7960];
    v13 = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    [v11 addAttribute:v12 value:v13 range:{a3, a4}];
  }
}

- (void)removeAttribute:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if ([v7 isEqualToString:*MEMORY[0x1E69B79B0]])
  {
    if ([(ICTTTextStorage *)self ic_containsAttribute:v7 inRange:location, length])
    {
      [(ICTTTextStorage *)self beginTemporaryAttributes];
      v8.receiver = self;
      v8.super_class = ICTTTextStorage;
      [(ICTTTextStorage *)&v8 removeAttribute:v7 range:location, length];
      [(ICTTTextStorage *)self endTemporaryAttributes];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v8 removeAttribute:v7 range:location, length];
  }
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (length)
  {
    if (![(ICTTTextStorage *)self isResettingBaseWritingDirection]&& ![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isPausingUndoActions]&& ![(ICTTTextStorage *)self isEditingTemporaryAttributes]&& ![(ICTTTextStorage *)self isEndingEditing]&& (location != [(ICTTTextStorage *)self lastUndoEditRange]|| length != v8))
    {
      [(ICTTTextStorage *)self breakUndoCoalescing];
    }

    [(ICTTTextStorage *)self beginEditing];
    self->_directlyEditing = 1;
    if (![(ICTTTextStorage *)self isEditingTemporaryAttributes])
    {
      v7 = v7;
      v9 = v7;
      if ([(ICTTTextStorage *)self convertAttributes])
      {
        v10 = [(ICTTTextStorage *)self styler];
        v9 = [v10 modelForStyleAttributes:v7 filterAttributes:0];
      }

      v11 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
      v12 = [v11 attributedString];
      v13 = *MEMORY[0x1E69B7618];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __39__ICTTTextStorage_setAttributes_range___block_invoke;
      v28[3] = &unk_1E846B850;
      v14 = v9;
      v29 = v14;
      v30 = self;
      [v12 enumerateAttribute:v13 inRange:location options:length usingBlock:{0, v28}];

      if ([(ICTTTextStorage *)self convertAttributes])
      {
        v15 = [(ICTTTextStorage *)self styler];
        v16 = [v15 styleForModelAttributes:v14];

        v7 = v16;
      }
    }

    if ([(ICTTTextStorage *)self wantsTimestampUpdates])
    {
      [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    }

    [(NSMutableAttributedString *)self->_attributedString setAttributes:v7 range:location, length];
    objc_opt_class();
    v17 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v18 = ICCheckedDynamicCast();

    objc_opt_class();
    v19 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
    v20 = ICCheckedDynamicCast();

    highlightsAttributedString = self->_highlightsAttributedString;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__ICTTTextStorage_setAttributes_range___block_invoke_2;
    v24[3] = &unk_1E846B878;
    v25 = v18;
    v26 = self;
    v27 = v20;
    v22 = v20;
    v23 = v18;
    [(NSMutableAttributedString *)highlightsAttributedString enumerateAttributesInRange:location options:length usingBlock:0, v24];
    [(ICTTTextStorage *)self edited:1 range:location changeInLength:length, 0];
    [(ICTTTextStorage *)self endEditing];
    self->_directlyEditing = 0;
  }
}

void __39__ICTTTextStorage_setAttributes_range___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v11 = [v7 mutableCopy];
  [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B7618]];

  v9 = [*(*(a1 + 40) + 208) mergeableString];
  v10 = [v11 copy];
  [v9 setAttributes:v10 range:{a3, a4}];
}

void __39__ICTTTextStorage_setAttributes_range___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  objc_opt_class();
  v7 = MEMORY[0x1E69B7960];
  v8 = [v40 objectForKeyedSubscript:*MEMORY[0x1E69B7960]];
  v9 = ICDynamicCast();

  v10 = *(a1 + 32);
  v11 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  if (v11 == v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;
  if (!(v13 | v15))
  {
    goto LABEL_15;
  }

  v16 = v15;
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
  }

  else
  {
    v18 = [v13 isEqual:v15];

    if (v18)
    {
LABEL_15:
      v19 = 0;
      goto LABEL_20;
    }
  }

  v20 = *(a1 + 32);
  v21 = *(*(a1 + 40) + 112);
  v22 = *v7;
  if (v20)
  {
    [v21 addAttribute:v22 value:v20 range:{a3, a4}];
  }

  else
  {
    [v21 removeAttribute:v22 range:{a3, a4}];
  }

  v19 = 1;
LABEL_20:
  objc_opt_class();
  v23 = MEMORY[0x1E69B75D8];
  v24 = [v40 objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
  v25 = ICCheckedDynamicCast();

  v26 = *(a1 + 48);
  if (v11 == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27;
  if (v11 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29;
  if (v28 | v30)
  {
    v31 = v30;
    if (v28)
    {
      v32 = v30 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
    }

    else
    {
      v33 = [v28 isEqual:v30];

      if (v33)
      {
        if (!v19)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }
    }

    v34 = *(a1 + 48);
    v35 = *(*(a1 + 40) + 112);
    v36 = *v23;
    if (v34)
    {
      [v35 addAttribute:v36 value:v34 range:{a3, a4}];
    }

    else
    {
      [v35 removeAttribute:v36 range:{a3, a4}];
    }
  }

  else if ((v19 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  v37 = [*(a1 + 40) styler];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [*(a1 + 40) styler];
    [v39 updateHighlightsInRange:a3 inTextStorage:{a4, *(a1 + 40)}];
  }

LABEL_43:
}

- (BOOL)hasNamedStyle:(unsigned int)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(ICTTTextStorage *)self string];
  v9 = [v8 ic_rangeIsValid:{location, length}];

  if (v9)
  {
    v10 = *MEMORY[0x1E69B7600];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__ICTTTextStorage_hasNamedStyle_inRange___block_invoke;
    v13[3] = &unk_1E846B8A0;
    v14 = a3;
    v13[4] = &v15;
    [(ICTTTextStorage *)self enumerateAttribute:v10 inRange:location options:length usingBlock:0, v13];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __41__ICTTTextStorage_hasNamedStyle_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  if ([v8 style] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (BOOL)isRightToLeftAtIndex:(int64_t)a3
{
  v3 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69B7600] atIndex:a3 effectiveRange:0];
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = [v4 isRTL];

  return v5;
}

- (void)styleTextInRange:(_NSRange)a3
{
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = a3.length;
    location = a3.location;
    if (![(ICTTTextStorage *)self isEditingTemporaryAttributes])
    {
      v6 = [(ICTTTextStorage *)self styler];
      [v6 styleText:self inRange:location fixModelAttributes:{length, 1}];
    }
  }
}

- (NSNumber)currentTimestamp
{
  v2 = [(ICTTTextStorage *)self now];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  v5 = v4;

  v6 = MEMORY[0x1E696AD98];
  v7 = [v5 ic_truncated];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];

  return v8;
}

- (void)setTimestamp:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = [a3 ic_truncated];
  v11.location = [(NSMutableAttributedString *)self->_attributedString ic_range];
  v12.location = location;
  v12.length = length;
  v7 = NSIntersectionRange(v11, v12);
  if (v7.length)
  {
    self->_directlyEditing = 1;
    [(ICTTTextStorage *)self beginSkippingTimestampUpdates];
    [(ICTTTextStorage *)self beginEditing];
    v8 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
    [v8 setTimestamp:v9 range:{v7.location, v7.length}];

    [(ICTTTextStorage *)self edited:1 range:v7.location changeInLength:v7.length, 0];
    [(ICTTTextStorage *)self endEditing];
    [(ICTTTextStorage *)self endSkippingTimestampUpdates];
    self->_directlyEditing = 0;
  }
}

- (ICOutlineController)outlineController
{
  WeakRetained = objc_loadWeakRetained(&self->_outlineController);

  return WeakRetained;
}

- (ICTTTextUndoTarget)overrideUndoTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideUndoTarget);

  return WeakRetained;
}

- (_NSRange)beforeEndEditedRange
{
  p_beforeEndEditedRange = &self->_beforeEndEditedRange;
  location = self->_beforeEndEditedRange.location;
  length = p_beforeEndEditedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)ttEditedRange
{
  p_ttEditedRange = &self->_ttEditedRange;
  location = self->_ttEditedRange.location;
  length = p_ttEditedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)lastUndoEditRange
{
  p_lastUndoEditRange = &self->_lastUndoEditRange;
  location = self->_lastUndoEditRange.location;
  length = p_lastUndoEditRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)customPasteboardDataFromRange:(_NSRange)a3 persistenceHelper:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTTTextStorage *)self attributedString];
  v9 = [v8 attributedSubstringFromRange:{location, length}];

  v10 = [ICTextController removeBeginningListStyleIfNecessaryForAttributedString:v9 fromTextStorage:self andRange:location, length];

  v11 = [v10 ic_attributedStringByRefreshingParagraphStyleUUIDs];

  if (v7)
  {
    v12 = objc_alloc(MEMORY[0x1E69B7730]);
    v13 = [v7 identifier];
    v14 = [v12 initWithObjectIdentifier:v13 forPasteboard:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 managedObjectContext];
  v16 = [v11 ic_serializeWithFlags:1 dataPersister:v14 managedObjectContext:v15 error:0];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E69B7810]) initWithAttributedStringData:v16 dataPersister:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyDataForUTI:(id)a3 range:(_NSRange)a4 persistenceHelper:(id)a5
{
  length = a4.length;
  location = a4.location;
  v41[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (![v9 isEqualToString:*MEMORY[0x1E69B7508]])
  {
    [(ICTTTextStorage *)self setFilterSubstringAttributes:1];
    v13 = [*MEMORY[0x1E6982E18] identifier];
    v14 = [v9 isEqualToString:v13];

    if (v14)
    {
      v40 = *MEMORY[0x1E69DB630];
      v41[0] = *MEMORY[0x1E69DB658];
      v15 = MEMORY[0x1E695DF20];
      v16 = v41;
      v17 = &v40;
    }

    else
    {
      v18 = [*MEMORY[0x1E6983098] identifier];
      v19 = [v9 isEqualToString:v18];

      if (v19)
      {
        v38 = *MEMORY[0x1E69DB630];
        v39 = ICWebArchiveTextDocumentType;
        v15 = MEMORY[0x1E695DF20];
        v16 = &v39;
        v17 = &v38;
      }

      else
      {
        v20 = [*MEMORY[0x1E6982F90] identifier];
        v21 = [v9 isEqualToString:v20];

        if (v21)
        {
          v36 = *MEMORY[0x1E69DB630];
          v37 = *MEMORY[0x1E69DB6A0];
          v15 = MEMORY[0x1E695DF20];
          v16 = &v37;
          v17 = &v36;
        }

        else
        {
          v22 = [*MEMORY[0x1E6982DC0] identifier];
          v23 = [v9 isEqualToString:v22];

          if (!v23)
          {
            v26 = [*MEMORY[0x1E6983060] identifier];
            v27 = [v9 isEqualToString:v26];

            if (v27)
            {
              [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:1];
              v28 = *MEMORY[0x1E69DB690];
              v29 = *MEMORY[0x1E69DB618];
              v32[0] = *MEMORY[0x1E69DB630];
              v32[1] = v29;
              v33[0] = v28;
              v33[1] = &unk_1F4FC4260;
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
              v12 = [(ICTTTextStorage *)self dataFromRange:location documentAttributes:length error:v30, 0];

              [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:0];
            }

            else
            {
              v31 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location, length];
              v12 = [v31 ic_itemProviderDataForUTI:v9];
            }

            goto LABEL_12;
          }

          v34 = *MEMORY[0x1E69DB630];
          v35 = *MEMORY[0x1E69DB698];
          v15 = MEMORY[0x1E695DF20];
          v16 = &v35;
          v17 = &v34;
        }
      }
    }

    v24 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v12 = [(ICTTTextStorage *)self dataFromRange:location documentAttributes:length error:v24, 0];

LABEL_12:
    [(ICTTTextStorage *)self setFilterSubstringAttributes:0];
    goto LABEL_13;
  }

  v11 = [(ICTTTextStorage *)self customPasteboardDataFromRange:location persistenceHelper:length, v10];
  v12 = [v11 persistenceData];

LABEL_13:
  return v12;
}

- (id)filteredAttributedStringForUTI:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = *MEMORY[0x1E6983060];
  v8 = a3;
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:v10];
  v11 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location, length];
  [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:0];

  return v11;
}

- (void)suppressingShiftStateUpdatesIfNecessaryWithSelection:(void *)a3 perform:
{
  v6 = a3;
  if (a1)
  {
    v5 = [a2 objectAtIndexedSubscript:0];
    if (([a1 isFixing] & 1) != 0 || !objc_msgSend(v5, "count"))
    {
      v6[2]();
    }

    else
    {
      [MEMORY[0x1E69DCBB8] ic_suppressingShiftStateUpdates:v6];
    }
  }
}

- (void)restoreSelection:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__ICTTTextStorage_restoreSelection___block_invoke;
  v9[3] = &unk_1E8468D98;
  v10 = v5;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  [(ICTTTextStorage *)self suppressingShiftStateUpdatesIfNecessaryWithSelection:v4 perform:v9];
}

void __36__ICTTTextStorage_restoreSelection___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "ICTTTextStorage selection restoration error: selRange out of bounds of ICTTTextStorage. Clipping to the length of ICTTTextStorage", buf, 2u);
}

void __36__ICTTTextStorage_restoreSelection___block_invoke_cold_2(uint8_t *a1, NSRange range, void *a3, NSObject *a4)
{
  v7 = NSStringFromRange(range);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1D4171000, a4, OS_LOG_TYPE_ERROR, "corrected selRange: %@", a1, 0xCu);
}

@end