@interface ICEditingTextView
+ (id)attachmentInNote:(id)a3 range:(_NSRange)a4;
+ (id)copyTmpFileToTmpFileInSubDirectory:(id)a3 uti:(id)a4 suggestedName:(id)a5;
+ (id)temporaryTextStorageWithAttributedString:(id)a3 note:(id)a4 filterAttributedString:(BOOL)a5;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityOverridesInstructionsHint;
- (BOOL)_accessibilityTextOperationAction:(id)a3;
- (BOOL)_isDropSessionLocalDragContextViewFromSubview:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)attributedStringContainsICTTAttachment:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)exceedsMaxLengthIfSelectionReplacedWithAttributedString:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleAttributedStringDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleGenericFileForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 preferredTypeIdentifier:(id)a6 outProgress:(id *)a7 completionBlock:(id)a8;
- (BOOL)handleImageDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleInlineDrawingDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleInlinePaperDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleMapKitItemDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleMovieOrAudioDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handlePaperDocumentDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleTopotextDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)handleURLDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7;
- (BOOL)hasFullWidthTextAttachmentAtCaretLocation:(int64_t)a3;
- (BOOL)hasSupportedImageInItemProvider:(id)a3;
- (BOOL)ic_allSelectedRangesContainAttributeName:(id)a3 withValue:(id)a4;
- (BOOL)ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:(unsigned int)a3;
- (BOOL)ic_canChangeStyle;
- (BOOL)ic_canIndentByDelta:(int64_t)a3;
- (BOOL)ic_shouldStartDataDetectors;
- (BOOL)isAccessibilityElement;
- (BOOL)isDocumentCopyableSize;
- (BOOL)isPreviewing;
- (BOOL)isSelectionCopyableSize;
- (BOOL)isSupportedAsGenericFile:(id)a3;
- (BOOL)selectionContainsDDResultAttribute;
- (BOOL)selectionContainsLink;
- (BOOL)selectionContainsNonLinkAttachment;
- (BOOL)shouldAcceptDropSession:(id)a3;
- (BOOL)shouldCheckURLFirstForItemProvider:(id)a3;
- (BOOL)textDroppableView:(id)a3 dropSession:(id)a4 willMoveCaretToRange:(id)a5;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3;
- (CALayer)tempHighlightLayer;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)hitTestPoint;
- (CGPoint)renderTextInCharacterRange:(_NSRange)a3 inTextStorage:(id)a4 temporaryAttributes:(id)a5 forceOffsetCalculation:(BOOL)a6 image:(id *)a7 boundingRectangles:(id *)a8 renderedGlyphRange:(_NSRange *)a9;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)enclosingRectForGlyphRange:(_NSRange)a3;
- (ICCalculateRecognitionController)calculateRecognitionController;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNAEventReporter)eventReporter;
- (ICNoteEditorViewController)editorController;
- (ICTTTextStoragePersistenceHelper)persistenceHelper;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_icaxModifiedSelectionRange;
- (_NSRange)_icaxRangeInModifiedAttributedString:(id)a3 forRange:(_NSRange)a4;
- (_NSRange)_icaxRangeInTextStorageForRange:(_NSRange)a3 fromModifiedString:(id)a4;
- (_NSRange)_icaxRangeOfAttachment:(id)a3;
- (_NSRange)selectedRangeBeforeMarking;
- (_NSRange)willInsertText:(id)a3;
- (double)distanceFromContentToGivenPoint:(CGPoint)a3 charIndexAtPoint:(unint64_t *)a4;
- (id)TTTextStorage;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilityTextOperations;
- (id)_accessibilityValueForRange:(_NSRange *)a3;
- (id)_icaxAdditionalElementsForAutomation;
- (id)_icaxAttachmentElements;
- (id)_icaxAttachmentElementsForRotor;
- (id)_icaxAttachmentViewForCurrentSelectedRange;
- (id)_icaxAttributedStringForRange:(_NSRange *)a3;
- (id)_icaxCalculateAdjustString;
- (id)_icaxCalculationErrorElementsForRotor;
- (id)_icaxCalculationResultElementsForRotor;
- (id)_icaxChecklistDeleteCheckedItemsString;
- (id)_icaxChecklistMarkAllItemsCompleteString;
- (id)_icaxChecklistMoveCheckedToBottomString;
- (id)_icaxChecklistUnmarkAllItemsCompleteString;
- (id)_icaxCurrentParagraph;
- (id)_icaxDecreaseIndentationString;
- (id)_icaxFirstAttachmentViewSupportingAction:(SEL)a3;
- (id)_icaxFirstTextAttachmentInRange:(_NSRange)a3;
- (id)_icaxIncreaseIndentationString;
- (id)_icaxInsertDrawingString;
- (id)_icaxLinkEditActions;
- (id)_icaxLinkElements;
- (id)_icaxMakeBoldString;
- (id)_icaxMakeChecklistString;
- (id)_icaxMakeItalicString;
- (id)_icaxMakeNotBoldString;
- (id)_icaxMakeNotItalicString;
- (id)_icaxMakeNotUnderlinedString;
- (id)_icaxMakeUnderlinedString;
- (id)_icaxMarkAsCompletedString;
- (id)_icaxMarkAsIncompleteString;
- (id)_icaxMentionsElementsForRotor;
- (id)_icaxModifiedAttributedStorageString;
- (id)_icaxRemoveChecklistString;
- (id)_icaxShareAttachmentString;
- (id)_icaxTableElementsForRotor;
- (id)_icaxTagsElementsForRotor;
- (id)_icaxTodoButtonForParagraphStyle:(id)a3;
- (id)_icaxTodoElements;
- (id)_targetedPreviewForRange:(id)a3 withRenderingAttributes:(id)a4 includeFullDocument:(BOOL)a5;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)attachmentsInRange:(_NSRange)a3;
- (id)attributedStringForDrawing:(id)a3 session:(id)a4;
- (id)attributedStringForImageData:(id)a3 imageTypeUTI:(id)a4 itemProvider:(id)a5 pasteSession:(id)a6;
- (id)attributedStringForStrokeSelection:(id)a3 session:(id)a4;
- (id)attributedStringForURL:(id)a3 uti:(id)a4 name:(id)a5 metadata:(id)a6 synapseData:(id)a7 session:(id)a8;
- (id)automationElements;
- (id)childElements;
- (id)childElementsForAccessibilityReparenting;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 inTextStorage:(id)a4;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 inTextStorage:(id)a4 temporaryAttributes:(id)a5 forceOffsetCalculation:(BOOL)a6 containerView:(id)a7;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 uiRange:(id)a4;
- (id)editorContainer;
- (id)elementsForAccessibilityRotorType:(id)a3;
- (id)firstResponderMatchingPredicate:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)icLayoutManager;
- (id)icTextLayoutManager;
- (id)ic_selectedStylesIgnoreTypingAttributes:(BOOL)a3;
- (id)icaxMakeNotStrikethroughString;
- (id)icaxMakeStrikethroughString;
- (id)internalTypingAttributes;
- (id)itemProviderConsumerTypesForItemProvider:(id)a3;
- (id)itemProviderPasteSessionCreateIfNecessary;
- (id)linkTappedByGesture:(id)a3;
- (id)pasteConfigurationForCurrentTextView;
- (id)pasteImagesDataArray:(id)a3 typesArray:(id)a4 session:(id)a5;
- (id)pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:(id)a3 session:(id)a4;
- (id)pasteNotePasteboardData:(id)a3 session:(id)a4 error:(id *)a5;
- (id)pasteStringUsingBlock:(id)a3 approxPasteString:(id)a4 pasteboardTypes:(id)a5 session:(id)a6;
- (id)pasteURL:(id)a3 uti:(id)a4 name:(id)a5 metadata:(id)a6 session:(id)a7;
- (id)preferredFileTypeForItemProvider:(id)a3;
- (id)preferredFileTypesExtensionDictionary;
- (id)selectionRectsForRange:(id)a3;
- (id)standardizedAttributedString:(id)a3 attachmentIdentifiers:(id *)a4;
- (id)targetedPreviewForPaperKitAttachment:(id)a3 textFindingResult:(id)a4;
- (id)textAttachmentsInRange:(_NSRange)a3;
- (id)textController;
- (id)textDraggableView:(id)a3 dragPreviewForLiftingItem:(id)a4 session:(id)a5;
- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4;
- (id)textDraggableView:(id)a3 textRangeForDragFromPosition:(id)a4 defaultRange:(id)a5 session:(id)a6;
- (id)textDroppableView:(id)a3 positionForDrop:(id)a4;
- (id)textDroppableView:(id)a3 previewForDroppingAllItemsWithDefault:(id)a4;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (id)textPasteConfigurationSupporting:(id)a3 combineItemAttributedStrings:(id)a4 forRange:(id)a5;
- (id)textPasteConfigurationSupporting:(id)a3 performPasteOfAttributedString:(id)a4 toRange:(id)a5;
- (id)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
- (id)typeIdentifiersSupportedAsGenericFiles;
- (id)typingAttributes;
- (id)updateIndentForChecklistDragIfNecessaryForString:(id)a3 lineUnderDrop:(id)a4;
- (int64_t)_accessibilityLineEndPosition;
- (int64_t)_accessibilityLineStartPosition;
- (int64_t)ic_currentWritingDirection;
- (unint64_t)_icaxLinePositionForPosition:(unint64_t)a3 start:(BOOL)a4;
- (unint64_t)_icaxModifiedPositionForPosition:(unint64_t)a3;
- (unint64_t)_icaxPositionForModifiedPosition:(unint64_t)a3;
- (unint64_t)accessibilityTraits;
- (unint64_t)firstValidEmphasisLocationWithinSelection:(_NSRange)a3;
- (unint64_t)ic_selectedBIUS;
- (unsigned)ic_getTextStyleForCurrentSelection;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_addPencilKitAccessibilityElementIfNeededForTextAttachment:(id)a3 toAttachmentElements:(id)a4;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_getPasteboardItemFromSelection:(id)a3;
- (void)_icaxAddParticipantEditHighlightsToString:(id)a3 forRange:(_NSRange)a4;
- (void)_icaxAddPredictiveTextToAttributedString:(id)a3;
- (void)_icaxChecklistDeleteChecked;
- (void)_icaxChecklistMarkAllComplete;
- (void)_icaxChecklistSortCheckedToBottom;
- (void)_icaxChecklistUnMarkAllComplete;
- (void)_icaxGetBoldForCurrentRange:(BOOL *)a3 italic:(BOOL *)a4 underline:(BOOL *)a5 strikethrough:(BOOL *)a6;
- (void)_icaxMarkTodoCompleteForCurrentSelection;
- (void)_icaxMarkTodoIncompleteForCurrentSelection;
- (void)_icaxUpdateFakeTextSelectionRange;
- (void)_insertDrawing:(id)a3;
- (void)_reallyCut:(id)a3;
- (void)_removeDrawingAttachment:(id)a3 withView:(id)a4 forDeletion:(BOOL)a5;
- (void)applyPendingTypingAttributesIfNeeded;
- (void)beginDrop;
- (void)beginSelectionChange;
- (void)buildMenuWithBuilder:(id)a3;
- (void)calculateRecognitionController:(id)a3 didUpdateTextSuggestions:(id)a4;
- (void)commonInit;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)didInsertText:(id)a3 range:(_NSRange)a4;
- (void)didPasteOrDropText:(id)a3 toRange:(id)a4;
- (void)endHeadingRenameCommittingMarkedText:(BOOL)a3;
- (void)endSelectionChange;
- (void)eventReporterLostSession:(id)a3;
- (void)finishDropWithString:(id)a3;
- (void)ic_editAttributesInSelectedRanges:(id)a3 shouldSkipAttachments:(BOOL)a4;
- (void)ic_enumerateAttributesInSelectedRanges:(id)a3;
- (void)ic_enumerateTableAttachmentViewControllersInRanges:(id)a3 usingBlock:(id)a4;
- (void)ic_indentByAmount:(int64_t)a3;
- (void)ic_performBlock:(id)a3;
- (void)ic_resetDataDetectorsResults;
- (void)ic_setAttributeWithName:(id)a3 enabled:(BOOL)a4 withEmphasisColorType:(int64_t)a5;
- (void)ic_setFontHint:(unsigned int)a3 enabled:(BOOL)a4;
- (void)ic_setTextAlignmentForCurrentSelection:(int64_t)a3;
- (void)ic_setTextStyleForCurrentSelection:(unsigned int)a3;
- (void)ic_startDataDetectors;
- (void)ic_toggleAttributeWithName:(id)a3 withEmphasisColorType:(int64_t)a4;
- (void)ic_toggleBoldface;
- (void)ic_toggleEmphasisWithType:(int64_t)a3;
- (void)ic_toggleFontHint:(unsigned int)a3;
- (void)ic_toggleItalics;
- (void)ic_toggleStrikethrough;
- (void)ic_toggleUnderline;
- (void)icaxBeginEditingAtAttachment:(id)a3;
- (void)icaxBeginEditingInStorageRange:(_NSRange)a3;
- (void)icaxClearCachedChildrenForReparenting;
- (void)icaxClearCaches;
- (void)icaxSpeakIndentationLevelForCurrentSelectedRange;
- (void)icaxTextDidChange;
- (void)icaxUpdateLinkRanges;
- (void)informDelegateOfAnalyticsCalloutBarButtonActionOfType:(int64_t)a3 sender:(id)a4;
- (void)informDelegateOfPastedAttributedString:(id)a3;
- (void)insertAttributedText:(id)a3;
- (void)insertText:(id)a3;
- (void)insertTextSuggestion:(id)a3;
- (void)keyboardLocaleChanged:(id)a3;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionNatural:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)paste:(id)a3;
- (void)resetViewsGhostedForDrag;
- (void)respondToTapGesture:(id)a3;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setInternalTypingAttributes:(id)a3;
- (void)setIsDraggingChecklistItem:(BOOL)a3;
- (void)setIsDraggingOverChecklistItem:(BOOL)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setTypingAttributes:(id)a3;
- (void)setupLinkTextAttributes;
- (void)setupTextViewDragAndDropDelegates;
- (void)showDeleteInlineDrawingAlertWithType:(unint64_t)a3 attachments:(id)a4 completionHandler:(id)a5;
- (void)showRemoveAttachmentAlertIfNecessaryForOperation:(unint64_t)a3 selectedRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)showRemoveAttachmentAlertWithTitle:(id)a3 message:(id)a4 primaryActionTitle:(id)a5 completionHandler:(id)a6;
- (void)showRemoveInProgressRecordingAlertWithOperation:(unint64_t)a3 type:(unint64_t)a4 attachments:(id)a5 completionHandler:(id)a6;
- (void)showWritingTools:(id)a3;
- (void)speakAccessibilityAutoListItemIfNecessaryForInsertedText:(id)a3;
- (void)textDraggableView:(id)a3 dragSessionDidEnd:(id)a4 withOperation:(unint64_t)a5;
- (void)textDraggableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)textDraggableView:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)textDroppableView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)textDroppableView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)textDroppableView:(id)a3 dropSessionDidExit:(id)a4;
- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4;
- (void)textStorageDidPerformMerge:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)unmarkText;
- (void)updateKeyboardSuggestions:(id)a3 hashtagController:(id)a4;
- (void)updateKeyboardSuggestions:(id)a3 mentionsController:(id)a4 mentionString:(id)a5;
- (void)updateTextViewForDidChange;
- (void)willPresentWritingTools;
@end

@implementation ICEditingTextView

- (id)TTTextStorage
{
  v3 = [(ICEditingTextView *)self textStorage];
  if (v3 && (v4 = v3, [(ICEditingTextView *)self textStorage], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICBaseTextView *)self TTTextStorage];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(ICEditingTextView *)self textStorage];
  }

  return v7;
}

- (id)pasteConfigurationForCurrentTextView
{
  v17[14] = *MEMORY[0x277D85DE8];
  if ([(ICEditingTextView *)self supportsAttachments])
  {
    v17[0] = *MEMORY[0x277D35D08];
    v3 = [*MEMORY[0x277CE1DB0] identifier];
    v17[1] = v3;
    v4 = [*MEMORY[0x277CE1E00] identifier];
    v17[2] = v4;
    v5 = [*MEMORY[0x277CE1E08] identifier];
    v17[3] = v5;
    v6 = [*MEMORY[0x277CE1EB8] identifier];
    v7 = *MEMORY[0x277D6B808];
    v17[4] = v6;
    v17[5] = v7;
    v8 = [*MEMORY[0x277CE1E90] identifier];
    v17[6] = v8;
    v17[7] = @"com.apple.iwork.keynote.key";
    v17[8] = @"com.apple.iwork.numbers.numbers";
    v17[9] = @"com.apple.iwork.pages.pages";
    v9 = *MEMORY[0x277CD96A8];
    v17[10] = @"com.apple.calendar.ics";
    v17[11] = v9;
    v10 = *MEMORY[0x277D36028];
    v17[12] = *MEMORY[0x277CD96B8];
    v17[13] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:14];

    v12 = [(ICEditingTextView *)self typeIdentifiersSupportedAsGenericFiles];
    v13 = [v12 arrayByAddingObjectsFromArray:v11];
  }

  else
  {
    v12 = [*MEMORY[0x277CE1E88] identifier];
    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  v14 = [objc_alloc(MEMORY[0x277D75808]) initWithAcceptableTypeIdentifiers:v13];

  return v14;
}

- (id)typeIdentifiersSupportedAsGenericFiles
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [*MEMORY[0x277CE1D40] identifier];
  v6[0] = v2;
  v3 = [*MEMORY[0x277CE1CF8] identifier];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)commonInit
{
  v16.receiver = self;
  v16.super_class = ICEditingTextView;
  [(ICBaseTextView *)&v16 commonInit];
  [(ICEditingTextView *)self setAllowsEditingTextAttributes:1];
  v3 = objc_alloc(MEMORY[0x277D74298]);
  v4 = [(ICEditingTextView *)self textLayoutManager];
  v5 = [v3 initWithTextLayoutManager:v4];
  [(ICEditingTextView *)self setHighlightShapeProvider:v5];

  [(ICEditingTextView *)self setupLinkTextAttributes];
  v6 = [(ICEditingTextView *)self _allowedTypingAttributes];
  v7 = [v6 mutableCopy];

  [v7 removeObject:*MEMORY[0x277D74060]];
  [v7 removeObject:*MEMORY[0x277D74068]];
  v8 = [MEMORY[0x277D35F78] allowedTypingAttributes];
  [v7 unionSet:v8];

  [(ICEditingTextView *)self _setAllowedTypingAttributes:v7];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_respondToTapGesture_];
  [(ICEditingTextView *)self setTapGestureRecognizer:v9];

  v10 = [(ICEditingTextView *)self tapGestureRecognizer];
  [v10 setDelegate:self];

  v11 = [(ICEditingTextView *)self tapGestureRecognizer];
  [(ICEditingTextView *)self addGestureRecognizer:v11];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = *MEMORY[0x277D36650];
  v14 = [(ICEditingTextView *)self textStorage];
  [v12 addObserver:self selector:sel_textStorageDidEndEditingNotification_ name:v13 object:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel_keyboardLocaleChanged_ name:*MEMORY[0x277D77200] object:0];

  [(ICEditingTextView *)self keyboardLocaleChanged:0];
  [(ICEditingTextView *)self setMathExpressionCompletionType:ICInternalSettingsIsMathEnabled()];
  [(ICEditingTextView(ICAccessibility_iOS) *)self _icaxAddObservationsForCalculate];
}

- (ICNoteEditorViewController)editorController
{
  WeakRetained = objc_loadWeakRetained(&self->_editorController);

  return WeakRetained;
}

- (void)setupTextViewDragAndDropDelegates
{
  objc_opt_class();
  v3 = [(ICEditingTextView *)self textContainer];
  v4 = ICDynamicCast();
  v5 = [v4 insideSiriSnippet];

  if ((v5 & 1) == 0)
  {
    [(ICEditingTextView *)self setTextDragDelegate:self];
    [(ICEditingTextView *)self setTextDropDelegate:self];
    [(ICEditingTextView *)self setPasteDelegate:self];
    v6 = [(ICEditingTextView *)self pasteConfigurationForCurrentTextView];
    [(ICEditingTextView *)self setPasteConfiguration:v6];
  }
}

- (void)setupLinkTextAttributes
{
  v3 = [(ICEditingTextView *)self linkTextAttributes];
  v4 = v3;
  v5 = MEMORY[0x277CBEC10];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v11 = [v6 mutableCopy];
  v7 = [MEMORY[0x277D36708] defaultLinkTextAttributes];
  [v11 addEntriesFromDictionary:v7];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v8 = [v11 copy];
    [(ICEditingTextView *)self setLinkTextAttributes:v8];
  }

  else
  {
    objc_opt_class();
    v9 = [(ICEditingTextView *)self layoutManager];
    v8 = ICDynamicCast();

    [v8 setIsSettingLinkTextAttributes:1];
    v10 = [v11 copy];
    [(ICEditingTextView *)self setLinkTextAttributes:v10];

    [v8 setIsSettingLinkTextAttributes:0];
  }
}

- (id)editorContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_editorController);

  return WeakRetained;
}

- (void)icaxClearCaches
{
  [(ICEditingTextView *)self set_icaxCachedModifiedAttributedString:0];
  [(ICEditingTextView *)self icaxClearCachedChildrenForReparenting];
  [(ICEditingTextView *)self _accessibilitySetRetainedValue:0 forKey:@"AXLinks"];

  [(ICEditingTextView *)self _accessibilitySetRetainedValue:0 forKey:@"LinkRotor"];
}

- (void)icaxClearCachedChildrenForReparenting
{
  v3 = [(ICEditingTextView *)self _icaxPencilKitAttachmentsDict];
  [v3 removeAllObjects];

  [(ICEditingTextView *)self set_icaxCachedChildrenForReparenting:0];
}

- (BOOL)ic_canChangeStyle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICEditingTextView_StyleAdditions__ic_canChangeStyle__block_invoke;
  v4[3] = &unk_2781AE648;
  v4[4] = self;
  v4[5] = &v5;
  [(ICEditingTextView *)self ic_performBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __54__ICEditingTextView_StyleAdditions__ic_canChangeStyle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 ic_selectedRanges];
  LOBYTE(v5) = [v6 canChangeStyleForSelectedRanges:v8 inTextStorage:v7];

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

+ (id)attachmentInNote:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (length == 1)
  {
    v9 = [v6 textStorage];
    v10 = [v7 managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ICEditingTextView_DragAndDrop__attachmentInNote_range___block_invoke;
    v13[3] = &unk_2781ABF08;
    v13[4] = &v14;
    [v9 ic_enumerateAttachmentsInContext:v10 range:location usingBlock:{1, v13}];

    v8 = v15[5];
  }

  v11 = v8;
  _Block_object_dispose(&v14, 8);

  return v11;
}

+ (id)copyTmpFileToTmpFileInSubDirectory:(id)a3 uti:(id)a4 suggestedName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 lastPathComponent];
  v11 = [v7 pathExtension];
  v12 = v11;
  if (!v11 || [v11 isEqualToString:@"tmp"])
  {
    v13 = [MEMORY[0x277D35E00] filenameExtensionForUTI:v8];

    v12 = v13;
  }

  if ([v10 containsString:@"UIKit.ItemProvider"])
  {
    if (v9)
    {
      [v9 ic_sanitizedFilenameString];
    }

    else
    {
      [MEMORY[0x277D35E00] filenameFromUTI:v8];
    }
    v14 = ;

    v10 = v14;
  }

  v15 = MEMORY[0x277CBEBC0];
  v16 = NSTemporaryDirectory();
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v17 UUIDString];
  v19 = [v16 stringByAppendingPathComponent:v18];
  v20 = [v15 fileURLWithPath:v19];

  v21 = [v20 URLByAppendingPathComponent:v10 isDirectory:0];
  v22 = v21;
  v36 = v9;
  if (v12)
  {
    v23 = [v21 URLByDeletingPathExtension];
    v24 = [v23 URLByAppendingPathExtension:v12];

    v22 = v24;
  }

  v25 = v8;
  v26 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    +[ICEditingTextView(DragAndDrop) copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:];
  }

  v27 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v28 = [v27 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v38];
  v29 = v38;

  if ((v28 & 1) == 0)
  {
    v30 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[ICEditingTextView(DragAndDrop) copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:];
    }
  }

  v31 = [MEMORY[0x277CCAA00] defaultManager];
  v37 = v29;
  v32 = [v31 copyItemAtURL:v7 toURL:v22 error:&v37];
  v33 = v37;

  if ((v32 & 1) == 0)
  {

    v34 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      +[ICEditingTextView(DragAndDrop) copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:];
    }

    v22 = 0;
  }

  return v22;
}

- (CGPoint)renderTextInCharacterRange:(_NSRange)a3 inTextStorage:(id)a4 temporaryAttributes:(id)a5 forceOffsetCalculation:(BOOL)a6 image:(id *)a7 boundingRectangles:(id *)a8 renderedGlyphRange:(_NSRange *)a9
{
  length = a3.length;
  location = a3.location;
  v115 = *MEMORY[0x277D85DE8];
  v89 = a4;
  v88 = a5;
  if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = objc_alloc(MEMORY[0x277D76370]);
    v17 = [(ICEditingTextView *)self textLayoutManager];
    v18 = [(ICEditingTextView *)self textLayoutManager];
    v19 = [v18 ic_textRangeForRange:{location, length}];
    v20 = [v16 initWithTextLayoutManager:v17 range:v19 unifyRects:1];

    if (v88)
    {
      [v20 addRenderingAttributes:v88];
    }

    *a7 = [v20 image];
    v21 = [(ICEditingTextView *)self textLayoutManager];
    v22 = [v20 range];
    a9->location = [v21 ic_rangeForTextRange:v22];
    a9->length = v23;

    if (v88)
    {
      v24 = [v88 allKeys];
      [v20 removeRenderingAttributes:v24];
    }

    [v20 firstLineRect];
    v103 = v25;
    v104 = v26;
    v105 = v27;
    v106 = v28;
    [v20 bodyRect];
    v107 = v29;
    v108 = v30;
    v109 = v31;
    v110 = v32;
    [v20 lastLineRect];
    v111 = v33;
    v112 = v34;
    v113 = v35;
    v114 = v36;
    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    for (i = 0; i != 96; i += 32)
    {
      [(ICEditingTextView *)self contentScaleFactor];
      UIRectIntegralWithScale();
      x = v117.origin.x;
      y = v117.origin.y;
      width = v117.size.width;
      height = v117.size.height;
      if (!CGRectIsEmpty(v117))
      {
        v43 = [MEMORY[0x277CCAE60] valueWithRect:{x, y, width, height}];
        [v37 addObject:v43];
      }
    }

    *a8 = [v37 copy];
    v44 = MEMORY[0x277CBF348];
    if ([(ICEditingTextView *)self isDraggingChecklistItem]|| a6)
    {
      v78 = [v20 range];
      v100[0] = 0;
      v100[1] = v100;
      v100[2] = 0x4010000000;
      v100[3] = &unk_21552D17E;
      v101 = 0u;
      v102 = 0u;
      v94 = 0;
      v95 = &v94;
      v96 = 0x4010000000;
      v97 = &unk_21552D17E;
      v79 = *(MEMORY[0x277CBF3A0] + 16);
      v98 = *MEMORY[0x277CBF3A0];
      v99 = v79;
      v80 = [(ICEditingTextView *)self textLayoutManager];
      v81 = [v78 location];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke;
      v91[3] = &unk_2781ABF30;
      v82 = v78;
      v92 = v82;
      v93 = v100;
      v83 = [v80 enumerateTextLayoutFragmentsFromLocation:v81 options:0 usingBlock:v91];

      v84 = [(ICEditingTextView *)self textLayoutManager];
      v85 = [v20 range];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke_2;
      v90[3] = &unk_2781ABF58;
      v90[4] = v100;
      v90[5] = &v94;
      [v84 enumerateTextSegmentsInRange:v85 type:0 options:1 usingBlock:v90];

      MinX = CGRectGetMinX(v95[1]);
      _Block_object_dispose(&v94, 8);
      _Block_object_dispose(v100, 8);
    }

    else
    {
      MinX = *v44;
    }

    v77 = v44[1];
  }

  else
  {
    objc_opt_class();
    v46 = [(ICEditingTextView *)self textContainer];
    v47 = [v46 layoutManager];
    v48 = ICCheckedDynamicCast();

    v49 = [v48 glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
    v51 = v50;
    [v48 setShouldManuallyRenderSeparateSubviews:1];
    [v48 setIsRenderingPreviewForDragAndDrop:1];
    objc_opt_class();
    v52 = [v89 styler];
    v53 = ICCheckedDynamicCast();

    [v53 styleText:v89 inExactRange:location fixModelAttributes:{length, 0}];
    v54 = [objc_alloc(MEMORY[0x277D36970]) initWithLayoutManager:v48 range:location textStorage:{length, v89}];
    [v54 setIsDraggingChecklistItem:{-[ICEditingTextView isDraggingChecklistItem](self, "isDraggingChecklistItem")}];
    *a7 = [v54 image];
    [v53 styleText:v89 inExactRange:location fixModelAttributes:{length, 0}];
    a9->location = [v54 renderedGlyphRange];
    a9->length = v55;
    [v48 setShouldManuallyRenderSeparateSubviews:0];
    [v48 setIsRenderingPreviewForDragAndDrop:0];
    [v48 invalidateDisplayForGlyphRange:{v49, v51}];
    [v54 firstLineRect];
    v103 = v56;
    v104 = v57;
    v105 = v58;
    v106 = v59;
    [v54 bodyRect];
    v107 = v60;
    v108 = v61;
    v109 = v62;
    v110 = v63;
    [v54 lastLineRect];
    v111 = v64;
    v112 = v65;
    v113 = v66;
    v114 = v67;
    v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    for (j = 0; j != 96; j += 32)
    {
      [(ICEditingTextView *)self contentScaleFactor];
      UIRectIntegralWithScale();
      v70 = v118.origin.x;
      v71 = v118.origin.y;
      v72 = v118.size.width;
      v73 = v118.size.height;
      if (!CGRectIsEmpty(v118))
      {
        v74 = [MEMORY[0x277CCAE60] valueWithRect:{v70, v71, v72, v73}];
        [v68 addObject:v74];
      }
    }

    *a8 = [v68 copy];
    [v54 originAdjustment];
    MinX = v75;
    v77 = v76;
  }

  v86 = MinX;
  v87 = v77;
  result.y = v87;
  result.x = v86;
  return result;
}

BOOL __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeInElement];
  v5 = [v4 location];
  v6 = [*(a1 + 32) endLocation];
  v7 = [v5 compare:v6];

  if (v7 == -1)
  {
    [v3 layoutFragmentFrame];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
    if (!CGRectIsEmpty(*(*(*(a1 + 40) + 8) + 32)))
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v18 = CGRectUnion(*(*(*(a1 + 40) + 8) + 32), v19);
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
    }

    v16 = *(*(a1 + 40) + 8);
    v16[4] = x;
    v16[5] = y;
    v16[6] = width;
    v16[7] = height;
  }

  return v7 == -1;
}

uint64_t __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke_2(uint64_t a1, double a2, double y, double width, double height)
{
  x = a2 - CGRectGetMinX(*(*(*(a1 + 32) + 8) + 32));
  if (!CGRectIsEmpty(*(*(*(a1 + 40) + 8) + 32)))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v12 = CGRectUnion(*(*(*(a1 + 40) + 8) + 32), v13);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
  }

  v10 = *(*(a1 + 40) + 8);
  v10[4] = x;
  v10[5] = y;
  v10[6] = width;
  v10[7] = height;
  return 1;
}

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = MEMORY[0x277D75BB0];
  v8 = a4;
  v9 = [(ICEditingTextView *)self window];
  v10 = [v9 windowScene];
  v11 = [v7 sharedTextEffectsWindowForWindowScene:v10];

  v12 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:location inTextStorage:length temporaryAttributes:v8 forceOffsetCalculation:0 containerView:0, v11];

  return v12;
}

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 inTextStorage:(id)a4 temporaryAttributes:(id)a5 forceOffsetCalculation:(BOOL)a6 containerView:(id)a7
{
  v8 = a6;
  length = a3.length;
  location = a3.location;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    v16 = [v13 string];
    v17 = [v16 ic_isLastCharacterInRangeANewlineForRange:{location, length}] & (length != 1);

    length -= v17;
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  [(ICEditingTextView *)self renderTextInCharacterRange:location inTextStorage:length temporaryAttributes:v13 forceOffsetCalculation:v14 image:v8 boundingRectangles:&v37 renderedGlyphRange:&v36, &v38];
  v19 = v18;
  v21 = v20;
  v22 = v37;
  v23 = MEMORY[0x277D755E8];
  v24 = v36;
  v25 = v22;
  v26 = [[v23 alloc] initWithImage:v25];
  [v26 setContentMode:9];
  [(ICEditingTextView *)self textOriginOffsetForGlyphRange:v38, v39];
  [(ICEditingTextView *)self convertPoint:v15 toCoordinateSpace:?];
  v28 = v27;
  v30 = v29;
  [v26 bounds];
  [v26 setFrame:{v28 - v19, v30 - v21}];
  v31 = [objc_alloc(MEMORY[0x277D75480]) initWithTextLineRects:v24];

  v32 = objc_alloc(MEMORY[0x277D75488]);
  [v26 frame];
  UIRectGetCenter();
  v33 = [v32 initWithContainer:v15 center:?];

  v34 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v26 parameters:v31 target:v33];

  return v34;
}

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)a3 uiRange:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICEditingTextView *)self editorController];
  v9 = [v8 note];
  v10 = [v9 textStorage];

  if (location >= [v10 length])
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v11 = [v10 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];
    v12 = ICDynamicCast();
  }

  v13 = [v7 _ic_textFindingResult];
  if (v12)
  {
    v88 = length;
    v90 = v13;
    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      objc_opt_class();
      v15 = [(ICEditingTextView *)self textLayoutManager];
      v16 = ICDynamicCast();

      v17 = [v12 viewIdentifier];
      v18 = [v16 existingAttachmentViewForIdentifier:v17];
      v19 = ICProtocolCast();
    }

    else
    {
      objc_opt_class();
      v20 = [(ICEditingTextView *)self layoutManager];
      v16 = ICDynamicCast();

      v17 = [v16 viewForTextAttachmentNoCreate:v12];
      v19 = ICProtocolCast();
    }

    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__1;
    v100 = __Block_byref_object_dispose__1;
    v101 = 0;
    v89 = v19;
    if (v19)
    {
      v21 = dispatch_semaphore_create(0);
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke;
      v93[3] = &unk_2781ABF80;
      v95 = &v96;
      v22 = v21;
      v94 = v22;
      [v19 imageForTextPreviewUsingFindingResult:v90 inTextView:self completion:v93];
      dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

      v23 = 0.0;
      if (v97[5])
      {
        goto LABEL_29;
      }
    }

    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      objc_opt_class();
      v25 = [(ICEditingTextView *)self textLayoutManager];
      v26 = ICDynamicCast();

      v27 = [v26 documentRange];
      v28 = [v27 location];

      v29 = [(ICEditingTextView *)self textContainer];
      v30 = [v29 textLayoutManager];
      v31 = [v30 locationFromLocation:v28 withOffset:location];
      v86 = v28;

      v32 = [(ICEditingTextView *)self textContainer];
      v33 = [v32 textLayoutManager];
      v34 = [v33 locationFromLocation:v31 withOffset:v88];

      v35 = [(ICEditingTextView *)self textLayoutManager];
      v36 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v31 endLocation:v34];
      [v35 ensureLayoutForRange:v36];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v38 = [(ICEditingTextView *)self _pk_viewProviderForAttachment:v12 atCharacterIndex:location createIfNeeded:0, v86];
      }

      else
      {
        v37 = [(ICEditingTextView *)self textContainer];
        v38 = [v12 viewProviderForParentView:self location:v31 textContainer:v37];
      }
    }

    else
    {
      objc_opt_class();
      v40 = [(ICEditingTextView *)self layoutManager];
      v26 = ICDynamicCast();

      v38 = [v12 viewProviderForParentView:self characterIndex:location layoutManager:v26];
    }

    v41 = [v38 view];
    v23 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v38 additionalXOffsetForTextDragPreviewInTextView:self];
      v23 = v42;
    }

    if (objc_opt_respondsToSelector())
    {
      [v41 additionalXOffsetForTextDragPreviewInTextView:self];
      v23 = v43;
    }

    if (objc_opt_respondsToSelector())
    {
      v44 = [v38 viewForTextDragPreview];

      v41 = v44;
    }

    if (objc_opt_respondsToSelector())
    {
      v45 = [v41 viewForTextDragPreview];

      v41 = v45;
    }

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke_2;
    v91[3] = &unk_2781ABFA8;
    v46 = v41;
    v92 = v46;
    v47 = [v46 ic_imageRenderedFromViewHierarchyAfterScreenUpdates:0 fallback:v91];
    v48 = v97[5];
    v97[5] = v47;

    if (v97[5])
    {
LABEL_29:
      v49 = [(ICEditingTextView *)self subviews];
      v50 = [v49 ic_objectPassingTest:&__block_literal_global];

      if (!v50 || ([v50 frame], (CGFloatIsValid() & 1) == 0))
      {
        v51 = self;

        v50 = v51;
      }

      v52 = objc_alloc(MEMORY[0x277D755E8]);
      v53 = [v52 initWithImage:v97[5]];
      if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v54 = objc_claimAutoreleasedReturnValue(), v54, v54))
      {
        [(ICEditingTextView *)self textOriginOffsetForGlyphRange:location, v88];
      }

      else
      {
        v55 = [(ICEditingTextView *)self layoutManager];
        v56 = [v55 glyphRangeForCharacterRange:location actualCharacterRange:{v88, 0}];
        v58 = v57;

        [(ICEditingTextView *)self textOriginOffsetForGlyphRange:v56, v58];
      }

      [(ICEditingTextView *)self convertPoint:v50 toCoordinateSpace:?];
      v60 = v59;
      v62 = v61;
      [v53 bounds];
      [v53 setFrame:{v60, v62}];
      if (v23 != 0.0)
      {
        [v53 frame];
        v104 = CGRectOffset(v103, v23, 0.0);
        [v53 setFrame:{v104.origin.x, v104.origin.y, v104.size.width, v104.size.height}];
      }

      objc_opt_class();
      v63 = ICDynamicCast();
      v64 = v63;
      if (v63)
      {
        [v63 attachmentBoundsMargins];
        v66 = v65;
        v68 = v67;
        [v53 frame];
        v106 = CGRectOffset(v105, v66, v68);
        [v53 setFrame:{v106.origin.x, v106.origin.y, v106.size.width, v106.size.height}];
      }

      v69 = objc_alloc_init(MEMORY[0x277D75480]);
      objc_opt_class();
      v70 = ICDynamicCast();
      [v70 viewCornerRadius];
      if (v71 > 0.0)
      {
        v72 = MEMORY[0x277D75208];
        [v53 bounds];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;
        [v70 viewCornerRadius];
        v82 = [v72 bezierPathWithRoundedRect:v74 cornerRadius:{v76, v78, v80, v81}];
        [v69 setVisiblePath:v82];
      }

      v83 = objc_alloc(MEMORY[0x277D75488]);
      [v53 frame];
      UIRectGetCenter();
      v84 = [v83 initWithContainer:v50 center:?];
      v39 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v53 parameters:v69 target:v84];
    }

    else
    {
      v39 = 0;
    }

    _Block_object_dispose(&v96, 8);

    v13 = v90;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

void __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  v4 = [*(a1 + 32) layer];
  [v4 renderInContext:v3];

  CGContextRestoreGState(v3);
}

uint64_t __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)targetedPreviewForPaperKitAttachment:(id)a3 textFindingResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x4010000000;
  v44 = &unk_21552D17E;
  v45 = 0u;
  v46 = 0u;
  v8 = dispatch_semaphore_create(0);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __89__ICEditingTextView_DragAndDrop__targetedPreviewForPaperKitAttachment_textFindingResult___block_invoke;
  v37[3] = &unk_2781ABFF0;
  v39 = &v47;
  v40 = &v41;
  v9 = v8;
  v38 = v9;
  [v7 generateFindPreviewImageForPaperKitAttachment:v6 completion:v37];
  v10 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v9, v10);
  [(ICEditingTextView *)self bounds];
  [ICPaperKitTextFindingResult scaleForDrawingBounds:?];
  v11 = v42;
  CGAffineTransformMakeScale(&v36, v12, v12);
  v54 = CGRectApplyAffineTransform(v11[1], &v36);
  v55 = CGRectIntegral(v54);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  objc_opt_class();
  v17 = ICDynamicCast();
  v18 = [v7 framesForHighlightInTextView:v17];
  v19 = [v18 firstObject];
  [v19 CGRectValue];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x277D755E8]);
  v29 = [v28 initWithImage:v48[5]];
  [v29 setFrame:{x, y, width, height}];
  UIRectGetCenter();
  [v29 setCenter:?];
  v30 = objc_alloc_init(MEMORY[0x277D758D8]);
  v31 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v21 cornerRadius:{v23, v25, v27, 4.0}];
  [v30 setVisiblePath:v31];

  v32 = objc_alloc(MEMORY[0x277D758E0]);
  [(ICEditingTextView *)self frame];
  UIRectGetCenter();
  v33 = [v32 initWithContainer:self center:?];
  v34 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v29 parameters:v30 target:v33];

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v34;
}

void __89__ICEditingTextView_DragAndDrop__targetedPreviewForPaperKitAttachment_textFindingResult___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v13 = a2;
  v12 = *(*(a1 + 48) + 8);
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_targetedPreviewForRange:(id)a3 withRenderingAttributes:(id)a4 includeFullDocument:(BOOL)a5
{
  v39 = a5;
  v48[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 _ic_textFindingResult];
  v10 = v9;
  if (!v9)
  {
    v19 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:v7];
    v21 = v20;
    objc_opt_class();
    v22 = [(ICEditingTextView *)self textStorage];
    v23 = ICDynamicCast();

    v24 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v19 inTextStorage:v21 temporaryAttributes:v23 forceOffsetCalculation:v8 containerView:0, self];

    goto LABEL_13;
  }

  v11 = [v9 range];
  v40 = v12;
  v13 = objc_opt_class();
  v14 = [(ICEditingTextView *)self editorController];
  v15 = [v14 note];
  v16 = [v13 attachmentInNote:v15 range:{v11, v40}];

  objc_opt_class();
  v17 = ICDynamicCast();
  if ([v16 attachmentType] == 13 && v17)
  {
    v18 = [(ICEditingTextView *)self targetedPreviewForPaperKitAttachment:v16 textFindingResult:v17];
  }

  else
  {
    if (![v10 isAttachmentResult])
    {
      objc_opt_class();
      v25 = [(ICEditingTextView *)self textStorage];
      v38 = ICDynamicCast();

      v37 = [v38 attribute:*MEMORY[0x277D35DA8] atIndex:v11 effectiveRange:0];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      if ([v37 isList])
      {
        v26 = [(ICEditingTextView *)self textLayoutManager];
        v36 = [(ICEditingTextView *)self textLayoutManager];
        v27 = [v36 ic_textRangeForRange:{v11, v40}];
        v28 = [v27 location];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __103__ICEditingTextView_DragAndDrop___targetedPreviewForRange_withRenderingAttributes_includeFullDocument___block_invoke;
        v42[3] = &unk_2781AC018;
        v42[4] = self;
        v42[5] = &v43;
        v42[6] = v11;
        v42[7] = v40;
        v29 = [v26 enumerateTextLayoutFragmentsFromLocation:v28 options:0 usingBlock:v42];
      }

      v47[0] = *MEMORY[0x277D740C0];
      v30 = [MEMORY[0x277D75348] blackColor];
      v48[0] = v30;
      v47[1] = *MEMORY[0x277D74068];
      v31 = [MEMORY[0x277D75348] clearColor];
      v48[1] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

      v33 = *(v44 + 24);
      v34 = [(ICEditingTextView *)self window];
      v24 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v11 inTextStorage:v40 temporaryAttributes:v38 forceOffsetCalculation:v32 containerView:v33, v34];

      _Block_object_dispose(&v43, 8);
      goto LABEL_12;
    }

    v18 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v11 uiRange:v40, v7];
  }

  v24 = v18;
LABEL_12:

LABEL_13:
  if (!v24)
  {
    v41.receiver = self;
    v41.super_class = ICEditingTextView;
    v24 = [(ICEditingTextView *)&v41 _targetedPreviewForRange:v7 withRenderingAttributes:v8 includeFullDocument:v39];
  }

  return v24;
}

uint64_t __103__ICEditingTextView_DragAndDrop___targetedPreviewForRange_withRenderingAttributes_includeFullDocument___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 textLayoutManager];
  v6 = [v4 rangeInElement];

  v7 = [v5 ic_rangeForTextRange:v6];
  *(*(a1[5] + 8) + 24) = v7 == a1[6];
  return 0;
}

- (CGRect)enclosingRectForGlyphRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(ICEditingTextView *)self textLayoutManager];
    v8 = [v7 ic_textRangeForRange:{location, length}];

    v9 = [(ICEditingTextView *)self textContainer];
    [v9 textContainerOrigin];
    v11 = v10;
    v13 = v12;

    v41 = 0;
    v42 = &v41;
    v43 = 0x4010000000;
    v44 = &unk_21552D17E;
    v14 = *(MEMORY[0x277CBF398] + 16);
    v45 = *MEMORY[0x277CBF398];
    v46 = v14;
    v15 = [(ICEditingTextView *)self textLayoutManager];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke;
    v40[3] = &unk_2781AC040;
    v40[5] = v11;
    v40[6] = v13;
    v40[4] = &v41;
    [v15 enumerateTextSegmentsInRange:v8 type:1 options:0 usingBlock:v40];

    v16 = v42[4];
    v17 = v42[5];
    v18 = v42[6];
    v19 = v42[7];
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x4010000000;
    v44 = &unk_21552D17E;
    v20 = *(MEMORY[0x277CBF398] + 16);
    v45 = *MEMORY[0x277CBF398];
    v46 = v20;
    v21 = [(ICEditingTextView *)self textContainer];
    [v21 textContainerOrigin];
    v23 = v22;
    v25 = v24;
    v26 = [(ICEditingTextView *)self layoutManager];
    v27 = [(ICEditingTextView *)self textContainer];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke_2;
    v33[3] = &unk_2781AC068;
    v33[4] = self;
    v36 = location;
    v37 = length;
    v28 = v21;
    v38 = v23;
    v39 = v25;
    v34 = v28;
    v35 = &v41;
    [v26 enumerateEnclosingRectsForGlyphRange:location withinSelectedGlyphRange:length inTextContainer:location usingBlock:{length, v27, v33}];

    v16 = v42[4];
    v17 = v42[5];
    v18 = v42[6];
    v19 = v42[7];

    _Block_object_dispose(&v41, 8);
  }

  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

uint64_t __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = CGRectOffset(*&a2, *(a1 + 40), *(a1 + 48));
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.size.height > 0.0 || v11.size.width > 0.0)
  {
    *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), *&x);
  }

  return 1;
}

void __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke_2(uint64_t a1, CGFloat a2, double a3, CGFloat a4)
{
  v7 = [*(a1 + 32) layoutManager];
  [v7 boundingRectForGlyphRange:*(a1 + 56) inTextContainer:{*(a1 + 64), *(a1 + 40)}];
  v9 = v8;
  v11 = v10;

  v12.origin.x = a2;
  v12.origin.y = v9;
  v12.size.width = a4;
  v12.size.height = v11;
  v13 = CGRectOffset(v12, *(a1 + 72), *(a1 + 80));
  *(*(*(a1 + 48) + 8) + 32) = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), v13);
}

- (void)beginDrop
{
  v3 = [(ICEditingTextView *)self TTTextStorage];
  [v3 breakUndoCoalescing];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v4 = [(ICEditingTextView *)self TTTextStorage];
    [v4 beginEditing];
  }
}

- (void)finishDropWithString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(ICEditingTextView *)self icaxTextDidChange];
    v5 = [(ICEditingTextView *)self editorController];
    v6 = [v5 note];
    [v6 updateChangeCountWithReason:@"Finished string drop"];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v7 = [(ICEditingTextView *)self TTTextStorage];
    [v7 endEditing];
  }

  v8 = [(ICEditingTextView *)self TTTextStorage];
  [v8 fixupAfterEditing];

  v9 = [(ICEditingTextView *)self editorController];
  v10 = [v9 note];
  [v10 save];

  v11 = [(ICEditingTextView *)self editorController];
  v12 = [v11 note];
  v13 = [v12 managedObjectContext];
  [v13 ic_save];

  v14 = [(ICEditingTextView *)self editorController];
  v15 = [v14 note];
  [v15 setShouldAddMediaAsynchronously:0];

  objc_initWeak(&location, self);
  v16 = [MEMORY[0x277D35F30] sharedContext];
  v17 = [v16 snapshotManagedObjectContext];

  v18 = dispatch_get_global_queue(-32768, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke;
  v21[3] = &unk_2781AC0E0;
  v22 = v17;
  v23 = v4;
  v19 = v4;
  v20 = v17;
  objc_copyWeak(&v24, &location);
  dispatch_async(v18, v21);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke(id *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke_2;
  v3[3] = &unk_2781AC0E0;
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  objc_copyWeak(&v6, a1 + 6);
  [v2 performBlockAndWait:v3];
  objc_destroyWeak(&v6);
}

void __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke_2(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke_3;
  v7[3] = &unk_2781AC090;
  v5 = v2;
  v8 = v5;
  v9 = &v10;
  [v3 ic_enumerateAttachmentsInContext:v4 usingBlock:v7];
  [*(a1 + 40) ic_save];
  if (*(v11 + 24) == 1)
  {
    objc_copyWeak(&v6, (a1 + 48));
    dispatchMainAfterDelay();
    objc_destroyWeak(&v6);
  }

  _Block_object_dispose(&v10, 8);
}

void __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectID];
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
    v4 = [MEMORY[0x277D366B0] sharedGenerator];
    [v4 generatePreviewIfNeededForAttachmentWithObjectID:v7];
  }

  [v3 updateChangeCountWithReason:@"Finished string drop"];
  v5 = [v3 media];
  [v5 updateChangeCountWithReason:@"Finished string drop"];

  v6 = [v3 attachmentType];
  if (v6 == 10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained editorController];
  v3 = [v2 note];

  [v3 updatePKDrawingsWithHandwritingRecognitionEnabled:{objc_msgSend(v3, "isHandwritingRecognitionEnabled")}];
}

- (BOOL)handleTopotextDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = *MEMORY[0x277D35D08];
  v17 = [v12 hasRepresentationConformingToTypeIdentifier:*MEMORY[0x277D35D08] fileOptions:0];
  if (v17)
  {
    objc_initWeak(&location, self);
    v18 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(ICEditingTextView *)self editorController];
      v20 = [v23 note];
      v21 = [v20 shortLoggingDescription];
      *buf = 138412546;
      v22 = v21;
      v31 = v21;
      v32 = 2112;
      v33 = v13;
      _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Topotext drop in note: %@, position: %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __124__ICEditingTextView_DragAndDrop__handleTopotextDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v24[3] = &unk_2781AC130;
    objc_copyWeak(&v28, &location);
    v25 = v14;
    v26 = self;
    v27 = v15;
    *a6 = [v12 loadDataRepresentationForTypeIdentifier:v16 completionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __124__ICEditingTextView_DragAndDrop__handleTopotextDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 && WeakRetained && ([MEMORY[0x277D35F38] pasteboardDataFromPersistenceData:v5], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __124__ICEditingTextView_DragAndDrop__handleTopotextDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
    v14[3] = &unk_2781AC108;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v9;
    v17 = v12;
    v16 = *(a1 + 32);
    v13 = v10;
    [v11 performBlockAndWait:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __124__ICEditingTextView_DragAndDrop__handleTopotextDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) supportsAttachments];
  if (v4)
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = [v5 cellDelegate];
    v7 = [v6 attachment];
    v8 = [v7 objectID];

    if (v8)
    {
      v9 = [v3 managedObjectContext];
      v10 = [v9 existingObjectWithID:v8 error:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277CCA898];
  v12 = [*(a1 + 40) attributedStringData];
  v13 = [*(a1 + 40) dataPersister];
  v17 = 0;
  v14 = [v11 ic_attributedStringWithData:v12 dataPersister:v13 note:v3 parentAttachment:v10 shouldCreateAttachments:v4 error:&v17];
  v15 = v17;

  v16 = [v3 managedObjectContext];
  [v16 ic_save];

  (*(*(a1 + 56) + 16))();
  if (v15)
  {
    [*(a1 + 48) addErrorWithCode:{objc_msgSend(v15, "code")}];
  }
}

- (BOOL)handleInlineDrawingDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = *MEMORY[0x277D35BD8];
  if (([v12 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0] & 1) == 0)
  {
    v17 = *MEMORY[0x277D35BD0];

    if ([v12 hasRepresentationConformingToTypeIdentifier:v17 fileOptions:0])
    {
      v16 = v17;
    }

    else
    {
      v16 = *MEMORY[0x277CD96B8];

      if (([v12 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0] & 1) == 0)
      {

        goto LABEL_10;
      }
    }
  }

  if (!v16)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v18 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(ICEditingTextView *)self editorController];
    v22 = [v24 note];
    v23 = [v22 shortLoggingDescription];
    *buf = 138412802;
    v31 = v23;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v16;
    _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Inline drawing drop in note: %@, position: %@, uti: %@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __129__ICEditingTextView_DragAndDrop__handleInlineDrawingDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
  v25[3] = &unk_2781AC158;
  v26 = v16;
  v27 = self;
  v28 = v14;
  v29 = v15;
  v19 = v16;
  *a6 = [v12 loadDataRepresentationForTypeIdentifier:v19 completionHandler:v25];

  v20 = 1;
LABEL_11:

  return v20;
}

void __129__ICEditingTextView_DragAndDrop__handleInlineDrawingDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_11;
  }

  if ([MEMORY[0x277D35E00] typeUTIIsInlineDrawing:a1[4]])
  {
    v14 = 0;
    v7 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v5 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __129__ICEditingTextView_DragAndDrop__handleInlineDrawingDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1();
      }
    }

    goto LABEL_9;
  }

  v10 = [MEMORY[0x277CD9688] strokeSelectionFromData:v5];
  v7 = 0;
LABEL_11:
  if (v10 | v7)
  {
    v11 = a1[5];
    v12 = a1[6];
    if (v7)
    {
      [v11 attributedStringForDrawing:v7 session:v12];
    }

    else
    {
      [v11 attributedStringForStrokeSelection:v10 session:v12];
    }
    v13 = ;
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

- (BOOL)handleInlinePaperDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = *MEMORY[0x277CD96B0];
  v14 = [v10 hasRepresentationConformingToTypeIdentifier:*MEMORY[0x277CD96B0] fileOptions:0];
  if (v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v16[3] = &unk_2781AC220;
    v18 = v12;
    v17 = v11;
    *a6 = [v10 loadFileRepresentationForTypeIdentifier:v13 completionHandler:v16];
  }

  return v14;
}

void __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__1;
  v51[4] = __Block_byref_object_dispose__1;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__1;
  v49 = __Block_byref_object_dispose__1;
  v50 = 0;
  if (v5)
  {
    v7 = *(a1 + 32);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
    v41[3] = &unk_2781AC180;
    v42 = v7;
    v43 = &v45;
    v44 = v51;
    [v42 performBlockAndWait:v41];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_3;
    aBlock[3] = &unk_2781AC1D0;
    v39 = *(a1 + 32);
    v40 = &v45;
    v8 = _Block_copy(aBlock);
    v9 = MEMORY[0x277CBEBC0];
    v10 = NSTemporaryDirectory();
    v11 = [v9 fileURLWithPath:v10 isDirectory:1];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = [v11 URLByAppendingPathComponent:v13];

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = v6;
    LOBYTE(v12) = [v15 linkItemAtURL:v5 toURL:v14 error:&v37];
    v16 = v37;

    if (v12)
    {
      v6 = v16;
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1();
      }

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = v16;
      v19 = [v18 copyItemAtURL:v5 toURL:v14 error:&v36];
      v6 = v36;

      if ((v19 & 1) == 0)
      {
        v28 = os_log_create("com.apple.notes", "DragAndDrop");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_2();
        }

        v8[2](v8);
        (*(*(a1 + 40) + 16))();
        goto LABEL_16;
      }
    }

    v35 = 0;
    v20 = [v14 getResourceValue:&v35 forKey:*MEMORY[0x277CBE818] error:0];
    v21 = v35;
    v22 = v21;
    if (v20 && [v21 isEqual:*MEMORY[0x277CBE820]])
    {
      v23 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14 options:0 error:0];
      v24 = [MEMORY[0x277CBEBC0] URLWithDataRepresentation:v23 relativeToURL:0];

      v25 = 0;
      v14 = v24;
    }

    else
    {
      v25 = 1;
    }

    v26 = MEMORY[0x277D35F48];
    v27 = v46[5];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_128;
    v29[3] = &unk_2781AC1F8;
    v31 = v8;
    v32 = *(a1 + 40);
    v33 = v51;
    v34 = v25;
    v14 = v14;
    v30 = v14;
    [v26 copyNewPaperBundleToAttachment:v27 fromURL:v14 completionHandler:v29];

LABEL_16:
    goto LABEL_17;
  }

  (*(*(a1 + 40) + 16))();
LABEL_17:
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(v51, 8);
}

void __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  [*(a1 + 32) incrementNumberOfAttachmentsAttemptedAdded];
  if ([v13 canAddAttachment])
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    v5 = [v13 addSystemPaperAttachmentWithIdentifier:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [objc_alloc(MEMORY[0x277D368E8]) initWithAttachment:*(*(*(a1 + 40) + 8) + 40)];
    v9 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v13 managedObjectContext];
    [v12 ic_save];
  }

  else
  {
    [*(a1 + 32) addErrorWithCode:202];
  }
}

uint64_t __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_4;
  v3[3] = &unk_2781AC1A8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performBlockAndWait:v3];
}

void __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v3 setNeedsInitialRelationshipSetup:0];
  [MEMORY[0x277D35E00] deleteAttachment:*(*(*(a1 + 32) + 8) + 40)];
  v5 = [v4 managedObjectContext];

  [v5 ic_save];
}

void __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_128(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
  if (*(a1 + 64) == 1)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtURL:*(a1 + 32) error:0];
  }
}

- (BOOL)handlePaperDocumentDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ((ICInternalSettingsIsPDFsInNotesEnabled() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICInternalSettingsIsPDFsInNotesEnabled()" functionName:"-[ICEditingTextView(DragAndDrop) handlePaperDocumentDropForItemProvider:atTextPosition:pasteSession:outProgress:completionBlock:]" simulateCrash:1 showAlert:0 format:@"PDFsInNotes must be enabled"];
  }

  v16 = [*MEMORY[0x277CE1E08] identifier];
  v17 = [v12 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];
  if (v17)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v19[3] = &unk_2781AC298;
    objc_copyWeak(&v24, &location);
    v20 = v16;
    v21 = v12;
    v23 = v15;
    v22 = v14;
    *a6 = [v21 loadFileRepresentationForTypeIdentifier:v20 completionHandler:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v5 && (v8 = objc_opt_class(), v9 = *(a1 + 32), [*(a1 + 40) suggestedName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:", v5, v9, v10), v10, v11))
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__1;
    v31[4] = __Block_byref_object_dispose__1;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__1;
    v29 = __Block_byref_object_dispose__1;
    v30 = 0;
    v12 = *(a1 + 48);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
    v20[3] = &unk_2781AC248;
    v21 = v12;
    v23 = &v25;
    v22 = *(a1 + 40);
    v24 = v31;
    [v21 performBlockAndWait:v20];
    v13 = MEMORY[0x277D35F48];
    v14 = v26[5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_3;
    v16[3] = &unk_2781AC270;
    v15 = v11;
    v17 = v15;
    v18 = *(a1 + 56);
    v19 = v31;
    [v13 createPaperDocumentForAttachment:v14 fromLegacyMediaAtURL:v15 completionHandler:v16];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  [*(a1 + 32) incrementNumberOfAttachmentsAttemptedAdded];
  if ([v16 canAddAttachment])
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    v5 = [v16 addPaperDocumentAttachmentWithIdentifier:v4 subtype:*MEMORY[0x277D35BF0]];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 40) suggestedName];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [*(a1 + 40) suggestedName];
      [*(*(*(a1 + 48) + 8) + 40) setTitle:v10];
    }

    v11 = [objc_alloc(MEMORY[0x277D36880]) initWithAttachment:*(*(*(a1 + 48) + 8) + 40)];
    v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v16 managedObjectContext];
    [v15 ic_save];
  }

  else
  {
    [*(a1 + 32) addErrorWithCode:202];
  }
}

void __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v10];
  v7 = v10;
  v8 = v7;
  if (v6)
  {
LABEL_5:

    goto LABEL_6;
  }

  v9 = [v7 code];

  if (v9 != 4)
  {
    v5 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_3_cold_1();
    }

    goto LABEL_5;
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasSupportedImageInItemProvider:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a3;
  v3 = [v17 registeredTypeIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = *MEMORY[0x277CE1D88];
    v8 = *MEMORY[0x277CE1DB0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v7 identifier];
        if ([v10 isEqualToString:v11])
        {
        }

        else
        {
          v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v10];
          v13 = [v12 conformsToType:v8];

          if (v13)
          {

            v15 = v17;
            v14 = [v17 canLoadObjectOfClass:objc_opt_class()];
            goto LABEL_13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  v15 = v17;
LABEL_13:

  return v14;
}

- (id)attributedStringForImageData:(id)a3 imageTypeUTI:(id)a4 itemProvider:(id)a5 pasteSession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__ICEditingTextView_DragAndDrop__attributedStringForImageData_imageTypeUTI_itemProvider_pasteSession___block_invoke;
  v20[3] = &unk_2781AC2C0;
  v14 = v13;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v25 = self;
  v26 = &v27;
  v24 = v17;
  [v14 performBlockAndWait:v20];
  v18 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __102__ICEditingTextView_DragAndDrop__attributedStringForImageData_imageTypeUTI_itemProvider_pasteSession___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  [*(a1 + 32) incrementNumberOfAttachmentsAttemptedAdded];
  if (([v20 canAddAttachment] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = 202;
    goto LABEL_5;
  }

  if ([v20 attachmentExceedsMaxSizeAllowed:{objc_msgSend(*(a1 + 40), "length")}])
  {
    v3 = *(a1 + 32);
    v4 = 207;
LABEL_5:
    [v3 addErrorWithCode:v4];
    goto LABEL_11;
  }

  v5 = [MEMORY[0x277D35E00] filenameExtensionForUTI:*(a1 + 48)];
  v6 = [*(a1 + 56) suggestedName];
  if (!v6)
  {
    v6 = [MEMORY[0x277D35E00] filenameFromUTI:*(a1 + 48)];
  }

  v7 = [v6 ic_sanitizedFilenameString];

  if (![v7 length])
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"Image" value:&stru_282757698 table:0];

    v7 = v9;
  }

  v10 = [v7 stringByDeletingPathExtension];

  v11 = [v10 stringByAppendingPathExtension:v5];

  v12 = [v20 addAttachmentWithData:*(a1 + 40) filename:v11];
  v13 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v12];
  v14 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v13];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v20 managedObjectContext];
  [v17 ic_save];

  v18 = [*(a1 + 64) editorController];
  v19 = [v18 eventReporter];
  [v19 submitAttachmentAddEventForAttachment:v12];

LABEL_11:
}

- (id)attributedStringForStrokeSelection:(id)a3 session:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CD95F8]);
  [v5 boundsWithoutLasso];
  v10 = v9;
  v11 = v9 < 760.0;
  v12 = 0.0;
  if (v11)
  {
    v12 = 8.0;
  }

  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, v12 - v7, 8.0 - v8);
  if (v10 > 768.0)
  {
    CGAffineTransformMakeScale(&t2, 768.0 / v10, 768.0 / v10);
    t1 = v35;
    CGAffineTransformConcat(&v34, &t1, &t2);
    v35 = v34;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v5;
  v13 = [v5 strokes];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    v17 = *MEMORY[0x277CD96C8];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v19 ink];
        v21 = [v20 identifier];
        v22 = [v21 isEqualToString:v17];

        if ((v22 & 1) == 0)
        {
          v34 = v35;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  v23 = [(ICEditingTextView *)self attributedStringForDrawing:v6 session:v25];

  return v23;
}

- (id)attributedStringForDrawing:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  [v6 bounds];
  [v6 set_canvasBounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), 768.0, CGRectGetMaxY(v24)}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ICEditingTextView_DragAndDrop__attributedStringForDrawing_session___block_invoke;
  v12[3] = &unk_2781AC2E8;
  v8 = v7;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = self;
  v16 = &v17;
  [v8 performBlockAndWait:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __69__ICEditingTextView_DragAndDrop__attributedStringForDrawing_session___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  [*(a1 + 32) incrementNumberOfAttachmentsAttemptedAdded];
  if ([v16 canAddAttachment])
  {
    v3 = [v16 addAttachmentWithUTI:*MEMORY[0x277D35BD0]];
    v4 = [*(a1 + 40) serialize];
    [v3 setMergeableData:v4];

    v5 = [objc_alloc(MEMORY[0x277D367E8]) initWithAttachment:v3];
    v6 = [*(a1 + 48) icDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [*(a1 + 48) icDelegate];
      v8 = [v7 shouldInsertNewDrawingsAsPaper];

      if (!v8)
      {
LABEL_6:
        v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v5];
        v13 = *(*(a1 + 56) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v15 = [v16 managedObjectContext];
        [v15 ic_save];

        goto LABEL_8;
      }

      v6 = [v16 managedObjectContext];
      v9 = [[_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc] initWithNote:v16 managedObjectContext:v6 textView:*(a1 + 48)];
      v10 = [(ICInlineDrawingUpgradeHelper *)v9 upgradeWithAttachment:v3 itemProviders:MEMORY[0x277CBEBF8] itemsLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v11 = [objc_alloc(MEMORY[0x277D368E8]) initWithAttachment:v10];

      [MEMORY[0x277D35E00] deleteAttachment:v3];
      v5 = v11;
    }

    goto LABEL_6;
  }

  [*(a1 + 32) addErrorWithCode:202];
LABEL_8:
}

- (BOOL)handleImageDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v38 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [*MEMORY[0x277CE1DB0] identifier];
  if ([v11 hasRepresentationConformingToTypeIdentifier:v14 fileOptions:0])
  {
    LODWORD(v15) = [(ICEditingTextView *)self hasSupportedImageInItemProvider:v11];

    if (v15)
    {
      objc_initWeak(&location, self);
      v16 = MEMORY[0x277CBEB98];
      v17 = [*MEMORY[0x277CE1DC0] identifier];
      v18 = [*MEMORY[0x277CE1E10] identifier];
      v19 = [*MEMORY[0x277CE1E80] identifier];
      v20 = [*MEMORY[0x277CE1D90] identifier];
      v21 = [v16 setWithObjects:{v17, v18, v19, v20, 0}];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v22 = [v11 registeredTypeIdentifiers];
      v23 = [v22 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v23)
      {
        v24 = *v51;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v51 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v50 + 1) + 8 * i);
            if ([v21 containsObject:v26])
            {
              v23 = v26;
              goto LABEL_14;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      v27 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v34 = [(ICEditingTextView *)self editorController];
        v35 = [v34 note];
        v36 = [v35 shortLoggingDescription];
        *buf = 138412802;
        v56 = v36;
        v57 = 2112;
        v58 = v38;
        v59 = 2112;
        v60 = v23;
        _os_log_debug_impl(&dword_2151A1000, v27, OS_LOG_TYPE_DEBUG, "Image drop in note: %@, position: %@, uti: %@", buf, 0x20u);
      }

      if (v23)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __121__ICEditingTextView_DragAndDrop__handleImageDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
        v44[3] = &unk_2781AC310;
        v28 = &v49;
        objc_copyWeak(&v49, &location);
        v45 = v23;
        v46 = v11;
        v47 = v12;
        v48 = v13;
        *a6 = [v46 loadDataRepresentationForTypeIdentifier:v45 completionHandler:v44];

        v29 = &v45;
        v15 = &v46;
        v30 = &v47;
      }

      else
      {
        v31 = objc_opt_class();
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __121__ICEditingTextView_DragAndDrop__handleImageDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
        v39[3] = &unk_2781AC338;
        v28 = &v43;
        objc_copyWeak(&v43, &location);
        v40 = v11;
        v41 = v12;
        v42 = v13;
        v32 = [v40 loadObjectOfClass:v31 completionHandler:v39];
        v29 = &v40;
        v15 = &v41;
        v30 = &v42;
        *a6 = v32;
      }

      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
      LOBYTE(v15) = 1;
    }
  }

  else
  {

    LOBYTE(v15) = 0;
  }

  return v15;
}

void __121__ICEditingTextView_DragAndDrop__handleImageDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (v9 && WeakRetained)
  {
    v8 = [WeakRetained attributedStringForImageData:v9 imageTypeUTI:*(a1 + 32) itemProvider:*(a1 + 40) pasteSession:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __121__ICEditingTextView_DragAndDrop__handleImageDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = UIImagePNGRepresentation(v6);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = WeakRetained;
    if (v7)
    {
      v10 = WeakRetained == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = [*MEMORY[0x277CE1E10] identifier];
      v12 = [v9 attributedStringForImageData:v7 imageTypeUTI:v11 itemProvider:*(a1 + 32) pasteSession:*(a1 + 40)];

      (*(*(a1 + 48) + 16))();
      goto LABEL_9;
    }
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 56));
    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

- (BOOL)handleMovieOrAudioDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v41 = a4;
  v44 = a5;
  v42 = a7;
  v11 = *MEMORY[0x277CE1E00];
  v12 = [*MEMORY[0x277CE1E00] identifier];
  v13 = [v10 hasRepresentationConformingToTypeIdentifier:v12 fileOptions:0];
  v14 = MEMORY[0x277CE1D00];
  if (v13)
  {
  }

  else
  {
    v15 = [*MEMORY[0x277CE1D00] identifier];
    v16 = [v10 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

    if (!v16)
    {
      v34 = 0;
      goto LABEL_27;
    }
  }

  objc_initWeak(&location, self);
  v17 = [v11 identifier];
  v18 = [v10 hasRepresentationConformingToTypeIdentifier:v17 fileOptions:0];
  v19 = *v14;
  if (v18)
  {
    v19 = v11;
  }

  v20 = v19;

  v45 = [v20 identifier];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v21 = [v10 registeredTypeIdentifiers];
  v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v22)
  {
    v23 = *v53;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v52 + 1) + 8 * i);
        v26 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{v25, v41}];
        v27 = [v26 conformsToType:v20];

        if (v27)
        {
          v28 = v25;

          v45 = v28;
          goto LABEL_16;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v29 = [(ICEditingTextView *)self editorController];
  v30 = [v29 note];
  if (![v30 isPasswordProtected])
  {

    goto LABEL_22;
  }

  v31 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:v45];

  if (v31)
  {
LABEL_22:
    v35 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(ICEditingTextView *)self editorController];
      v39 = [v38 note];
      v40 = [v39 shortLoggingDescription];
      *buf = 138412546;
      v58 = v40;
      v59 = 2112;
      v60 = v41;
      _os_log_debug_impl(&dword_2151A1000, v35, OS_LOG_TYPE_DEBUG, "Movie/audio drop in note: %@, position: %@", buf, 0x16u);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v46[3] = &unk_2781AC360;
    objc_copyWeak(&v51, &location);
    v47 = v45;
    v48 = v10;
    v49 = v44;
    v50 = v42;
    v36 = [v48 loadFileRepresentationForTypeIdentifier:v47 completionHandler:v46];

    objc_destroyWeak(&v51);
    v34 = 1;
    goto LABEL_25;
  }

  if (([v44 didWarnAboutNotSupportedForPasswordProtectedNotes] & 1) == 0)
  {
    v32 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:1];
    v33 = [(ICEditingTextView *)self window];
    [v32 presentInWindow:v33 completionHandler:0];

    [v44 setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
  }

  v34 = 0;
LABEL_25:

  objc_destroyWeak(&location);
LABEL_27:

  return v34;
}

void __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v5 && (v8 = objc_opt_class(), v9 = *(a1 + 32), [*(a1 + 40) suggestedName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:", v5, v9, v10), v10, v11))
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) suggestedName];
    v14 = [WeakRetained attributedStringForURL:v11 uti:v12 name:v13 metadata:0 synapseData:0 session:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
    v15 = [v11 URLByDeletingLastPathComponent];
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = 0;
    [v16 removeItemAtURL:v15 error:&v19];
    v17 = v19;

    if (v17 && [v17 code] != 4)
    {
      v18 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1();
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)handleAttributedStringDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  objc_initWeak(&location, self);
  v16 = [v12 canLoadObjectOfClass:objc_opt_class()];
  if (v16)
  {
    [v14 setShouldFilterAttributedString:1];
    v17 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __132__ICEditingTextView_DragAndDrop__handleAttributedStringDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v19[3] = &unk_2781AC388;
    v22 = v15;
    v20 = v12;
    objc_copyWeak(&v23, &location);
    v21 = v14;
    *a6 = [v20 loadObjectOfClass:v17 completionHandler:v19];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);

  return v16;
}

void __132__ICEditingTextView_DragAndDrop__handleAttributedStringDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    v8 = *(a1[6] + 2);
LABEL_6:
    v8();
    goto LABEL_7;
  }

  v9 = a1[4];
  v10 = *MEMORY[0x277CE1E58];
  v11 = [*MEMORY[0x277CE1E58] identifier];
  LODWORD(v9) = [v9 hasItemConformingToTypeIdentifier:v11];

  if (!v9)
  {
    v8 = *(a1[6] + 2);
    goto LABEL_6;
  }

  v12 = a1[4];
  v13 = [v10 identifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __132__ICEditingTextView_DragAndDrop__handleAttributedStringDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
  v15[3] = &unk_2781AC130;
  objc_copyWeak(&v19, a1 + 7);
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v14 = [v12 loadDataRepresentationForTypeIdentifier:v13 completionHandler:v15];

  objc_destroyWeak(&v19);
LABEL_7:
}

void __132__ICEditingTextView_DragAndDrop__handleAttributedStringDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  v9 = 0;
  if (v5 && WeakRetained)
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = NSTemporaryDirectory();
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = [v11 stringByAppendingPathComponent:v13];
    v15 = [v10 fileURLWithPath:v14];

    if (v15 && [v5 writeToURL:v15 atomically:1])
    {
      v16 = [*MEMORY[0x277CE1E58] identifier];
      v17 = [*(a1 + 32) suggestedName];
      v9 = [v8 attributedStringForURL:v15 uti:v16 name:v17 metadata:0 synapseData:0 session:*(a1 + 40)];

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      [v18 removeItemAtURL:v15 error:&v21];
      v19 = v21;

      if (v19 && [v19 code] != 4)
      {
        v20 = os_log_create("com.apple.notes", "DragAndDrop");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)handleMapKitItemDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 canLoadObjectOfClass:objc_opt_class()] && (v16 = *MEMORY[0x277D36028], objc_msgSend(v12, "hasRepresentationConformingToTypeIdentifier:fileOptions:", *MEMORY[0x277D36028], 0)))
  {
    objc_initWeak(&location, self);
    v17 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(ICEditingTextView *)self editorController];
      v21 = [v20 note];
      v22 = [v21 shortLoggingDescription];
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v13;
      _os_log_debug_impl(&dword_2151A1000, v17, OS_LOG_TYPE_DEBUG, "MapKitItem drop in note: %@, position: %@", buf, 0x16u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __126__ICEditingTextView_DragAndDrop__handleMapKitItemDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v23[3] = &unk_2781AC3D8;
    v24 = v12;
    objc_copyWeak(&v27, &location);
    v25 = v14;
    v26 = v15;
    *a6 = [v24 loadDataRepresentationForTypeIdentifier:v16 completionHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __126__ICEditingTextView_DragAndDrop__handleMapKitItemDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __126__ICEditingTextView_DragAndDrop__handleMapKitItemDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
  v11[3] = &unk_2781AC3B0;
  objc_copyWeak(&v16, a1 + 7);
  v9 = v5;
  v12 = v9;
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v10 = [v7 loadObjectOfClass:v8 completionHandler:v11];

  objc_destroyWeak(&v16);
}

void __126__ICEditingTextView_DragAndDrop__handleMapKitItemDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v8 && (v9 = *(a1 + 32)) != 0 && WeakRetained)
  {
    v17 = *MEMORY[0x277D35B98];
    v10 = [v9 base64EncodedStringWithOptions:0];
    v18[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v12 = [*(a1 + 40) suggestedName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v8 _title];
    }

    v15 = v14;

    v16 = [WeakRetained attributedStringForURL:v8 uti:0 name:v15 metadata:v11 synapseData:0 session:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)handleURLDropForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 outProgress:(id *)a6 completionBlock:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 canLoadObjectOfClass:objc_opt_class()])
  {
    objc_initWeak(&location, self);
    v16 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(ICEditingTextView *)self editorController];
      v22 = [v26 note];
      v23 = [v22 shortLoggingDescription];
      *buf = 138412546;
      v40 = v23;
      v41 = 2112;
      v42 = v13;
      _os_log_debug_impl(&dword_2151A1000, v16, OS_LOG_TYPE_DEBUG, "Synapse drop in note: %@, position: %@", buf, 0x16u);
    }

    v17 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v33[3] = &unk_2781AC400;
    objc_copyWeak(&v37, &location);
    v36 = v15;
    v34 = v12;
    v35 = v14;
    *a6 = [v34 loadObjectOfClass:v17 completionHandler:v33];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    if (![v12 canLoadObjectOfClass:objc_opt_class()])
    {
      v20 = 0;
      goto LABEL_11;
    }

    [v14 setIsTypeURL:1];
    objc_initWeak(&location, self);
    v18 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v27 = [(ICEditingTextView *)self editorController];
      v24 = [v27 note];
      v25 = [v24 shortLoggingDescription];
      *buf = 138412546;
      v40 = v25;
      v41 = 2112;
      v42 = v13;
      _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "URL drop in note: %@, position: %@", buf, 0x16u);
    }

    v19 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_153;
    v28[3] = &unk_2781AC338;
    objc_copyWeak(&v32, &location);
    v29 = v12;
    v30 = v14;
    v31 = v15;
    *a6 = [v29 loadObjectOfClass:v19 completionHandler:v28];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v20 = 1;
LABEL_11:

  return v20;
}

void __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 itemURL];
  if (v9)
  {
    v16 = v5;
    v10 = [v8 dataRepresentationWithError:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = [v8 displayTitle];
      if (![v12 length])
      {
        v13 = [v9 _title];

        v12 = v13;
      }

      if (![v12 length])
      {
        v14 = [*(a1 + 32) suggestedName];

        v12 = v14;
      }

      v15 = [WeakRetained attributedStringForURL:v9 uti:0 name:v12 metadata:0 synapseData:v10 session:*(a1 + 40)];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v11 = v5;
  }
}

void __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_153(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v8)
  {
    v9 = [v8 _title];
    if (![v9 length])
    {
      v10 = [a1[4] suggestedName];

      v9 = v10;
    }

    if ([v9 length] || !objc_msgSend(a1[4], "canLoadObjectOfClass:", objc_opt_class()))
    {
      v14 = [WeakRetained attributedStringForURL:v8 uti:0 name:v9 metadata:0 synapseData:0 session:a1[5]];
      (*(a1[6] + 2))();
    }

    else
    {
      v11 = a1[4];
      v12 = objc_opt_class();
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2;
      v15[3] = &unk_2781AC428;
      v15[4] = WeakRetained;
      v16 = v8;
      v17 = a1[5];
      v18 = a1[6];
      v13 = [v11 loadObjectOfClass:v12 completionHandler:v15];
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v7 = [v3 attributedStringForURL:v4 uti:0 name:v6 metadata:0 synapseData:0 session:a1[6]];

  (*(a1[7] + 16))();
}

- (id)preferredFileTypesExtensionDictionary
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = [*MEMORY[0x277CE1E08] identifier];
  v6[0] = v2;
  v6[1] = @"com.apple.iwork.keynote.key";
  v7[0] = @"pdf";
  v7[1] = @"key";
  v6[2] = @"com.apple.iwork.pages.pages";
  v6[3] = @"com.apple.iwork.numbers.numbers";
  v7[2] = @"pages";
  v7[3] = @"numbers";
  v3 = [*MEMORY[0x277CE1EB8] identifier];
  v6[4] = v3;
  v7[4] = @"vcard";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (id)preferredFileTypeForItemProvider:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self preferredFileTypesExtensionDictionary];
  v6 = MEMORY[0x277CBEB98];
  v7 = [v5 allKeys];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x277CBEB58];
  v10 = [v4 registeredTypeIdentifiers];

  v11 = [v9 setWithArray:v10];

  [v11 intersectSet:v8];
  v12 = [v11 anyObject];
  if (v12)
  {
    v13 = [(ICEditingTextView *)self editorController];
    v14 = [v13 note];
    if ([v14 isPasswordProtected])
    {
      v15 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:v12];

      if (v15)
      {
        goto LABEL_7;
      }

      v13 = v12;
      v12 = 0;
    }

    else
    {
    }
  }

LABEL_7:

  return v12;
}

- (BOOL)shouldCheckURLFirstForItemProvider:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a3 registeredTypeIdentifiers];
  v5 = [v3 setWithArray:v4];

  v6 = MEMORY[0x277CBEB98];
  v7 = [*MEMORY[0x277CE1D60] identifier];
  v8 = [v6 setWithObjects:{v7, 0}];

  LOBYTE(v7) = [v5 intersectsSet:v8];
  return v7;
}

- (id)attributedStringForURL:(id)a3 uti:(id)a4 name:(id)a5 metadata:(id)a6 synapseData:(id)a7 session:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v19 supportsAttachments];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __95__ICEditingTextView_DragAndDrop__attributedStringForURL_uti_name_metadata_synapseData_session___block_invoke;
  v29[3] = &unk_2781AC450;
  v21 = v14;
  v30 = v21;
  v22 = v19;
  v31 = v22;
  v38 = v20;
  v23 = v15;
  v32 = v23;
  v24 = v17;
  v33 = v24;
  v25 = v18;
  v34 = v25;
  v26 = v16;
  v36 = self;
  v37 = &v39;
  v35 = v26;
  [v22 performBlockAndWait:v29];
  v27 = v40[5];

  _Block_object_dispose(&v39, 8);

  return v27;
}

void __95__ICEditingTextView_DragAndDrop__attributedStringForURL_uti_name_metadata_synapseData_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) ic_isSupportedAsAttachment] && objc_msgSend(v3, "canAddAttachment") && ((objc_msgSend(*(a1 + 40), "isForDragAndDrop") & 1) != 0 || !objc_msgSend(*(a1 + 32), "ic_isWebURL") || objc_msgSend(*(a1 + 32), "ic_isMapURL")) && *(a1 + 96) == 1)
  {
    v4 = [*(a1 + 32) isFileURL];
    v5 = *(a1 + 32);
    if (v4)
    {
      v42 = 0;
      [v5 getResourceValue:&v42 forKey:*MEMORY[0x277CBE838] error:0];
      v6 = v42;
      v7 = v6;
      if (v6)
      {
        v8 = [v6 unsignedIntegerValue];
      }

      else
      {
        v8 = 0;
      }

      [*(a1 + 40) incrementNumberOfAttachmentsAttemptedAdded];
      v22 = [v3 attachmentExceedsMaxSizeAllowed:v8];
      if (v22)
      {
        [*(a1 + 40) addErrorWithCode:207];
        v11 = 0;
      }

      else
      {
        v23 = *(a1 + 48);
        if (v23)
        {
          [v3 addAttachmentWithUTI:v23 withURL:*(a1 + 32)];
        }

        else
        {
          [v3 addAttachmentWithFileURL:*(a1 + 32)];
        }
        v11 = ;
      }

      v21 = v22 ^ 1;
    }

    else
    {
      v11 = [v3 addURLAttachmentWithURL:*(a1 + 32)];
      v21 = 0;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    if (*(a1 + 56))
    {
      [v11 setMetadata:?];
    }

    if (*(a1 + 64))
    {
      [v11 setSynapseData:?];
    }

    if (*(a1 + 48) && ([MEMORY[0x277CE1CB8] typeWithIdentifier:?], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "conformsToType:", *MEMORY[0x277CE1E08]), v24, v25))
    {
      v26 = [objc_alloc(MEMORY[0x277CD93D8]) initWithURL:*(a1 + 32)];
      v27 = [v26 documentAttributes];
      v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277CD9420]];

      if ([v28 length])
      {
        [v11 setTitle:v28];
LABEL_51:

LABEL_52:
        v35 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v11];
        v36 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v35];
        v37 = *(*(a1 + 88) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v36;

        v39 = [v3 managedObjectContext];
        [v39 ic_save];

        if (v21)
        {
          v40 = [*(a1 + 80) editorController];
          v41 = [v40 eventReporter];
          [v41 submitAttachmentAddEventForAttachment:v11];
        }

        goto LABEL_21;
      }

      v32 = [*(a1 + 72) stringByDeletingPathExtension];
      [v11 setTitle:v32];
    }

    else
    {
      if (![*(a1 + 32) ic_isMapURL] || (objc_msgSend(*(a1 + 32), "absoluteString"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", *(a1 + 72)), v29, !v30))
      {
        if ([*(a1 + 72) length])
        {
          [v11 setTitle:*(a1 + 72)];
        }

        goto LABEL_52;
      }

      v31 = [MEMORY[0x277CCACE0] componentsWithURL:*(a1 + 32) resolvingAgainstBaseURL:0];
      v26 = [v31 queryItems];

      v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name=%@", @"q"];
      v32 = [v26 filteredArrayUsingPredicate:v28];
      v33 = [v32 firstObject];
      v34 = [v33 value];

      [v11 setTitle:v34];
    }

    goto LABEL_51;
  }

  if (([*(a1 + 32) isFileURL] & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277CCAB48]);
    v10 = v9;
    if (*(a1 + 72))
    {
      v11 = [v9 initWithString:?];
    }

    else
    {
      v12 = [*(a1 + 32) absoluteString];
      v11 = [v10 initWithString:v12];
    }

    v13 = *MEMORY[0x277D740E8];
    v14 = [*(a1 + 32) absoluteString];
    [v11 addAttribute:v13 value:v14 range:{0, objc_msgSend(v11, "length")}];

    goto LABEL_20;
  }

  if ([*(a1 + 32) isFileURL] && (objc_msgSend(*(a1 + 32), "ic_isSupportedAsAttachment") & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x277CCAB48]);
    v19 = v18;
    if (*(a1 + 72))
    {
      v11 = [v18 initWithString:?];
    }

    else
    {
      v20 = [*(a1 + 32) absoluteString];
      v11 = [v19 initWithString:v20];
    }

LABEL_20:
    v15 = [v11 copy];
    v16 = *(*(a1 + 88) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

LABEL_21:
    goto LABEL_22;
  }

  if (([v3 canAddAttachment] & 1) == 0)
  {
    [*(a1 + 40) incrementNumberOfAttachmentsAttemptedAdded];
    [*(a1 + 40) addErrorWithCode:202];
  }

LABEL_22:
}

- (BOOL)handleGenericFileForItemProvider:(id)a3 atTextPosition:(id)a4 pasteSession:(id)a5 preferredTypeIdentifier:(id)a6 outProgress:(id *)a7 completionBlock:(id)a8
{
  v54 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v36 = a4;
  v14 = a5;
  v15 = a6;
  v37 = a8;
  v16 = v15;
  v17 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D35D08], 0}];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [v13 registeredTypeIdentifiers];
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v27)
    {
      v28 = *v45;
LABEL_12:
      v29 = 0;
      while (1)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v44 + 1) + 8 * v29);
        if (([v25 containsObject:v30] & 1) == 0 && -[ICEditingTextView isSupportedAsGenericFile:](self, "isSupportedAsGenericFile:", v30))
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [v26 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v27)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }

      v17 = v30;

      if (v17)
      {
        goto LABEL_2;
      }
    }

    else
    {
LABEL_19:

      v17 = 0;
    }

    goto LABEL_21;
  }

LABEL_2:
  v18 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v32 = [(ICEditingTextView *)self editorController];
    v33 = [v32 note];
    v34 = [v33 shortLoggingDescription];
    *location = 138412802;
    *&location[4] = v34;
    v49 = 2112;
    v50 = v36;
    v51 = 2112;
    v52 = v17;
    _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Generic file drop in note: %@, position: %@, UTI: %@", location, 0x20u);
  }

  v19 = [(ICEditingTextView *)self editorController];
  v20 = [v19 note];
  if ([v20 isPasswordProtected])
  {
    v21 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:v17];

    if ((v21 & 1) == 0)
    {
      if (([v14 didWarnAboutNotSupportedForPasswordProtectedNotes] & 1) == 0)
      {
        v22 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:1];
        v23 = [(ICEditingTextView *)self window];
        [v22 presentInWindow:v23 completionHandler:0];

        [v14 setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
      }

LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __147__ICEditingTextView_DragAndDrop__handleGenericFileForItemProvider_atTextPosition_pasteSession_preferredTypeIdentifier_outProgress_completionBlock___block_invoke;
  v38[3] = &unk_2781AC360;
  objc_copyWeak(&v43, location);
  v17 = v17;
  v39 = v17;
  v40 = v13;
  v41 = v14;
  v42 = v37;
  *a7 = [v40 loadFileRepresentationForTypeIdentifier:v17 completionHandler:v38];

  objc_destroyWeak(&v43);
  objc_destroyWeak(location);
  v24 = 1;
LABEL_22:

  return v24;
}

void __147__ICEditingTextView_DragAndDrop__handleGenericFileForItemProvider_atTextPosition_pasteSession_preferredTypeIdentifier_outProgress_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v5 && (v8 = objc_opt_class(), v9 = *(a1 + 32), [*(a1 + 40) suggestedName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:", v5, v9, v10), v10, v11))
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) suggestedName];
    v14 = [WeakRetained attributedStringForURL:v11 uti:v12 name:v13 metadata:0 synapseData:0 session:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
    v15 = [v11 URLByDeletingLastPathComponent];
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = 0;
    [v16 removeItemAtURL:v15 error:&v19];
    v17 = v19;

    if (v17 && [v17 code] != 4)
    {
      v18 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1();
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)isSupportedAsGenericFile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICEditingTextView *)self typeIdentifiersSupportedAsGenericFiles];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
        v11 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
        v12 = [v10 conformsToType:v11];

        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)shouldAcceptDropSession:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 note];
  if (!v6)
  {

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [(ICEditingTextView *)self editorController];
  v9 = [v8 note];
  v10 = [v9 isEditable];

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D35900];
  v29[0] = @"com.apple.notes.noteitemprovider";
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v13 = [v4 hasItemsConformingToTypeIdentifiers:v12];

  if (v13)
  {
    goto LABEL_14;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v4 items];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) itemProvider];
        v20 = [(ICEditingTextView *)self itemProviderConsumerTypesForItemProvider:v19];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 1;
          goto LABEL_17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_17:

LABEL_15:
  return v22;
}

- (id)itemProviderConsumerTypesForItemProvider:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 note];
  v49 = [v6 isPasswordProtected];

  v51 = self;
  v7 = [(ICEditingTextView *)self supportsAttachments];
  v8 = MEMORY[0x277CBEB18];
  v41 = v4;
  v9 = [v4 registeredTypeIdentifiers];
  v53 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  if (itemProviderConsumerTypesForItemProvider__onceToken != -1)
  {
    [ICEditingTextView(DragAndDrop) itemProviderConsumerTypesForItemProvider:];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [v4 registeredTypeIdentifiers];
  v10 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    v13 = !v7 | v49;
    v43 = *MEMORY[0x277CE1DB0];
    v44 = *MEMORY[0x277CE1E08];
    v47 = *MEMORY[0x277CE1E90];
    v42 = *MEMORY[0x277CE1E00];
    v40 = *MEMORY[0x277CE1D00];
    v45 = *MEMORY[0x277CE1E88];
    v46 = *MEMORY[0x277CE1D30];
    v48 = *v55;
    do
    {
      v14 = 0;
      v50 = v11;
      do
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v54 + 1) + 8 * v14);
        if (v7)
        {
          v16 = &itemProviderConsumerTypesForItemProvider__utiToConsumer;
        }

        else
        {
          v16 = &itemProviderConsumerTypesForItemProvider__utiToConsumerNoAttachments;
        }

        v17 = [*v16 objectForKeyedSubscript:{*(*(&v54 + 1) + 8 * v14), v40}];
        if (v17)
        {
          [v53 addObject:v17];
          goto LABEL_47;
        }

        if ((v13 & 1) == 0)
        {
          v18 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
          if ([v18 conformsToType:v44])
          {
            v19 = ICInternalSettingsDefaultToPaperKitPDFsAndScans();

            if (v19)
            {
              v20 = v53;
              v21 = &unk_28277E208;
LABEL_22:
              [v20 addObject:v21];
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        if (!v7)
        {
          goto LABEL_24;
        }

        v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        if ([v22 conformsToType:v43])
        {
          v23 = [(ICEditingTextView *)v51 hasSupportedImageInItemProvider:v41];

          if (!v23)
          {
            goto LABEL_24;
          }

          v20 = v53;
          v21 = &unk_28277E220;
          goto LABEL_22;
        }

LABEL_24:
        v24 = v13;
        v25 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        v26 = [v25 conformsToType:v47];

        if (v26)
        {
          [v53 addObject:&unk_28277E238];
        }

        if (!v7)
        {
          if (v49)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if (v49)
        {
          goto LABEL_35;
        }

        v27 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        if ([v27 conformsToType:v42])
        {
        }

        else
        {
          v28 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
          v29 = [v28 conformsToType:v40];

          if (!v29)
          {
            goto LABEL_34;
          }
        }

        [v53 addObject:&unk_28277E250];
LABEL_34:
        v30 = [(ICEditingTextView *)v51 preferredFileTypesExtensionDictionary];
        v31 = [v30 objectForKeyedSubscript:v15];

        if (v31)
        {
          goto LABEL_43;
        }

LABEL_35:
        v32 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        if ([v32 conformsToType:v45])
        {

LABEL_38:
          v35 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
          if ([v35 conformsToType:v46])
          {
            v36 = &unk_28277E268;
          }

          else
          {
            v36 = &unk_28277E280;
          }

          [v53 addObject:v36];

          goto LABEL_42;
        }

        v33 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        v34 = [v33 conformsToType:v46];

        if (v34)
        {
          goto LABEL_38;
        }

LABEL_42:
        v31 = 0;
LABEL_43:
        v13 = v24;
        if ((v24 & 1) == 0 && [(ICEditingTextView *)v51 isSupportedAsGenericFile:v15])
        {
          [v53 addObject:&unk_28277E298];
        }

        v12 = v48;
        v11 = v50;
LABEL_47:

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v11);
  }

  v37 = [(ICEditingTextView *)v51 itemProviderPasteSession];
  if ([v37 isForDragAndDrop])
  {
  }

  else
  {
    v38 = [v53 count];

    if (v38 >= 2)
    {
      [v53 sortUsingSelector:sel_compare_];
    }
  }

  return v53;
}

void __75__ICEditingTextView_DragAndDrop__itemProviderConsumerTypesForItemProvider___block_invoke()
{
  v11[7] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CD96B0];
  v10[0] = *MEMORY[0x277D35D08];
  v0 = v10[0];
  v10[1] = v1;
  v11[0] = &unk_28277E178;
  v11[1] = &unk_28277E190;
  v2 = *MEMORY[0x277CD96A8];
  v10[2] = *MEMORY[0x277CD96B8];
  v10[3] = v2;
  v3 = *MEMORY[0x277D36028];
  v10[4] = *MEMORY[0x277D35BD0];
  v10[5] = v3;
  v11[2] = &unk_28277E1A8;
  v11[3] = &unk_28277E1C0;
  v11[4] = &unk_28277E1C0;
  v11[5] = &unk_28277E1D8;
  v10[6] = *MEMORY[0x277D6B808];
  v11[6] = &unk_28277E1F0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v5 = itemProviderConsumerTypesForItemProvider__utiToConsumer;
  itemProviderConsumerTypesForItemProvider__utiToConsumer = v4;

  v8 = v0;
  v9 = &unk_28277E178;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = itemProviderConsumerTypesForItemProvider__utiToConsumerNoAttachments;
  itemProviderConsumerTypesForItemProvider__utiToConsumerNoAttachments = v6;
}

- (id)standardizedAttributedString:(id)a3 attachmentIdentifiers:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = objc_opt_new();
  }

  else
  {
    v7 = 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v8 = [(ICEditingTextView *)self itemProviderPasteSession];
  v9 = [v8 workerContext];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __85__ICEditingTextView_DragAndDrop__standardizedAttributedString_attachmentIdentifiers___block_invoke;
  v17 = &unk_2781AC4C0;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v21 = &v22;
  v11 = v7;
  v20 = v11;
  [v9 performBlockAndWait:&v14];

  if (a4)
  {
    *a4 = [v11 copy];
  }

  v12 = [v23[5] copy];

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __85__ICEditingTextView_DragAndDrop__standardizedAttributedString_attachmentIdentifiers___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D36918];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) itemProviderPasteSession];
  v6 = [v5 workerContext];
  v7 = [v3 standardizedAttributedStringFromAttributedString:v4 withStyler:v2 fixAttachments:0 translateICTTFont:1 context:v6];

  v8 = [v7 mutableCopy];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) itemProviderPasteSession];
  v13 = [v12 workerContext];
  v14 = [*(a1 + 32) length];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__ICEditingTextView_DragAndDrop__standardizedAttributedString_attachmentIdentifiers___block_invoke_2;
  v17[3] = &unk_2781AC498;
  v16 = *(a1 + 48);
  v15 = v16;
  v18 = v16;
  [v11 ic_enumerateAttachmentsInContext:v13 range:0 options:v14 usingBlock:{2, v17}];
}

void __85__ICEditingTextView_DragAndDrop__standardizedAttributedString_attachmentIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [MEMORY[0x277D36950] textAttachmentWithAttachment:a2];
  [v10 fixAttachmentForAttributedString:*(*(*(a1 + 40) + 8) + 40) range:a3 forPlainText:a4 forStandardizedText:{0, 1}];
  if (*(a1 + 32))
  {
    v7 = [v10 attachmentIdentifier];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v10 attachmentIdentifier];
      [v8 addObject:v9];
    }
  }
}

- (BOOL)attributedStringContainsICTTAttachment:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [v3 length];
  v5 = *MEMORY[0x277D74060];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ICEditingTextView_DragAndDrop__attributedStringContainsICTTAttachment___block_invoke;
  v8[3] = &unk_2781ABC80;
  v8[4] = &v9;
  [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __73__ICEditingTextView_DragAndDrop__attributedStringContainsICTTAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (BOOL)textDroppableView:(id)a3 dropSession:(id)a4 willMoveCaretToRange:(id)a5
{
  if ([(ICEditingTextView *)self isDraggingOverChecklistItem:a3])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(ICEditingTextView *)self inhibitNextDropCursorUpdateAnimation];
  }

  [(ICEditingTextView *)self setInhibitNextDropCursorUpdateAnimation:0];
  return v6;
}

- (id)textDraggableView:(id)a3 textRangeForDragFromPosition:(id)a4 defaultRange:(id)a5 session:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v59 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v11;
  [v12 locationInView:v10];
  v15 = v14;
  v17 = v16;
  v18 = [(ICBaseTextView *)self containerViewForAttachments];
  v19 = [v18 hitTest:0 forEvent:{v15, v17}];

  objc_opt_class();
  v58 = v19;
  v20 = ICDynamicCast();
  v21 = [(ICBaseTextView *)self containerViewForAttachments];
  v22 = [v21 subviews];
  v23 = [v22 ic_objectsPassingTest:&__block_literal_global_230];

  v24 = v20;
  v25 = v24;
  v60 = v23;
  if (v24)
  {
    goto LABEL_2;
  }

  v57 = v13;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v35 = v23;
  v39 = [v35 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (!v39)
  {
    v36 = 0;
    v25 = 0;
    v33 = v13;
    goto LABEL_3;
  }

  v40 = v39;
  v56 = v12;
  v25 = 0;
  v41 = *v65;
  v63 = INFINITY;
  v61 = v17;
  v62 = v15;
  while (2)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v65 != v41)
      {
        objc_enumerationMutation(v35);
      }

      v43 = *(*(&v64 + 1) + 8 * i);
      [v10 convertPoint:0 toView:{v15, v17}];
      [v43 convertPoint:0 fromView:?];
      v45 = v44;
      v47 = v46;
      [v43 bounds];
      [(ICEditingTextView *)self touchIsPointer];
      [v43 bounds];
      TSDCenterOfRect();
      TSDDistance();
      v49 = v48;
      [v43 bounds];
      v71.x = v45;
      v71.y = v47;
      if (CGRectContainsPoint(v73, v71))
      {
        v55 = v43;

        v25 = v55;
        goto LABEL_25;
      }

      TSDMultiplySizeScalar();
      TSDMultiplySizeScalar();
      TSDAddSizes();
      TSDCenterOfRect();
      TSDRectWithCenterAndSize();
      v72.x = v45;
      v72.y = v47;
      if (CGRectContainsPoint(v74, v72) && v49 < v63)
      {
        v51 = v43;

        v63 = v49;
        v25 = v51;
      }

      v52 = [v25 trackedParagraph];
      [v52 characterRange];
      v54 = v53;

      v17 = v61;
      v15 = v62;
      if (v54 <= 1)
      {

        v25 = 0;
      }
    }

    v40 = [v35 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v12 = v56;
  v13 = v57;
  v37 = v60;
  if (v25)
  {
LABEL_2:
    v26 = [v25 trackedParagraph];
    v27 = [v26 characterRange];
    v29 = v28;

    [(ICEditingTextView *)self setSelectedRange:v27, v29];
    v30 = [(ICEditingTextView *)self selectedRange];
    v32 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:v30, v31];
    [(ICEditingTextView *)self setSelectedTextRange:v32];

    v33 = [(ICEditingTextView *)self selectedTextRange];

    [v25 imageFrame];
    [(ICEditingTextView *)self setChecklistDragVerticalOffset:v34 * 0.75];
    v35 = [v25 trackedParagraph];
    [(ICEditingTextView *)self setDraggedChecklistTrackedParagraph:v35];
    v36 = 1;
LABEL_3:

    v37 = v60;
    goto LABEL_4;
  }

  v36 = 0;
  v33 = v57;
LABEL_4:
  [(ICEditingTextView *)self setIsDraggingChecklistItem:v36];

  return v33;
}

BOOL __102__ICEditingTextView_DragAndDrop__textDraggableView_textRangeForDragFromPosition_defaultRange_session___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3 != 0;
}

- (id)textDroppableView:(id)a3 positionForDrop:(id)a4
{
  v5 = a4;
  v6 = [v5 dropPosition];
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    v7 = [v5 dropSession];
    [v7 locationInView:self];
    v9 = v8;
    v11 = v10;

    v12 = [v5 icaxValueForKeyPath:@"dropSession.sessionDestination.isAccessibilitySession"];
    v13 = [v12 BOOLValue];

    objc_opt_class();
    v14 = UIAccessibilityFocusedElement(*MEMORY[0x277D76498]);
    v15 = ICDynamicCast();

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      [v15 frame];
      TSDClampPointInRect();
      v9 = v17;
      v19 = v18;
    }

    else
    {
      [(ICEditingTextView *)self checklistDragVerticalOffset];
      v19 = v11 - v20;
    }

    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v22 = [(ICEditingTextView *)self icTextLayoutManager];
      v23 = [v22 characterIndexForPoint:{v9, v19}];

      v24 = [(ICEditingTextView *)self icTextLayoutManager];
      v25 = [v24 trackedTodoParagraphAtIndex:v23];
    }

    else
    {
      v26 = [(ICEditingTextView *)self icLayoutManager];
      v27 = [(ICEditingTextView *)self textContainer];
      v23 = [v26 characterIndexForPoint:v27 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v9, v19}];

      v24 = [(ICEditingTextView *)self icLayoutManager];
      v25 = [v24 trackedTodoParagraphAtIndexIfExists:v23];
    }

    v28 = v25;

    if (!v28)
    {
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:v23, 0];
        v31 = [v30 start];

        v6 = v31;
      }

      [(ICEditingTextView *)self setIsDraggingOverChecklistItem:0];
      [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:0];
      v32 = [(ICEditingTextView *)self tempHighlightLayerIfExists];
      [v32 removeFromSuperlayer];
      goto LABEL_22;
    }

    if (v16)
    {
      v29 = [v28 characterRange];
    }

    else
    {
      v33 = [ICChecklistDragUtilities shouldDropAboveForTrackedTodoParagraph:v28 forPoint:self textView:v9, v19];
      v34 = [v28 characterRange];
      v29 = v34;
      if (!v33)
      {
        v29 = v34 + v35;
        goto LABEL_21;
      }
    }

    v33 = 1;
LABEL_21:
    [(ICEditingTextView *)self setIsDraggingOverChecklistItem:1];
    [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:v28];
    [(ICEditingTextView *)self setShouldDropChecklistAbove:v33];
    [(ICEditingTextView *)self invalidateDropCaret];
    v32 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:v29, 0];
    v36 = [v32 start];

    [(ICEditingTextView *)self setLastChecklistDropIndex:v29];
    v6 = v36;
LABEL_22:
  }

  return v6;
}

- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  v6 = [(ICEditingTextView *)self textContainer];
  v7 = ICDynamicCast();
  v8 = [v7 insideSiriSnippet];

  if (v8)
  {
    v9 = MEMORY[0x277CBEBF8];
    goto LABEL_57;
  }

  v74 = [v5 dragRange];
  v10 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:?];
  v12 = v11;
  v13 = MEMORY[0x277D74060];
  if (v11 != 1)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  v14 = [(ICEditingTextView *)self textStorage];
  v15 = [v14 attribute:*v13 atIndex:v10 effectiveRange:0];
  v16 = ICDynamicCast();

  if (v16)
  {
    if (([v16 canDragWithoutSelecting] & 1) == 0)
    {
      v87.location = [(ICEditingTextView *)self selectedRange];
      v87.length = v17;
      v86.location = v10;
      v86.length = 1;
      if (!NSIntersectionRange(v86, v87).length)
      {
        goto LABEL_62;
      }
    }
  }

  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
LABEL_12:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
      {
        v20 = [(ICEditingTextView *)self textLayoutManager];
        v21 = [(ICEditingTextView *)self textLayoutManager];
        v22 = [v21 documentRange];
        v23 = [v22 location];
        v24 = [v20 locationFromLocation:v23 withOffset:v10];

        v25 = [(ICEditingTextView *)self textContainer];
        v18 = [v16 viewProviderForParentView:self location:v24 textContainer:v25];
      }

      else
      {
        v24 = [(ICEditingTextView *)self layoutManager];
        v18 = [v16 viewProviderForParentView:self characterIndex:v10 layoutManager:v24];
      }

      v26 = [v18 view];
      v27 = [v5 dragSession];
      v28 = [v18 view];
      [v27 locationInView:v28];
      v29 = [v26 hitTest:0 withEvent:?];

      if (v29)
      {
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          NSClassFromString(&cfstr_Icpaperdocumen.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v30 = [v29 superview];

            v29 = v30;
            if (v30)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        goto LABEL_61;
      }

LABEL_22:

      v13 = MEMORY[0x277D74060];
    }

LABEL_24:
    v31 = [(ICEditingTextView *)self editorController];
    v32 = [v31 note];
    v33 = [v32 managedObjectContext];
    [v33 ic_save];

    v34 = [(ICEditingTextView *)self editorController];
    v35 = [v34 note];

    v36 = [v35 textStorage];
    v37 = [(ICEditingTextView *)self textStorage];

    if (v36 != v37)
    {
      objc_opt_class();
      v38 = [(ICEditingTextView *)self textStorage];
      v39 = ICDynamicCast();

      v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, v39];
      v40 = [v39 itemProviderForRange:v10 andNote:{v12, v35}];

LABEL_39:
      v52 = [(ICEditingTextView *)self viewsGhostedForDrag];

      if (!v52)
      {
        v53 = [MEMORY[0x277CBEB18] array];
        [(ICEditingTextView *)self setViewsGhostedForDrag:v53];
      }

      v54 = [(ICEditingTextView *)self textStorage];
      v55 = *v13;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __65__ICEditingTextView_DragAndDrop__textDraggableView_itemsForDrag___block_invoke;
      v79[3] = &unk_2781AC4E8;
      v79[4] = self;
      v79[5] = v10;
      v79[6] = v12;
      [v54 enumerateAttribute:v55 inRange:v10 options:v12 usingBlock:{0, v79}];

      if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v57 = v56;
        v58 = v5;
        v59 = [(ICEditingTextView *)self icTextLayoutManager];
        v60 = [v59 todoButtonsForCharacterRange:{v10, v12}];
      }

      else
      {
        v58 = v5;
        v57 = [(ICEditingTextView *)self icLayoutManager];
        v60 = [v57 todoButtonsForCharacterRange:{v10, v12}];
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v61 = v60;
      v62 = [v61 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v76;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v76 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v66 = *(*(&v75 + 1) + 8 * i);
            v67 = [(ICEditingTextView *)self viewsGhostedForDrag];
            [v67 addObject:v66];

            [v66 setAlpha:0.2];
          }

          v63 = [v61 countByEnumeratingWithState:&v75 objects:v83 count:16];
        }

        while (v63);
      }

      if (v40)
      {
        v68 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v40];
        v69 = v73;
        [v68 setLocalObject:v73];
        v5 = v58;
        v70 = [v58 dragSession];
        [v70 setLocalContext:self];

        v82 = v68;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      }

      else
      {
        v5 = v58;
        v9 = [v58 suggestedItems];
        v69 = v73;
      }

      goto LABEL_56;
    }

    v41 = objc_opt_class();
    v42 = [(ICEditingTextView *)self editorController];
    v43 = [v42 note];
    v44 = [v41 attachmentInNote:v43 range:{v10, v12}];

    if (v44)
    {
      v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 uiRange:v12, v74];
      if (!v73)
      {
        v45 = [v35 textStorage];
        v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, v45];
      }

      v46 = [v44 attachmentModel];
      v40 = [v46 itemProvider];

      if (v40)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v73 = 0;
    }

    v47 = v13;
    v80 = 0;
    v81 = 0;
    v48 = [v35 textStorage];
    v49 = [v48 attribute:*MEMORY[0x277D740E8] atIndex:v10 effectiveRange:&v80];

    if (v49 && v10 == v80 && v12 == v81)
    {
      v40 = 0;
    }

    else
    {
      v50 = [v35 textStorage];
      v72 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, v50];

      v51 = [v35 textStorage];
      v40 = [v51 itemProviderForRange:v10 andNote:{v12, v35}];

      v73 = v72;
    }

    v13 = v47;
LABEL_38:

    goto LABEL_39;
  }

  v18 = UIAccessibilityFocusedElement(*MEMORY[0x277D76498]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_12;
  }

LABEL_61:

LABEL_62:
  v9 = MEMORY[0x277CBEBF8];
LABEL_56:

LABEL_57:

  return v9;
}

void __65__ICEditingTextView_DragAndDrop__textDraggableView_itemsForDrag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v19 = ICDynamicCast();

  if (v19)
  {
    if (ICInternalSettingsIsTextKit2Enabled() && ([*(a1 + 32) textLayoutManager], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = [*(a1 + 32) textLayoutManager];
      v6 = [*(a1 + 32) textLayoutManager];
      v7 = [v6 documentRange];
      v8 = [v7 location];
      v9 = [v5 locationFromLocation:v8 withOffset:*(a1 + 40)];

      v10 = [*(a1 + 32) icTextLayoutManager];
      objc_opt_class();
      v11 = ICDynamicCast();
      v12 = [v10 newViewProviderForTextAttachment:v11 parentView:*(a1 + 32) location:v9];
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v9 = [v13 layoutManager];
      v12 = [v19 viewProviderForParentView:v13 characterIndex:v14 layoutManager:v9];
    }

    v15 = [v12 view];
    if (v15)
    {
      v16 = [*(a1 + 32) viewsGhostedForDrag];
      [v16 addObject:v15];

      v17 = [*(a1 + 32) viewsGhostedForDrag];
      v18 = [v17 count];

      if (v18 >= 2)
      {
        [v15 setAlpha:0.2];
      }
    }
  }
}

- (void)resetViewsGhostedForDrag
{
  v13 = *MEMORY[0x277D85DE8];
  [(ICEditingTextView *)self setIsDraggingChecklistItem:0];
  [(ICEditingTextView *)self setDraggedChecklistTrackedParagraph:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(ICEditingTextView *)self viewsGhostedForDrag];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:1.0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(ICEditingTextView *)self setViewsGhostedForDrag:0];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

- (void)textDraggableView:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__ICEditingTextView_DragAndDrop__textDraggableView_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_2781AC510;
  v5[4] = self;
  [a4 addCompletion:v5];
}

uint64_t __88__ICEditingTextView_DragAndDrop__textDraggableView_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) resetViewsGhostedForDrag];
  }

  return result;
}

- (id)textDraggableView:(id)a3 dragPreviewForLiftingItem:(id)a4 session:(id)a5
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 localObject];
  v7 = ICDynamicCast();

  [v5 setLocalObject:0];

  return v7;
}

- (void)textDraggableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDraggableView:? dragSessionWillBegin:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(ICEditingTextView *)self viewsGhostedForDrag];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v10++) setAlpha:0.2];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(ICEditingTextView *)self editorController];
  v12 = [v11 note];
  v13 = [v12 documentMergeController];
  [v13 beginBlockingMergeForReason:2 textView:self];

  [(ICEditingTextView *)self setLastChecklistDropIndex:-1];
}

- (void)textDraggableView:(id)a3 dragSessionDidEnd:(id)a4 withOperation:(unint64_t)a5
{
  v6 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDraggableView:? dragSessionDidEnd:? withOperation:?];
  }

  v7 = [(ICEditingTextView *)self editorController];
  v8 = [v7 note];
  v9 = [v8 documentMergeController];
  [v9 endBlockingMergeForReason:2 textView:self];

  v10 = [(ICEditingTextView *)self editorController];
  [v10 saveNote];

  [(ICEditingTextView *)self setIsDraggingOverChecklistItem:0];
  [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:0];
  [(ICEditingTextView *)self setLastChecklistDropIndex:-1];
  [(ICEditingTextView *)self resetViewsGhostedForDrag];
}

- (id)textDroppableView:(id)a3 previewForDroppingAllItemsWithDefault:(id)a4
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v5 = [(ICEditingTextView *)self icLayoutManager];
    [v5 cleanupStaleTodoButtons];
  }

  v6 = [(ICEditingTextView *)self TTTextStorage];
  objc_opt_class();
  v7 = [v6 styler];
  v8 = ICDynamicCast();

  if (![(ICEditingTextView *)self isDraggingChecklistItem]|| ![(ICEditingTextView *)self isDraggingOverChecklistItem])
  {
    goto LABEL_18;
  }

  [(ICEditingTextView *)self lastChecklistDropIndex];
  [v6 fixupAfterEditing];
  v9 = [(ICEditingTextView *)self lastChecklistDropIndex];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v10 = [(ICEditingTextView *)self icTextLayoutManager];
    [v10 trackedTodoParagraphAtIndex:v9];
  }

  else
  {
    v10 = [(ICEditingTextView *)self icLayoutManager];
    [v10 trackedTodoParagraphAtIndexIfExists:v9];
  }
  v11 = ;

  if (v11)
  {
    v12 = [(ICEditingTextView *)self draggedChecklistTrackedParagraph];
    v13 = [v12 characterRange];

    if (v13 < v9)
    {
      v14 = [v8 expandedChecklistTrackedParagraphsInTextView:self forIndex:v9];
      v15 = [v14 indexOfObject:v11];
      if (v15)
      {
        v16 = [v14 objectAtIndexedSubscript:v15 - 1];

        v11 = v16;
      }
    }

    v17 = [v11 characterRange];
    v19 = v18;
    if (v18 >= 2)
    {
      v20 = [v6 string];
      v21 = [v20 substringWithRange:{v17, v19}];
      v22 = [v21 ic_isLastCharacterANewline];

      v19 -= v22 & 1;
    }

    v23 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v17 inTextStorage:v19, v6];
    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = [(ICEditingTextView *)self icTextLayoutManager];
      v26 = [v25 documentRange];
      v27 = [v26 location];
      v28 = [v25 locationFromLocation:v27 withOffset:v17];

      v29 = [v25 locationFromLocation:v28 withOffset:v19];
      v30 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v28 endLocation:v29];
      v31 = [(ICEditingTextView *)self icTextLayoutManager];
      [v31 invalidateLayoutForRange:v30];
    }

    else
    {
      v25 = [(ICEditingTextView *)self icLayoutManager];
      [v25 invalidateLayoutForCharacterRange:v17 actualCharacterRange:{v19, 0}];
    }
  }

  else
  {
LABEL_18:
    v23 = 0;
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v32 = [(ICEditingTextView *)self icLayoutManager];
    [v32 setShouldManuallyRenderSeparateSubviews:0];

    v33 = [(ICEditingTextView *)self icLayoutManager];
    [v33 setIsRenderingPreviewForDragAndDrop:0];
  }

  return v23;
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v5 = a4;
  v6 = [v5 dropSession];
  v7 = [(ICEditingTextView *)self shouldAcceptDropSession:v6];

  if (v7)
  {
    if ([v5 isSameView])
    {
      v8 = 3;
    }

    else
    {
      v9 = [v5 dropSession];
      if ([(ICEditingTextView *)self _isDropSessionLocalDragContextViewFromSubview:v9])
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = [objc_alloc(MEMORY[0x277D75BA8]) initWithDropOperation:v8];

  return v10;
}

- (BOOL)_isDropSessionLocalDragContextViewFromSubview:(id)a3
{
  v4 = a3;
  v5 = [v4 localDragSession];
  v6 = [v5 localContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = [v4 localDragSession];
    v8 = [v7 localContext];
    v9 = ICDynamicCast();
    v10 = [(ICEditingTextView *)self containsView:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4
{
  v5 = a4;
  v6 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? willPerformDrop:?];
  }

  v7 = [(ICEditingTextView *)self itemProviderPasteSessionCreateIfNecessary];
  [v7 setIsForDragAndDrop:1];
  v8 = [(ICEditingTextView *)self TTTextStorage];
  [v8 setIsDropping:1];

  [(ICEditingTextView *)self setPasteDelegate:self];
  LODWORD(v8) = [v5 isSameView];

  if (v8)
  {
    v9 = [(ICEditingTextView *)self editorController];
    [v9 setHasMadeEdits];

    v10 = [(ICEditingTextView *)self editorController];
    v11 = [v10 note];
    [v11 updateModificationDateAndChangeCountAndSaveAfterDelay];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    v12 = [(ICEditingTextView *)self layoutManager];
    v13 = ICCheckedDynamicCast();

    [v13 setShouldManuallyRenderSeparateSubviews:1];
    [v13 setIsRenderingPreviewForDragAndDrop:1];
  }
}

- (void)textDroppableView:(id)a3 dropSessionDidEnter:(id)a4
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidEnter:?];
  }

  v6 = [(ICEditingTextView *)self editorController];
  v7 = [v6 note];
  v8 = [v7 documentMergeController];
  [v8 beginBlockingMergeForReason:2 textView:self];
}

- (void)textDroppableView:(id)a3 dropSessionDidExit:(id)a4
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidExit:?];
  }

  v6 = [(ICEditingTextView *)self editorController];
  v7 = [v6 note];
  v8 = [v7 documentMergeController];
  [v8 endBlockingMergeForReason:2 textView:self];

  v9 = [(ICEditingTextView *)self editorController];
  [v9 saveNote];
}

- (void)textDroppableView:(id)a3 dropSessionDidEnd:(id)a4
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidEnd:?];
  }

  v6 = [(ICEditingTextView *)self editorController];
  v7 = [v6 note];
  v8 = [v7 documentMergeController];
  [v8 endBlockingMergeForReason:2 textView:self];

  v9 = [(ICEditingTextView *)self editorController];
  [v9 saveNote];

  v10 = [(ICEditingTextView *)self TTTextStorage];
  [v10 setIsDropping:0];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    v11 = [(ICEditingTextView *)self layoutManager];
    v12 = ICCheckedDynamicCast();

    [v12 setShouldManuallyRenderSeparateSubviews:0];
    [v12 setIsRenderingPreviewForDragAndDrop:0];
  }

  [(ICEditingTextView *)self icaxClearCaches];
}

- (id)itemProviderPasteSessionCreateIfNecessary
{
  v3 = [(ICEditingTextView *)self itemProviderPasteSession];
  if (!v3)
  {
    v4 = [(ICEditingTextView *)self editorController];
    v5 = [v4 note];

    v6 = [v5 managedObjectContext];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __75__ICEditingTextView_DragAndDrop__itemProviderPasteSessionCreateIfNecessary__block_invoke;
    v18 = &unk_2781ABEB8;
    v19 = v5;
    v20 = v6;
    v7 = v6;
    v8 = v5;
    [v7 performBlockAndWait:&v15];
    v9 = [ICEditingTextViewItemProviderPasteSession alloc];
    v10 = [v8 objectID];
    v11 = [(ICEditingTextViewItemProviderPasteSession *)v9 initWithNoteObjectID:v10];
    [(ICEditingTextView *)self setItemProviderPasteSession:v11];

    v12 = [(ICEditingTextView *)self supportsAttachments];
    v13 = [(ICEditingTextView *)self itemProviderPasteSession];
    [v13 setSupportsAttachments:v12];

    v3 = [(ICEditingTextView *)self itemProviderPasteSession];
  }

  return v3;
}

uint64_t __75__ICEditingTextView_DragAndDrop__itemProviderPasteSessionCreateIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) save];
  v2 = *(a1 + 40);

  return [v2 ic_save];
}

- (id)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:? transformPasteItem:?];
  }

  v8 = [(ICEditingTextView *)self itemProviderPasteSessionCreateIfNecessary];
  v9 = [v6 itemProvider];
  v10 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:v9 transformPasteItem:?];
  }

  v11 = [(ICEditingTextView *)self selectedTextRange];
  v31 = [v11 end];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke;
  aBlock[3] = &unk_2781AC588;
  v30 = v8;
  v47 = v30;
  v48 = self;
  v27 = v6;
  v49 = v27;
  v12 = _Block_copy(aBlock);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v9;
  obj = [(ICEditingTextView *)self itemProviderConsumerTypesForItemProvider:v9];
  v14 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v43;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = [*(*(&v42 + 1) + 8 * v18) unsignedIntegerValue];
      if (v19 > 5)
      {
        if (v19 <= 8)
        {
          if (v19 == 6)
          {
            v38 = 0;
            v23 = [(ICEditingTextView *)self handleMovieOrAudioDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v38 completionBlock:v12];
            v24 = v38;
            goto LABEL_34;
          }

          if (v19 != 7)
          {
            v39 = 0;
            v23 = [(ICEditingTextView *)self handleImageDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v39 completionBlock:v12];
            v24 = v39;
            goto LABEL_34;
          }
        }

        else
        {
          if ((v19 - 9) < 2)
          {
            v33 = 0;
            v23 = [(ICEditingTextView *)self handleURLDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v33 completionBlock:v12];
            v24 = v33;
            goto LABEL_34;
          }

          if (v19 != 11)
          {
            if (v19 == 12)
            {
              v20 = [(ICEditingTextView *)self preferredFileTypeForItemProvider:v13];
              v34 = 0;
              v21 = [(ICEditingTextView *)self handleGenericFileForItemProvider:v13 atTextPosition:v31 pasteSession:v30 preferredTypeIdentifier:v20 outProgress:&v34 completionBlock:v12];
              v22 = v34;

              v16 = v22;
              if (v21)
              {
LABEL_38:

                goto LABEL_41;
              }
            }

            goto LABEL_35;
          }
        }

        v40 = 0;
        v23 = [(ICEditingTextView *)self handleAttributedStringDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v40 completionBlock:v12];
        v24 = v40;
        goto LABEL_34;
      }

      if (v19 > 2)
      {
        if ((v19 - 3) < 2)
        {
          v35 = 0;
          v23 = [(ICEditingTextView *)self handleInlineDrawingDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v35 completionBlock:v12];
          v24 = v35;
          goto LABEL_34;
        }

        if (v19 == 5)
        {
          v32 = 0;
          v23 = [(ICEditingTextView *)self handleMapKitItemDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v32 completionBlock:v12];
          v24 = v32;
          goto LABEL_34;
        }
      }

      else
      {
        switch(v19)
        {
          case 0:
            v41 = 0;
            v23 = [(ICEditingTextView *)self handleTopotextDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v41 completionBlock:v12];
            v24 = v41;
            goto LABEL_34;
          case 1:
            v36 = 0;
            v23 = [(ICEditingTextView *)self handlePaperDocumentDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v36 completionBlock:v12];
            v24 = v36;
LABEL_34:
            v22 = v24;

            v16 = v22;
            if (v23)
            {
              goto LABEL_38;
            }

            break;
          case 2:
            v37 = 0;
            v23 = [(ICEditingTextView *)self handleInlinePaperDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v37 completionBlock:v12];
            v24 = v37;
            goto LABEL_34;
        }
      }

LABEL_35:
      if (v15 == ++v18)
      {
        v15 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }
  }

  v16 = 0;
LABEL_40:

  (*(v12 + 2))(v12, 0, 0);
  v22 = v16;
LABEL_41:
  v25 = v22;

  return v22;
}

void __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) supportsAttachments] & 1) == 0)
  {
    v7 = [v5 ic_stringWithoutAttachments];

    v5 = v7;
  }

  if ([v5 length])
  {
    if ([*(a1 + 32) supportsAttachments] && objc_msgSend(*(a1 + 32), "numberOfAttachmentImagesPreloaded") <= 1)
    {
      v8 = [*(a1 + 32) workerContext];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke_2;
      v15 = &unk_2781AC560;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v16 = v9;
      v17 = v10;
      [v5 ic_enumerateAttachmentsInContext:v8 usingBlock:&v12];
    }

    [*(a1 + 48) setAttributedStringResult:{v5, v12, v13, v14, v15}];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke_cold_1();
    }

    [*(a1 + 48) setNoResult];
  }
}

void __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [*(a1 + 32) workerContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke_3;
  v12[3] = &unk_2781AC538;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = a5;
  v9 = v7;
  [v8 performBlockAndWait:v12];

  v10 = [*(a1 + 40) editorController];
  v11 = [v10 eventReporter];
  [v11 submitAttachmentAddEventForAttachment:v9];
}

unint64_t __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) attachmentType] == 3 || (result = objc_msgSend(*(a1 + 32), "attachmentType"), result == 5))
  {
    v3 = [*(a1 + 32) image];
    [*(a1 + 40) setNumberOfAttachmentImagesPreloaded:{objc_msgSend(*(a1 + 40), "numberOfAttachmentImagesPreloaded") + 1}];
    result = [*(a1 + 40) numberOfAttachmentImagesPreloaded];
    if (result >= 2)
    {
      **(a1 + 48) = 1;
    }
  }

  return result;
}

+ (id)temporaryTextStorageWithAttributedString:(id)a3 note:(id)a4 filterAttributedString:(BOOL)a5
{
  v25 = a5;
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D36918]);
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v8 initWithData:0 replicaID:v9];

  [v10 setShouldInhibitAddingExtraNewlinesAtEndDuringFixup:1];
  v11 = objc_alloc_init(MEMORY[0x277D36968]);
  v12 = [v7 managedObjectContext];
  v13 = *MEMORY[0x277D74060];
  v14 = [v6 length];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__ICEditingTextView_DragAndDrop__temporaryTextStorageWithAttributedString_note_filterAttributedString___block_invoke;
  v26[3] = &unk_2781AC5D8;
  v15 = v12;
  v27 = v15;
  [v6 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v26}];
  objc_opt_class();
  v16 = [v7 textStorage];
  v17 = [v16 styler];
  v18 = ICCheckedDynamicCast();
  v19 = [v18 zoomController];
  [v19 zoomFactor];
  v21 = v20;
  v22 = [v11 zoomController];
  [v22 setZoomFactor:v21];

  v23 = [v10 styler];

  [v10 setStyler:v11];
  if (v25)
  {
    [v10 setConvertAttributes:1];
    [v10 setFilterPastedAttributes:1];
  }

  [v10 setWantsUndoCommands:0];
  [v10 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v10, "length"), v6}];
  [v7 filterAttachmentsInTextStorage:v10 range:{0, objc_msgSend(v10, "length")}];
  [v10 fixupAfterEditing];
  [v10 setFilterPastedAttributes:0];
  [v10 setConvertAttributes:0];
  if (!v23)
  {
    [v10 setStyler:0];
  }

  return v10;
}

void __103__ICEditingTextView_DragAndDrop__temporaryTextStorageWithAttributedString_note_filterAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  if (v4)
  {
    v5 = [v4 attachment];
    v6 = [v5 objectID];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __103__ICEditingTextView_DragAndDrop__temporaryTextStorageWithAttributedString_note_filterAttributedString___block_invoke_2;
      v8[3] = &unk_2781AC5B0;
      v9 = v6;
      v10 = *(a1 + 32);
      v11 = v4;
      [v7 performBlockAndWait:v8];
    }
  }
}

void __103__ICEditingTextView_DragAndDrop__temporaryTextStorageWithAttributedString_note_filterAttributedString___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D35E00] ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  [*(a1 + 48) setAttachment:v2];
}

- (id)textPasteConfigurationSupporting:(id)a3 combineItemAttributedStrings:(id)a4 forRange:(id)a5
{
  v83[1] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v8 = a4;
  v58 = a5;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v78 = MEMORY[0x277D85DD0];
    v79 = 3221225472;
    v80 = __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke;
    v81 = &unk_2781ABCF8;
    v82 = self;
    performBlockOnMainThreadAndWait();
  }

  v57 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v9 = [v8 count];
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v77 = 0;
  v10 = [(ICEditingTextView *)self itemProviderPasteSession];
  v11 = [v10 isForDragAndDrop];
  if (v9 == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = [v8 objectAtIndexedSubscript:0];
    v75 = 0;
    v14 = [(ICEditingTextView *)self standardizedAttributedString:v13 attachmentIdentifiers:&v75];
    v55 = v75;

    v15 = [v8 objectAtIndexedSubscript:1];
    v74 = 0;
    v16 = [(ICEditingTextView *)self standardizedAttributedString:v15 attachmentIdentifiers:&v74];
    v54 = v74;

    v17 = [(ICEditingTextView *)self editorController];
    v18 = [v17 note];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      objc_opt_class();
      v21 = ICDynamicCast();
      v20 = [v21 note];
    }

    v22 = [v20 calculateDocumentController];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v14];
      v24 = [v23 ic_range];
      [v22 formatExpressionsInAttributedString:v23 range:v24 textStorageOffset:v25 skipStaleExpressions:{0, 0}];
      v26 = [v23 copy];

      v14 = v26;
    }

    v27 = [v14 string];
    v28 = [v16 string];
    v29 = [v27 isEqualToString:v28];

    if (v29 && (([v8 objectAtIndexedSubscript:1], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[ICEditingTextView attributedStringContainsICTTAttachment:](self, "attributedStringContainsICTTAttachment:", v30), v30, objc_msgSend(v55, "count") == 0 || v31) || objc_msgSend(v55, "isEqualToArray:", v54)))
    {
      v32 = [v8 objectAtIndexedSubscript:1];
      v83[0] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];

      v9 = [v33 count];
      v8 = v33;
    }

    else
    {
      v9 = 2;
    }
  }

  v34 = [(ICEditingTextView *)self itemProviderPasteSession];
  [v34 saveWorkerContext];

  v66 = MEMORY[0x277D85DD0];
  v67 = 3221225472;
  v68 = __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_2;
  v69 = &unk_2781AC600;
  v70 = self;
  v59 = v58;
  v71 = v59;
  v35 = v57;
  v72 = v35;
  v73 = v76;
  performBlockOnMainThreadAndWait();
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v37 = [v8 objectAtIndexedSubscript:i];
      [v35 appendAttributedString:v37];
      if (i < v9 - 1)
      {
        v38 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
        [v35 appendAttributedString:v38];
      }
    }
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__1;
  v64 = __Block_byref_object_dispose__1;
  v65 = 0;
  v39 = v35;
  performBlockOnMainThreadAndWait();
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    v40 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:v59];
    v42 = v41;
    v43 = [(ICEditingTextView *)self textStorage];
    v44 = [v43 string];
    v45 = [v44 lineRangeForRange:{v40, v42}];
    v47 = v46;

    v48 = [(ICEditingTextView *)self textStorage];
    v49 = [v48 attributedSubstringFromRange:{v45, v47}];

    v50 = [(ICEditingTextView *)self updateIndentForChecklistDragIfNecessaryForString:v61[5] lineUnderDrop:v49];
    v51 = v61[5];
    v61[5] = v50;
  }

  v52 = v61[5];

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v76, 8);

  return v52;
}

void __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemProviderPasteSession];
  v3 = [v2 isForDragAndDrop];

  if (v3)
  {
    objc_opt_class();
    v4 = [*(a1 + 32) layoutManager];
    v5 = ICCheckedDynamicCast();

    [v5 setShouldManuallyRenderSeparateSubviews:0];
  }
}

void __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_characterRangeFromTextRange:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) textStorage];
    v6 = [v5 attributedSubstringFromRange:{v3 - 1, 1}];
    [v4 appendAttributedString:v6];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) editorController];
  v3 = [v2 note];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    v5 = [v6 note];
  }

  v7 = [v5 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_4;
  v10[3] = &unk_2781AC628;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  v12 = v5;
  v13 = *(a1 + 48);
  v9 = v5;
  [v7 performBlockAndWait:v10];
}

void __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) itemProviderPasteSession];
  v30 = [v2 temporaryTextStorageWithAttributedString:v4 note:v3 filterAttributedString:{objc_msgSend(v5, "shouldFilterAttributedString")}];

  v6 = [v30 attributedString];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 56) + 8) + 40) string];
  LOBYTE(v3) = [v9 ic_containsNonWhitespaceAndAttachmentCharacters];

  if ((v3 & 1) == 0)
  {
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = [*(a1 + 48) managedObjectContext];
    v12 = [v10 ic_attributedStringByFlatteningCalculateAttachmentsWithContext:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v15 = [*(*(*(a1 + 56) + 8) + 40) attributedSubstringFromRange:{1, objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "length") - 1}];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if ((![*(a1 + 32) isDraggingChecklistItem] || (objc_msgSend(*(a1 + 32), "isDraggingOverChecklistItem") & 1) == 0) && objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "length") >= 2)
  {
    v18 = [*(a1 + 32) itemProviderPasteSession];
    v19 = [v18 isForDragAndDrop];

    if (v19)
    {
      v20 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v21 = [*(*(*(a1 + 56) + 8) + 40) length] - 1;
      v22 = -1;
      v23 = v21;
      while (v23)
      {
        v24 = [*(*(*(a1 + 56) + 8) + 40) string];
        v25 = [v24 characterAtIndex:v23];

        --v23;
        ++v22;
        if (([v20 characterIsMember:v25] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v22 = v21;
LABEL_14:
      v26 = [*(a1 + 32) itemProviderPasteSession];
      [v26 setNumberOfTrailingNewlinesStripped:v22];

      if (v22)
      {
        v27 = [*(*(*(a1 + 56) + 8) + 40) attributedSubstringFromRange:{0, objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "length") - v22}];
        v28 = *(*(a1 + 56) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;
      }
    }
  }
}

- (id)updateIndentForChecklistDragIfNecessaryForString:(id)a3 lineUnderDrop:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    v10 = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];

    if (v10)
    {
      v11 = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];
      v12 = [v11 paragraph];
      v13 = [v12 indent];
    }

    else
    {
      v9 = v8;
      if (![v7 length])
      {
        goto LABEL_9;
      }

      v19 = [v7 string];
      v20 = [v19 ic_trimmedString];
      v21 = [v20 length];

      v9 = v8;
      if (v21)
      {
        goto LABEL_9;
      }

      v23 = [v7 attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:0];
      v11 = v23;
      if (v23)
      {
        v13 = [v23 indent];
      }

      else
      {
        v13 = -1;
      }

      v24 = [v7 string];
      v25 = [ICChecklistDragUtilities tabIndentationEqualivantForString:v24];

      if (v25)
      {
        v26 = [(ICEditingTextView *)self TTTextStorage];
        [v26 setShouldRemoveLeadingWhitespaceForChecklistDrop:1];

        v13 += v25;
      }
    }

    v9 = v8;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      if ([v8 length])
      {
        v9 = [v8 mutableCopy];
        v14 = MEMORY[0x277D35DA8];
        v15 = [v8 attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:0];
        v16 = [v15 mutableCopy];
        [v16 setIndent:v13];
        v17 = *v14;
        v18 = [v16 copy];
        [v9 addAttribute:v17 value:v18 range:{0, objc_msgSend(v9, "length")}];
      }
    }
  }

LABEL_9:

  return v9;
}

- (id)textPasteConfigurationSupporting:(id)a3 performPasteOfAttributedString:(id)a4 toRange:(id)a5
{
  v122 = *MEMORY[0x277D85DE8];
  v93 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ICEditingTextView *)self itemProviderPasteSession];
  v11 = [v10 isForDragAndDrop];

  if (v11)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    v13 = self;
    if ((IsTextKit2Enabled & 1) == 0)
    {
      v14 = [(ICEditingTextView *)self icLayoutManager];
      [v14 setShouldManuallyRenderSeparateSubviews:0];

      v15 = [(ICEditingTextView *)self icLayoutManager];
      [v15 setIsRenderingPreviewForDragAndDrop:0];

      v13 = self;
    }

    v16 = [(ICEditingTextView *)v13 itemProviderPasteSession];
    v17 = [v16 numberOfTrailingNewlinesStripped];

    if (v17)
    {
      v18 = [MEMORY[0x277CCAB68] stringWithCapacity:v17];
      do
      {
        [v18 appendString:@"\n"];
        --v17;
      }

      while (v17);
      v19 = [v8 mutableCopy];
      [v19 ic_appendString:v18];
      v20 = [v19 copy];

      v8 = v20;
    }

    v21 = [(ICEditingTextView *)self itemProviderPasteSession];
    [v21 setNumberOfTrailingNewlinesStripped:0];
  }

  v22 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:v22 performPasteOfAttributedString:? toRange:?];
  }

  v118 = 0;
  v119[0] = &v118;
  v119[1] = 0x3032000000;
  v119[2] = __Block_byref_object_copy__1;
  v119[3] = __Block_byref_object_dispose__1;
  v97 = v8;
  v98 = v9;
  v120 = v98;
  if ([(ICEditingTextView *)self exceedsMaxLengthIfSelectionReplacedWithAttributedString:v97])
  {
    v23 = [(ICEditingTextView *)self editorController];
    [v23 warnUserNoteLengthExceeded];
    v96 = v97;
  }

  else
  {
    v94 = [(ICEditingTextView *)self TTTextStorage];
    [(ICEditingTextView *)self setSelectedTextRange:v98];
    v24 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:performPasteOfAttributedString:toRange:];
    }

    [(ICEditingTextView *)self beginDrop];
    v25 = [(ICEditingTextView *)self itemProviderPasteSession];
    v26 = [v25 shouldFilterAttributedString];

    location = [(ICEditingTextView *)self ic_characterRangeFromTextRange:v98];
    v28 = v27;
    v29 = [(ICEditingTextView *)self TTTextStorage];
    v30 = [v29 length];

    if (v26)
    {
      v31 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:v31 performPasteOfAttributedString:? toRange:?];
      }

      v32 = [(ICEditingTextView *)self TTTextStorage];
      [v32 setFilterPastedAttributes:1];

      v33 = [(ICEditingTextView *)self TTTextStorage];
      [v33 setConvertAttributes:1];

      v34 = [(ICEditingTextView *)self TTTextStorage];
      [v34 setPasteboardTypes:0];
    }

    v35 = [(ICEditingTextView *)self TTTextStorage];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke;
    v113[3] = &unk_2781AC678;
    v36 = v97;
    v116 = location;
    v117 = v28;
    v114 = v36;
    v115 = self;
    [v35 saveSelectionDuringBlock:v113 affinity:1];

    v37 = [MEMORY[0x277D35F30] sharedContext];
    v38 = [v37 managedObjectContext];
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_2;
    v112[3] = &unk_2781AC6A0;
    v112[4] = self;
    [v36 ic_enumerateAttachmentsInContext:v38 usingBlock:v112];

    v39 = [(ICEditingTextView *)self editorController];
    v40 = [v39 note];
    v41 = [v40 calculateDocumentController];
    [v41 scheduleUpdateAffectingChangeCounts:1 isHighPriority:1];

    v42 = [(ICEditingTextView *)self TTTextStorage];
    v43 = [v42 length];

    if (v26)
    {
      [v94 setPasteboardTypes:0];
      [v94 setConvertAttributes:0];
      [v94 setFilterPastedAttributes:0];
      v44 = [(ICEditingTextView *)self TTTextStorage];
      v45 = [v44 length];

      v46 = [v94 attributedSubstringFromRange:{location, v28 - v30 + v45}];

      objc_opt_class();
      v47 = [v94 styler];
      v48 = ICCheckedDynamicCast();

      [v48 insertedText:v46 replacementRange:location inTextView:v28 languageHasSpaces:{self, -[ICEditingTextView languageHasSpaces](self, "languageHasSpaces")}];
      v49 = v46;
    }

    else
    {
      v49 = v36;
    }

    v96 = v49;
    [(ICEditingTextView *)self finishDropWithString:?];
    v50 = v43 - v30 + v28;
    range2 = v50;
    if (v43 >= v50 + location)
    {
      v51 = v50 + location;
    }

    else
    {
      v51 = v43;
    }

    v52 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:v51, 0];
    v53 = *(v119[0] + 40);
    *(v119[0] + 40) = v52;

    v54 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:v119 performPasteOfAttributedString:v54 toRange:?];
    }

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v55 = [(ICEditingTextView *)self itemProviderPasteSession];
      v56 = [v55 isForDragAndDrop];

      if (v56)
      {
        objc_opt_class();
        v57 = [v94 attributedString];
        v58 = ICDynamicCast();

        v59 = [v58 mutableCopy];
        v124.location = [v94 ic_range];
        v125.length = range2;
        v125.location = location;
        v60 = NSIntersectionRange(v124, v125);
        v61 = *MEMORY[0x277D740C0];
        range2 = v60.length;
        [v58 removeAttribute:*MEMORY[0x277D740C0] range:{v60.location, v60.length}];
        v62 = [MEMORY[0x277D75348] clearColor];
        [v58 addAttribute:v61 value:v62 range:{v60.location, v60.length}];
        location = v60.location;

        [v58 removeAttribute:*MEMORY[0x277D740E8] range:{v60.location, v60.length}];
        [v58 removeAttribute:*MEMORY[0x277D741F0] range:{v60.location, v60.length}];
        [v58 removeAttribute:*MEMORY[0x277D74178] range:{v60.location, v60.length}];
        v63 = [(ICEditingTextView *)self editorController];
        v64 = [v63 note];
        v65 = [v64 documentMergeController];
        [v65 beginBlockingMergeForReason:2 textView:self];

        v66 = dispatch_time(0, 700000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_258;
        block[3] = &unk_2781AC6C8;
        v108 = v94;
        v109 = v59;
        v110 = self;
        v111 = v60;
        v67 = v59;
        dispatch_after(v66, MEMORY[0x277D85CD0], block);
      }

      v68 = [(ICEditingTextView *)self icLayoutManager];
      [v68 updateVisibleSupplementalViews];

      v69 = [(ICEditingTextView *)self icLayoutManager];
      v70 = [v69 todoButtonsForCharacterRange:{location, range2}];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = v70;
      v71 = [obj countByEnumeratingWithState:&v103 objects:v121 count:16];
      if (v71)
      {
        v72 = *v104;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v104 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v74 = *(*(&v103 + 1) + 8 * i);
            [v74 setAlpha:0.0];
            v75 = MEMORY[0x277D75D18];
            v76 = [(ICEditingTextView *)self itemProviderPasteSession];
            if ([v76 isForDragAndDrop])
            {
              v77 = 0.5;
            }

            else
            {
              v77 = 0.0;
            }

            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_2_259;
            v102[3] = &unk_2781ABCF8;
            v102[4] = v74;
            [v75 animateWithDuration:0 delay:v102 options:0 animations:0.3 completion:v77];
          }

          v71 = [obj countByEnumeratingWithState:&v103 objects:v121 count:16];
        }

        while (v71);
      }

      if ([(ICEditingTextView *)self supportsAttachments])
      {
        v78 = [(ICEditingTextView *)self editorController];
        v79 = [v78 visibleRange];
        v81 = v80;

        v82 = [(ICEditingTextView *)self textStorage];
        v83 = *MEMORY[0x277D74060];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_3;
        v101[3] = &unk_2781AC4E8;
        v101[5] = v79;
        v101[6] = v81;
        v101[4] = self;
        [v82 enumerateAttribute:v83 inRange:location options:range2 usingBlock:{0, v101}];
      }
    }

    v23 = v94;
  }

  v84 = [(ICEditingTextView *)self itemProviderPasteSession];
  v85 = [v84 isForDragAndDrop];

  if ((v85 & 1) == 0)
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_6;
    v100[3] = &unk_2781AC1D0;
    v100[4] = self;
    v100[5] = &v118;
    dispatch_async(MEMORY[0x277D85CD0], v100);
  }

  v86 = [(ICEditingTextView *)self itemProviderPasteSession];
  v87 = [v86 errorCodes];

  if ([v87 containsObject:&unk_28277E2B0])
  {
    v88 = [(ICEditingTextView *)self editorController];
    [v88 warnUserAttachmentLimitExceeded];
  }

  else
  {
    if (![v87 containsObject:&unk_28277E2C8])
    {
      goto LABEL_51;
    }

    v88 = [(ICEditingTextView *)self editorController];
    v89 = [(ICEditingTextView *)self itemProviderPasteSession];
    [v88 warnUserAttachmentSizeExceededWithAttachmentCount:{objc_msgSend(v89, "numberOfAttachmentsAttemptedAdded")}];
  }

LABEL_51:
  [(ICEditingTextView *)self setItemProviderPasteSession:0];
  [(ICEditingTextView *)self didPasteOrDropText:v96 toRange:v98];
  v90 = *(v119[0] + 40);

  _Block_object_dispose(&v118, 8);

  return v90;
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D36968];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) TTTextStorage];
  v19 = [v2 attributedStringToPasteWithAdaptedParagraphStyles:v3 pasteRange:*(a1 + 48) textStorage:{*(a1 + 56), v4}];

  v5 = [v19 string];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  v9 = [*(a1 + 40) textStorage];
  v10 = [v9 attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(*(a1 + 40) effectiveRange:{"selectedRange"), 0}];

  if (*(a1 + 56) && !v10)
  {
    v11 = [*(a1 + 40) itemProviderPasteSession];
    if ([v11 isTypeURL])
    {
      v12 = [v8 absoluteString];

      if (v12)
      {
        v13 = [*(a1 + 40) TTTextStorage];
        v14 = [v13 ic_attributedSubstringFromRange:{*(a1 + 48), *(a1 + 56)}];

        v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v14];
        v16 = *MEMORY[0x277D740E8];
        v17 = [v8 absoluteString];
        [v15 addAttribute:v16 value:v17 range:{0, objc_msgSend(v15, "length")}];

        v18 = [*(a1 + 40) TTTextStorage];
        [v18 replaceCharactersInRange:*(a1 + 48) withAttributedString:{*(a1 + 56), v15}];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v14 = [*(a1 + 40) TTTextStorage];
  [v14 replaceCharactersInRange:*(a1 + 48) withAttributedString:{*(a1 + 56), v19}];
LABEL_8:
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 attachmentType] == 12)
  {
    v3 = [*(a1 + 32) editorController];
    v4 = [v3 eventReporter];
    v5 = [*(a1 + 32) editorController];
    v6 = [v5 note];
    [v4 submitTableCreateEventForAttachment:v7 inNote:v6];
  }
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_258(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) restoreAttributedString:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 48) textStorage];
  v3 = [v2 layoutManagers];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v7++) invalidateDisplayForCharacterRange:{*(a1 + 56), *(a1 + 64)}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = [*(a1 + 48) editorController];
  v9 = [v8 note];
  v10 = [v9 documentMergeController];
  [v10 endBlockingMergeForReason:2 textView:*(a1 + 48)];

  v11 = [*(a1 + 48) editorController];
  [v11 saveNote];
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_3(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v8)
  {
    v17.location = a3;
    v17.length = a4;
    if (NSIntersectionRange(v17, *(a1 + 40)).length)
    {
      v9 = [*(a1 + 32) icLayoutManager];
      v10 = [v9 viewForTextAttachment:v8];

      if (v10)
      {
        v11 = 0.0;
        [v10 setAlpha:0.0];
        v12 = MEMORY[0x277D75D18];
        v13 = [*(a1 + 32) itemProviderPasteSession];
        if ([v13 isForDragAndDrop])
        {
          v11 = 0.5;
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_4;
        v15[3] = &unk_2781ABCF8;
        v16 = v10;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_5;
        v14[3] = &unk_2781AC6F0;
        v14[4] = *(a1 + 32);
        v14[5] = a3;
        v14[6] = a4;
        [v12 animateWithDuration:0 delay:v15 options:v14 animations:0.1 completion:v11];
      }
    }
  }
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) icLayoutManager];
  [v2 invalidateLayoutForCharacterRange:*(a1 + 40) actualCharacterRange:{*(a1 + 48), 0}];

  v3 = [*(a1 + 32) icLayoutManager];
  [v3 ensureLayoutForCharacterRange:{*(a1 + 40), *(a1 + 48)}];
}

void __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_6(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) selectedTextRange];
  v3 = [v2 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) selectedTextRange];
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2151A1000, v4, OS_LOG_TYPE_DEFAULT, "Corrected text selection range after paste: %@ => %@", &v7, 0x16u);
    }

    [*(a1 + 32) setSelectedTextRange:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)didPasteOrDropText:(id)a3 toRange:(id)a4
{
  v17 = a3;
  if ([v17 length])
  {
    v5 = [v17 attribute:*MEMORY[0x277D740E8] atIndex:objc_msgSend(v17 effectiveRange:{"length") - 1, 0}];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(ICEditingTextView *)self typingAttributes];
  v8 = *MEMORY[0x277D740C0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  [v9 CGColor];
  v10 = [MEMORY[0x277D75348] tintColor];
  [v10 CGColor];
  v11 = ICCGColorEquivalentToColor();

  if (!v6 && v11)
  {
    v12 = [(ICEditingTextView *)self typingAttributes];
    v13 = [v12 mutableCopy];

    [v13 setObject:0 forKeyedSubscript:v8];
    [v13 setObject:0 forKeyedSubscript:*MEMORY[0x277D35DA0]];
    [v13 setObject:0 forKeyedSubscript:*MEMORY[0x277D36020]];
    v14 = [v13 copy];
    [(ICEditingTextView *)self setTypingAttributes:v14];
  }

  v15 = [(ICEditingTextView *)self editorController];
  v16 = [v15 note];
  [v16 updateModificationDateAndChangeCountAndSaveAfterDelay];
}

- (void)icaxBeginEditingAtAttachment:(id)a3
{
  v4 = [(ICEditingTextView *)self _icaxRangeOfAttachment:a3];

  [(ICEditingTextView *)self icaxBeginEditingInStorageRange:v4 + v5, 0];
}

- (void)icaxBeginEditingInStorageRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v7 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:v6 forRange:location, length];
  v9 = v8;

  [(ICEditingTextView *)self _accessibilitySetSelectedTextRange:v7, v9];
  v10 = [(ICEditingTextView *)self editorController];
  [v10 startEditing];
}

- (void)icaxTextDidChange
{
  [(ICEditingTextView *)self set_icaxCachedModifiedAttributedString:0];
  if ([(ICEditingTextView *)self isFirstResponder]&& UIAccessibilityIsVoiceOverRunning())
  {

    [(ICEditingTextView *)self _icaxUpdateFakeTextSelectionRange];
  }
}

- (void)icaxUpdateLinkRanges
{
  v3 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];
    v6 = [v5 mutableCopy];

    v7 = [(ICEditingTextView *)self baseAttributedStringForAccessibility];
    v8 = *MEMORY[0x277D740E8];
    v9 = [v7 length];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __62__ICEditingTextView_ICAccessibility_iOS__icaxUpdateLinkRanges__block_invoke;
    v15 = &unk_2781AC8D0;
    v16 = self;
    v17 = v6;
    v10 = v6;
    [v7 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, &v12}];
    v11 = [v10 copy];
    [(ICEditingTextView *)self set_icaxCachedModifiedAttributedString:v11];
  }

  [(ICEditingTextView *)self _accessibilitySetRetainedValue:0 forKey:@"AXLinks"];
}

void __62__ICEditingTextView_ICAccessibility_iOS__icaxUpdateLinkRanges__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v9 _icaxCachedModifiedAttributedString];
    v11 = [v9 _icaxRangeInModifiedAttributedString:v10 forRange:{a3, a4}];
    v13 = v12;

    v14 = *(a1 + 40);
    v16 = *MEMORY[0x277CE6C38];
    v17[0] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v14 addAttributes:v15 range:{v11, v13}];
  }
}

- (void)icaxSpeakIndentationLevelForCurrentSelectedRange
{
  v3 = [(ICEditingTextView *)self selectedRange];
  v4 = [(ICEditingTextView *)self textStorage];
  v5 = [v4 length];

  if (v3 <= v5)
  {
    v6 = [(ICEditingTextView *)self textStorage];
    v7 = [v6 length];

    if (v3 && v3 >= v7)
    {
      v8 = [(ICEditingTextView *)self textStorage];
      v3 = [v8 length] - 1;
    }

    v9 = [(ICEditingTextView *)self textStorage];
    v13 = [v9 attribute:*MEMORY[0x277D35DA8] atIndex:v3 effectiveRange:0];

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Indentation level %lu" value:&stru_282757698 table:0];

    v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, objc_msgSend(v13, "indent")];
    ICAccessibilityPostAnnouncementNotification();
  }
}

- (BOOL)isAccessibilityElement
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 viewControllerManager];
  v4 = [v3 isAttachmentBrowserVisible];

  return v4 ^ 1;
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"note" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v7 = xmmword_2154BBF20;
    v3 = objc_alloc(MEMORY[0x277CE6B98]);
    v4 = [(ICEditingTextView *)self _icaxAttributedStringForRange:&v7];
    v5 = [v3 initWithCFAttributedString:{v4, v7}];
  }

  else
  {
    v5 = [(ICEditingTextView *)self text];
  }

  return v5;
}

- (id)accessibilityHint
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 note];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v5 localizedStringForKey:@"Double tap to begin editing a new note" value:&stru_282757698 table:0];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = ICEditingTextView;
  v3 = *MEMORY[0x277D74048] | [(ICEditingTextView *)&v9 accessibilityTraits];
  v4 = [(ICEditingTextView *)self editorController];
  v5 = [v4 note];
  v6 = [v5 isEditable];

  if (v6)
  {
    v7 = ~*MEMORY[0x277D765A8];
  }

  else
  {
    v7 = -1;
  }

  return v7 & v3 & ~*MEMORY[0x277D76570];
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 isInkPickerShowing];

  v5 = -1.0;
  v6 = -1.0;
  if ((v4 & 1) == 0)
  {
    v7 = [(ICEditingTextView *)self accessibilityTraits:-1.0];
    if ((*MEMORY[0x277D74038] & v7) != 0)
    {
      v24.receiver = self;
      v24.super_class = ICEditingTextView;
      [(ICEditingTextView *)&v24 accessibilityActivationPoint];
    }

    else
    {
      [(ICEditingTextView *)self visibleTextRect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [MEMORY[0x277D74248] ic_isRTL];
      v17 = v9;
      v18 = v11;
      v19 = v13;
      v20 = v15;
      if (v16)
      {
        MinX = CGRectGetMinX(*&v17);
        v22 = 5.0;
      }

      else
      {
        MinX = CGRectGetMaxX(*&v17);
        v22 = -5.0;
      }

      v26.origin.x = v9 + MinX + v22;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      CGRectGetMaxY(v26);
      v23 = [(ICEditingTextView *)self editorController];
      [v23 ic_safeAreaDistanceFromBottom];

      UIAccessibilityFrameForBounds();
    }
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 note];
  v5 = [v4 isDeletedOrInTrash];

  v6 = [(ICEditingTextView *)self editorController];
  v7 = [v6 note];
  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [(ICEditingTextView *)self isEditable]^ 1;
  }

  v9 = v5 | v8;
  if ((v9 & 1) == 0)
  {
    v10 = [(ICEditingTextView *)self editorController];
    [v10 startEditing];
  }

  return (v9 & 1) == 0;
}

- (BOOL)accessibilityPerformEscape
{
  if ([(ICEditingTextView *)self isFirstResponder])
  {
    [(ICEditingTextView *)self resignFirstResponder];
    return 1;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v4 accessibilityPerformEscape];
  }
}

- (BOOL)_accessibilityOverridesInstructionsHint
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 note];
  v4 = v3 == 0;

  return v4;
}

- (id)childElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICEditingTextView *)self _accessibleSubviews];
  [v3 addObjectsFromArray:v4];

  v5 = [(ICEditingTextView *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  v7 = [v5 length];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__ICEditingTextView_ICAccessibility_iOS__childElements__block_invoke;
  v14 = &unk_2781AC8F8;
  v15 = self;
  v16 = v3;
  v8 = v3;
  [v5 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, &v11}];
  v9 = [v8 copy];

  return v9;
}

void __55__ICEditingTextView_ICAccessibility_iOS__childElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v14 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v14;
    if (isKindOfClass)
    {
      IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
      v6 = *(a1 + 32);
      if (IsTextKit2Enabled)
      {
        v7 = [v6 icTextLayoutManager];
        v8 = [v14 viewIdentifier];
        v9 = [v7 existingAttachmentViewForIdentifier:v8];
      }

      else
      {
        v7 = [v6 layoutManager];
        v9 = [v14 viewForLayoutManager:v7];
      }

      if ([v9 isAccessibilityElement])
      {
        [*(a1 + 40) addObject:v9];
      }

      else
      {
        v10 = [v9 accessibilityElements];
        v11 = [v10 count];

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v9 accessibilityElements];
          [v12 addObjectsFromArray:v13];
        }
      }

      v3 = v14;
    }
  }
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v65 = *MEMORY[0x277D85DE8];
  v7 = a4;
  [(ICEditingTextView *)self convertPoint:0 toView:x, y];
  v9 = v8;
  v11 = v10;
  [(ICEditingTextView *)self _icaxLinkElements];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = v60 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v13)
  {
    v14 = *v58;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        [v16 accessibilityFrame];
        v67.x = v9;
        v67.y = v11;
        if (CGRectContainsPoint(v70, v67))
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = [(ICEditingTextView *)self childElements];
  v18 = v17;
  if (!v13)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
LABEL_17:
      v24 = 0;
      while (1)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v53 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 accessibilityFrame];
          v68.x = v9;
          v68.y = v11;
          if (CGRectContainsPoint(v71, v68))
          {
            break;
          }
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v22)
          {
            goto LABEL_17;
          }

          goto LABEL_24;
        }
      }

      v13 = v25;

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_24:
    }

    v26 = [(UIView *)self icaxRecursiveSubviewsPassingTest:&__block_literal_global_1];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v41 = v18;
      v42 = self;
      v43 = v7;
      v13 = 0;
      v29 = *v50;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v49 + 1) + 8 * j);
          v32 = [MEMORY[0x277D73FF8] defaultVoiceOverOptions];
          v33 = [v31 _accessibilityLeafDescendantsWithOptions:v32];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v45 objects:v61 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v46;
            while (2)
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v46 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v45 + 1) + 8 * k);
                [v39 accessibilityFrame];
                v69.x = v9;
                v69.y = v11;
                if (CGRectContainsPoint(v72, v69))
                {
                  v40 = v39;

                  v13 = v40;
                  goto LABEL_41;
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v45 objects:v61 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }
          }

LABEL_41:
        }

        v28 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v28);

      self = v42;
      v7 = v43;
      v18 = v41;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v44.receiver = self;
    v44.super_class = ICEditingTextView;
    v13 = [(ICEditingTextView *)&v44 _accessibilityHitTest:v7 withEvent:x, y];
  }

LABEL_12:

  return v13;
}

uint64_t __74__ICEditingTextView_ICAccessibility_iOS___accessibilityHitTest_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 className];
  v3 = [v2 isEqualToString:@"PaperKit.CanvasGenerationTool"];

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 3)
  {
    [(ICEditingTextView *)self contentOffset];
    v5 = v4;
    v6 = [(ICEditingTextView *)self editorController];
    [v6 ic_safeAreaDistanceFromTop];
    v8 = -v7;

    if (v5 <= v8)
    {
      v9 = [(ICEditingTextView *)self editorController];
      [v9 showOverscrollContentAndScrollToTop];
    }

    return 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v11 accessibilityScroll:?];
  }
}

- (id)_accessibilityValueForRange:(_NSRange *)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxAttributedStringForRange:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICEditingTextView;
    v5 = [(ICEditingTextView *)&v7 _accessibilityAttributedValueForRange:a3];
  }

  return v5;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxAttributedStringForRange:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICEditingTextView;
    v5 = [(ICEditingTextView *)&v7 _accessibilityAttributedValueForRange:a3];
  }

  return v5;
}

- (int64_t)_accessibilityLineEndPosition
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(ICEditingTextView *)self _icaxModifiedCursorPosition];

    return [(ICEditingTextView *)self _icaxLinePositionForPosition:v3 start:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v5 _accessibilityLineEndPosition];
  }
}

- (int64_t)_accessibilityLineStartPosition
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(ICEditingTextView *)self _icaxModifiedCursorPosition];

    return [(ICEditingTextView *)self _icaxLinePositionForPosition:v3 start:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v5 _accessibilityLineStartPosition];
  }
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  v12.receiver = self;
  v12.super_class = ICEditingTextView;
  v4 = [(ICEditingTextView *)&v12 _accessibilityLineNumberAndColumnForPoint:a3.x, a3.y];
  v5 = [v4 objectForKeyedSubscript:@"lineNumber"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v8 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:v7 forRange:v6, 0];

  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v9 setObject:v10 forKeyedSubscript:@"lineNumber"];

  return v9;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"lineNumber"];
  v5 = [v4 unsignedIntegerValue];

  v6 = [(ICEditingTextView *)self _accessibilityLineRangeForPosition:v5];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxLinePositionForPosition:a3 start:1];
    v6 = [(ICEditingTextView *)self _icaxLinePositionForPosition:a3 start:0];
    v7 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v8 = [v7 length];
    if (v6 != v5 || v5 == v8)
    {
      v10 = v6 - v5;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICEditingTextView;
    v5 = [(ICEditingTextView *)&v14 _accessibilityLineRangeForPosition:a3];
    v10 = v11;
  }

  v12 = v5;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  if (UIAccessibilityIsVoiceOverRunning() && ![(ICEditingTextView *)self isAccessibilityTableTextView])
  {

    v3 = [(ICEditingTextView *)self _icaxModifiedSelectionRange];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    v3 = [(ICEditingTextView *)&v5 _accessibilitySelectedTextRange];
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(ICEditingTextView *)self set_icaxShouldPreventUpdatingFakeCursorRange:1];
    [(ICEditingTextView *)self set_icaxModifiedCursorPosition:location + length];
    [(ICEditingTextView *)self set_icaxModifiedSelectionRange:location, length];
    v6 = [(ICEditingTextView *)self selectedRange];
    v8 = v7;
    v9 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v10 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, v9];
    [(ICEditingTextView *)self setSelectedRange:v10, v11];

    if ([(ICEditingTextView *)self selectedRange]== v6 && v12 == v8)
    {
      UIAccessibilityPostNotification(0x3F9u, 0);
    }

    [(ICEditingTextView *)self set_icaxShouldPreventUpdatingFakeCursorRange:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v13 _accessibilitySetSelectedTextRange:location, length];
  }
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4010000000;
  v45 = &unk_21552D17E;
  v46 = 0u;
  v47 = 0u;
  if ([(ICEditingTextView *)self isAccessibilityTableTextView])
  {
    v35.receiver = self;
    v35.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v35 _accessibilityBoundsForRange:location, length];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = v43;
    v43[4] = v6;
    v14[5] = v8;
    v14[6] = v10;
    v14[7] = v12;
  }

  else
  {
    v15 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v16 = v15;
    if (location != 0x7FFFFFFFFFFFFFFFLL && !length)
    {
      length = location != [v15 length];
    }

    if (length + location > [v16 length])
    {
      length = [v16 length] - location;
    }

    v17 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v18 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, v17];
    v20 = v19;

    v41.receiver = self;
    v41.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v41 _accessibilityBoundsForRange:v18, v20];
    v21 = 0;
    v22 = v43;
    *(v43 + 4) = v23;
    *(v22 + 5) = v24;
    *(v22 + 6) = v25;
    *(v22 + 7) = v26;
    if (location != 0x7FFFFFFF && location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [v16 string];
      v21 = [v18 ic_rangeIsValid:{location, length}];
    }

    if (location != 0x7FFFFFFF && location != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    if (v21)
    {
      v27 = [v16 ic_attributedSubstringFromRange:{location, length}];
      v28 = *MEMORY[0x277CE6BD0];
      v29 = [v27 length];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __71__ICEditingTextView_ICAccessibility_iOS___accessibilityBoundsForRange___block_invoke;
      v36[3] = &unk_2781AC940;
      v30 = v27;
      v39 = location;
      v40 = length;
      v37 = v30;
      v38 = &v42;
      [v30 enumerateAttribute:v28 inRange:0 options:v29 usingBlock:{0, v36}];
    }

    v7 = v43[4];
    v9 = v43[5];
    v11 = v43[6];
    v13 = v43[7];
  }

  _Block_object_dispose(&v42, 8);
  v31 = v7;
  v32 = v9;
  v33 = v11;
  v34 = v13;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

void __71__ICEditingTextView_ICAccessibility_iOS___accessibilityBoundsForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v14 = 0;
    v15 = 0;
    v6 = [*(a1 + 32) attribute:@"ICAXAdditionalTextAttribute" atIndex:a3 effectiveRange:&v14];

    if (v6)
    {
      if (*(a1 + 56) + *(a1 + 48) <= (v14 + *(a1 + 48) + v15))
      {
        [v5 accessibilityFrame];
        v7 = a1 + 40;
      }

      else
      {
        v8 = *(a1 + 40);
        v7 = a1 + 40;
        v9 = *(v8 + 8);
        [v5 accessibilityFrame];
        v17.origin.x = v10;
        v17.origin.y = v11;
        v17.size.width = v12;
        v17.size.height = v13;
        v16 = CGRectUnion(v9[1], v17);
      }

      *(*(*v7 + 8) + 32) = v16;
    }
  }
}

- (BOOL)_accessibilityHasTextOperations
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 note];
  v5 = [v4 isDeletedOrInTrash];

  if ((v5 & 1) != 0 || [(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = ICEditingTextView;
  return [(ICEditingTextView *)&v7 _accessibilityHasTextOperations];
}

- (id)_accessibilityTextOperations
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  v65.receiver = self;
  v65.super_class = ICEditingTextView;
  v4 = [(ICEditingTextView *)&v65 _accessibilityTextOperations];
  [v3 addObjectsFromArray:v4];

  v5 = [(ICEditingTextView *)self selectedRange];
  v6 = [(ICEditingTextView *)self textStorage];
  if (v5 >= [v6 length])
  {
    v8 = [(ICEditingTextView *)self textStorage];
    v9 = [v8 length];

    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v7 = v10 - 1;
  }

  else
  {
    v7 = [(ICEditingTextView *)self selectedRange];
  }

  v11 = [(ICEditingTextView *)self textStorage];
  v12 = [v11 length];

  if (v7 < v12)
  {
    v13 = [(ICEditingTextView *)self textStorage];
    v14 = [v13 attribute:*MEMORY[0x277D35DA8] atIndex:v7 effectiveRange:0];

    v15 = [(ICEditingTextView *)self editorController];
    v16 = [v15 icaxTextController];

    if ([(ICEditingTextView *)self isAccessibilityTableTextView])
    {
LABEL_29:
      v64 = 0;
      v63 = 0;
      [(ICEditingTextView *)self _icaxGetBoldForCurrentRange:&v64 + 1 italic:&v64 underline:&v63 + 1 strikethrough:&v63];
      if ((v64 & 0x100) != 0)
      {
        [(ICEditingTextView *)self _icaxMakeNotBoldString];
      }

      else
      {
        [(ICEditingTextView *)self _icaxMakeBoldString];
      }
      v41 = ;
      if (v64)
      {
        [(ICEditingTextView *)self _icaxMakeNotItalicString];
      }

      else
      {
        [(ICEditingTextView *)self _icaxMakeItalicString];
      }
      v42 = ;
      if ((v63 & 0x100) != 0)
      {
        [(ICEditingTextView *)self _icaxMakeNotUnderlinedString];
      }

      else
      {
        [(ICEditingTextView *)self _icaxMakeUnderlinedString];
      }
      v43 = ;
      if (v63)
      {
        [(ICEditingTextView *)self icaxMakeNotStrikethroughString];
      }

      else
      {
        [(ICEditingTextView *)self icaxMakeStrikethroughString];
      }
      v44 = ;
      [v3 addObject:v41];
      [v3 addObject:v42];
      [v3 addObject:v43];
      [v3 addObject:v44];
      if (![(ICEditingTextView *)self isAccessibilityTableTextView])
      {
        v45 = [(ICEditingTextView *)self editorController];
        v46 = [v45 canPerformAction:sel_increaseIndentation_ withSender:0];

        if (v46)
        {
          v47 = [(ICEditingTextView *)self _icaxIncreaseIndentationString];
          [v3 addObject:v47];
        }

        v48 = [(ICEditingTextView *)self editorController];
        v49 = [v48 canPerformAction:sel_decreaseIndentation_ withSender:0];

        if (v49)
        {
          v50 = [(ICEditingTextView *)self _icaxDecreaseIndentationString];
          [v3 addObject:v50];
        }
      }

      if ([(ICEditingTextView *)self canPerformAction:sel__insertDrawing_ withSender:0, v14])
      {
        v51 = [(ICEditingTextView *)self _icaxInsertDrawingString];
        [v3 addObject:v51];
      }

      v52 = [(ICEditingTextView *)self editorController];
      v53 = [v52 note];

      v54 = [v53 calculateDocumentController];
      v55 = [v54 numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];

      if (v55)
      {
        if (ICInternalSettingsIsScrubbingEnabled())
        {
          if ([v53 isEditable])
          {
            if ([v53 isCalculateMathEnabled])
            {
              if (([v53 isDeletedOrInTrash] & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v56 = [(ICEditingTextView *)self _icaxCalculateAdjustString];
                  [v3 addObject:v56];
                }
              }
            }
          }
        }
      }

      goto LABEL_56;
    }

    if ([v14 style] == 103)
    {
      v17 = [(ICEditingTextView *)self selectedRange];
      v19 = v18;
      v20 = [(ICEditingTextView *)self textStorage];
      v21 = [v16 todoForRange:v17 inTextStorage:{v19, v20}];

      if (!v21)
      {
LABEL_28:

        goto LABEL_29;
      }

      if ([v21 done])
      {
        [(ICEditingTextView *)self _icaxMarkAsIncompleteString];
      }

      else
      {
        [(ICEditingTextView *)self _icaxMarkAsCompletedString];
      }
      v26 = ;
      [v3 addObject:v26];

      v61 = [(ICEditingTextView *)self _icaxRemoveChecklistString];
      [v3 addObject:?];
      v27 = MEMORY[0x277CCAE60];
      v28 = [(ICEditingTextView *)self selectedRange];
      v30 = [v27 valueWithRange:{v28, v29}];
      v66[0] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];

      v32 = [v16 checklistItemExistsMarkedCompleted:1 inTextView:self forRanges:v31];
      v33 = [v16 checklistItemExistsMarkedCompleted:0 inTextView:self forRanges:v31];
      v34 = [(ICEditingTextView *)self selectedRange];
      v36 = [v16 canMoveCheckedChecklistsToBottomInTextView:self forRange:{v34, v35}];
      if (v33)
      {
        v37 = [(ICEditingTextView *)self _icaxChecklistMarkAllItemsCompleteString];
        [v3 addObject:v37];
      }

      if (v32)
      {
        v38 = [(ICEditingTextView *)self _icaxChecklistUnmarkAllItemsCompleteString];
        [v3 addObject:v38];
      }

      if ((v33 & v36) == 1)
      {
        v39 = [(ICEditingTextView *)self _icaxChecklistMoveCheckedToBottomString];
        [v3 addObject:v39];
      }

      if (v32)
      {
        v40 = [(ICEditingTextView *)self _icaxChecklistDeleteCheckedItemsString];
        [v3 addObject:v40];
      }

      v25 = v61;
    }

    else
    {
      v21 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
      if (v21)
      {
        goto LABEL_28;
      }

      v22 = [(ICEditingTextView *)self editorController];
      v23 = [v22 navigationItemConfiguration];
      v24 = [v23 canAddChecklist];

      if (!v24)
      {
        goto LABEL_28;
      }

      v25 = [(ICEditingTextView *)self _icaxMakeChecklistString];
      [v3 addObject:v25];
    }

    goto LABEL_28;
  }

LABEL_56:
  if (![(ICEditingTextView *)self isAccessibilityTableTextView])
  {
    v57 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
    v58 = v57;
    if (v57)
    {
      v59 = [v57 _accessibilityTextOperations];
      if ([v59 count])
      {
        [v3 addObjectsFromArray:v59];
      }
    }
  }

LABEL_62:

  return v3;
}

- (id)_icaxLinkEditActions
{
  v3 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  v4 = [(ICEditingTextView *)self textContainer];
  v5 = ICDynamicCast();

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0 && ![(ICEditingTextView *)self selectionContainsNonLinkAttachment])
  {
    v6 = [(ICEditingTextView *)self editorController];
    v7 = [v6 note];
    if ([v7 isSharedReadOnly])
    {
LABEL_4:

      goto LABEL_6;
    }

    v8 = [v5 insideSiriSnippet];

    if ((v8 & 1) == 0)
    {
      v11 = [(ICEditingTextView *)self selectionContainsLink];
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = v12;
      if (v11)
      {
        v14 = @"Edit Link";
      }

      else
      {
        v14 = @"Add Link";
      }

      v6 = [v12 localizedStringForKey:v14 value:&stru_282757698 table:0];

      v15 = objc_alloc(MEMORY[0x277D75088]);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke;
      v21[3] = &unk_2781AC968;
      v21[4] = self;
      v7 = [v15 initWithName:v6 actionHandler:v21];
      [v3 ic_addNonNilObject:v7];
      if ([(ICEditingTextView *)self selectionContainsLink])
      {
        v16 = [MEMORY[0x277CCA8D8] mainBundle];
        v17 = [v16 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];

        v18 = objc_alloc(MEMORY[0x277D75088]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke_2;
        v20[3] = &unk_2781AC968;
        v20[4] = self;
        v19 = [v18 initWithName:v17 actionHandler:v20];
        [v3 ic_addNonNilObject:v19];
      }

      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = [v3 copy];

  return v9;
}

uint64_t __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editorController];
  v3 = [v2 auxiliaryResponder];

  if (v3)
  {
    objc_opt_class();
    v4 = [*(a1 + 32) editorController];
    v5 = [v4 auxiliaryResponder];
    v6 = ICDynamicCast();
  }

  else
  {
    v6 = [*(a1 + 32) editorController];
  }

  [v6 openLinkEditor:*(a1 + 32)];

  return 1;
}

uint64_t __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) editorController];
  if (![v2 conformsToProtocol:&unk_2827A5638])
  {
    goto LABEL_4;
  }

  v3 = [*(a1 + 32) editorController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) editorController];
    v2 = ICProtocolCast();

    [v2 removeLinksFromCurrentSelection];
LABEL_4:
  }

  return 1;
}

- (BOOL)_accessibilityTextOperationAction:(id)a3
{
  v4 = a3;
  if ([(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v10 = [(ICEditingTextView *)self _icaxMarkAsIncompleteString];
  v11 = [v4 isEqualToString:v10];

  if (v11)
  {
    [(ICEditingTextView *)self _icaxMarkTodoIncompleteForCurrentSelection];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = v12;
    v14 = @"Incomplete: %@";
LABEL_13:
    v23 = [v12 localizedStringForKey:v14 value:&stru_282757698 table:0];

    v24 = MEMORY[0x277CCACA8];
    v25 = [(ICEditingTextView *)self _icaxCurrentParagraph];
    v26 = [v24 localizedStringWithFormat:v23, v25];

    ICAccessibilityPostAnnouncementNotification();
LABEL_14:
    v27 = 1;
    goto LABEL_15;
  }

  v15 = [(ICEditingTextView *)self _icaxMarkAsCompletedString];
  v16 = [v4 isEqualToString:v15];

  if (v16)
  {
    [(ICEditingTextView *)self _icaxMarkTodoCompleteForCurrentSelection];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = v12;
    v14 = @"Completed: %@";
    goto LABEL_13;
  }

  v17 = [(ICEditingTextView *)self _icaxRemoveChecklistString];
  v18 = [v4 isEqualToString:v17];

  if (v18)
  {
    v19 = [(ICEditingTextView *)self editorController];
    [v19 icaxToggleTodoStyle];

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = v12;
    v14 = @"Body: %@";
    goto LABEL_13;
  }

  v20 = [(ICEditingTextView *)self _icaxMakeChecklistString];
  v21 = [v4 isEqualToString:v20];

  if (v21)
  {
    v22 = [(ICEditingTextView *)self editorController];
    [v22 icaxToggleTodoStyle];

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = v12;
    v14 = @"Checklist item: %@";
    goto LABEL_13;
  }

  v33 = [(ICEditingTextView *)self _icaxChecklistMarkAllItemsCompleteString];
  v34 = [v4 isEqualToString:v33];

  if (v34)
  {
    [(ICEditingTextView *)self _icaxChecklistMarkAllComplete];
    goto LABEL_14;
  }

  v35 = [(ICEditingTextView *)self _icaxChecklistUnmarkAllItemsCompleteString];
  v36 = [v4 isEqualToString:v35];

  if (v36)
  {
    [(ICEditingTextView *)self _icaxChecklistUnMarkAllComplete];
    goto LABEL_14;
  }

  v37 = [(ICEditingTextView *)self _icaxChecklistDeleteCheckedItemsString];
  v38 = [v4 isEqualToString:v37];

  if (v38)
  {
    [(ICEditingTextView *)self _icaxChecklistDeleteChecked];
    goto LABEL_14;
  }

  v39 = [(ICEditingTextView *)self _icaxChecklistMoveCheckedToBottomString];
  v40 = [v4 isEqualToString:v39];

  if (v40)
  {
    [(ICEditingTextView *)self _icaxChecklistSortCheckedToBottom];
    goto LABEL_14;
  }

  v41 = [(ICEditingTextView *)self _icaxMakeBoldString];
  if ([v4 isEqualToString:v41])
  {

LABEL_32:
    [(ICEditingTextView *)self ic_toggleBoldface];
    goto LABEL_14;
  }

  v42 = [(ICEditingTextView *)self _icaxMakeNotBoldString];
  v43 = [v4 isEqualToString:v42];

  if (v43)
  {
    goto LABEL_32;
  }

  v44 = [(ICEditingTextView *)self _icaxMakeItalicString];
  if ([v4 isEqualToString:v44])
  {

LABEL_36:
    [(ICEditingTextView *)self ic_toggleItalics];
    goto LABEL_14;
  }

  v45 = [(ICEditingTextView *)self _icaxMakeNotItalicString];
  v46 = [v4 isEqualToString:v45];

  if (v46)
  {
    goto LABEL_36;
  }

  v47 = [(ICEditingTextView *)self _icaxMakeUnderlinedString];
  if ([v4 isEqualToString:v47])
  {

LABEL_40:
    [(ICEditingTextView *)self ic_toggleUnderline];
    goto LABEL_14;
  }

  v48 = [(ICEditingTextView *)self _icaxMakeNotUnderlinedString];
  v49 = [v4 isEqualToString:v48];

  if (v49)
  {
    goto LABEL_40;
  }

  v50 = [(ICEditingTextView *)self icaxMakeStrikethroughString];
  if ([v4 isEqualToString:v50])
  {

LABEL_44:
    [(ICEditingTextView *)self ic_toggleStrikethrough];
    goto LABEL_14;
  }

  v51 = [(ICEditingTextView *)self icaxMakeNotStrikethroughString];
  v52 = [v4 isEqualToString:v51];

  if (v52)
  {
    goto LABEL_44;
  }

  v53 = [(ICEditingTextView *)self _icaxDecreaseIndentationString];
  v54 = [v4 isEqualToString:v53];

  if (v54)
  {
    v55 = [(ICEditingTextView *)self targetForAction:sel_decreaseIndentation_ withSender:0];
    [v55 decreaseIndentation:0];
LABEL_49:

    goto LABEL_14;
  }

  v56 = [(ICEditingTextView *)self _icaxIncreaseIndentationString];
  v57 = [v4 isEqualToString:v56];

  if (v57)
  {
    v55 = [(ICEditingTextView *)self targetForAction:sel_increaseIndentation_ withSender:0];
    [v55 increaseIndentation:0];
    goto LABEL_49;
  }

  v58 = [(ICEditingTextView *)self _icaxInsertDrawingString];
  v59 = [v4 isEqualToString:v58];

  if (v59)
  {
    [(ICEditingTextView *)self _insertDrawing:0];
    goto LABEL_14;
  }

  v60 = [(ICEditingTextView *)self _icaxCalculateAdjustString];
  v61 = [v4 isEqualToString:v60];

  if (v61)
  {
    v62 = [(ICEditingTextView *)self editorController];
    v63 = [v62 note];
    v55 = [v63 calculateDocumentController];

    v64 = [v55 numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];
    if (v64)
    {
      v65 = [(ICEditingTextView *)self editorController];
      v66 = [v65 calculateScrubberController];
      [v66 showScrubberForNumberLiteral:v64 isCompact:0];
    }

    goto LABEL_49;
  }

  v27 = 0;
LABEL_15:
  v28 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
  v29 = [v28 _accessibilityTextOperations];
  v30 = [v29 containsObject:v4];

  if (v30)
  {
    v31 = [v28 _accessibilityTextOperationAction:v4];

    if (v31)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v27)
    {
LABEL_19:
      v9 = 1;
      goto LABEL_20;
    }
  }

LABEL_2:
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
    v9 = [v8 _accessibilityTextOperationAction:v4];
  }

  else
  {
    v67.receiver = self;
    v67.super_class = ICEditingTextView;
    v9 = [(ICEditingTextView *)&v67 _accessibilityTextOperationAction:v4];
  }

LABEL_20:

  return v9;
}

- (id)automationElements
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICEditingTextView;
  v4 = [(ICEditingTextView *)&v12 automationElements];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(UIView *)self icaxRecursiveSubviewsPassingTest:&__block_literal_global_509];
  [v5 addObjectsFromArray:v6];
  v7 = [(ICEditingTextView *)self _icaxLinkElements];
  if ([v7 count])
  {
    [v5 addObjectsFromArray:v7];
  }

  v8 = [(ICEditingTextView *)self ic_pkTiledView];
  [v5 ic_addNonNilObject:v8];

  v9 = [(ICEditingTextView *)self _icaxAdditionalElementsForAutomation];
  [v5 ic_addObjectsFromNonNilArray:v9];

  v10 = [v5 copy];

  return v10;
}

uint64_t __60__ICEditingTextView_ICAccessibility_iOS__automationElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_icaxAdditionalElementsForAutomation
{
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 ic_addNonNilObject:NSClassFromString(&cfstr_Iccollaborator_1.isa)];
  [v3 ic_addNonNilObject:NSClassFromString(&cfstr_Iccollaborator.isa)];
  [v3 addObject:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxAdditionalElementsForAutomation__block_invoke;
  v7[3] = &unk_2781AC990;
  v8 = v3;
  v4 = v3;
  v5 = [(UIView *)self icaxRecursiveSubviewsPassingTest:v7];

  return v5;
}

uint64_t __78__ICEditingTextView_ICAccessibility_iOS___icaxAdditionalElementsForAutomation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 containsObject:v2];
}

- (id)accessibilityCustomActions
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = [MEMORY[0x277CBEB18] array];
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [v3 string];
  v5 = [(ICEditingTextView *)self selectedRange];
  v7 = [v4 paragraphRangeForRange:{v5, v6}];
  v9 = v8;

  v10 = [(ICEditingTextView *)self textStorage];
  v11 = *MEMORY[0x277D74060];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke;
  v35[3] = &unk_2781AC9B8;
  v35[4] = self;
  v35[5] = &v36;
  [v10 enumerateAttribute:v11 inRange:v7 options:v9 usingBlock:{0, v35}];

  v12 = v37[5];
  v13 = [(ICEditingTextView *)self _icaxLinkEditActions];
  [v12 addObjectsFromArray:v13];

  if (ICInternalSettingsIsPaperKitMathEnabled())
  {
    v14 = [(ICEditingTextView *)self editorController];
    v15 = [v14 note];
    if ([v15 isEditable])
    {
      v16 = [(ICEditingTextView *)self selectedRange];

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      v17 = [(ICEditingTextView *)self editorController];
      v18 = [v17 calculateGraphingController];
      v19 = [(ICEditingTextView *)self selectedRange];
      v14 = [v18 insertionDecisionForExpressionsInRange:{v19, v20}];

      if ([v14 allowsInsertingNewGraph])
      {
        v21 = v37[5];
        v22 = objc_alloc(MEMORY[0x277D75088]);
        v23 = [MEMORY[0x277CCA8D8] mainBundle];
        v24 = [v23 localizedStringForKey:@"Insert Graph" value:&stru_282757698 table:0];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_2;
        v34[3] = &unk_2781AC9E0;
        v34[4] = self;
        v34[5] = v14;
        v25 = [v22 initWithName:v24 actionHandler:v34];
        [v21 addObject:v25];
      }

      if ([v14 allowsAddingToGraph])
      {
        v26 = v37[5];
        v27 = objc_alloc(MEMORY[0x277D75088]);
        v28 = [MEMORY[0x277CCA8D8] mainBundle];
        v29 = [v28 localizedStringForKey:@"Add to Existing Graph" value:&stru_282757698 table:0];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_3;
        v33[3] = &unk_2781AC9E0;
        v33[4] = v14;
        v33[5] = self;
        v30 = [v27 initWithName:v29 actionHandler:v33];
        [v26 addObject:v30];
      }
    }

    else
    {
    }
  }

LABEL_10:
  v31 = [v37[5] copy];
  _Block_object_dispose(&v36, 8);

  return v31;
}

void __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v8 = [*(a1 + 32) icTextLayoutManager];
    v9 = [v7 viewIdentifier];
    [v8 existingAttachmentViewForIdentifier:v9];
  }

  else
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [*(a1 + 32) layoutManager];
    [v8 viewForLayoutManager:v9];
  }
  v10 = ;

  v11 = [v10 accessibilityCustomActions];
  if ([v11 count])
  {
    [*(*(*(a1 + 40) + 8) + 40) ic_addObjectsFromNonNilArray:v11];
    *a5 = 1;
  }
}

uint64_t __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) editorController];
  v3 = [v2 calculateGraphingController];
  [v3 performDecision:*(a1 + 40)];

  return 1;
}

uint64_t __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPrefersExistingGraph:1];
  v2 = [*(a1 + 40) editorController];
  v3 = [v2 calculateGraphingController];
  [v3 performDecision:*(a1 + 32)];

  return 1;
}

- (id)_icaxAttributedStringForRange:(_NSRange *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v5 = [v4 mutableCopy];

    v11.length = [v5 length];
    v11.location = 0;
    v6 = NSIntersectionRange(*v3, v11);
    v7 = [v5 ic_attributedSubstringFromRange:{v6.location, v6.length}];
    v8 = [v7 mutableCopy];

    [v8 removeAttribute:@"ICAXAdditionalTextAttribute" range:{0, objc_msgSend(v8, "length")}];
    v3 = [v8 copy];
  }

  return v3;
}

- (id)_icaxModifiedAttributedStorageString
{
  v3 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];

  if (!v3)
  {
    v4 = [(ICEditingTextView *)self baseAttributedStringForAccessibility];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 mutableCopy];
      v7 = [(ICEditingTextView *)self editorController];
      v8 = [v7 note];
      v9 = [v8 calculateDocumentController];
      v10 = [v6 ic_range];
      [v9 formatExpressionsInAttributedString:v6 range:v10 textStorageOffset:v11 skipStaleExpressions:{0, 1}];

      [(ICEditingTextView *)self _accessibilityConvertStyleAttributesToAccessibility:v6];
      [(ICEditingTextView *)self _accessibilityAddMispellingsToAttributedString:v6];
      [(ICEditingTextView *)self _icaxAddPredictiveTextToAttributedString:v6];
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0;
      v12 = *MEMORY[0x277D35DA8];
      v13 = [v5 length];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke;
      v36[3] = &unk_2781ACA08;
      v40 = v41;
      v14 = v6;
      v37 = v14;
      v38 = self;
      v15 = v5;
      v39 = v15;
      [v15 enumerateAttribute:v12 inRange:0 options:v13 usingBlock:{0, v36}];
      v16 = [v15 length];
      v17 = *MEMORY[0x277D74060];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_2;
      v34[3] = &unk_2781AC8D0;
      v34[4] = self;
      v18 = v14;
      v35 = v18;
      [v15 enumerateAttribute:v17 inRange:0 options:v16 usingBlock:{0, v34}];
      v19 = [v18 ic_range];
      v21 = v20;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_3;
      v32[3] = &unk_2781ACA30;
      v22 = v18;
      v33 = v22;
      [v22 enumerateAttributesInRange:v19 options:v21 usingBlock:{0, v32}];
      v23 = [v22 ic_range];
      v25 = v24;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_4;
      v30[3] = &unk_2781ACA58;
      v30[4] = self;
      v26 = v22;
      v31 = v26;
      [v26 enumerateAttribute:v17 inRange:v23 options:v25 usingBlock:{0, v30}];
      v27 = [v26 copy];
      [(ICEditingTextView *)self set_icaxCachedModifiedAttributedString:v27];

      [(ICEditingTextView *)self icaxUpdateLinkRanges];
      _Block_object_dispose(v41, 8);
    }
  }

  v28 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];

  return v28;
}

void __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v60 = v7;
    v8 = v7;
    v9 = *(*(*(a1 + 56) + 8) + 24) + a3;
    v63 = v8;
    if ([v8 isList])
    {
      if (v9 < v9 + a4)
      {
        v61 = a3;
        v62 = a4;
        v10 = 1;
        v11 = v9;
        while (1)
        {
          v12 = [*(a1 + 32) string];
          v13 = [v12 paragraphRangeForRange:{v11, 0}];
          v15 = v14;

          if ([v8 style] == 103)
          {
            v16 = objc_alloc(MEMORY[0x277CCAB48]);
            v17 = MEMORY[0x277CCACA8];
            v18 = [MEMORY[0x277CCACA8] ic_attachmentCharacterString];
            v19 = [v17 stringWithFormat:@" %@ ", v18];
            v20 = [v16 initWithString:v19];

            v21 = v8;
            v22 = *(*(*(a1 + 56) + 8) + 24);
            v23 = [*(a1 + 40) _icaxTodoButtonForParagraphStyle:v21];
            if (v23)
            {
              v24 = [[ICTodoButtonProxyElement alloc] initWithTodoButton:v23 inTextRange:0 textView:3, *(a1 + 40)];
              [v20 addAttribute:*MEMORY[0x277CE6BD0] value:v24 range:{0, 3}];
            }

            v25 = [v20 length];
            [v20 addAttribute:@"ICAXAdditionalTextAttribute" value:MEMORY[0x277CBEC38] range:{0, v25}];
            [*(a1 + 32) insertAttributedString:v20 atIndex:v22 + v61];
            *(*(*(a1 + 56) + 8) + 24) += [v20 length];
            v64 = [v20 length] + v9;
            v13 += [v20 length];

            v8 = v63;
          }

          else
          {
            v64 = v9;
          }

          v26 = v13 - *(*(*(a1 + 56) + 8) + 24);
          v27 = [v8 style];
          v28 = 0;
          if (v27 <= 101)
          {
            break;
          }

          if (v27 == 102)
          {
            v40 = [*(a1 + 40) textStorage];
            v29 = [v40 attribute:*MEMORY[0x277D36018] atIndex:v26 effectiveRange:0];

            if (v29)
            {
              v30 = ICAccessibilityLocalizedNumber();
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v30 = 0;
            }

            goto LABEL_25;
          }

          v29 = 0;
          v30 = 0;
          if (v27 == 103)
          {
            v34 = [*(a1 + 40) editorController];
            v35 = [v34 icaxTextController];
            v36 = [*(a1 + 40) textStorage];
            v28 = [v35 todoForRange:v26 inTextStorage:{0, v36}];

            LOBYTE(v35) = [v28 done];
            v37 = [MEMORY[0x277CCA8D8] mainBundle];
            v38 = v37;
            if (v35)
            {
              v39 = @"checklist, completed";
            }

            else
            {
              v39 = @"checklist, incomplete";
            }

            v30 = [v37 localizedStringForKey:v39 value:&stru_282757698 table:0];

LABEL_24:
            v29 = 0;
          }

LABEL_25:
          v41 = v15;
          if ([v30 length] && v15)
          {
            v42 = [*(a1 + 48) string];
            v43 = [v42 substringWithRange:{v15 + v26 - 1, 1}];
            v44 = [v43 characterAtIndex:0];

            v45 = [MEMORY[0x277CCA900] newlineCharacterSet];
            LODWORD(v44) = [v45 characterIsMember:v44];

            v41 = v15 - v44;
            v8 = v63;
          }

          if (!v29)
          {
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          }

          v9 = v64;
          if (v30)
          {
            [*(a1 + 32) addAttribute:*MEMORY[0x277CE6C48] value:v30 range:{v13, v41}];
          }

          if ([v8 style] != 103)
          {
            [*(a1 + 32) addAttribute:*MEMORY[0x277CE6C40] value:v29 range:{v13, v41}];
          }

          ++v10;
          v11 = v13 + v15;

          a4 = v62;
          if (v11 >= v64 + v62)
          {
            goto LABEL_41;
          }
        }

        if (v27 == 100)
        {
          v31 = [MEMORY[0x277CCA8D8] mainBundle];
          v32 = v31;
          v33 = @"bullet";
        }

        else
        {
          v29 = 0;
          v30 = 0;
          if (v27 != 101)
          {
            goto LABEL_25;
          }

          v31 = [MEMORY[0x277CCA8D8] mainBundle];
          v32 = v31;
          v33 = @"dash";
        }

        v30 = [v31 localizedStringForKey:v33 value:&stru_282757698 table:0];

        v28 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v46 = [MEMORY[0x277D36978] icaxStyleDescriptionForNamedStyle:{objc_msgSend(v8, "style")}];
      if (a4)
      {
        v47 = [*(a1 + 32) string];
        v48 = [v47 substringWithRange:{a4 + v9 - 1, 1}];
        v49 = [v48 characterAtIndex:0];

        v50 = [MEMORY[0x277CCA900] newlineCharacterSet];
        LODWORD(v48) = [v50 characterIsMember:v49];

        v51 = a4 - v48;
      }

      else
      {
        v51 = 0;
      }

      [*(a1 + 32) addAttribute:*MEMORY[0x277CE6C98] value:v46 range:{v9, v51}];
      v52 = *(a1 + 32);
      v53 = *MEMORY[0x277CE6C28];
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v63, "indent")}];
      v55 = v52;
      v8 = v63;
      [v55 addAttribute:v53 value:v54 range:{v9, v51}];
    }

LABEL_41:
    if ([v8 isBlockQuote])
    {
      v56 = *(a1 + 32);
      v57 = *MEMORY[0x277CE6BD8];
      v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v63, "blockQuoteLevel")}];
      v59 = v57;
      v8 = v63;
      [v56 addAttribute:v59 value:v58 range:{v9, a4}];
    }

    v7 = v60;
  }
}

void __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [*(a1 + 32) _icaxRangeInModifiedAttributedString:*(a1 + 40) forRange:{a3, a4}];
    if (!ICInternalSettingsIsTextKit2Enabled())
    {
      v14 = *MEMORY[0x277CE6BD0];
      v15 = *(a1 + 40);
      v13 = [*(a1 + 32) layoutManager];
      v16 = [v8 viewForLayoutManager:v13];
      [v15 addAttribute:v14 value:v16 range:{v9, 1}];

LABEL_9:
      goto LABEL_10;
    }

    v10 = [*(a1 + 32) icTextLayoutManager];
    v11 = [v8 viewIdentifier];
    v12 = [v10 existingAttachmentViewForIdentifier:v11];
LABEL_6:
    v13 = v12;

    if (v13)
    {
      [*(a1 + 40) addAttribute:*MEMORY[0x277CE6BD0] value:v13 range:{v9, 1}];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [*(a1 + 32) _icaxRangeInModifiedAttributedString:*(a1 + 40) forRange:{a3, a4}];
    v10 = [*(a1 + 32) _icaxPencilKitAttachmentsDict];
    v11 = [v8 attachmentIdentifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  v8 = ICDynamicCast();
  v17 = [*(a1 + 32) _icaxRangeInModifiedAttributedString:*(a1 + 40) forRange:{a3, a4}];
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v19 = *(a1 + 32);
  if (IsTextKit2Enabled)
  {
    v20 = [v19 icTextLayoutManager];
    v21 = [v8 viewIdentifier];
    v22 = [v20 existingAttachmentViewForIdentifier:v21];
  }

  else
  {
    v20 = [v19 layoutManager];
    v22 = [v8 viewForLayoutManager:v20];
  }

  if (v22)
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x277CE6BD0] value:v22 range:{v17, 1}];
  }

  objc_opt_class();
  v23 = ICDynamicCast();
  v24 = v23;
  if (v23)
  {
    v25 = [v23 expressionRangeInTextStorage];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = v25;
      v28 = v26;
      v29 = v25 + v26;
      v30 = [*(a1 + 40) ic_range];
      if (v29 <= v30 + v31)
      {
        v33 = *MEMORY[0x277D76508];
        v34[0] = MEMORY[0x277CBEC38];
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        [*(a1 + 40) addAttributes:v32 range:{v27, v28}];
      }
    }
  }

LABEL_10:
LABEL_11:
}

void __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [ICTextViewAccessibility icaxEmphasisStyleNameFromAttributes:?];
  if ([v7 length])
  {
    v8 = MEMORY[0x277CE6C98];
    v9 = [v12 objectForKeyedSubscript:*MEMORY[0x277CE6C98]];
    v11 = *MEMORY[0x277D369D0];
    v10 = __ICAccessibilityStringForVariables();
    [*(a1 + 32) addAttribute:*v8 value:v10 range:{a3, a4, v7, v11}];
  }
}

void __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v20 = ICDynamicCast();

  v4 = [v20 localizedError];
  if ([v4 length])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v20 expressionRangeInTextStorage];
    v9 = [v5 _icaxRangeInModifiedAttributedString:v6 forRange:{v7, v8}];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      v12 = v10;
      v13 = v9 + v10;
      v14 = [*(a1 + 40) ic_range];
      if (v13 <= v14 + v15)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCA8D8] mainBundle];
        v18 = [v17 localizedStringForKey:@"Calculation error value:%@" table:{&stru_282757698, 0}];
        v19 = [v16 localizedStringWithFormat:v18, v4];

        [*(a1 + 40) addAttribute:*MEMORY[0x277CE6C98] value:v19 range:{v11, v12}];
      }
    }
  }
}

- (void)_icaxAddParticipantEditHighlightsToString:(id)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v71[3] = *MEMORY[0x277D85DE8];
  v51 = a3;
  v7 = [(ICEditingTextView *)self editorController];
  v8 = [v7 note];

  v61 = v8;
  v59 = [v8 collaborationColorManager];
  objc_opt_class();
  v9 = [(ICEditingTextView *)self textStorage];
  v10 = ICDynamicCast();

  v11 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v12 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, v11];
  v14 = v13;

  v58 = v10;
  v15 = [v10 mutableString];
  v16 = [v15 copy];

  v54 = v14;
  v17 = v12 + v14;
  v18 = objc_alloc(MEMORY[0x277CCAB48]);
  v52 = self;
  v19 = [(ICEditingTextView *)self textStorage];
  v20 = [v19 string];
  v57 = [v18 initWithString:v20];

  v55 = v12;
  v56 = *MEMORY[0x277CE6B88];
  if (v12 < v17)
  {
    v21 = 0x277CCA000uLL;
    v22 = v54;
    v23 = v12;
    v53 = v16;
    while (1)
    {
      v24 = [v16 characterAtIndex:v23];
      v25 = [*(v21 + 2304) newlineCharacterSet];
      LOBYTE(v24) = [v25 characterIsMember:v24];

      if ((v24 & 1) == 0)
      {
        break;
      }

LABEL_10:
      ++v23;
      if (!--v22)
      {
        goto LABEL_11;
      }
    }

    v26 = [v58 editAtIndex:v23];
    v27 = [v26 replicaID];
    v28 = [v61 userIDForReplicaID:v27];

    [v59 highlightColorForUserID:v28 note:v61];
    v67 = v66 = v28;
    v29 = [v59 participantAXDisplayNameForUserID:v28 forNote:v61];
    v30 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [v30 localizedStringForKey:@"added by %@" value:&stru_282757698 table:0];

    v64 = v31;
    v65 = v29;
    v63 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v31, v29];
    v32 = [MEMORY[0x277CCA8D8] mainBundle];
    v33 = [v32 localizedStringForKey:@"at %@" value:&stru_282757698 table:0];

    v34 = MEMORY[0x277CCACA8];
    v35 = [v26 timestamp];
    v36 = [v35 ic_briefFormattedDateForAccessibility];
    v62 = v33;
    v37 = v33;
    v38 = v26;
    v39 = [v34 localizedStringWithFormat:v37, v36];

    v40 = [v67 icaxApproximateColorDescription];
    v41 = [MEMORY[0x277CCA8D8] mainBundle];
    v42 = [v41 localizedStringForKey:@"%@ highlight" value:&stru_282757698 table:0];

    v43 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v42, v40];
    v44 = [v38 timestamp];
    if (v44 && ([v38 replicaID], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "trustsTimestampsFromReplicaID:")))
    {
      v45 = v63;
      v71[0] = v63;
      v71[1] = v39;
      v71[2] = v43;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
    }

    else
    {
      v45 = v63;
      v70[0] = v63;
      v70[1] = v43;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      if (!v44)
      {
LABEL_9:

        [v57 addAttribute:v56 value:v46 range:{v55, v54}];
        v16 = v53;
        v21 = 0x277CCA000;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
  [v57 ic_range];
  v47 = TSUClampRange();
  v49 = v48;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __93__ICEditingTextView_ICAccessibility_iOS___icaxAddParticipantEditHighlightsToString_forRange___block_invoke;
  v68[3] = &unk_2781AC8D0;
  v68[4] = v52;
  v69 = v51;
  v50 = v51;
  [v57 enumerateAttribute:v56 inRange:v47 options:v49 usingBlock:{0, v68}];
}

void __93__ICEditingTextView_ICAccessibility_iOS___icaxAddParticipantEditHighlightsToString_forRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  if (v12)
  {
    v8 = *(a1 + 32);
    v9 = [v8 _icaxModifiedAttributedStorageString];
    [v8 _icaxRangeInModifiedAttributedString:v9 forRange:{a3, a4}];

    [*(a1 + 40) ic_range];
    v10 = TSUClampRange();
    [*(a1 + 40) addAttribute:*MEMORY[0x277CE6B88] value:v12 range:{v10, v11}];
  }
}

- (_NSRange)_icaxRangeInModifiedAttributedString:(id)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(ICEditingTextView *)self textStorage];
  v9 = [v8 length];

  v10 = [v7 length];
  v11 = v10;
  if (location == v9)
  {
    length = 0;
  }

  else if (v10)
  {
    v11 = 0;
    v12 = location;
    v13 = length;
    while (v12)
    {
      v14 = [v7 attribute:@"ICAXAdditionalTextAttribute" atIndex:v11 effectiveRange:0];
      v15 = v14 == 0;
      v16 = v14 != 0;

      if (length)
      {
        LODWORD(v17) = v16;
      }

      else
      {
        LODWORD(v17) = 0;
      }

      if (v11 >= location)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v13 += v17;
      v12 -= v15;
      if (++v11 >= [v7 length])
      {
        v11 = 0;
        break;
      }
    }

    length = v13;
  }

  v18 = v11;
  v19 = length;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)_icaxRangeInTextStorageForRange:(_NSRange)a3 fromModifiedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = 0;
  if ([v7 length])
  {
    v9 = location + length;
    if (location + length)
    {
      v8 = 0;
      v10 = 0;
      do
      {
        v11 = [v7 attribute:@"ICAXAdditionalTextAttribute" atIndex:v10 effectiveRange:0];

        v12 = length - (v10 >= location);
        if (!length)
        {
          v12 = 0;
        }

        if (v10 >= location)
        {
          v13 = v8;
        }

        else
        {
          v13 = v8 + 1;
        }

        if (v11)
        {
          length = v12;
        }

        else
        {
          v8 = v13;
        }

        ++v10;
      }

      while (v10 < [v7 length] && v10 < v9);
    }
  }

  v14 = [(ICEditingTextView *)self textStorage];
  v15 = [v14 length];

  if (v8 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v8;
  }

  v17 = [(ICEditingTextView *)self textStorage];
  v18 = [v17 length] - v16;

  if (length >= (v18 & ~(v18 >> 63)))
  {
    length = v18 & ~(v18 >> 63);
  }

  v19 = v16;
  v20 = length;
  result.length = v20;
  result.location = v19;
  return result;
}

- (unint64_t)_icaxModifiedPositionForPosition:(unint64_t)a3
{
  v5 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v6 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:v5 forRange:a3, 0];

  return v6;
}

- (unint64_t)_icaxPositionForModifiedPosition:(unint64_t)a3
{
  v5 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v6 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:a3 fromModifiedString:0, v5];

  return v6;
}

- (unint64_t)_icaxLinePositionForPosition:(unint64_t)a3 start:(BOOL)a4
{
  v4 = a4;
  v7 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v8 = [v7 length];
  if (v8 - 1 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8 - 1;
  }

  v10 = [(ICEditingTextView *)self _icaxPositionForModifiedPosition:v9];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3010000000;
  v34 = &unk_21552D17E;
  v35 = xmmword_2154BBE70;
  v11 = [(ICEditingTextView *)self textStorage];
  v12 = [v11 length];

  v13 = v12 - v10;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v14 = [(ICEditingTextView *)self textLayoutManager];
    v15 = [v14 ic_textRangeForRange:{v10, v13}];

    v16 = [(ICEditingTextView *)self textLayoutManager];
    v17 = [v15 location];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke;
    v30[3] = &unk_2781ACAA8;
    v30[4] = self;
    v30[5] = &v31;
    v30[6] = v10;
    v18 = [v16 enumerateTextLayoutFragmentsFromLocation:v17 options:0 usingBlock:v30];
  }

  else
  {
    v19 = [(ICEditingTextView *)self layoutManager];
    v20 = [v19 glyphRangeForCharacterRange:v10 actualCharacterRange:{v13, 0}];
    v22 = v21;

    v23 = [(ICEditingTextView *)self layoutManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke_3;
    v29[3] = &unk_2781ACAD0;
    v29[4] = self;
    v29[5] = &v31;
    v29[6] = v10;
    [v23 enumerateLineFragmentsForGlyphRange:v20 usingBlock:{v22, v29}];
  }

  v24 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:v7 forRange:v32[4], v32[5]];
  if (v4)
  {
    v25 = v24;
  }

  else
  {
    v26 = [(ICEditingTextView *)self _icaxModifiedPositionForPosition:v32[5] + v32[4]];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v27 = [(ICEditingTextView *)self isFirstResponder];
    }

    else
    {
      v27 = 1;
    }

    v25 = v26 - ((v26 < [v7 length]) & v27);
  }

  _Block_object_dispose(&v31, 8);

  return v25;
}

uint64_t __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v3 = [*(a1 + 32) textLayoutManager];
  v4 = [v36 rangeInElement];
  v5 = [v3 ic_rangeForTextRange:v4];
  v7 = v6;

  v8 = *(a1 + 48);
  v30 = v7;
  v31 = v5;
  v9 = v5 > v8 || v8 >= v5 + v7;
  v10 = v9;
  v32 = v10;
  if (!v9)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [v36 textLineFragments];
    v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v11)
    {
      v35 = *v43;
      v34 = *MEMORY[0x277D74118];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v41 = 0;
          v14 = [v13 attributedString];
          v15 = [v13 attributedString];
          v16 = [v15 ic_range];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke_2;
          v37[3] = &unk_2781ACA80;
          v37[4] = &v38;
          [v14 enumerateAttribute:v34 inRange:v16 options:v17 usingBlock:{0, v37}];

          v18 = [v13 characterRange];
          v20 = v19;
          v21 = [*(a1 + 32) textLayoutManager];
          v22 = [v36 rangeInElement];
          v23 = [v21 ic_rangeForTextRange:v22];
          v24 = v39[3];

          v25 = v23 + v18;
          v26 = *(a1 + 48);
          if (v23 + v18 <= v26 && v26 < v20 - v24 + v25)
          {
            v28 = *(*(a1 + 40) + 8);
            *(v28 + 32) = v25;
            *(v28 + 40) = v20 - v24;
            _Block_object_dispose(&v38, 8);

            goto LABEL_19;
          }

          _Block_object_dispose(&v38, 8);
        }

        v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v27 = *(*(a1 + 40) + 8);
    *(v27 + 32) = v31;
    *(v27 + 40) = v30;
  }

LABEL_19:

  return v32;
}

void __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = a2;
  v7 = [v14 textLists];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v14 textLists];
    v10 = [v9 firstObject];

    v11 = [v14 tabStops];
    v12 = [v11 count];
    v13 = [v10 markerFormat];
    *(*(*(a1 + 32) + 8) + 24) = [v13 length] + v12;
  }

  *a5 = 1;
}

void __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [*(a1 + 32) layoutManager];
  v10 = [v9 characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v12 = v11;

  v13 = *(a1 + 48);
  if (v10 <= v13 && v13 < v10 + v12)
  {
    v15 = *(*(a1 + 40) + 8);
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    *a5 = 1;
  }
}

- (id)elementsForAccessibilityRotorType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeLinks"])
  {
    v5 = [(ICEditingTextView *)self _icaxLinkElements];
  }

  else
  {
    v5 = 0;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeChecklist"])
  {
    v6 = [(ICEditingTextView *)self _icaxTodoElements];

    v5 = v6;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeAttachments"])
  {
    v7 = [(ICEditingTextView *)self _icaxAttachmentElementsForRotor];

    v5 = v7;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeTables"])
  {
    v8 = [(ICEditingTextView *)self _icaxTableElementsForRotor];

    v5 = v8;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeTags"])
  {
    v9 = [(ICEditingTextView *)self _icaxTagsElementsForRotor];

    v5 = v9;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeMentions"])
  {
    v10 = [(ICEditingTextView *)self _icaxMentionsElementsForRotor];

    v5 = v10;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeCalculationResults"])
  {
    v11 = [(ICEditingTextView *)self _icaxCalculationResultElementsForRotor];

    v5 = v11;
  }

  if ([v4 isEqualToString:@"ICAccessibilityRotorTypeCalculationErrors"])
  {
    v12 = [(ICEditingTextView *)self _icaxCalculationErrorElementsForRotor];

    v5 = v12;
  }

  return v5;
}

- (id)accessibilityCustomRotors
{
  v13.receiver = self;
  v13.super_class = ICEditingTextView;
  v3 = [(ICEditingTextView *)&v13 accessibilityCustomRotors];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(ICEditingTextView *)self editorController];
  v8 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v8 setNoteEditorViewController:v7];

  v9 = +[ICAccessibilityCustomRotorController sharedInstance];
  v10 = [v9 sharedTextViewRotors];
  v11 = [v6 arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (id)_icaxAttachmentElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __73__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __73__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElementsForRotor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v19 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v19;
      if (isKindOfClass)
      {
        goto LABEL_16;
      }

      IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
      v8 = *(a1 + 32);
      if (IsTextKit2Enabled)
      {
        v9 = [v8 textLayoutManager];
        v10 = [*(a1 + 32) textLayoutManager];
        v11 = [v10 documentRange];
        v12 = [v11 location];
        v13 = [v9 locationFromLocation:v12 withOffset:a3];

        v14 = *(a1 + 32);
        v15 = [v14 textContainer];
        v16 = [v19 viewProviderForParentView:v14 location:v13 textContainer:v15];
        v17 = [v16 view];
      }

      else
      {
        v13 = [v8 layoutManager];
        v17 = [v19 viewForLayoutManager:v13];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _addPencilKitAccessibilityElementIfNeededForTextAttachment:v19 toAttachmentElements:*(a1 + 40)];
      }

      else if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) addObject:v17];
      }

      else
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICEditingTextView(ICAccessibility_iOS) _icaxAttachmentElementsForRotor]_block_invoke" simulateCrash:1 showAlert:0 format:{@"%@ does not conform to 'ICAccessibilityRotorSearchElement'", v17}];
      }
    }

    else
    {
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();
      v5 = v19;
      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }

      [*(a1 + 32) _addPencilKitAccessibilityElementIfNeededForTextAttachment:v19 toAttachmentElements:*(a1 + 40)];
    }

    v5 = v19;
  }

LABEL_16:
}

- (id)_icaxTableElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__ICEditingTextView_ICAccessibility_iOS___icaxTableElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __68__ICEditingTextView_ICAccessibility_iOS___icaxTableElementsForRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v16 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v16;
    if (isKindOfClass)
    {
      IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
      v6 = *(a1 + 32);
      if (IsTextKit2Enabled)
      {
        v7 = [v6 icTextLayoutManager];
        v8 = [v16 viewIdentifier];
        v9 = [v7 existingAttachmentViewForIdentifier:v8];
      }

      else
      {
        v7 = [v6 layoutManager];
        v9 = [v16 viewForLayoutManager:v7];
      }

      objc_opt_class();
      v10 = [v9 accessibilityElements];
      v11 = [v10 firstObject];
      v12 = ICCheckedDynamicCast();

      v13 = [v12 tableAXController];
      LODWORD(v11) = [v13 isEditable];

      if (v11)
      {
        v14 = [v12 tableAXController];
        v15 = [v14 cellElementForColumnIndex:0 rowIndex:0];

        [*(a1 + 40) ic_addNonNilObject:v15];
      }

      v3 = v16;
    }
  }
}

- (id)_icaxTagsElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__ICEditingTextView_ICAccessibility_iOS___icaxTagsElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __67__ICEditingTextView_ICAccessibility_iOS___icaxTagsElementsForRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  if (v10)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    v5 = *(a1 + 32);
    if (IsTextKit2Enabled)
    {
      v6 = [v5 icTextLayoutManager];
      v7 = [v10 viewIdentifier];
      v8 = [v6 existingAttachmentViewForIdentifier:v7];
      v9 = ICDynamicCast();
    }

    else
    {
      v6 = [v5 layoutManager];
      v7 = [v10 viewForLayoutManager:v6];
      v9 = ICDynamicCast();
    }

    [*(a1 + 40) ic_addNonNilObject:v9];
  }
}

- (id)_icaxMentionsElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__ICEditingTextView_ICAccessibility_iOS___icaxMentionsElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __71__ICEditingTextView_ICAccessibility_iOS___icaxMentionsElementsForRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  if (v10)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    v5 = *(a1 + 32);
    if (IsTextKit2Enabled)
    {
      v6 = [v5 icTextLayoutManager];
      v7 = [v10 viewIdentifier];
      v8 = [v6 existingAttachmentViewForIdentifier:v7];
      v9 = ICDynamicCast();
    }

    else
    {
      v6 = [v5 layoutManager];
      v7 = [v10 viewForLayoutManager:v6];
      v9 = ICDynamicCast();
    }

    [*(a1 + 40) ic_addNonNilObject:v9];
  }
}

- (id)_icaxCalculationResultElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __80__ICEditingTextView_ICAccessibility_iOS___icaxCalculationResultElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __80__ICEditingTextView_ICAccessibility_iOS___icaxCalculationResultElementsForRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  if (v10)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    v5 = *(a1 + 32);
    if (IsTextKit2Enabled)
    {
      v6 = [v5 icTextLayoutManager];
      v7 = [v10 viewIdentifier];
      v8 = [v6 existingAttachmentViewForIdentifier:v7];
      v9 = ICDynamicCast();
    }

    else
    {
      v6 = [v5 layoutManager];
      v7 = [v10 viewForLayoutManager:v6];
      v9 = ICDynamicCast();
    }

    [*(a1 + 40) ic_addNonNilObject:v9];
  }
}

- (id)_icaxCalculationErrorElementsForRotor
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [v3 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __79__ICEditingTextView_ICAccessibility_iOS___icaxCalculationErrorElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [v3 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

void __79__ICEditingTextView_ICAccessibility_iOS___icaxCalculationErrorElementsForRotor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v13 = ICDynamicCast();

  v4 = v13;
  if (v13)
  {
    v5 = [v13 attachment];
    v6 = [v5 isValidCalculateAttachment];

    v4 = v13;
    if ((v6 & 1) == 0)
    {
      IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
      objc_opt_class();
      v8 = *(a1 + 32);
      if (IsTextKit2Enabled)
      {
        v9 = [v8 icTextLayoutManager];
        v10 = [v13 viewIdentifier];
        v11 = [v9 existingAttachmentViewForIdentifier:v10];
        v12 = ICDynamicCast();
      }

      else
      {
        v9 = [v8 layoutManager];
        v10 = [v13 viewForLayoutManager:v9];
        v12 = ICDynamicCast();
      }

      [*(a1 + 40) ic_addNonNilObject:v12];
      v4 = v13;
    }
  }
}

- (void)_icaxMarkTodoIncompleteForCurrentSelection
{
  v8 = [(ICEditingTextView *)self editorController];
  v3 = [v8 icaxTextController];
  v4 = [(ICEditingTextView *)self selectedRange];
  v6 = v5;
  v7 = [(ICEditingTextView *)self textStorage];
  [v3 setDone:0 range:v4 inTextStorage:{v6, v7}];
}

- (void)_icaxMarkTodoCompleteForCurrentSelection
{
  v8 = [(ICEditingTextView *)self editorController];
  v3 = [v8 icaxTextController];
  v4 = [(ICEditingTextView *)self selectedRange];
  v6 = v5;
  v7 = [(ICEditingTextView *)self textStorage];
  [v3 setDone:1 range:v4 inTextStorage:{v6, v7}];
}

- (void)_icaxChecklistMarkAllComplete
{
  v5 = [(ICEditingTextView *)self editorController];
  v3 = [v5 icaxTextController];
  v4 = [(ICEditingTextView *)self ic_selectedRanges];
  [v3 markAllChecklistItemsCompleted:1 inTextview:self forSelectedRanges:v4];
}

- (void)_icaxChecklistUnMarkAllComplete
{
  v5 = [(ICEditingTextView *)self editorController];
  v3 = [v5 icaxTextController];
  v4 = [(ICEditingTextView *)self ic_selectedRanges];
  [v3 markAllChecklistItemsCompleted:0 inTextview:self forSelectedRanges:v4];
}

- (void)_icaxChecklistDeleteChecked
{
  v5 = [(ICEditingTextView *)self editorController];
  v3 = [v5 icaxTextController];
  v4 = [(ICEditingTextView *)self ic_selectedRanges];
  [v3 removeChecklistItemsMarkedCompleted:1 inTextView:self forRanges:v4];
}

- (void)_icaxChecklistSortCheckedToBottom
{
  v6 = [(ICEditingTextView *)self editorController];
  v3 = [v6 icaxTextController];
  v4 = [(ICEditingTextView *)self selectedRange];
  [v3 moveCheckedChecklistsToBottomInTextView:self forRange:v4 animated:{v5, 1}];
}

- (void)textStorageDidPerformMerge:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(ICEditingTextView *)self icaxClearCaches];
  v3 = *MEMORY[0x277D74028];
  v5 = *MEMORY[0x277D36440];
  v6[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  UIAccessibilityPostNotification(v3, v4);
}

- (id)childElementsForAccessibilityReparenting
{
  [(ICEditingTextView *)self contentOffset];
  v4 = v3;
  [(ICEditingTextView *)self _icaxLastOffsetForBuildingReparentingCache];
  if (vabdd_f64(v4, v5) > 200.0)
  {
    [(ICEditingTextView *)self icaxClearCachedChildrenForReparenting];
  }

  v6 = [(ICEditingTextView *)self _icaxCachedChildrenForReparenting];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v8 = [(ICEditingTextView *)self _accessibleSubviews];
    [v7 addObjectsFromArray:v8];

    v9 = [(ICEditingTextView *)self textStorage];
    v10 = *MEMORY[0x277D74060];
    v11 = [(ICEditingTextView *)self textStorage];
    v12 = [v11 length];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __82__ICEditingTextView_ICAccessibility_iOS__childElementsForAccessibilityReparenting__block_invoke;
    v46[3] = &unk_2781AC8D0;
    v46[4] = self;
    v13 = v7;
    v47 = v13;
    [v9 enumerateAttribute:v10 inRange:0 options:v12 usingBlock:{0, v46}];

    v45 = v13;
    v14 = [v13 array];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

      v14 = v15;
    }

    v44 = v14;
    v16 = [v14 mutableCopy];
    v17 = [v16 count];
    if (v17)
    {
      v18 = v17;
      for (i = 0; i < v18; ++i)
      {
        v20 = [v16 objectAtIndexedSubscript:i];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = 0;
          while (1)
          {
            if (i != v22)
            {
              v23 = [v16 objectAtIndexedSubscript:v22];
              objc_opt_class();
              v24 = objc_opt_isKindOfClass();

              v25 = [v16 objectAtIndexedSubscript:i];
              [v25 accessibilityFrame];
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v34 = [v16 objectAtIndexedSubscript:v22];
              [v34 accessibilityFrame];
              v50.origin.x = v35;
              v50.origin.y = v36;
              v50.size.width = v37;
              v50.size.height = v38;
              v49.origin.x = v27;
              v49.origin.y = v29;
              v49.size.width = v31;
              v49.size.height = v33;
              v39 = CGRectEqualToRect(v49, v50);

              if ((v24 & 1) != 0 && v39)
              {
                break;
              }
            }

            if (v18 == ++v22)
            {
              goto LABEL_16;
            }
          }

          [v16 exchangeObjectAtIndex:i withObjectAtIndex:v22];
          [v16 removeObjectAtIndex:v22];
          --v18;
        }

LABEL_16:
        ;
      }
    }

    v40 = [v16 copy];

    [(ICEditingTextView *)self set_icaxCachedChildrenForReparenting:v40];
    [(ICEditingTextView *)self contentOffset];
    [(ICEditingTextView *)self set_icaxLastOffsetForBuildingReparentingCache:v41];
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }

  v42 = [(ICEditingTextView *)self _icaxCachedChildrenForReparenting];

  return v42;
}

void __82__ICEditingTextView_ICAccessibility_iOS__childElementsForAccessibilityReparenting__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    v6 = *(a1 + 32);
    if (IsTextKit2Enabled)
    {
      v7 = [v6 icTextLayoutManager];
      v8 = [v4 viewIdentifier];
      v9 = [v7 existingAttachmentViewForIdentifier:v8];
      v10 = ICDynamicCast();
    }

    else
    {
      v7 = [v6 layoutManager];
      v8 = [v7 viewForTextAttachment:v4];
      v10 = ICDynamicCast();
    }
  }

  else
  {
    v10 = 0;
  }

  if ([v10 isAccessibilityElement])
  {
    v11 = [v10 superview];

    if (v11)
    {
      [*(a1 + 40) addObject:v10];
      goto LABEL_25;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 _accessibleSubviews];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 40) addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v18 = [v10 accessibilityElements];
    if (v18)
    {
      [*(a1 + 40) addObjectsFromArray:v18];
    }

LABEL_22:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [*(a1 + 32) _icaxPencilKitAttachmentsDict];

      if (!v19)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [*(a1 + 32) set_icaxPencilKitAttachmentsDict:v20];
      }

      v21 = [v4 attachment];
      v12 = [v21 identifier];

      if (v12)
      {
        v22 = [*(a1 + 32) _icaxPencilKitAttachmentsDict];
        v18 = [v22 objectForKeyedSubscript:v12];

        if (!v18)
        {
          v18 = [[ICPencilKitAttachmentAccessibilityElement alloc] initWithTextAttachment:v4 textView:*(a1 + 32)];
          if (v18)
          {
            v23 = [*(a1 + 32) _icaxPencilKitAttachmentsDict];
            [v23 setObject:v18 forKeyedSubscript:v12];

            v24 = [(ICPencilKitAttachmentAccessibilityElement *)v18 resizeHandleElements];
            if ([v24 count])
            {
              [*(a1 + 40) addObjectsFromArray:v24];
            }

            [*(a1 + 40) addObject:v18];
          }
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_25:
}

- (id)accessibilityDragSourceDescriptors
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (([(ICEditingTextView *)self isEditing]& 1) != 0)
  {
    v27.receiver = self;
    v27.super_class = ICEditingTextView;
    v3 = [(ICEditingTextView *)&v27 accessibilityDragSourceDescriptors];
    goto LABEL_24;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = MEMORY[0x277D76498];
LABEL_7:
    v5 = *v4;
    goto LABEL_9;
  }

  if (UIAccessibilityIsSwitchControlRunning())
  {
    v4 = MEMORY[0x277D76490];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:
  v6 = UIAccessibilityFocusedElement(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = [v7 tableAXController];
    v9 = [v8 hostingTableAttachmentView];

    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v6;
        v25 = [v9 accessibilityLabel];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_22;
        }

        v9 = v6;
        v25 = [v9 icaxDragSourceName];
      }

      v11 = v25;
      if (v9)
      {
        goto LABEL_14;
      }

LABEL_22:
      v3 = 0;
      goto LABEL_23;
    }

    v7 = v6;
    v9 = [v7 attachmentDrawingView];
    v10 = v7;
  }

  v11 = [v10 accessibilityLabel];

  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_14:
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"Drag %@" value:&stru_282757698 table:0];

  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v11];
  [v9 center];
  v16 = v15;
  v18 = v17;
  v19 = [v9 superview];
  [(ICEditingTextView *)self convertPoint:v19 fromView:v16, v18];
  v21 = v20;
  v23 = v22;

  v24 = [objc_alloc(MEMORY[0x277D750B8]) initWithName:v14 point:self inView:{v21, v23}];
  v28[0] = v24;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

LABEL_23:
LABEL_24:

  return v3;
}

- (id)accessibilityDropPointDescriptors
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (![(ICEditingTextView *)self isEditable])
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (([(ICEditingTextView *)self isEditing]& 1) != 0)
  {
    v22.receiver = self;
    v22.super_class = ICEditingTextView;
    v3 = [(ICEditingTextView *)&v22 accessibilityDropPointDescriptors];
    goto LABEL_25;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = MEMORY[0x277D76498];
LABEL_9:
    v5 = *v4;
    goto LABEL_11;
  }

  if (UIAccessibilityIsSwitchControlRunning())
  {
    v4 = MEMORY[0x277D76490];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:
  v6 = UIAccessibilityFocusedElement(v5);
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = [v9 tableAXController];
    v11 = [v10 hostingTableAttachmentView];

    v12 = v11;
LABEL_15:
    v13 = [v12 accessibilityLabel];

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v11 = [v9 attachmentDrawingView];
    v12 = v9;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    v13 = [v11 accessibilityLabel];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_23;
    }

    v11 = v6;
    v13 = [v11 icaxDragSourceName];
    [v11 bounds];
    MidX = CGRectGetMidX(v25);
    [v11 bounds];
    [(ICEditingTextView *)self convertPoint:v11 fromView:MidX, CGRectGetMinY(v26)];
    v7 = v19;
    v8 = v20;
  }

LABEL_16:
  if (!v11)
  {
LABEL_23:
    v3 = 0;
    goto LABEL_24;
  }

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"Drop before %@" value:&stru_282757698 table:0];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, v13];
  v17 = [objc_alloc(MEMORY[0x277D750B8]) initWithName:v16 point:self inView:{v7, v8}];
  v23[0] = v17;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

LABEL_24:
LABEL_25:

  return v3;
}

- (id)_icaxCurrentParagraph
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [v3 string];
  v5 = [(ICEditingTextView *)self selectedRange];
  v7 = [v4 paragraphRangeForRange:{v5 + v6, 0}];
  v9 = v8;

  v10 = [(ICEditingTextView *)self textStorage];
  v11 = [v10 string];
  v12 = [v11 substringWithRange:{v7, v9}];

  return v12;
}

- (_NSRange)_icaxRangeOfAttachment:(id)a3
{
  v3 = a3;
  v4 = [v3 note];
  v5 = [v4 rangeForAttachment:v3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)_icaxFirstTextAttachmentInRange:(_NSRange)a3
{
  location = a3.location;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  if (a3.length)
  {
    length = a3.length;
    v5 = [(ICEditingTextView *)self textStorage];
    v6 = *MEMORY[0x277D74060];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ICEditingTextView_ICAccessibility_iOS___icaxFirstTextAttachmentInRange___block_invoke;
    v13[3] = &unk_2781ABC80;
    v13[4] = &v14;
    [v5 enumerateAttribute:v6 inRange:location options:length usingBlock:{0, v13}];
  }

  else
  {
    v7 = [(ICEditingTextView *)self textStorage];
    v5 = [v7 attributesAtIndex:location effectiveRange:0];

    objc_opt_class();
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D74060]];
    v9 = ICDynamicCast();
    v10 = v15[5];
    v15[5] = v9;
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __74__ICEditingTextView_ICAccessibility_iOS___icaxFirstTextAttachmentInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v7 = a2;
    objc_opt_class();
    v8 = ICDynamicCast();

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a5 = 1;
  }
}

- (id)_icaxAttachmentViewForCurrentSelectedRange
{
  v3 = [(ICEditingTextView *)self selectedRange];
  v5 = [(ICEditingTextView *)self _icaxFirstTextAttachmentInRange:v3, v4];
  if (v5)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    if (IsTextKit2Enabled)
    {
      v7 = [(ICEditingTextView *)self icTextLayoutManager];
      v8 = [v5 viewIdentifier];
      v9 = [v7 existingAttachmentViewForIdentifier:v8];
      v10 = ICDynamicCast();
    }

    else
    {
      v7 = [(ICEditingTextView *)self layoutManager];
      v8 = [v7 viewForBaseTextAttachmentNoCreate:v5];
      v10 = ICDynamicCast();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_icaxAttachmentElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICEditingTextView *)self textStorage];
  v5 = *MEMORY[0x277D74060];
  v6 = [v4 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElements__block_invoke;
  v13 = &unk_2781AC8F8;
  v14 = self;
  v15 = v3;
  v7 = v3;
  [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v7, v10, v11, v12, v13, v14}];

  return v8;
}

void __65__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v10;
    if (isKindOfClass)
    {
      IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
      v6 = *(a1 + 32);
      if (IsTextKit2Enabled)
      {
        v7 = [v6 icTextLayoutManager];
        v8 = [v10 viewIdentifier];
        v9 = [v7 existingAttachmentViewForIdentifier:v8];
      }

      else
      {
        v7 = [v6 layoutManager];
        v9 = [v10 viewForLayoutManager:v7];
      }

      [*(a1 + 40) addObject:v9];
      v3 = v10;
    }
  }
}

- (id)_icaxLinkElements
{
  if (([(ICEditingTextView *)self isEditing]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ICEditingTextView *)self _accessibilityInternalTextLinks];
  }

  return v3;
}

- (id)_icaxTodoElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICEditingTextView *)self textStorage];
  v5 = *MEMORY[0x277D35DA8];
  v6 = [v4 length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__ICEditingTextView_ICAccessibility_iOS___icaxTodoElements__block_invoke;
  v13 = &unk_2781ACAF8;
  v14 = self;
  v15 = v3;
  v7 = v3;
  [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [v7 copy];

  return v8;
}

uint64_t __59__ICEditingTextView_ICAccessibility_iOS___icaxTodoElements__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 todo];

  if (v3)
  {
    v4 = [*(a1 + 32) _icaxTodoButtonForParagraphStyle:v6];
    if (v4)
    {
      [*(a1 + 40) addObject:v4];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_icaxUpdateFakeTextSelectionRange
{
  if (UIAccessibilityIsVoiceOverRunning() && ![(ICEditingTextView *)self _icaxShouldPreventUpdatingFakeCursorRange])
  {
    v3 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v4 = [(ICEditingTextView *)self selectedRange];
    v6 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:v3 forRange:v4, v5];
    [(ICEditingTextView *)self set_icaxModifiedSelectionRange:v6, v7];

    v8 = [(ICEditingTextView *)self _icaxModifiedSelectionRange];

    [(ICEditingTextView *)self set_icaxModifiedCursorPosition:v8];
  }
}

- (void)_icaxGetBoldForCurrentRange:(BOOL *)a3 italic:(BOOL *)a4 underline:(BOOL *)a5 strikethrough:(BOOL *)a6
{
  v11 = [(ICEditingTextView *)self editorController];
  v12 = [v11 currentBIUSForStyleSelector];

  *a3 = v12 & 1;
  *a4 = (v12 & 2) != 0;
  *a5 = (v12 & 4) != 0;
  v14 = [(ICEditingTextView *)self typingAttributes];
  v13 = [v14 objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
  *a6 = [v13 integerValue] != 0;
}

- (id)_icaxFirstAttachmentViewSupportingAction:(SEL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = [(ICEditingTextView *)self textStorage];
  v6 = [(ICEditingTextView *)self textStorage];
  v7 = [v6 length];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__ICEditingTextView_ICAccessibility_iOS___icaxFirstAttachmentViewSupportingAction___block_invoke;
  v11[3] = &unk_2781ACB20;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = a3;
  [v5 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v11}];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __83__ICEditingTextView_ICAccessibility_iOS___icaxFirstAttachmentViewSupportingAction___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v14 = ICDynamicCast();

  if (v14)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    v9 = a1[4];
    if (IsTextKit2Enabled)
    {
      v10 = [v9 icTextLayoutManager];
      v11 = [v14 viewIdentifier];
      v12 = [v10 existingAttachmentViewForIdentifier:v11];
      v13 = ICDynamicCast();
    }

    else
    {
      v10 = [v9 layoutManager];
      v11 = [v10 viewForTextAttachment:v14];
      v13 = ICDynamicCast();
    }

    if ([v13 canPerformAction:a1[6] withSender:0])
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v13);
      *a5 = 1;
    }
  }
}

- (id)_icaxTodoButtonForParagraphStyle:(id)a3
{
  v4 = a3;
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    v7 = [(ICEditingTextView *)self layoutManager];
    v8 = [v7 icaxTodoButtonForParagraphStyle:v4];
    goto LABEL_5;
  }

  v5 = [(ICEditingTextView *)self icTextLayoutManager];
  v6 = [v4 todoTrackingUUID];

  v7 = [v5 trackedTodoParagraphForTrackingUUID:v6];

  if (v7)
  {
    v4 = [(ICEditingTextView *)self icTextLayoutManager];
    v8 = [v4 todoButtonForTrackedParagraph:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_icaxAddPredictiveTextToAttributedString:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v23.receiver = self;
  v23.super_class = ICEditingTextView;
  v5 = [(ICEditingTextView *)&v23 accessibilityValue];
  v6 = ICDynamicCast();

  v7 = *MEMORY[0x277CE6BB8];
  v25[0] = *MEMORY[0x277CE6BC0];
  v25[1] = v7;
  [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [v6 length];
        v14 = [v4 length];
        if (v13 >= v14)
        {
          v13 = v14;
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __83__ICEditingTextView_ICAccessibility_iOS___icaxAddPredictiveTextToAttributedString___block_invoke;
        v16[3] = &unk_2781AC8D0;
        v17 = v4;
        v18 = v12;
        [v6 enumerateAttribute:v12 inRange:0 options:v13 usingBlock:{0, v16}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }
}

uint64_t __83__ICEditingTextView_ICAccessibility_iOS___icaxAddPredictiveTextToAttributedString___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*(result + 40) value:a2 range:{a3, a4}];
  }

  return result;
}

- (void)_addPencilKitAccessibilityElementIfNeededForTextAttachment:(id)a3 toAttachmentElements:(id)a4
{
  v6 = a4;
  v7 = [a3 attachment];
  v10 = [v7 identifier];

  v8 = [(ICEditingTextView *)self _icaxPencilKitAttachmentsDict];
  v9 = [v8 objectForKeyedSubscript:v10];

  [v6 ic_addNonNilObject:v9];
}

- (id)_icaxMakeBoldString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotBoldString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeItalicString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotItalicString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeUnderlinedString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotUnderlinedString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)icaxMakeStrikethroughString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)icaxMakeNotStrikethroughString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Set not strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMarkAsCompletedString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Mark as checked" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMarkAsIncompleteString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Mark as unchecked" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeChecklistString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Make checklist item" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxRemoveChecklistString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Remove checklist item" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistMarkAllItemsCompleteString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Check all items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistUnmarkAllItemsCompleteString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Uncheck all items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistDeleteCheckedItemsString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete all checked items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistMoveCheckedToBottomString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Move Checked items to the Bottom" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxShareAttachmentString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxIncreaseIndentationString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Increase Indentation" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxDecreaseIndentationString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Decrease Indentation" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxInsertDrawingString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Insert Drawing" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxCalculateAdjustString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Adjust" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)ic_canIndentByDelta:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ICEditingTextView_StyleAdditions__ic_canIndentByDelta___block_invoke;
  v5[3] = &unk_2781AE670;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(ICEditingTextView *)self ic_performBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__ICEditingTextView_StyleAdditions__ic_canIndentByDelta___block_invoke(void *a1, uint64_t a2, void *a3)
{
  result = [a3 canIndentTextView:a1[4] byDelta:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (unsigned)ic_getTextStyleForCurrentSelection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ICEditingTextView_StyleAdditions__ic_getTextStyleForCurrentSelection__block_invoke;
  v4[3] = &unk_2781AE648;
  v4[4] = self;
  v4[5] = &v5;
  [(ICEditingTextView *)self ic_performBlock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __71__ICEditingTextView_StyleAdditions__ic_getTextStyleForCurrentSelection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 selectedRange];
  LODWORD(v5) = [v6 paragraphStyleForRange:v8 inTextView:v9 inTextStorage:{*(a1 + 32), v7}];

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (void)ic_setTextStyleForCurrentSelection:(unsigned int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__ICEditingTextView_StyleAdditions__ic_setTextStyleForCurrentSelection___block_invoke;
  v3[3] = &unk_2781AE6C0;
  v3[4] = self;
  v4 = a3;
  [(ICEditingTextView *)self ic_performBlock:v3];
}

void __72__ICEditingTextView_StyleAdditions__ic_setTextStyleForCurrentSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __72__ICEditingTextView_StyleAdditions__ic_setTextStyleForCurrentSelection___block_invoke_2;
  v17 = &unk_2781AE698;
  v18 = *(a1 + 32);
  v19 = v6;
  v21 = *(a1 + 40);
  v20 = v5;
  v7 = v5;
  v8 = v6;
  [v7 saveSelectionDuringBlock:&v14 affinity:0];
  v9 = [*(a1 + 32) selectedRange];
  v11 = v10;
  v12 = [*(a1 + 32) typingAttributes];
  v13 = [v8 typingAttributesForSettingTextStyleForRange:v9 currentTypingAttributes:v11 inTextStorage:{v12, v7}];
  [*(a1 + 32) setTypingAttributes:v13];

  [*(a1 + 32) setIsSettingTextStyle:0];
}

void __72__ICEditingTextView_StyleAdditions__ic_setTextStyleForCurrentSelection___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setIsSettingTextStyle:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) ic_selectedRanges];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) rangeValue];
        [*(a1 + 40) setTextStyle:*(a1 + 56) range:v7 inTextStorage:v8 inTextView:{*(a1 + 48), *(a1 + 32)}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setTypingTextStyle:*(a1 + 56) textView:*(a1 + 32)];
  v9 = [*(a1 + 32) delegate];
  [v9 textViewDidChange:*(a1 + 32)];
}

- (void)ic_indentByAmount:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__ICEditingTextView_StyleAdditions__ic_indentByAmount___block_invoke;
  v3[3] = &unk_2781AE6E8;
  v3[4] = self;
  v3[5] = a3;
  [(ICEditingTextView *)self ic_performBlock:v3];
}

void __55__ICEditingTextView_StyleAdditions__ic_indentByAmount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [*(a1 + 32) ic_selectedRanges];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) rangeValue];
        [v6 indentRange:v12 byAmount:v13 inTextStorage:*(a1 + 40) textView:{v5, *(a1 + 32)}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)ic_setTextAlignmentForCurrentSelection:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__ICEditingTextView_StyleAdditions__ic_setTextAlignmentForCurrentSelection___block_invoke;
  v3[3] = &unk_2781AE6E8;
  v3[4] = self;
  v3[5] = a3;
  [(ICEditingTextView *)self ic_performBlock:v3];
}

void __76__ICEditingTextView_StyleAdditions__ic_setTextAlignmentForCurrentSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) ic_selectedRanges];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 40);
        v13 = [*(*(&v15 + 1) + 8 * v11) rangeValue];
        [v6 setTextAlignment:v12 range:v13 inTextStorage:v14 inTextView:{v5, *(a1 + 32)}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)ic_toggleBoldface
{
  [(ICEditingTextView *)self ic_toggleFontHint:1];
  v3 = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICEditingTextView_StyleAdditions__ic_toggleBoldface__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v3 usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:6 sender:self];
}

- (void)ic_toggleItalics
{
  [(ICEditingTextView *)self ic_toggleFontHint:2];
  v3 = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ICEditingTextView_StyleAdditions__ic_toggleItalics__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v3 usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:7 sender:self];
}

- (void)ic_toggleUnderline
{
  [(ICEditingTextView *)self ic_toggleAttributeWithName:*MEMORY[0x277D35DC0]];
  v3 = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICEditingTextView_StyleAdditions__ic_toggleUnderline__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v3 usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:8 sender:self];
}

- (void)ic_toggleStrikethrough
{
  [(ICEditingTextView *)self ic_toggleAttributeWithName:*MEMORY[0x277D35DB0]];
  v3 = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ICEditingTextView_StyleAdditions__ic_toggleStrikethrough__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v3 usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:9 sender:self];
}

- (void)ic_toggleEmphasisWithType:(int64_t)a3
{
  v4 = *MEMORY[0x277D35D88];
  v5 = ic_currentEmphasisColorTypeDefault();

  [(ICEditingTextView *)self ic_toggleAttributeWithName:v4 withEmphasisColorType:v5];
}

- (id)ic_selectedStylesIgnoreTypingAttributes:(BOOL)a3
{
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ICEditingTextView_StyleAdditions__ic_selectedStylesIgnoreTypingAttributes___block_invoke;
  v9[3] = &unk_2781AE738;
  v9[4] = self;
  v10 = v5;
  v11 = a3;
  v6 = v5;
  [(ICEditingTextView *)self ic_performBlock:v9];
  v7 = [v6 copy];

  return v7;
}

void __77__ICEditingTextView_StyleAdditions__ic_selectedStylesIgnoreTypingAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 32) ic_selectedRanges];
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v28 + 1) + 8 * i) rangeValue];
        v12 = v11;
        v14 = v13;
        if (v13)
        {
          v15 = [v5 string];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __77__ICEditingTextView_StyleAdditions__ic_selectedStylesIgnoreTypingAttributes___block_invoke_2;
          v23[3] = &unk_2781AE710;
          v16 = v6;
          v17 = *(a1 + 32);
          v24 = v16;
          v25 = v17;
          v26 = v5;
          v27 = *(a1 + 40);
          [v15 ic_enumerateParagraphsInRange:v12 usingBlock:{v14, v23}];
        }

        else if (v11 != 0x7FFFFFFFFFFFFFFFLL && [v5 length] >= v11)
        {
          v18 = [v5 string];
          v19 = [v18 paragraphRangeForRange:{v12, 0}];
          v21 = v20;

          [*(a1 + 40) addIndex:{objc_msgSend(v6, "paragraphStyleForRange:inTextView:inTextStorage:ignoreTypingAttributes:", v19, v21, *(a1 + 32), v5, *(a1 + 48))}];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }
}

uint64_t __77__ICEditingTextView_StyleAdditions__ic_selectedStylesIgnoreTypingAttributes___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) paragraphStyleForRange:a2 inTextView:a3 - a2 inTextStorage:{*(a1 + 40), *(a1 + 48)}];
  v5 = *(a1 + 56);

  return [v5 addIndex:v4];
}

- (unint64_t)ic_selectedBIUS
{
  v3 = [(ICEditingTextView *)self selectedRange];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = [(ICEditingTextView *)self textStorage];
    v8 = [v7 attributesAtIndex:v5 longestEffectiveRange:0 inRange:{v5, v6}];
  }

  else
  {
    v8 = [(ICEditingTextView *)self typingAttributes];
  }

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
  v10 = [v9 intValue];

  objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v12 = ICDynamicCast();

  if ((v10 & 1) != 0 || [v12 ic_hasSymbolicBoldTrait])
  {
    v13 = 1;
    if ((v10 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (![v12 ic_hasSymbolicItalicTrait])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = 0;
  if ((v10 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 |= 2uLL;
LABEL_11:
  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DC0]];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v13 |= 4uLL;
  }

  v16 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v13 |= 8uLL;
  }

  v18 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35D88]];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v20 = v13 | 0x10;
  }

  else
  {
    v20 = v13;
  }

  return v20;
}

- (int64_t)ic_currentWritingDirection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICEditingTextView_StyleAdditions__ic_currentWritingDirection__block_invoke;
  v4[3] = &unk_2781AE648;
  v4[4] = self;
  v4[5] = &v5;
  [(ICEditingTextView *)self ic_performBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __63__ICEditingTextView_StyleAdditions__ic_currentWritingDirection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 selectedRange];
  v10 = [v6 writingDirectionForRange:v8 inTextView:v9 inTextStorage:{*(a1 + 32), v7}];

  *(*(*(a1 + 40) + 8) + 24) = v10;
}

- (void)ic_performBlock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICEditingTextView *)self textStorage];
  v8 = ICCheckedDynamicCast();

  objc_opt_class();
  v6 = [v8 styler];
  v7 = ICCheckedDynamicCast();

  v4[2](v4, v8, v7);
}

- (void)ic_enumerateTableAttachmentViewControllersInRanges:(id)a3 usingBlock:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v8 = [(ICEditingTextView *)self textLayoutManager];
    v9 = ICCheckedDynamicCast();

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = v6;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v39 + 1) + 8 * i) rangeValue];
          v16 = v15;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke;
          v36[3] = &unk_2781AE760;
          v17 = v9;
          v37 = v17;
          v38 = v7;
          [v17 enumerateAttachmentViewsInRange:v14 usingBlock:{v16, v36}];
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
LABEL_17:
      v9 = v17;
      v6 = v26;
    }
  }

  else
  {
    objc_opt_class();
    v18 = [(ICEditingTextView *)self layoutManager];
    v9 = ICCheckedDynamicCast();

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obja = v6;
    v19 = [obja countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v26 = v6;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v23 = [*(*(&v32 + 1) + 8 * j) rangeValue];
          v25 = v24;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke_2;
          v29[3] = &unk_2781AE760;
          v17 = v9;
          v30 = v17;
          v31 = v7;
          [v17 enumerateAttachmentViewsInRange:v23 usingBlock:{v25, v29}];
        }

        v20 = [obja countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v20);
      goto LABEL_17;
    }
  }
}

uint64_t __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v8)
  {
    v5 = [*(a1 + 32) tableViewControllerForAttachment:v8 createIfNeeded:0];
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        (*(v6 + 16))(v6, v5);
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

void __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 attachment];
  v5 = [v4 attachmentType];

  if (v5 == 12)
  {
    objc_opt_class();
    v6 = [*(a1 + 32) viewControllerForTextAttachment:v9];
    v7 = ICDynamicCast();

    if (v7)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, v7);
      }
    }
  }
}

- (BOOL)ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait___block_invoke;
  v5[3] = &unk_2781AE788;
  v6 = a3;
  v5[4] = &v7;
  [(ICEditingTextView *)self ic_enumerateAttributesInSelectedRanges:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __98__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
  v4 = [v3 intValue];

  v5 = v7;
  if ((*(a1 + 40) & v4) == 0)
  {
    v6 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    if ((![v6 ic_hasSymbolicBoldTrait] || (*(a1 + 40) & 1) == 0) && (!objc_msgSend(v6, "ic_hasSymbolicItalicTrait") || (*(a1 + 40) & 2) == 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v5 = v7;
  }
}

- (BOOL)ic_allSelectedRangesContainAttributeName:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainAttributeName_withValue___block_invoke;
  v16[3] = &unk_2781AE7B0;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  v19 = &v20;
  [(ICEditingTextView *)self ic_enumerateAttributesInSelectedRanges:v16];
  [(ICEditingTextView *)self selectedRange];
  if (!v10)
  {
    v11 = [(ICEditingTextView *)self typingAttributes];
    v12 = [v11 objectForKeyedSubscript:v9];
    v13 = [v12 isEqual:v8];
    *(v21 + 24) = v13;
  }

  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v14;
}

void __88__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainAttributeName_withValue___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 objectForKeyedSubscript:a1[5]];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)ic_enumerateAttributesInSelectedRanges:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__ICEditingTextView_StyleAdditions__ic_enumerateAttributesInSelectedRanges___block_invoke;
  v6[3] = &unk_2781AE800;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICEditingTextView *)self ic_performBlock:v6];
}

void __76__ICEditingTextView_StyleAdditions__ic_enumerateAttributesInSelectedRanges___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) ic_selectedRanges];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v13 + 1) + 8 * v5) rangeValue];
        v8 = v7;
        v9 = [*(a1 + 32) textStorage];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __76__ICEditingTextView_StyleAdditions__ic_enumerateAttributesInSelectedRanges___block_invoke_2;
        v11[3] = &unk_2781AE7D8;
        v12 = *(a1 + 40);
        [v9 ic_enumerateAttributesInClampedRange:v6 options:v8 usingBlock:{0, v11}];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

- (void)ic_toggleAttributeWithName:(id)a3 withEmphasisColorType:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v8 = [(ICEditingTextView *)self ic_allSelectedRangesContainAttributeName:v6 withValue:v7];
  }

  else
  {
    v8 = [(ICEditingTextView *)self ic_allSelectedRangesContainAttributeName:v6 withValue:MEMORY[0x277CBEC38]];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__ICEditingTextView_StyleAdditions__ic_toggleAttributeWithName_withEmphasisColorType___block_invoke;
  v11[3] = &unk_2781AE828;
  v9 = a4 != 0;
  v14 = v8;
  v12 = v6;
  v13 = a4;
  v10 = v6;
  [(ICEditingTextView *)self ic_editAttributesInSelectedRanges:v11 shouldSkipAttachments:v9];
}

void __86__ICEditingTextView_StyleAdditions__ic_toggleAttributeWithName_withEmphasisColorType___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v6 = [v14 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 BOOLValue];

  if (*(a1 + 32) == *MEMORY[0x277D35D88])
  {
    if ((*(a1 + 48) & 1) != 0 || (v9 = *(a1 + 40)) == 0)
    {
      [v14 removeObjectForKey:*MEMORY[0x277D35D88]];
    }

    else
    {
      v10 = MEMORY[0x277CCABB0];
      if (!a4)
      {
        v9 = ic_currentEmphasisColorTypeDefault();
      }

      v11 = [v10 numberWithInteger:v9];
      [v14 setObject:v11 forKeyedSubscript:*(a1 + 32)];

      v12 = ICNSTextHighlightColorSchemeForEmphasisColorType();
      [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277D74188]];
    }
  }

  else
  {
    if (a4)
    {
      v8 = v14;
      if (*(a1 + 48))
      {
LABEL_4:
        [v8 setObject:0 forKeyedSubscript:?];
        goto LABEL_13;
      }
    }

    else
    {
      v8 = v14;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v14 setObject:v13 forKeyedSubscript:*(a1 + 32)];
  }

LABEL_13:
}

- (void)ic_setAttributeWithName:(id)a3 enabled:(BOOL)a4 withEmphasisColorType:(int64_t)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__ICEditingTextView_StyleAdditions__ic_setAttributeWithName_enabled_withEmphasisColorType___block_invoke;
  v10[3] = &unk_2781AE828;
  v11 = v8;
  v12 = a5;
  v13 = a4;
  v9 = v8;
  [(ICEditingTextView *)self ic_editAttributesInSelectedRanges:v10];
}

void __91__ICEditingTextView_StyleAdditions__ic_setAttributeWithName_enabled_withEmphasisColorType___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v11 = v6;
  if (*(a1 + 32) != *MEMORY[0x277D35D88])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
LABEL_7:
    v10 = v7;
    [v11 setObject:v7 forKeyedSubscript:*(a1 + 32)];

    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    if (!a4)
    {
      v8 = ic_currentEmphasisColorTypeDefault();
    }

    v7 = [v9 numberWithInteger:v8];
    goto LABEL_7;
  }

  [v6 removeObjectForKey:*MEMORY[0x277D35D88]];
LABEL_8:
}

- (void)ic_toggleFontHint:(unsigned int)a3
{
  v5 = [(ICEditingTextView *)self ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:?];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ICEditingTextView_StyleAdditions__ic_toggleFontHint___block_invoke;
  v6[3] = &__block_descriptor_37_e44_v32__0__NSMutableDictionary_8__NSRange_QQ_16l;
  v7 = a3;
  v8 = v5;
  [(ICEditingTextView *)self ic_editAttributesInSelectedRanges:v6];
}

void __55__ICEditingTextView_StyleAdditions__ic_toggleFontHint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v6 = MEMORY[0x277D35D98];
  v7 = [v18 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
  v8 = [v7 intValue];

  v9 = [v18 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v10 = v9;
  if (a4)
  {
    v11 = *(a1 + 32);
    if (*(a1 + 36))
    {
      v12 = v8 & ~v11;
    }

    else
    {
      v12 = v11 | v8;
    }

    if ((v11 & 1) == 0)
    {
      v12 = v12 | [v9 ic_hasSymbolicBoldTrait];
      v11 = *(a1 + 32);
    }

    if ((v11 & 2) == 0)
    {
      if ([v10 ic_hasSymbolicItalicTrait])
      {
        v12 = v12 | 2;
      }

      else
      {
        v12 = v12;
      }
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = (v13 & v8) == 0;
    v15 = v13 | v8;
    v16 = v8 & ~v13;
    if (v14)
    {
      v12 = v15;
    }

    else
    {
      v12 = v16;
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [v18 setObject:v17 forKeyedSubscript:*v6];
}

- (void)ic_setFontHint:(unsigned int)a3 enabled:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ICEditingTextView_StyleAdditions__ic_setFontHint_enabled___block_invoke;
  v4[3] = &__block_descriptor_37_e44_v32__0__NSMutableDictionary_8__NSRange_QQ_16l;
  v6 = a4;
  v5 = a3;
  [(ICEditingTextView *)self ic_editAttributesInSelectedRanges:v4];
}

void __60__ICEditingTextView_StyleAdditions__ic_setFontHint_enabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D35D98];
  v4 = *MEMORY[0x277D35D98];
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 intValue];

  v8 = *(a1 + 32);
  v9 = v8 | v7;
  v10 = v7 & ~v8;
  if (*(a1 + 36))
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  [v5 setObject:v12 forKeyedSubscript:*v3];
}

- (void)ic_editAttributesInSelectedRanges:(id)a3 shouldSkipAttachments:(BOOL)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__ICEditingTextView_StyleAdditions__ic_editAttributesInSelectedRanges_shouldSkipAttachments___block_invoke;
  v9[3] = &unk_2781AE898;
  v11 = a4;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [(ICEditingTextView *)self ic_performBlock:v9];
  v8 = [(ICEditingTextView *)self delegate];
  [v8 textViewDidChange:self];
}

void __93__ICEditingTextView_StyleAdditions__ic_editAttributesInSelectedRanges_shouldSkipAttachments___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [*(a1 + 32) ic_selectedRanges];
  v3 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    v27 = *v38;
    do
    {
      v6 = 0;
      v28 = v4;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v37 + 1) + 8 * v6) rangeValue];
        v9 = v8;
        if (v8)
        {
          [v30 beginEditing];
          v10 = [*(a1 + 32) textStorage];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __93__ICEditingTextView_StyleAdditions__ic_editAttributesInSelectedRanges_shouldSkipAttachments___block_invoke_2;
          v31[3] = &unk_2781AE870;
          v36 = *(a1 + 48);
          v33 = *(a1 + 40);
          v34 = v7;
          v35 = v9;
          v11 = v30;
          v32 = v11;
          [v10 ic_enumerateAttributesInClampedRange:v7 options:v9 usingBlock:{0, v31}];

          [v11 endEditing];
          v12 = v33;
        }

        else
        {
          v13 = [*(a1 + 32) typingAttributes];
          v14 = [v13 mutableCopy];

          v15 = [*(a1 + 32) TTTextStorage];
          v16 = [v15 styler];
          v17 = [v16 modelForStyleAttributes:v14 filterAttributes:1];
          v18 = [v17 mutableCopy];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v14;
          }

          v12 = v20;

          v4 = v28;
          (*(*(a1 + 40) + 16))();
          v21 = [*(a1 + 32) TTTextStorage];
          v22 = [v21 styler];
          v23 = [v22 styleForModelAttributes:v12];
          v24 = v23;
          v25 = MEMORY[0x277CBEC10];
          if (v23)
          {
            v25 = v23;
          }

          v26 = v25;

          v5 = v27;
          [v12 addEntriesFromDictionary:v26];

          [*(a1 + 32) setTypingAttributes:v12];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v4);
  }
}

void __93__ICEditingTextView_StyleAdditions__ic_editAttributesInSelectedRanges_shouldSkipAttachments___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  v15 = v7;
  if (*(a1 + 64) == 1)
  {
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D74060]];
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      (*(*(a1 + 40) + 16))();
      v12 = *(a1 + 32);
      v13 = [v15 copy];
      [v12 setAttributes:v13 range:{a3, a4}];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v14 = *(a1 + 32);
    v8 = [v15 copy];
    [v14 setAttributes:v8 range:{a3, a4}];
  }
}

- (unint64_t)firstValidEmphasisLocationWithinSelection:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICEditingTextView *)self textLayoutManager];
  v7 = [v6 ic_textRangeForRange:{location, length}];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(ICEditingTextView *)self textLayoutManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__ICEditingTextView_StyleAdditions__firstValidEmphasisLocationWithinSelection___block_invoke;
  v11[3] = &unk_2781AE8C0;
  v11[4] = self;
  v11[5] = &v12;
  [v8 enumerateTextSegmentsInRange:v7 type:0 options:12 usingBlock:v11];

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __79__ICEditingTextView_StyleAdditions__firstValidEmphasisLocationWithinSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 textLayoutManager];
  v6 = [v5 ic_rangeForTextRange:v4];
  v8 = v7;

  v9 = [*(a1 + 32) textStorage];
  v10 = [v9 attribute:*MEMORY[0x277D74060] atIndex:v6 effectiveRange:0];
  v11 = ICProtocolCast();

  if (v8 && !v11 || [MEMORY[0x277D35F70] isInlineAttachment:v11])
  {
    v12 = 0;
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ICEditingTextView *)self supportsAttachments])
  {
    v8 = [v6 ic_stringWithoutAttachments];

    v6 = v8;
  }

  if (![v6 length])
  {
    goto LABEL_7;
  }

  if ([(ICEditingTextView *)self exceedsMaxLengthIfSelectionReplacedWithAttributedString:v6])
  {
    if (([v7 didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      v9 = [(ICEditingTextView *)self editorController];
      [v9 warnUserNoteLengthExceeded];

      [v7 setDidWarnAboutExceedingMaxLength:1];
    }

LABEL_7:

    v6 = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    [(ICEditingTextView *)self _pasteAttributedString:v6 pasteAsRichText:1];
  }

LABEL_10:

  return v6;
}

- (BOOL)exceedsMaxLengthIfSelectionReplacedWithAttributedString:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self TTTextStorage];
  v6 = [v5 length];
  v7 = [v4 length];
  [(ICEditingTextView *)self selectedRange];
  v9 = v8;

  v10 = [v4 length];
  [(ICEditingTextView *)self selectedRange];
  if (v10 <= v11)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v12 = v7 + v6 - v9;
    v13 = [(ICBaseTextView *)self icDelegate];
    v14 = [v13 allowsNewTextLength:v12] ^ 1;
  }

  return v14;
}

- (id)pasteNotePasteboardData:(id)a3 session:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__13;
  v48 = __Block_byref_object_dispose__13;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__13;
  v42 = __Block_byref_object_dispose__13;
  v43 = 0;
  v10 = [v8 attributedStringData];
  v11 = [v10 length];
  v12 = [v8 dataPersister];
  v13 = [v12 accumulatedDataSize];
  v14 = [(ICEditingTextView *)self editorController];
  v15 = [v14 note];
  [v15 setShouldAddMediaAsynchronously:(v13 + v11) > *MEMORY[0x277D36038]];

  v16 = [(ICEditingTextView *)self editorController];
  v17 = [v16 note];
  v18 = [v8 attributedStringData];
  LODWORD(v11) = [v17 attachmentExceedsMaxSizeAllowed:{objc_msgSend(v18, "length")}];

  if (v11)
  {
    if (([v9 didWarnAboutAttachmentSizeExceeded] & 1) == 0)
    {
      v19 = [(ICEditingTextView *)self editorController];
      [v19 warnUserAttachmentSizeExceededWithAttachmentCount:1];

      [v9 setDidWarnAboutAttachmentSizeExceeded:1];
    }
  }

  else
  {
    v20 = [(ICEditingTextView *)self TTTextStorage];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__ICEditingTextView_PasteUtilities__pasteNotePasteboardData_session_error___block_invoke;
    v32[3] = &unk_2781AE9A0;
    v36 = &v38;
    v33 = v8;
    v34 = self;
    v37 = &v44;
    v35 = v9;
    [v20 saveSelectionDuringBlock:v32 affinity:1];
  }

  if (!v39[5])
  {
    v23 = v45[5];
    if (v23)
    {
      v24 = [v23 code];
      if (v24 == 205)
      {
        if ([v9 didWarnAboutNotSupportedForPasswordProtectedNotes])
        {
          goto LABEL_6;
        }

        v26 = [v45[5] userInfo];
        v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D36108]];

        if (v27)
        {
          v28 = [v27 unsignedIntegerValue];
        }

        else
        {
          v28 = 1;
        }

        v29 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:v28];
        v31 = [(ICEditingTextView *)self window];
        [v29 presentInWindow:v31 completionHandler:0];

        [v9 setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
      }

      else
      {
        if (v24 == 202)
        {
          if (([v9 didWarnAboutAttachmentLimitExceeded] & 1) == 0)
          {
            v25 = [(ICEditingTextView *)self editorController];
            [v25 warnUserAttachmentLimitExceeded];

            [v9 setDidWarnAboutAttachmentLimitExceeded:1];
          }

          goto LABEL_6;
        }

        v29 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [v45[5] description];
          [ICEditingTextView(PasteUtilities) pasteNotePasteboardData:v30 session:buf error:v29];
        }

        v27 = v29;
      }
    }
  }

LABEL_6:
  if (a5)
  {
    *a5 = v45[5];
  }

  v21 = v39[5];
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);

  return v21;
}

void __75__ICEditingTextView_PasteUtilities__pasteNotePasteboardData_session_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA898];
  v3 = [*(a1 + 32) attributedStringData];
  v4 = [*(a1 + 32) dataPersister];
  v5 = [*(a1 + 40) editorController];
  v6 = [v5 note];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v2 ic_attributedStringWithData:v3 dataPersister:v4 createNewAttachmentsInNote:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    v12 = [*(a1 + 40) pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:v11 session:*(a1 + 48)];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)pasteImagesDataArray:(id)a3 typesArray:(id)a4 session:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v26 = a4;
  v27 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__13;
  v42 = __Block_byref_object_dispose__13;
  v43 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v8;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [(ICEditingTextView *)self editorController];
        v16 = [v15 note];
        v17 = [v16 attachmentExceedsMaxSizeAllowed:{objc_msgSend(v14, "length")}];

        if (v17)
        {
          v22 = [v27 didWarnAboutAttachmentSizeExceeded];
          v21 = v9;
          if ((v22 & 1) == 0)
          {
            v23 = [(ICEditingTextView *)self editorController];
            [v23 warnUserAttachmentSizeExceededWithAttachmentCount:{objc_msgSend(v9, "count")}];

            [v27 setDidWarnAboutAttachmentSizeExceeded:1];
            v21 = v9;
          }

          goto LABEL_12;
        }

        v10 += [v14 length];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(ICEditingTextView *)self editorController];
  v19 = [v18 note];
  [v19 setShouldAddMediaAsynchronously:v10 > *MEMORY[0x277D36038]];

  v20 = [(ICEditingTextView *)self TTTextStorage];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke;
  v28[3] = &unk_2781AEA18;
  v29 = v9;
  v30 = v26;
  v31 = self;
  v32 = v27;
  v33 = &v38;
  [v20 saveSelectionDuringBlock:v28 affinity:1];

  v21 = v29;
LABEL_12:

  v24 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v24;
}

void __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke_2;
  v15 = &unk_2781AE9F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = &v20;
  [v2 enumerateObjectsUsingBlock:&v12];
  [*(a1 + 56) setNumberOfImagesPasted:{objc_msgSend(*(a1 + 56), "numberOfImagesPasted") + objc_msgSend(*(a1 + 32), "count", v12, v13, v14, v15)}];
  v6 = [v21[5] copy];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 48) pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:*(*(*(a1 + 64) + 8) + 40) session:*(a1 + 56)];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  _Block_object_dispose(&v20, 8);
}

void __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__13;
  v33 = __Block_byref_object_dispose__13;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v34 = [v6 firstObject];

  v7 = [*(a1 + 40) editorController];
  v8 = [v7 note];
  v9 = [v8 canAddAttachment];

  if (v9)
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v10 count];

    if (v11 >= 2)
    {
      v12 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke_3;
      v28[3] = &unk_2781AE9C8;
      v28[4] = &v29;
      [v12 enumerateObjectsUsingBlock:v28];
    }

    v13 = [MEMORY[0x277D35E00] filenameExtensionForUTI:v30[5]];
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"Pasted Image %lu" value:&stru_282757698 table:0];
    v17 = [v14 localizedStringWithFormat:v16, objc_msgSend(*(a1 + 48), "numberOfImagesPasted") + a3];

    v18 = [v17 stringByAppendingPathExtension:v13];

    v19 = [*(a1 + 40) editorController];
    v20 = [v19 note];
    v21 = [v20 addAttachmentWithData:v5 filename:v18];

    v22 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v21];
    v23 = *(*(*(a1 + 56) + 8) + 40);
    v24 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v22];
    [v23 appendAttributedString:v24];

    v25 = [*(a1 + 40) editorController];
    v26 = [v25 eventReporter];
    [v26 submitAttachmentAddEventForAttachment:v21];
  }

  else if (([*(a1 + 48) didWarnAboutAttachmentLimitExceeded] & 1) == 0)
  {
    v27 = [*(a1 + 40) editorController];
    [v27 warnUserAttachmentLimitExceeded];

    [*(a1 + 48) setDidWarnAboutAttachmentLimitExceeded:1];
  }

  _Block_object_dispose(&v29, 8);
}

void __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
  v8 = [v7 conformsToType:*MEMORY[0x277CE1DB0]];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)pasteURL:(id)a3 uti:(id)a4 name:(id)a5 metadata:(id)a6 session:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ICEditingTextView *)self editorController];
  v18 = [v17 note];
  if ([v18 canAddAttachment])
  {

    goto LABEL_7;
  }

  v19 = [v12 isFileURL];

  if (!v19)
  {
LABEL_7:
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__13;
    v42 = __Block_byref_object_dispose__13;
    v43 = 0;
    v22 = [(ICEditingTextView *)self TTTextStorage];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __72__ICEditingTextView_PasteUtilities__pasteURL_uti_name_metadata_session___block_invoke;
    v29 = &unk_2781AEA40;
    v30 = v12;
    v31 = self;
    v36 = &v44;
    v32 = v13;
    v33 = v15;
    v34 = v14;
    v37 = &v38;
    v23 = v16;
    v35 = v23;
    [v22 saveSelectionDuringBlock:&v26 affinity:1];

    if (*(v45 + 24) == 1 && ([v23 didWarnAboutAttachmentSizeExceeded] & 1) == 0)
    {
      v24 = [(ICEditingTextView *)self editorController];
      [v24 warnUserAttachmentSizeExceededWithAttachmentCount:1];

      [v23 setDidWarnAboutAttachmentSizeExceeded:1];
    }

    v21 = v39[5];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    goto LABEL_11;
  }

  if (([v16 didWarnAboutAttachmentLimitExceeded] & 1) == 0)
  {
    v20 = [(ICEditingTextView *)self editorController];
    [v20 warnUserAttachmentLimitExceeded];

    [v16 setDidWarnAboutAttachmentLimitExceeded:1];
  }

  v21 = 0;
LABEL_11:

  return v21;
}

void __72__ICEditingTextView_PasteUtilities__pasteURL_uti_name_metadata_session___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) ic_isSupportedAsAttachment])
  {
LABEL_5:
    v4 = objc_alloc(MEMORY[0x277CCAB48]);
    v5 = v4;
    if (*(a1 + 64))
    {
      v6 = [v4 initWithString:?];
    }

    else
    {
      v7 = [*(a1 + 32) absoluteString];
      v6 = [v5 initWithString:v7];
    }

    v8 = *MEMORY[0x277D740E8];
    v9 = [*(a1 + 32) absoluteString];
    [v6 addAttribute:v8 value:v9 range:{0, objc_msgSend(v6, "length")}];

    v10 = [v6 copy];
    v11 = *(*(a1 + 88) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    goto LABEL_9;
  }

  v2 = [*(a1 + 40) editorController];
  v3 = [v2 note];
  if (![v3 canAddAttachment] || objc_msgSend(*(a1 + 32), "ic_isWebURL"))
  {

    goto LABEL_5;
  }

  v17 = [*(a1 + 40) supportsAttachments];

  if (!v17)
  {
    goto LABEL_5;
  }

  if ([*(a1 + 32) isFileURL])
  {
    v18 = *(a1 + 32);
    v38 = 0;
    [v18 getResourceValue:&v38 forKey:*MEMORY[0x277CBE838] error:0];
    v19 = v38;
    v20 = v19;
    if (v19)
    {
      v21 = [v19 unsignedIntegerValue];
    }

    else
    {
      v21 = 0;
    }

    v25 = [*(a1 + 40) editorController];
    v26 = [v25 note];
    v27 = [v26 attachmentExceedsMaxSizeAllowed:v21];

    if (v27)
    {
      v6 = 0;
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      v28 = *(a1 + 48);
      v29 = [*(a1 + 40) editorController];
      v30 = [v29 note];
      v31 = v30;
      if (v28)
      {
        [v30 addAttachmentWithUTI:*(a1 + 48) withURL:*(a1 + 32)];
      }

      else
      {
        [v30 addAttachmentWithFileURL:*(a1 + 32)];
      }
      v6 = ;
    }

    v24 = v27 ^ 1;
  }

  else
  {
    v22 = [*(a1 + 40) editorController];
    v23 = [v22 note];
    v6 = [v23 addURLAttachmentWithURL:*(a1 + 32)];

    v24 = 0;
  }

  if (v6)
  {
    if (*(a1 + 56))
    {
      [v6 setMetadata:?];
    }

    if ([*(a1 + 64) length])
    {
      [v6 setTitle:*(a1 + 64)];
    }

    v32 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v6];
    v33 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v32];
    v34 = *(*(a1 + 88) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    if (v24)
    {
      v36 = [*(a1 + 40) editorController];
      v37 = [v36 eventReporter];
      [v37 submitAttachmentAddEventForAttachment:v6];
    }
  }

LABEL_9:

  v13 = *(*(*(a1 + 88) + 8) + 40);
  if (v13)
  {
    v14 = [*(a1 + 40) pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:v13 session:*(a1 + 72)];
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (id)pasteStringUsingBlock:(id)a3 approxPasteString:(id)a4 pasteboardTypes:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v47 = [(ICEditingTextView *)self selectedRange];
  v15 = v14;
  if ([v11 length] <= v14 || (-[ICEditingTextView TTTextStorage](self, "TTTextStorage"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v18 = objc_msgSend(v11, "length"), v16, -[ICBaseTextView icDelegate](self, "icDelegate"), v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v17) = objc_msgSend(v19, "allowsNewTextLength:", v17 - v15 + v18), v19, (v17 & 1) != 0))
  {
    v20 = [(ICEditingTextView *)self TTTextStorage];
    [v20 setFilterPastedAttributes:1];

    v21 = [(ICEditingTextView *)self TTTextStorage];
    [v21 setConvertAttributes:1];

    v22 = [(ICEditingTextView *)self TTTextStorage];
    [v22 setPasteboardTypes:v12];

    v23 = [(ICEditingTextView *)self TTTextStorage];
    v24 = [v23 length];

    v10[2](v10);
    v25 = [(ICEditingTextView *)self TTTextStorage];
    v46 = v10;
    v26 = [v25 length];

    v27 = v26 - v24 + v15;
    v28 = [(ICEditingTextView *)self TTTextStorage];
    v29 = [v28 attributedSubstringFromRange:{v47, v27}];

    v44 = [v29 string];
    [(ICEditingTextView *)self TTTextStorage];
    v30 = v45 = v12;
    [v30 setPasteboardTypes:0];

    v31 = [(ICEditingTextView *)self TTTextStorage];
    [v31 setConvertAttributes:0];

    v32 = [(ICEditingTextView *)self TTTextStorage];
    [v32 setFilterPastedAttributes:0];

    objc_opt_class();
    v33 = [(ICEditingTextView *)self TTTextStorage];
    [v33 styler];
    v34 = v13;
    v36 = v35 = v11;
    v37 = ICCheckedDynamicCast();

    v11 = v35;
    v13 = v34;

    [v37 insertedText:v44 replacementRange:v47 inTextView:v15 languageHasSpaces:{self, -[ICEditingTextView languageHasSpaces](self, "languageHasSpaces")}];
    if (v26 >= v27 + v47)
    {
      v38 = v27 + v47;
    }

    else
    {
      v38 = v26;
    }

    v10 = v46;
    [(ICEditingTextView *)self setSelectedRange:v38, 0];
    v39 = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self scrollRangeToVisible:v39, v40];
    [(ICEditingTextView *)self informDelegateOfPastedAttributedString:v29];

    v12 = v45;
  }

  else
  {
    if (([v13 didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      v41 = [(ICEditingTextView *)self editorController];
      [v41 warnUserNoteLengthExceeded];

      [v13 setDidWarnAboutExceedingMaxLength:1];
    }

    if (([v13 didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      v42 = [(ICEditingTextView *)self editorController];
      [v42 warnUserNoteLengthExceeded];

      [v13 setDidWarnAboutExceedingMaxLength:1];
    }

    v29 = 0;
  }

  return v29;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  [(ICBaseTextView *)&v4 dealloc];
}

- (id)textController
{
  objc_opt_class();
  v3 = [(ICEditingTextView *)self TTTextStorage];
  v4 = [v3 styler];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (id)icLayoutManager
{
  objc_opt_class();
  v3 = [(ICEditingTextView *)self layoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (id)icTextLayoutManager
{
  objc_opt_class();
  v3 = [(ICEditingTextView *)self textLayoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (ICTTTextStoragePersistenceHelper)persistenceHelper
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 note];

  return v3;
}

- (id)selectionRectsForRange:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICEditingTextView *)self textSelectionHidden])
  {
    v5 = objc_alloc_init(ICEmptyTextSelectionRect);
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICEditingTextView;
    v6 = [(ICEditingTextView *)&v8 selectionRectsForRange:v4];
  }

  return v6;
}

- (CALayer)tempHighlightLayer
{
  tempHighlightLayer = self->_tempHighlightLayer;
  if (!tempHighlightLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v5 = self->_tempHighlightLayer;
    self->_tempHighlightLayer = v4;

    v6 = [MEMORY[0x277D75348] redColor];
    -[CALayer setBorderColor:](self->_tempHighlightLayer, "setBorderColor:", [v6 CGColor]);

    [(CALayer *)self->_tempHighlightLayer setBorderWidth:1.0];
    v7 = [(ICEditingTextView *)self layer];
    [v7 addSublayer:self->_tempHighlightLayer];

    tempHighlightLayer = self->_tempHighlightLayer;
  }

  return tempHighlightLayer;
}

- (id)attachmentsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(ICEditingTextView *)self textStorage];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ICEditingTextView_attachmentsInRange___block_invoke;
  v11[3] = &unk_2781AC5D8;
  v9 = v6;
  v12 = v9;
  [v7 enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v11}];

  return v9;
}

void __40__ICEditingTextView_attachmentsInRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v4 = *(a1 + 32);
  v5 = [v6 attachment];
  [v4 ic_addNonNilObject:v5];
}

- (id)textAttachmentsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(ICEditingTextView *)self textStorage];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ICEditingTextView_textAttachmentsInRange___block_invoke;
  v11[3] = &unk_2781AC5D8;
  v9 = v6;
  v12 = v9;
  [v7 enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v11}];

  return v9;
}

void __44__ICEditingTextView_textAttachmentsInRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  [*(a1 + 32) ic_addNonNilObject:v4];
}

- (BOOL)canBecomeFirstResponder
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v9.receiver = self;
    v9.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v9 canBecomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICEditingTextView;
    v4 = [(ICEditingTextView *)&v8 canBecomeFirstResponder];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      objc_opt_class();
      v6 = [(ICEditingTextView *)self layoutManager];
      v7 = ICDynamicCast();
      v5 = [v7 isRenderingPreviewForDragAndDrop] ^ 1;
    }

    return v4 & v5;
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 presentedViewController];

  v5 = [v4 modalPresentationStyle];
  if ([(ICEditingTextView *)self isEditable])
  {
    v6 = [(ICEditingTextView *)self editorController];
    v7 = [v6 note];
    v8 = [v7 isEditable];

    if (!v8 || v5 == 5)
    {
      [(ICEditingTextView *)self setEditable:0];
    }
  }

  v11.receiver = self;
  v11.super_class = ICEditingTextView;
  v9 = [(ICEditingTextView *)&v11 becomeFirstResponder];
  [(ICEditingTextView *)self keyboardLocaleChanged:0];

  return v9;
}

- (id)firstResponderMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self firstResponder];
  if (v5)
  {
    do
    {
      if (v4[2](v4, v5))
      {
        break;
      }

      v6 = [v5 nextResponder];

      v5 = v6;
    }

    while (v6);
  }

  return v5;
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self TTTextStorage];
  [v5 setConvertAttributes:1];
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 makeTextWritingDirectionLeftToRight:v4];
  v6 = [v5 styler];
  [v6 setUserChangedWritingDirection:1];
  v7 = [(ICEditingTextView *)self editorController];
  [v7 textViewDidChange:self];

  [v5 setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:v4];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self TTTextStorage];
  [v5 setConvertAttributes:1];
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 makeTextWritingDirectionRightToLeft:v4];
  v6 = [v5 styler];
  [v6 setUserChangedWritingDirection:1];
  v7 = [(ICEditingTextView *)self editorController];
  [v7 textViewDidChange:self];

  [v5 setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:v4];
}

- (void)makeTextWritingDirectionNatural:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self TTTextStorage];
  [v5 setConvertAttributes:1];
  v6 = [(ICEditingTextView *)self ic_currentWritingDirection]!= -1;
  v9.receiver = self;
  v9.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionNatural:v4];
  v7 = [v5 styler];
  [v7 setUserChangedWritingDirection:v6];
  v8 = [(ICEditingTextView *)self editorController];
  [v8 textViewDidChange:self];

  [v5 setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:v4];
}

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75810];
  v6 = [(ICEditingTextView *)self _dataOwnerForPaste];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ICEditingTextView_paste___block_invoke;
  v8[3] = &unk_2781ABEB8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 _performAsDataOwner:v6 block:v8];
}

uint64_t __27__ICEditingTextView_paste___block_invoke(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pasteDelegate];

  if (!v2)
  {
    v4 = [*(a1 + 32) TTTextStorage];
    [v4 setIsReadingSelectionFromPasteboard:1];

    v5 = [*(a1 + 32) TTTextStorage];
    [v5 breakUndoCoalescing];

    v6 = [*(a1 + 32) TTTextStorage];
    [v6 beginEditing];

    v7 = [MEMORY[0x277D75810] generalPasteboard];
    v47[0] = *MEMORY[0x277D35D08];
    v8 = v47[0];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v10 = [v7 itemSetWithPasteboardTypes:v9];

    v11 = [v7 dataForPasteboardType:v8 inItemSet:v10];
    v12 = [v11 lastObject];

    if (v12)
    {
      v13 = [MEMORY[0x277D35F38] pasteboardDataFromPersistenceData:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_alloc_init(ICEditingTextViewPasteSession);
    v15 = [*(a1 + 32) editorController];
    v16 = [v15 note];
    -[ICEditingTextViewPasteSession setPreviousShouldAddMediaAsynchronously:](v14, "setPreviousShouldAddMediaAsynchronously:", [v16 shouldAddMediaAsynchronously]);

    if (v13)
    {
      v17 = *(a1 + 32);
      v44 = 0;
      v18 = [v17 pasteNotePasteboardData:v13 session:v14 error:&v44];
      v19 = v44;
      if (!v18)
      {
LABEL_9:
        v24 = [*(a1 + 32) TTTextStorage];
        [v24 endEditing];

        v25 = [*(a1 + 32) TTTextStorage];
        [v25 setIsReadingSelectionFromPasteboard:0];

        v26 = [*(a1 + 32) editorController];
        v27 = [v26 note];
        [v27 save];

        return [*(a1 + 32) informDelegateOfAnalyticsCalloutBarButtonActionOfType:3 sender:*(a1 + 40)];
      }
    }

    else
    {
      v40 = v10;
      v29 = *MEMORY[0x277CE1DB0];
      v30 = [*MEMORY[0x277CE1DB0] identifier];
      v46 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      v32 = [v7 itemSetWithPasteboardTypes:v31];

      v33 = [v29 identifier];
      v34 = [v7 dataForPasteboardType:v33 inItemSet:v32];

      if ([v34 count])
      {
        v35 = [v7 pasteboardTypesForItemSet:v32];
        v18 = [*(a1 + 32) pasteImagesDataArray:v34 typesArray:v35 session:v14];
      }

      else
      {
        v35 = [v7 string];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __27__ICEditingTextView_paste___block_invoke_2;
        v41[3] = &unk_2781ABEB8;
        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v38 = *(a1 + 32);
        v42 = v37;
        v43 = v38;
        v39 = [v7 pasteboardTypes];
        v18 = [v36 pasteStringUsingBlock:v41 approxPasteString:v35 pasteboardTypes:v39 session:v14];
      }

      v19 = 0;
      v10 = v40;
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    [*(a1 + 32) icaxTextDidChange];
    v20 = [*(a1 + 32) editorController];
    v21 = [v20 note];
    [v21 updateChangeCountWithReason:@"Pasted string"];

    v22 = [*(a1 + 32) editorController];
    v23 = [v22 note];
    [v23 save];

    [*(a1 + 32) _accessibilityPostPasteboardTextForOperation:*MEMORY[0x277CE6E40]];
    goto LABEL_9;
  }

  v3 = *(a1 + 40);
  v45.receiver = *(a1 + 32);
  v45.super_class = ICEditingTextView;
  objc_msgSendSuper2(&v45, sel_paste_, v3);
  return [*(a1 + 32) informDelegateOfAnalyticsCalloutBarButtonActionOfType:3 sender:*(a1 + 40)];
}

id __27__ICEditingTextView_paste___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = ICEditingTextView;
  return objc_msgSendSuper2(&v3, sel_paste_, v1);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ICBaseTextView *)self icDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(ICBaseTextView *)self icDelegate];
    v9 = [v8 shouldShowMenuItems];

    if (!v9)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (NSSelectorFromString(&cfstr_Showtextformat.isa) == a3)
  {
    goto LABEL_42;
  }

  LOBYTE(v10) = 0;
  if (sel_toggleBoldface_ == a3 || sel_toggleItalics_ == a3 || sel_toggleUnderline_ == a3)
  {
    goto LABEL_43;
  }

  if (sel_copy_ == a3 || sel_cut_ == a3)
  {
    v25.receiver = self;
    v25.super_class = ICEditingTextView;
    if ([(ICEditingTextView *)&v25 canPerformAction:a3 withSender:v6])
    {
      v14 = [(ICEditingTextView *)self isSelectionCopyableSize];
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  if (sel__share_ == a3)
  {
    v24.receiver = self;
    v24.super_class = ICEditingTextView;
    if (![(ICEditingTextView *)&v24 canPerformAction:a3 withSender:v6]|| ![(ICEditingTextView *)self isSelectionCopyableSize])
    {
      goto LABEL_42;
    }

    v10 = [(ICEditingTextView *)self ic_isInSecureWindow]^ 1;
    goto LABEL_43;
  }

  v11 = [(ICEditingTextView *)self singleSelectedAttachment];
  if (v11)
  {
    v12 = v11;
    if (NSSelectorFromString(&cfstr_Define.isa) == a3)
    {

      goto LABEL_42;
    }

    v13 = NSSelectorFromString(&cfstr_Promptforrepla.isa);

    if (v13 == a3)
    {
LABEL_42:
      LOBYTE(v10) = 0;
      goto LABEL_43;
    }
  }

  if (sel__findSelected_ == a3)
  {
    if ([(ICEditingTextView *)self selectionSupportsFindInNote])
    {
      v15 = NSClassFromString(&cfstr_Icpaperdocumen.isa);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49__ICEditingTextView_canPerformAction_withSender___block_invoke;
      v23[3] = &__block_descriptor_40_e21_B16__0__UIResponder_8lu32l8;
      v23[4] = v15;
      v16 = [(ICEditingTextView *)self firstResponderMatchingPredicate:v23];
      LOBYTE(v10) = v16 == 0;

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (sel_captureTextFromCamera_ != a3)
  {
    if (sel_makeTextWritingDirectionLeftToRight_ == a3 || sel_makeTextWritingDirectionRightToLeft_ == a3 || sel_makeTextWritingDirectionNatural_ == a3)
    {
      if ([(ICEditingTextView *)self isEditing])
      {
        v14 = [(ICEditingTextView *)self allowsEditingTextAttributes];
        goto LABEL_24;
      }
    }

    else
    {
      if (sel_delete_ != a3)
      {
        v20.receiver = self;
        v20.super_class = ICEditingTextView;
        v14 = [(ICEditingTextView *)&v20 canPerformAction:a3 withSender:v6];
LABEL_24:
        LOBYTE(v10) = v14;
        goto LABEL_43;
      }

      if ([(ICEditingTextView *)self isEditable])
      {
        v21.receiver = self;
        v21.super_class = ICEditingTextView;
        v14 = [(ICEditingTextView *)&v21 canPerformAction:a3 withSender:v6];
        goto LABEL_24;
      }
    }

    goto LABEL_42;
  }

  objc_opt_class();
  v17 = [(ICEditingTextView *)self firstResponder];
  v18 = ICDynamicCast();

  if (v18 && v18 != self && [(ICEditingTextView *)v18 isDescendantOfView:self]&& ([(ICEditingTextView *)v18 conformsToProtocol:&unk_2827B71A8]& 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICEditingTextView;
    LOBYTE(v10) = [(ICEditingTextView *)&v22 canPerformAction:a3 withSender:v6];
  }

LABEL_43:
  return v10;
}

- (BOOL)isDocumentCopyableSize
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  v3 = [v2 mergeableString];
  v4 = [v3 attributedString];
  v5 = [v4 ic_isCopyableSize];

  return v5;
}

- (BOOL)isSelectionCopyableSize
{
  v3 = [(ICEditingTextView *)self TTTextStorage];
  v4 = [v3 mergeableString];
  v5 = [v4 attributedString];
  v6 = [(ICEditingTextView *)self selectedRange];
  v8 = [v5 attributedSubstringFromRange:{v6, v7}];

  LOBYTE(v3) = [v8 ic_isCopyableSize];
  return v3;
}

- (BOOL)selectionContainsDDResultAttribute
{
  if (([(ICEditingTextView *)self isEditing]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v4 = [(ICEditingTextView *)self textStorage];
    [(ICEditingTextView *)self selectedRange];
    gotLoadHelper_x8__DDResultAttributeName(v5);
    v7 = **(v6 + 472);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __55__ICEditingTextView_selectionContainsDDResultAttribute__block_invoke;
    v12 = &unk_2781ABC80;
    v13 = &v14;
    [v4 enumerateAttribute:v7 inRange:? options:? usingBlock:?];

    v3 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return v3 & 1;
}

uint64_t __55__ICEditingTextView_selectionContainsDDResultAttribute__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)_getPasteboardItemFromSelection:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v52 = [(ICEditingTextView *)self selectionContainsDDResultAttribute];
  if (v52)
  {
    [(ICEditingTextView *)self ic_resetDataDetectorsResults];
  }

  v64 = [(ICEditingTextView *)self TTTextStorage];
  v63 = [(ICEditingTextView *)self persistenceHelper];
  [(ICEditingTextView *)self selectedRanges];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v4 = v75 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v5)
  {
    v6 = v5;
    length = 0;
    v8 = *v73;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v73 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v81.location = [*(*(&v72 + 1) + 8 * i) rangeValue];
        v81.length = v11;
        v80.location = location;
        v80.length = length;
        v12 = NSUnionRange(v80, v81);
        location = v12.location;
        length = v12.length;
      }

      v6 = [v4 countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v6);
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = [(ICEditingTextView *)self textController];
  v14 = [v13 extendedSelectionRangeForCollapsedSectionHeadingWithRange:location textView:{length, self}];
  v16 = v15;

  v53 = self;
  if (location == v14 && length == v16)
  {
    [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v17 = [MEMORY[0x277CCAE60] valueWithRange:{v14, v16, location, length}];
    v77 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];

    v4 = v18;
    [MEMORY[0x277CBEB18] array];
  }
  v61 = ;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v62 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v62)
  {
    v60 = *v69;
    v19 = *MEMORY[0x277CE1ED8];
    v20 = *MEMORY[0x277CE1DA0];
    v58 = *MEMORY[0x277CE1D78];
    v55 = *MEMORY[0x277D35D08];
    v56 = *MEMORY[0x277CE1EB0];
    v59 = *MEMORY[0x277CE1ED8];
    v57 = *MEMORY[0x277CE1DA0];
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v69 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v68 + 1) + 8 * j);
        v23 = [MEMORY[0x277CBEB38] dictionary];
        v24 = [v22 rangeValue];
        v26 = v25;
        v27 = [v19 identifier];
        v28 = [v64 copyDataForUTI:v27 range:v24 persistenceHelper:{v26, v63}];

        if (v28)
        {
          v29 = [v19 identifier];
          [v23 setObject:v28 forKeyedSubscript:v29];
        }

        v30 = [v20 identifier];
        v31 = [v64 copyDataForUTI:v30 range:v24 persistenceHelper:{v26, v63}];

        if (v31)
        {
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v31 encoding:4];
          v33 = [v20 identifier];
          [v23 setObject:v32 forKeyedSubscript:v33];
        }

        v34 = [v58 identifier];
        v35 = [v64 copyDataForUTI:v34 range:v24 persistenceHelper:{v26, v63}];

        if (v35)
        {
          v36 = [v58 identifier];
          [v23 setObject:v35 forKeyedSubscript:v36];
        }

        v37 = [v56 identifier];
        v38 = [v64 copyDataForUTI:v37 range:v24 persistenceHelper:{v26, v63}];

        if (v38)
        {
          v39 = [v56 identifier];
          [v23 setObject:v38 forKeyedSubscript:v39];
        }

        v40 = [v64 copyDataForUTI:v55 range:v24 persistenceHelper:{v26, v63}];
        if (v40)
        {
          [v23 setObject:v40 forKeyedSubscript:v55];
        }

        v41 = [MEMORY[0x277CBEA90] data];
        [v23 setObject:v41 forKeyedSubscript:@"iOS rich content paste pasteboard type"];

        v42 = [v23 copy];
        [v61 addObject:v42];

        v19 = v59;
        v20 = v57;
      }

      v62 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v62);
  }

  v43 = MEMORY[0x277D75810];
  v44 = [(ICEditingTextView *)v53 _dataOwnerForCopy];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __53__ICEditingTextView__getPasteboardItemFromSelection___block_invoke;
  v65[3] = &unk_2781AEEC0;
  v66 = v61;
  v67 = v51;
  v45 = v61;
  v46 = v51;
  [v43 _performAsDataOwner:v44 block:v65];
  if (v52)
  {
    [(ICEditingTextView *)v53 ic_startDataDetectors];
  }

  if (v47 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICEditingTextView *)v53 setSelectedRange:v47, v49];
  }
}

void __53__ICEditingTextView__getPasteboardItemFromSelection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)copy:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__ICEditingTextView_copy___block_invoke;
  v3[3] = &unk_2781AF2F0;
  v3[4] = self;
  [(ICEditingTextView *)self _getPasteboardItemFromSelection:v3];
}

uint64_t __26__ICEditingTextView_copy___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75810];
  v4 = a2;
  v5 = [v3 generalPasteboard];
  [v5 setItems:v4];

  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277CE6E18];

  return [v6 _accessibilityPostPasteboardTextForOperation:v7];
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self selectedRange];
  v7 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__ICEditingTextView_cut___block_invoke;
  v9[3] = &unk_2781AD1E8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:1 selectedRange:v5 completionHandler:v7, v9];
}

uint64_t __25__ICEditingTextView_cut___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reallyCut:*(result + 40)];
  }

  return result;
}

- (void)_reallyCut:(id)a3
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__21;
  v19[4] = __Block_byref_object_dispose__21;
  v20 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ICEditingTextView__reallyCut___block_invoke;
  v18[3] = &unk_2781AF318;
  v18[4] = v19;
  [(ICEditingTextView *)self _getPasteboardItemFromSelection:v18];
  v5 = [MEMORY[0x277D75810] generalPasteboard];
  v6 = MEMORY[0x277D75810];
  v7 = [(ICEditingTextView *)self _dataOwnerForCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__ICEditingTextView__reallyCut___block_invoke_2;
  v16[3] = &unk_2781ABEB8;
  v16[4] = self;
  v8 = v4;
  v17 = v8;
  [v6 _performAsDataOwner:v7 block:v16];
  v9 = MEMORY[0x277D75810];
  v10 = [(ICEditingTextView *)self _dataOwnerForCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__ICEditingTextView__reallyCut___block_invoke_3;
  v12[3] = &unk_2781AF340;
  v11 = v5;
  v14 = self;
  v15 = v19;
  v13 = v11;
  [v9 _performAsDataOwner:v10 block:v12];

  _Block_object_dispose(v19, 8);
}

void __32__ICEditingTextView__reallyCut___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textController];
  v3 = [*(a1 + 32) textController];
  v4 = [*(a1 + 32) selectedRange];
  v6 = [v3 extendedSelectionRangeForCollapsedSectionHeadingWithRange:v4 textView:{v5, *(a1 + 32)}];
  v8 = v7;

  if (v6 != [*(a1 + 32) selectedRange] || v8 != v9)
  {
    [*(a1 + 32) setSelectedRange:{v6, v8}];
  }

  v11 = [*(a1 + 32) selectedRange];
  v13 = v12;
  v14 = [*(a1 + 32) selectedRange];
  v16 = v15;
  v17 = [*(a1 + 32) TTTextStorage];
  [v2 notifyInlineAttachmentsDeletedInRange:v14 ofTextStorage:{v16, v17}];

  v18 = *(a1 + 32);
  v19 = [v18 TTTextStorage];
  [v2 removeListStyleBeforeDeletingParagraphContentIfNecessaryForTextView:v18 textStorage:v19 rangeToBeDeleted:v11 blockBeforeEndEditing:{v13, 0}];

  v20 = *(a1 + 40);
  v21.receiver = *(a1 + 32);
  v21.super_class = ICEditingTextView;
  objc_msgSendSuper2(&v21, sel_cut_, v20);
}

uint64_t __32__ICEditingTextView__reallyCut___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setItems:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 40) icaxTextDidChange];
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x277CE6E20];

  return [v2 _accessibilityPostPasteboardTextForOperation:v3];
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = [(ICEditingTextView *)self willInsertText:v5];
  v8 = v7;

  v9 = [(ICEditingTextView *)self textController];
  v10 = [v9 authorHighlightsController];

  v11 = [(ICEditingTextView *)self selectedRange];
  v13 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ICEditingTextView_insertAttributedText___block_invoke;
  v16[3] = &unk_2781AF368;
  v17 = v10;
  v18 = v4;
  v19 = self;
  v20 = v6;
  v21 = v8;
  v14 = v4;
  v15 = v10;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:2 selectedRange:v11 completionHandler:v13, v16];
}

void __42__ICEditingTextView_insertAttributedText___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setCoalesceAuthorHighlightUpdates:1];
    v3 = *(a1 + 40);
    v6.receiver = *(a1 + 48);
    v6.super_class = ICEditingTextView;
    objc_msgSendSuper2(&v6, sel_insertAttributedText_, v3);
    [*(a1 + 32) setCoalesceAuthorHighlightUpdates:0];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) string];
    [v4 didInsertText:v5 range:{*(a1 + 56), *(a1 + 64)}];
  }
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self willInsertText:v4];
  v7 = v6;
  v8 = [(ICEditingTextView *)self textController];
  v9 = [v8 authorHighlightsController];

  v10 = [(ICEditingTextView *)self selectedRange];
  v12 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__ICEditingTextView_insertText___block_invoke;
  v15[3] = &unk_2781AF368;
  v16 = v9;
  v17 = v4;
  v18 = self;
  v19 = v5;
  v20 = v7;
  v13 = v4;
  v14 = v9;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:2 selectedRange:v10 completionHandler:v12, v15];
}

uint64_t __32__ICEditingTextView_insertText___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setCoalesceAuthorHighlightUpdates:1];
    v3 = *(v2 + 40);
    v4.receiver = *(v2 + 48);
    v4.super_class = ICEditingTextView;
    objc_msgSendSuper2(&v4, sel_insertText_, v3);
    [*(v2 + 32) setCoalesceAuthorHighlightUpdates:0];
    return [*(v2 + 48) didInsertText:*(v2 + 40) range:{*(v2 + 56), *(v2 + 64)}];
  }

  return result;
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if ([(ICEditingTextView *)self selectedRangeBeforeMarking]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self setSelectedRangeBeforeMarking:v8, v9];
  }

  objc_opt_class();
  v10 = [(ICEditingTextView *)self textStorage];
  v11 = ICDynamicCast();
  [v11 setIsTypingOrMarkingText:1];

  v14.receiver = self;
  v14.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v14 setMarkedText:v7 selectedRange:location, length];

  objc_opt_class();
  v12 = [(ICEditingTextView *)self textStorage];
  v13 = ICDynamicCast();
  [v13 setIsTypingOrMarkingText:0];
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([(ICEditingTextView *)self selectedRangeBeforeMarking]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self setSelectedRangeBeforeMarking:v8, v9];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = @"ICEditingTextViewWillSetMarkedTextNotificationMarkedTextKey";
  v18[1] = @"ICEditingTextViewWillSetMarkedTextNotificationSelectedRangeKey";
  v19[0] = v7;
  v11 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v10 postNotificationName:@"ICEditingTextViewWillSetMarkedTextNotification" object:self userInfo:v12];

  objc_opt_class();
  v13 = [(ICEditingTextView *)self textStorage];
  v14 = ICDynamicCast();
  [v14 setIsTypingOrMarkingText:1];

  v17.receiver = self;
  v17.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v17 setAttributedMarkedText:v7 selectedRange:location, length];
  objc_opt_class();

  v15 = [(ICEditingTextView *)self textStorage];
  v16 = ICDynamicCast();
  [v16 setIsTypingOrMarkingText:0];
}

- (void)unmarkText
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 calculateRecognitionController];
  [v4 discardPreviewedResult];

  v5 = [(ICEditingTextView *)self ic_markedTextRange];
  v7 = v6;
  v8 = [(ICEditingTextView *)self textStorage];
  v35 = v5;
  v9 = [v8 attributedSubstringFromRange:{v5, v7}];
  v10 = [v9 string];

  [(ICEditingTextView *)self setSelectedRangeBeforeMarking:0x7FFFFFFFFFFFFFFFLL, 0];
  objc_opt_class();
  v11 = [(ICEditingTextView *)self textStorage];
  v12 = ICDynamicCast();
  [v12 setIsTypingOrMarkingText:1];

  v36.receiver = self;
  v36.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v36 unmarkText];
  objc_opt_class();
  v13 = [(ICEditingTextView *)self textStorage];
  v14 = ICDynamicCast();
  [v14 setIsTypingOrMarkingText:0];

  objc_opt_class();
  v15 = [(ICEditingTextView *)self textStorage];
  v16 = ICDynamicCast();

  v17 = [(ICEditingTextView *)self editorController];
  v18 = [v17 mentionsController];
  v19 = [(ICEditingTextView *)self selectedRange];
  v21 = v20;
  v22 = [(ICEditingTextView *)self editorController];
  v23 = [v22 note];
  BYTE1(v33) = [(ICEditingTextView *)self languageHasSpaces];
  LOBYTE(v33) = 0;
  LOBYTE(v19) = [v18 checkForMentionInEditedRange:v19 ofTextStorage:v21 note:v16 textView:v23 allowAutoExplicitMention:self isEndingEditing:1 languageHasSpaces:v33 parentAttachment:0];

  if ((v19 & 1) == 0)
  {
    v24 = [(ICEditingTextView *)self editorController];
    v25 = [v24 hashtagController];
    v26 = [(ICEditingTextView *)self selectedRange];
    v28 = v27;
    v29 = [(ICEditingTextView *)self editorController];
    v30 = [v29 note];
    BYTE1(v34) = [(ICEditingTextView *)self languageHasSpaces];
    LOBYTE(v34) = 0;
    [v25 checkForHashtagInEditedRange:v26 ofTextStorage:v28 note:v16 textView:v30 allowAutoExplicitHashtag:self isEndingEditing:1 languageHasSpaces:v34 parentAttachment:0];
  }

  v31 = [(ICEditingTextView *)self editorController];
  v32 = [v31 calculateRecognitionController];
  [v32 didUnmarkString:v10 atRange:{v35, v7}];
}

- (void)deleteBackward
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 calculateRecognitionController];
  [v4 discardPreviewedResult];

  objc_opt_class();
  v5 = [(ICEditingTextView *)self textStorage];
  v6 = ICDynamicCast();

  v7 = [(ICEditingTextView *)self selectedTextRange];
  v8 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 attribute:*MEMORY[0x277D35DA8] atIndex:v8 effectiveRange:0];
    v11 = [v10 uuid];
    if (v11)
    {
      v12 = [v6 outlineController];
      v13 = [v10 uuid];
      v9 = [v12 isUUIDCollapsed:v13];
    }

    else
    {
      v9 = 0;
    }

    v14 = [v10 uuid];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 outlineController];
      v17 = [v10 uuid];
      v18 = [v16 isUUIDHidden:v17];

      if (v18)
      {
        v19 = [v6 outlineController];
        v20 = [v10 uuid];
        v21 = [v19 closestVisibleAncestorForUUID:v20];

        if (v21)
        {
          v22 = [v6 outlineController];
          v23 = MEMORY[0x277CBEB98];
          v31[0] = v21;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
          v25 = [v23 setWithArray:v24];
          [v22 expandUUIDs:v25];
        }

        goto LABEL_18;
      }
    }
  }

  v10 = [(ICEditingTextView *)self textController];
  v26 = [(ICEditingTextView *)self selectedTextRange];
  v27 = [v26 isEmpty];

  if ((v27 & 1) == 0 && !v9)
  {
    if ([v10 deleteWordBackwardForSpecialCasesInTextView:self])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (([v10 deleteBackwardForSpecialCasesInTextView:self] & 1) == 0)
  {
LABEL_17:
    v28 = [(ICEditingTextView *)self selectedRange];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __35__ICEditingTextView_deleteBackward__block_invoke;
    v30[3] = &unk_2781AC6F0;
    v30[4] = self;
    v30[5] = v28;
    v30[6] = v29;
    [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:0 selectedRange:v28 completionHandler:v29, v30];
  }

LABEL_18:
}

void __35__ICEditingTextView_deleteBackward__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setSelectedRange:{*(a1 + 40), *(a1 + 48)}];
    objc_opt_class();
    v3 = [*(a1 + 32) textStorage];
    v4 = ICDynamicCast();
    [v4 setIsTypingOrMarkingText:1];

    v7.receiver = *(a1 + 32);
    v7.super_class = ICEditingTextView;
    objc_msgSendSuper2(&v7, sel_deleteBackward);
    objc_opt_class();
    v5 = [*(a1 + 32) textStorage];
    v6 = ICDynamicCast();
    [v6 setIsTypingOrMarkingText:0];
  }
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  if (a3)
  {

    [(ICEditingTextView *)self deleteBackward];
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v5 _deleteBackwardAndNotify:?];
  }
}

- (void)_removeDrawingAttachment:(id)a3 withView:(id)a4 forDeletion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    objc_opt_class();
    v10 = ICCheckedDynamicCast();
    v11 = [v10 attachment];
    v12 = [MEMORY[0x277CBEA60] ic_arrayFromNonNilObject:v11];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__ICEditingTextView__removeDrawingAttachment_withView_forDeletion___block_invoke;
    v14[3] = &unk_2781AD198;
    v15 = v8;
    v16 = v9;
    v17 = self;
    [(ICEditingTextView *)self showDeleteInlineDrawingAlertWithType:1 attachments:v12 completionHandler:v14];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v13 _removeDrawingAttachment:v8 withView:v9 forDeletion:0];
  }
}

id __67__ICEditingTextView__removeDrawingAttachment_withView_forDeletion___block_invoke(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 5);
    v3 = *(result + 4);
    v4.receiver = *(result + 6);
    v4.super_class = ICEditingTextView;
    return objc_msgSendSuper2(&v4, sel__removeDrawingAttachment_withView_forDeletion_, v3, v2, 1);
  }

  return result;
}

- (BOOL)isPreviewing
{
  v3 = [MEMORY[0x277D75C40] instancesRespondToSelector:sel_isPreviewing];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    LOBYTE(v3) = [(ICEditingTextView *)&v5 isPreviewing];
  }

  return v3;
}

- (void)_insertDrawing:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  v4 = a3;
  [(ICEditingTextView *)&v5 _insertDrawing:self];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:4 sender:v4, v5.receiver, v5.super_class];
}

- (void)select:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  v4 = a3;
  [(ICEditingTextView *)&v5 select:v4];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:1 sender:v4, v5.receiver, v5.super_class];
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 selectAll:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:2 sender:v4];
  }
}

- (id)typingAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICEditingTextView *)v2 cachedTypingAttributes];
  v4 = v3;
  if (!v3)
  {
    v7.receiver = v2;
    v7.super_class = ICEditingTextView;
    v4 = [(ICEditingTextView *)&v7 typingAttributes];
  }

  [(ICEditingTextView *)v2 setCachedTypingAttributes:v4];
  if (!v3)
  {
  }

  v5 = [(ICEditingTextView *)v2 cachedTypingAttributes];
  objc_sync_exit(v2);

  return v5;
}

- (void)setTypingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v4)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((typingAttributes) != nil)" functionName:"-[ICEditingTextView setTypingAttributes:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "typingAttributes"}];
  }

  objc_opt_class();
  v6 = [(ICEditingTextView *)v5 textStorage];
  v7 = ICDynamicCast();
  v8 = [v7 isEditing];

  if (v8)
  {
    [(ICEditingTextView *)v5 setPendingTypingAttributes:v4];
  }

  else
  {
    [(ICEditingTextView *)v5 setPendingTypingAttributes:0];
    [(ICEditingTextView *)v5 setCachedTypingAttributes:v4];
    v9.receiver = v5;
    v9.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v9 setTypingAttributes:v4];
  }

  objc_sync_exit(v5);
}

- (id)internalTypingAttributes
{
  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  v2 = [(ICEditingTextView *)&v4 typingAttributes];

  return v2;
}

- (void)setInternalTypingAttributes:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v3 setTypingAttributes:a3];
}

- (void)applyPendingTypingAttributesIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICEditingTextView *)v2 pendingTypingAttributes];

  if (v3)
  {
    [(ICEditingTextView *)v2 setPendingTypingAttributes:0];
    v4 = [(ICEditingTextView *)v2 pendingTypingAttributes];
    [(ICEditingTextView *)v2 setCachedTypingAttributes:v4];

    v5 = [(ICEditingTextView *)v2 pendingTypingAttributes];
    v6.receiver = v2;
    v6.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v6 setTypingAttributes:v5];
  }

  objc_sync_exit(v2);
}

- (void)ic_startDataDetectors
{
  if (-[ICEditingTextView ic_shouldStartDataDetectors](self, "ic_shouldStartDataDetectors") && [MEMORY[0x277D75C40] instancesRespondToSelector:sel__startDataDetectors])
  {

    [(ICEditingTextView *)self _startDataDetectors];
  }
}

- (void)ic_resetDataDetectorsResults
{
  if (-[ICEditingTextView ic_shouldStartDataDetectors](self, "ic_shouldStartDataDetectors") && [MEMORY[0x277D75C40] instancesRespondToSelector:sel__resetDataDetectorsResults])
  {

    [(ICEditingTextView *)self _resetDataDetectorsResults];
  }
}

- (BOOL)ic_shouldStartDataDetectors
{
  if (![(ICEditingTextView *)self dataDetectorTypes]|| ([(ICEditingTextView *)self isEditable]& 1) != 0)
  {
    return 0;
  }

  return [(ICEditingTextView *)self isSelectable];
}

- (BOOL)hasFullWidthTextAttachmentAtCaretLocation:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = [(ICEditingTextView *)self TTTextStorage];
  v6 = [v5 length];

  if (v6 <= a3)
  {
    return 0;
  }

  objc_opt_class();
  v7 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [v7 attribute:*MEMORY[0x277D74060] atIndex:a3 longestEffectiveRange:0 inRange:{a3, 1}];
  v9 = ICDynamicCast();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), ICDynamicCast(), v10 = objc_claimAutoreleasedReturnValue(), [v10 attachment], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "preferredViewSize"), v11, v10, v12 != 1))
  {
    v14 = 1;
  }

  else if (v9 && [v9 embeddingType] == 1)
  {
    [v9 bounds];
    v14 = v13 > 0.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self beginningOfDocument];
  v6 = [(ICEditingTextView *)self offsetFromPosition:v5 toPosition:v4];

  v7 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [v7 logicalRangeForLocation:v6];
  v10 = v8 + v9;
  if (v6 == v8 + v9)
  {
    v11 = [(ICEditingTextView *)self editorController];
    v12 = [v11 textController];
    v13 = [(ICEditingTextView *)self typingAttributes];
    v14 = [v12 typingAttributesForRange:v6 forSelectionChange:0 currentTypingAttributes:0 inTextStorage:{v13, v7}];

    v15 = [(ICEditingTextView *)self typingAttributes];
    LOBYTE(v12) = [v14 isEqual:v15];

    if ((v12 & 1) == 0)
    {
      [(ICEditingTextView *)self setTypingAttributes:v14];
    }
  }

  v95.receiver = self;
  v95.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v95 caretRectForPosition:v4];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = MEMORY[0x277D74118];
  v25 = 0x277D74000;
  if (v6 == v10)
  {
    v26 = [v7 styler];
    v27 = [(ICEditingTextView *)self typingAttributes];
    v28 = [v27 objectForKeyedSubscript:*v24];

    if (v28)
    {
      v29 = v24;
      v30 = [v28 baseWritingDirection];
      v31 = [(ICEditingTextView *)self typingAttributes];
      v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];

      if (v32)
      {
        v33 = MEMORY[0x277D36968];
        v34 = [(ICEditingTextView *)self selectedRange];
        [v33 indentForStyle:v32 range:v34 attributedString:v35 textView:{v7, self}];
      }

      else
      {
        [v28 firstLineHeadIndent];
      }

      v48 = v36;

      v46 = v30 == -1;
      v47 = v48;
      v24 = v29;
    }

    else
    {
      v46 = 1;
      v47 = 0.0;
    }

    v93 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = 0;
    v49 = [v7 string];
    v50 = [(ICEditingTextView *)self selectedRange];
    [v49 getParagraphStart:&v94 end:0 contentsEnd:&v93 forRange:{v50, v51}];

    if (v46 && v94 == v93)
    {
      v52 = [v26 keyboardLanguageForTextView:self];
      v25 = 0x277D74000uLL;
      if (v52)
      {
        v53 = v24;
        v54 = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:v52];
        [(ICEditingTextView *)self bounds];
        v56 = v55;
        v90 = v57;
        v91 = v58;
        rect = v59;
        v60 = [(ICEditingTextView *)self textContainer];
        [v60 lineFragmentPadding];
        v62 = v61;
        [(ICEditingTextView *)self textContainerInset];
        v64 = v63;
        v66 = v65;

        v67 = v56;
        v68 = v90;
        v69 = v91;
        v70 = rect;
        if (v54 == 1)
        {
          v17 = CGRectGetMaxX(*&v67) - (v62 + v66) - v47;
        }

        else
        {
          v17 = v47 + CGRectGetMinX(*&v67) + v62 + v64;
        }

        v24 = v53;
        v25 = 0x277D74000uLL;
      }
    }

    else
    {
      v25 = 0x277D74000;
    }
  }

  else
  {
    if (v6 <= v8)
    {
      goto LABEL_29;
    }

    v26 = [v7 attribute:*MEMORY[0x277D74060] atIndex:v6 - 1 longestEffectiveRange:0 inRange:{v6 - 1, 1}];
    objc_opt_class();
    v37 = ICDynamicCast();
    v28 = v37;
    if (v37)
    {
      [v37 attachmentBoundsMargins];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[ICEditingTextView semanticContentAttribute](self, "semanticContentAttribute")}];
      v45 = v17 + v39 + -2.0;
      if (v44 != 1)
      {
        v45 = v17 - (v39 + -2.0);
      }

      if (v39 > 2.0)
      {
        v17 = v45;
      }

      v19 = v19 + v41;
      v23 = v23 - (v41 + v43);
    }
  }

LABEL_29:
  v71 = [*(v25 + 584) ic_isRTL];
  v72 = [(ICEditingTextView *)self textStorage];
  v73 = [v72 length];

  if (v6 < v73)
  {
    v74 = [(ICEditingTextView *)self textStorage];
    v75 = [v74 attribute:*v24 atIndex:v6 effectiveRange:0];

    if (v75)
    {
      v71 = [v75 baseWritingDirection] == 1;
    }
  }

  [(ICEditingTextView *)self bounds];
  if (v17 >= CGRectGetMidX(v96))
  {
    v84 = v6 - (v71 ^ 1);
    if (v84 >= 0 && [(ICEditingTextView *)self hasFullWidthTextAttachmentAtCaretLocation:v84])
    {
      [(ICEditingTextView *)self bounds];
      v17 = v85 + -3.0;
    }
  }

  else
  {
    v76 = v6 - v71;
    if (v76 >= 0)
    {
      if ([(ICEditingTextView *)self hasFullWidthTextAttachmentAtCaretLocation:v76])
      {
        v77 = [(ICEditingTextView *)self ink];
        v78 = [v77 _isHandwritingInk];

        v17 = 1.0;
        if (v78)
        {
          v79 = [(ICEditingTextView *)self textStorage];
          v80 = [v79 attribute:*MEMORY[0x277D740A8] atIndex:v76 effectiveRange:0];

          v81 = [(ICEditingTextView *)self textContainer];
          [v81 textContainerOrigin];
          v17 = v82;

          if (v80)
          {
            [v80 lineHeight];
            v23 = v83;
          }

          else
          {
            v23 = 18.0;
          }
        }
      }
    }
  }

  v86 = v17;
  v87 = v19;
  v88 = v21;
  v89 = v23;
  result.size.height = v89;
  result.size.width = v88;
  result.origin.y = v87;
  result.origin.x = v86;
  return result;
}

- (void)updateTextViewForDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__ICEditingTextView_updateTextViewForDidChange__block_invoke;
  v2[3] = &unk_2781AF390;
  v2[4] = self;
  [(ICEditingTextView *)self ic_performBlock:v2];
}

void __47__ICEditingTextView_updateTextViewForDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 typingAttributes];
  v9 = *MEMORY[0x277D740A8];
  v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

  v10 = [*(a1 + 32) internalTypingAttributes];
  v11 = [v10 mutableCopy];

  if (v22)
  {
    v12 = [v11 objectForKeyedSubscript:v9];
    v13 = v12;
    if (v12)
    {
      v14 = MEMORY[0x277D74300];
      v15 = [v12 fontDescriptor];
      [v22 pointSize];
      v16 = [v14 fontWithDescriptor:v15 size:?];

      [v11 setObject:v16 forKeyedSubscript:v9];
    }
  }

  [v7 fixupAfterEditing];
  v17 = [*(a1 + 32) selectedRange];
  v19 = [v6 typingAttributesForRange:v17 forSelectionChange:v18 currentTypingAttributes:0 inTextStorage:{v11, v7}];

  v20 = [*(a1 + 32) typingAttributes];
  v21 = [v19 isEqualToDictionary:v20];

  if ((v21 & 1) == 0)
  {
    [*(a1 + 32) setTypingAttributes:v19];
  }

  [*(a1 + 32) icaxTextDidChange];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self tapGestureRecognizer];

  if (v5 != v4)
  {
    v15.receiver = self;
    v15.super_class = ICEditingTextView;
    v6 = [(ICEditingTextView *)&v15 gestureRecognizerShouldBegin:v4];
    v7 = [(ICEditingTextView *)self editorController];
    v8 = [v7 auxiliaryResponder];

    if (v6)
    {
      v9 = [(ICEditingTextView *)self editorController];
      if (![v9 isEditing] || (LOBYTE(v6) = 1, v8) && v8 != self)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_14;
        }

        v9 = [(ICEditingTextView *)self linkTappedByGesture:v4];
        LOBYTE(v6) = v9 != 0;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([v4 numberOfTouches] && (-[ICEditingTextView editorController](self, "editorController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "shouldIgnoreTapToStartEditingTextView:", self), v11, (v12 & 1) == 0))
  {
    v13 = [(ICEditingTextView *)self linkTappedByGesture:v4];

    LOBYTE(v6) = v13 == 0;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_15:

  return v6;
}

- (void)respondToTapGesture:(id)a3
{
  v31 = a3;
  objc_opt_class();
  v4 = [(ICEditingTextView *)self textContainer];
  v5 = ICDynamicCast();
  v6 = [v5 insideSiriSnippet];

  if (v6)
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = [v7 note];

    v9 = [MEMORY[0x277D35DF0] appURLForNote:v8];
    if (v9)
    {
      [ICExtensionSafeAPIShims openURL:v9 originatingView:self completionHandler:0];
    }

    goto LABEL_9;
  }

  v10 = [(ICEditingTextView *)self editorController];
  v11 = [v10 calculateScrubberController];
  v12 = [v11 isShowing];

  if (v12)
  {
    v13 = [(ICEditingTextView *)self editorController];
    v14 = [v13 calculateScrubberController];
    [v14 hideScrubber];
  }

  objc_opt_class();
  v15 = [(ICEditingTextView *)self textStorage];
  v8 = ICDynamicCast();

  if ([v8 isMarkingTextForHeadingRename])
  {
    [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:1];
    goto LABEL_10;
  }

  v9 = [(ICEditingTextView *)self tapGestureRecognizer];
  if (v9 != v31)
  {
    goto LABEL_9;
  }

  v16 = [v31 state];

  if (v16 == 3)
  {
    v17 = [(ICEditingTextView *)self editorController];
    v9 = [v17 note];

    if (v9)
    {
      if ([v31 numberOfTouches])
      {
        v18 = [(ICBaseTextView *)self icDelegate];
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) == 0 || (-[ICBaseTextView icDelegate](self, "icDelegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 handleTapGestureForAttribution:v31], v20, (v21 & 1) == 0))
        {
          v22 = [(ICEditingTextView *)self calculateRecognitionController];
          v23 = [v22 isPreviewingResult];

          if (v23)
          {
            v24 = [(ICEditingTextView *)self calculateRecognitionController];
            [v24 discardPreviewedResult];
          }

          else
          {
            if ([v9 isEditable])
            {
              v26 = [(ICBaseTextView *)self icDelegate];
              v27 = objc_opt_respondsToSelector();

              if ((v27 & 1) == 0 || (-[ICBaseTextView icDelegate](self, "icDelegate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 shouldStartEditingForTapGesture:v31], v28, v29))
              {
                [(ICEditingTextView *)self startEditingForTapGesture:v31];
              }

              goto LABEL_9;
            }

            [(ICEditingTextView *)self selectedRange];
            if (v30)
            {
              [(ICEditingTextView *)self setSelectedTextRange:0];
            }

            if (![v9 isDeletedOrInTrash])
            {
              goto LABEL_9;
            }

            v24 = [(ICEditingTextView *)self editorController];
            [v24 showRecoverNoteAlert];
          }
        }
      }
    }

    else
    {
      v25 = [(ICEditingTextView *)self editorController];
      [v25 addNote:self];
    }

LABEL_9:
  }

LABEL_10:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ICBaseTextView *)self icDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(ICBaseTextView *)self icDelegate];
    v10 = [v9 shouldBlockHitTestOnTextView:self event:v7];

    if (v10)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(ICEditingTextView *)self setHitTestPoint:x, y];
  v13.receiver = self;
  v13.super_class = ICEditingTextView;
  v11 = [(ICEditingTextView *)&v13 hitTest:v7 withEvent:x, y];
LABEL_6:

  return v11;
}

- (id)linkTappedByGesture:(id)a3
{
  v4 = a3;
  if ([v4 numberOfTouches])
  {
    [v4 locationOfTouch:0 inView:self];
    v10 = 0;
    [(ICEditingTextView *)self distanceFromContentToGivenPoint:&v10 charIndexAtPoint:?];
    v5 = 0;
    if (v6 < 28.2842712 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(ICEditingTextView *)self textStorage];
      v5 = [v8 attribute:*MEMORY[0x277D740E8] atIndex:v10 effectiveRange:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)distanceFromContentToGivenPoint:(CGPoint)a3 charIndexAtPoint:(unint64_t *)a4
{
  if (a4)
  {
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(ICEditingTextView *)self closestPositionToPoint:a3.x, a3.y];
  if (v6)
  {
    v7 = [(ICEditingTextView *)self beginningOfDocument];
    v8 = [(ICEditingTextView *)self offsetFromPosition:v7 toPosition:v6];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [(ICEditingTextView *)self ic_rectForRange:v8, 0];
    }

    else
    {
      objc_opt_class();
      v10 = [(ICEditingTextView *)self layoutManager];
      v11 = ICDynamicCast();

      v12 = [v11 glyphIndexForCharacterAtIndex:v8];
      v13 = [(ICEditingTextView *)self textContainer];
      [v11 boundingRectForGlyphRange:v12 inTextContainer:{0, v13}];
    }

    v14 = [(ICEditingTextView *)self textContainer];
    [v14 textContainerOrigin];

    UIDistanceBetweenPointAndRect();
    v9 = v15;
    if (a4)
    {
      *a4 = v8;
    }
  }

  else
  {
    v9 = 1.79769313e308;
  }

  return v9;
}

- (void)setIsDraggingChecklistItem:(BOOL)a3
{
  if (self->_isDraggingChecklistItem != a3)
  {
    self->_isDraggingChecklistItem = a3;
    if (a3)
    {
      v4 = objc_alloc_init(MEMORY[0x277D75A10]);
      [(ICEditingTextView *)self setChecklistDragFeedbackGenerator:v4];

      v5 = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
      [v5 prepare];

      v6 = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
      [v6 selectionChanged];
    }

    else
    {

      [(ICEditingTextView *)self setChecklistDragFeedbackGenerator:0];
    }
  }
}

- (void)setIsDraggingOverChecklistItem:(BOOL)a3
{
  if (self->_isDraggingOverChecklistItem != a3)
  {
    self->_isDraggingOverChecklistItem = a3;
    if (!a3)
    {
      [(ICEditingTextView *)self setInhibitNextDropCursorUpdateAnimation:1];
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[ICEditingTextView setTouchIsPointer:](self, "setTouchIsPointer:", [v7 ic_containsObjectPassingTest:&__block_literal_global_23]);
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 touchesBegan:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v4 touchesMoved:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 touchesEnded:a3 withEvent:a4];
  [(ICEditingTextView *)self setTouchIsPointer:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 touchesCancelled:a3 withEvent:a4];
  [(ICEditingTextView *)self setTouchIsPointer:0];
}

- (void)beginSelectionChange
{
  v6.receiver = self;
  v6.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v6 beginSelectionChange];
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 note];
  v5 = [v4 documentMergeController];
  [v5 beginBlockingMergeForReason:0 textView:self];
}

- (void)endSelectionChange
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 note];
  v5 = [v4 documentMergeController];
  [v5 endBlockingMergeForReason:0 textView:self];

  v6.receiver = self;
  v6.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v6 endSelectionChange];
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ICEditingTextView *)self distanceFromContentToGivenPoint:0 charIndexAtPoint:?];
  if (v6 >= 28.2842712)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  return [(ICEditingTextView *)&v8 willInteractWithLinkAtPoint:x, y];
}

- (void)speakAccessibilityAutoListItemIfNecessaryForInsertedText:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self selectedRange];
    v6 = [(ICEditingTextView *)self textStorage];
    if (v5 >= [v6 length])
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = [v4 length];

    if (v7 == 1)
    {
      v6 = [(ICEditingTextView *)self textStorage];
      v8 = [v6 attributesAtIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
      if (![v9 isList])
      {
        goto LABEL_18;
      }

      v10 = [v4 characterAtIndex:0];
      v11 = [MEMORY[0x277CCA900] newlineCharacterSet];
      LODWORD(v10) = [v11 characterIsMember:v10];

      if (!v10)
      {
        goto LABEL_18;
      }

      UIAccessibilityPostNotification(*MEMORY[0x277D74050], self);
      v12 = [v9 style];
      v13 = 0;
      if (v12 > 101)
      {
        if (v12 == 102)
        {
          v18 = MEMORY[0x277CCACA8];
          v15 = [v8 objectForKeyedSubscript:*MEMORY[0x277D36018]];
          v17 = [v18 localizedStringWithFormat:@"%lu", objc_msgSend(v15, "unsignedIntegerValue")];
          goto LABEL_16;
        }

        if (v12 == 103)
        {
          v14 = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = v14;
          v16 = @"checklist";
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 == 100)
        {
          v14 = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = v14;
          v16 = @"bullet";
          goto LABEL_14;
        }

        if (v12 == 101)
        {
          v14 = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = v14;
          v16 = @"dash";
LABEL_14:
          v17 = [v14 localizedStringForKey:v16 value:&stru_282757698 table:0];
LABEL_16:
          v13 = v17;
        }
      }

      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"New list item" value:&stru_282757698 table:0];

      v22 = __ICAccessibilityStringForVariables();
      v21 = v22;
      dispatchMainAfterDelay();

LABEL_18:
      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)buildMenuWithBuilder:(id)a3
{
  v151[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NSClassFromString(&cfstr_Icpaperdocumen.isa);
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __42__ICEditingTextView_buildMenuWithBuilder___block_invoke;
  v145[3] = &__block_descriptor_40_e21_B16__0__UIResponder_8lu32l8;
  v145[4] = v5;
  v6 = [(ICEditingTextView *)self firstResponderMatchingPredicate:v145];
  if (v6)
  {
    goto LABEL_30;
  }

  v144.receiver = self;
  v144.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v144 buildMenuWithBuilder:v4];
  v120 = *MEMORY[0x277D76D70];
  [v4 replaceChildrenOfMenuForIdentifier:? fromChildrenBlock:?];
  v7 = MEMORY[0x277D75370];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"Check All" value:&stru_282757698 table:0];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist.checked"];
  v130 = [v7 commandWithTitle:v9 image:v10 action:sel_checkAll_ propertyList:0];

  v11 = MEMORY[0x277D75370];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"Uncheck All" value:&stru_282757698 table:0];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist.unchecked"];
  v129 = [v11 commandWithTitle:v13 image:v14 action:sel_uncheckAll_ propertyList:0];

  v15 = MEMORY[0x277D75370];
  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 localizedStringForKey:@"Move Checked to Bottom" value:&stru_282757698 table:0];
  v18 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.to.line"];
  v128 = [v15 commandWithTitle:v17 image:v18 action:sel_moveCheckedToBottom_ propertyList:0];

  v19 = MEMORY[0x277D75370];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"Delete Checked" value:&stru_282757698 table:0];
  v22 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
  v135 = [v19 commandWithTitle:v21 image:v22 action:sel_removeChecked_ propertyList:0];

  [v135 setAttributes:{objc_msgSend(v135, "attributes") | 2}];
  v23 = MEMORY[0x277D75710];
  v24 = [MEMORY[0x277CCA8D8] mainBundle];
  v25 = [v24 localizedStringForKey:@"Checklist" value:&stru_282757698 table:0];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist"];
  v151[0] = v130;
  v151[1] = v129;
  v151[2] = v128;
  v151[3] = v135;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  v123 = [v23 menuWithTitle:v25 image:v26 identifier:0 options:0 children:v27];

  v28 = MEMORY[0x277D75370];
  v29 = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [v29 localizedStringForKey:@"Decrease" value:&stru_282757698 table:0];
  v31 = [MEMORY[0x277D755B8] systemImageNamed:@"decrease.indent"];
  v134 = [v28 commandWithTitle:v30 image:v31 action:sel_decreaseIndentation_ propertyList:0];

  v32 = MEMORY[0x277D75370];
  v33 = [MEMORY[0x277CCA8D8] mainBundle];
  v34 = [v33 localizedStringForKey:@"Increase" value:&stru_282757698 table:0];
  v35 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v133 = [v32 commandWithTitle:v34 image:v35 action:sel_increaseIndentation_ propertyList:0];

  [v134 setAttributes:{objc_msgSend(v134, "attributes") | 8}];
  [v133 setAttributes:{objc_msgSend(v133, "attributes") | 8}];
  v36 = MEMORY[0x277D75710];
  v37 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [v37 localizedStringForKey:@"Indentation" value:&stru_282757698 table:0];
  v39 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v150[0] = v133;
  v150[1] = v134;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:2];
  v124 = [v36 menuWithTitle:v38 image:v39 identifier:0 options:0 children:v40];

  v41 = [(ICEditingTextView *)self editorController];
  v42 = [v41 calculateGraphingController];
  v43 = [(ICEditingTextView *)self selectedRange];
  v127 = [v42 insertionDecisionForExpressionsInRange:{v43, v44}];

  v132 = [v127 makeMenu];
  v45 = MEMORY[0x277D75370];
  v46 = [MEMORY[0x277CCA8D8] mainBundle];
  v47 = [v46 localizedStringForKey:@"Convert to Text" value:&stru_282757698 table:0];
  v48 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.replace"];
  v126 = [v45 commandWithTitle:v47 image:v48 action:sel_convertToText_ propertyList:0];

  v49 = MEMORY[0x277D75370];
  v50 = [MEMORY[0x277CCA8D8] mainBundle];
  v51 = [v50 localizedStringForKey:@"Convert to Tag" value:&stru_282757698 table:0];
  v52 = [MEMORY[0x277D755B8] systemImageNamed:@"number"];
  v131 = [v49 commandWithTitle:v51 image:v52 action:sel_convertToTag_ propertyList:0];

  v53 = MEMORY[0x277D75370];
  v54 = [MEMORY[0x277CCA8D8] mainBundle];
  v55 = [v54 localizedStringForKey:@"Add to Tags" value:&stru_282757698 table:0];
  v56 = [MEMORY[0x277D755B8] systemImageNamed:@"number"];
  v125 = [v53 commandWithTitle:v55 image:v56 action:sel_addToTags_ propertyList:0];

  v57 = MEMORY[0x277CBEB18];
  v149[0] = v126;
  v149[1] = v131;
  v149[2] = v125;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  v59 = [v57 arrayWithArray:v58];

  v60 = [(ICEditingTextView *)self editorController];
  v61 = [v60 note];
  LODWORD(v58) = [v61 isPasswordProtected];

  if (v58)
  {
    [v59 removeObject:v131];
  }

  if (ICDebugModeEnabled())
  {
    v62 = [MEMORY[0x277D75370] commandWithTitle:@"Tags" image:0 action:sel_openExperimentalHashtagUI_ propertyList:0];
    [v59 addObject:v62];
  }

  if (ICInternalSettingsIsScrubbingEnabled())
  {
    v63 = [(ICEditingTextView *)self editorController];
    v64 = [v63 note];
    if (![v64 isEditable])
    {
LABEL_12:

      goto LABEL_13;
    }

    v65 = [(ICEditingTextView *)self editorController];
    v66 = [v65 note];
    if (![v66 isCalculateMathEnabled])
    {

      goto LABEL_12;
    }

    v67 = [(ICEditingTextView *)self editorController];
    v68 = [v67 note];
    if ([v68 isDeletedOrInTrash])
    {

      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v100 = [(ICEditingTextView *)self editorController];
      v101 = [v100 note];
      v63 = [v101 calculateDocumentController];

      v64 = [v63 numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];
      if (v64)
      {
        objc_initWeak(&location, self);
        v102 = MEMORY[0x277D750C8];
        v103 = [MEMORY[0x277CCA8D8] mainBundle];
        v104 = [v103 localizedStringForKey:@"Adjust" value:&stru_282757698 table:0];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_3;
        v140[3] = &unk_2781AF3F8;
        objc_copyWeak(&v142, &location);
        v64 = v64;
        v141 = v64;
        v105 = [v102 ic_actionWithTitle:v104 imageName:@"arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill" handler:v140];

        v106 = MEMORY[0x277D75710];
        v148 = v105;
        v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
        v108 = [v106 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v107];

        [v4 insertSiblingMenu:v108 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
        objc_destroyWeak(&v142);
        objc_destroyWeak(&location);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  v69 = MEMORY[0x277D75710];
  v70 = [v59 copy];
  v71 = [v69 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v70];

  objc_opt_class();
  v72 = [(ICEditingTextView *)self textContainer];
  v121 = ICDynamicCast();

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0)
  {
    v73 = [(ICEditingTextView *)self editorController];
    v74 = [v73 note];
    if (([v74 isSharedReadOnly] & 1) != 0 || -[ICEditingTextView selectionContainsNonLinkAttachment](self, "selectionContainsNonLinkAttachment"))
    {
    }

    else
    {
      v98 = [v121 insideSiriSnippet];

      if ((v98 & 1) == 0)
      {
        objc_initWeak(&location, self);
        if ([(ICEditingTextView *)self selectionContainsLink])
        {
          v99 = [MEMORY[0x277CCA8D8] mainBundle];
          [v99 localizedStringForKey:@"Edit Link" value:&stru_282757698 table:0];
        }

        else
        {
          v99 = [MEMORY[0x277CCA8D8] mainBundle];
          [v99 localizedStringForKey:@"Add Link" value:&stru_282757698 table:0];
        }
        v118 = ;

        v109 = MEMORY[0x277D750C8];
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_4;
        v138[3] = &unk_2781ADD08;
        objc_copyWeak(&v139, &location);
        v110 = [v109 ic_actionWithTitle:v118 imageName:@"link" handler:v138];
        v119 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v110, 0}];
        if ([(ICEditingTextView *)self selectionContainsLink])
        {
          v111 = MEMORY[0x277D750C8];
          v112 = [MEMORY[0x277CCA8D8] mainBundle];
          v113 = [v112 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_5;
          v136[3] = &unk_2781ADD08;
          objc_copyWeak(&v137, &location);
          v114 = [v111 ic_actionWithTitle:v113 imageName:@"xmark.circle" handler:v136];

          [v119 ic_addNonNilObject:v114];
          objc_destroyWeak(&v137);
        }

        v115 = MEMORY[0x277D75710];
        v116 = [v119 copy];
        v117 = [v115 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v116];

        [v4 insertSiblingMenu:v117 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
        objc_destroyWeak(&v139);

        objc_destroyWeak(&location);
      }
    }
  }

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) != 0)
  {
    goto LABEL_22;
  }

  v75 = [(ICEditingTextView *)self editorController];
  v76 = [v75 note];
  if ([v76 isPasswordProtected])
  {
    goto LABEL_21;
  }

  v77 = [(ICEditingTextView *)self editorController];
  v78 = [v77 note];
  v79 = [v78 isSharedReadOnly];

  if ((v79 & 1) == 0)
  {
    v80 = MEMORY[0x277D75370];
    v81 = [MEMORY[0x277CCA8D8] mainBundle];
    v82 = [v81 localizedStringForKey:@"Attach File" value:&stru_282757698 table:0];
    v83 = [MEMORY[0x277D755B8] ic_systemImageNamed:@"document"];
    v75 = [v80 commandWithTitle:v82 image:v83 action:sel_attachFile_ propertyList:0];

    v84 = MEMORY[0x277D75710];
    v147 = v75;
    v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
    v76 = [v84 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v85];

    [v4 insertSiblingMenu:v76 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
LABEL_21:
  }

LABEL_22:
  v86 = [(ICEditingTextView *)self editorController];
  v87 = [v86 note];
  v88 = [v87 isSharedReadOnly];

  if ((v88 & 1) == 0)
  {
    [v4 insertSiblingMenu:v123 afterMenuForIdentifier:*MEMORY[0x277D76CE8]];
  }

  [v4 insertChildMenu:v124 atEndOfMenuForIdentifier:v120];
  v89 = *MEMORY[0x277D76D30];
  if (v132)
  {
    [v4 insertChildMenu:v132 atEndOfMenuForIdentifier:*MEMORY[0x277D76D30]];
  }

  [v4 insertChildMenu:v71 atEndOfMenuForIdentifier:v89];
  if (ICInternalSettingsShouldShowImageGenerationUI() && ([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0)
  {
    v90 = MEMORY[0x277D75370];
    v91 = [MEMORY[0x277CCA8D8] mainBundle];
    v92 = [v91 localizedStringForKey:@"Add to Playground" value:&stru_282757698 table:0];
    v93 = [MEMORY[0x277D755B8] systemImageNamed:@"apple.image.playground"];
    v94 = [v90 commandWithTitle:v92 image:v93 action:sel_createImage_ propertyList:0];

    v95 = MEMORY[0x277D75710];
    v146 = v94;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    v97 = [v95 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v96];

    [v4 insertSiblingMenu:v97 afterMenuForIdentifier:*MEMORY[0x277D76CE8]];
  }

LABEL_30:
}

id __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75370];
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = [v3 mainBundle];
  v6 = [v5 localizedStringForKey:@"Strikethrough" value:&stru_282757698 table:0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"strikethrough"];
  v8 = [v2 commandWithTitle:v6 image:v7 action:sel_toggleStrikethrough_ propertyList:0];

  v9 = [v4 arrayByAddingObject:v8];

  return v9;
}

void __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained editorController];
  v3 = [v2 calculateScrubberController];
  [v3 showScrubberForNumberLiteral:*(a1 + 32) isCompact:0];
}

void __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained editorController];
  v2 = [v1 auxiliaryResponder];

  if (v2)
  {
    objc_opt_class();
    v3 = [WeakRetained editorController];
    v4 = [v3 auxiliaryResponder];
    v5 = ICDynamicCast();
  }

  else
  {
    v5 = [WeakRetained editorController];
  }

  [v5 openLinkEditor:WeakRetained];
}

void __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained editorController];
  if ([v1 conformsToProtocol:&unk_2827A5638])
  {
    v2 = [WeakRetained editorController];
    v3 = objc_opt_respondsToSelector();

    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = [WeakRetained editorController];
    v1 = ICProtocolCast();

    [v1 removeLinksFromCurrentSelection];
  }

LABEL_5:
}

- (BOOL)selectionContainsLink
{
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [v3 attribute:*MEMORY[0x277D740E8] atIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICEditingTextView *)self textStorage];
    v7 = [v6 attribute:*MEMORY[0x277D74060] atIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [v8 attachmentUTI];
    v5 = [v9 isEqualToString:*MEMORY[0x277D35D50]];
  }

  return v5;
}

- (BOOL)selectionContainsNonLinkAttachment
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(ICEditingTextView *)self textStorage];
  v4 = [(ICEditingTextView *)self selectedRange];
  v5 = *MEMORY[0x277D74060];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ICEditingTextView_selectionContainsNonLinkAttachment__block_invoke;
  v8[3] = &unk_2781ABC80;
  v8[4] = &v9;
  [v3 enumerateAttribute:v5 inRange:v4 options:v6 usingBlock:{0, v8}];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __55__ICEditingTextView_selectionContainsNonLinkAttachment__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v11 = ICDynamicCast();

  v8 = v11;
  if (v11)
  {
    v9 = [v11 attachment];
    v10 = v9;
    if (v9 && ([v9 isLinkAttachment] & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }

    v8 = v11;
  }
}

- (void)willPresentWritingTools
{
  v3 = [(ICEditingTextView *)self editorController];
  v4 = [v3 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ICEditingTextView *)self editorController];
    [v6 showStyleSelector:0 animated:0 sender:0];
  }
}

- (void)updateKeyboardSuggestions:(id)a3 hashtagController:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ICEditingTextView *)self inputDelegate];
  v9 = v8;
  if (v6)
  {
    v27 = self;
    v28 = v8;
    v29 = v7;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v16 displayText];

          if (v17)
          {
            v18 = MEMORY[0x277D369A8];
            v19 = [v16 displayText];
            v20 = [v16 displayText];
            v21 = [v20 ic_withHashtagPrefix];
            v22 = [v18 hashtagTextSuggestionWithIdentifier:v19 displayText:v21];

            [v10 addObject:v22];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ICEditingTextView_updateKeyboardSuggestions_hashtagController___block_invoke;
    block[3] = &unk_2781AC5B0;
    v9 = v28;
    v32 = v28;
    v33 = v10;
    v7 = v29;
    v23 = v29;
    v34 = v23;
    v24 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(ICEditingTextView *)v27 setHashtagController:v23];

    v6 = v30;
  }

  else
  {
    [v7 setIsUpdatingKeyboard:0];
    [(ICEditingTextView *)self setHashtagController:v7];
    v25 = [(ICEditingTextView *)self mentionsController];
    v26 = [v25 isUpdatingKeyboard];

    if ((v26 & 1) == 0)
    {
      [v9 setSuggestions:0];
    }
  }
}

uint64_t __65__ICEditingTextView_updateKeyboardSuggestions_hashtagController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSuggestions:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 setIsUpdatingKeyboard:1];
}

- (void)updateKeyboardSuggestions:(id)a3 mentionsController:(id)a4 mentionString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((participants) != nil)" functionName:"-[ICEditingTextView updateKeyboardSuggestions:mentionsController:mentionString:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "participants"}];
  }

  [(ICEditingTextView *)self setParticipants:v8];
  v11 = [(ICEditingTextView *)self inputDelegate];
  if (v8 && [v8 count])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke;
    v26[3] = &__block_descriptor_48_e54___ICThumbnailConfiguration_16__0__CKShareParticipant_8l;
    v26[4] = 0x403C000000000000;
    v26[5] = 0x403C000000000000;
    v12 = [v8 ic_compactMap:v26];
    objc_initWeak(&location, self);
    v13 = [MEMORY[0x277D36988] sharedThumbnailService];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke_2;
    v18[3] = &unk_2781AF468;
    objc_copyWeak(&v24, &location);
    v19 = v8;
    v14 = v12;
    v20 = v14;
    v21 = v10;
    v15 = v9;
    v22 = v15;
    v23 = v11;
    [v13 thumbnailsWithConfigurations:v14 completion:v18];

    [(ICEditingTextView *)self setMentionsController:v15];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    [v9 setIsUpdatingKeyboard:0];
    [(ICEditingTextView *)self setMentionsController:v9];
    v16 = [(ICEditingTextView *)self hashtagController];
    v17 = [v16 isUpdatingKeyboard];

    if ((v17 & 1) == 0)
    {
      [v11 setSuggestions:0];
    }
  }
}

id __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D36980];
  v4 = a2;
  v5 = [v3 alloc];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = [v5 initForAvatarWithParticipants:v6 preferredSize:0 hasBorder:{*(a1 + 32), *(a1 + 40)}];

  return v7;
}

void __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke_3;
  block[3] = &unk_2781AF440;
  objc_copyWeak(&v16, a1 + 9);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  v14 = v3;
  v15 = a1[8];
  v10 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v16);
}

void __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v31 = WeakRetained;
    v4 = [WeakRetained participants];
    v3 = v31;
    if (v4)
    {
      v5 = *(v1 + 32);

      v3 = v31;
      if (v5)
      {
        v6 = MEMORY[0x277CBEB98];
        v7 = [v31 participants];
        v8 = [v6 setWithArray:v7];

        v9 = [MEMORY[0x277CBEB98] setWithArray:*(v1 + 32)];
        if ([v8 isEqualToSet:v9])
        {
          v29 = v9;
          v30 = v8;
          v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
          if ([*(v1 + 32) count])
          {
            v10 = 0;
            do
            {
              v11 = [*(v1 + 32) objectAtIndexedSubscript:v10];
              v12 = [*(v1 + 40) objectAtIndexedSubscript:v10];
              v13 = [v11 ic_cachedDisplayNameFromContacts];
              v14 = v13;
              if (!v13 || ![v13 length])
              {
                v15 = [v11 ic_participantName];

                v14 = v15;
              }

              v16 = [v11 ic_participantNameMatchingString:*(v1 + 48) returnFullName:0];
              v17 = v16;
              if (!v16 || ![v16 length])
              {
                v18 = [v11 ic_shortParticipantName];

                v17 = v18;
              }

              v19 = MEMORY[0x277D369A8];
              v20 = [*(v1 + 56) note];
              v21 = [v11 ic_userRecordNameInNote:v20];
              [v14 ic_trimmedString];
              v22 = v34 = v14;
              v23 = [v17 ic_mentionString];
              v35 = v11;
              v24 = *(v1 + 64);
              [v12 associatedObjectIdentifier];
              v33 = v12;
              v26 = v25 = v1;
              v27 = [v24 objectForKeyedSubscript:v26];
              v28 = [v19 mentionTextSuggestionWithIdentifier:v21 displayText:v22 inputText:v23 image:v27];

              v1 = v25;
              [v32 addObject:v28];

              ++v10;
            }

            while (v10 < [*(v25 + 32) count]);
          }

          [*(v1 + 72) setSuggestions:v32];
          [*(v1 + 56) setIsUpdatingKeyboard:1];

          v9 = v29;
          v8 = v30;
        }

        v3 = v31;
      }
    }
  }
}

- (void)showWritingTools:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseTextView *)self icDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICBaseTextView *)self icDelegate];
    [v7 startEditingForWritingTools];
  }

  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 showWritingTools:v4];
}

- (void)calculateRecognitionController:(id)a3 didUpdateTextSuggestions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICEditingTextView *)self inputDelegate];
  [v8 setSuggestions:v6];

  [(ICEditingTextView *)self setCalculateRecognitionController:v7];
}

- (void)insertTextSuggestion:(id)a3
{
  v19 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    v5 = [v4 cellDelegate];
    v6 = [v5 attachment];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = ICCheckedDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 type];
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v10 = [(ICEditingTextView *)self calculateRecognitionController];
          v11 = [(ICEditingTextView *)self selectedRange];
          v12 = v10;
          v14 = v18;
          v15 = 0;
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_19;
          }

          v10 = [(ICEditingTextView *)self calculateRecognitionController];
          v11 = [(ICEditingTextView *)self selectedRange];
          v12 = v10;
          v14 = v13;
          v15 = 1;
        }

        [v12 commitPreviewedResultAtRange:v11 asLiteral:{v14, v15}];
        goto LABEL_18;
      }

      v10 = [(ICEditingTextView *)self mentionsController];
      v16 = [v8 inputText];
      v17 = [v8 identifier];
      [v10 insertMentionWithText:v16 uuidString:v17 parentAttachment:v6];
    }

    else
    {
      if (v9 < 2)
      {
        v10 = [(ICEditingTextView *)self calculateRecognitionController];
        [v10 discardPreviewedResult];
LABEL_18:

        goto LABEL_19;
      }

      if (v9 != 2)
      {
        goto LABEL_19;
      }

      v10 = [(ICEditingTextView *)self hashtagController];
      v16 = [v19 displayText];
      [v10 insertHashtagWithText:v16 viaAutoComplete:1 parentAttachment:v6];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)endHeadingRenameCommittingMarkedText:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(ICEditingTextView *)self textStorage];
  v12 = ICDynamicCast();

  if ([v12 isMarkingTextForHeadingRename])
  {
    v6 = [(ICEditingTextView *)self ic_markedTextRange];
    v8 = v7;
    v9 = [(ICEditingTextView *)self markedTextRange];

    if (v9)
    {
      if (v3)
      {
        v10 = [v12 attributedSubstringFromRange:{v6, v8}];
        v11 = [v10 string];
        [(ICEditingTextView *)self setMarkedText:v11 selectedRange:0x7FFFFFFFFFFFFFFFLL, 0];

        [(ICEditingTextView *)self unmarkText];
      }

      else
      {
        [(ICEditingTextView *)self unmarkText];
        [v12 deleteCharactersInRange:{v6, v8}];
      }
    }

    [v12 setIsMarkingTextForHeadingRename:0];
  }
}

- (_NSRange)willInsertText:(id)a3
{
  [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:0];
  objc_opt_class();
  v4 = [(ICEditingTextView *)self textStorage];
  v5 = ICDynamicCast();

  [v5 setIsTypingOrMarkingText:1];
  v6 = [(ICEditingTextView *)self selectedRange];
  v8 = v7;
  v9 = [(ICEditingTextView *)self markedTextRange];

  if (v9)
  {
    v6 = [(ICEditingTextView *)self selectedRangeBeforeMarking];
    v8 = v10;
  }

  v11 = [(ICEditingTextView *)self textController];
  [v11 notifyInlineAttachmentsDeletedInRange:v6 ofTextStorage:{v8, v5}];

  v12 = v6;
  v13 = v8;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)didInsertText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v22 = a3;
  v7 = [(ICEditingTextView *)self textController];
  v8 = [(ICEditingTextView *)self editorController];
  v9 = [v8 hashtagController];

  v10 = [(ICEditingTextView *)self editorController];
  v11 = [v10 mentionsController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = ICDynamicCast();
    [v9 setHashtagTableKeyboardDelegate:v12];

    objc_opt_class();
    v13 = ICDynamicCast();
    [v11 setMentionsTableKeyboardDelegate:v13];

    objc_opt_class();
    v14 = ICDynamicCast();
    v15 = [v14 cellDelegate];
    v16 = [v15 attachment];

    LOBYTE(v21) = [(ICEditingTextView *)self languageHasSpaces];
    [v7 insertedText:v22 replacementRange:location inTextView:length hashtagController:self mentionsController:v9 languageHasSpaces:v11 parentAttachment:{v21, v16}];
  }

  else
  {
    objc_opt_class();
    v17 = ICDynamicCast();
    [v9 setHashtagKeyboardDelegate:v17];

    objc_opt_class();
    v18 = ICDynamicCast();
    [v11 setMentionsKeyboardDelegate:v18];

    [v7 insertedText:v22 replacementRange:location inTextView:length languageHasSpaces:{self, -[ICEditingTextView languageHasSpaces](self, "languageHasSpaces")}];
    v14 = [(ICEditingTextView *)self editorController];
    v16 = [v14 calculateRecognitionController];
    [v16 didInsertString:v22 atRange:{location, length}];
  }

  objc_opt_class();
  v19 = [(ICEditingTextView *)self textStorage];
  v20 = ICDynamicCast();

  [v20 setIsTypingOrMarkingText:0];
  [(ICEditingTextView *)self updateTextViewForDidChange];
  [(ICEditingTextView *)self speakAccessibilityAutoListItemIfNecessaryForInsertedText:v22];
}

- (void)informDelegateOfAnalyticsCalloutBarButtonActionOfType:(int64_t)a3 sender:(id)a4
{
  v6 = [(ICBaseTextView *)self icDelegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICBaseTextView *)self icDelegate];
    [v8 didInvokeAnalyticsCalloutBarButtonActionOfType:a3];
  }
}

- (void)informDelegateOfPastedAttributedString:(id)a3
{
  v7 = a3;
  v4 = [(ICBaseTextView *)self icDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICBaseTextView *)self icDelegate];
    [v6 didInvokePasteWithAttributedString:v7];
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithSubTrackerName:v5 view:self];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (void)keyboardLocaleChanged:(id)a3
{
  v4 = [(ICEditingTextView *)self textInputMode];
  v9 = v4;
  if (v4)
  {
    v5 = MEMORY[0x277CBEAF8];
    v6 = [v4 primaryLanguage];
    v7 = [v5 localeWithLocaleIdentifier:v6];
    v8 = [v7 languageCode];

    [(ICEditingTextView *)self setLanguageHasSpaces:ICLanguageUsesSpaces()];
  }

  else
  {
    [(ICEditingTextView *)self setLanguageHasSpaces:1];
  }
}

- (CGPoint)hitTestPoint
{
  x = self->_hitTestPoint.x;
  y = self->_hitTestPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (ICHashtagController)hashtagController
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagController);

  return WeakRetained;
}

- (ICMentionsController)mentionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_mentionsController);

  return WeakRetained;
}

- (ICCalculateRecognitionController)calculateRecognitionController
{
  WeakRetained = objc_loadWeakRetained(&self->_calculateRecognitionController);

  return WeakRetained;
}

- (_NSRange)_icaxModifiedSelectionRange
{
  p_icaxModifiedSelectionRange = &self->__icaxModifiedSelectionRange;
  location = self->__icaxModifiedSelectionRange.location;
  length = p_icaxModifiedSelectionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)selectedRangeBeforeMarking
{
  p_selectedRangeBeforeMarking = &self->_selectedRangeBeforeMarking;
  location = self->_selectedRangeBeforeMarking.location;
  length = p_selectedRangeBeforeMarking->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)showRemoveAttachmentAlertIfNecessaryForOperation:(unint64_t)a3 selectedRange:(_NSRange)a4 completionHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v60 = *MEMORY[0x277D85DE8];
  v51 = a5;
  v8 = length == 0;
  v9 = location != 0x7FFFFFFFFFFFFFFFLL;
  v48 = location;
  if (v8 && v9)
  {
    v10 = location - 1;
  }

  else
  {
    v10 = location;
  }

  if (v8 && v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = length;
  }

  v12 = [(ICEditingTextView *)self attachmentsInRange:v10, v11, length];
  v13 = [MEMORY[0x277CBEB18] array];
  v53 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v56;
    v18 = 0x277D36000uLL;
    v54 = v14;
    do
    {
      v19 = 0;
      do
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v55 + 1) + 8 * v19);
        if ([v20 attachmentType] == 10 || objc_msgSend(v20, "attachmentType") == 13)
        {
          v21 = v13;
LABEL_15:
          [v21 addObject:v20];
          goto LABEL_16;
        }

        if ([v20 attachmentType] == 4)
        {
          if ([v20 isBeingEditedLocallyOnDevice])
          {
            [v20 audioModel];
            v23 = v22 = v18;
            v24 = [v23 audioDocument];
            v25 = [v24 isCallRecording];

            v18 = v22;
            v14 = v54;
            if ((v25 & 1) == 0)
            {
              v21 = v53;
              goto LABEL_15;
            }
          }
        }

        if ([v20 attachmentType] == 4)
        {
          v26 = [*(v18 + 1728) sharedAudioController];
          v27 = [v26 currentAttachment];
          v28 = v18;
          v29 = v27;
          if (v27 == v20)
          {
            v30 = [*(v28 + 1728) sharedAudioController];
            v31 = [v30 isPlaying];

            v18 = v28;
            v14 = v54;
            if (v31)
            {
              v21 = v52;
              goto LABEL_15;
            }
          }

          else
          {

            v18 = v28;
            v14 = v54;
          }
        }

LABEL_16:
        ++v19;
      }

      while (v16 != v19);
      v32 = [v14 countByEnumeratingWithState:&v55 objects:v59 count:16];
      v16 = v32;
    }

    while (v32);
  }

  if (![v53 count])
  {
    v34 = v52;
    v33 = v51;
    if ([v52 count])
    {
      [(ICEditingTextView *)self showRemoveInProgressRecordingAlertWithOperation:a3 type:1 attachments:v52 completionHandler:v51];
      goto LABEL_34;
    }

    if (!a3 && [v13 count])
    {
      if ([v13 count] == 1)
      {
        [(ICEditingTextView *)self selectedRange];
        if (v35 >= 2)
        {
          v36 = 2;
        }

        else
        {
          v36 = 3;
        }
      }

      else
      {
        v36 = 4;
      }

      if ([(ICEditingTextView *)self selectedRange]<= 4)
      {
        v37 = [(ICEditingTextView *)self textStorage];
        v38 = [v37 string];
        v39 = [v38 ic_trimmedString];
        v40 = [v39 length];

        v41 = v40 == 1;
        v34 = v52;
        if (v41 && [v14 count] == 1)
        {
          v42 = [v14 firstObject];
          if ([v42 attachmentType] == 10)
          {

LABEL_50:
            [(ICEditingTextView *)self showDeleteInlineDrawingAlertWithType:v36 attachments:v13 completionHandler:v51];
            goto LABEL_34;
          }

          v43 = [v14 firstObject];
          v44 = [v43 attachmentType];

          if (v44 == 13)
          {
            goto LABEL_50;
          }
        }
      }

      v45 = [(ICEditingTextView *)self textStorage];
      v46 = [v45 length];

      if (!v48 && v47 == v46)
      {
        goto LABEL_50;
      }
    }

    (*(v51 + 2))(v51, 1);
    goto LABEL_34;
  }

  v33 = v51;
  [(ICEditingTextView *)self showRemoveInProgressRecordingAlertWithOperation:a3 type:0 attachments:v53 completionHandler:v51];
  v34 = v52;
LABEL_34:
}

- (void)showDeleteInlineDrawingAlertWithType:(unint64_t)a3 attachments:(id)a4 completionHandler:(id)a5
{
  v16 = a5;
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"Delete Drawing?" value:&stru_282757698 table:0];

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"Delete" value:&stru_282757698 table:0];

  v11 = 0;
  if (a3 <= 2)
  {
    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v12 = [MEMORY[0x277CCA8D8] mainBundle];
        v11 = [v12 localizedStringForKey:@"Selection contains a drawing." value:&stru_282757698 table:0];
      }

      goto LABEL_9;
    }

LABEL_8:
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICEditingTextView(DeleteConfirmation) showDeleteInlineDrawingAlertWithType:attachments:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Undefined type in delete drawing alert"];
    v11 = 0;
    goto LABEL_9;
  }

  if (a3 == 3)
  {
    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 localizedStringForKey:@"Delete Drawings?" value:&stru_282757698 table:0];

    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v15 localizedStringForKey:@"Selection contains multiple drawings." value:&stru_282757698 table:0];

    v8 = v14;
  }

LABEL_9:
  [(ICEditingTextView *)self showRemoveAttachmentAlertWithTitle:v8 message:v11 primaryActionTitle:v10 completionHandler:v16];
}

- (void)showRemoveInProgressRecordingAlertWithOperation:(unint64_t)a3 type:(unint64_t)a4 attachments:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [a5 firstObject];
  v12 = [v11 audioModel];
  v13 = [v12 audioDocument];
  v14 = [v13 isCallRecording];

  if (a3 == 2)
  {
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = v23;
    if (v14)
    {
      v17 = [v23 localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

      v18 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = v18;
      v20 = @"Replacing this attachment will stop the recording and remove it from the note.";
      goto LABEL_10;
    }

    v17 = [v23 localizedStringForKey:@"Delete Audio Recording?" value:&stru_282757698 table:0];

    v31 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = v31;
    v33 = @"Replacing this attachment will stop the recording and remove it from the note.";
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICEditingTextView(DeleteConfirmation) showRemoveInProgressRecordingAlertWithOperation:type:attachments:completionHandler:]" simulateCrash:1 showAlert:0 format:{@"Unexpected ICRemoveAttachmentOperation: %ld", a3}];
      v25 = 0;
      v29 = 0;
      v17 = 0;
      goto LABEL_17;
    }

    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

      v18 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = v18;
      v20 = @"Deleting this attachment will stop the recording and remove it from the note.";
      goto LABEL_10;
    }

    v17 = [v15 localizedStringForKey:@"Delete Audio Recording?" value:&stru_282757698 table:0];

    v31 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = v31;
    v33 = @"Deleting this attachment will stop the recording and remove it from the note.";
LABEL_15:
    v25 = [v31 localizedStringForKey:v33 value:&stru_282757698 table:0];

    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = v26;
    v28 = @"Delete";
    goto LABEL_16;
  }

  v21 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = v21;
  if (!v14)
  {
    v17 = [v21 localizedStringForKey:@"Cut Audio Recording?" value:&stru_282757698 table:0];

    v30 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [v30 localizedStringForKey:@"Cutting this attachment will stop the recording and remove it from the note." value:&stru_282757698 table:0];

    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = v26;
    v28 = @"Cut";
    goto LABEL_16;
  }

  v17 = [v21 localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = v18;
  v20 = @"Cutting this attachment will stop the recording and remove it from the note.";
LABEL_10:
  v25 = [v18 localizedStringForKey:v20 value:&stru_282757698 table:0];

  v26 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = v26;
  v28 = @"OK";
LABEL_16:
  v29 = [v26 localizedStringForKey:v28 value:&stru_282757698 table:0];

LABEL_17:
  if (a4 == 1)
  {
    v34 = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = [v34 localizedStringForKey:@"This will stop the audio that’s playing and remove it from the note." value:&stru_282757698 table:0];

    v25 = v35;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __124__ICEditingTextView_DeleteConfirmation__showRemoveInProgressRecordingAlertWithOperation_type_attachments_completionHandler___block_invoke;
  v37[3] = &unk_2781AFC00;
  v38 = v10;
  v36 = v10;
  [(ICEditingTextView *)self showRemoveAttachmentAlertWithTitle:v17 message:v25 primaryActionTitle:v29 completionHandler:v37];
}

void __124__ICEditingTextView_DeleteConfirmation__showRemoveInProgressRecordingAlertWithOperation_type_attachments_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D366C8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __124__ICEditingTextView_DeleteConfirmation__showRemoveInProgressRecordingAlertWithOperation_type_attachments_completionHandler___block_invoke_2;
    v5[3] = &unk_2781AFBD8;
    v6 = *(a1 + 32);
    v7 = 1;
    [v3 cancelCurrentAudioRecordingSessionWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)showRemoveAttachmentAlertWithTitle:(id)a3 message:(id)a4 primaryActionTitle:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D75110];
  v12 = a5;
  v13 = [v11 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v14 = [(ICEditingTextView *)self editorController];
  LOBYTE(a4) = [v14 isEditing];

  v15 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke;
  v31[3] = &unk_2781AFC28;
  v16 = v10;
  v33 = a4;
  v31[4] = self;
  v32 = v16;
  v17 = [v15 actionWithTitle:v12 style:2 handler:v31];

  [v13 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke_3;
  v27 = &unk_2781AFC28;
  v30 = a4;
  v28 = self;
  v29 = v16;
  v21 = v16;
  v22 = [v18 actionWithTitle:v20 style:1 handler:&v24];
  [v13 addAction:{v22, v24, v25, v26, v27, v28}];

  [(ICEditingTextView *)self resignFirstResponder];
  v23 = [(ICEditingTextView *)self editorController];
  [v23 presentViewController:v13 animated:1 completion:0];
}

uint64_t __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    return dispatchMainAfterDelay();
  }

  return result;
}

void __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) editorController];
  [v1 setEditing:1];
}

uint64_t __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    return dispatchMainAfterDelay();
  }

  return result;
}

void __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) editorController];
  [v1 setEditing:1];
}

void __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end