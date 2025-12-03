@interface ICTTTextStorage
+ (double)listItemGlyphPointSizeForUnorderedListStyle:(unsigned int)style zoomFactor:(double)factor;
+ (id)bulletTextAttributesWithTextFont:(id)font paragraphStyle:(id)style zoomFactor:(double)factor;
+ (id)filteredAttributedSubstring:(id)substring fromRange:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText fixAttachments:(BOOL)attachments insertListMarkers:(BOOL)markers;
+ (id)removeDataDetectorLinksForAttributedString:(id)string;
+ (id)removeTextAttachmentsForAttributedString:(id)string translateICTTFont:(BOOL)font;
+ (id)standardizedAttributedStringFromAttributedString:(id)string withStyler:(id)styler fixAttachments:(BOOL)attachments translateICTTFont:(BOOL)font context:(id)context;
+ (void)fixAttachmentsForRenderingInAttributedString:(id)string forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText;
- (BOOL)hasAnyTextViewWithDarkAppearance;
- (BOOL)hasNamedStyle:(unsigned int)style inRange:(_NSRange)range;
- (BOOL)isDeletingContentAttachmentWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length;
- (BOOL)isDeletingDictationAttachmentWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length;
- (BOOL)isEditingOrConvertingMarkedText:(BOOL)text;
- (BOOL)isForTextKit2;
- (BOOL)isRightToLeftAtIndex:(int64_t)index;
- (BOOL)mergeableStringIsEqualAfterSerialization:(id)serialization;
- (BOOL)shouldBreakUndoCoalescingWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length;
- (BOOL)textViewHasMarkedText:(id)text;
- (BOOL)validateIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (BOOL)wantsTimestampUpdates;
- (ICOutlineController)outlineController;
- (ICTTTextStorage)initWithAttributedString:(id)string replicaID:(id)d;
- (ICTTTextStorage)initWithAttributedString:(id)string replicaID:(id)d sourceZoomController:(id)controller keepSourceZoomController:(BOOL)zoomController existingStyler:(id)styler;
- (ICTTTextStorage)initWithData:(id)data replicaID:(id)d;
- (ICTTTextStorage)initWithDocument:(id)document;
- (ICTTTextUndoTarget)overrideUndoTarget;
- (ICTTTextUndoTarget)undoTarget;
- (NSNumber)currentTimestamp;
- (NSSet)textLayoutManagers;
- (NSSet)textViews;
- (NSUUID)replicaID;
- (_NSRange)beforeEndEditedRange;
- (_NSRange)lastUndoEditRange;
- (_NSRange)logicalRangeForLocation:(unint64_t)location;
- (_NSRange)safeCharacterRangeForRange:(_NSRange)range;
- (_NSRange)ttEditedRange;
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)attributedSubstringFromRange:(_NSRange)range;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)copyDataForUTI:(id)i range:(_NSRange)range persistenceHelper:(id)helper;
- (id)correctParagraphStyleReuseForRange:(_NSRange)range withNewAttributedString:(id)string;
- (id)customPasteboardDataFromRange:(_NSRange)range persistenceHelper:(id)helper;
- (id)dataFromRange:(_NSRange)range documentAttributes:(id)attributes error:(id *)error;
- (id)editAtIndex:(unint64_t)index;
- (id)filteredAttributedStringForUTI:(id)i range:(_NSRange)range;
- (id)filteredAttributedSubstringFromRange:(_NSRange)range;
- (id)filteredAttributedSubstringFromRange:(_NSRange)range insertListMarkers:(BOOL)markers;
- (id)itemProviderForRange:(_NSRange)range andNote:(id)note;
- (id)paragraphUUIDsInRange:(_NSRange)range;
- (id)plainTextParagraphsFromRange:(_NSRange)range;
- (id)savedSelectionWithSelectionAffinity:(unint64_t)affinity;
- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)range context:(id)context;
- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)range styler:(id)styler context:(id)context;
- (id)standardizedAttributedStringFixingTextAttachmentsInContext:(id)context;
- (id)string;
- (unint64_t)attributeOptions;
- (unint64_t)length;
- (unint64_t)mergeWithDocument:(id)document;
- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range;
- (void)addTextLayoutManager:(id)manager;
- (void)addUndoCommand:(id)command;
- (void)applyUndoGroup:(id)group;
- (void)applyUndoWithBlock:(id)block;
- (void)beginEditing;
- (void)beginSkippingTimestampUpdates;
- (void)beginTemporaryAttributeEditing;
- (void)breakUndoCoalescing;
- (void)convertNSTablesToTabs:(id)tabs;
- (void)coordinateAccess:(id)access;
- (void)coordinateEditing:(id)editing;
- (void)coordinateReading:(id)reading;
- (void)dd_makeLinksForResultsInAttributesOfType:(unint64_t)type context:(id)context range:(_NSRange)range;
- (void)dd_resetResults;
- (void)editWithAttributeOptions:(unint64_t)options usingBlock:(id)block;
- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length;
- (void)endEditing;
- (void)endSkippingTimestampUpdates;
- (void)endTemporaryAttributeEditing;
- (void)endTemporaryAttributes;
- (void)enumerateEditsInRange:(_NSRange)range usingBlock:(id)block;
- (void)executeDelayedFixupAfterEditing;
- (void)fixupAfterEditing;
- (void)fixupAfterEditingDelayedToEndOfRunLoop;
- (void)forceFixupAfterEditingIfDelayed;
- (void)handleDidUndoRedoNotification:(id)notification;
- (void)preReplaceCharactersInRange:(_NSRange)range withStringLength:(unint64_t)length;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)removeAttribute:(id)attribute range:(_NSRange)range;
- (void)removeTextLayoutManager:(id)manager;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)replaceWithDocument:(id)document;
- (void)resetHighlightsAttributedString;
- (void)resetTTEdits;
- (void)resetUndoManager;
- (void)restoreAttributedString:(id)string;
- (void)restoreSelection:(id)selection;
- (void)saveSelectionDuringBlock:(id)block affinity:(unint64_t)affinity;
- (void)setAttributeOptions:(unint64_t)options;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
- (void)setTimestamp:(id)timestamp range:(_NSRange)range;
- (void)styleTextInRange:(_NSRange)range;
- (void)suppressingShiftStateUpdatesIfNecessaryWithSelection:(void *)selection perform:;
@end

@implementation ICTTTextStorage

- (void)resetHighlightsAttributedString
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  string = [(NSMutableAttributedString *)self->_attributedString string];
  v5 = [v3 initWithString:string];
  highlightsAttributedString = self->_highlightsAttributedString;
  self->_highlightsAttributedString = v5;

  attributedString = self->_attributedString;
  v8 = *MEMORY[0x1E69DB650];
  ic_range = [(NSMutableAttributedString *)attributedString ic_range];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke;
  v16[3] = &unk_1E846A170;
  v16[4] = self;
  [(NSMutableAttributedString *)attributedString enumerateAttribute:v8 inRange:ic_range options:v10 usingBlock:0, v16];
  v11 = self->_attributedString;
  v12 = *MEMORY[0x1E69B75D8];
  ic_range2 = [(NSMutableAttributedString *)v11 ic_range];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__ICTTTextStorage_resetHighlightsAttributedString__block_invoke_2;
  v15[3] = &unk_1E846A170;
  v15[4] = self;
  [(NSMutableAttributedString *)v11 enumerateAttribute:v12 inRange:ic_range2 options:v14 usingBlock:0, v15];
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
  mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  attributedString = [mergeableString attributedString];
  v4 = [attributedString length];

  return v4;
}

- (void)beginSkippingTimestampUpdates
{
  v3 = [(ICTTTextStorage *)self skipTimestampUpdatesCount]+ 1;

  [(ICTTTextStorage *)self setSkipTimestampUpdatesCount:v3];
}

- (id)string
{
  mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  attributedString = [mergeableString attributedString];

  string = [attributedString string];

  return string;
}

- (void)beginEditing
{
  [(ICTTTextStorage *)self setEditingCount:[(ICTTTextStorage *)self editingCount]+ 1];
  v4.receiver = self;
  v4.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v4 beginEditing];
  mergeableString = [(ICTTTextStorage *)self mergeableString];
  [mergeableString beginEditing];
}

- (void)endEditing
{
  v39 = *MEMORY[0x1E69E9840];
  mergeableString = [(ICTTTextStorage *)self mergeableString];
  [mergeableString endEditing];

  changeInLength = [(ICTTTextStorage *)self changeInLength];
  editedRange = [(ICTTTextStorage *)self editedRange];
  v7 = v6;
  editedMask = [(ICTTTextStorage *)self editedMask];
  [(ICTTTextStorage *)self setBeforeEndEditedRange:editedRange, v7];
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
    if (![(ICTTTextStorage *)self isFixing]&& editedMask)
    {
      p_ttEditedRange = &self->_ttEditedRange;
      location = self->_ttEditedRange.location;
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        p_ttEditedRange->location = editedRange;
        self->_ttEditedRange.length = v7;
      }

      else
      {
        if (editedRange >= location)
        {
          v11 = self->_ttEditedRange.location;
        }

        else
        {
          v11 = editedRange;
        }

        v12 = self->_ttEditedRange.length + location;
        if (v7 - changeInLength + editedRange > v12)
        {
          v12 = v7 - changeInLength + editedRange;
        }

        p_ttEditedRange->location = v11;
        self->_ttEditedRange.length = changeInLength - v11 + v12;
        changeInLength += self->_ttChangeInLength;
      }

      self->_ttChangeInLength = changeInLength;
      [(ICTTTextStorage *)self setTtEditedMask:[(ICTTTextStorage *)self ttEditedMask]| editedMask];
      if (![(ICTTTextStorage *)self isApplyingUndoCommand]&& ![(ICTTTextStorage *)self isEditingTemporaryAttributes])
      {
        [(ICTTTextStorage *)self fixupAfterEditingDelayedToEndOfRunLoop];
      }
    }

    [(NSMutableArray *)self->_deletedRanges removeAllObjects];
    undoCommands = [(ICTTTextStorage *)self undoCommands];
    v14 = [undoCommands count];

    if (v14)
    {
      coalescingUndoGroup = [(ICTTTextStorage *)self coalescingUndoGroup];

      if (!coalescingUndoGroup)
      {
        undoTarget = [(ICTTTextStorage *)self undoTarget];
        newCoalescingUndoGroup = [undoTarget newCoalescingUndoGroup];
        [(ICTTTextStorage *)self setCoalescingUndoGroup:newCoalescingUndoGroup];

        undoManager = [(ICTTTextStorage *)self undoManager];
        coalescingUndoGroup2 = [(ICTTTextStorage *)self coalescingUndoGroup];
        [undoManager registerUndoWithTarget:undoTarget selector:sel_applyUndoGroup_ object:coalescingUndoGroup2];

        undoManager2 = [(ICTTTextStorage *)self undoManager];
        undoActionName = [undoManager2 undoActionName];
        v22 = [undoActionName length];

        if (!v22)
        {
          undoManager3 = [(ICTTTextStorage *)self undoManager];
          v24 = __ICLocalizedFrameworkString_impl(@"Typing", @"Typing", 0, 1);
          [undoManager3 setActionName:v24];
        }
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      undoCommands2 = [(ICTTTextStorage *)self undoCommands];
      v26 = [undoCommands2 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
              objc_enumerationMutation(undoCommands2);
            }

            v30 = *(*(&v33 + 1) + 8 * i);
            coalescingUndoGroup3 = [(ICTTTextStorage *)self coalescingUndoGroup];
            [coalescingUndoGroup3 addCommand:v30];
          }

          v27 = [undoCommands2 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v27);
      }

      undoCommands3 = [(ICTTTextStorage *)self undoCommands];
      [undoCommands3 removeAllObjects];
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
  wantsUndoCommands = [(ICTTTextStorage *)self wantsUndoCommands];
  if (wantsUndoCommands)
  {
    if ([(ICTTTextStorage *)self isSkippingTimestampUpdates]|| [(ICTTTextStorage *)self isEditingTemporaryAttributes]|| [(ICTTTextStorage *)self disableUndoCoalesceBreaking])
    {
      LOBYTE(wantsUndoCommands) = 0;
    }

    else
    {
      LOBYTE(wantsUndoCommands) = ![(ICTTTextStorage *)self isFixing];
    }
  }

  return wantsUndoCommands;
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
    textLayoutManagers = [(ICTTTextStorage *)self textLayoutManagers];
    v4 = [textLayoutManagers ic_compactMap:&__block_literal_global_142];
  }

  else
  {
    v5 = MEMORY[0x1E695DFD8];
    textLayoutManagers = [(ICTTTextStorage *)self layoutManagers];
    v6 = [textLayoutManagers ic_flatMap:&__block_literal_global_146];
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
  textLayoutManagerReferences = [(ICTTTextStorage *)self textLayoutManagerReferences];
  v5 = [textLayoutManagerReferences copy];

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
        object = [v10 object];

        if (object)
        {
          object2 = [v10 object];
          [v3 addObject:object2];
        }

        else
        {
          object2 = [(ICTTTextStorage *)self textLayoutManagerReferences];
          [object2 removeObject:v10];
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
    wantsUndoCommands = [(ICTTTextStorage *)self wantsUndoCommands];
    [(ICTTTextStorage *)self setWantsUndoCommands:[(ICTTTextStorage *)self delayedFixupAfterEditingWantsUndoCommand]];
    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    [(ICTTTextStorage *)self fixupAfterEditing];
    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:0];

    [(ICTTTextStorage *)self setWantsUndoCommands:wantsUndoCommands];
  }
}

- (BOOL)hasAnyTextViewWithDarkAppearance
{
  textViews = [(ICTTTextStorage *)self textViews];
  v3 = [textViews ic_containsObjectPassingTest:&__block_literal_global_42];

  return v3;
}

uint64_t __51__ICTTTextStorage_hasAnyTextViewWithDarkAppearance__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 ic_isDark];

  return v3;
}

- (ICTTTextStorage)initWithAttributedString:(id)string replicaID:(id)d
{
  stringCopy = string;
  v7 = [(ICTTTextStorage *)self initWithData:0 replicaID:d];
  v8 = v7;
  if (v7)
  {
    isForTextKit2 = [(ICTTTextStorage *)v7 isForTextKit2];
    v10 = off_1E8466318;
    if (!isForTextKit2)
    {
      v10 = off_1E84663E0;
    }

    v11 = objc_alloc_init(*v10);
    [(ICTTTextStorage *)v8 setStyler:v11];

    [(ICTTTextStorage *)v8 setConvertAttributes:1];
    [(ICTTTextStorage *)v8 setWantsUndoCommands:0];
    [(ICTTTextStorage *)v8 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v8 length], stringCopy];
    [(ICTTTextStorage *)v8 fixupAfterEditing];
    [(ICTTTextStorage *)v8 setConvertAttributes:0];
  }

  return v8;
}

- (ICTTTextStorage)initWithAttributedString:(id)string replicaID:(id)d sourceZoomController:(id)controller keepSourceZoomController:(BOOL)zoomController existingStyler:(id)styler
{
  stringCopy = string;
  controllerCopy = controller;
  stylerCopy = styler;
  v15 = [(ICTTTextStorage *)self initWithData:0 replicaID:d];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_8;
  }

  if (!stylerCopy)
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

    if (!controllerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(ICTTTextStorage *)v15 setStyler:stylerCopy];
  if (controllerCopy)
  {
LABEL_4:
    objc_opt_class();
    styler = [(ICTTTextStorage *)v16 styler];
    v18 = ICDynamicCast();
    [v18 setZoomController:controllerCopy];
  }

LABEL_5:
  [(ICTTTextStorage *)v16 setConvertAttributes:1];
  [(ICTTTextStorage *)v16 setWantsUndoCommands:0];
  [(ICTTTextStorage *)v16 replaceCharactersInRange:0 withAttributedString:[(ICTTTextStorage *)v16 length], stringCopy];
  styler2 = [(ICTTTextStorage *)v16 styler];
  editedRange = [(ICTTTextStorage *)v16 editedRange];
  [styler2 styleText:v16 inRange:editedRange fixModelAttributes:{v21, 1}];

  [(ICTTTextStorage *)v16 fixupAfterEditing];
  [(ICTTTextStorage *)v16 setConvertAttributes:0];
  if (controllerCopy && !zoomController)
  {
    objc_opt_class();
    styler3 = [(ICTTTextStorage *)v16 styler];
    v23 = ICDynamicCast();

    v24 = objc_alloc_init(objc_opt_class());
    [v23 setZoomController:v24];

    [v23 refreshTextStylingForTextStorage:v16 withTextController:v23];
  }

LABEL_8:

  return v16;
}

- (void)preReplaceCharactersInRange:(_NSRange)range withStringLength:(unint64_t)length
{
  length = range.length;
  location = range.location;
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = [ICTTTextStorage isDeletingDictationAttachmentWithReplacementRange:"isDeletingDictationAttachmentWithReplacementRange:replacementLength:" replacementLength:?];
  v9 = [(ICTTTextStorage *)self shouldBreakUndoCoalescingWithReplacementRange:location replacementLength:length, length];
  if ([(ICTTTextStorage *)self isPerformingAccessibilityUndoableTextInsertion]|| ![(ICTTTextStorage *)self isDragging]&& ![(ICTTTextStorage *)self isPausingUndoActions]&& !v8 && v9 && ![(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    [(ICTTTextStorage *)self breakUndoCoalescing];
  }

  if (length)
  {
    if (!length)
    {
      deletedRanges = [(ICTTTextStorage *)self deletedRanges];
      v11 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
      v15[0] = v11;
      attributedString = [(ICTTTextStorage *)self attributedString];
      v13 = [attributedString attributedSubstringFromRange:{location, length}];
      v15[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      [deletedRanges addObject:v14];
    }
  }
}

- (BOOL)isDeletingDictationAttachmentWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length
{
  LOBYTE(v4) = 0;
  if (range.length && !length)
  {
    v5 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69DB5F8] atIndex:range.location effectiveRange:?];
    v4 = ![ICTextAttachment textAttachmentIsContent:v5];
  }

  return v4;
}

- (BOOL)isEditingOrConvertingMarkedText:(BOOL)text
{
  textCopy = text;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  textViews = [(ICTTTextStorage *)self textViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ICTTTextStorage_UI__isEditingOrConvertingMarkedText___block_invoke;
  v8[3] = &unk_1E846A0A8;
  v8[4] = self;
  v8[5] = &v9;
  [textViews enumerateObjectsUsingBlock:v8];

  v6 = *(v10 + 24);
  if (textCopy)
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

- (BOOL)textViewHasMarkedText:(id)text
{
  markedTextRange = [text markedTextRange];
  v4 = markedTextRange != 0;

  return v4;
}

- (BOOL)isDeletingContentAttachmentWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length
{
  length = range.length;
  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (range.length && !length)
  {
    location = range.location;
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

- (BOOL)shouldBreakUndoCoalescingWithReplacementRange:(_NSRange)range replacementLength:(unint64_t)length
{
  length = range.length;
  location = range.location;
  v8 = [(ICTTTextStorage *)self isEditingOrConvertingMarkedText:1];
  lastUndoEditRange = [(ICTTTextStorage *)self lastUndoEditRange];
  v11 = location != lastUndoEditRange + v10 && location + length != [(ICTTTextStorage *)self lastUndoEditRange];
  if (location >= [(ICTTTextStorage *)self length])
  {
    v14 = 0;
  }

  else
  {
    string = [(ICTTTextStorage *)self string];
    [string rangeOfComposedCharacterSequenceAtIndex:location];
    v14 = v13;
  }

  v15 = length == v14 && length == 0;
  v16 = [(ICTTTextStorage *)self isDeletingContentAttachmentWithReplacementRange:location replacementLength:length, length];
  if (length)
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
    v19 = length == 0;
    if (!length)
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
    [(ICTTTextStorage *)self setLastUndoEditRange:location, length];
  }

  return v20;
}

- (void)convertNSTablesToTabs:(id)tabs
{
  tabsCopy = tabs;
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
  v4 = [tabsCopy length];
  v5 = *MEMORY[0x1E69DB688];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ICTTTextStorage_UI__convertNSTablesToTabs___block_invoke;
  v7[3] = &unk_1E846A0F8;
  v9 = v13;
  v10 = v11;
  v6 = tabsCopy;
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

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
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

  styler = [(ICTTTextStorage *)self styler];

  v112 = styler;
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

    if (!styler)
    {
      v14 = objc_alloc_init(ICTextController);
      [(ICTTTextStorage *)self setStyler:v14];
    }

    if ([ICMarkdownRepresentation isMarkdownAttributedString:stringCopy])
    {
      v15 = [[ICMarkdownRepresentation alloc] initWithMarkdown:stringCopy];
      [(ICMarkdownRepresentation *)v15 setKeepOriginalAttributes:1];
      [(ICMarkdownRepresentation *)v15 setFilterConflictingAttributes:1];
      createRenderableAttributedString = [(ICMarkdownRepresentation *)v15 createRenderableAttributedString];

      stringCopy = createRenderableAttributedString;
    }
  }

  if ([(ICTTTextStorage *)self shouldRemoveLeadingWhitespaceForChecklistDrop])
  {
    [(ICTTTextStorage *)self setShouldRemoveLeadingWhitespaceForChecklistDrop:0];
    if (!length)
    {
      string = [(ICTTTextStorage *)self string];
      v18 = [string lineRangeForRange:{location, 0}];
      v20 = [string ic_substringWithRange:{v18, v19}];
      ic_leadingTrimmedString = [v20 ic_leadingTrimmedString];
      v22 = [v20 length];
      v23 = v22 - [ic_leadingTrimmedString length];
      if (v23)
      {
        location = v18;
      }

      length = v23;
    }
  }

  stringCopy = [(ICTTTextStorage *)self correctParagraphStyleReuseForRange:location withNewAttributedString:length, stringCopy];

  -[ICTTTextStorage preReplaceCharactersInRange:withStringLength:](self, "preReplaceCharactersInRange:withStringLength:", location, length, [stringCopy length]);
  isEditingViaWritingTools = [(ICTTTextStorage *)self isEditingViaWritingTools];
  v26 = MEMORY[0x1E69B75F8];
  if (isEditingViaWritingTools)
  {
    v27 = [stringCopy mutableCopy];
    v28 = *v26;
    ic_range = [v27 ic_range];
    [v27 addAttribute:v28 value:&unk_1F4FC3DB0 range:{ic_range, v30}];
  }

  else
  {
    v31 = *MEMORY[0x1E69B75F8];
    ic_range2 = [stringCopy ic_range];
    if (![stringCopy ic_containsAttribute:v31 inRange:{ic_range2, v33}])
    {
      goto LABEL_25;
    }

    v27 = [stringCopy mutableCopy];
    v34 = *v26;
    ic_range3 = [v27 ic_range];
    [v27 removeAttribute:v34 range:{ic_range3, v36}];
  }

  v37 = [v27 copy];

  stringCopy = v37;
LABEL_25:
  v114 = [stringCopy copy];
  v38 = [stringCopy mutableCopy];
  v39 = *MEMORY[0x1E69B7618];
  ic_range4 = [v38 ic_range];
  [v38 removeAttribute:v39 range:{ic_range4, v41}];
  v10 = v38;

  filterPastedAttributes = [(ICTTTextStorage *)self filterPastedAttributes];
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
      styler2 = [(ICTTTextStorage *)self styler];
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        styler3 = [(ICTTTextStorage *)self styler];
        pasteboardTypes = [(ICTTTextStorage *)self pasteboardTypes];
        [styler3 convertNSTablesToICTables:v43 pasteboardTypes:pasteboardTypes filterPastedAttributes:filterPastedAttributes isReadingSelectionFromPasteboard:{-[ICTTTextStorage isReadingSelectionFromPasteboard](self, "isReadingSelectionFromPasteboard")}];
      }
    }

    v108 = [v43 mutableCopy];
    if (filterPastedAttributes)
    {
      styler4 = [(ICTTTextStorage *)self styler];
      [styler4 guessFontSizeThresholdsForTTStylesInAttributedString:v43];
    }

    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x2020000000;
    v131 = 0;
    ic_range5 = [v43 ic_range];
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke;
    v129[3] = &unk_1E846A120;
    v129[4] = v130;
    [v43 enumerateAttributesInRange:ic_range5 options:v50 usingBlock:{0, v129}];
    objc_opt_class();
    v51 = MEMORY[0x1E69B7600];
    v52 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69B7600] atIndex:location effectiveRange:0];
    v53 = ICDynamicCast();

    v127[0] = 0;
    v127[1] = v127;
    v127[2] = 0x2020000000;
    v128 = 0;
    v54 = *v51;
    ic_range6 = [v10 ic_range];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_2;
    v126[3] = &unk_1E846A0D0;
    v126[4] = v127;
    [v10 enumerateAttribute:v54 inRange:ic_range6 options:v56 usingBlock:0, v126];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = 0;
    }

    else
    {
      v57 = v10;
    }

    styler5 = [(ICTTTextStorage *)self styler];
    [styler5 prepareIndentInformationInAttributedString:v10];

    ic_range7 = [v43 ic_range];
    v61 = v60;
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_3;
    v119[3] = &unk_1E846A148;
    v119[4] = self;
    v125 = filterPastedAttributes;
    v62 = v57;
    v120 = v62;
    v63 = v53;
    v121 = v63;
    v124 = v130;
    v64 = v109;
    v122 = v64;
    v65 = v43;
    v123 = v65;
    [v65 enumerateAttributesInRange:ic_range7 options:v61 usingBlock:{0, v119}];
    styler6 = [(ICTTTextStorage *)self styler];
    [styler6 resetGuessedFontSizes];

    styler7 = [(ICTTTextStorage *)self styler];
    [styler7 resetIndentInformation];

    stringCopy = [v65 copy];
    v68 = [v64 copy];

    _Block_object_dispose(v127, 8);
    _Block_object_dispose(v130, 8);

    v114 = v68;
    length = v113;
  }

  else
  {
    stringCopy = v10;
  }

  if ([(ICTTTextStorage *)self wantsTimestampUpdates])
  {
    v69 = [v114 mutableCopy];
    v70 = *MEMORY[0x1E69B7618];
    currentTimestamp = [(ICTTTextStorage *)self currentTimestamp];
    ic_range8 = [v69 ic_range];
    [v69 addAttribute:v70 value:currentTimestamp range:{ic_range8, v73}];

    length = v113;
    v74 = [v69 copy];

    [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    v114 = v74;
  }

  document = [(ICTTTextStorage *)self document];
  mergeableString = [document mergeableString];
  attributedString = [mergeableString attributedString];
  v110 = [attributedString attributedSubstringFromRange:{location, length}];

  delegate = [(ICTTTextStorage *)self delegate];
  LOBYTE(mergeableString) = objc_opt_respondsToSelector();

  if (mergeableString)
  {
    delegate2 = [(ICTTTextStorage *)self delegate];
    [delegate2 textStorageWillChange:self];
  }

  [(ICTTTextStorage *)self setDirectlyEditing:1, v110];
  objc_opt_class();
  attributedString2 = [(ICTTTextStorage *)self attributedString];
  v81 = ICCheckedDynamicCast();
  [v81 replaceCharactersInRange:location withAttributedString:{length, stringCopy}];

  v82 = objc_alloc(MEMORY[0x1E696AD40]);
  string2 = [stringCopy string];
  v84 = [v82 initWithString:string2];

  v85 = *MEMORY[0x1E69DB650];
  ic_range9 = [stringCopy ic_range];
  v88 = v87;
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_4;
  v117[3] = &unk_1E846A170;
  v89 = v84;
  v118 = v89;
  [stringCopy enumerateAttribute:v85 inRange:ic_range9 options:v88 usingBlock:{0, v117}];
  v90 = *MEMORY[0x1E69B75D8];
  ic_range10 = [stringCopy ic_range];
  v93 = v92;
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __69__ICTTTextStorage_UI__replaceCharactersInRange_withAttributedString___block_invoke_5;
  v115[3] = &unk_1E846A170;
  v94 = v89;
  v116 = v94;
  [stringCopy enumerateAttribute:v90 inRange:ic_range10 options:v93 usingBlock:{0, v115}];
  objc_opt_class();
  highlightsAttributedString = [(ICTTTextStorage *)self highlightsAttributedString];
  v96 = ICCheckedDynamicCast();
  v97 = [v94 copy];
  [v96 replaceCharactersInRange:location withAttributedString:{v113, v97}];

  document2 = [(ICTTTextStorage *)self document];
  mergeableString2 = [document2 mergeableString];
  v11 = v114;
  [mergeableString2 replaceCharactersInRange:location withAttributedString:{v113, v114}];

  if ([(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    v113 = [(ICTTTextStorage *)self paragraphUUIDsInRange:location, v113];
    outlineController = [(ICTTTextStorage *)self outlineController];
    [outlineController expandUUIDs:v113];
  }

  if (!v112)
  {
    [(ICTTTextStorage *)self setStyler:0];
  }

  [(ICTTTextStorage *)self setDirectlyEditing:0];
  delegate3 = [(ICTTTextStorage *)self delegate];
  v103 = objc_opt_respondsToSelector();

  if (v103)
  {
    delegate4 = [(ICTTTextStorage *)self delegate];
    [delegate4 textStorage:self didReplace:v111 with:stringCopy];
  }

  delegate5 = [(ICTTTextStorage *)self delegate];
  v106 = objc_opt_respondsToSelector();

  if (v106)
  {
    delegate6 = [(ICTTTextStorage *)self delegate];
    [delegate6 textStorageDidChange:self];
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

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (location + length <= -[ICTTTextStorage length](self, "length") && (-[ICTTTextStorage attributedString](self, "attributedString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, location + length <= v9))
  {
    -[ICTTTextStorage preReplaceCharactersInRange:withStringLength:](self, "preReplaceCharactersInRange:withStringLength:", location, length, [stringCopy length]);
    document = [(ICTTTextStorage *)self document];
    mergeableString = [document mergeableString];
    attributedString = [mergeableString attributedString];
    v10 = [attributedString attributedSubstringFromRange:{location, length}];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
    [(ICTTTextStorage *)self setDirectlyEditing:1];
    objc_opt_class();
    attributedString2 = [(ICTTTextStorage *)self attributedString];
    v16 = ICCheckedDynamicCast();
    [v16 replaceCharactersInRange:location withString:{length, stringCopy}];

    objc_opt_class();
    highlightsAttributedString = [(ICTTTextStorage *)self highlightsAttributedString];
    v18 = ICCheckedDynamicCast();
    [v18 replaceCharactersInRange:location withString:{length, stringCopy}];

    document2 = [(ICTTTextStorage *)self document];
    mergeableString2 = [document2 mergeableString];
    [mergeableString2 replaceCharactersInRange:location withString:{length, stringCopy}];

    if ([stringCopy length] && -[ICTTTextStorage wantsTimestampUpdates](self, "wantsTimestampUpdates"))
    {
      document3 = [(ICTTTextStorage *)self document];
      mergeableString3 = [document3 mergeableString];
      v23 = [mergeableString3 attributesAtIndex:location effectiveRange:0];
      v24 = [v23 mutableCopy];

      currentTimestamp = [(ICTTTextStorage *)self currentTimestamp];
      [v24 setObject:currentTimestamp forKeyedSubscript:*MEMORY[0x1E69B7618]];

      document4 = [(ICTTTextStorage *)self document];
      mergeableString4 = [document4 mergeableString];
      v28 = [v24 copy];
      [mergeableString4 setAttributes:v28 range:{location, objc_msgSend(stringCopy, "length")}];
    }

    if ([(ICTTTextStorage *)self wantsTimestampUpdates])
    {
      [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    }

    [(ICTTTextStorage *)self setDirectlyEditing:0];
    delegate = [(ICTTTextStorage *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate2 = [(ICTTTextStorage *)self delegate];
      [delegate2 textStorage:self didReplace:v10 with:v14];
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

+ (id)bulletTextAttributesWithTextFont:(id)font paragraphStyle:(id)style zoomFactor:(double)factor
{
  v20[3] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  styleCopy = style;
  if (bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__onceToken != -1)
  {
    +[ICTTTextStorage(UI) bulletTextAttributesWithTextFont:paragraphStyle:zoomFactor:];
  }

  v10 = [[TTBulletTextAttributesCacheKey alloc] initWithTextFont:fontCopy paragraphStyle:styleCopy zoomFactor:factor];
  v11 = [bulletTextAttributesWithTextFont_paragraphStyle_zoomFactor__cache objectForKey:v10];
  if (!v11)
  {
    if ([styleCopy style] == 100)
    {
      [self listItemGlyphPointSizeForUnorderedListStyle:100 zoomFactor:factor];
      ic_fontWithTabularNumbers = [MEMORY[0x1E69DB878] fontWithName:@"Menlo-Regular" size:?];
    }

    else
    {
      ic_preferredFontForBodyText = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
      if ([styleCopy style] == 101)
      {
        [self listItemGlyphPointSizeForUnorderedListStyle:101 zoomFactor:factor];
        ic_fontWithTabularNumbers = [ic_preferredFontForBodyText ic_fontWithSize:?];
      }

      else
      {
        [fontCopy pointSize];
        v14 = [ic_preferredFontForBodyText ic_fontWithSize:?];
        ic_fontWithTabularNumbers = [v14 ic_fontWithTabularNumbers];
      }
    }

    ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
    [ic_mutableDefaultParagraphStyle setBaseWritingDirection:{objc_msgSend(styleCopy, "layoutWritingDirection")}];
    v16 = *MEMORY[0x1E69DB688];
    v19[0] = *MEMORY[0x1E69DB648];
    v19[1] = v16;
    v20[0] = ic_fontWithTabularNumbers;
    v20[1] = ic_mutableDefaultParagraphStyle;
    v19[2] = *MEMORY[0x1E69DB650];
    preferredDefaultFontColor = [MEMORY[0x1E69DC888] preferredDefaultFontColor];
    v20[2] = preferredDefaultFontColor;
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

+ (double)listItemGlyphPointSizeForUnorderedListStyle:(unsigned int)style zoomFactor:(double)factor
{
  if (style == 100)
  {
    v4 = 12.0;
    v5 = 26.0;
  }

  else if (style == 101)
  {
    v4 = 17.0;
    v5 = 32.0;
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICTTTextStorage(UI) listItemGlyphPointSizeForUnorderedListStyle:zoomFactor:]" simulateCrash:1 showAlert:0 format:{@"Expected bulleted or dashed list style", factor}];
    v5 = 0.0;
    v4 = 0.0;
  }

  v6 = [MEMORY[0x1E69DB878] ic_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] adjustedForDefaultSize:v4 maxSize:v5];
  [v6 pointSize];
  v8 = v7;

  return ceil(v8);
}

+ (id)standardizedAttributedStringFromAttributedString:(id)string withStyler:(id)styler fixAttachments:(BOOL)attachments translateICTTFont:(BOOL)font context:(id)context
{
  fontCopy = font;
  attachmentsCopy = attachments;
  stringCopy = string;
  contextCopy = context;
  stylerCopy = styler;
  objc_opt_class();
  v14 = ICDynamicCast();

  v15 = [stringCopy mutableCopy];
  if (v14)
  {
    [v14 styleFontInAttributedString:v15 inRange:0 contentSizeCategory:{objc_msgSend(stringCopy, "length"), *MEMORY[0x1E69DDC70]}];
    [v14 styleListsAndIndentsInAttributedString:v15 inRange:{0, objc_msgSend(v15, "length")}];
    v16 = [v15 copy];

    zoomController = [v14 zoomController];
    [zoomController zoomFactor];
    if (v18 != 1.0)
    {
      v19 = [zoomController unzoomAttributedString:v16];

      v16 = v19;
    }

    stringCopy = v16;
  }

  LOBYTE(v25) = 1;
  v20 = +[ICTTTextStorage filteredAttributedSubstring:fromRange:forPlainText:forStandardizedText:fixAttachments:insertListMarkers:](ICTTTextStorage, "filteredAttributedSubstring:fromRange:forPlainText:forStandardizedText:fixAttachments:insertListMarkers:", stringCopy, 0, [stringCopy length], 0, 1, attachmentsCopy, v25);
  v21 = [v20 ic_attributedStringByFlatteningInlineAttachmentsWithContext:contextCopy];

  v22 = [ICTTTextStorage removeTextAttachmentsForAttributedString:v21 translateICTTFont:fontCopy];

  v23 = [ICTTTextStorage removeDataDetectorLinksForAttributedString:v22];

  return v23;
}

- (id)standardizedAttributedStringFixingTextAttachmentsInContext:(id)context
{
  contextCopy = context;
  attributedString = [(ICTTTextStorage *)self attributedString];
  v6 = -[ICTTTextStorage standardizedAttributedStringFixingTextAttachmentsForRange:context:](self, "standardizedAttributedStringFixingTextAttachmentsForRange:context:", 0, [attributedString length], contextCopy);

  return v6;
}

- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  styler = [(ICTTTextStorage *)self styler];
  contextCopy = [(ICTTTextStorage *)self standardizedAttributedStringFixingTextAttachmentsForRange:location styler:length context:styler, contextCopy];

  return contextCopy;
}

- (id)standardizedAttributedStringFixingTextAttachmentsForRange:(_NSRange)range styler:(id)styler context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  stylerCopy = styler;
  attributedString = [(ICTTTextStorage *)self attributedString];
  v12 = [attributedString attributedSubstringFromRange:{location, length}];

  v13 = [ICTTTextStorage standardizedAttributedStringFromAttributedString:v12 withStyler:stylerCopy fixAttachments:1 translateICTTFont:1 context:contextCopy];

  return v13;
}

- (id)dataFromRange:(_NSRange)range documentAttributes:(id)attributes error:(id *)error
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  if ([(ICTTTextStorage *)self filterSubstringAttributes])
  {
    v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB630]];
    v11 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location insertListMarkers:length, v10 != *MEMORY[0x1E69DB658]];
    error = [v11 dataFromRange:0 documentAttributes:objc_msgSend(v11 error:{"length"), attributesCopy, error}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICTTTextStorage;
    error = [(ICTTTextStorage *)&v14 dataFromRange:location documentAttributes:length error:attributesCopy, error];
  }

  return error;
}

- (id)filteredAttributedSubstringFromRange:(_NSRange)range insertListMarkers:(BOOL)markers
{
  length = range.length;
  location = range.location;
  attributedString = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v11) = markers;
  v9 = [ICTTTextStorage filteredAttributedSubstring:attributedString fromRange:location forPlainText:length forStandardizedText:[(ICTTTextStorage *)self filterSubstringAttributesForPlainText] fixAttachments:0 insertListMarkers:1, v11];

  return v9;
}

- (id)filteredAttributedSubstringFromRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributedString = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v9) = 1;
  v7 = [ICTTTextStorage filteredAttributedSubstring:attributedString fromRange:location forPlainText:length forStandardizedText:[(ICTTTextStorage *)self filterSubstringAttributesForPlainText] fixAttachments:0 insertListMarkers:1, v9];

  return v7;
}

- (id)plainTextParagraphsFromRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributedString = [(ICTTTextStorage *)self attributedString];
  LOBYTE(v11) = 0;
  v6 = [ICTTTextStorage filteredAttributedSubstring:attributedString fromRange:location forPlainText:length forStandardizedText:1 fixAttachments:0 insertListMarkers:1, v11];
  string = [v6 string];

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];

  return v9;
}

- (id)attributedSubstringFromRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributedString = [(ICTTTextStorage *)self attributedString];
  v14.location = [attributedString ic_range];
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

  attributedString2 = [(ICTTTextStorage *)self attributedString];
  string = [attributedString2 string];

  if (!string || (-[ICTTTextStorage attributedString](self, "attributedString"), v11 = objc_claimAutoreleasedReturnValue(), [v11 attributedSubstringFromRange:{v7.location, v7.length}], v8 = objc_claimAutoreleasedReturnValue(), v11, !v8))
  {
LABEL_6:
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4F94F00 attributes:0];
  }

LABEL_7:

  return v8;
}

+ (id)removeDataDetectorLinksForAttributedString:(id)string
{
  v3 = [string mutableCopy];
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

+ (id)removeTextAttachmentsForAttributedString:(id)string translateICTTFont:(BOOL)font
{
  fontCopy = font;
  v5 = [string mutableCopy];
  v6 = *MEMORY[0x1E69DB5F8];
  v7 = [v5 length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ICTTTextStorage_UI__removeTextAttachmentsForAttributedString_translateICTTFont___block_invoke;
  v14[3] = &unk_1E846A198;
  v8 = v5;
  v15 = v8;
  [v8 ic_enumerateClampedAttribute:v6 inRange:0 options:v7 usingBlock:{0x100000, v14}];
  if (fontCopy)
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

+ (void)fixAttachmentsForRenderingInAttributedString:(id)string forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText
{
  stringCopy = string;
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [stringCopy length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__ICTTTextStorage_UI__fixAttachmentsForRenderingInAttributedString_forPlainText_forStandardizedText___block_invoke;
  v11[3] = &unk_1E846A1E8;
  v12 = stringCopy;
  textCopy = text;
  standardizedTextCopy = standardizedText;
  v10 = stringCopy;
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

+ (id)filteredAttributedSubstring:(id)substring fromRange:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText fixAttachments:(BOOL)attachments insertListMarkers:(BOOL)markers
{
  standardizedTextCopy = standardizedText;
  attachmentsCopy = attachments;
  textCopy = text;
  length = range.length;
  location = range.location;
  v92[4] = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__18;
  v87 = __Block_byref_object_dispose__18;
  substringCopy = substring;
  v10 = [substringCopy attributedSubstringFromRange:{location, length}];
  v88 = [v10 mutableCopy];

  v72 = [ICTextController shouldRetainFirstListStyleForFilteredAttributedSubstring:substringCopy fromRange:location, length];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (textCopy)
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
        indent = [v14 indent];
        if (indent + 1 <= [v11 count])
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

      indent2 = [v14 indent];
      if (indent2 + 1 < [v11 count])
      {
        [v11 removeObjectsInRange:{objc_msgSend(v14, "indent") + 1, objc_msgSend(v11, "count") + ~objc_msgSend(v14, "indent")}];
      }

      lastObject = [v11 lastObject];
      todo = [v14 todo];
      if (todo && ([v14 todo], v69 = objc_claimAutoreleasedReturnValue(), v70 = v67, (objc_msgSend(v69, "done") & 1) != 0) || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v14, "style")), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "objectForKeyedSubscript:", v23), v70 = objc_claimAutoreleasedReturnValue(), v23, todo))
      {
      }

      markerFormat = [lastObject markerFormat];
      v25 = [markerFormat isEqualToString:v70];

      if (v25)
      {
        v75 = lastObject;
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

      ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7D0] ic_mutableDefaultParagraphStyle];
      tabStops = [ic_mutableDefaultParagraphStyle tabStops];
      v27 = [tabStops mutableCopy];

      v28 = [v27 count];
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          v30 = [v27 objectAtIndexedSubscript:i];
          v31 = objc_alloc(MEMORY[0x1E69DB858]);
          alignment = [v30 alignment];
          indent3 = [v14 indent];
          options = [v30 options];
          if (i)
          {
            v35 = 0.0;
          }

          else
          {
            v35 = 11.0;
          }

          v36 = [v31 initWithTextAlignment:alignment location:options options:v35 + (i + indent3) * 36.0];

          [v27 replaceObjectAtIndex:i withObject:v36];
        }
      }

      [ic_mutableDefaultParagraphStyle setTabStops:v27];
      [ic_mutableDefaultParagraphStyle setTextLists:v11];
      v38 = v81;
      v37 = v82;
      if (markers && v81 < v82 + v81)
      {
        do
        {
          v39 = [v84[5] attribute:*MEMORY[0x1E69B7950] atIndex:v38 effectiveRange:{0, v37}];
          unsignedIntegerValue = [v39 unsignedIntegerValue];

          v41 = MEMORY[0x1E696AEC0];
          if (textCopy)
          {
            v42 = [&stru_1F4F94F00 stringByPaddingToLength:4 * objc_msgSend(v14 withString:"indent") startingAtIndex:{@" ", 0}];
            v43 = [v75 markerForItemNumber:unsignedIntegerValue];
            v44 = [v41 stringWithFormat:@"%@%@ ", v42, v43];
          }

          else
          {
            v42 = [v75 markerForItemNumber:unsignedIntegerValue];
            v44 = [v41 stringWithFormat:@"\t%@\t", v42];
          }

          v45 = [v84[5] attribute:v73 atIndex:v38 effectiveRange:0];
          v46 = [ICTTTextStorage bulletTextAttributesWithTextFont:v45 paragraphStyle:v14 zoomFactor:1.0];
          v47 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v44 attributes:v46];
          string = [v84[5] string];
          v49 = [string paragraphRangeForRange:{v38, 0}];
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

      [v84[5] addAttribute:v68 value:ic_mutableDefaultParagraphStyle range:{v38, v37}];
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
  if (attachmentsCopy)
  {
    [self fixAttachmentsForRenderingInAttributedString:v84[5] forPlainText:textCopy forStandardizedText:standardizedTextCopy];
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    workerManagedObjectContext = [mEMORY[0x1E69B7800] workerManagedObjectContext];

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __127__ICTTTextStorage_UI__filteredAttributedSubstring_fromRange_forPlainText_forStandardizedText_fixAttachments_insertListMarkers___block_invoke_2;
    v77[3] = &unk_1E8468FA8;
    v79 = &v83;
    v60 = workerManagedObjectContext;
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

- (_NSRange)safeCharacterRangeForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
  convertAttributes = [(ICTTTextStorage *)self convertAttributes];
  if ([(ICTTTextStorage *)self filterPastedAttributes])
  {
    convertAttributes |= 2uLL;
  }

  if ([(ICTTTextStorage *)self parsePresentationIntents])
  {
    return convertAttributes | 5;
  }

  else
  {
    return convertAttributes;
  }
}

- (void)setAttributeOptions:(unint64_t)options
{
  [(ICTTTextStorage *)self setConvertAttributes:options & 1];
  [(ICTTTextStorage *)self setFilterPastedAttributes:(options >> 1) & 1];

  [(ICTTTextStorage *)self setParsePresentationIntents:(options & 5) != 0];
}

- (void)editWithAttributeOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  attributeOptions = [(ICTTTextStorage *)self attributeOptions];
  [(ICTTTextStorage *)self beginEditing];
  [(ICTTTextStorage *)self setAttributeOptions:options];
  blockCopy[2](blockCopy);

  [(ICTTTextStorage *)self endEditing];

  [(ICTTTextStorage *)self setAttributeOptions:attributeOptions];
}

- (id)itemProviderForRange:(_NSRange)range andNote:(id)note
{
  length = range.length;
  location = range.location;
  noteCopy = note;
  noteCopy = [[ICTTTextStorageWithRange alloc] initWithTextStorage:self range:location note:length, noteCopy];

  v9 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:noteCopy];
  [(ICTTTextStorageWithRange *)noteCopy prepareTextStorage];

  return v9;
}

- (ICTTTextStorage)initWithDocument:(id)document
{
  documentCopy = document;
  v28.receiver = self;
  v28.super_class = ICTTTextStorage;
  v6 = [(ICTTTextStorage *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, document);
    mergeableString = [(ICTTMergeableStringVersionedDocument *)v7->_document mergeableString];
    [mergeableString setDelegate:v7];

    mergeableString2 = [(ICTTMergeableStringVersionedDocument *)v7->_document mergeableString];
    attributedString = [mergeableString2 attributedString];
    v11 = [attributedString mutableCopy];
    attributedString = v7->_attributedString;
    v7->_attributedString = v11;

    v13 = v7->_attributedString;
    v14 = *MEMORY[0x1E69B7618];
    ic_range = [(NSMutableAttributedString *)v13 ic_range];
    [(NSMutableAttributedString *)v13 removeAttribute:v14 range:ic_range, v16];
    v17 = [[ICTTUndoManager_135534566 alloc] initWithTextStorage:v7];
    undoManager = v7->_undoManager;
    v7->_undoManager = &v17->super;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_handleDidUndoRedoNotification_ name:*MEMORY[0x1E696AA30] object:v7->_undoManager];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_handleDidUndoRedoNotification_ name:*MEMORY[0x1E696AA28] object:v7->_undoManager];

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

- (ICTTTextStorage)initWithData:(id)data replicaID:(id)d
{
  v6 = MEMORY[0x1E69B78B0];
  dCopy = d;
  dataCopy = data;
  v9 = [[v6 alloc] initWithData:dataCopy replicaID:dCopy];

  v10 = [(ICTTTextStorage *)self initWithDocument:v9];
  return v10;
}

- (NSUUID)replicaID
{
  document = [(ICTTTextStorage *)self document];
  replicaID = [document replicaID];

  return replicaID;
}

- (void)handleDidUndoRedoNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(ICTTTextStorage *)self isEditingViaWritingTools])
  {
    undoCommands = [(ICTTTextStorage *)self undoCommands];
    v5 = [undoCommands count];

    if (!v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      textViews = [(ICTTTextStorage *)self textViews];
      v7 = [textViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(textViews);
            }

            [*(*(&v11 + 1) + 8 * v10++) _customUndoManagerDidFinishUndoRedoChanges];
          }

          while (v8 != v10);
          v8 = [textViews countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)restoreAttributedString:(id)string
{
  objc_storeStrong(&self->_attributedString, string);
  stringCopy = string;
  attributedString = self->_attributedString;
  v7 = *MEMORY[0x1E69B7618];
  ic_range = [(NSMutableAttributedString *)attributedString ic_range];
  [(NSMutableAttributedString *)attributedString removeAttribute:v7 range:ic_range, v9];

  [(ICTTTextStorage *)self resetHighlightsAttributedString];
}

- (_NSRange)logicalRangeForLocation:(unint64_t)location
{
  v3 = [(ICTTTextStorage *)self length];
  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  editedCopy = edited;
  v23.receiver = self;
  v23.super_class = ICTTTextStorage;
  [ICTTTextStorage edited:sel_edited_range_changeInLength_ range:? changeInLength:?];
  if (!self->_directlyEditing && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
    attributedString = [mergeableString attributedString];

    v12 = [(NSMutableAttributedString *)self->_attributedString attributedSubstringFromRange:location, length];
    v13 = [attributedString attributedSubstringFromRange:{location, length + length}];
    v14 = [v13 mutableCopy];

    v15 = *MEMORY[0x1E69B7618];
    ic_range = [v14 ic_range];
    [v14 removeAttribute:v15 range:{ic_range, v17}];
    [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:location withAttributedString:length, v14];
    highlightsAttributedString = self->_highlightsAttributedString;
    string = [v14 string];
    [(NSMutableAttributedString *)highlightsAttributedString replaceCharactersInRange:location withString:length, string];

    if ((editedCopy & 2) != 0)
    {
      delegate = [(ICTTTextStorage *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        delegate2 = [(ICTTTextStorage *)self delegate];
        [delegate2 textStorage:self didReplace:v12 with:v14];
      }
    }
  }
}

- (id)paragraphUUIDsInRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    length = range.length;
    location = range.location;
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
      uuid = [v11 uuid];
      [v8 ic_addNonNilObject:uuid];
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
  selfCopy = self;
  overrideUndoTarget = [(ICTTTextStorage *)self overrideUndoTarget];
  v4 = overrideUndoTarget;
  if (overrideUndoTarget)
  {
    selfCopy = overrideUndoTarget;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)addUndoCommand:(id)command
{
  commandCopy = command;
  [(ICTTTextStorage *)self beginEditing];
  [(NSMutableArray *)self->_undoCommands addObject:commandCopy];

  [(ICTTTextStorage *)self endEditing];
}

- (void)applyUndoGroup:(id)group
{
  groupCopy = group;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__ICTTTextStorage_applyUndoGroup___block_invoke;
  v6[3] = &unk_1E8468F80;
  v6[4] = self;
  v7 = groupCopy;
  v5 = groupCopy;
  [(ICTTTextStorage *)self applyUndoWithBlock:v6];
}

void __34__ICTTTextStorage_applyUndoGroup___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) mergeableString];
  [v2 applyUndoCommand:*(a1 + 40)];
}

- (void)applyUndoWithBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  styler = [(ICTTTextStorage *)self styler];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    styler2 = [(ICTTTextStorage *)self styler];
    [styler2 setDisableAddingExtraLinesIfNeeded:1];
  }

  [(ICTTTextStorage *)self setIsApplyingUndoCommand:1];
  [(ICTTTextStorage *)self breakUndoCoalescing];
  writingToolsSessionUUID = [(ICTTTextStorage *)self writingToolsSessionUUID];

  v8 = &off_1D4433000;
  if (writingToolsSessionUUID)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    textViews = [(ICTTTextStorage *)self textViews];
    v10 = [textViews countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(textViews);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          writingToolsSessionUUID2 = [(ICTTTextStorage *)self writingToolsSessionUUID];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke;
          v29[3] = &unk_1E846B730;
          v29[4] = self;
          v30 = blockCopy;
          [v14 _performExternalEditsForWritingToolsSessionIdentifier:writingToolsSessionUUID2 action:1 usingBlock:v29];
        }

        v11 = [textViews countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v8 = &off_1D4433000;
  }

  else
  {
    [(ICTTTextStorage *)self beginEditing];
    blockCopy[2]();
    [(ICTTTextStorage *)self endEditing];
  }

  ttEditedRange = [(ICTTTextStorage *)self ttEditedRange];
  v18 = v17;
  [(ICTTTextStorage *)self setPendingFixupAfterEditing:1];
  [(ICTTTextStorage *)self fixupAfterEditing];
  [(ICTTTextStorage *)self breakUndoCoalescing];
  textViews2 = [(ICTTTextStorage *)self textViews];
  v28[0] = MEMORY[0x1E69E9820];
  v20 = *(v8 + 491);
  v28[1] = v20;
  v28[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_2;
  v28[3] = &unk_1E846B758;
  v28[4] = self;
  v28[5] = ttEditedRange;
  v28[6] = v18;
  [textViews2 enumerateObjectsUsingBlock:v28];

  [(ICTTTextStorage *)self setIsApplyingUndoCommand:0];
  delegate = [(ICTTTextStorage *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate textStorageDidPerformUndo:self];
  }

  styler3 = [(ICTTTextStorage *)self styler];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    styler4 = [(ICTTTextStorage *)self styler];
    [styler4 setDisableAddingExtraLinesIfNeeded:0];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && ttEditedRange + v18 <= [(ICTTTextStorage *)self length])
  {
    v25 = *MEMORY[0x1E69DB5F8];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = v20;
    v27[2] = __38__ICTTTextStorage_applyUndoWithBlock___block_invoke_3;
    v27[3] = &unk_1E846A170;
    v27[4] = self;
    [(ICTTTextStorage *)self enumerateAttribute:v25 inRange:ttEditedRange options:v18 usingBlock:0, v27];
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
    coalescingUndoGroup = [(ICTTTextStorage *)self coalescingUndoGroup];
    [coalescingUndoGroup closeGroup];

    [(ICTTTextStorage *)self setCoalescingUndoGroup:0];
  }
}

- (void)resetUndoManager
{
  if ([(ICTTTextStorage *)self disableUndoCoalesceBreaking])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.disableUndoCoalesceBreaking == __objc_no" functionName:"-[ICTTTextStorage resetUndoManager]" simulateCrash:1 showAlert:0 format:@"We shouldn't get here when disableUndoCoalesceBreaking == YES"];
  }

  undoManager = [(ICTTTextStorage *)self undoManager];
  [undoManager removeAllActions];

  coalescingUndoGroup = [(ICTTTextStorage *)self coalescingUndoGroup];
  [coalescingUndoGroup closeGroup];

  [(ICTTTextStorage *)self setCoalescingUndoGroup:0];

  [(ICTTTextStorage *)self setIsPerformingAccessibilityUndoableTextInsertion:0];
}

- (void)fixupAfterEditing
{
  pendingFixupAfterEditing = [(ICTTTextStorage *)self pendingFixupAfterEditing];
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
    if (pendingFixupAfterEditing)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"ICTTTextStorageDidProcessEndEditingNotification" object:self];
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
    wantsUndoCommands = [(ICTTTextStorage *)self wantsUndoCommands];
    [(ICTTTextStorage *)self setWantsUndoCommands:[(ICTTTextStorage *)self delayedFixupAfterEditingWantsUndoCommand]];
    textViews = [(ICTTTextStorage *)self textViews];
    [textViews enumerateObjectsUsingBlock:&__block_literal_global_78];

    [(ICTTTextStorage *)self fixupAfterEditing];
    textViews2 = [(ICTTTextStorage *)self textViews];
    [textViews2 enumerateObjectsUsingBlock:&__block_literal_global_126];

    [(ICTTTextStorage *)self setWantsUndoCommands:wantsUndoCommands];
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

- (BOOL)mergeableStringIsEqualAfterSerialization:(id)serialization
{
  serializationCopy = serialization;
  mergeableString = [(ICTTTextStorage *)self mergeableString];

  if (mergeableString == serializationCopy)
  {
    v46 = 1;
  }

  else
  {
    mergeableString2 = [(ICTTTextStorage *)self mergeableString];
    attributedString = [mergeableString2 attributedString];
    string = [attributedString string];
    attributedString2 = [serializationCopy attributedString];
    string2 = [attributedString2 string];
    v11 = [string isEqual:string2];

    if (v11)
    {
      v50 = serializationCopy;
      selfCopy = self;
      mergeableString3 = [(ICTTTextStorage *)self mergeableString];
      attributedString3 = [mergeableString3 attributedString];
      v51 = [attributedString3 length];

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
          mergeableString4 = [(ICTTTextStorage *)selfCopy mergeableString];
          attributedString4 = [mergeableString4 attributedString];
          v21 = [attributedString4 attributesAtIndex:v16 effectiveRange:&v54];
          v22 = [v21 mutableCopy];

          v15 = v22;
        }

        if (v16 >= v52 + v53)
        {
          attributedString5 = [v50 attributedString];
          v24 = [attributedString5 attributesAtIndex:v16 effectiveRange:&v52];
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
        uUID = [MEMORY[0x1E696AFB0] UUID];
        todo = [v27 todo];

        if (todo)
        {
          v32 = objc_alloc(MEMORY[0x1E69B78E0]);
          todo2 = [v27 todo];
          v34 = [v32 initWithIdentifier:uUID done:{objc_msgSend(todo2, "done")}];
          [v27 setTodo:v34];
        }

        todo3 = [v29 todo];

        if (todo3)
        {
          v36 = objc_alloc(MEMORY[0x1E69B78E0]);
          todo4 = [v29 todo];
          v38 = [v36 initWithIdentifier:uUID done:{objc_msgSend(todo4, "done")}];
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

      serializationCopy = v50;
      v46 = v49;
    }

    else
    {
      v46 = 0;
    }
  }

  return v46 & 1;
}

- (void)addTextLayoutManager:(id)manager
{
  v4 = MEMORY[0x1E69B7AD8];
  managerCopy = manager;
  v7 = [[v4 alloc] initWithObject:managerCopy];

  textLayoutManagerReferences = [(ICTTTextStorage *)self textLayoutManagerReferences];
  [textLayoutManagerReferences addObject:v7];
}

- (void)removeTextLayoutManager:(id)manager
{
  v4 = MEMORY[0x1E69B7AD8];
  managerCopy = manager;
  v7 = [[v4 alloc] initWithObject:managerCopy];

  textLayoutManagerReferences = [(ICTTTextStorage *)self textLayoutManagerReferences];
  [textLayoutManagerReferences removeObject:v7];
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

- (id)editAtIndex:(unint64_t)index
{
  mergeableString = [(ICTTTextStorage *)self mergeableString];
  v5 = [mergeableString editAtIndex:index];

  return v5;
}

- (void)enumerateEditsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  mergeableString = [(ICTTTextStorage *)self mergeableString];
  [mergeableString enumerateEditsInRange:location usingBlock:{length, blockCopy}];
}

- (void)redactAuthorAttributionsToCurrentUser
{
  [(ICTTTextStorage *)self setWantsUndoCommands:0];
  v9 = [(ICTTTextStorage *)self mutableCopy];
  v3 = *MEMORY[0x1E69B7618];
  currentTimestamp = [(ICTTTextStorage *)self currentTimestamp];
  ic_range = [v9 ic_range];
  [v9 addAttribute:v3 value:currentTimestamp range:{ic_range, v6}];

  ic_range2 = [v9 ic_range];
  [(ICTTTextStorage *)self replaceCharactersInRange:ic_range2 withAttributedString:v8, v9];
  [(ICTTTextStorage *)self setWantsUndoCommands:1];
}

- (void)coordinateReading:(id)reading
{
  readingCopy = reading;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateReading:readingCopy];
}

- (void)coordinateEditing:(id)editing
{
  editingCopy = editing;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateEditing:editingCopy];
}

- (void)coordinateAccess:(id)access
{
  accessCopy = access;
  if (![(ICTTTextStorage *)self isTypingOrMarkingText]&& ![(ICTTTextStorage *)self isSelectingText]&& ![(ICTTTextStorage *)self isDropping])
  {
    [(ICTTTextStorage *)self forceFixupAfterEditingIfDelayed];
  }

  v5.receiver = self;
  v5.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v5 coordinateAccess:accessCopy];
}

- (id)savedSelectionWithSelectionAffinity:(unint64_t)affinity
{
  v31 = *MEMORY[0x1E69E9840];
  textViews = [(ICTTTextStorage *)self textViews];
  allObjects = [textViews allObjects];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allObjects;
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
        selectedRange = [*(*(&v24 + 1) + 8 * i) selectedRange];
        v15 = [v12 valueWithRange:{selectedRange, v14}];
        v29 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];

        mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        v18 = [mergeableString selectionForCharacterRanges:v16 selectionAffinity:affinity];

        [v7 addObject:v18];
        mergeableString2 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        objectsNeedingUpdatedRanges = [mergeableString2 objectsNeedingUpdatedRanges];
        [objectsNeedingUpdatedRanges addObject:v18];
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

- (void)saveSelectionDuringBlock:(id)block affinity:(unint64_t)affinity
{
  blockCopy = block;
  v7 = [(ICTTTextStorage *)self savedSelectionWithSelectionAffinity:affinity];
  blockCopy[2](blockCopy);

  [(ICTTTextStorage *)self restoreSelection:v7];
}

- (unint64_t)mergeWithDocument:(id)document
{
  documentCopy = document;
  v5 = [(ICTTTextStorage *)self savedSelectionWithSelectionAffinity:0];
  document = [(ICTTTextStorage *)self document];
  v7 = [document mergeWithStringVersionedDocument:documentCopy];

  [(ICTTTextStorage *)self restoreSelection:v5];
  return v7;
}

- (void)replaceWithDocument:(id)document
{
  documentCopy = document;
  v5 = [(NSMutableAttributedString *)self->_attributedString length];
  mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  [mergeableString setDelegate:0];

  document = self->_document;
  self->_document = documentCopy;
  v8 = documentCopy;

  mergeableString2 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  [mergeableString2 setDelegate:self];

  mergeableString3 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
  attributedString = [mergeableString3 attributedString];
  v12 = [attributedString mutableCopy];
  attributedString = self->_attributedString;
  self->_attributedString = v12;

  v14 = self->_attributedString;
  v15 = *MEMORY[0x1E69B7618];
  ic_range = [(NSMutableAttributedString *)v14 ic_range];
  [(NSMutableAttributedString *)v14 removeAttribute:v15 range:ic_range, v17];
  [(ICTTTextStorage *)self resetHighlightsAttributedString];
  v18 = [(NSMutableAttributedString *)self->_attributedString length];
  v19.receiver = self;
  v19.super_class = ICTTTextStorage;
  [(ICTTTextStorage *)&v19 edited:3 range:0 changeInLength:v5, v18 - v5];
}

- (BOOL)validateIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(NSMutableAttributedString *)self->_attributedString length];
  if (range && v6 <= index)
  {
    *range = xmmword_1D4433FC0;
  }

  return v6 > index;
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if ([ICTTTextStorage validateIndex:"validateIndex:effectiveRange:" effectiveRange:?])
  {
    v7 = [(NSMutableAttributedString *)self->_attributedString attributesAtIndex:index effectiveRange:range];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  if ([ICTTTextStorage validateIndex:"validateIndex:effectiveRange:" effectiveRange:?])
  {
    v12.receiver = self;
    v12.super_class = ICTTTextStorage;
    v10 = [(ICTTTextStorage *)&v12 attributesAtIndex:index longestEffectiveRange:range inRange:location, length];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  attributeCopy = attribute;
  if ([(ICTTTextStorage *)self validateIndex:index effectiveRange:range])
  {
    v9 = [(NSMutableAttributedString *)self->_attributedString attribute:attributeCopy atIndex:index effectiveRange:range];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  attributeCopy = attribute;
  if ([(ICTTTextStorage *)self validateIndex:index effectiveRange:range])
  {
    v14.receiver = self;
    v14.super_class = ICTTTextStorage;
    v12 = [(ICTTTextStorage *)&v14 attribute:attributeCopy atIndex:index longestEffectiveRange:range inRange:location, length];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)correctParagraphStyleReuseForRange:(_NSRange)range withNewAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = ![(ICTTTextStorage *)self hasEditedCharactersAfterTextSelection]&& [(ICTTTextStorage *)self isTypingOrMarkingText];
  string = [(ICTTTextStorage *)self string];
  v10 = [string paragraphRangeForRange:{location, length}];
  v12 = v11;

  v13 = v10 + v12;
  if (v12 && v10 + v12 != 0 && v8)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    string2 = [(ICTTTextStorage *)self string];
    v16 = [newlineCharacterSet characterIsMember:{objc_msgSend(string2, "characterAtIndex:", v13 - 1)}];

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
  textViews = [(ICTTTextStorage *)self textViews];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__ICTTTextStorage_correctParagraphStyleReuseForRange_withNewAttributedString___block_invoke;
  v22[3] = &unk_1E846B800;
  v22[4] = &v23;
  [textViews enumerateObjectsUsingBlock:v22];

  if (v24[5])
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    string3 = [stringCopy string];
    v20 = [v18 initWithString:string3 attributes:v24[5]];

    stringCopy = v20;
  }

  _Block_object_dispose(&v23, 8);

LABEL_13:

  return stringCopy;
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

- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributeCopy = attribute;
  valueCopy = value;
  if (addAttribute_value_range__onceToken != -1)
  {
    [ICTTTextStorage addAttribute:value:range:];
  }

  if (-[ICTTTextStorage isEditingTemporaryAttributes](self, "isEditingTemporaryAttributes") || ![MEMORY[0x1E696AD40] dd_isTransientAttribute:attributeCopy])
  {
    v11 = 0;
    if (!valueCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(ICTTTextStorage *)self beginTemporaryAttributes];
  v11 = 1;
  if (valueCopy)
  {
LABEL_8:
    v12.receiver = self;
    v12.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v12 addAttribute:attributeCopy value:valueCopy range:location, length];
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

- (void)dd_makeLinksForResultsInAttributesOfType:(unint64_t)type context:(id)context range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v10 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
  objc_opt_class();
  delegate = [(ICTTTextStorage *)self delegate];
  v12 = ICDynamicCast();

  objc_opt_class();
  calculateDocumentController = [v12 calculateDocumentController];
  v14 = ICDynamicCast();

  if (v14)
  {
    expressionsIndexSet = [v14 expressionsIndexSet];
    [v10 removeIndexes:expressionsIndexSet];
  }

  [(ICTTTextStorage *)self beginTemporaryAttributes];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__ICTTTextStorage_dd_makeLinksForResultsInAttributesOfType_context_range___block_invoke;
  v18[3] = &unk_1E846B828;
  selfCopy = self;
  typeCopy = type;
  v19 = contextCopy;
  v16 = contextCopy;
  [v10 enumerateRangesUsingBlock:v18];
  [(ICTTTextStorage *)self endTemporaryAttributes];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTTTextStorageDidUpdateDataDetectionResultsNotification" object:self];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICTTTextStorageDidUpdateDataDetectionResultsNotification" object:self];
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

- (void)removeAttribute:(id)attribute range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributeCopy = attribute;
  if ([attributeCopy isEqualToString:*MEMORY[0x1E69B79B0]])
  {
    if ([(ICTTTextStorage *)self ic_containsAttribute:attributeCopy inRange:location, length])
    {
      [(ICTTTextStorage *)self beginTemporaryAttributes];
      v8.receiver = self;
      v8.super_class = ICTTTextStorage;
      [(ICTTTextStorage *)&v8 removeAttribute:attributeCopy range:location, length];
      [(ICTTTextStorage *)self endTemporaryAttributes];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICTTTextStorage;
    [(ICTTTextStorage *)&v8 removeAttribute:attributeCopy range:location, length];
  }
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
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
      attributesCopy = attributesCopy;
      v9 = attributesCopy;
      if ([(ICTTTextStorage *)self convertAttributes])
      {
        styler = [(ICTTTextStorage *)self styler];
        v9 = [styler modelForStyleAttributes:attributesCopy filterAttributes:0];
      }

      mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
      attributedString = [mergeableString attributedString];
      v13 = *MEMORY[0x1E69B7618];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __39__ICTTTextStorage_setAttributes_range___block_invoke;
      v28[3] = &unk_1E846B850;
      v14 = v9;
      v29 = v14;
      selfCopy = self;
      [attributedString enumerateAttribute:v13 inRange:location options:length usingBlock:{0, v28}];

      if ([(ICTTTextStorage *)self convertAttributes])
      {
        styler2 = [(ICTTTextStorage *)self styler];
        v16 = [styler2 styleForModelAttributes:v14];

        attributesCopy = v16;
      }
    }

    if ([(ICTTTextStorage *)self wantsTimestampUpdates])
    {
      [(ICTTTextStorage *)self setHasUserEditSinceFixupAfterEditing:1];
    }

    [(NSMutableAttributedString *)self->_attributedString setAttributes:attributesCopy range:location, length];
    objc_opt_class();
    v17 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v18 = ICCheckedDynamicCast();

    objc_opt_class();
    v19 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B75D8]];
    v20 = ICCheckedDynamicCast();

    highlightsAttributedString = self->_highlightsAttributedString;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__ICTTTextStorage_setAttributes_range___block_invoke_2;
    v24[3] = &unk_1E846B878;
    v25 = v18;
    selfCopy2 = self;
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

- (BOOL)hasNamedStyle:(unsigned int)style inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  string = [(ICTTTextStorage *)self string];
  v9 = [string ic_rangeIsValid:{location, length}];

  if (v9)
  {
    v10 = *MEMORY[0x1E69B7600];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__ICTTTextStorage_hasNamedStyle_inRange___block_invoke;
    v13[3] = &unk_1E846B8A0;
    styleCopy = style;
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

- (BOOL)isRightToLeftAtIndex:(int64_t)index
{
  v3 = [(ICTTTextStorage *)self attribute:*MEMORY[0x1E69B7600] atIndex:index effectiveRange:0];
  objc_opt_class();
  v4 = ICDynamicCast();
  isRTL = [v4 isRTL];

  return isRTL;
}

- (void)styleTextInRange:(_NSRange)range
{
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    location = range.location;
    if (![(ICTTTextStorage *)self isEditingTemporaryAttributes])
    {
      styler = [(ICTTTextStorage *)self styler];
      [styler styleText:self inRange:location fixModelAttributes:{length, 1}];
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
  ic_truncated = [v5 ic_truncated];
  [ic_truncated timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];

  return v8;
}

- (void)setTimestamp:(id)timestamp range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  ic_truncated = [timestamp ic_truncated];
  v11.location = [(NSMutableAttributedString *)self->_attributedString ic_range];
  v12.location = location;
  v12.length = length;
  v7 = NSIntersectionRange(v11, v12);
  if (v7.length)
  {
    self->_directlyEditing = 1;
    [(ICTTTextStorage *)self beginSkippingTimestampUpdates];
    [(ICTTTextStorage *)self beginEditing];
    mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
    [mergeableString setTimestamp:ic_truncated range:{v7.location, v7.length}];

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

- (id)customPasteboardDataFromRange:(_NSRange)range persistenceHelper:(id)helper
{
  length = range.length;
  location = range.location;
  helperCopy = helper;
  attributedString = [(ICTTTextStorage *)self attributedString];
  v9 = [attributedString attributedSubstringFromRange:{location, length}];

  v10 = [ICTextController removeBeginningListStyleIfNecessaryForAttributedString:v9 fromTextStorage:self andRange:location, length];

  ic_attributedStringByRefreshingParagraphStyleUUIDs = [v10 ic_attributedStringByRefreshingParagraphStyleUUIDs];

  if (helperCopy)
  {
    v12 = objc_alloc(MEMORY[0x1E69B7730]);
    identifier = [helperCopy identifier];
    v14 = [v12 initWithObjectIdentifier:identifier forPasteboard:1];
  }

  else
  {
    v14 = 0;
  }

  managedObjectContext = [helperCopy managedObjectContext];
  v16 = [ic_attributedStringByRefreshingParagraphStyleUUIDs ic_serializeWithFlags:1 dataPersister:v14 managedObjectContext:managedObjectContext error:0];

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

- (id)copyDataForUTI:(id)i range:(_NSRange)range persistenceHelper:(id)helper
{
  length = range.length;
  location = range.location;
  v41[1] = *MEMORY[0x1E69E9840];
  iCopy = i;
  helperCopy = helper;
  if (![iCopy isEqualToString:*MEMORY[0x1E69B7508]])
  {
    [(ICTTTextStorage *)self setFilterSubstringAttributes:1];
    identifier = [*MEMORY[0x1E6982E18] identifier];
    v14 = [iCopy isEqualToString:identifier];

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
      identifier2 = [*MEMORY[0x1E6983098] identifier];
      v19 = [iCopy isEqualToString:identifier2];

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
        identifier3 = [*MEMORY[0x1E6982F90] identifier];
        v21 = [iCopy isEqualToString:identifier3];

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
          identifier4 = [*MEMORY[0x1E6982DC0] identifier];
          v23 = [iCopy isEqualToString:identifier4];

          if (!v23)
          {
            identifier5 = [*MEMORY[0x1E6983060] identifier];
            v27 = [iCopy isEqualToString:identifier5];

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
              persistenceData = [(ICTTTextStorage *)self dataFromRange:location documentAttributes:length error:v30, 0];

              [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:0];
            }

            else
            {
              v31 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location, length];
              persistenceData = [v31 ic_itemProviderDataForUTI:iCopy];
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
    persistenceData = [(ICTTTextStorage *)self dataFromRange:location documentAttributes:length error:v24, 0];

LABEL_12:
    [(ICTTTextStorage *)self setFilterSubstringAttributes:0];
    goto LABEL_13;
  }

  helperCopy = [(ICTTTextStorage *)self customPasteboardDataFromRange:location persistenceHelper:length, helperCopy];
  persistenceData = [helperCopy persistenceData];

LABEL_13:
  return persistenceData;
}

- (id)filteredAttributedStringForUTI:(id)i range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = *MEMORY[0x1E6983060];
  iCopy = i;
  identifier = [v7 identifier];
  v10 = [iCopy isEqualToString:identifier];

  [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:v10];
  v11 = [(ICTTTextStorage *)self filteredAttributedSubstringFromRange:location, length];
  [(ICTTTextStorage *)self setFilterSubstringAttributesForPlainText:0];

  return v11;
}

- (void)suppressingShiftStateUpdatesIfNecessaryWithSelection:(void *)selection perform:
{
  selectionCopy = selection;
  if (self)
  {
    v5 = [a2 objectAtIndexedSubscript:0];
    if (([self isFixing] & 1) != 0 || !objc_msgSend(v5, "count"))
    {
      selectionCopy[2]();
    }

    else
    {
      [MEMORY[0x1E69DCBB8] ic_suppressingShiftStateUpdates:selectionCopy];
    }
  }
}

- (void)restoreSelection:(id)selection
{
  selectionCopy = selection;
  v5 = [selectionCopy objectAtIndexedSubscript:0];
  v6 = [selectionCopy objectAtIndexedSubscript:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__ICTTTextStorage_restoreSelection___block_invoke;
  v9[3] = &unk_1E8468D98;
  v10 = v5;
  selfCopy = self;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  [(ICTTTextStorage *)self suppressingShiftStateUpdatesIfNecessaryWithSelection:selectionCopy perform:v9];
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