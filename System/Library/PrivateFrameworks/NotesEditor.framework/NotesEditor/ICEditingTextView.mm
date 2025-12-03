@interface ICEditingTextView
+ (id)attachmentInNote:(id)note range:(_NSRange)range;
+ (id)copyTmpFileToTmpFileInSubDirectory:(id)directory uti:(id)uti suggestedName:(id)name;
+ (id)temporaryTextStorageWithAttributedString:(id)string note:(id)note filterAttributedString:(BOOL)attributedString;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityOverridesInstructionsHint;
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (BOOL)_isDropSessionLocalDragContextViewFromSubview:(id)subview;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)attributedStringContainsICTTAttachment:(id)attachment;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)exceedsMaxLengthIfSelectionReplacedWithAttributedString:(id)string;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleAttributedStringDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleGenericFileForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session preferredTypeIdentifier:(id)identifier outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleImageDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleInlineDrawingDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleInlinePaperDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleMapKitItemDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleMovieOrAudioDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handlePaperDocumentDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleTopotextDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)handleURLDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block;
- (BOOL)hasFullWidthTextAttachmentAtCaretLocation:(int64_t)location;
- (BOOL)hasSupportedImageInItemProvider:(id)provider;
- (BOOL)ic_allSelectedRangesContainAttributeName:(id)name withValue:(id)value;
- (BOOL)ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:(unsigned int)trait;
- (BOOL)ic_canChangeStyle;
- (BOOL)ic_canIndentByDelta:(int64_t)delta;
- (BOOL)ic_shouldStartDataDetectors;
- (BOOL)isAccessibilityElement;
- (BOOL)isDocumentCopyableSize;
- (BOOL)isPreviewing;
- (BOOL)isSelectionCopyableSize;
- (BOOL)isSupportedAsGenericFile:(id)file;
- (BOOL)selectionContainsDDResultAttribute;
- (BOOL)selectionContainsLink;
- (BOOL)selectionContainsNonLinkAttachment;
- (BOOL)shouldAcceptDropSession:(id)session;
- (BOOL)shouldCheckURLFirstForItemProvider:(id)provider;
- (BOOL)textDroppableView:(id)view dropSession:(id)session willMoveCaretToRange:(id)range;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point;
- (CALayer)tempHighlightLayer;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)hitTestPoint;
- (CGPoint)renderTextInCharacterRange:(_NSRange)range inTextStorage:(id)storage temporaryAttributes:(id)attributes forceOffsetCalculation:(BOOL)calculation image:(id *)image boundingRectangles:(id *)rectangles renderedGlyphRange:(_NSRange *)glyphRange;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)enclosingRectForGlyphRange:(_NSRange)range;
- (ICCalculateRecognitionController)calculateRecognitionController;
- (ICHashtagController)hashtagController;
- (ICMentionsController)mentionsController;
- (ICNAEventReporter)eventReporter;
- (ICNoteEditorViewController)editorController;
- (ICTTTextStoragePersistenceHelper)persistenceHelper;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_icaxModifiedSelectionRange;
- (_NSRange)_icaxRangeInModifiedAttributedString:(id)string forRange:(_NSRange)range;
- (_NSRange)_icaxRangeInTextStorageForRange:(_NSRange)range fromModifiedString:(id)string;
- (_NSRange)_icaxRangeOfAttachment:(id)attachment;
- (_NSRange)selectedRangeBeforeMarking;
- (_NSRange)willInsertText:(id)text;
- (double)distanceFromContentToGivenPoint:(CGPoint)point charIndexAtPoint:(unint64_t *)atPoint;
- (id)TTTextStorage;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilityTextOperations;
- (id)_accessibilityValueForRange:(_NSRange *)range;
- (id)_icaxAdditionalElementsForAutomation;
- (id)_icaxAttachmentElements;
- (id)_icaxAttachmentElementsForRotor;
- (id)_icaxAttachmentViewForCurrentSelectedRange;
- (id)_icaxAttributedStringForRange:(_NSRange *)range;
- (id)_icaxCalculateAdjustString;
- (id)_icaxCalculationErrorElementsForRotor;
- (id)_icaxCalculationResultElementsForRotor;
- (id)_icaxChecklistDeleteCheckedItemsString;
- (id)_icaxChecklistMarkAllItemsCompleteString;
- (id)_icaxChecklistMoveCheckedToBottomString;
- (id)_icaxChecklistUnmarkAllItemsCompleteString;
- (id)_icaxCurrentParagraph;
- (id)_icaxDecreaseIndentationString;
- (id)_icaxFirstAttachmentViewSupportingAction:(SEL)action;
- (id)_icaxFirstTextAttachmentInRange:(_NSRange)range;
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
- (id)_icaxTodoButtonForParagraphStyle:(id)style;
- (id)_icaxTodoElements;
- (id)_targetedPreviewForRange:(id)range withRenderingAttributes:(id)attributes includeFullDocument:(BOOL)document;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)attachmentsInRange:(_NSRange)range;
- (id)attributedStringForDrawing:(id)drawing session:(id)session;
- (id)attributedStringForImageData:(id)data imageTypeUTI:(id)i itemProvider:(id)provider pasteSession:(id)session;
- (id)attributedStringForStrokeSelection:(id)selection session:(id)session;
- (id)attributedStringForURL:(id)l uti:(id)uti name:(id)name metadata:(id)metadata synapseData:(id)data session:(id)session;
- (id)automationElements;
- (id)childElements;
- (id)childElementsForAccessibilityReparenting;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range inTextStorage:(id)storage;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range inTextStorage:(id)storage temporaryAttributes:(id)attributes forceOffsetCalculation:(BOOL)calculation containerView:(id)view;
- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range uiRange:(id)uiRange;
- (id)editorContainer;
- (id)elementsForAccessibilityRotorType:(id)type;
- (id)firstResponderMatchingPredicate:(id)predicate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)icLayoutManager;
- (id)icTextLayoutManager;
- (id)ic_selectedStylesIgnoreTypingAttributes:(BOOL)attributes;
- (id)icaxMakeNotStrikethroughString;
- (id)icaxMakeStrikethroughString;
- (id)internalTypingAttributes;
- (id)itemProviderConsumerTypesForItemProvider:(id)provider;
- (id)itemProviderPasteSessionCreateIfNecessary;
- (id)linkTappedByGesture:(id)gesture;
- (id)pasteConfigurationForCurrentTextView;
- (id)pasteImagesDataArray:(id)array typesArray:(id)typesArray session:(id)session;
- (id)pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:(id)string session:(id)session;
- (id)pasteNotePasteboardData:(id)data session:(id)session error:(id *)error;
- (id)pasteStringUsingBlock:(id)block approxPasteString:(id)string pasteboardTypes:(id)types session:(id)session;
- (id)pasteURL:(id)l uti:(id)uti name:(id)name metadata:(id)metadata session:(id)session;
- (id)preferredFileTypeForItemProvider:(id)provider;
- (id)preferredFileTypesExtensionDictionary;
- (id)selectionRectsForRange:(id)range;
- (id)standardizedAttributedString:(id)string attachmentIdentifiers:(id *)identifiers;
- (id)targetedPreviewForPaperKitAttachment:(id)attachment textFindingResult:(id)result;
- (id)textAttachmentsInRange:(_NSRange)range;
- (id)textController;
- (id)textDraggableView:(id)view dragPreviewForLiftingItem:(id)item session:(id)session;
- (id)textDraggableView:(id)view itemsForDrag:(id)drag;
- (id)textDraggableView:(id)view textRangeForDragFromPosition:(id)position defaultRange:(id)range session:(id)session;
- (id)textDroppableView:(id)view positionForDrop:(id)drop;
- (id)textDroppableView:(id)view previewForDroppingAllItemsWithDefault:(id)default;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (id)textPasteConfigurationSupporting:(id)supporting combineItemAttributedStrings:(id)strings forRange:(id)range;
- (id)textPasteConfigurationSupporting:(id)supporting performPasteOfAttributedString:(id)string toRange:(id)range;
- (id)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
- (id)typeIdentifiersSupportedAsGenericFiles;
- (id)typingAttributes;
- (id)updateIndentForChecklistDragIfNecessaryForString:(id)string lineUnderDrop:(id)drop;
- (int64_t)_accessibilityLineEndPosition;
- (int64_t)_accessibilityLineStartPosition;
- (int64_t)ic_currentWritingDirection;
- (unint64_t)_icaxLinePositionForPosition:(unint64_t)position start:(BOOL)start;
- (unint64_t)_icaxModifiedPositionForPosition:(unint64_t)position;
- (unint64_t)_icaxPositionForModifiedPosition:(unint64_t)position;
- (unint64_t)accessibilityTraits;
- (unint64_t)firstValidEmphasisLocationWithinSelection:(_NSRange)selection;
- (unint64_t)ic_selectedBIUS;
- (unsigned)ic_getTextStyleForCurrentSelection;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_addPencilKitAccessibilityElementIfNeededForTextAttachment:(id)attachment toAttachmentElements:(id)elements;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_getPasteboardItemFromSelection:(id)selection;
- (void)_icaxAddParticipantEditHighlightsToString:(id)string forRange:(_NSRange)range;
- (void)_icaxAddPredictiveTextToAttributedString:(id)string;
- (void)_icaxChecklistDeleteChecked;
- (void)_icaxChecklistMarkAllComplete;
- (void)_icaxChecklistSortCheckedToBottom;
- (void)_icaxChecklistUnMarkAllComplete;
- (void)_icaxGetBoldForCurrentRange:(BOOL *)range italic:(BOOL *)italic underline:(BOOL *)underline strikethrough:(BOOL *)strikethrough;
- (void)_icaxMarkTodoCompleteForCurrentSelection;
- (void)_icaxMarkTodoIncompleteForCurrentSelection;
- (void)_icaxUpdateFakeTextSelectionRange;
- (void)_insertDrawing:(id)drawing;
- (void)_reallyCut:(id)cut;
- (void)_removeDrawingAttachment:(id)attachment withView:(id)view forDeletion:(BOOL)deletion;
- (void)applyPendingTypingAttributesIfNeeded;
- (void)beginDrop;
- (void)beginSelectionChange;
- (void)buildMenuWithBuilder:(id)builder;
- (void)calculateRecognitionController:(id)controller didUpdateTextSuggestions:(id)suggestions;
- (void)commonInit;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)deleteBackward;
- (void)didInsertText:(id)text range:(_NSRange)range;
- (void)didPasteOrDropText:(id)text toRange:(id)range;
- (void)endHeadingRenameCommittingMarkedText:(BOOL)text;
- (void)endSelectionChange;
- (void)eventReporterLostSession:(id)session;
- (void)finishDropWithString:(id)string;
- (void)ic_editAttributesInSelectedRanges:(id)ranges shouldSkipAttachments:(BOOL)attachments;
- (void)ic_enumerateAttributesInSelectedRanges:(id)ranges;
- (void)ic_enumerateTableAttachmentViewControllersInRanges:(id)ranges usingBlock:(id)block;
- (void)ic_indentByAmount:(int64_t)amount;
- (void)ic_performBlock:(id)block;
- (void)ic_resetDataDetectorsResults;
- (void)ic_setAttributeWithName:(id)name enabled:(BOOL)enabled withEmphasisColorType:(int64_t)type;
- (void)ic_setFontHint:(unsigned int)hint enabled:(BOOL)enabled;
- (void)ic_setTextAlignmentForCurrentSelection:(int64_t)selection;
- (void)ic_setTextStyleForCurrentSelection:(unsigned int)selection;
- (void)ic_startDataDetectors;
- (void)ic_toggleAttributeWithName:(id)name withEmphasisColorType:(int64_t)type;
- (void)ic_toggleBoldface;
- (void)ic_toggleEmphasisWithType:(int64_t)type;
- (void)ic_toggleFontHint:(unsigned int)hint;
- (void)ic_toggleItalics;
- (void)ic_toggleStrikethrough;
- (void)ic_toggleUnderline;
- (void)icaxBeginEditingAtAttachment:(id)attachment;
- (void)icaxBeginEditingInStorageRange:(_NSRange)range;
- (void)icaxClearCachedChildrenForReparenting;
- (void)icaxClearCaches;
- (void)icaxSpeakIndentationLevelForCurrentSelectedRange;
- (void)icaxTextDidChange;
- (void)icaxUpdateLinkRanges;
- (void)informDelegateOfAnalyticsCalloutBarButtonActionOfType:(int64_t)type sender:(id)sender;
- (void)informDelegateOfPastedAttributedString:(id)string;
- (void)insertAttributedText:(id)text;
- (void)insertText:(id)text;
- (void)insertTextSuggestion:(id)suggestion;
- (void)keyboardLocaleChanged:(id)changed;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionNatural:(id)natural;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)paste:(id)paste;
- (void)resetViewsGhostedForDrag;
- (void)respondToTapGesture:(id)gesture;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setInternalTypingAttributes:(id)attributes;
- (void)setIsDraggingChecklistItem:(BOOL)item;
- (void)setIsDraggingOverChecklistItem:(BOOL)item;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setTypingAttributes:(id)attributes;
- (void)setupLinkTextAttributes;
- (void)setupTextViewDragAndDropDelegates;
- (void)showDeleteInlineDrawingAlertWithType:(unint64_t)type attachments:(id)attachments completionHandler:(id)handler;
- (void)showRemoveAttachmentAlertIfNecessaryForOperation:(unint64_t)operation selectedRange:(_NSRange)range completionHandler:(id)handler;
- (void)showRemoveAttachmentAlertWithTitle:(id)title message:(id)message primaryActionTitle:(id)actionTitle completionHandler:(id)handler;
- (void)showRemoveInProgressRecordingAlertWithOperation:(unint64_t)operation type:(unint64_t)type attachments:(id)attachments completionHandler:(id)handler;
- (void)showWritingTools:(id)tools;
- (void)speakAccessibilityAutoListItemIfNecessaryForInsertedText:(id)text;
- (void)textDraggableView:(id)view dragSessionDidEnd:(id)end withOperation:(unint64_t)operation;
- (void)textDraggableView:(id)view dragSessionWillBegin:(id)begin;
- (void)textDraggableView:(id)view willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end;
- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter;
- (void)textDroppableView:(id)view dropSessionDidExit:(id)exit;
- (void)textDroppableView:(id)view willPerformDrop:(id)drop;
- (void)textStorageDidPerformMerge:(id)merge;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)unmarkText;
- (void)updateKeyboardSuggestions:(id)suggestions hashtagController:(id)controller;
- (void)updateKeyboardSuggestions:(id)suggestions mentionsController:(id)controller mentionString:(id)string;
- (void)updateTextViewForDidChange;
- (void)willPresentWritingTools;
@end

@implementation ICEditingTextView

- (id)TTTextStorage
{
  textStorage = [(ICEditingTextView *)self textStorage];
  if (textStorage && (v4 = textStorage, [(ICEditingTextView *)self textStorage], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICBaseTextView *)self TTTextStorage];
    }

    textStorage2 = 0;
  }

  else
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
  }

  return textStorage2;
}

- (id)pasteConfigurationForCurrentTextView
{
  v17[14] = *MEMORY[0x277D85DE8];
  if ([(ICEditingTextView *)self supportsAttachments])
  {
    v17[0] = *MEMORY[0x277D35D08];
    identifier = [*MEMORY[0x277CE1DB0] identifier];
    v17[1] = identifier;
    identifier2 = [*MEMORY[0x277CE1E00] identifier];
    v17[2] = identifier2;
    identifier3 = [*MEMORY[0x277CE1E08] identifier];
    v17[3] = identifier3;
    identifier4 = [*MEMORY[0x277CE1EB8] identifier];
    v7 = *MEMORY[0x277D6B808];
    v17[4] = identifier4;
    v17[5] = v7;
    identifier5 = [*MEMORY[0x277CE1E90] identifier];
    v17[6] = identifier5;
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

    typeIdentifiersSupportedAsGenericFiles = [(ICEditingTextView *)self typeIdentifiersSupportedAsGenericFiles];
    v13 = [typeIdentifiersSupportedAsGenericFiles arrayByAddingObjectsFromArray:v11];
  }

  else
  {
    typeIdentifiersSupportedAsGenericFiles = [*MEMORY[0x277CE1E88] identifier];
    v16 = typeIdentifiersSupportedAsGenericFiles;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  v14 = [objc_alloc(MEMORY[0x277D75808]) initWithAcceptableTypeIdentifiers:v13];

  return v14;
}

- (id)typeIdentifiersSupportedAsGenericFiles
{
  v6[2] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1D40] identifier];
  v6[0] = identifier;
  identifier2 = [*MEMORY[0x277CE1CF8] identifier];
  v6[1] = identifier2;
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
  textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
  v5 = [v3 initWithTextLayoutManager:textLayoutManager];
  [(ICEditingTextView *)self setHighlightShapeProvider:v5];

  [(ICEditingTextView *)self setupLinkTextAttributes];
  _allowedTypingAttributes = [(ICEditingTextView *)self _allowedTypingAttributes];
  v7 = [_allowedTypingAttributes mutableCopy];

  [v7 removeObject:*MEMORY[0x277D74060]];
  [v7 removeObject:*MEMORY[0x277D74068]];
  allowedTypingAttributes = [MEMORY[0x277D35F78] allowedTypingAttributes];
  [v7 unionSet:allowedTypingAttributes];

  [(ICEditingTextView *)self _setAllowedTypingAttributes:v7];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_respondToTapGesture_];
  [(ICEditingTextView *)self setTapGestureRecognizer:v9];

  tapGestureRecognizer = [(ICEditingTextView *)self tapGestureRecognizer];
  [tapGestureRecognizer setDelegate:self];

  tapGestureRecognizer2 = [(ICEditingTextView *)self tapGestureRecognizer];
  [(ICEditingTextView *)self addGestureRecognizer:tapGestureRecognizer2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = *MEMORY[0x277D36650];
  textStorage = [(ICEditingTextView *)self textStorage];
  [defaultCenter addObserver:self selector:sel_textStorageDidEndEditingNotification_ name:v13 object:textStorage];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardLocaleChanged_ name:*MEMORY[0x277D77200] object:0];

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
  textContainer = [(ICEditingTextView *)self textContainer];
  v4 = ICDynamicCast();
  insideSiriSnippet = [v4 insideSiriSnippet];

  if ((insideSiriSnippet & 1) == 0)
  {
    [(ICEditingTextView *)self setTextDragDelegate:self];
    [(ICEditingTextView *)self setTextDropDelegate:self];
    [(ICEditingTextView *)self setPasteDelegate:self];
    pasteConfigurationForCurrentTextView = [(ICEditingTextView *)self pasteConfigurationForCurrentTextView];
    [(ICEditingTextView *)self setPasteConfiguration:pasteConfigurationForCurrentTextView];
  }
}

- (void)setupLinkTextAttributes
{
  linkTextAttributes = [(ICEditingTextView *)self linkTextAttributes];
  v4 = linkTextAttributes;
  v5 = MEMORY[0x277CBEC10];
  if (linkTextAttributes)
  {
    v5 = linkTextAttributes;
  }

  v6 = v5;

  v11 = [v6 mutableCopy];
  defaultLinkTextAttributes = [MEMORY[0x277D36708] defaultLinkTextAttributes];
  [v11 addEntriesFromDictionary:defaultLinkTextAttributes];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v8 = [v11 copy];
    [(ICEditingTextView *)self setLinkTextAttributes:v8];
  }

  else
  {
    objc_opt_class();
    layoutManager = [(ICEditingTextView *)self layoutManager];
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
  _icaxPencilKitAttachmentsDict = [(ICEditingTextView *)self _icaxPencilKitAttachmentsDict];
  [_icaxPencilKitAttachmentsDict removeAllObjects];

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

+ (id)attachmentInNote:(id)note range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  noteCopy = note;
  v7 = noteCopy;
  v8 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (length == 1)
  {
    textStorage = [noteCopy textStorage];
    managedObjectContext = [v7 managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ICEditingTextView_DragAndDrop__attachmentInNote_range___block_invoke;
    v13[3] = &unk_2781ABF08;
    v13[4] = &v14;
    [textStorage ic_enumerateAttachmentsInContext:managedObjectContext range:location usingBlock:{1, v13}];

    v8 = v15[5];
  }

  v11 = v8;
  _Block_object_dispose(&v14, 8);

  return v11;
}

+ (id)copyTmpFileToTmpFileInSubDirectory:(id)directory uti:(id)uti suggestedName:(id)name
{
  directoryCopy = directory;
  utiCopy = uti;
  nameCopy = name;
  lastPathComponent = [directoryCopy lastPathComponent];
  pathExtension = [directoryCopy pathExtension];
  v12 = pathExtension;
  if (!pathExtension || [pathExtension isEqualToString:@"tmp"])
  {
    v13 = [MEMORY[0x277D35E00] filenameExtensionForUTI:utiCopy];

    v12 = v13;
  }

  if ([lastPathComponent containsString:@"UIKit.ItemProvider"])
  {
    if (nameCopy)
    {
      [nameCopy ic_sanitizedFilenameString];
    }

    else
    {
      [MEMORY[0x277D35E00] filenameFromUTI:utiCopy];
    }
    v14 = ;

    lastPathComponent = v14;
  }

  v15 = MEMORY[0x277CBEBC0];
  v16 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v19 = [v16 stringByAppendingPathComponent:uUIDString];
  v20 = [v15 fileURLWithPath:v19];

  v21 = [v20 URLByAppendingPathComponent:lastPathComponent isDirectory:0];
  v22 = v21;
  v36 = nameCopy;
  if (v12)
  {
    uRLByDeletingPathExtension = [v21 URLByDeletingPathExtension];
    v24 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v12];

    v22 = v24;
  }

  v25 = utiCopy;
  v26 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    +[ICEditingTextView(DragAndDrop) copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v28 = [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v38];
  v29 = v38;

  if ((v28 & 1) == 0)
  {
    v30 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[ICEditingTextView(DragAndDrop) copyTmpFileToTmpFileInSubDirectory:uti:suggestedName:];
    }
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v37 = v29;
  v32 = [defaultManager2 copyItemAtURL:directoryCopy toURL:v22 error:&v37];
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

- (CGPoint)renderTextInCharacterRange:(_NSRange)range inTextStorage:(id)storage temporaryAttributes:(id)attributes forceOffsetCalculation:(BOOL)calculation image:(id *)image boundingRectangles:(id *)rectangles renderedGlyphRange:(_NSRange *)glyphRange
{
  length = range.length;
  location = range.location;
  v115 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  attributesCopy = attributes;
  if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = objc_alloc(MEMORY[0x277D76370]);
    textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
    textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
    v19 = [textLayoutManager2 ic_textRangeForRange:{location, length}];
    v20 = [v16 initWithTextLayoutManager:textLayoutManager range:v19 unifyRects:1];

    if (attributesCopy)
    {
      [v20 addRenderingAttributes:attributesCopy];
    }

    *image = [v20 image];
    textLayoutManager3 = [(ICEditingTextView *)self textLayoutManager];
    range = [v20 range];
    glyphRange->location = [textLayoutManager3 ic_rangeForTextRange:range];
    glyphRange->length = v23;

    if (attributesCopy)
    {
      allKeys = [attributesCopy allKeys];
      [v20 removeRenderingAttributes:allKeys];
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

    *rectangles = [v37 copy];
    v44 = MEMORY[0x277CBF348];
    if ([(ICEditingTextView *)self isDraggingChecklistItem]|| calculation)
    {
      range2 = [v20 range];
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
      textLayoutManager4 = [(ICEditingTextView *)self textLayoutManager];
      location = [range2 location];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke;
      v91[3] = &unk_2781ABF30;
      v82 = range2;
      v92 = v82;
      v93 = v100;
      v83 = [textLayoutManager4 enumerateTextLayoutFragmentsFromLocation:location options:0 usingBlock:v91];

      textLayoutManager5 = [(ICEditingTextView *)self textLayoutManager];
      range3 = [v20 range];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __162__ICEditingTextView_DragAndDrop__renderTextInCharacterRange_inTextStorage_temporaryAttributes_forceOffsetCalculation_image_boundingRectangles_renderedGlyphRange___block_invoke_2;
      v90[3] = &unk_2781ABF58;
      v90[4] = v100;
      v90[5] = &v94;
      [textLayoutManager5 enumerateTextSegmentsInRange:range3 type:0 options:1 usingBlock:v90];

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
    textContainer = [(ICEditingTextView *)self textContainer];
    layoutManager = [textContainer layoutManager];
    v48 = ICCheckedDynamicCast();

    v49 = [v48 glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
    v51 = v50;
    [v48 setShouldManuallyRenderSeparateSubviews:1];
    [v48 setIsRenderingPreviewForDragAndDrop:1];
    objc_opt_class();
    styler = [storageCopy styler];
    v53 = ICCheckedDynamicCast();

    [v53 styleText:storageCopy inExactRange:location fixModelAttributes:{length, 0}];
    v54 = [objc_alloc(MEMORY[0x277D36970]) initWithLayoutManager:v48 range:location textStorage:{length, storageCopy}];
    [v54 setIsDraggingChecklistItem:{-[ICEditingTextView isDraggingChecklistItem](self, "isDraggingChecklistItem")}];
    *image = [v54 image];
    [v53 styleText:storageCopy inExactRange:location fixModelAttributes:{length, 0}];
    glyphRange->location = [v54 renderedGlyphRange];
    glyphRange->length = v55;
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

    *rectangles = [v68 copy];
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

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range inTextStorage:(id)storage
{
  length = range.length;
  location = range.location;
  v7 = MEMORY[0x277D75BB0];
  storageCopy = storage;
  window = [(ICEditingTextView *)self window];
  windowScene = [window windowScene];
  v11 = [v7 sharedTextEffectsWindowForWindowScene:windowScene];

  v12 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:location inTextStorage:length temporaryAttributes:storageCopy forceOffsetCalculation:0 containerView:0, v11];

  return v12;
}

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range inTextStorage:(id)storage temporaryAttributes:(id)attributes forceOffsetCalculation:(BOOL)calculation containerView:(id)view
{
  calculationCopy = calculation;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  attributesCopy = attributes;
  viewCopy = view;
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    string = [storageCopy string];
    v17 = [string ic_isLastCharacterInRangeANewlineForRange:{location, length}] & (length != 1);

    length -= v17;
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  [(ICEditingTextView *)self renderTextInCharacterRange:location inTextStorage:length temporaryAttributes:storageCopy forceOffsetCalculation:attributesCopy image:calculationCopy boundingRectangles:&v37 renderedGlyphRange:&v36, &v38];
  v19 = v18;
  v21 = v20;
  v22 = v37;
  v23 = MEMORY[0x277D755E8];
  v24 = v36;
  v25 = v22;
  v26 = [[v23 alloc] initWithImage:v25];
  [v26 setContentMode:9];
  [(ICEditingTextView *)self textOriginOffsetForGlyphRange:v38, v39];
  [(ICEditingTextView *)self convertPoint:viewCopy toCoordinateSpace:?];
  v28 = v27;
  v30 = v29;
  [v26 bounds];
  [v26 setFrame:{v28 - v19, v30 - v21}];
  v31 = [objc_alloc(MEMORY[0x277D75480]) initWithTextLineRects:v24];

  v32 = objc_alloc(MEMORY[0x277D75488]);
  [v26 frame];
  UIRectGetCenter();
  v33 = [v32 initWithContainer:viewCopy center:?];

  v34 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v26 parameters:v31 target:v33];

  return v34;
}

- (id)correctlyPositionedPreviewForCharacterRange:(_NSRange)range uiRange:(id)uiRange
{
  length = range.length;
  location = range.location;
  uiRangeCopy = uiRange;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  textStorage = [note textStorage];

  if (location >= [textStorage length])
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v11 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];
    v12 = ICDynamicCast();
  }

  _ic_textFindingResult = [uiRangeCopy _ic_textFindingResult];
  if (v12)
  {
    v88 = length;
    v90 = _ic_textFindingResult;
    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      objc_opt_class();
      textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
      v16 = ICDynamicCast();

      viewIdentifier = [v12 viewIdentifier];
      v18 = [v16 existingAttachmentViewForIdentifier:viewIdentifier];
      v19 = ICProtocolCast();
    }

    else
    {
      objc_opt_class();
      layoutManager = [(ICEditingTextView *)self layoutManager];
      v16 = ICDynamicCast();

      viewIdentifier = [v16 viewForTextAttachmentNoCreate:v12];
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
      textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
      v26 = ICDynamicCast();

      documentRange = [v26 documentRange];
      location = [documentRange location];

      textContainer = [(ICEditingTextView *)self textContainer];
      textLayoutManager3 = [textContainer textLayoutManager];
      v31 = [textLayoutManager3 locationFromLocation:location withOffset:location];
      v86 = location;

      textContainer2 = [(ICEditingTextView *)self textContainer];
      textLayoutManager4 = [textContainer2 textLayoutManager];
      v34 = [textLayoutManager4 locationFromLocation:v31 withOffset:v88];

      textLayoutManager5 = [(ICEditingTextView *)self textLayoutManager];
      v36 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v31 endLocation:v34];
      [textLayoutManager5 ensureLayoutForRange:v36];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v38 = [(ICEditingTextView *)self _pk_viewProviderForAttachment:v12 atCharacterIndex:location createIfNeeded:0, v86];
      }

      else
      {
        textContainer3 = [(ICEditingTextView *)self textContainer];
        v38 = [v12 viewProviderForParentView:self location:v31 textContainer:textContainer3];
      }
    }

    else
    {
      objc_opt_class();
      layoutManager2 = [(ICEditingTextView *)self layoutManager];
      v26 = ICDynamicCast();

      v38 = [v12 viewProviderForParentView:self characterIndex:location layoutManager:v26];
    }

    view = [v38 view];
    v23 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v38 additionalXOffsetForTextDragPreviewInTextView:self];
      v23 = v42;
    }

    if (objc_opt_respondsToSelector())
    {
      [view additionalXOffsetForTextDragPreviewInTextView:self];
      v23 = v43;
    }

    if (objc_opt_respondsToSelector())
    {
      viewForTextDragPreview = [v38 viewForTextDragPreview];

      view = viewForTextDragPreview;
    }

    if (objc_opt_respondsToSelector())
    {
      viewForTextDragPreview2 = [view viewForTextDragPreview];

      view = viewForTextDragPreview2;
    }

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __86__ICEditingTextView_DragAndDrop__correctlyPositionedPreviewForCharacterRange_uiRange___block_invoke_2;
    v91[3] = &unk_2781ABFA8;
    v46 = view;
    v92 = v46;
    v47 = [v46 ic_imageRenderedFromViewHierarchyAfterScreenUpdates:0 fallback:v91];
    v48 = v97[5];
    v97[5] = v47;

    if (v97[5])
    {
LABEL_29:
      subviews = [(ICEditingTextView *)self subviews];
      v50 = [subviews ic_objectPassingTest:&__block_literal_global];

      if (!v50 || ([v50 frame], (CGFloatIsValid() & 1) == 0))
      {
        selfCopy = self;

        v50 = selfCopy;
      }

      v52 = objc_alloc(MEMORY[0x277D755E8]);
      v53 = [v52 initWithImage:v97[5]];
      if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v54 = objc_claimAutoreleasedReturnValue(), v54, v54))
      {
        [(ICEditingTextView *)self textOriginOffsetForGlyphRange:location, v88];
      }

      else
      {
        layoutManager3 = [(ICEditingTextView *)self layoutManager];
        v56 = [layoutManager3 glyphRangeForCharacterRange:location actualCharacterRange:{v88, 0}];
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

    _ic_textFindingResult = v90;
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

- (id)targetedPreviewForPaperKitAttachment:(id)attachment textFindingResult:(id)result
{
  attachmentCopy = attachment;
  resultCopy = result;
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
  [resultCopy generateFindPreviewImageForPaperKitAttachment:attachmentCopy completion:v37];
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
  v18 = [resultCopy framesForHighlightInTextView:v17];
  firstObject = [v18 firstObject];
  [firstObject CGRectValue];
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

- (id)_targetedPreviewForRange:(id)range withRenderingAttributes:(id)attributes includeFullDocument:(BOOL)document
{
  documentCopy = document;
  v48[2] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  attributesCopy = attributes;
  _ic_textFindingResult = [rangeCopy _ic_textFindingResult];
  v10 = _ic_textFindingResult;
  if (!_ic_textFindingResult)
  {
    v19 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:rangeCopy];
    v21 = v20;
    objc_opt_class();
    textStorage = [(ICEditingTextView *)self textStorage];
    v23 = ICDynamicCast();

    v24 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v19 inTextStorage:v21 temporaryAttributes:v23 forceOffsetCalculation:attributesCopy containerView:0, self];

    goto LABEL_13;
  }

  range = [_ic_textFindingResult range];
  v40 = v12;
  v13 = objc_opt_class();
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  v16 = [v13 attachmentInNote:note range:{range, v40}];

  objc_opt_class();
  v17 = ICDynamicCast();
  if ([v16 attachmentType] == 13 && v17)
  {
    rangeCopy = [(ICEditingTextView *)self targetedPreviewForPaperKitAttachment:v16 textFindingResult:v17];
  }

  else
  {
    if (![v10 isAttachmentResult])
    {
      objc_opt_class();
      textStorage2 = [(ICEditingTextView *)self textStorage];
      v38 = ICDynamicCast();

      v37 = [v38 attribute:*MEMORY[0x277D35DA8] atIndex:range effectiveRange:0];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      if ([v37 isList])
      {
        textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
        textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
        v27 = [textLayoutManager2 ic_textRangeForRange:{range, v40}];
        location = [v27 location];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __103__ICEditingTextView_DragAndDrop___targetedPreviewForRange_withRenderingAttributes_includeFullDocument___block_invoke;
        v42[3] = &unk_2781AC018;
        v42[4] = self;
        v42[5] = &v43;
        v42[6] = range;
        v42[7] = v40;
        v29 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:0 usingBlock:v42];
      }

      v47[0] = *MEMORY[0x277D740C0];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v48[0] = blackColor;
      v47[1] = *MEMORY[0x277D74068];
      clearColor = [MEMORY[0x277D75348] clearColor];
      v48[1] = clearColor;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

      v33 = *(v44 + 24);
      window = [(ICEditingTextView *)self window];
      v24 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:range inTextStorage:v40 temporaryAttributes:v38 forceOffsetCalculation:v32 containerView:v33, window];

      _Block_object_dispose(&v43, 8);
      goto LABEL_12;
    }

    rangeCopy = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:range uiRange:v40, rangeCopy];
  }

  v24 = rangeCopy;
LABEL_12:

LABEL_13:
  if (!v24)
  {
    v41.receiver = self;
    v41.super_class = ICEditingTextView;
    v24 = [(ICEditingTextView *)&v41 _targetedPreviewForRange:rangeCopy withRenderingAttributes:attributesCopy includeFullDocument:documentCopy];
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

- (CGRect)enclosingRectForGlyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
    v8 = [textLayoutManager ic_textRangeForRange:{location, length}];

    textContainer = [(ICEditingTextView *)self textContainer];
    [textContainer textContainerOrigin];
    v11 = v10;
    v13 = v12;

    v41 = 0;
    v42 = &v41;
    v43 = 0x4010000000;
    v44 = &unk_21552D17E;
    v14 = *(MEMORY[0x277CBF398] + 16);
    v45 = *MEMORY[0x277CBF398];
    v46 = v14;
    textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke;
    v40[3] = &unk_2781AC040;
    v40[5] = v11;
    v40[6] = v13;
    v40[4] = &v41;
    [textLayoutManager2 enumerateTextSegmentsInRange:v8 type:1 options:0 usingBlock:v40];

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
    textContainer2 = [(ICEditingTextView *)self textContainer];
    [textContainer2 textContainerOrigin];
    v23 = v22;
    v25 = v24;
    layoutManager = [(ICEditingTextView *)self layoutManager];
    textContainer3 = [(ICEditingTextView *)self textContainer];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __61__ICEditingTextView_DragAndDrop__enclosingRectForGlyphRange___block_invoke_2;
    v33[3] = &unk_2781AC068;
    v33[4] = self;
    v36 = location;
    v37 = length;
    v28 = textContainer2;
    v38 = v23;
    v39 = v25;
    v34 = v28;
    v35 = &v41;
    [layoutManager enumerateEnclosingRectsForGlyphRange:location withinSelectedGlyphRange:length inTextContainer:location usingBlock:{length, textContainer3, v33}];

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
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage breakUndoCoalescing];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage2 beginEditing];
  }
}

- (void)finishDropWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    [(ICEditingTextView *)self icaxTextDidChange];
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    [note updateChangeCountWithReason:@"Finished string drop"];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage endEditing];
  }

  tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage2 fixupAfterEditing];

  editorController2 = [(ICEditingTextView *)self editorController];
  note2 = [editorController2 note];
  [note2 save];

  editorController3 = [(ICEditingTextView *)self editorController];
  note3 = [editorController3 note];
  managedObjectContext = [note3 managedObjectContext];
  [managedObjectContext ic_save];

  editorController4 = [(ICEditingTextView *)self editorController];
  note4 = [editorController4 note];
  [note4 setShouldAddMediaAsynchronously:0];

  objc_initWeak(&location, self);
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  snapshotManagedObjectContext = [mEMORY[0x277D35F30] snapshotManagedObjectContext];

  v18 = dispatch_get_global_queue(-32768, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__ICEditingTextView_DragAndDrop__finishDropWithString___block_invoke;
  v21[3] = &unk_2781AC0E0;
  v22 = snapshotManagedObjectContext;
  v23 = stringCopy;
  v19 = stringCopy;
  v20 = snapshotManagedObjectContext;
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

- (BOOL)handleTopotextDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  v16 = *MEMORY[0x277D35D08];
  v17 = [providerCopy hasRepresentationConformingToTypeIdentifier:*MEMORY[0x277D35D08] fileOptions:0];
  if (v17)
  {
    objc_initWeak(&location, self);
    v18 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      editorController = [(ICEditingTextView *)self editorController];
      note = [editorController note];
      shortLoggingDescription = [note shortLoggingDescription];
      *buf = 138412546;
      v22 = shortLoggingDescription;
      v31 = shortLoggingDescription;
      v32 = 2112;
      v33 = positionCopy;
      _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Topotext drop in note: %@, position: %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __124__ICEditingTextView_DragAndDrop__handleTopotextDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v24[3] = &unk_2781AC130;
    objc_copyWeak(&v28, &location);
    v25 = sessionCopy;
    selfCopy = self;
    v27 = blockCopy;
    *progress = [providerCopy loadDataRepresentationForTypeIdentifier:v16 completionHandler:v24];

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

- (BOOL)handleInlineDrawingDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  v16 = *MEMORY[0x277D35BD8];
  if (([providerCopy hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0] & 1) == 0)
  {
    v17 = *MEMORY[0x277D35BD0];

    if ([providerCopy hasRepresentationConformingToTypeIdentifier:v17 fileOptions:0])
    {
      v16 = v17;
    }

    else
    {
      v16 = *MEMORY[0x277CD96B8];

      if (([providerCopy hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0] & 1) == 0)
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
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    shortLoggingDescription = [note shortLoggingDescription];
    *buf = 138412802;
    v31 = shortLoggingDescription;
    v32 = 2112;
    v33 = positionCopy;
    v34 = 2112;
    v35 = v16;
    _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Inline drawing drop in note: %@, position: %@, uti: %@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __129__ICEditingTextView_DragAndDrop__handleInlineDrawingDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
  v25[3] = &unk_2781AC158;
  v26 = v16;
  selfCopy = self;
  v28 = sessionCopy;
  v29 = blockCopy;
  v19 = v16;
  *progress = [providerCopy loadDataRepresentationForTypeIdentifier:v19 completionHandler:v25];

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

- (BOOL)handleInlinePaperDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  providerCopy = provider;
  sessionCopy = session;
  blockCopy = block;
  v13 = *MEMORY[0x277CD96B0];
  v14 = [providerCopy hasRepresentationConformingToTypeIdentifier:*MEMORY[0x277CD96B0] fileOptions:0];
  if (v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __127__ICEditingTextView_DragAndDrop__handleInlinePaperDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v16[3] = &unk_2781AC220;
    v18 = blockCopy;
    v17 = sessionCopy;
    *progress = [providerCopy loadFileRepresentationForTypeIdentifier:v13 completionHandler:v16];
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

- (BOOL)handlePaperDocumentDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  if ((ICInternalSettingsIsPDFsInNotesEnabled() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICInternalSettingsIsPDFsInNotesEnabled()" functionName:"-[ICEditingTextView(DragAndDrop) handlePaperDocumentDropForItemProvider:atTextPosition:pasteSession:outProgress:completionBlock:]" simulateCrash:1 showAlert:0 format:@"PDFsInNotes must be enabled"];
  }

  identifier = [*MEMORY[0x277CE1E08] identifier];
  v17 = [providerCopy hasRepresentationConformingToTypeIdentifier:identifier fileOptions:0];
  if (v17)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __129__ICEditingTextView_DragAndDrop__handlePaperDocumentDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v19[3] = &unk_2781AC298;
    objc_copyWeak(&v24, &location);
    v20 = identifier;
    v21 = providerCopy;
    v23 = blockCopy;
    v22 = sessionCopy;
    *progress = [v21 loadFileRepresentationForTypeIdentifier:v20 completionHandler:v19];

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

- (BOOL)hasSupportedImageInItemProvider:(id)provider
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  providerCopy = provider;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v4 = [registeredTypeIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        identifier = [v7 identifier];
        if ([v10 isEqualToString:identifier])
        {
        }

        else
        {
          v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v10];
          v13 = [v12 conformsToType:v8];

          if (v13)
          {

            v15 = providerCopy;
            v14 = [providerCopy canLoadObjectOfClass:objc_opt_class()];
            goto LABEL_13;
          }
        }
      }

      v5 = [registeredTypeIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  v15 = providerCopy;
LABEL_13:

  return v14;
}

- (id)attributedStringForImageData:(id)data imageTypeUTI:(id)i itemProvider:(id)provider pasteSession:(id)session
{
  dataCopy = data;
  iCopy = i;
  providerCopy = provider;
  sessionCopy = session;
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
  v14 = sessionCopy;
  v21 = v14;
  v15 = dataCopy;
  v22 = v15;
  v16 = iCopy;
  v23 = v16;
  v17 = providerCopy;
  selfCopy = self;
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

- (id)attributedStringForStrokeSelection:(id)selection session:(id)session
{
  v37 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  sessionCopy = session;
  v6 = objc_alloc_init(MEMORY[0x277CD95F8]);
  [selectionCopy boundsWithoutLasso];
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
  v27 = selectionCopy;
  strokes = [selectionCopy strokes];
  v14 = [strokes countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(strokes);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [v19 ink];
        identifier = [v20 identifier];
        v22 = [identifier isEqualToString:v17];

        if ((v22 & 1) == 0)
        {
          v34 = v35;
        }
      }

      v15 = [strokes countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  v23 = [(ICEditingTextView *)self attributedStringForDrawing:v6 session:sessionCopy];

  return v23;
}

- (id)attributedStringForDrawing:(id)drawing session:(id)session
{
  drawingCopy = drawing;
  sessionCopy = session;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  [drawingCopy bounds];
  [drawingCopy set_canvasBounds:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), 768.0, CGRectGetMaxY(v24)}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ICEditingTextView_DragAndDrop__attributedStringForDrawing_session___block_invoke;
  v12[3] = &unk_2781AC2E8;
  v8 = sessionCopy;
  v13 = v8;
  v9 = drawingCopy;
  v14 = v9;
  selfCopy = self;
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

- (BOOL)handleImageDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  identifier = [*MEMORY[0x277CE1DB0] identifier];
  if ([providerCopy hasRepresentationConformingToTypeIdentifier:identifier fileOptions:0])
  {
    LODWORD(v15) = [(ICEditingTextView *)self hasSupportedImageInItemProvider:providerCopy];

    if (v15)
    {
      objc_initWeak(&location, self);
      v16 = MEMORY[0x277CBEB98];
      identifier2 = [*MEMORY[0x277CE1DC0] identifier];
      identifier3 = [*MEMORY[0x277CE1E10] identifier];
      identifier4 = [*MEMORY[0x277CE1E80] identifier];
      identifier5 = [*MEMORY[0x277CE1D90] identifier];
      v21 = [v16 setWithObjects:{identifier2, identifier3, identifier4, identifier5, 0}];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
      v23 = [registeredTypeIdentifiers countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v23)
      {
        v24 = *v51;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v51 != v24)
            {
              objc_enumerationMutation(registeredTypeIdentifiers);
            }

            v26 = *(*(&v50 + 1) + 8 * i);
            if ([v21 containsObject:v26])
            {
              v23 = v26;
              goto LABEL_14;
            }
          }

          v23 = [registeredTypeIdentifiers countByEnumeratingWithState:&v50 objects:v61 count:16];
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
        editorController = [(ICEditingTextView *)self editorController];
        note = [editorController note];
        shortLoggingDescription = [note shortLoggingDescription];
        *buf = 138412802;
        v56 = shortLoggingDescription;
        v57 = 2112;
        v58 = positionCopy;
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
        v46 = providerCopy;
        v47 = sessionCopy;
        v48 = blockCopy;
        *progress = [v46 loadDataRepresentationForTypeIdentifier:v45 completionHandler:v44];

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
        v40 = providerCopy;
        v41 = sessionCopy;
        v42 = blockCopy;
        v32 = [v40 loadObjectOfClass:v31 completionHandler:v39];
        v29 = &v40;
        v15 = &v41;
        v30 = &v42;
        *progress = v32;
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

- (BOOL)handleMovieOrAudioDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  v11 = *MEMORY[0x277CE1E00];
  identifier = [*MEMORY[0x277CE1E00] identifier];
  v13 = [providerCopy hasRepresentationConformingToTypeIdentifier:identifier fileOptions:0];
  v14 = MEMORY[0x277CE1D00];
  if (v13)
  {
  }

  else
  {
    identifier2 = [*MEMORY[0x277CE1D00] identifier];
    v16 = [providerCopy hasRepresentationConformingToTypeIdentifier:identifier2 fileOptions:0];

    if (!v16)
    {
      v34 = 0;
      goto LABEL_27;
    }
  }

  objc_initWeak(&location, self);
  identifier3 = [v11 identifier];
  v18 = [providerCopy hasRepresentationConformingToTypeIdentifier:identifier3 fileOptions:0];
  v19 = *v14;
  if (v18)
  {
    v19 = v11;
  }

  v20 = v19;

  identifier4 = [v20 identifier];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v22 = [registeredTypeIdentifiers countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v22)
  {
    v23 = *v53;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        v25 = *(*(&v52 + 1) + 8 * i);
        v26 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{v25, positionCopy}];
        v27 = [v26 conformsToType:v20];

        if (v27)
        {
          v28 = v25;

          identifier4 = v28;
          goto LABEL_16;
        }
      }

      v22 = [registeredTypeIdentifiers countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  if (![note isPasswordProtected])
  {

    goto LABEL_22;
  }

  v31 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:identifier4];

  if (v31)
  {
LABEL_22:
    v35 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      note2 = [editorController2 note];
      shortLoggingDescription = [note2 shortLoggingDescription];
      *buf = 138412546;
      v58 = shortLoggingDescription;
      v59 = 2112;
      v60 = positionCopy;
      _os_log_debug_impl(&dword_2151A1000, v35, OS_LOG_TYPE_DEBUG, "Movie/audio drop in note: %@, position: %@", buf, 0x16u);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __128__ICEditingTextView_DragAndDrop__handleMovieOrAudioDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v46[3] = &unk_2781AC360;
    objc_copyWeak(&v51, &location);
    v47 = identifier4;
    v48 = providerCopy;
    v49 = sessionCopy;
    v50 = blockCopy;
    v36 = [v48 loadFileRepresentationForTypeIdentifier:v47 completionHandler:v46];

    objc_destroyWeak(&v51);
    v34 = 1;
    goto LABEL_25;
  }

  if (([sessionCopy didWarnAboutNotSupportedForPasswordProtectedNotes] & 1) == 0)
  {
    v32 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:1];
    window = [(ICEditingTextView *)self window];
    [v32 presentInWindow:window completionHandler:0];

    [sessionCopy setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
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

- (BOOL)handleAttributedStringDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  objc_initWeak(&location, self);
  v16 = [providerCopy canLoadObjectOfClass:objc_opt_class()];
  if (v16)
  {
    [sessionCopy setShouldFilterAttributedString:1];
    v17 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __132__ICEditingTextView_DragAndDrop__handleAttributedStringDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v19[3] = &unk_2781AC388;
    v22 = blockCopy;
    v20 = providerCopy;
    objc_copyWeak(&v23, &location);
    v21 = sessionCopy;
    *progress = [v20 loadObjectOfClass:v17 completionHandler:v19];

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

- (BOOL)handleMapKitItemDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  if ([providerCopy canLoadObjectOfClass:objc_opt_class()] && (v16 = *MEMORY[0x277D36028], objc_msgSend(providerCopy, "hasRepresentationConformingToTypeIdentifier:fileOptions:", *MEMORY[0x277D36028], 0)))
  {
    objc_initWeak(&location, self);
    v17 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      editorController = [(ICEditingTextView *)self editorController];
      note = [editorController note];
      shortLoggingDescription = [note shortLoggingDescription];
      *buf = 138412546;
      v30 = shortLoggingDescription;
      v31 = 2112;
      v32 = positionCopy;
      _os_log_debug_impl(&dword_2151A1000, v17, OS_LOG_TYPE_DEBUG, "MapKitItem drop in note: %@, position: %@", buf, 0x16u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __126__ICEditingTextView_DragAndDrop__handleMapKitItemDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v23[3] = &unk_2781AC3D8;
    v24 = providerCopy;
    objc_copyWeak(&v27, &location);
    v25 = sessionCopy;
    v26 = blockCopy;
    *progress = [v24 loadDataRepresentationForTypeIdentifier:v16 completionHandler:v23];

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

- (BOOL)handleURLDropForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session outProgress:(id *)progress completionBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  blockCopy = block;
  if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
  {
    objc_initWeak(&location, self);
    v16 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      editorController = [(ICEditingTextView *)self editorController];
      note = [editorController note];
      shortLoggingDescription = [note shortLoggingDescription];
      *buf = 138412546;
      v40 = shortLoggingDescription;
      v41 = 2112;
      v42 = positionCopy;
      _os_log_debug_impl(&dword_2151A1000, v16, OS_LOG_TYPE_DEBUG, "Synapse drop in note: %@, position: %@", buf, 0x16u);
    }

    v17 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke;
    v33[3] = &unk_2781AC400;
    objc_copyWeak(&v37, &location);
    v36 = blockCopy;
    v34 = providerCopy;
    v35 = sessionCopy;
    *progress = [v34 loadObjectOfClass:v17 completionHandler:v33];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    if (![providerCopy canLoadObjectOfClass:objc_opt_class()])
    {
      v20 = 0;
      goto LABEL_11;
    }

    [sessionCopy setIsTypeURL:1];
    objc_initWeak(&location, self);
    v18 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      note2 = [editorController2 note];
      shortLoggingDescription2 = [note2 shortLoggingDescription];
      *buf = 138412546;
      v40 = shortLoggingDescription2;
      v41 = 2112;
      v42 = positionCopy;
      _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "URL drop in note: %@, position: %@", buf, 0x16u);
    }

    v19 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __119__ICEditingTextView_DragAndDrop__handleURLDropForItemProvider_atTextPosition_pasteSession_outProgress_completionBlock___block_invoke_153;
    v28[3] = &unk_2781AC338;
    objc_copyWeak(&v32, &location);
    v29 = providerCopy;
    v30 = sessionCopy;
    v31 = blockCopy;
    *progress = [v29 loadObjectOfClass:v19 completionHandler:v28];

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
  identifier = [*MEMORY[0x277CE1E08] identifier];
  v6[0] = identifier;
  v6[1] = @"com.apple.iwork.keynote.key";
  v7[0] = @"pdf";
  v7[1] = @"key";
  v6[2] = @"com.apple.iwork.pages.pages";
  v6[3] = @"com.apple.iwork.numbers.numbers";
  v7[2] = @"pages";
  v7[3] = @"numbers";
  identifier2 = [*MEMORY[0x277CE1EB8] identifier];
  v6[4] = identifier2;
  v7[4] = @"vcard";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (id)preferredFileTypeForItemProvider:(id)provider
{
  providerCopy = provider;
  preferredFileTypesExtensionDictionary = [(ICEditingTextView *)self preferredFileTypesExtensionDictionary];
  v6 = MEMORY[0x277CBEB98];
  allKeys = [preferredFileTypesExtensionDictionary allKeys];
  v8 = [v6 setWithArray:allKeys];

  v9 = MEMORY[0x277CBEB58];
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];

  v11 = [v9 setWithArray:registeredTypeIdentifiers];

  [v11 intersectSet:v8];
  anyObject = [v11 anyObject];
  if (anyObject)
  {
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    if ([note isPasswordProtected])
    {
      v15 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:anyObject];

      if (v15)
      {
        goto LABEL_7;
      }

      editorController = anyObject;
      anyObject = 0;
    }

    else
    {
    }
  }

LABEL_7:

  return anyObject;
}

- (BOOL)shouldCheckURLFirstForItemProvider:(id)provider
{
  v3 = MEMORY[0x277CBEB98];
  registeredTypeIdentifiers = [provider registeredTypeIdentifiers];
  v5 = [v3 setWithArray:registeredTypeIdentifiers];

  v6 = MEMORY[0x277CBEB98];
  identifier = [*MEMORY[0x277CE1D60] identifier];
  v8 = [v6 setWithObjects:{identifier, 0}];

  LOBYTE(identifier) = [v5 intersectsSet:v8];
  return identifier;
}

- (id)attributedStringForURL:(id)l uti:(id)uti name:(id)name metadata:(id)metadata synapseData:(id)data session:(id)session
{
  lCopy = l;
  utiCopy = uti;
  nameCopy = name;
  metadataCopy = metadata;
  dataCopy = data;
  sessionCopy = session;
  supportsAttachments = [sessionCopy supportsAttachments];
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
  v21 = lCopy;
  v30 = v21;
  v22 = sessionCopy;
  v31 = v22;
  v38 = supportsAttachments;
  v23 = utiCopy;
  v32 = v23;
  v24 = metadataCopy;
  v33 = v24;
  v25 = dataCopy;
  v34 = v25;
  v26 = nameCopy;
  selfCopy = self;
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

- (BOOL)handleGenericFileForItemProvider:(id)provider atTextPosition:(id)position pasteSession:(id)session preferredTypeIdentifier:(id)identifier outProgress:(id *)progress completionBlock:(id)block
{
  v54 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  positionCopy = position;
  sessionCopy = session;
  identifierCopy = identifier;
  blockCopy = block;
  v16 = identifierCopy;
  v17 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D35D08], 0}];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
    v27 = [registeredTypeIdentifiers countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v27)
    {
      v28 = *v45;
LABEL_12:
      v29 = 0;
      while (1)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        v30 = *(*(&v44 + 1) + 8 * v29);
        if (([v25 containsObject:v30] & 1) == 0 && -[ICEditingTextView isSupportedAsGenericFile:](self, "isSupportedAsGenericFile:", v30))
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [registeredTypeIdentifiers countByEnumeratingWithState:&v44 objects:v53 count:16];
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
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    shortLoggingDescription = [note shortLoggingDescription];
    *location = 138412802;
    *&location[4] = shortLoggingDescription;
    v49 = 2112;
    v50 = positionCopy;
    v51 = 2112;
    v52 = v17;
    _os_log_debug_impl(&dword_2151A1000, v18, OS_LOG_TYPE_DEBUG, "Generic file drop in note: %@, position: %@, UTI: %@", location, 0x20u);
  }

  editorController2 = [(ICEditingTextView *)self editorController];
  note2 = [editorController2 note];
  if ([note2 isPasswordProtected])
  {
    v21 = [MEMORY[0x277D35E00] isTypeUTISupportedForPasswordProtectedNotes:v17];

    if ((v21 & 1) == 0)
    {
      if (([sessionCopy didWarnAboutNotSupportedForPasswordProtectedNotes] & 1) == 0)
      {
        v22 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:1];
        window = [(ICEditingTextView *)self window];
        [v22 presentInWindow:window completionHandler:0];

        [sessionCopy setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
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
  v40 = providerCopy;
  v41 = sessionCopy;
  v42 = blockCopy;
  *progress = [v40 loadFileRepresentationForTypeIdentifier:v17 completionHandler:v38];

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

- (BOOL)isSupportedAsGenericFile:(id)file
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  typeIdentifiersSupportedAsGenericFiles = [(ICEditingTextView *)self typeIdentifiersSupportedAsGenericFiles];
  v6 = [typeIdentifiersSupportedAsGenericFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(typeIdentifiersSupportedAsGenericFiles);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:fileCopy];
        v11 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
        v12 = [v10 conformsToType:v11];

        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [typeIdentifiersSupportedAsGenericFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)shouldAcceptDropSession:(id)session
{
  v29[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  if (!note)
  {

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v7 = note;
  editorController2 = [(ICEditingTextView *)self editorController];
  note2 = [editorController2 note];
  isEditable = [note2 isEditable];

  if (!isEditable)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D35900];
  v29[0] = @"com.apple.notes.noteitemprovider";
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v13 = [sessionCopy hasItemsConformingToTypeIdentifiers:v12];

  if (v13)
  {
    goto LABEL_14;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  items = [sessionCopy items];
  v15 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(items);
        }

        itemProvider = [*(*(&v24 + 1) + 8 * i) itemProvider];
        v20 = [(ICEditingTextView *)self itemProviderConsumerTypesForItemProvider:itemProvider];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 1;
          goto LABEL_17;
        }
      }

      v16 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (id)itemProviderConsumerTypesForItemProvider:(id)provider
{
  v59 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  isPasswordProtected = [note isPasswordProtected];

  selfCopy = self;
  supportsAttachments = [(ICEditingTextView *)self supportsAttachments];
  v8 = MEMORY[0x277CBEB18];
  v41 = providerCopy;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v53 = [v8 arrayWithCapacity:{objc_msgSend(registeredTypeIdentifiers, "count")}];

  if (itemProviderConsumerTypesForItemProvider__onceToken != -1)
  {
    [ICEditingTextView(DragAndDrop) itemProviderConsumerTypesForItemProvider:];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [providerCopy registeredTypeIdentifiers];
  v10 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    v13 = !supportsAttachments | isPasswordProtected;
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
        if (supportsAttachments)
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

        if (!supportsAttachments)
        {
          goto LABEL_24;
        }

        v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
        if ([v22 conformsToType:v43])
        {
          v23 = [(ICEditingTextView *)selfCopy hasSupportedImageInItemProvider:v41];

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

        if (!supportsAttachments)
        {
          if (isPasswordProtected)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if (isPasswordProtected)
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
        preferredFileTypesExtensionDictionary = [(ICEditingTextView *)selfCopy preferredFileTypesExtensionDictionary];
        v31 = [preferredFileTypesExtensionDictionary objectForKeyedSubscript:v15];

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
        if ((v24 & 1) == 0 && [(ICEditingTextView *)selfCopy isSupportedAsGenericFile:v15])
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

  itemProviderPasteSession = [(ICEditingTextView *)selfCopy itemProviderPasteSession];
  if ([itemProviderPasteSession isForDragAndDrop])
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

- (id)standardizedAttributedString:(id)string attachmentIdentifiers:(id *)identifiers
{
  stringCopy = string;
  if (identifiers)
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
  itemProviderPasteSession = [(ICEditingTextView *)self itemProviderPasteSession];
  workerContext = [itemProviderPasteSession workerContext];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __85__ICEditingTextView_DragAndDrop__standardizedAttributedString_attachmentIdentifiers___block_invoke;
  v17 = &unk_2781AC4C0;
  v10 = stringCopy;
  v18 = v10;
  selfCopy = self;
  v21 = &v22;
  v11 = v7;
  v20 = v11;
  [workerContext performBlockAndWait:&v14];

  if (identifiers)
  {
    *identifiers = [v11 copy];
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

- (BOOL)attributedStringContainsICTTAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [attachmentCopy length];
  v5 = *MEMORY[0x277D74060];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ICEditingTextView_DragAndDrop__attributedStringContainsICTTAttachment___block_invoke;
  v8[3] = &unk_2781ABC80;
  v8[4] = &v9;
  [attachmentCopy enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
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

- (BOOL)textDroppableView:(id)view dropSession:(id)session willMoveCaretToRange:(id)range
{
  if ([(ICEditingTextView *)self isDraggingOverChecklistItem:view])
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

- (id)textDraggableView:(id)view textRangeForDragFromPosition:(id)position defaultRange:(id)range session:(id)session
{
  v69 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  positionCopy = position;
  rangeCopy = range;
  sessionCopy = session;
  v13 = rangeCopy;
  [sessionCopy locationInView:viewCopy];
  v15 = v14;
  v17 = v16;
  containerViewForAttachments = [(ICBaseTextView *)self containerViewForAttachments];
  v19 = [containerViewForAttachments hitTest:0 forEvent:{v15, v17}];

  objc_opt_class();
  v58 = v19;
  v20 = ICDynamicCast();
  containerViewForAttachments2 = [(ICBaseTextView *)self containerViewForAttachments];
  subviews = [containerViewForAttachments2 subviews];
  v23 = [subviews ic_objectsPassingTest:&__block_literal_global_230];

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
  trackedParagraph3 = v23;
  v39 = [trackedParagraph3 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (!v39)
  {
    v36 = 0;
    v25 = 0;
    selectedTextRange = v13;
    goto LABEL_3;
  }

  v40 = v39;
  v56 = sessionCopy;
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
        objc_enumerationMutation(trackedParagraph3);
      }

      v43 = *(*(&v64 + 1) + 8 * i);
      [viewCopy convertPoint:0 toView:{v15, v17}];
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

      trackedParagraph = [v25 trackedParagraph];
      [trackedParagraph characterRange];
      v54 = v53;

      v17 = v61;
      v15 = v62;
      if (v54 <= 1)
      {

        v25 = 0;
      }
    }

    v40 = [trackedParagraph3 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_25:

  sessionCopy = v56;
  v13 = v57;
  v37 = v60;
  if (v25)
  {
LABEL_2:
    trackedParagraph2 = [v25 trackedParagraph];
    characterRange = [trackedParagraph2 characterRange];
    v29 = v28;

    [(ICEditingTextView *)self setSelectedRange:characterRange, v29];
    selectedRange = [(ICEditingTextView *)self selectedRange];
    v32 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:selectedRange, v31];
    [(ICEditingTextView *)self setSelectedTextRange:v32];

    selectedTextRange = [(ICEditingTextView *)self selectedTextRange];

    [v25 imageFrame];
    [(ICEditingTextView *)self setChecklistDragVerticalOffset:v34 * 0.75];
    trackedParagraph3 = [v25 trackedParagraph];
    [(ICEditingTextView *)self setDraggedChecklistTrackedParagraph:trackedParagraph3];
    v36 = 1;
LABEL_3:

    v37 = v60;
    goto LABEL_4;
  }

  v36 = 0;
  selectedTextRange = v57;
LABEL_4:
  [(ICEditingTextView *)self setIsDraggingChecklistItem:v36];

  return selectedTextRange;
}

BOOL __102__ICEditingTextView_DragAndDrop__textDraggableView_textRangeForDragFromPosition_defaultRange_session___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3 != 0;
}

- (id)textDroppableView:(id)view positionForDrop:(id)drop
{
  dropCopy = drop;
  dropPosition = [dropCopy dropPosition];
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    dropSession = [dropCopy dropSession];
    [dropSession locationInView:self];
    v9 = v8;
    v11 = v10;

    v12 = [dropCopy icaxValueForKeyPath:@"dropSession.sessionDestination.isAccessibilitySession"];
    bOOLValue = [v12 BOOLValue];

    objc_opt_class();
    v14 = UIAccessibilityFocusedElement(*MEMORY[0x277D76498]);
    v15 = ICDynamicCast();

    if (v15)
    {
      v16 = bOOLValue;
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
      icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
      v23 = [icTextLayoutManager characterIndexForPoint:{v9, v19}];

      icTextLayoutManager2 = [(ICEditingTextView *)self icTextLayoutManager];
      v25 = [icTextLayoutManager2 trackedTodoParagraphAtIndex:v23];
    }

    else
    {
      icLayoutManager = [(ICEditingTextView *)self icLayoutManager];
      textContainer = [(ICEditingTextView *)self textContainer];
      v23 = [icLayoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v9, v19}];

      icTextLayoutManager2 = [(ICEditingTextView *)self icLayoutManager];
      v25 = [icTextLayoutManager2 trackedTodoParagraphAtIndexIfExists:v23];
    }

    v28 = v25;

    if (!v28)
    {
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:v23, 0];
        start = [v30 start];

        dropPosition = start;
      }

      [(ICEditingTextView *)self setIsDraggingOverChecklistItem:0];
      [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:0];
      tempHighlightLayerIfExists = [(ICEditingTextView *)self tempHighlightLayerIfExists];
      [tempHighlightLayerIfExists removeFromSuperlayer];
      goto LABEL_22;
    }

    if (v16)
    {
      characterRange = [v28 characterRange];
    }

    else
    {
      v33 = [ICChecklistDragUtilities shouldDropAboveForTrackedTodoParagraph:v28 forPoint:self textView:v9, v19];
      characterRange2 = [v28 characterRange];
      characterRange = characterRange2;
      if (!v33)
      {
        characterRange = characterRange2 + v35;
        goto LABEL_21;
      }
    }

    v33 = 1;
LABEL_21:
    [(ICEditingTextView *)self setIsDraggingOverChecklistItem:1];
    [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:v28];
    [(ICEditingTextView *)self setShouldDropChecklistAbove:v33];
    [(ICEditingTextView *)self invalidateDropCaret];
    tempHighlightLayerIfExists = [(ICEditingTextView *)self ic_textRangeFromCharacterRange:characterRange, 0];
    start2 = [tempHighlightLayerIfExists start];

    [(ICEditingTextView *)self setLastChecklistDropIndex:characterRange];
    dropPosition = start2;
LABEL_22:
  }

  return dropPosition;
}

- (id)textDraggableView:(id)view itemsForDrag:(id)drag
{
  v84 = *MEMORY[0x277D85DE8];
  dragCopy = drag;
  objc_opt_class();
  textContainer = [(ICEditingTextView *)self textContainer];
  v7 = ICDynamicCast();
  insideSiriSnippet = [v7 insideSiriSnippet];

  if (insideSiriSnippet)
  {
    suggestedItems = MEMORY[0x277CBEBF8];
    goto LABEL_57;
  }

  dragRange = [dragCopy dragRange];
  v10 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:?];
  v12 = v11;
  v13 = MEMORY[0x277D74060];
  if (v11 != 1)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v15 = [textStorage attribute:*v13 atIndex:v10 effectiveRange:0];
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
        textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
        textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
        documentRange = [textLayoutManager2 documentRange];
        location = [documentRange location];
        layoutManager = [textLayoutManager locationFromLocation:location withOffset:v10];

        textContainer2 = [(ICEditingTextView *)self textContainer];
        v18 = [v16 viewProviderForParentView:self location:layoutManager textContainer:textContainer2];
      }

      else
      {
        layoutManager = [(ICEditingTextView *)self layoutManager];
        v18 = [v16 viewProviderForParentView:self characterIndex:v10 layoutManager:layoutManager];
      }

      view = [v18 view];
      dragSession = [dragCopy dragSession];
      view2 = [v18 view];
      [dragSession locationInView:view2];
      v29 = [view hitTest:0 withEvent:?];

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
            superview = [v29 superview];

            v29 = superview;
            if (superview)
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
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    managedObjectContext = [note managedObjectContext];
    [managedObjectContext ic_save];

    editorController2 = [(ICEditingTextView *)self editorController];
    note2 = [editorController2 note];

    textStorage2 = [note2 textStorage];
    textStorage3 = [(ICEditingTextView *)self textStorage];

    if (textStorage2 != textStorage3)
    {
      objc_opt_class();
      textStorage4 = [(ICEditingTextView *)self textStorage];
      v39 = ICDynamicCast();

      v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, v39];
      itemProvider = [v39 itemProviderForRange:v10 andNote:{v12, note2}];

LABEL_39:
      viewsGhostedForDrag = [(ICEditingTextView *)self viewsGhostedForDrag];

      if (!viewsGhostedForDrag)
      {
        array = [MEMORY[0x277CBEB18] array];
        [(ICEditingTextView *)self setViewsGhostedForDrag:array];
      }

      textStorage5 = [(ICEditingTextView *)self textStorage];
      v55 = *v13;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __65__ICEditingTextView_DragAndDrop__textDraggableView_itemsForDrag___block_invoke;
      v79[3] = &unk_2781AC4E8;
      v79[4] = self;
      v79[5] = v10;
      v79[6] = v12;
      [textStorage5 enumerateAttribute:v55 inRange:v10 options:v12 usingBlock:{0, v79}];

      if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        icLayoutManager = v56;
        v58 = dragCopy;
        icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
        v60 = [icTextLayoutManager todoButtonsForCharacterRange:{v10, v12}];
      }

      else
      {
        v58 = dragCopy;
        icLayoutManager = [(ICEditingTextView *)self icLayoutManager];
        v60 = [icLayoutManager todoButtonsForCharacterRange:{v10, v12}];
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
            viewsGhostedForDrag2 = [(ICEditingTextView *)self viewsGhostedForDrag];
            [viewsGhostedForDrag2 addObject:v66];

            [v66 setAlpha:0.2];
          }

          v63 = [v61 countByEnumeratingWithState:&v75 objects:v83 count:16];
        }

        while (v63);
      }

      if (itemProvider)
      {
        v68 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:itemProvider];
        v69 = v73;
        [v68 setLocalObject:v73];
        dragCopy = v58;
        dragSession2 = [v58 dragSession];
        [dragSession2 setLocalContext:self];

        v82 = v68;
        suggestedItems = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      }

      else
      {
        dragCopy = v58;
        suggestedItems = [v58 suggestedItems];
        v69 = v73;
      }

      goto LABEL_56;
    }

    v41 = objc_opt_class();
    editorController3 = [(ICEditingTextView *)self editorController];
    note3 = [editorController3 note];
    v44 = [v41 attachmentInNote:note3 range:{v10, v12}];

    if (v44)
    {
      v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 uiRange:v12, dragRange];
      if (!v73)
      {
        textStorage6 = [note2 textStorage];
        v73 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, textStorage6];
      }

      attachmentModel = [v44 attachmentModel];
      itemProvider = [attachmentModel itemProvider];

      if (itemProvider)
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
    textStorage7 = [note2 textStorage];
    v49 = [textStorage7 attribute:*MEMORY[0x277D740E8] atIndex:v10 effectiveRange:&v80];

    if (v49 && v10 == v80 && v12 == v81)
    {
      itemProvider = 0;
    }

    else
    {
      textStorage8 = [note2 textStorage];
      v72 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:v10 inTextStorage:v12, textStorage8];

      textStorage9 = [note2 textStorage];
      itemProvider = [textStorage9 itemProviderForRange:v10 andNote:{v12, note2}];

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
  suggestedItems = MEMORY[0x277CBEBF8];
LABEL_56:

LABEL_57:

  return suggestedItems;
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
  viewsGhostedForDrag = [(ICEditingTextView *)self viewsGhostedForDrag];
  v4 = [viewsGhostedForDrag countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(viewsGhostedForDrag);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:1.0];
      }

      while (v5 != v7);
      v5 = [viewsGhostedForDrag countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(ICEditingTextView *)self setViewsGhostedForDrag:0];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

- (void)textDraggableView:(id)view willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__ICEditingTextView_DragAndDrop__textDraggableView_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_2781AC510;
  v5[4] = self;
  [animator addCompletion:v5];
}

uint64_t __88__ICEditingTextView_DragAndDrop__textDraggableView_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) resetViewsGhostedForDrag];
  }

  return result;
}

- (id)textDraggableView:(id)view dragPreviewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  objc_opt_class();
  localObject = [itemCopy localObject];
  v7 = ICDynamicCast();

  [itemCopy setLocalObject:0];

  return v7;
}

- (void)textDraggableView:(id)view dragSessionWillBegin:(id)begin
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
  viewsGhostedForDrag = [(ICEditingTextView *)self viewsGhostedForDrag];
  v7 = [viewsGhostedForDrag countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(viewsGhostedForDrag);
        }

        [*(*(&v14 + 1) + 8 * v10++) setAlpha:0.2];
      }

      while (v8 != v10);
      v8 = [viewsGhostedForDrag countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController beginBlockingMergeForReason:2 textView:self];

  [(ICEditingTextView *)self setLastChecklistDropIndex:-1];
}

- (void)textDraggableView:(id)view dragSessionDidEnd:(id)end withOperation:(unint64_t)operation
{
  v6 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDraggableView:? dragSessionDidEnd:? withOperation:?];
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController endBlockingMergeForReason:2 textView:self];

  editorController2 = [(ICEditingTextView *)self editorController];
  [editorController2 saveNote];

  [(ICEditingTextView *)self setIsDraggingOverChecklistItem:0];
  [(ICEditingTextView *)self setTrackedParagraphCurrentlyUnderDraggedChecklist:0];
  [(ICEditingTextView *)self setLastChecklistDropIndex:-1];
  [(ICEditingTextView *)self resetViewsGhostedForDrag];
}

- (id)textDroppableView:(id)view previewForDroppingAllItemsWithDefault:(id)default
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    icLayoutManager = [(ICEditingTextView *)self icLayoutManager];
    [icLayoutManager cleanupStaleTodoButtons];
  }

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  objc_opt_class();
  styler = [tTTextStorage styler];
  v8 = ICDynamicCast();

  if (![(ICEditingTextView *)self isDraggingChecklistItem]|| ![(ICEditingTextView *)self isDraggingOverChecklistItem])
  {
    goto LABEL_18;
  }

  [(ICEditingTextView *)self lastChecklistDropIndex];
  [tTTextStorage fixupAfterEditing];
  lastChecklistDropIndex = [(ICEditingTextView *)self lastChecklistDropIndex];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
    [icTextLayoutManager trackedTodoParagraphAtIndex:lastChecklistDropIndex];
  }

  else
  {
    icTextLayoutManager = [(ICEditingTextView *)self icLayoutManager];
    [icTextLayoutManager trackedTodoParagraphAtIndexIfExists:lastChecklistDropIndex];
  }
  v11 = ;

  if (v11)
  {
    draggedChecklistTrackedParagraph = [(ICEditingTextView *)self draggedChecklistTrackedParagraph];
    characterRange = [draggedChecklistTrackedParagraph characterRange];

    if (characterRange < lastChecklistDropIndex)
    {
      v14 = [v8 expandedChecklistTrackedParagraphsInTextView:self forIndex:lastChecklistDropIndex];
      v15 = [v14 indexOfObject:v11];
      if (v15)
      {
        v16 = [v14 objectAtIndexedSubscript:v15 - 1];

        v11 = v16;
      }
    }

    characterRange2 = [v11 characterRange];
    v19 = v18;
    if (v18 >= 2)
    {
      string = [tTTextStorage string];
      v21 = [string substringWithRange:{characterRange2, v19}];
      ic_isLastCharacterANewline = [v21 ic_isLastCharacterANewline];

      v19 -= ic_isLastCharacterANewline & 1;
    }

    v23 = [(ICEditingTextView *)self correctlyPositionedPreviewForCharacterRange:characterRange2 inTextStorage:v19, tTTextStorage];
    if (ICInternalSettingsIsTextKit2Enabled() && ([(ICEditingTextView *)self textLayoutManager], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      icTextLayoutManager2 = [(ICEditingTextView *)self icTextLayoutManager];
      documentRange = [icTextLayoutManager2 documentRange];
      location = [documentRange location];
      v28 = [icTextLayoutManager2 locationFromLocation:location withOffset:characterRange2];

      v29 = [icTextLayoutManager2 locationFromLocation:v28 withOffset:v19];
      v30 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v28 endLocation:v29];
      icTextLayoutManager3 = [(ICEditingTextView *)self icTextLayoutManager];
      [icTextLayoutManager3 invalidateLayoutForRange:v30];
    }

    else
    {
      icTextLayoutManager2 = [(ICEditingTextView *)self icLayoutManager];
      [icTextLayoutManager2 invalidateLayoutForCharacterRange:characterRange2 actualCharacterRange:{v19, 0}];
    }
  }

  else
  {
LABEL_18:
    v23 = 0;
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    icLayoutManager2 = [(ICEditingTextView *)self icLayoutManager];
    [icLayoutManager2 setShouldManuallyRenderSeparateSubviews:0];

    icLayoutManager3 = [(ICEditingTextView *)self icLayoutManager];
    [icLayoutManager3 setIsRenderingPreviewForDragAndDrop:0];
  }

  return v23;
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  dropCopy = drop;
  dropSession = [dropCopy dropSession];
  v7 = [(ICEditingTextView *)self shouldAcceptDropSession:dropSession];

  if (v7)
  {
    if ([dropCopy isSameView])
    {
      v8 = 3;
    }

    else
    {
      dropSession2 = [dropCopy dropSession];
      if ([(ICEditingTextView *)self _isDropSessionLocalDragContextViewFromSubview:dropSession2])
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

- (BOOL)_isDropSessionLocalDragContextViewFromSubview:(id)subview
{
  subviewCopy = subview;
  localDragSession = [subviewCopy localDragSession];
  localContext = [localDragSession localContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    localDragSession2 = [subviewCopy localDragSession];
    localContext2 = [localDragSession2 localContext];
    v9 = ICDynamicCast();
    v10 = [(ICEditingTextView *)self containsView:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)textDroppableView:(id)view willPerformDrop:(id)drop
{
  dropCopy = drop;
  v6 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? willPerformDrop:?];
  }

  itemProviderPasteSessionCreateIfNecessary = [(ICEditingTextView *)self itemProviderPasteSessionCreateIfNecessary];
  [itemProviderPasteSessionCreateIfNecessary setIsForDragAndDrop:1];
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setIsDropping:1];

  [(ICEditingTextView *)self setPasteDelegate:self];
  LODWORD(tTTextStorage) = [dropCopy isSameView];

  if (tTTextStorage)
  {
    editorController = [(ICEditingTextView *)self editorController];
    [editorController setHasMadeEdits];

    editorController2 = [(ICEditingTextView *)self editorController];
    note = [editorController2 note];
    [note updateModificationDateAndChangeCountAndSaveAfterDelay];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    layoutManager = [(ICEditingTextView *)self layoutManager];
    v13 = ICCheckedDynamicCast();

    [v13 setShouldManuallyRenderSeparateSubviews:1];
    [v13 setIsRenderingPreviewForDragAndDrop:1];
  }
}

- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidEnter:?];
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController beginBlockingMergeForReason:2 textView:self];
}

- (void)textDroppableView:(id)view dropSessionDidExit:(id)exit
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidExit:?];
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController endBlockingMergeForReason:2 textView:self];

  editorController2 = [(ICEditingTextView *)self editorController];
  [editorController2 saveNote];
}

- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end
{
  v5 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textDroppableView:? dropSessionDidEnd:?];
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController endBlockingMergeForReason:2 textView:self];

  editorController2 = [(ICEditingTextView *)self editorController];
  [editorController2 saveNote];

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setIsDropping:0];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    layoutManager = [(ICEditingTextView *)self layoutManager];
    v12 = ICCheckedDynamicCast();

    [v12 setShouldManuallyRenderSeparateSubviews:0];
    [v12 setIsRenderingPreviewForDragAndDrop:0];
  }

  [(ICEditingTextView *)self icaxClearCaches];
}

- (id)itemProviderPasteSessionCreateIfNecessary
{
  itemProviderPasteSession = [(ICEditingTextView *)self itemProviderPasteSession];
  if (!itemProviderPasteSession)
  {
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];

    managedObjectContext = [note managedObjectContext];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __75__ICEditingTextView_DragAndDrop__itemProviderPasteSessionCreateIfNecessary__block_invoke;
    v18 = &unk_2781ABEB8;
    v19 = note;
    v20 = managedObjectContext;
    v7 = managedObjectContext;
    v8 = note;
    [v7 performBlockAndWait:&v15];
    v9 = [ICEditingTextViewItemProviderPasteSession alloc];
    objectID = [v8 objectID];
    v11 = [(ICEditingTextViewItemProviderPasteSession *)v9 initWithNoteObjectID:objectID];
    [(ICEditingTextView *)self setItemProviderPasteSession:v11];

    supportsAttachments = [(ICEditingTextView *)self supportsAttachments];
    itemProviderPasteSession2 = [(ICEditingTextView *)self itemProviderPasteSession];
    [itemProviderPasteSession2 setSupportsAttachments:supportsAttachments];

    itemProviderPasteSession = [(ICEditingTextView *)self itemProviderPasteSession];
  }

  return itemProviderPasteSession;
}

uint64_t __75__ICEditingTextView_DragAndDrop__itemProviderPasteSessionCreateIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) save];
  v2 = *(a1 + 40);

  return [v2 ic_save];
}

- (id)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  v51 = *MEMORY[0x277D85DE8];
  supportingCopy = supporting;
  itemCopy = item;
  v7 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:? transformPasteItem:?];
  }

  itemProviderPasteSessionCreateIfNecessary = [(ICEditingTextView *)self itemProviderPasteSessionCreateIfNecessary];
  itemProvider = [itemCopy itemProvider];
  v10 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:itemProvider transformPasteItem:?];
  }

  selectedTextRange = [(ICEditingTextView *)self selectedTextRange];
  v31 = [selectedTextRange end];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_transformPasteItem___block_invoke;
  aBlock[3] = &unk_2781AC588;
  v30 = itemProviderPasteSessionCreateIfNecessary;
  v47 = v30;
  selfCopy = self;
  v27 = itemCopy;
  v49 = v27;
  v12 = _Block_copy(aBlock);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = itemProvider;
  obj = [(ICEditingTextView *)self itemProviderConsumerTypesForItemProvider:itemProvider];
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

      unsignedIntegerValue = [*(*(&v42 + 1) + 8 * v18) unsignedIntegerValue];
      if (unsignedIntegerValue > 5)
      {
        if (unsignedIntegerValue <= 8)
        {
          if (unsignedIntegerValue == 6)
          {
            v38 = 0;
            v23 = [(ICEditingTextView *)self handleMovieOrAudioDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v38 completionBlock:v12];
            v24 = v38;
            goto LABEL_34;
          }

          if (unsignedIntegerValue != 7)
          {
            v39 = 0;
            v23 = [(ICEditingTextView *)self handleImageDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v39 completionBlock:v12];
            v24 = v39;
            goto LABEL_34;
          }
        }

        else
        {
          if ((unsignedIntegerValue - 9) < 2)
          {
            v33 = 0;
            v23 = [(ICEditingTextView *)self handleURLDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v33 completionBlock:v12];
            v24 = v33;
            goto LABEL_34;
          }

          if (unsignedIntegerValue != 11)
          {
            if (unsignedIntegerValue == 12)
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

      if (unsignedIntegerValue > 2)
      {
        if ((unsignedIntegerValue - 3) < 2)
        {
          v35 = 0;
          v23 = [(ICEditingTextView *)self handleInlineDrawingDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v35 completionBlock:v12];
          v24 = v35;
          goto LABEL_34;
        }

        if (unsignedIntegerValue == 5)
        {
          v32 = 0;
          v23 = [(ICEditingTextView *)self handleMapKitItemDropForItemProvider:v13 atTextPosition:v31 pasteSession:v30 outProgress:&v32 completionBlock:v12];
          v24 = v32;
          goto LABEL_34;
        }
      }

      else
      {
        switch(unsignedIntegerValue)
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

+ (id)temporaryTextStorageWithAttributedString:(id)string note:(id)note filterAttributedString:(BOOL)attributedString
{
  attributedStringCopy = attributedString;
  stringCopy = string;
  noteCopy = note;
  v8 = objc_alloc(MEMORY[0x277D36918]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [v8 initWithData:0 replicaID:uUID];

  [v10 setShouldInhibitAddingExtraNewlinesAtEndDuringFixup:1];
  v11 = objc_alloc_init(MEMORY[0x277D36968]);
  managedObjectContext = [noteCopy managedObjectContext];
  v13 = *MEMORY[0x277D74060];
  v14 = [stringCopy length];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__ICEditingTextView_DragAndDrop__temporaryTextStorageWithAttributedString_note_filterAttributedString___block_invoke;
  v26[3] = &unk_2781AC5D8;
  v15 = managedObjectContext;
  v27 = v15;
  [stringCopy enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v26}];
  objc_opt_class();
  textStorage = [noteCopy textStorage];
  styler = [textStorage styler];
  v18 = ICCheckedDynamicCast();
  zoomController = [v18 zoomController];
  [zoomController zoomFactor];
  v21 = v20;
  zoomController2 = [v11 zoomController];
  [zoomController2 setZoomFactor:v21];

  styler2 = [v10 styler];

  [v10 setStyler:v11];
  if (attributedStringCopy)
  {
    [v10 setConvertAttributes:1];
    [v10 setFilterPastedAttributes:1];
  }

  [v10 setWantsUndoCommands:0];
  [v10 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v10, "length"), stringCopy}];
  [noteCopy filterAttachmentsInTextStorage:v10 range:{0, objc_msgSend(v10, "length")}];
  [v10 fixupAfterEditing];
  [v10 setFilterPastedAttributes:0];
  [v10 setConvertAttributes:0];
  if (!styler2)
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

- (id)textPasteConfigurationSupporting:(id)supporting combineItemAttributedStrings:(id)strings forRange:(id)range
{
  v83[1] = *MEMORY[0x277D85DE8];
  supportingCopy = supporting;
  stringsCopy = strings;
  rangeCopy = range;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v78 = MEMORY[0x277D85DD0];
    v79 = 3221225472;
    v80 = __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke;
    v81 = &unk_2781ABCF8;
    selfCopy = self;
    performBlockOnMainThreadAndWait();
  }

  v57 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v9 = [stringsCopy count];
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v77 = 0;
  itemProviderPasteSession = [(ICEditingTextView *)self itemProviderPasteSession];
  isForDragAndDrop = [itemProviderPasteSession isForDragAndDrop];
  if (v9 == 2)
  {
    v12 = isForDragAndDrop;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = [stringsCopy objectAtIndexedSubscript:0];
    v75 = 0;
    v14 = [(ICEditingTextView *)self standardizedAttributedString:v13 attachmentIdentifiers:&v75];
    v55 = v75;

    v15 = [stringsCopy objectAtIndexedSubscript:1];
    v74 = 0;
    v16 = [(ICEditingTextView *)self standardizedAttributedString:v15 attachmentIdentifiers:&v74];
    v54 = v74;

    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    v19 = note;
    if (note)
    {
      note2 = note;
    }

    else
    {
      objc_opt_class();
      v21 = ICDynamicCast();
      note2 = [v21 note];
    }

    calculateDocumentController = [note2 calculateDocumentController];
    if (calculateDocumentController)
    {
      v23 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v14];
      ic_range = [v23 ic_range];
      [calculateDocumentController formatExpressionsInAttributedString:v23 range:ic_range textStorageOffset:v25 skipStaleExpressions:{0, 0}];
      v26 = [v23 copy];

      v14 = v26;
    }

    string = [v14 string];
    string2 = [v16 string];
    v29 = [string isEqualToString:string2];

    if (v29 && (([stringsCopy objectAtIndexedSubscript:1], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[ICEditingTextView attributedStringContainsICTTAttachment:](self, "attributedStringContainsICTTAttachment:", v30), v30, objc_msgSend(v55, "count") == 0 || v31) || objc_msgSend(v55, "isEqualToArray:", v54)))
    {
      v32 = [stringsCopy objectAtIndexedSubscript:1];
      v83[0] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];

      v9 = [v33 count];
      stringsCopy = v33;
    }

    else
    {
      v9 = 2;
    }
  }

  itemProviderPasteSession2 = [(ICEditingTextView *)self itemProviderPasteSession];
  [itemProviderPasteSession2 saveWorkerContext];

  v66 = MEMORY[0x277D85DD0];
  v67 = 3221225472;
  v68 = __105__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_combineItemAttributedStrings_forRange___block_invoke_2;
  v69 = &unk_2781AC600;
  selfCopy2 = self;
  v59 = rangeCopy;
  v71 = v59;
  v35 = v57;
  v72 = v35;
  v73 = v76;
  performBlockOnMainThreadAndWait();
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v37 = [stringsCopy objectAtIndexedSubscript:i];
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
    textStorage = [(ICEditingTextView *)self textStorage];
    string3 = [textStorage string];
    v45 = [string3 lineRangeForRange:{v40, v42}];
    v47 = v46;

    textStorage2 = [(ICEditingTextView *)self textStorage];
    v49 = [textStorage2 attributedSubstringFromRange:{v45, v47}];

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

- (id)updateIndentForChecklistDragIfNecessaryForString:(id)string lineUnderDrop:(id)drop
{
  stringCopy = string;
  dropCopy = drop;
  v8 = stringCopy;
  v9 = v8;
  if ([(ICEditingTextView *)self isDraggingChecklistItem])
  {
    trackedParagraphCurrentlyUnderDraggedChecklist = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];

    if (trackedParagraphCurrentlyUnderDraggedChecklist)
    {
      trackedParagraphCurrentlyUnderDraggedChecklist2 = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];
      paragraph = [trackedParagraphCurrentlyUnderDraggedChecklist2 paragraph];
      indent = [paragraph indent];
    }

    else
    {
      v9 = v8;
      if (![dropCopy length])
      {
        goto LABEL_9;
      }

      string = [dropCopy string];
      ic_trimmedString = [string ic_trimmedString];
      v21 = [ic_trimmedString length];

      v9 = v8;
      if (v21)
      {
        goto LABEL_9;
      }

      v23 = [dropCopy attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:0];
      trackedParagraphCurrentlyUnderDraggedChecklist2 = v23;
      if (v23)
      {
        indent = [v23 indent];
      }

      else
      {
        indent = -1;
      }

      string2 = [dropCopy string];
      v25 = [ICChecklistDragUtilities tabIndentationEqualivantForString:string2];

      if (v25)
      {
        tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
        [tTTextStorage setShouldRemoveLeadingWhitespaceForChecklistDrop:1];

        indent += v25;
      }
    }

    v9 = v8;
    if ((indent & 0x8000000000000000) == 0)
    {
      v9 = v8;
      if ([v8 length])
      {
        v9 = [v8 mutableCopy];
        v14 = MEMORY[0x277D35DA8];
        v15 = [v8 attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:0];
        v16 = [v15 mutableCopy];
        [v16 setIndent:indent];
        v17 = *v14;
        v18 = [v16 copy];
        [v9 addAttribute:v17 value:v18 range:{0, objc_msgSend(v9, "length")}];
      }
    }
  }

LABEL_9:

  return v9;
}

- (id)textPasteConfigurationSupporting:(id)supporting performPasteOfAttributedString:(id)string toRange:(id)range
{
  v122 = *MEMORY[0x277D85DE8];
  supportingCopy = supporting;
  stringCopy = string;
  rangeCopy = range;
  itemProviderPasteSession = [(ICEditingTextView *)self itemProviderPasteSession];
  isForDragAndDrop = [itemProviderPasteSession isForDragAndDrop];

  if (isForDragAndDrop)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    selfCopy2 = self;
    if ((IsTextKit2Enabled & 1) == 0)
    {
      icLayoutManager = [(ICEditingTextView *)self icLayoutManager];
      [icLayoutManager setShouldManuallyRenderSeparateSubviews:0];

      icLayoutManager2 = [(ICEditingTextView *)self icLayoutManager];
      [icLayoutManager2 setIsRenderingPreviewForDragAndDrop:0];

      selfCopy2 = self;
    }

    itemProviderPasteSession2 = [(ICEditingTextView *)selfCopy2 itemProviderPasteSession];
    numberOfTrailingNewlinesStripped = [itemProviderPasteSession2 numberOfTrailingNewlinesStripped];

    if (numberOfTrailingNewlinesStripped)
    {
      v18 = [MEMORY[0x277CCAB68] stringWithCapacity:numberOfTrailingNewlinesStripped];
      do
      {
        [v18 appendString:@"\n"];
        --numberOfTrailingNewlinesStripped;
      }

      while (numberOfTrailingNewlinesStripped);
      v19 = [stringCopy mutableCopy];
      [v19 ic_appendString:v18];
      v20 = [v19 copy];

      stringCopy = v20;
    }

    itemProviderPasteSession3 = [(ICEditingTextView *)self itemProviderPasteSession];
    [itemProviderPasteSession3 setNumberOfTrailingNewlinesStripped:0];
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
  v97 = stringCopy;
  v98 = rangeCopy;
  v120 = v98;
  if ([(ICEditingTextView *)self exceedsMaxLengthIfSelectionReplacedWithAttributedString:v97])
  {
    editorController = [(ICEditingTextView *)self editorController];
    [editorController warnUserNoteLengthExceeded];
    v96 = v97;
  }

  else
  {
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    [(ICEditingTextView *)self setSelectedTextRange:v98];
    v24 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:performPasteOfAttributedString:toRange:];
    }

    [(ICEditingTextView *)self beginDrop];
    itemProviderPasteSession4 = [(ICEditingTextView *)self itemProviderPasteSession];
    shouldFilterAttributedString = [itemProviderPasteSession4 shouldFilterAttributedString];

    location = [(ICEditingTextView *)self ic_characterRangeFromTextRange:v98];
    v28 = v27;
    tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
    v30 = [tTTextStorage2 length];

    if (shouldFilterAttributedString)
    {
      v31 = os_log_create("com.apple.notes", "DragAndDrop");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [ICEditingTextView(DragAndDrop) textPasteConfigurationSupporting:v31 performPasteOfAttributedString:? toRange:?];
      }

      tTTextStorage3 = [(ICEditingTextView *)self TTTextStorage];
      [tTTextStorage3 setFilterPastedAttributes:1];

      tTTextStorage4 = [(ICEditingTextView *)self TTTextStorage];
      [tTTextStorage4 setConvertAttributes:1];

      tTTextStorage5 = [(ICEditingTextView *)self TTTextStorage];
      [tTTextStorage5 setPasteboardTypes:0];
    }

    tTTextStorage6 = [(ICEditingTextView *)self TTTextStorage];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke;
    v113[3] = &unk_2781AC678;
    v36 = v97;
    v116 = location;
    v117 = v28;
    v114 = v36;
    selfCopy3 = self;
    [tTTextStorage6 saveSelectionDuringBlock:v113 affinity:1];

    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_2;
    v112[3] = &unk_2781AC6A0;
    v112[4] = self;
    [v36 ic_enumerateAttachmentsInContext:managedObjectContext usingBlock:v112];

    editorController2 = [(ICEditingTextView *)self editorController];
    note = [editorController2 note];
    calculateDocumentController = [note calculateDocumentController];
    [calculateDocumentController scheduleUpdateAffectingChangeCounts:1 isHighPriority:1];

    tTTextStorage7 = [(ICEditingTextView *)self TTTextStorage];
    v43 = [tTTextStorage7 length];

    if (shouldFilterAttributedString)
    {
      [tTTextStorage setPasteboardTypes:0];
      [tTTextStorage setConvertAttributes:0];
      [tTTextStorage setFilterPastedAttributes:0];
      tTTextStorage8 = [(ICEditingTextView *)self TTTextStorage];
      v45 = [tTTextStorage8 length];

      v46 = [tTTextStorage attributedSubstringFromRange:{location, v28 - v30 + v45}];

      objc_opt_class();
      styler = [tTTextStorage styler];
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
      itemProviderPasteSession5 = [(ICEditingTextView *)self itemProviderPasteSession];
      isForDragAndDrop2 = [itemProviderPasteSession5 isForDragAndDrop];

      if (isForDragAndDrop2)
      {
        objc_opt_class();
        attributedString = [tTTextStorage attributedString];
        v58 = ICDynamicCast();

        v59 = [v58 mutableCopy];
        v124.location = [tTTextStorage ic_range];
        v125.length = range2;
        v125.location = location;
        v60 = NSIntersectionRange(v124, v125);
        v61 = *MEMORY[0x277D740C0];
        range2 = v60.length;
        [v58 removeAttribute:*MEMORY[0x277D740C0] range:{v60.location, v60.length}];
        clearColor = [MEMORY[0x277D75348] clearColor];
        [v58 addAttribute:v61 value:clearColor range:{v60.location, v60.length}];
        location = v60.location;

        [v58 removeAttribute:*MEMORY[0x277D740E8] range:{v60.location, v60.length}];
        [v58 removeAttribute:*MEMORY[0x277D741F0] range:{v60.location, v60.length}];
        [v58 removeAttribute:*MEMORY[0x277D74178] range:{v60.location, v60.length}];
        editorController3 = [(ICEditingTextView *)self editorController];
        note2 = [editorController3 note];
        documentMergeController = [note2 documentMergeController];
        [documentMergeController beginBlockingMergeForReason:2 textView:self];

        v66 = dispatch_time(0, 700000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_258;
        block[3] = &unk_2781AC6C8;
        v108 = tTTextStorage;
        v109 = v59;
        selfCopy4 = self;
        v111 = v60;
        v67 = v59;
        dispatch_after(v66, MEMORY[0x277D85CD0], block);
      }

      icLayoutManager3 = [(ICEditingTextView *)self icLayoutManager];
      [icLayoutManager3 updateVisibleSupplementalViews];

      icLayoutManager4 = [(ICEditingTextView *)self icLayoutManager];
      v70 = [icLayoutManager4 todoButtonsForCharacterRange:{location, range2}];

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
            itemProviderPasteSession6 = [(ICEditingTextView *)self itemProviderPasteSession];
            if ([itemProviderPasteSession6 isForDragAndDrop])
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
        editorController4 = [(ICEditingTextView *)self editorController];
        visibleRange = [editorController4 visibleRange];
        v81 = v80;

        textStorage = [(ICEditingTextView *)self textStorage];
        v83 = *MEMORY[0x277D74060];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_3;
        v101[3] = &unk_2781AC4E8;
        v101[5] = visibleRange;
        v101[6] = v81;
        v101[4] = self;
        [textStorage enumerateAttribute:v83 inRange:location options:range2 usingBlock:{0, v101}];
      }
    }

    editorController = tTTextStorage;
  }

  itemProviderPasteSession7 = [(ICEditingTextView *)self itemProviderPasteSession];
  isForDragAndDrop3 = [itemProviderPasteSession7 isForDragAndDrop];

  if ((isForDragAndDrop3 & 1) == 0)
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __106__ICEditingTextView_DragAndDrop__textPasteConfigurationSupporting_performPasteOfAttributedString_toRange___block_invoke_6;
    v100[3] = &unk_2781AC1D0;
    v100[4] = self;
    v100[5] = &v118;
    dispatch_async(MEMORY[0x277D85CD0], v100);
  }

  itemProviderPasteSession8 = [(ICEditingTextView *)self itemProviderPasteSession];
  errorCodes = [itemProviderPasteSession8 errorCodes];

  if ([errorCodes containsObject:&unk_28277E2B0])
  {
    editorController5 = [(ICEditingTextView *)self editorController];
    [editorController5 warnUserAttachmentLimitExceeded];
  }

  else
  {
    if (![errorCodes containsObject:&unk_28277E2C8])
    {
      goto LABEL_51;
    }

    editorController5 = [(ICEditingTextView *)self editorController];
    itemProviderPasteSession9 = [(ICEditingTextView *)self itemProviderPasteSession];
    [editorController5 warnUserAttachmentSizeExceededWithAttachmentCount:{objc_msgSend(itemProviderPasteSession9, "numberOfAttachmentsAttemptedAdded")}];
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

- (void)didPasteOrDropText:(id)text toRange:(id)range
{
  textCopy = text;
  if ([textCopy length])
  {
    v5 = [textCopy attribute:*MEMORY[0x277D740E8] atIndex:objc_msgSend(textCopy effectiveRange:{"length") - 1, 0}];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  typingAttributes = [(ICEditingTextView *)self typingAttributes];
  v8 = *MEMORY[0x277D740C0];
  v9 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  [v9 CGColor];
  tintColor = [MEMORY[0x277D75348] tintColor];
  [tintColor CGColor];
  v11 = ICCGColorEquivalentToColor();

  if (!v6 && v11)
  {
    typingAttributes2 = [(ICEditingTextView *)self typingAttributes];
    v13 = [typingAttributes2 mutableCopy];

    [v13 setObject:0 forKeyedSubscript:v8];
    [v13 setObject:0 forKeyedSubscript:*MEMORY[0x277D35DA0]];
    [v13 setObject:0 forKeyedSubscript:*MEMORY[0x277D36020]];
    v14 = [v13 copy];
    [(ICEditingTextView *)self setTypingAttributes:v14];
  }

  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  [note updateModificationDateAndChangeCountAndSaveAfterDelay];
}

- (void)icaxBeginEditingAtAttachment:(id)attachment
{
  v4 = [(ICEditingTextView *)self _icaxRangeOfAttachment:attachment];

  [(ICEditingTextView *)self icaxBeginEditingInStorageRange:v4 + v5, 0];
}

- (void)icaxBeginEditingInStorageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v7 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:_icaxModifiedAttributedStorageString forRange:location, length];
  v9 = v8;

  [(ICEditingTextView *)self _accessibilitySetSelectedTextRange:v7, v9];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController startEditing];
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
  _icaxCachedModifiedAttributedString = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];
  v4 = [_icaxCachedModifiedAttributedString length];

  if (v4)
  {
    _icaxCachedModifiedAttributedString2 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];
    v6 = [_icaxCachedModifiedAttributedString2 mutableCopy];

    baseAttributedStringForAccessibility = [(ICEditingTextView *)self baseAttributedStringForAccessibility];
    v8 = *MEMORY[0x277D740E8];
    v9 = [baseAttributedStringForAccessibility length];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __62__ICEditingTextView_ICAccessibility_iOS__icaxUpdateLinkRanges__block_invoke;
    v15 = &unk_2781AC8D0;
    selfCopy = self;
    v17 = v6;
    v10 = v6;
    [baseAttributedStringForAccessibility enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, &v12}];
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
  selectedRange = [(ICEditingTextView *)self selectedRange];
  textStorage = [(ICEditingTextView *)self textStorage];
  v5 = [textStorage length];

  if (selectedRange <= v5)
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
    v7 = [textStorage2 length];

    if (selectedRange && selectedRange >= v7)
    {
      textStorage3 = [(ICEditingTextView *)self textStorage];
      selectedRange = [textStorage3 length] - 1;
    }

    textStorage4 = [(ICEditingTextView *)self textStorage];
    v13 = [textStorage4 attribute:*MEMORY[0x277D35DA8] atIndex:selectedRange effectiveRange:0];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Indentation level %lu" value:&stru_282757698 table:0];

    v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, objc_msgSend(v13, "indent")];
    ICAccessibilityPostAnnouncementNotification();
  }
}

- (BOOL)isAccessibilityElement
{
  editorController = [(ICEditingTextView *)self editorController];
  viewControllerManager = [editorController viewControllerManager];
  isAttachmentBrowserVisible = [viewControllerManager isAttachmentBrowserVisible];

  return isAttachmentBrowserVisible ^ 1;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"note" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v7 = xmmword_2154BBF20;
    v3 = objc_alloc(MEMORY[0x277CE6B98]);
    v4 = [(ICEditingTextView *)self _icaxAttributedStringForRange:&v7];
    text = [v3 initWithCFAttributedString:{v4, v7}];
  }

  else
  {
    text = [(ICEditingTextView *)self text];
  }

  return text;
}

- (id)accessibilityHint
{
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  if (note)
  {
    v4 = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [mainBundle localizedStringForKey:@"Double tap to begin editing a new note" value:&stru_282757698 table:0];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = ICEditingTextView;
  v3 = *MEMORY[0x277D74048] | [(ICEditingTextView *)&v9 accessibilityTraits];
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  isEditable = [note isEditable];

  if (isEditable)
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
  editorController = [(ICEditingTextView *)self editorController];
  isInkPickerShowing = [editorController isInkPickerShowing];

  v5 = -1.0;
  v6 = -1.0;
  if ((isInkPickerShowing & 1) == 0)
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
      ic_isRTL = [MEMORY[0x277D74248] ic_isRTL];
      v17 = v9;
      v18 = v11;
      v19 = v13;
      v20 = v15;
      if (ic_isRTL)
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
      editorController2 = [(ICEditingTextView *)self editorController];
      [editorController2 ic_safeAreaDistanceFromBottom];

      UIAccessibilityFrameForBounds();
    }
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (BOOL)accessibilityActivate
{
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  editorController2 = [(ICEditingTextView *)self editorController];
  note2 = [editorController2 note];
  if (note2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [(ICEditingTextView *)self isEditable]^ 1;
  }

  v9 = isDeletedOrInTrash | v8;
  if ((v9 & 1) == 0)
  {
    editorController3 = [(ICEditingTextView *)self editorController];
    [editorController3 startEditing];
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
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  v4 = note == 0;

  return v4;
}

- (id)childElements
{
  array = [MEMORY[0x277CBEB18] array];
  _accessibleSubviews = [(ICEditingTextView *)self _accessibleSubviews];
  [array addObjectsFromArray:_accessibleSubviews];

  textStorage = [(ICEditingTextView *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  v7 = [textStorage length];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__ICEditingTextView_ICAccessibility_iOS__childElements__block_invoke;
  v14 = &unk_2781AC8F8;
  selfCopy = self;
  v16 = array;
  v8 = array;
  [textStorage enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, &v11}];
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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v65 = *MEMORY[0x277D85DE8];
  eventCopy = event;
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

  childElements = [(ICEditingTextView *)self childElements];
  v18 = childElements;
  if (!v13)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = childElements;
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
      selfCopy = self;
      v43 = eventCopy;
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
          defaultVoiceOverOptions = [MEMORY[0x277D73FF8] defaultVoiceOverOptions];
          v33 = [v31 _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];

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

      self = selfCopy;
      eventCopy = v43;
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
    v13 = [(ICEditingTextView *)&v44 _accessibilityHitTest:eventCopy withEvent:x, y];
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 3)
  {
    [(ICEditingTextView *)self contentOffset];
    v5 = v4;
    editorController = [(ICEditingTextView *)self editorController];
    [editorController ic_safeAreaDistanceFromTop];
    v8 = -v7;

    if (v5 <= v8)
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      [editorController2 showOverscrollContentAndScrollToTop];
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

- (id)_accessibilityValueForRange:(_NSRange *)range
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxAttributedStringForRange:range];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICEditingTextView;
    v5 = [(ICEditingTextView *)&v7 _accessibilityAttributedValueForRange:range];
  }

  return v5;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxAttributedStringForRange:range];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICEditingTextView;
    v5 = [(ICEditingTextView *)&v7 _accessibilityAttributedValueForRange:range];
  }

  return v5;
}

- (int64_t)_accessibilityLineEndPosition
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    _icaxModifiedCursorPosition = [(ICEditingTextView *)self _icaxModifiedCursorPosition];

    return [(ICEditingTextView *)self _icaxLinePositionForPosition:_icaxModifiedCursorPosition start:0];
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
    _icaxModifiedCursorPosition = [(ICEditingTextView *)self _icaxModifiedCursorPosition];

    return [(ICEditingTextView *)self _icaxLinePositionForPosition:_icaxModifiedCursorPosition start:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    return [(ICEditingTextView *)&v5 _accessibilityLineStartPosition];
  }
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  v12.receiver = self;
  v12.super_class = ICEditingTextView;
  v4 = [(ICEditingTextView *)&v12 _accessibilityLineNumberAndColumnForPoint:point.x, point.y];
  v5 = [v4 objectForKeyedSubscript:@"lineNumber"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v8 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:_icaxModifiedAttributedStorageString forRange:unsignedIntegerValue, 0];

  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v9 setObject:v10 forKeyedSubscript:@"lineNumber"];

  return v9;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  v4 = [column objectForKeyedSubscript:@"lineNumber"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [(ICEditingTextView *)self _accessibilityLineRangeForPosition:unsignedIntegerValue];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICEditingTextView *)self _icaxLinePositionForPosition:position start:1];
    v6 = [(ICEditingTextView *)self _icaxLinePositionForPosition:position start:0];
    _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v8 = [_icaxModifiedAttributedStorageString length];
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
    v5 = [(ICEditingTextView *)&v14 _accessibilityLineRangeForPosition:position];
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

    _icaxModifiedSelectionRange = [(ICEditingTextView *)self _icaxModifiedSelectionRange];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ICEditingTextView;
    _icaxModifiedSelectionRange = [(ICEditingTextView *)&v5 _accessibilitySelectedTextRange];
  }

  result.length = v4;
  result.location = _icaxModifiedSelectionRange;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(ICEditingTextView *)self set_icaxShouldPreventUpdatingFakeCursorRange:1];
    [(ICEditingTextView *)self set_icaxModifiedCursorPosition:location + length];
    [(ICEditingTextView *)self set_icaxModifiedSelectionRange:location, length];
    selectedRange = [(ICEditingTextView *)self selectedRange];
    v8 = v7;
    _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v10 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, _icaxModifiedAttributedStorageString];
    [(ICEditingTextView *)self setSelectedRange:v10, v11];

    if ([(ICEditingTextView *)self selectedRange]== selectedRange && v12 == v8)
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

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
    _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v16 = _icaxModifiedAttributedStorageString;
    if (location != 0x7FFFFFFFFFFFFFFFLL && !length)
    {
      length = location != [_icaxModifiedAttributedStorageString length];
    }

    if (length + location > [v16 length])
    {
      length = [v16 length] - location;
    }

    _icaxModifiedAttributedStorageString2 = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    string = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, _icaxModifiedAttributedStorageString2];
    v20 = v19;

    v41.receiver = self;
    v41.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v41 _accessibilityBoundsForRange:string, v20];
    v21 = 0;
    v22 = v43;
    *(v43 + 4) = v23;
    *(v22 + 5) = v24;
    *(v22 + 6) = v25;
    *(v22 + 7) = v26;
    if (location != 0x7FFFFFFF && location != 0x7FFFFFFFFFFFFFFFLL)
    {
      string = [v16 string];
      v21 = [string ic_rangeIsValid:{location, length}];
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
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  if ((isDeletedOrInTrash & 1) != 0 || [(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
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
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  v65.receiver = self;
  v65.super_class = ICEditingTextView;
  _accessibilityTextOperations = [(ICEditingTextView *)&v65 _accessibilityTextOperations];
  [array addObjectsFromArray:_accessibilityTextOperations];

  selectedRange = [(ICEditingTextView *)self selectedRange];
  textStorage = [(ICEditingTextView *)self textStorage];
  if (selectedRange >= [textStorage length])
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
    v9 = [textStorage2 length];

    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    selectedRange2 = v10 - 1;
  }

  else
  {
    selectedRange2 = [(ICEditingTextView *)self selectedRange];
  }

  textStorage3 = [(ICEditingTextView *)self textStorage];
  v12 = [textStorage3 length];

  if (selectedRange2 < v12)
  {
    textStorage4 = [(ICEditingTextView *)self textStorage];
    v14 = [textStorage4 attribute:*MEMORY[0x277D35DA8] atIndex:selectedRange2 effectiveRange:0];

    editorController = [(ICEditingTextView *)self editorController];
    icaxTextController = [editorController icaxTextController];

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
      [array addObject:v41];
      [array addObject:v42];
      [array addObject:v43];
      [array addObject:v44];
      if (![(ICEditingTextView *)self isAccessibilityTableTextView])
      {
        editorController2 = [(ICEditingTextView *)self editorController];
        v46 = [editorController2 canPerformAction:sel_increaseIndentation_ withSender:0];

        if (v46)
        {
          _icaxIncreaseIndentationString = [(ICEditingTextView *)self _icaxIncreaseIndentationString];
          [array addObject:_icaxIncreaseIndentationString];
        }

        editorController3 = [(ICEditingTextView *)self editorController];
        v49 = [editorController3 canPerformAction:sel_decreaseIndentation_ withSender:0];

        if (v49)
        {
          _icaxDecreaseIndentationString = [(ICEditingTextView *)self _icaxDecreaseIndentationString];
          [array addObject:_icaxDecreaseIndentationString];
        }
      }

      if ([(ICEditingTextView *)self canPerformAction:sel__insertDrawing_ withSender:0, v14])
      {
        _icaxInsertDrawingString = [(ICEditingTextView *)self _icaxInsertDrawingString];
        [array addObject:_icaxInsertDrawingString];
      }

      editorController4 = [(ICEditingTextView *)self editorController];
      note = [editorController4 note];

      calculateDocumentController = [note calculateDocumentController];
      v55 = [calculateDocumentController numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];

      if (v55)
      {
        if (ICInternalSettingsIsScrubbingEnabled())
        {
          if ([note isEditable])
          {
            if ([note isCalculateMathEnabled])
            {
              if (([note isDeletedOrInTrash] & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  _icaxCalculateAdjustString = [(ICEditingTextView *)self _icaxCalculateAdjustString];
                  [array addObject:_icaxCalculateAdjustString];
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
      selectedRange3 = [(ICEditingTextView *)self selectedRange];
      v19 = v18;
      textStorage5 = [(ICEditingTextView *)self textStorage];
      _icaxAttachmentViewForCurrentSelectedRange = [icaxTextController todoForRange:selectedRange3 inTextStorage:{v19, textStorage5}];

      if (!_icaxAttachmentViewForCurrentSelectedRange)
      {
LABEL_28:

        goto LABEL_29;
      }

      if ([_icaxAttachmentViewForCurrentSelectedRange done])
      {
        [(ICEditingTextView *)self _icaxMarkAsIncompleteString];
      }

      else
      {
        [(ICEditingTextView *)self _icaxMarkAsCompletedString];
      }
      v26 = ;
      [array addObject:v26];

      _icaxRemoveChecklistString = [(ICEditingTextView *)self _icaxRemoveChecklistString];
      [array addObject:?];
      v27 = MEMORY[0x277CCAE60];
      selectedRange4 = [(ICEditingTextView *)self selectedRange];
      v30 = [v27 valueWithRange:{selectedRange4, v29}];
      v66[0] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];

      v32 = [icaxTextController checklistItemExistsMarkedCompleted:1 inTextView:self forRanges:v31];
      v33 = [icaxTextController checklistItemExistsMarkedCompleted:0 inTextView:self forRanges:v31];
      selectedRange5 = [(ICEditingTextView *)self selectedRange];
      v36 = [icaxTextController canMoveCheckedChecklistsToBottomInTextView:self forRange:{selectedRange5, v35}];
      if (v33)
      {
        _icaxChecklistMarkAllItemsCompleteString = [(ICEditingTextView *)self _icaxChecklistMarkAllItemsCompleteString];
        [array addObject:_icaxChecklistMarkAllItemsCompleteString];
      }

      if (v32)
      {
        _icaxChecklistUnmarkAllItemsCompleteString = [(ICEditingTextView *)self _icaxChecklistUnmarkAllItemsCompleteString];
        [array addObject:_icaxChecklistUnmarkAllItemsCompleteString];
      }

      if ((v33 & v36) == 1)
      {
        _icaxChecklistMoveCheckedToBottomString = [(ICEditingTextView *)self _icaxChecklistMoveCheckedToBottomString];
        [array addObject:_icaxChecklistMoveCheckedToBottomString];
      }

      if (v32)
      {
        _icaxChecklistDeleteCheckedItemsString = [(ICEditingTextView *)self _icaxChecklistDeleteCheckedItemsString];
        [array addObject:_icaxChecklistDeleteCheckedItemsString];
      }

      _icaxMakeChecklistString = _icaxRemoveChecklistString;
    }

    else
    {
      _icaxAttachmentViewForCurrentSelectedRange = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
      if (_icaxAttachmentViewForCurrentSelectedRange)
      {
        goto LABEL_28;
      }

      editorController5 = [(ICEditingTextView *)self editorController];
      navigationItemConfiguration = [editorController5 navigationItemConfiguration];
      canAddChecklist = [navigationItemConfiguration canAddChecklist];

      if (!canAddChecklist)
      {
        goto LABEL_28;
      }

      _icaxMakeChecklistString = [(ICEditingTextView *)self _icaxMakeChecklistString];
      [array addObject:_icaxMakeChecklistString];
    }

    goto LABEL_28;
  }

LABEL_56:
  if (![(ICEditingTextView *)self isAccessibilityTableTextView])
  {
    _icaxAttachmentViewForCurrentSelectedRange2 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
    v58 = _icaxAttachmentViewForCurrentSelectedRange2;
    if (_icaxAttachmentViewForCurrentSelectedRange2)
    {
      _accessibilityTextOperations2 = [_icaxAttachmentViewForCurrentSelectedRange2 _accessibilityTextOperations];
      if ([_accessibilityTextOperations2 count])
      {
        [array addObjectsFromArray:_accessibilityTextOperations2];
      }
    }
  }

LABEL_62:

  return array;
}

- (id)_icaxLinkEditActions
{
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  textContainer = [(ICEditingTextView *)self textContainer];
  v5 = ICDynamicCast();

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0 && ![(ICEditingTextView *)self selectionContainsNonLinkAttachment])
  {
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    if ([note isSharedReadOnly])
    {
LABEL_4:

      goto LABEL_6;
    }

    insideSiriSnippet = [v5 insideSiriSnippet];

    if ((insideSiriSnippet & 1) == 0)
    {
      selectionContainsLink = [(ICEditingTextView *)self selectionContainsLink];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = mainBundle;
      if (selectionContainsLink)
      {
        v14 = @"Edit Link";
      }

      else
      {
        v14 = @"Add Link";
      }

      editorController = [mainBundle localizedStringForKey:v14 value:&stru_282757698 table:0];

      v15 = objc_alloc(MEMORY[0x277D75088]);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke;
      v21[3] = &unk_2781AC968;
      v21[4] = self;
      note = [v15 initWithName:editorController actionHandler:v21];
      [array ic_addNonNilObject:note];
      if ([(ICEditingTextView *)self selectionContainsLink])
      {
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v17 = [mainBundle2 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];

        v18 = objc_alloc(MEMORY[0x277D75088]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __62__ICEditingTextView_ICAccessibility_iOS___icaxLinkEditActions__block_invoke_2;
        v20[3] = &unk_2781AC968;
        v20[4] = self;
        v19 = [v18 initWithName:v17 actionHandler:v20];
        [array ic_addNonNilObject:v19];
      }

      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = [array copy];

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

- (BOOL)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  if ([(ICEditingTextView *)self selectedRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  _icaxMarkAsIncompleteString = [(ICEditingTextView *)self _icaxMarkAsIncompleteString];
  v11 = [actionCopy isEqualToString:_icaxMarkAsIncompleteString];

  if (v11)
  {
    [(ICEditingTextView *)self _icaxMarkTodoIncompleteForCurrentSelection];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = mainBundle;
    v14 = @"Incomplete: %@";
LABEL_13:
    v23 = [mainBundle localizedStringForKey:v14 value:&stru_282757698 table:0];

    v24 = MEMORY[0x277CCACA8];
    _icaxCurrentParagraph = [(ICEditingTextView *)self _icaxCurrentParagraph];
    v26 = [v24 localizedStringWithFormat:v23, _icaxCurrentParagraph];

    ICAccessibilityPostAnnouncementNotification();
LABEL_14:
    v27 = 1;
    goto LABEL_15;
  }

  _icaxMarkAsCompletedString = [(ICEditingTextView *)self _icaxMarkAsCompletedString];
  v16 = [actionCopy isEqualToString:_icaxMarkAsCompletedString];

  if (v16)
  {
    [(ICEditingTextView *)self _icaxMarkTodoCompleteForCurrentSelection];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = mainBundle;
    v14 = @"Completed: %@";
    goto LABEL_13;
  }

  _icaxRemoveChecklistString = [(ICEditingTextView *)self _icaxRemoveChecklistString];
  v18 = [actionCopy isEqualToString:_icaxRemoveChecklistString];

  if (v18)
  {
    editorController = [(ICEditingTextView *)self editorController];
    [editorController icaxToggleTodoStyle];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = mainBundle;
    v14 = @"Body: %@";
    goto LABEL_13;
  }

  _icaxMakeChecklistString = [(ICEditingTextView *)self _icaxMakeChecklistString];
  v21 = [actionCopy isEqualToString:_icaxMakeChecklistString];

  if (v21)
  {
    editorController2 = [(ICEditingTextView *)self editorController];
    [editorController2 icaxToggleTodoStyle];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = mainBundle;
    v14 = @"Checklist item: %@";
    goto LABEL_13;
  }

  _icaxChecklistMarkAllItemsCompleteString = [(ICEditingTextView *)self _icaxChecklistMarkAllItemsCompleteString];
  v34 = [actionCopy isEqualToString:_icaxChecklistMarkAllItemsCompleteString];

  if (v34)
  {
    [(ICEditingTextView *)self _icaxChecklistMarkAllComplete];
    goto LABEL_14;
  }

  _icaxChecklistUnmarkAllItemsCompleteString = [(ICEditingTextView *)self _icaxChecklistUnmarkAllItemsCompleteString];
  v36 = [actionCopy isEqualToString:_icaxChecklistUnmarkAllItemsCompleteString];

  if (v36)
  {
    [(ICEditingTextView *)self _icaxChecklistUnMarkAllComplete];
    goto LABEL_14;
  }

  _icaxChecklistDeleteCheckedItemsString = [(ICEditingTextView *)self _icaxChecklistDeleteCheckedItemsString];
  v38 = [actionCopy isEqualToString:_icaxChecklistDeleteCheckedItemsString];

  if (v38)
  {
    [(ICEditingTextView *)self _icaxChecklistDeleteChecked];
    goto LABEL_14;
  }

  _icaxChecklistMoveCheckedToBottomString = [(ICEditingTextView *)self _icaxChecklistMoveCheckedToBottomString];
  v40 = [actionCopy isEqualToString:_icaxChecklistMoveCheckedToBottomString];

  if (v40)
  {
    [(ICEditingTextView *)self _icaxChecklistSortCheckedToBottom];
    goto LABEL_14;
  }

  _icaxMakeBoldString = [(ICEditingTextView *)self _icaxMakeBoldString];
  if ([actionCopy isEqualToString:_icaxMakeBoldString])
  {

LABEL_32:
    [(ICEditingTextView *)self ic_toggleBoldface];
    goto LABEL_14;
  }

  _icaxMakeNotBoldString = [(ICEditingTextView *)self _icaxMakeNotBoldString];
  v43 = [actionCopy isEqualToString:_icaxMakeNotBoldString];

  if (v43)
  {
    goto LABEL_32;
  }

  _icaxMakeItalicString = [(ICEditingTextView *)self _icaxMakeItalicString];
  if ([actionCopy isEqualToString:_icaxMakeItalicString])
  {

LABEL_36:
    [(ICEditingTextView *)self ic_toggleItalics];
    goto LABEL_14;
  }

  _icaxMakeNotItalicString = [(ICEditingTextView *)self _icaxMakeNotItalicString];
  v46 = [actionCopy isEqualToString:_icaxMakeNotItalicString];

  if (v46)
  {
    goto LABEL_36;
  }

  _icaxMakeUnderlinedString = [(ICEditingTextView *)self _icaxMakeUnderlinedString];
  if ([actionCopy isEqualToString:_icaxMakeUnderlinedString])
  {

LABEL_40:
    [(ICEditingTextView *)self ic_toggleUnderline];
    goto LABEL_14;
  }

  _icaxMakeNotUnderlinedString = [(ICEditingTextView *)self _icaxMakeNotUnderlinedString];
  v49 = [actionCopy isEqualToString:_icaxMakeNotUnderlinedString];

  if (v49)
  {
    goto LABEL_40;
  }

  icaxMakeStrikethroughString = [(ICEditingTextView *)self icaxMakeStrikethroughString];
  if ([actionCopy isEqualToString:icaxMakeStrikethroughString])
  {

LABEL_44:
    [(ICEditingTextView *)self ic_toggleStrikethrough];
    goto LABEL_14;
  }

  icaxMakeNotStrikethroughString = [(ICEditingTextView *)self icaxMakeNotStrikethroughString];
  v52 = [actionCopy isEqualToString:icaxMakeNotStrikethroughString];

  if (v52)
  {
    goto LABEL_44;
  }

  _icaxDecreaseIndentationString = [(ICEditingTextView *)self _icaxDecreaseIndentationString];
  v54 = [actionCopy isEqualToString:_icaxDecreaseIndentationString];

  if (v54)
  {
    calculateDocumentController = [(ICEditingTextView *)self targetForAction:sel_decreaseIndentation_ withSender:0];
    [calculateDocumentController decreaseIndentation:0];
LABEL_49:

    goto LABEL_14;
  }

  _icaxIncreaseIndentationString = [(ICEditingTextView *)self _icaxIncreaseIndentationString];
  v57 = [actionCopy isEqualToString:_icaxIncreaseIndentationString];

  if (v57)
  {
    calculateDocumentController = [(ICEditingTextView *)self targetForAction:sel_increaseIndentation_ withSender:0];
    [calculateDocumentController increaseIndentation:0];
    goto LABEL_49;
  }

  _icaxInsertDrawingString = [(ICEditingTextView *)self _icaxInsertDrawingString];
  v59 = [actionCopy isEqualToString:_icaxInsertDrawingString];

  if (v59)
  {
    [(ICEditingTextView *)self _insertDrawing:0];
    goto LABEL_14;
  }

  _icaxCalculateAdjustString = [(ICEditingTextView *)self _icaxCalculateAdjustString];
  v61 = [actionCopy isEqualToString:_icaxCalculateAdjustString];

  if (v61)
  {
    editorController3 = [(ICEditingTextView *)self editorController];
    note = [editorController3 note];
    calculateDocumentController = [note calculateDocumentController];

    v64 = [calculateDocumentController numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];
    if (v64)
    {
      editorController4 = [(ICEditingTextView *)self editorController];
      calculateScrubberController = [editorController4 calculateScrubberController];
      [calculateScrubberController showScrubberForNumberLiteral:v64 isCompact:0];
    }

    goto LABEL_49;
  }

  v27 = 0;
LABEL_15:
  _icaxAttachmentViewForCurrentSelectedRange = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
  _accessibilityTextOperations = [_icaxAttachmentViewForCurrentSelectedRange _accessibilityTextOperations];
  v30 = [_accessibilityTextOperations containsObject:actionCopy];

  if (v30)
  {
    v31 = [_icaxAttachmentViewForCurrentSelectedRange _accessibilityTextOperationAction:actionCopy];

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
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle2 localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
  v7 = [actionCopy isEqualToString:v6];

  if (v7)
  {
    _icaxAttachmentViewForCurrentSelectedRange2 = [(ICEditingTextView *)self _icaxAttachmentViewForCurrentSelectedRange];
    v9 = [_icaxAttachmentViewForCurrentSelectedRange2 _accessibilityTextOperationAction:actionCopy];
  }

  else
  {
    v67.receiver = self;
    v67.super_class = ICEditingTextView;
    v9 = [(ICEditingTextView *)&v67 _accessibilityTextOperationAction:actionCopy];
  }

LABEL_20:

  return v9;
}

- (id)automationElements
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICEditingTextView;
  automationElements = [(ICEditingTextView *)&v12 automationElements];
  v5 = [v3 arrayWithArray:automationElements];

  v6 = [(UIView *)self icaxRecursiveSubviewsPassingTest:&__block_literal_global_509];
  [v5 addObjectsFromArray:v6];
  _icaxLinkElements = [(ICEditingTextView *)self _icaxLinkElements];
  if ([_icaxLinkElements count])
  {
    [v5 addObjectsFromArray:_icaxLinkElements];
  }

  ic_pkTiledView = [(ICEditingTextView *)self ic_pkTiledView];
  [v5 ic_addNonNilObject:ic_pkTiledView];

  _icaxAdditionalElementsForAutomation = [(ICEditingTextView *)self _icaxAdditionalElementsForAutomation];
  [v5 ic_addObjectsFromNonNilArray:_icaxAdditionalElementsForAutomation];

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
  array = [MEMORY[0x277CBEB18] array];
  [array ic_addNonNilObject:NSClassFromString(&cfstr_Iccollaborator_1.isa)];
  [array ic_addNonNilObject:NSClassFromString(&cfstr_Iccollaborator.isa)];
  [array addObject:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxAdditionalElementsForAutomation__block_invoke;
  v7[3] = &unk_2781AC990;
  v8 = array;
  v4 = array;
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
  array = [MEMORY[0x277CBEB18] array];
  textStorage = [(ICEditingTextView *)self textStorage];
  string = [textStorage string];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v7 = [string paragraphRangeForRange:{selectedRange, v6}];
  v9 = v8;

  textStorage2 = [(ICEditingTextView *)self textStorage];
  v11 = *MEMORY[0x277D74060];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke;
  v35[3] = &unk_2781AC9B8;
  v35[4] = self;
  v35[5] = &v36;
  [textStorage2 enumerateAttribute:v11 inRange:v7 options:v9 usingBlock:{0, v35}];

  v12 = v37[5];
  _icaxLinkEditActions = [(ICEditingTextView *)self _icaxLinkEditActions];
  [v12 addObjectsFromArray:_icaxLinkEditActions];

  if (ICInternalSettingsIsPaperKitMathEnabled())
  {
    editorController = [(ICEditingTextView *)self editorController];
    note = [editorController note];
    if ([note isEditable])
    {
      selectedRange2 = [(ICEditingTextView *)self selectedRange];

      if (selectedRange2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      editorController2 = [(ICEditingTextView *)self editorController];
      calculateGraphingController = [editorController2 calculateGraphingController];
      selectedRange3 = [(ICEditingTextView *)self selectedRange];
      editorController = [calculateGraphingController insertionDecisionForExpressionsInRange:{selectedRange3, v20}];

      if ([editorController allowsInsertingNewGraph])
      {
        v21 = v37[5];
        v22 = objc_alloc(MEMORY[0x277D75088]);
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v24 = [mainBundle localizedStringForKey:@"Insert Graph" value:&stru_282757698 table:0];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_2;
        v34[3] = &unk_2781AC9E0;
        v34[4] = self;
        v34[5] = editorController;
        v25 = [v22 initWithName:v24 actionHandler:v34];
        [v21 addObject:v25];
      }

      if ([editorController allowsAddingToGraph])
      {
        v26 = v37[5];
        v27 = objc_alloc(MEMORY[0x277D75088]);
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v29 = [mainBundle2 localizedStringForKey:@"Add to Existing Graph" value:&stru_282757698 table:0];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __68__ICEditingTextView_ICAccessibility_iOS__accessibilityCustomActions__block_invoke_3;
        v33[3] = &unk_2781AC9E0;
        v33[4] = editorController;
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

- (id)_icaxAttributedStringForRange:(_NSRange *)range
{
  rangeCopy = range;
  if (range)
  {
    _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    v5 = [_icaxModifiedAttributedStorageString mutableCopy];

    v11.length = [v5 length];
    v11.location = 0;
    v6 = NSIntersectionRange(*rangeCopy, v11);
    v7 = [v5 ic_attributedSubstringFromRange:{v6.location, v6.length}];
    v8 = [v7 mutableCopy];

    [v8 removeAttribute:@"ICAXAdditionalTextAttribute" range:{0, objc_msgSend(v8, "length")}];
    rangeCopy = [v8 copy];
  }

  return rangeCopy;
}

- (id)_icaxModifiedAttributedStorageString
{
  _icaxCachedModifiedAttributedString = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];

  if (!_icaxCachedModifiedAttributedString)
  {
    baseAttributedStringForAccessibility = [(ICEditingTextView *)self baseAttributedStringForAccessibility];
    v5 = baseAttributedStringForAccessibility;
    if (baseAttributedStringForAccessibility)
    {
      v6 = [baseAttributedStringForAccessibility mutableCopy];
      editorController = [(ICEditingTextView *)self editorController];
      note = [editorController note];
      calculateDocumentController = [note calculateDocumentController];
      ic_range = [v6 ic_range];
      [calculateDocumentController formatExpressionsInAttributedString:v6 range:ic_range textStorageOffset:v11 skipStaleExpressions:{0, 1}];

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
      selfCopy = self;
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
      ic_range2 = [v18 ic_range];
      v21 = v20;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_3;
      v32[3] = &unk_2781ACA30;
      v22 = v18;
      v33 = v22;
      [v22 enumerateAttributesInRange:ic_range2 options:v21 usingBlock:{0, v32}];
      ic_range3 = [v22 ic_range];
      v25 = v24;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __78__ICEditingTextView_ICAccessibility_iOS___icaxModifiedAttributedStorageString__block_invoke_4;
      v30[3] = &unk_2781ACA58;
      v30[4] = self;
      v26 = v22;
      v31 = v26;
      [v26 enumerateAttribute:v17 inRange:ic_range3 options:v25 usingBlock:{0, v30}];
      v27 = [v26 copy];
      [(ICEditingTextView *)self set_icaxCachedModifiedAttributedString:v27];

      [(ICEditingTextView *)self icaxUpdateLinkRanges];
      _Block_object_dispose(v41, 8);
    }
  }

  _icaxCachedModifiedAttributedString2 = [(ICEditingTextView *)self _icaxCachedModifiedAttributedString];

  return _icaxCachedModifiedAttributedString2;
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

- (void)_icaxAddParticipantEditHighlightsToString:(id)string forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v71[3] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];

  v61 = note;
  collaborationColorManager = [note collaborationColorManager];
  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v10 = ICDynamicCast();

  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v12 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:location fromModifiedString:length, _icaxModifiedAttributedStorageString];
  v14 = v13;

  v58 = v10;
  mutableString = [v10 mutableString];
  v16 = [mutableString copy];

  v54 = v14;
  v17 = v12 + v14;
  v18 = objc_alloc(MEMORY[0x277CCAB48]);
  selfCopy = self;
  textStorage2 = [(ICEditingTextView *)self textStorage];
  string = [textStorage2 string];
  v57 = [v18 initWithString:string];

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
      newlineCharacterSet = [*(v21 + 2304) newlineCharacterSet];
      LOBYTE(v24) = [newlineCharacterSet characterIsMember:v24];

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
    replicaID = [v26 replicaID];
    v28 = [v61 userIDForReplicaID:replicaID];

    [collaborationColorManager highlightColorForUserID:v28 note:v61];
    v67 = v66 = v28;
    v29 = [collaborationColorManager participantAXDisplayNameForUserID:v28 forNote:v61];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [mainBundle localizedStringForKey:@"added by %@" value:&stru_282757698 table:0];

    v64 = v31;
    v65 = v29;
    v63 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v31, v29];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v33 = [mainBundle2 localizedStringForKey:@"at %@" value:&stru_282757698 table:0];

    v34 = MEMORY[0x277CCACA8];
    timestamp = [v26 timestamp];
    ic_briefFormattedDateForAccessibility = [timestamp ic_briefFormattedDateForAccessibility];
    v62 = v33;
    v37 = v33;
    v38 = v26;
    v39 = [v34 localizedStringWithFormat:v37, ic_briefFormattedDateForAccessibility];

    icaxApproximateColorDescription = [v67 icaxApproximateColorDescription];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v42 = [mainBundle3 localizedStringForKey:@"%@ highlight" value:&stru_282757698 table:0];

    v43 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v42, icaxApproximateColorDescription];
    timestamp2 = [v38 timestamp];
    if (timestamp2 && ([v38 replicaID], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "trustsTimestampsFromReplicaID:")))
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
      if (!timestamp2)
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
  v68[4] = selfCopy;
  v69 = stringCopy;
  v50 = stringCopy;
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

- (_NSRange)_icaxRangeInModifiedAttributedString:(id)string forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  textStorage = [(ICEditingTextView *)self textStorage];
  v9 = [textStorage length];

  v10 = [stringCopy length];
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
      v14 = [stringCopy attribute:@"ICAXAdditionalTextAttribute" atIndex:v11 effectiveRange:0];
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
      if (++v11 >= [stringCopy length])
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

- (_NSRange)_icaxRangeInTextStorageForRange:(_NSRange)range fromModifiedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = 0;
  if ([stringCopy length])
  {
    v9 = location + length;
    if (location + length)
    {
      v8 = 0;
      v10 = 0;
      do
      {
        v11 = [stringCopy attribute:@"ICAXAdditionalTextAttribute" atIndex:v10 effectiveRange:0];

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

      while (v10 < [stringCopy length] && v10 < v9);
    }
  }

  textStorage = [(ICEditingTextView *)self textStorage];
  v15 = [textStorage length];

  if (v8 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v8;
  }

  textStorage2 = [(ICEditingTextView *)self textStorage];
  v18 = [textStorage2 length] - v16;

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

- (unint64_t)_icaxModifiedPositionForPosition:(unint64_t)position
{
  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v6 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:_icaxModifiedAttributedStorageString forRange:position, 0];

  return v6;
}

- (unint64_t)_icaxPositionForModifiedPosition:(unint64_t)position
{
  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v6 = [(ICEditingTextView *)self _icaxRangeInTextStorageForRange:position fromModifiedString:0, _icaxModifiedAttributedStorageString];

  return v6;
}

- (unint64_t)_icaxLinePositionForPosition:(unint64_t)position start:(BOOL)start
{
  startCopy = start;
  _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
  v8 = [_icaxModifiedAttributedStorageString length];
  if (v8 - 1 >= position)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = v8 - 1;
  }

  v10 = [(ICEditingTextView *)self _icaxPositionForModifiedPosition:positionCopy];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3010000000;
  v34 = &unk_21552D17E;
  v35 = xmmword_2154BBE70;
  textStorage = [(ICEditingTextView *)self textStorage];
  v12 = [textStorage length];

  v13 = v12 - v10;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
    v15 = [textLayoutManager ic_textRangeForRange:{v10, v13}];

    textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
    location = [v15 location];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke;
    v30[3] = &unk_2781ACAA8;
    v30[4] = self;
    v30[5] = &v31;
    v30[6] = v10;
    v18 = [textLayoutManager2 enumerateTextLayoutFragmentsFromLocation:location options:0 usingBlock:v30];
  }

  else
  {
    layoutManager = [(ICEditingTextView *)self layoutManager];
    v20 = [layoutManager glyphRangeForCharacterRange:v10 actualCharacterRange:{v13, 0}];
    v22 = v21;

    layoutManager2 = [(ICEditingTextView *)self layoutManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __77__ICEditingTextView_ICAccessibility_iOS___icaxLinePositionForPosition_start___block_invoke_3;
    v29[3] = &unk_2781ACAD0;
    v29[4] = self;
    v29[5] = &v31;
    v29[6] = v10;
    [layoutManager2 enumerateLineFragmentsForGlyphRange:v20 usingBlock:{v22, v29}];
  }

  v24 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:_icaxModifiedAttributedStorageString forRange:v32[4], v32[5]];
  if (startCopy)
  {
    v25 = v24;
  }

  else
  {
    v26 = [(ICEditingTextView *)self _icaxModifiedPositionForPosition:v32[5] + v32[4]];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      isFirstResponder = [(ICEditingTextView *)self isFirstResponder];
    }

    else
    {
      isFirstResponder = 1;
    }

    v25 = v26 - ((v26 < [_icaxModifiedAttributedStorageString length]) & isFirstResponder);
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

- (id)elementsForAccessibilityRotorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeLinks"])
  {
    _icaxLinkElements = [(ICEditingTextView *)self _icaxLinkElements];
  }

  else
  {
    _icaxLinkElements = 0;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeChecklist"])
  {
    _icaxTodoElements = [(ICEditingTextView *)self _icaxTodoElements];

    _icaxLinkElements = _icaxTodoElements;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeAttachments"])
  {
    _icaxAttachmentElementsForRotor = [(ICEditingTextView *)self _icaxAttachmentElementsForRotor];

    _icaxLinkElements = _icaxAttachmentElementsForRotor;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeTables"])
  {
    _icaxTableElementsForRotor = [(ICEditingTextView *)self _icaxTableElementsForRotor];

    _icaxLinkElements = _icaxTableElementsForRotor;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeTags"])
  {
    _icaxTagsElementsForRotor = [(ICEditingTextView *)self _icaxTagsElementsForRotor];

    _icaxLinkElements = _icaxTagsElementsForRotor;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeMentions"])
  {
    _icaxMentionsElementsForRotor = [(ICEditingTextView *)self _icaxMentionsElementsForRotor];

    _icaxLinkElements = _icaxMentionsElementsForRotor;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeCalculationResults"])
  {
    _icaxCalculationResultElementsForRotor = [(ICEditingTextView *)self _icaxCalculationResultElementsForRotor];

    _icaxLinkElements = _icaxCalculationResultElementsForRotor;
  }

  if ([typeCopy isEqualToString:@"ICAccessibilityRotorTypeCalculationErrors"])
  {
    _icaxCalculationErrorElementsForRotor = [(ICEditingTextView *)self _icaxCalculationErrorElementsForRotor];

    _icaxLinkElements = _icaxCalculationErrorElementsForRotor;
  }

  return _icaxLinkElements;
}

- (id)accessibilityCustomRotors
{
  v13.receiver = self;
  v13.super_class = ICEditingTextView;
  accessibilityCustomRotors = [(ICEditingTextView *)&v13 accessibilityCustomRotors];
  v4 = accessibilityCustomRotors;
  v5 = MEMORY[0x277CBEBF8];
  if (accessibilityCustomRotors)
  {
    v5 = accessibilityCustomRotors;
  }

  v6 = v5;

  editorController = [(ICEditingTextView *)self editorController];
  v8 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v8 setNoteEditorViewController:editorController];

  v9 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v9 sharedTextViewRotors];
  v11 = [v6 arrayByAddingObjectsFromArray:sharedTextViewRotors];

  return v11;
}

- (id)_icaxAttachmentElementsForRotor
{
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __73__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__ICEditingTextView_ICAccessibility_iOS___icaxTableElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__ICEditingTextView_ICAccessibility_iOS___icaxTagsElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__ICEditingTextView_ICAccessibility_iOS___icaxMentionsElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __80__ICEditingTextView_ICAccessibility_iOS___icaxCalculationResultElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __79__ICEditingTextView_ICAccessibility_iOS___icaxCalculationErrorElementsForRotor__block_invoke;
  v13 = &unk_2781ACA58;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v6 = v5;
  textStorage = [(ICEditingTextView *)self textStorage];
  [icaxTextController setDone:0 range:selectedRange inTextStorage:{v6, textStorage}];
}

- (void)_icaxMarkTodoCompleteForCurrentSelection
{
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v6 = v5;
  textStorage = [(ICEditingTextView *)self textStorage];
  [icaxTextController setDone:1 range:selectedRange inTextStorage:{v6, textStorage}];
}

- (void)_icaxChecklistMarkAllComplete
{
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  [icaxTextController markAllChecklistItemsCompleted:1 inTextview:self forSelectedRanges:ic_selectedRanges];
}

- (void)_icaxChecklistUnMarkAllComplete
{
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  [icaxTextController markAllChecklistItemsCompleted:0 inTextview:self forSelectedRanges:ic_selectedRanges];
}

- (void)_icaxChecklistDeleteChecked
{
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  [icaxTextController removeChecklistItemsMarkedCompleted:1 inTextView:self forRanges:ic_selectedRanges];
}

- (void)_icaxChecklistSortCheckedToBottom
{
  editorController = [(ICEditingTextView *)self editorController];
  icaxTextController = [editorController icaxTextController];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  [icaxTextController moveCheckedChecklistsToBottomInTextView:self forRange:selectedRange animated:{v5, 1}];
}

- (void)textStorageDidPerformMerge:(id)merge
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

  _icaxCachedChildrenForReparenting = [(ICEditingTextView *)self _icaxCachedChildrenForReparenting];

  if (!_icaxCachedChildrenForReparenting)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    _accessibleSubviews = [(ICEditingTextView *)self _accessibleSubviews];
    [v7 addObjectsFromArray:_accessibleSubviews];

    textStorage = [(ICEditingTextView *)self textStorage];
    v10 = *MEMORY[0x277D74060];
    textStorage2 = [(ICEditingTextView *)self textStorage];
    v12 = [textStorage2 length];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __82__ICEditingTextView_ICAccessibility_iOS__childElementsForAccessibilityReparenting__block_invoke;
    v46[3] = &unk_2781AC8D0;
    v46[4] = self;
    v13 = v7;
    v47 = v13;
    [textStorage enumerateAttribute:v10 inRange:0 options:v12 usingBlock:{0, v46}];

    v45 = v13;
    array = [v13 array];
    if (objc_opt_respondsToSelector())
    {
      v15 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

      array = v15;
    }

    v44 = array;
    v16 = [array mutableCopy];
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

  _icaxCachedChildrenForReparenting2 = [(ICEditingTextView *)self _icaxCachedChildrenForReparenting];

  return _icaxCachedChildrenForReparenting2;
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
    accessibilityDragSourceDescriptors = [(ICEditingTextView *)&v27 accessibilityDragSourceDescriptors];
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
    tableAXController = [v7 tableAXController];
    hostingTableAttachmentView = [tableAXController hostingTableAttachmentView];

    v10 = hostingTableAttachmentView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        hostingTableAttachmentView = v6;
        accessibilityLabel = [hostingTableAttachmentView accessibilityLabel];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          accessibilityLabel2 = 0;
          goto LABEL_22;
        }

        hostingTableAttachmentView = v6;
        accessibilityLabel = [hostingTableAttachmentView icaxDragSourceName];
      }

      accessibilityLabel2 = accessibilityLabel;
      if (hostingTableAttachmentView)
      {
        goto LABEL_14;
      }

LABEL_22:
      accessibilityDragSourceDescriptors = 0;
      goto LABEL_23;
    }

    v7 = v6;
    hostingTableAttachmentView = [v7 attachmentDrawingView];
    v10 = v7;
  }

  accessibilityLabel2 = [v10 accessibilityLabel];

  if (!hostingTableAttachmentView)
  {
    goto LABEL_22;
  }

LABEL_14:
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"Drag %@" value:&stru_282757698 table:0];

  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, accessibilityLabel2];
  [hostingTableAttachmentView center];
  v16 = v15;
  v18 = v17;
  superview = [hostingTableAttachmentView superview];
  [(ICEditingTextView *)self convertPoint:superview fromView:v16, v18];
  v21 = v20;
  v23 = v22;

  v24 = [objc_alloc(MEMORY[0x277D750B8]) initWithName:v14 point:self inView:{v21, v23}];
  v28[0] = v24;
  accessibilityDragSourceDescriptors = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

LABEL_23:
LABEL_24:

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (![(ICEditingTextView *)self isEditable])
  {
    accessibilityDropPointDescriptors = 0;
    goto LABEL_25;
  }

  if (([(ICEditingTextView *)self isEditing]& 1) != 0)
  {
    v22.receiver = self;
    v22.super_class = ICEditingTextView;
    accessibilityDropPointDescriptors = [(ICEditingTextView *)&v22 accessibilityDropPointDescriptors];
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
    tableAXController = [v9 tableAXController];
    hostingTableAttachmentView = [tableAXController hostingTableAttachmentView];

    v12 = hostingTableAttachmentView;
LABEL_15:
    accessibilityLabel = [v12 accessibilityLabel];

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    hostingTableAttachmentView = [v9 attachmentDrawingView];
    v12 = v9;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hostingTableAttachmentView = v6;
    accessibilityLabel = [hostingTableAttachmentView accessibilityLabel];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      accessibilityLabel = 0;
      goto LABEL_23;
    }

    hostingTableAttachmentView = v6;
    accessibilityLabel = [hostingTableAttachmentView icaxDragSourceName];
    [hostingTableAttachmentView bounds];
    MidX = CGRectGetMidX(v25);
    [hostingTableAttachmentView bounds];
    [(ICEditingTextView *)self convertPoint:hostingTableAttachmentView fromView:MidX, CGRectGetMinY(v26)];
    v7 = v19;
    v8 = v20;
  }

LABEL_16:
  if (!hostingTableAttachmentView)
  {
LABEL_23:
    accessibilityDropPointDescriptors = 0;
    goto LABEL_24;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle localizedStringForKey:@"Drop before %@" value:&stru_282757698 table:0];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, accessibilityLabel];
  v17 = [objc_alloc(MEMORY[0x277D750B8]) initWithName:v16 point:self inView:{v7, v8}];
  v23[0] = v17;
  accessibilityDropPointDescriptors = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

LABEL_24:
LABEL_25:

  return accessibilityDropPointDescriptors;
}

- (id)_icaxCurrentParagraph
{
  textStorage = [(ICEditingTextView *)self textStorage];
  string = [textStorage string];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v7 = [string paragraphRangeForRange:{selectedRange + v6, 0}];
  v9 = v8;

  textStorage2 = [(ICEditingTextView *)self textStorage];
  string2 = [textStorage2 string];
  v12 = [string2 substringWithRange:{v7, v9}];

  return v12;
}

- (_NSRange)_icaxRangeOfAttachment:(id)attachment
{
  attachmentCopy = attachment;
  note = [attachmentCopy note];
  v5 = [note rangeForAttachment:attachmentCopy];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)_icaxFirstTextAttachmentInRange:(_NSRange)range
{
  location = range.location;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  if (range.length)
  {
    length = range.length;
    textStorage = [(ICEditingTextView *)self textStorage];
    v6 = *MEMORY[0x277D74060];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ICEditingTextView_ICAccessibility_iOS___icaxFirstTextAttachmentInRange___block_invoke;
    v13[3] = &unk_2781ABC80;
    v13[4] = &v14;
    [textStorage enumerateAttribute:v6 inRange:location options:length usingBlock:{0, v13}];
  }

  else
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
    textStorage = [textStorage2 attributesAtIndex:location effectiveRange:0];

    objc_opt_class();
    v8 = [textStorage objectForKeyedSubscript:*MEMORY[0x277D74060]];
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
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v5 = [(ICEditingTextView *)self _icaxFirstTextAttachmentInRange:selectedRange, v4];
  if (v5)
  {
    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    if (IsTextKit2Enabled)
    {
      icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
      viewIdentifier = [v5 viewIdentifier];
      v9 = [icTextLayoutManager existingAttachmentViewForIdentifier:viewIdentifier];
      v10 = ICDynamicCast();
    }

    else
    {
      icTextLayoutManager = [(ICEditingTextView *)self layoutManager];
      viewIdentifier = [icTextLayoutManager viewForBaseTextAttachmentNoCreate:v5];
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
  array = [MEMORY[0x277CBEB18] array];
  textStorage = [(ICEditingTextView *)self textStorage];
  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__ICEditingTextView_ICAccessibility_iOS___icaxAttachmentElements__block_invoke;
  v13 = &unk_2781AC8F8;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v7, v10, v11, v12, v13, selfCopy}];

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
    _accessibilityInternalTextLinks = 0;
  }

  else
  {
    _accessibilityInternalTextLinks = [(ICEditingTextView *)self _accessibilityInternalTextLinks];
  }

  return _accessibilityInternalTextLinks;
}

- (id)_icaxTodoElements
{
  array = [MEMORY[0x277CBEB18] array];
  textStorage = [(ICEditingTextView *)self textStorage];
  v5 = *MEMORY[0x277D35DA8];
  v6 = [textStorage length];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__ICEditingTextView_ICAccessibility_iOS___icaxTodoElements__block_invoke;
  v13 = &unk_2781ACAF8;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, &v10}];
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
    _icaxModifiedAttributedStorageString = [(ICEditingTextView *)self _icaxModifiedAttributedStorageString];
    selectedRange = [(ICEditingTextView *)self selectedRange];
    v6 = [(ICEditingTextView *)self _icaxRangeInModifiedAttributedString:_icaxModifiedAttributedStorageString forRange:selectedRange, v5];
    [(ICEditingTextView *)self set_icaxModifiedSelectionRange:v6, v7];

    _icaxModifiedSelectionRange = [(ICEditingTextView *)self _icaxModifiedSelectionRange];

    [(ICEditingTextView *)self set_icaxModifiedCursorPosition:_icaxModifiedSelectionRange];
  }
}

- (void)_icaxGetBoldForCurrentRange:(BOOL *)range italic:(BOOL *)italic underline:(BOOL *)underline strikethrough:(BOOL *)strikethrough
{
  editorController = [(ICEditingTextView *)self editorController];
  currentBIUSForStyleSelector = [editorController currentBIUSForStyleSelector];

  *range = currentBIUSForStyleSelector & 1;
  *italic = (currentBIUSForStyleSelector & 2) != 0;
  *underline = (currentBIUSForStyleSelector & 4) != 0;
  typingAttributes = [(ICEditingTextView *)self typingAttributes];
  v13 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
  *strikethrough = [v13 integerValue] != 0;
}

- (id)_icaxFirstAttachmentViewSupportingAction:(SEL)action
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  textStorage = [(ICEditingTextView *)self textStorage];
  textStorage2 = [(ICEditingTextView *)self textStorage];
  v7 = [textStorage2 length];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__ICEditingTextView_ICAccessibility_iOS___icaxFirstAttachmentViewSupportingAction___block_invoke;
  v11[3] = &unk_2781ACB20;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = action;
  [textStorage enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v11}];

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

- (id)_icaxTodoButtonForParagraphStyle:(id)style
{
  styleCopy = style;
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    layoutManager = [(ICEditingTextView *)self layoutManager];
    v8 = [layoutManager icaxTodoButtonForParagraphStyle:styleCopy];
    goto LABEL_5;
  }

  icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
  todoTrackingUUID = [styleCopy todoTrackingUUID];

  layoutManager = [icTextLayoutManager trackedTodoParagraphForTrackingUUID:todoTrackingUUID];

  if (layoutManager)
  {
    styleCopy = [(ICEditingTextView *)self icTextLayoutManager];
    v8 = [styleCopy todoButtonForTrackedParagraph:layoutManager];
LABEL_5:
    v9 = v8;

    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_icaxAddPredictiveTextToAttributedString:(id)string
{
  v25[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  objc_opt_class();
  v23.receiver = self;
  v23.super_class = ICEditingTextView;
  accessibilityValue = [(ICEditingTextView *)&v23 accessibilityValue];
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
        v14 = [stringCopy length];
        if (v13 >= v14)
        {
          v13 = v14;
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __83__ICEditingTextView_ICAccessibility_iOS___icaxAddPredictiveTextToAttributedString___block_invoke;
        v16[3] = &unk_2781AC8D0;
        v17 = stringCopy;
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

- (void)_addPencilKitAccessibilityElementIfNeededForTextAttachment:(id)attachment toAttachmentElements:(id)elements
{
  elementsCopy = elements;
  attachment = [attachment attachment];
  identifier = [attachment identifier];

  _icaxPencilKitAttachmentsDict = [(ICEditingTextView *)self _icaxPencilKitAttachmentsDict];
  v9 = [_icaxPencilKitAttachmentsDict objectForKeyedSubscript:identifier];

  [elementsCopy ic_addNonNilObject:v9];
}

- (id)_icaxMakeBoldString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotBoldString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not bold" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeItalicString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotItalicString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not italic" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeUnderlinedString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeNotUnderlinedString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not underline" value:&stru_282757698 table:0];

  return v3;
}

- (id)icaxMakeStrikethroughString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)icaxMakeNotStrikethroughString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Set not strike-through" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMarkAsCompletedString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Mark as checked" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMarkAsIncompleteString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Mark as unchecked" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxMakeChecklistString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Make checklist item" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxRemoveChecklistString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Remove checklist item" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistMarkAllItemsCompleteString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Check all items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistUnmarkAllItemsCompleteString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Uncheck all items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistDeleteCheckedItemsString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Delete all checked items" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxChecklistMoveCheckedToBottomString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Move Checked items to the Bottom" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxShareAttachmentString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxIncreaseIndentationString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Increase Indentation" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxDecreaseIndentationString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Decrease Indentation" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxInsertDrawingString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Insert Drawing" value:&stru_282757698 table:0];

  return v3;
}

- (id)_icaxCalculateAdjustString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Adjust" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)ic_canIndentByDelta:(int64_t)delta
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
  v5[6] = delta;
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

- (void)ic_setTextStyleForCurrentSelection:(unsigned int)selection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__ICEditingTextView_StyleAdditions__ic_setTextStyleForCurrentSelection___block_invoke;
  v3[3] = &unk_2781AE6C0;
  v3[4] = self;
  selectionCopy = selection;
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

- (void)ic_indentByAmount:(int64_t)amount
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__ICEditingTextView_StyleAdditions__ic_indentByAmount___block_invoke;
  v3[3] = &unk_2781AE6E8;
  v3[4] = self;
  v3[5] = amount;
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

- (void)ic_setTextAlignmentForCurrentSelection:(int64_t)selection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__ICEditingTextView_StyleAdditions__ic_setTextAlignmentForCurrentSelection___block_invoke;
  v3[3] = &unk_2781AE6E8;
  v3[4] = self;
  v3[5] = selection;
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
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICEditingTextView_StyleAdditions__ic_toggleBoldface__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:6 sender:self];
}

- (void)ic_toggleItalics
{
  [(ICEditingTextView *)self ic_toggleFontHint:2];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ICEditingTextView_StyleAdditions__ic_toggleItalics__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:7 sender:self];
}

- (void)ic_toggleUnderline
{
  [(ICEditingTextView *)self ic_toggleAttributeWithName:*MEMORY[0x277D35DC0]];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICEditingTextView_StyleAdditions__ic_toggleUnderline__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:8 sender:self];
}

- (void)ic_toggleStrikethrough
{
  [(ICEditingTextView *)self ic_toggleAttributeWithName:*MEMORY[0x277D35DB0]];
  ic_selectedRanges = [(ICEditingTextView *)self ic_selectedRanges];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ICEditingTextView_StyleAdditions__ic_toggleStrikethrough__block_invoke;
  v4[3] = &unk_2781AD7D8;
  v4[4] = self;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v4];

  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:9 sender:self];
}

- (void)ic_toggleEmphasisWithType:(int64_t)type
{
  v4 = *MEMORY[0x277D35D88];
  v5 = ic_currentEmphasisColorTypeDefault();

  [(ICEditingTextView *)self ic_toggleAttributeWithName:v4 withEmphasisColorType:v5];
}

- (id)ic_selectedStylesIgnoreTypingAttributes:(BOOL)attributes
{
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ICEditingTextView_StyleAdditions__ic_selectedStylesIgnoreTypingAttributes___block_invoke;
  v9[3] = &unk_2781AE738;
  v9[4] = self;
  v10 = indexSet;
  attributesCopy = attributes;
  v6 = indexSet;
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
  selectedRange = [(ICEditingTextView *)self selectedRange];
  if (v4)
  {
    v5 = selectedRange;
    v6 = v4;
    textStorage = [(ICEditingTextView *)self textStorage];
    typingAttributes = [textStorage attributesAtIndex:v5 longestEffectiveRange:0 inRange:{v5, v6}];
  }

  else
  {
    typingAttributes = [(ICEditingTextView *)self typingAttributes];
  }

  v9 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35D98]];
  intValue = [v9 intValue];

  objc_opt_class();
  v11 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v12 = ICDynamicCast();

  if ((intValue & 1) != 0 || [v12 ic_hasSymbolicBoldTrait])
  {
    v13 = 1;
    if ((intValue & 2) != 0)
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
  if ((intValue & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 |= 2uLL;
LABEL_11:
  v14 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DC0]];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v13 |= 4uLL;
  }

  v16 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
  bOOLValue2 = [v16 BOOLValue];

  if (bOOLValue2)
  {
    v13 |= 8uLL;
  }

  v18 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35D88]];
  bOOLValue3 = [v18 BOOLValue];

  if (bOOLValue3)
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

- (void)ic_performBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v8 = ICCheckedDynamicCast();

  objc_opt_class();
  styler = [v8 styler];
  v7 = ICCheckedDynamicCast();

  blockCopy[2](blockCopy, v8, v7);
}

- (void)ic_enumerateTableAttachmentViewControllersInRanges:(id)ranges usingBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  blockCopy = block;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
    v9 = ICCheckedDynamicCast();

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = rangesCopy;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = rangesCopy;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          rangeValue = [*(*(&v39 + 1) + 8 * i) rangeValue];
          v16 = v15;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke;
          v36[3] = &unk_2781AE760;
          v17 = v9;
          v37 = v17;
          v38 = blockCopy;
          [v17 enumerateAttachmentViewsInRange:rangeValue usingBlock:{v16, v36}];
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
LABEL_17:
      v9 = v17;
      rangesCopy = v26;
    }
  }

  else
  {
    objc_opt_class();
    layoutManager = [(ICEditingTextView *)self layoutManager];
    v9 = ICCheckedDynamicCast();

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obja = rangesCopy;
    v19 = [obja countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v26 = rangesCopy;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obja);
          }

          rangeValue2 = [*(*(&v32 + 1) + 8 * j) rangeValue];
          v25 = v24;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __99__ICEditingTextView_StyleAdditions__ic_enumerateTableAttachmentViewControllersInRanges_usingBlock___block_invoke_2;
          v29[3] = &unk_2781AE760;
          v17 = v9;
          v30 = v17;
          v31 = blockCopy;
          [v17 enumerateAttachmentViewsInRange:rangeValue2 usingBlock:{v25, v29}];
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

- (BOOL)ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:(unsigned int)trait
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait___block_invoke;
  v5[3] = &unk_2781AE788;
  traitCopy = trait;
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

- (BOOL)ic_allSelectedRangesContainAttributeName:(id)name withValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__ICEditingTextView_StyleAdditions__ic_allSelectedRangesContainAttributeName_withValue___block_invoke;
  v16[3] = &unk_2781AE7B0;
  v8 = valueCopy;
  v17 = v8;
  v9 = nameCopy;
  v18 = v9;
  v19 = &v20;
  [(ICEditingTextView *)self ic_enumerateAttributesInSelectedRanges:v16];
  [(ICEditingTextView *)self selectedRange];
  if (!v10)
  {
    typingAttributes = [(ICEditingTextView *)self typingAttributes];
    v12 = [typingAttributes objectForKeyedSubscript:v9];
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

- (void)ic_enumerateAttributesInSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__ICEditingTextView_StyleAdditions__ic_enumerateAttributesInSelectedRanges___block_invoke;
  v6[3] = &unk_2781AE800;
  v6[4] = self;
  v7 = rangesCopy;
  v5 = rangesCopy;
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

- (void)ic_toggleAttributeWithName:(id)name withEmphasisColorType:(int64_t)type
{
  nameCopy = name;
  if (type)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v8 = [(ICEditingTextView *)self ic_allSelectedRangesContainAttributeName:nameCopy withValue:v7];
  }

  else
  {
    v8 = [(ICEditingTextView *)self ic_allSelectedRangesContainAttributeName:nameCopy withValue:MEMORY[0x277CBEC38]];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__ICEditingTextView_StyleAdditions__ic_toggleAttributeWithName_withEmphasisColorType___block_invoke;
  v11[3] = &unk_2781AE828;
  v9 = type != 0;
  v14 = v8;
  v12 = nameCopy;
  typeCopy = type;
  v10 = nameCopy;
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

- (void)ic_setAttributeWithName:(id)name enabled:(BOOL)enabled withEmphasisColorType:(int64_t)type
{
  nameCopy = name;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__ICEditingTextView_StyleAdditions__ic_setAttributeWithName_enabled_withEmphasisColorType___block_invoke;
  v10[3] = &unk_2781AE828;
  v11 = nameCopy;
  typeCopy = type;
  enabledCopy = enabled;
  v9 = nameCopy;
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

- (void)ic_toggleFontHint:(unsigned int)hint
{
  v5 = [(ICEditingTextView *)self ic_allSelectedRangesContainFontHintOrEquivalentSymbolicTrait:?];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ICEditingTextView_StyleAdditions__ic_toggleFontHint___block_invoke;
  v6[3] = &__block_descriptor_37_e44_v32__0__NSMutableDictionary_8__NSRange_QQ_16l;
  hintCopy = hint;
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

- (void)ic_setFontHint:(unsigned int)hint enabled:(BOOL)enabled
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ICEditingTextView_StyleAdditions__ic_setFontHint_enabled___block_invoke;
  v4[3] = &__block_descriptor_37_e44_v32__0__NSMutableDictionary_8__NSRange_QQ_16l;
  enabledCopy = enabled;
  hintCopy = hint;
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

- (void)ic_editAttributesInSelectedRanges:(id)ranges shouldSkipAttachments:(BOOL)attachments
{
  rangesCopy = ranges;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__ICEditingTextView_StyleAdditions__ic_editAttributesInSelectedRanges_shouldSkipAttachments___block_invoke;
  v9[3] = &unk_2781AE898;
  attachmentsCopy = attachments;
  v9[4] = self;
  v10 = rangesCopy;
  v7 = rangesCopy;
  [(ICEditingTextView *)self ic_performBlock:v9];
  delegate = [(ICEditingTextView *)self delegate];
  [delegate textViewDidChange:self];
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

- (unint64_t)firstValidEmphasisLocationWithinSelection:(_NSRange)selection
{
  length = selection.length;
  location = selection.location;
  textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
  v7 = [textLayoutManager ic_textRangeForRange:{location, length}];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  textLayoutManager2 = [(ICEditingTextView *)self textLayoutManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__ICEditingTextView_StyleAdditions__firstValidEmphasisLocationWithinSelection___block_invoke;
  v11[3] = &unk_2781AE8C0;
  v11[4] = self;
  v11[5] = &v12;
  [textLayoutManager2 enumerateTextSegmentsInRange:v7 type:0 options:12 usingBlock:v11];

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

- (id)pasteIntoSelectedRangeWithoutExceedingMaxLengthWithAttributedString:(id)string session:(id)session
{
  stringCopy = string;
  sessionCopy = session;
  if (![(ICEditingTextView *)self supportsAttachments])
  {
    ic_stringWithoutAttachments = [stringCopy ic_stringWithoutAttachments];

    stringCopy = ic_stringWithoutAttachments;
  }

  if (![stringCopy length])
  {
    goto LABEL_7;
  }

  if ([(ICEditingTextView *)self exceedsMaxLengthIfSelectionReplacedWithAttributedString:stringCopy])
  {
    if (([sessionCopy didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      editorController = [(ICEditingTextView *)self editorController];
      [editorController warnUserNoteLengthExceeded];

      [sessionCopy setDidWarnAboutExceedingMaxLength:1];
    }

LABEL_7:

    stringCopy = 0;
    goto LABEL_10;
  }

  if (stringCopy)
  {
    [(ICEditingTextView *)self _pasteAttributedString:stringCopy pasteAsRichText:1];
  }

LABEL_10:

  return stringCopy;
}

- (BOOL)exceedsMaxLengthIfSelectionReplacedWithAttributedString:(id)string
{
  stringCopy = string;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v6 = [tTTextStorage length];
  v7 = [stringCopy length];
  [(ICEditingTextView *)self selectedRange];
  v9 = v8;

  v10 = [stringCopy length];
  [(ICEditingTextView *)self selectedRange];
  if (v10 <= v11)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v12 = v7 + v6 - v9;
    icDelegate = [(ICBaseTextView *)self icDelegate];
    v14 = [icDelegate allowsNewTextLength:v12] ^ 1;
  }

  return v14;
}

- (id)pasteNotePasteboardData:(id)data session:(id)session error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sessionCopy = session;
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
  attributedStringData = [dataCopy attributedStringData];
  v11 = [attributedStringData length];
  dataPersister = [dataCopy dataPersister];
  accumulatedDataSize = [dataPersister accumulatedDataSize];
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  [note setShouldAddMediaAsynchronously:(accumulatedDataSize + v11) > *MEMORY[0x277D36038]];

  editorController2 = [(ICEditingTextView *)self editorController];
  note2 = [editorController2 note];
  attributedStringData2 = [dataCopy attributedStringData];
  LODWORD(v11) = [note2 attachmentExceedsMaxSizeAllowed:{objc_msgSend(attributedStringData2, "length")}];

  if (v11)
  {
    if (([sessionCopy didWarnAboutAttachmentSizeExceeded] & 1) == 0)
    {
      editorController3 = [(ICEditingTextView *)self editorController];
      [editorController3 warnUserAttachmentSizeExceededWithAttachmentCount:1];

      [sessionCopy setDidWarnAboutAttachmentSizeExceeded:1];
    }
  }

  else
  {
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__ICEditingTextView_PasteUtilities__pasteNotePasteboardData_session_error___block_invoke;
    v32[3] = &unk_2781AE9A0;
    v36 = &v38;
    v33 = dataCopy;
    selfCopy = self;
    v37 = &v44;
    v35 = sessionCopy;
    [tTTextStorage saveSelectionDuringBlock:v32 affinity:1];
  }

  if (!v39[5])
  {
    v23 = v45[5];
    if (v23)
    {
      code = [v23 code];
      if (code == 205)
      {
        if ([sessionCopy didWarnAboutNotSupportedForPasswordProtectedNotes])
        {
          goto LABEL_6;
        }

        userInfo = [v45[5] userInfo];
        v27 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36108]];

        if (v27)
        {
          unsignedIntegerValue = [v27 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 1;
        }

        v29 = [MEMORY[0x277D366D8] cannotAddAttachmentsInfoAlertWithAttachmentCount:unsignedIntegerValue];
        window = [(ICEditingTextView *)self window];
        [v29 presentInWindow:window completionHandler:0];

        [sessionCopy setDidWarnAboutNotSupportedForPasswordProtectedNotes:1];
      }

      else
      {
        if (code == 202)
        {
          if (([sessionCopy didWarnAboutAttachmentLimitExceeded] & 1) == 0)
          {
            editorController4 = [(ICEditingTextView *)self editorController];
            [editorController4 warnUserAttachmentLimitExceeded];

            [sessionCopy setDidWarnAboutAttachmentLimitExceeded:1];
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
  if (error)
  {
    *error = v45[5];
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

- (id)pasteImagesDataArray:(id)array typesArray:(id)typesArray session:(id)session
{
  v45 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  typesArrayCopy = typesArray;
  sessionCopy = session;
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
  v9 = arrayCopy;
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
        editorController = [(ICEditingTextView *)self editorController];
        note = [editorController note];
        v17 = [note attachmentExceedsMaxSizeAllowed:{objc_msgSend(v14, "length")}];

        if (v17)
        {
          didWarnAboutAttachmentSizeExceeded = [sessionCopy didWarnAboutAttachmentSizeExceeded];
          v21 = v9;
          if ((didWarnAboutAttachmentSizeExceeded & 1) == 0)
          {
            editorController2 = [(ICEditingTextView *)self editorController];
            [editorController2 warnUserAttachmentSizeExceededWithAttachmentCount:{objc_msgSend(v9, "count")}];

            [sessionCopy setDidWarnAboutAttachmentSizeExceeded:1];
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

  editorController3 = [(ICEditingTextView *)self editorController];
  note2 = [editorController3 note];
  [note2 setShouldAddMediaAsynchronously:v10 > *MEMORY[0x277D36038]];

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__ICEditingTextView_PasteUtilities__pasteImagesDataArray_typesArray_session___block_invoke;
  v28[3] = &unk_2781AEA18;
  v29 = v9;
  v30 = typesArrayCopy;
  selfCopy = self;
  v32 = sessionCopy;
  v33 = &v38;
  [tTTextStorage saveSelectionDuringBlock:v28 affinity:1];

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

- (id)pasteURL:(id)l uti:(id)uti name:(id)name metadata:(id)metadata session:(id)session
{
  lCopy = l;
  utiCopy = uti;
  nameCopy = name;
  metadataCopy = metadata;
  sessionCopy = session;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  if ([note canAddAttachment])
  {

    goto LABEL_7;
  }

  isFileURL = [lCopy isFileURL];

  if (!isFileURL)
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
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __72__ICEditingTextView_PasteUtilities__pasteURL_uti_name_metadata_session___block_invoke;
    v29 = &unk_2781AEA40;
    v30 = lCopy;
    selfCopy = self;
    v36 = &v44;
    v32 = utiCopy;
    v33 = metadataCopy;
    v34 = nameCopy;
    v37 = &v38;
    v23 = sessionCopy;
    v35 = v23;
    [tTTextStorage saveSelectionDuringBlock:&v26 affinity:1];

    if (*(v45 + 24) == 1 && ([v23 didWarnAboutAttachmentSizeExceeded] & 1) == 0)
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      [editorController2 warnUserAttachmentSizeExceededWithAttachmentCount:1];

      [v23 setDidWarnAboutAttachmentSizeExceeded:1];
    }

    v21 = v39[5];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    goto LABEL_11;
  }

  if (([sessionCopy didWarnAboutAttachmentLimitExceeded] & 1) == 0)
  {
    editorController3 = [(ICEditingTextView *)self editorController];
    [editorController3 warnUserAttachmentLimitExceeded];

    [sessionCopy setDidWarnAboutAttachmentLimitExceeded:1];
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

- (id)pasteStringUsingBlock:(id)block approxPasteString:(id)string pasteboardTypes:(id)types session:(id)session
{
  blockCopy = block;
  stringCopy = string;
  typesCopy = types;
  sessionCopy = session;
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v15 = v14;
  if ([stringCopy length] <= v14 || (-[ICEditingTextView TTTextStorage](self, "TTTextStorage"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v18 = objc_msgSend(stringCopy, "length"), v16, -[ICBaseTextView icDelegate](self, "icDelegate"), v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v17) = objc_msgSend(v19, "allowsNewTextLength:", v17 - v15 + v18), v19, (v17 & 1) != 0))
  {
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage setFilterPastedAttributes:1];

    tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage2 setConvertAttributes:1];

    tTTextStorage3 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage3 setPasteboardTypes:typesCopy];

    tTTextStorage4 = [(ICEditingTextView *)self TTTextStorage];
    v24 = [tTTextStorage4 length];

    blockCopy[2](blockCopy);
    tTTextStorage5 = [(ICEditingTextView *)self TTTextStorage];
    v46 = blockCopy;
    v26 = [tTTextStorage5 length];

    v27 = v26 - v24 + v15;
    tTTextStorage6 = [(ICEditingTextView *)self TTTextStorage];
    v29 = [tTTextStorage6 attributedSubstringFromRange:{selectedRange, v27}];

    string = [v29 string];
    [(ICEditingTextView *)self TTTextStorage];
    v30 = v45 = typesCopy;
    [v30 setPasteboardTypes:0];

    tTTextStorage7 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage7 setConvertAttributes:0];

    tTTextStorage8 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage8 setFilterPastedAttributes:0];

    objc_opt_class();
    tTTextStorage9 = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage9 styler];
    v34 = sessionCopy;
    v36 = v35 = stringCopy;
    v37 = ICCheckedDynamicCast();

    stringCopy = v35;
    sessionCopy = v34;

    [v37 insertedText:string replacementRange:selectedRange inTextView:v15 languageHasSpaces:{self, -[ICEditingTextView languageHasSpaces](self, "languageHasSpaces")}];
    if (v26 >= v27 + selectedRange)
    {
      v38 = v27 + selectedRange;
    }

    else
    {
      v38 = v26;
    }

    blockCopy = v46;
    [(ICEditingTextView *)self setSelectedRange:v38, 0];
    selectedRange2 = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self scrollRangeToVisible:selectedRange2, v40];
    [(ICEditingTextView *)self informDelegateOfPastedAttributedString:v29];

    typesCopy = v45;
  }

  else
  {
    if (([sessionCopy didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      editorController = [(ICEditingTextView *)self editorController];
      [editorController warnUserNoteLengthExceeded];

      [sessionCopy setDidWarnAboutExceedingMaxLength:1];
    }

    if (([sessionCopy didWarnAboutExceedingMaxLength] & 1) == 0)
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      [editorController2 warnUserNoteLengthExceeded];

      [sessionCopy setDidWarnAboutExceedingMaxLength:1];
    }

    v29 = 0;
  }

  return v29;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  [(ICBaseTextView *)&v4 dealloc];
}

- (id)textController
{
  objc_opt_class();
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  styler = [tTTextStorage styler];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (id)icLayoutManager
{
  objc_opt_class();
  layoutManager = [(ICEditingTextView *)self layoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (id)icTextLayoutManager
{
  objc_opt_class();
  textLayoutManager = [(ICEditingTextView *)self textLayoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (ICTTTextStoragePersistenceHelper)persistenceHelper
{
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];

  return note;
}

- (id)selectionRectsForRange:(id)range
{
  v9[1] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
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
    v6 = [(ICEditingTextView *)&v8 selectionRectsForRange:rangeCopy];
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

    redColor = [MEMORY[0x277D75348] redColor];
    -[CALayer setBorderColor:](self->_tempHighlightLayer, "setBorderColor:", [redColor CGColor]);

    [(CALayer *)self->_tempHighlightLayer setBorderWidth:1.0];
    layer = [(ICEditingTextView *)self layer];
    [layer addSublayer:self->_tempHighlightLayer];

    tempHighlightLayer = self->_tempHighlightLayer;
  }

  return tempHighlightLayer;
}

- (id)attachmentsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  textStorage = [(ICEditingTextView *)self textStorage];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ICEditingTextView_attachmentsInRange___block_invoke;
  v11[3] = &unk_2781AC5D8;
  v9 = v6;
  v12 = v9;
  [textStorage enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v11}];

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

- (id)textAttachmentsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  textStorage = [(ICEditingTextView *)self textStorage];
  v8 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ICEditingTextView_textAttachmentsInRange___block_invoke;
  v11[3] = &unk_2781AC5D8;
  v9 = v6;
  v12 = v9;
  [textStorage enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v11}];

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
    canBecomeFirstResponder = [(ICEditingTextView *)&v8 canBecomeFirstResponder];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      objc_opt_class();
      layoutManager = [(ICEditingTextView *)self layoutManager];
      v7 = ICDynamicCast();
      v5 = [v7 isRenderingPreviewForDragAndDrop] ^ 1;
    }

    return canBecomeFirstResponder & v5;
  }
}

- (BOOL)becomeFirstResponder
{
  editorController = [(ICEditingTextView *)self editorController];
  presentedViewController = [editorController presentedViewController];

  modalPresentationStyle = [presentedViewController modalPresentationStyle];
  if ([(ICEditingTextView *)self isEditable])
  {
    editorController2 = [(ICEditingTextView *)self editorController];
    note = [editorController2 note];
    isEditable = [note isEditable];

    if (!isEditable || modalPresentationStyle == 5)
    {
      [(ICEditingTextView *)self setEditable:0];
    }
  }

  v11.receiver = self;
  v11.super_class = ICEditingTextView;
  becomeFirstResponder = [(ICEditingTextView *)&v11 becomeFirstResponder];
  [(ICEditingTextView *)self keyboardLocaleChanged:0];

  return becomeFirstResponder;
}

- (id)firstResponderMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  firstResponder = [(ICEditingTextView *)self firstResponder];
  if (firstResponder)
  {
    do
    {
      if (predicateCopy[2](predicateCopy, firstResponder))
      {
        break;
      }

      nextResponder = [firstResponder nextResponder];

      firstResponder = nextResponder;
    }

    while (nextResponder);
  }

  return firstResponder;
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  rightCopy = right;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setConvertAttributes:1];
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 makeTextWritingDirectionLeftToRight:rightCopy];
  styler = [tTTextStorage styler];
  [styler setUserChangedWritingDirection:1];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController textViewDidChange:self];

  [tTTextStorage setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:rightCopy];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  leftCopy = left;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setConvertAttributes:1];
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 makeTextWritingDirectionRightToLeft:leftCopy];
  styler = [tTTextStorage styler];
  [styler setUserChangedWritingDirection:1];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController textViewDidChange:self];

  [tTTextStorage setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:leftCopy];
}

- (void)makeTextWritingDirectionNatural:(id)natural
{
  naturalCopy = natural;
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setConvertAttributes:1];
  v6 = [(ICEditingTextView *)self ic_currentWritingDirection]!= -1;
  v9.receiver = self;
  v9.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionNatural:naturalCopy];
  styler = [tTTextStorage styler];
  [styler setUserChangedWritingDirection:v6];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController textViewDidChange:self];

  [tTTextStorage setConvertAttributes:0];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:10 sender:naturalCopy];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  v5 = MEMORY[0x277D75810];
  _dataOwnerForPaste = [(ICEditingTextView *)self _dataOwnerForPaste];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ICEditingTextView_paste___block_invoke;
  v8[3] = &unk_2781ABEB8;
  v8[4] = self;
  v9 = pasteCopy;
  v7 = pasteCopy;
  [v5 _performAsDataOwner:_dataOwnerForPaste block:v8];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  icDelegate = [(ICBaseTextView *)self icDelegate];
  if (objc_opt_respondsToSelector())
  {
    icDelegate2 = [(ICBaseTextView *)self icDelegate];
    shouldShowMenuItems = [icDelegate2 shouldShowMenuItems];

    if (!shouldShowMenuItems)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (NSSelectorFromString(&cfstr_Showtextformat.isa) == action)
  {
    goto LABEL_42;
  }

  LOBYTE(v10) = 0;
  if (sel_toggleBoldface_ == action || sel_toggleItalics_ == action || sel_toggleUnderline_ == action)
  {
    goto LABEL_43;
  }

  if (sel_copy_ == action || sel_cut_ == action)
  {
    v25.receiver = self;
    v25.super_class = ICEditingTextView;
    if ([(ICEditingTextView *)&v25 canPerformAction:action withSender:senderCopy])
    {
      isSelectionCopyableSize = [(ICEditingTextView *)self isSelectionCopyableSize];
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  if (sel__share_ == action)
  {
    v24.receiver = self;
    v24.super_class = ICEditingTextView;
    if (![(ICEditingTextView *)&v24 canPerformAction:action withSender:senderCopy]|| ![(ICEditingTextView *)self isSelectionCopyableSize])
    {
      goto LABEL_42;
    }

    v10 = [(ICEditingTextView *)self ic_isInSecureWindow]^ 1;
    goto LABEL_43;
  }

  singleSelectedAttachment = [(ICEditingTextView *)self singleSelectedAttachment];
  if (singleSelectedAttachment)
  {
    v12 = singleSelectedAttachment;
    if (NSSelectorFromString(&cfstr_Define.isa) == action)
    {

      goto LABEL_42;
    }

    v13 = NSSelectorFromString(&cfstr_Promptforrepla.isa);

    if (v13 == action)
    {
LABEL_42:
      LOBYTE(v10) = 0;
      goto LABEL_43;
    }
  }

  if (sel__findSelected_ == action)
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

  if (sel_captureTextFromCamera_ != action)
  {
    if (sel_makeTextWritingDirectionLeftToRight_ == action || sel_makeTextWritingDirectionRightToLeft_ == action || sel_makeTextWritingDirectionNatural_ == action)
    {
      if ([(ICEditingTextView *)self isEditing])
      {
        isSelectionCopyableSize = [(ICEditingTextView *)self allowsEditingTextAttributes];
        goto LABEL_24;
      }
    }

    else
    {
      if (sel_delete_ != action)
      {
        v20.receiver = self;
        v20.super_class = ICEditingTextView;
        isSelectionCopyableSize = [(ICEditingTextView *)&v20 canPerformAction:action withSender:senderCopy];
LABEL_24:
        LOBYTE(v10) = isSelectionCopyableSize;
        goto LABEL_43;
      }

      if ([(ICEditingTextView *)self isEditable])
      {
        v21.receiver = self;
        v21.super_class = ICEditingTextView;
        isSelectionCopyableSize = [(ICEditingTextView *)&v21 canPerformAction:action withSender:senderCopy];
        goto LABEL_24;
      }
    }

    goto LABEL_42;
  }

  objc_opt_class();
  firstResponder = [(ICEditingTextView *)self firstResponder];
  v18 = ICDynamicCast();

  if (v18 && v18 != self && [(ICEditingTextView *)v18 isDescendantOfView:self]&& ([(ICEditingTextView *)v18 conformsToProtocol:&unk_2827B71A8]& 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICEditingTextView;
    LOBYTE(v10) = [(ICEditingTextView *)&v22 canPerformAction:action withSender:senderCopy];
  }

LABEL_43:
  return v10;
}

- (BOOL)isDocumentCopyableSize
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  mergeableString = [tTTextStorage mergeableString];
  attributedString = [mergeableString attributedString];
  ic_isCopyableSize = [attributedString ic_isCopyableSize];

  return ic_isCopyableSize;
}

- (BOOL)isSelectionCopyableSize
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  mergeableString = [tTTextStorage mergeableString];
  attributedString = [mergeableString attributedString];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v8 = [attributedString attributedSubstringFromRange:{selectedRange, v7}];

  LOBYTE(tTTextStorage) = [v8 ic_isCopyableSize];
  return tTTextStorage;
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
    textStorage = [(ICEditingTextView *)self textStorage];
    [(ICEditingTextView *)self selectedRange];
    gotLoadHelper_x8__DDResultAttributeName(v5);
    v7 = **(v6 + 472);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __55__ICEditingTextView_selectionContainsDDResultAttribute__block_invoke;
    v12 = &unk_2781ABC80;
    v13 = &v14;
    [textStorage enumerateAttribute:v7 inRange:? options:? usingBlock:?];

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

- (void)_getPasteboardItemFromSelection:(id)selection
{
  v79 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selectionContainsDDResultAttribute = [(ICEditingTextView *)self selectionContainsDDResultAttribute];
  if (selectionContainsDDResultAttribute)
  {
    [(ICEditingTextView *)self ic_resetDataDetectorsResults];
  }

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  persistenceHelper = [(ICEditingTextView *)self persistenceHelper];
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

  textController = [(ICEditingTextView *)self textController];
  v14 = [textController extendedSelectionRangeForCollapsedSectionHeadingWithRange:location textView:{length, self}];
  v16 = v15;

  selfCopy = self;
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
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        rangeValue = [v22 rangeValue];
        v26 = v25;
        identifier = [v19 identifier];
        v28 = [tTTextStorage copyDataForUTI:identifier range:rangeValue persistenceHelper:{v26, persistenceHelper}];

        if (v28)
        {
          identifier2 = [v19 identifier];
          [dictionary setObject:v28 forKeyedSubscript:identifier2];
        }

        identifier3 = [v20 identifier];
        v31 = [tTTextStorage copyDataForUTI:identifier3 range:rangeValue persistenceHelper:{v26, persistenceHelper}];

        if (v31)
        {
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v31 encoding:4];
          identifier4 = [v20 identifier];
          [dictionary setObject:v32 forKeyedSubscript:identifier4];
        }

        identifier5 = [v58 identifier];
        v35 = [tTTextStorage copyDataForUTI:identifier5 range:rangeValue persistenceHelper:{v26, persistenceHelper}];

        if (v35)
        {
          identifier6 = [v58 identifier];
          [dictionary setObject:v35 forKeyedSubscript:identifier6];
        }

        identifier7 = [v56 identifier];
        v38 = [tTTextStorage copyDataForUTI:identifier7 range:rangeValue persistenceHelper:{v26, persistenceHelper}];

        if (v38)
        {
          identifier8 = [v56 identifier];
          [dictionary setObject:v38 forKeyedSubscript:identifier8];
        }

        v40 = [tTTextStorage copyDataForUTI:v55 range:rangeValue persistenceHelper:{v26, persistenceHelper}];
        if (v40)
        {
          [dictionary setObject:v40 forKeyedSubscript:v55];
        }

        data = [MEMORY[0x277CBEA90] data];
        [dictionary setObject:data forKeyedSubscript:@"iOS rich content paste pasteboard type"];

        v42 = [dictionary copy];
        [v61 addObject:v42];

        v19 = v59;
        v20 = v57;
      }

      v62 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v62);
  }

  v43 = MEMORY[0x277D75810];
  _dataOwnerForCopy = [(ICEditingTextView *)selfCopy _dataOwnerForCopy];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __53__ICEditingTextView__getPasteboardItemFromSelection___block_invoke;
  v65[3] = &unk_2781AEEC0;
  v66 = v61;
  v67 = selectionCopy;
  v45 = v61;
  v46 = selectionCopy;
  [v43 _performAsDataOwner:_dataOwnerForCopy block:v65];
  if (selectionContainsDDResultAttribute)
  {
    [(ICEditingTextView *)selfCopy ic_startDataDetectors];
  }

  if (v47 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICEditingTextView *)selfCopy setSelectedRange:v47, v49];
  }
}

void __53__ICEditingTextView__getPasteboardItemFromSelection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)copy:(id)copy
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

- (void)cut:(id)cut
{
  cutCopy = cut;
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v7 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__ICEditingTextView_cut___block_invoke;
  v9[3] = &unk_2781AD1E8;
  v9[4] = self;
  v10 = cutCopy;
  v8 = cutCopy;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:1 selectedRange:selectedRange completionHandler:v7, v9];
}

uint64_t __25__ICEditingTextView_cut___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reallyCut:*(result + 40)];
  }

  return result;
}

- (void)_reallyCut:(id)cut
{
  cutCopy = cut;
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
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v6 = MEMORY[0x277D75810];
  _dataOwnerForCopy = [(ICEditingTextView *)self _dataOwnerForCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__ICEditingTextView__reallyCut___block_invoke_2;
  v16[3] = &unk_2781ABEB8;
  v16[4] = self;
  v8 = cutCopy;
  v17 = v8;
  [v6 _performAsDataOwner:_dataOwnerForCopy block:v16];
  v9 = MEMORY[0x277D75810];
  _dataOwnerForCopy2 = [(ICEditingTextView *)self _dataOwnerForCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__ICEditingTextView__reallyCut___block_invoke_3;
  v12[3] = &unk_2781AF340;
  v11 = generalPasteboard;
  selfCopy = self;
  v15 = v19;
  v13 = v11;
  [v9 _performAsDataOwner:_dataOwnerForCopy2 block:v12];

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

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  string = [textCopy string];
  v6 = [(ICEditingTextView *)self willInsertText:string];
  v8 = v7;

  textController = [(ICEditingTextView *)self textController];
  authorHighlightsController = [textController authorHighlightsController];

  selectedRange = [(ICEditingTextView *)self selectedRange];
  v13 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ICEditingTextView_insertAttributedText___block_invoke;
  v16[3] = &unk_2781AF368;
  v17 = authorHighlightsController;
  v18 = textCopy;
  selfCopy = self;
  v20 = v6;
  v21 = v8;
  v14 = textCopy;
  v15 = authorHighlightsController;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:2 selectedRange:selectedRange completionHandler:v13, v16];
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

- (void)insertText:(id)text
{
  textCopy = text;
  v5 = [(ICEditingTextView *)self willInsertText:textCopy];
  v7 = v6;
  textController = [(ICEditingTextView *)self textController];
  authorHighlightsController = [textController authorHighlightsController];

  selectedRange = [(ICEditingTextView *)self selectedRange];
  v12 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__ICEditingTextView_insertText___block_invoke;
  v15[3] = &unk_2781AF368;
  v16 = authorHighlightsController;
  v17 = textCopy;
  selfCopy = self;
  v19 = v5;
  v20 = v7;
  v13 = textCopy;
  v14 = authorHighlightsController;
  [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:2 selectedRange:selectedRange completionHandler:v12, v15];
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

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if ([(ICEditingTextView *)self selectedRangeBeforeMarking]== 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedRange = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self setSelectedRangeBeforeMarking:selectedRange, v9];
  }

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v11 = ICDynamicCast();
  [v11 setIsTypingOrMarkingText:1];

  v14.receiver = self;
  v14.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v14 setMarkedText:textCopy selectedRange:location, length];

  objc_opt_class();
  textStorage2 = [(ICEditingTextView *)self textStorage];
  v13 = ICDynamicCast();
  [v13 setIsTypingOrMarkingText:0];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v19[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if ([(ICEditingTextView *)self selectedRangeBeforeMarking]== 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedRange = [(ICEditingTextView *)self selectedRange];
    [(ICEditingTextView *)self setSelectedRangeBeforeMarking:selectedRange, v9];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = @"ICEditingTextViewWillSetMarkedTextNotificationMarkedTextKey";
  v18[1] = @"ICEditingTextViewWillSetMarkedTextNotificationSelectedRangeKey";
  v19[0] = textCopy;
  v11 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [defaultCenter postNotificationName:@"ICEditingTextViewWillSetMarkedTextNotification" object:self userInfo:v12];

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v14 = ICDynamicCast();
  [v14 setIsTypingOrMarkingText:1];

  v17.receiver = self;
  v17.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v17 setAttributedMarkedText:textCopy selectedRange:location, length];
  objc_opt_class();

  textStorage2 = [(ICEditingTextView *)self textStorage];
  v16 = ICDynamicCast();
  [v16 setIsTypingOrMarkingText:0];
}

- (void)unmarkText
{
  editorController = [(ICEditingTextView *)self editorController];
  calculateRecognitionController = [editorController calculateRecognitionController];
  [calculateRecognitionController discardPreviewedResult];

  ic_markedTextRange = [(ICEditingTextView *)self ic_markedTextRange];
  v7 = v6;
  textStorage = [(ICEditingTextView *)self textStorage];
  v35 = ic_markedTextRange;
  v9 = [textStorage attributedSubstringFromRange:{ic_markedTextRange, v7}];
  string = [v9 string];

  [(ICEditingTextView *)self setSelectedRangeBeforeMarking:0x7FFFFFFFFFFFFFFFLL, 0];
  objc_opt_class();
  textStorage2 = [(ICEditingTextView *)self textStorage];
  v12 = ICDynamicCast();
  [v12 setIsTypingOrMarkingText:1];

  v36.receiver = self;
  v36.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v36 unmarkText];
  objc_opt_class();
  textStorage3 = [(ICEditingTextView *)self textStorage];
  v14 = ICDynamicCast();
  [v14 setIsTypingOrMarkingText:0];

  objc_opt_class();
  textStorage4 = [(ICEditingTextView *)self textStorage];
  v16 = ICDynamicCast();

  editorController2 = [(ICEditingTextView *)self editorController];
  mentionsController = [editorController2 mentionsController];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v21 = v20;
  editorController3 = [(ICEditingTextView *)self editorController];
  note = [editorController3 note];
  BYTE1(v33) = [(ICEditingTextView *)self languageHasSpaces];
  LOBYTE(v33) = 0;
  LOBYTE(selectedRange) = [mentionsController checkForMentionInEditedRange:selectedRange ofTextStorage:v21 note:v16 textView:note allowAutoExplicitMention:self isEndingEditing:1 languageHasSpaces:v33 parentAttachment:0];

  if ((selectedRange & 1) == 0)
  {
    editorController4 = [(ICEditingTextView *)self editorController];
    hashtagController = [editorController4 hashtagController];
    selectedRange2 = [(ICEditingTextView *)self selectedRange];
    v28 = v27;
    editorController5 = [(ICEditingTextView *)self editorController];
    note2 = [editorController5 note];
    BYTE1(v34) = [(ICEditingTextView *)self languageHasSpaces];
    LOBYTE(v34) = 0;
    [hashtagController checkForHashtagInEditedRange:selectedRange2 ofTextStorage:v28 note:v16 textView:note2 allowAutoExplicitHashtag:self isEndingEditing:1 languageHasSpaces:v34 parentAttachment:0];
  }

  editorController6 = [(ICEditingTextView *)self editorController];
  calculateRecognitionController2 = [editorController6 calculateRecognitionController];
  [calculateRecognitionController2 didUnmarkString:string atRange:{v35, v7}];
}

- (void)deleteBackward
{
  v31[1] = *MEMORY[0x277D85DE8];
  editorController = [(ICEditingTextView *)self editorController];
  calculateRecognitionController = [editorController calculateRecognitionController];
  [calculateRecognitionController discardPreviewedResult];

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v6 = ICDynamicCast();

  selectedTextRange = [(ICEditingTextView *)self selectedTextRange];
  v8 = [(ICEditingTextView *)self ic_characterRangeFromTextRange:selectedTextRange];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    textController = [v6 attribute:*MEMORY[0x277D35DA8] atIndex:v8 effectiveRange:0];
    uuid = [textController uuid];
    if (uuid)
    {
      outlineController = [v6 outlineController];
      uuid2 = [textController uuid];
      v9 = [outlineController isUUIDCollapsed:uuid2];
    }

    else
    {
      v9 = 0;
    }

    uuid3 = [textController uuid];
    if (uuid3)
    {
      v15 = uuid3;
      outlineController2 = [v6 outlineController];
      uuid4 = [textController uuid];
      v18 = [outlineController2 isUUIDHidden:uuid4];

      if (v18)
      {
        outlineController3 = [v6 outlineController];
        uuid5 = [textController uuid];
        v21 = [outlineController3 closestVisibleAncestorForUUID:uuid5];

        if (v21)
        {
          outlineController4 = [v6 outlineController];
          v23 = MEMORY[0x277CBEB98];
          v31[0] = v21;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
          v25 = [v23 setWithArray:v24];
          [outlineController4 expandUUIDs:v25];
        }

        goto LABEL_18;
      }
    }
  }

  textController = [(ICEditingTextView *)self textController];
  selectedTextRange2 = [(ICEditingTextView *)self selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if ((isEmpty & 1) == 0 && !v9)
  {
    if ([textController deleteWordBackwardForSpecialCasesInTextView:self])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (([textController deleteBackwardForSpecialCasesInTextView:self] & 1) == 0)
  {
LABEL_17:
    selectedRange = [(ICEditingTextView *)self selectedRange];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __35__ICEditingTextView_deleteBackward__block_invoke;
    v30[3] = &unk_2781AC6F0;
    v30[4] = self;
    v30[5] = selectedRange;
    v30[6] = v29;
    [(ICEditingTextView *)self showRemoveAttachmentAlertIfNecessaryForOperation:0 selectedRange:selectedRange completionHandler:v29, v30];
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

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  if (notify)
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

- (void)_removeDrawingAttachment:(id)attachment withView:(id)view forDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  attachmentCopy = attachment;
  viewCopy = view;
  if (deletionCopy)
  {
    objc_opt_class();
    v10 = ICCheckedDynamicCast();
    attachment = [v10 attachment];
    v12 = [MEMORY[0x277CBEA60] ic_arrayFromNonNilObject:attachment];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__ICEditingTextView__removeDrawingAttachment_withView_forDeletion___block_invoke;
    v14[3] = &unk_2781AD198;
    v15 = attachmentCopy;
    v16 = viewCopy;
    selfCopy = self;
    [(ICEditingTextView *)self showDeleteInlineDrawingAlertWithType:1 attachments:v12 completionHandler:v14];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v13 _removeDrawingAttachment:attachmentCopy withView:viewCopy forDeletion:0];
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

- (void)_insertDrawing:(id)drawing
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  drawingCopy = drawing;
  [(ICEditingTextView *)&v5 _insertDrawing:self];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:4 sender:drawingCopy, v5.receiver, v5.super_class];
}

- (void)select:(id)select
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  selectCopy = select;
  [(ICEditingTextView *)&v5 select:selectCopy];
  [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:1 sender:selectCopy, v5.receiver, v5.super_class];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 selectAll:allCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICEditingTextView *)self informDelegateOfAnalyticsCalloutBarButtonActionOfType:2 sender:allCopy];
  }
}

- (id)typingAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedTypingAttributes = [(ICEditingTextView *)selfCopy cachedTypingAttributes];
  typingAttributes = cachedTypingAttributes;
  if (!cachedTypingAttributes)
  {
    v7.receiver = selfCopy;
    v7.super_class = ICEditingTextView;
    typingAttributes = [(ICEditingTextView *)&v7 typingAttributes];
  }

  [(ICEditingTextView *)selfCopy setCachedTypingAttributes:typingAttributes];
  if (!cachedTypingAttributes)
  {
  }

  cachedTypingAttributes2 = [(ICEditingTextView *)selfCopy cachedTypingAttributes];
  objc_sync_exit(selfCopy);

  return cachedTypingAttributes2;
}

- (void)setTypingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!attributesCopy)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((typingAttributes) != nil)" functionName:"-[ICEditingTextView setTypingAttributes:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "typingAttributes"}];
  }

  objc_opt_class();
  textStorage = [(ICEditingTextView *)selfCopy textStorage];
  v7 = ICDynamicCast();
  isEditing = [v7 isEditing];

  if (isEditing)
  {
    [(ICEditingTextView *)selfCopy setPendingTypingAttributes:attributesCopy];
  }

  else
  {
    [(ICEditingTextView *)selfCopy setPendingTypingAttributes:0];
    [(ICEditingTextView *)selfCopy setCachedTypingAttributes:attributesCopy];
    v9.receiver = selfCopy;
    v9.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v9 setTypingAttributes:attributesCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)internalTypingAttributes
{
  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  typingAttributes = [(ICEditingTextView *)&v4 typingAttributes];

  return typingAttributes;
}

- (void)setInternalTypingAttributes:(id)attributes
{
  v3.receiver = self;
  v3.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v3 setTypingAttributes:attributes];
}

- (void)applyPendingTypingAttributesIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingTypingAttributes = [(ICEditingTextView *)selfCopy pendingTypingAttributes];

  if (pendingTypingAttributes)
  {
    [(ICEditingTextView *)selfCopy setPendingTypingAttributes:0];
    pendingTypingAttributes2 = [(ICEditingTextView *)selfCopy pendingTypingAttributes];
    [(ICEditingTextView *)selfCopy setCachedTypingAttributes:pendingTypingAttributes2];

    pendingTypingAttributes3 = [(ICEditingTextView *)selfCopy pendingTypingAttributes];
    v6.receiver = selfCopy;
    v6.super_class = ICEditingTextView;
    [(ICEditingTextView *)&v6 setTypingAttributes:pendingTypingAttributes3];
  }

  objc_sync_exit(selfCopy);
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

- (BOOL)hasFullWidthTextAttachmentAtCaretLocation:(int64_t)location
{
  if (location < 0)
  {
    return 0;
  }

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v6 = [tTTextStorage length];

  if (v6 <= location)
  {
    return 0;
  }

  objc_opt_class();
  tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
  v8 = [tTTextStorage2 attribute:*MEMORY[0x277D74060] atIndex:location longestEffectiveRange:0 inRange:{location, 1}];
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

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  beginningOfDocument = [(ICEditingTextView *)self beginningOfDocument];
  v6 = [(ICEditingTextView *)self offsetFromPosition:beginningOfDocument toPosition:positionCopy];

  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  v8 = [tTTextStorage logicalRangeForLocation:v6];
  v10 = v8 + v9;
  if (v6 == v8 + v9)
  {
    editorController = [(ICEditingTextView *)self editorController];
    textController = [editorController textController];
    typingAttributes = [(ICEditingTextView *)self typingAttributes];
    v14 = [textController typingAttributesForRange:v6 forSelectionChange:0 currentTypingAttributes:0 inTextStorage:{typingAttributes, tTTextStorage}];

    typingAttributes2 = [(ICEditingTextView *)self typingAttributes];
    LOBYTE(textController) = [v14 isEqual:typingAttributes2];

    if ((textController & 1) == 0)
    {
      [(ICEditingTextView *)self setTypingAttributes:v14];
    }
  }

  v95.receiver = self;
  v95.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v95 caretRectForPosition:positionCopy];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = MEMORY[0x277D74118];
  v25 = 0x277D74000;
  if (v6 == v10)
  {
    styler = [tTTextStorage styler];
    typingAttributes3 = [(ICEditingTextView *)self typingAttributes];
    v28 = [typingAttributes3 objectForKeyedSubscript:*v24];

    if (v28)
    {
      v29 = v24;
      baseWritingDirection = [v28 baseWritingDirection];
      typingAttributes4 = [(ICEditingTextView *)self typingAttributes];
      v32 = [typingAttributes4 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];

      if (v32)
      {
        v33 = MEMORY[0x277D36968];
        selectedRange = [(ICEditingTextView *)self selectedRange];
        [v33 indentForStyle:v32 range:selectedRange attributedString:v35 textView:{tTTextStorage, self}];
      }

      else
      {
        [v28 firstLineHeadIndent];
      }

      v48 = v36;

      v46 = baseWritingDirection == -1;
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
    string = [tTTextStorage string];
    selectedRange2 = [(ICEditingTextView *)self selectedRange];
    [string getParagraphStart:&v94 end:0 contentsEnd:&v93 forRange:{selectedRange2, v51}];

    if (v46 && v94 == v93)
    {
      v52 = [styler keyboardLanguageForTextView:self];
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
        textContainer = [(ICEditingTextView *)self textContainer];
        [textContainer lineFragmentPadding];
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

    styler = [tTTextStorage attribute:*MEMORY[0x277D74060] atIndex:v6 - 1 longestEffectiveRange:0 inRange:{v6 - 1, 1}];
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
  ic_isRTL = [*(v25 + 584) ic_isRTL];
  textStorage = [(ICEditingTextView *)self textStorage];
  v73 = [textStorage length];

  if (v6 < v73)
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
    v75 = [textStorage2 attribute:*v24 atIndex:v6 effectiveRange:0];

    if (v75)
    {
      ic_isRTL = [v75 baseWritingDirection] == 1;
    }
  }

  [(ICEditingTextView *)self bounds];
  if (v17 >= CGRectGetMidX(v96))
  {
    v84 = v6 - (ic_isRTL ^ 1);
    if (v84 >= 0 && [(ICEditingTextView *)self hasFullWidthTextAttachmentAtCaretLocation:v84])
    {
      [(ICEditingTextView *)self bounds];
      v17 = v85 + -3.0;
    }
  }

  else
  {
    v76 = v6 - ic_isRTL;
    if (v76 >= 0)
    {
      if ([(ICEditingTextView *)self hasFullWidthTextAttachmentAtCaretLocation:v76])
      {
        v77 = [(ICEditingTextView *)self ink];
        _isHandwritingInk = [v77 _isHandwritingInk];

        v17 = 1.0;
        if (_isHandwritingInk)
        {
          textStorage3 = [(ICEditingTextView *)self textStorage];
          v80 = [textStorage3 attribute:*MEMORY[0x277D740A8] atIndex:v76 effectiveRange:0];

          textContainer2 = [(ICEditingTextView *)self textContainer];
          [textContainer2 textContainerOrigin];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(ICEditingTextView *)self tapGestureRecognizer];

  if (tapGestureRecognizer != beginCopy)
  {
    v15.receiver = self;
    v15.super_class = ICEditingTextView;
    v6 = [(ICEditingTextView *)&v15 gestureRecognizerShouldBegin:beginCopy];
    editorController = [(ICEditingTextView *)self editorController];
    auxiliaryResponder = [editorController auxiliaryResponder];

    if (v6)
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      if (![editorController2 isEditing] || (LOBYTE(v6) = 1, auxiliaryResponder) && auxiliaryResponder != self)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_14;
        }

        editorController2 = [(ICEditingTextView *)self linkTappedByGesture:beginCopy];
        LOBYTE(v6) = editorController2 != 0;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([beginCopy numberOfTouches] && (-[ICEditingTextView editorController](self, "editorController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "shouldIgnoreTapToStartEditingTextView:", self), v11, (v12 & 1) == 0))
  {
    v13 = [(ICEditingTextView *)self linkTappedByGesture:beginCopy];

    LOBYTE(v6) = v13 == 0;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_15:

  return v6;
}

- (void)respondToTapGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  textContainer = [(ICEditingTextView *)self textContainer];
  v5 = ICDynamicCast();
  insideSiriSnippet = [v5 insideSiriSnippet];

  if (insideSiriSnippet)
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    note = [v7 note];

    tapGestureRecognizer = [MEMORY[0x277D35DF0] appURLForNote:note];
    if (tapGestureRecognizer)
    {
      [ICExtensionSafeAPIShims openURL:tapGestureRecognizer originatingView:self completionHandler:0];
    }

    goto LABEL_9;
  }

  editorController = [(ICEditingTextView *)self editorController];
  calculateScrubberController = [editorController calculateScrubberController];
  isShowing = [calculateScrubberController isShowing];

  if (isShowing)
  {
    editorController2 = [(ICEditingTextView *)self editorController];
    calculateScrubberController2 = [editorController2 calculateScrubberController];
    [calculateScrubberController2 hideScrubber];
  }

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  note = ICDynamicCast();

  if ([note isMarkingTextForHeadingRename])
  {
    [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:1];
    goto LABEL_10;
  }

  tapGestureRecognizer = [(ICEditingTextView *)self tapGestureRecognizer];
  if (tapGestureRecognizer != gestureCopy)
  {
    goto LABEL_9;
  }

  state = [gestureCopy state];

  if (state == 3)
  {
    editorController3 = [(ICEditingTextView *)self editorController];
    tapGestureRecognizer = [editorController3 note];

    if (tapGestureRecognizer)
    {
      if ([gestureCopy numberOfTouches])
      {
        icDelegate = [(ICBaseTextView *)self icDelegate];
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) == 0 || (-[ICBaseTextView icDelegate](self, "icDelegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 handleTapGestureForAttribution:gestureCopy], v20, (v21 & 1) == 0))
        {
          calculateRecognitionController = [(ICEditingTextView *)self calculateRecognitionController];
          isPreviewingResult = [calculateRecognitionController isPreviewingResult];

          if (isPreviewingResult)
          {
            calculateRecognitionController2 = [(ICEditingTextView *)self calculateRecognitionController];
            [calculateRecognitionController2 discardPreviewedResult];
          }

          else
          {
            if ([tapGestureRecognizer isEditable])
            {
              icDelegate2 = [(ICBaseTextView *)self icDelegate];
              v27 = objc_opt_respondsToSelector();

              if ((v27 & 1) == 0 || (-[ICBaseTextView icDelegate](self, "icDelegate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 shouldStartEditingForTapGesture:gestureCopy], v28, v29))
              {
                [(ICEditingTextView *)self startEditingForTapGesture:gestureCopy];
              }

              goto LABEL_9;
            }

            [(ICEditingTextView *)self selectedRange];
            if (v30)
            {
              [(ICEditingTextView *)self setSelectedTextRange:0];
            }

            if (![tapGestureRecognizer isDeletedOrInTrash])
            {
              goto LABEL_9;
            }

            calculateRecognitionController2 = [(ICEditingTextView *)self editorController];
            [calculateRecognitionController2 showRecoverNoteAlert];
          }
        }
      }
    }

    else
    {
      editorController4 = [(ICEditingTextView *)self editorController];
      [editorController4 addNote:self];
    }

LABEL_9:
  }

LABEL_10:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  icDelegate = [(ICBaseTextView *)self icDelegate];
  if (objc_opt_respondsToSelector())
  {
    icDelegate2 = [(ICBaseTextView *)self icDelegate];
    v10 = [icDelegate2 shouldBlockHitTestOnTextView:self event:eventCopy];

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
  v11 = [(ICEditingTextView *)&v13 hitTest:eventCopy withEvent:x, y];
LABEL_6:

  return v11;
}

- (id)linkTappedByGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy numberOfTouches])
  {
    [gestureCopy locationOfTouch:0 inView:self];
    v10 = 0;
    [(ICEditingTextView *)self distanceFromContentToGivenPoint:&v10 charIndexAtPoint:?];
    v5 = 0;
    if (v6 < 28.2842712 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      textStorage = [(ICEditingTextView *)self textStorage];
      v5 = [textStorage attribute:*MEMORY[0x277D740E8] atIndex:v10 effectiveRange:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)distanceFromContentToGivenPoint:(CGPoint)point charIndexAtPoint:(unint64_t *)atPoint
{
  if (atPoint)
  {
    *atPoint = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(ICEditingTextView *)self closestPositionToPoint:point.x, point.y];
  if (v6)
  {
    beginningOfDocument = [(ICEditingTextView *)self beginningOfDocument];
    v8 = [(ICEditingTextView *)self offsetFromPosition:beginningOfDocument toPosition:v6];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [(ICEditingTextView *)self ic_rectForRange:v8, 0];
    }

    else
    {
      objc_opt_class();
      layoutManager = [(ICEditingTextView *)self layoutManager];
      v11 = ICDynamicCast();

      v12 = [v11 glyphIndexForCharacterAtIndex:v8];
      textContainer = [(ICEditingTextView *)self textContainer];
      [v11 boundingRectForGlyphRange:v12 inTextContainer:{0, textContainer}];
    }

    textContainer2 = [(ICEditingTextView *)self textContainer];
    [textContainer2 textContainerOrigin];

    UIDistanceBetweenPointAndRect();
    v9 = v15;
    if (atPoint)
    {
      *atPoint = v8;
    }
  }

  else
  {
    v9 = 1.79769313e308;
  }

  return v9;
}

- (void)setIsDraggingChecklistItem:(BOOL)item
{
  if (self->_isDraggingChecklistItem != item)
  {
    self->_isDraggingChecklistItem = item;
    if (item)
    {
      v4 = objc_alloc_init(MEMORY[0x277D75A10]);
      [(ICEditingTextView *)self setChecklistDragFeedbackGenerator:v4];

      checklistDragFeedbackGenerator = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
      [checklistDragFeedbackGenerator prepare];

      checklistDragFeedbackGenerator2 = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
      [checklistDragFeedbackGenerator2 selectionChanged];
    }

    else
    {

      [(ICEditingTextView *)self setChecklistDragFeedbackGenerator:0];
    }
  }
}

- (void)setIsDraggingOverChecklistItem:(BOOL)item
{
  if (self->_isDraggingOverChecklistItem != item)
  {
    self->_isDraggingOverChecklistItem = item;
    if (!item)
    {
      [(ICEditingTextView *)self setInhibitNextDropCursorUpdateAnimation:1];
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  -[ICEditingTextView setTouchIsPointer:](self, "setTouchIsPointer:", [beganCopy ic_containsObjectPassingTest:&__block_literal_global_23]);
  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v4 touchesMoved:moved withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 touchesEnded:ended withEvent:event];
  [(ICEditingTextView *)self setTouchIsPointer:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(ICEditingTextView *)self setTouchIsPointer:0];
}

- (void)beginSelectionChange
{
  v6.receiver = self;
  v6.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v6 beginSelectionChange];
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController beginBlockingMergeForReason:0 textView:self];
}

- (void)endSelectionChange
{
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  documentMergeController = [note documentMergeController];
  [documentMergeController endBlockingMergeForReason:0 textView:self];

  v6.receiver = self;
  v6.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v6 endSelectionChange];
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(ICEditingTextView *)self distanceFromContentToGivenPoint:0 charIndexAtPoint:?];
  if (v6 >= 28.2842712)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  return [(ICEditingTextView *)&v8 willInteractWithLinkAtPoint:x, y];
}

- (void)speakAccessibilityAutoListItemIfNecessaryForInsertedText:(id)text
{
  textCopy = text;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    selectedRange = [(ICEditingTextView *)self selectedRange];
    textStorage = [(ICEditingTextView *)self textStorage];
    if (selectedRange >= [textStorage length])
    {
LABEL_19:

      goto LABEL_20;
    }

    v7 = [textCopy length];

    if (v7 == 1)
    {
      textStorage = [(ICEditingTextView *)self textStorage];
      v8 = [textStorage attributesAtIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
      if (![v9 isList])
      {
        goto LABEL_18;
      }

      v10 = [textCopy characterAtIndex:0];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      LODWORD(v10) = [newlineCharacterSet characterIsMember:v10];

      if (!v10)
      {
        goto LABEL_18;
      }

      UIAccessibilityPostNotification(*MEMORY[0x277D74050], self);
      style = [v9 style];
      v13 = 0;
      if (style > 101)
      {
        if (style == 102)
        {
          v18 = MEMORY[0x277CCACA8];
          v15 = [v8 objectForKeyedSubscript:*MEMORY[0x277D36018]];
          v17 = [v18 localizedStringWithFormat:@"%lu", objc_msgSend(v15, "unsignedIntegerValue")];
          goto LABEL_16;
        }

        if (style == 103)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = mainBundle;
          v16 = @"checklist";
          goto LABEL_14;
        }
      }

      else
      {
        if (style == 100)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = mainBundle;
          v16 = @"bullet";
          goto LABEL_14;
        }

        if (style == 101)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = mainBundle;
          v16 = @"dash";
LABEL_14:
          v17 = [mainBundle localizedStringForKey:v16 value:&stru_282757698 table:0];
LABEL_16:
          v13 = v17;
        }
      }

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle2 localizedStringForKey:@"New list item" value:&stru_282757698 table:0];

      v22 = __ICAccessibilityStringForVariables();
      v21 = v22;
      dispatchMainAfterDelay();

LABEL_18:
      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)buildMenuWithBuilder:(id)builder
{
  v151[4] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
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
  [(ICEditingTextView *)&v144 buildMenuWithBuilder:builderCopy];
  v120 = *MEMORY[0x277D76D70];
  [builderCopy replaceChildrenOfMenuForIdentifier:? fromChildrenBlock:?];
  v7 = MEMORY[0x277D75370];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle localizedStringForKey:@"Check All" value:&stru_282757698 table:0];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist.checked"];
  v130 = [v7 commandWithTitle:v9 image:v10 action:sel_checkAll_ propertyList:0];

  v11 = MEMORY[0x277D75370];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle2 localizedStringForKey:@"Uncheck All" value:&stru_282757698 table:0];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist.unchecked"];
  v129 = [v11 commandWithTitle:v13 image:v14 action:sel_uncheckAll_ propertyList:0];

  v15 = MEMORY[0x277D75370];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [mainBundle3 localizedStringForKey:@"Move Checked to Bottom" value:&stru_282757698 table:0];
  v18 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.to.line"];
  v128 = [v15 commandWithTitle:v17 image:v18 action:sel_moveCheckedToBottom_ propertyList:0];

  v19 = MEMORY[0x277D75370];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle4 localizedStringForKey:@"Delete Checked" value:&stru_282757698 table:0];
  v22 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
  v135 = [v19 commandWithTitle:v21 image:v22 action:sel_removeChecked_ propertyList:0];

  [v135 setAttributes:{objc_msgSend(v135, "attributes") | 2}];
  v23 = MEMORY[0x277D75710];
  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v25 = [mainBundle5 localizedStringForKey:@"Checklist" value:&stru_282757698 table:0];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist"];
  v151[0] = v130;
  v151[1] = v129;
  v151[2] = v128;
  v151[3] = v135;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  v123 = [v23 menuWithTitle:v25 image:v26 identifier:0 options:0 children:v27];

  v28 = MEMORY[0x277D75370];
  mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [mainBundle6 localizedStringForKey:@"Decrease" value:&stru_282757698 table:0];
  v31 = [MEMORY[0x277D755B8] systemImageNamed:@"decrease.indent"];
  v134 = [v28 commandWithTitle:v30 image:v31 action:sel_decreaseIndentation_ propertyList:0];

  v32 = MEMORY[0x277D75370];
  mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
  v34 = [mainBundle7 localizedStringForKey:@"Increase" value:&stru_282757698 table:0];
  v35 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v133 = [v32 commandWithTitle:v34 image:v35 action:sel_increaseIndentation_ propertyList:0];

  [v134 setAttributes:{objc_msgSend(v134, "attributes") | 8}];
  [v133 setAttributes:{objc_msgSend(v133, "attributes") | 8}];
  v36 = MEMORY[0x277D75710];
  mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [mainBundle8 localizedStringForKey:@"Indentation" value:&stru_282757698 table:0];
  v39 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v150[0] = v133;
  v150[1] = v134;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:2];
  v124 = [v36 menuWithTitle:v38 image:v39 identifier:0 options:0 children:v40];

  editorController = [(ICEditingTextView *)self editorController];
  calculateGraphingController = [editorController calculateGraphingController];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v127 = [calculateGraphingController insertionDecisionForExpressionsInRange:{selectedRange, v44}];

  makeMenu = [v127 makeMenu];
  v45 = MEMORY[0x277D75370];
  mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
  v47 = [mainBundle9 localizedStringForKey:@"Convert to Text" value:&stru_282757698 table:0];
  v48 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.replace"];
  v126 = [v45 commandWithTitle:v47 image:v48 action:sel_convertToText_ propertyList:0];

  v49 = MEMORY[0x277D75370];
  mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
  v51 = [mainBundle10 localizedStringForKey:@"Convert to Tag" value:&stru_282757698 table:0];
  v52 = [MEMORY[0x277D755B8] systemImageNamed:@"number"];
  v131 = [v49 commandWithTitle:v51 image:v52 action:sel_convertToTag_ propertyList:0];

  v53 = MEMORY[0x277D75370];
  mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
  v55 = [mainBundle11 localizedStringForKey:@"Add to Tags" value:&stru_282757698 table:0];
  v56 = [MEMORY[0x277D755B8] systemImageNamed:@"number"];
  v125 = [v53 commandWithTitle:v55 image:v56 action:sel_addToTags_ propertyList:0];

  v57 = MEMORY[0x277CBEB18];
  v149[0] = v126;
  v149[1] = v131;
  v149[2] = v125;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  v59 = [v57 arrayWithArray:v58];

  editorController2 = [(ICEditingTextView *)self editorController];
  note = [editorController2 note];
  LODWORD(v58) = [note isPasswordProtected];

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
    editorController3 = [(ICEditingTextView *)self editorController];
    note2 = [editorController3 note];
    if (![note2 isEditable])
    {
LABEL_12:

      goto LABEL_13;
    }

    editorController4 = [(ICEditingTextView *)self editorController];
    note3 = [editorController4 note];
    if (![note3 isCalculateMathEnabled])
    {

      goto LABEL_12;
    }

    editorController5 = [(ICEditingTextView *)self editorController];
    note4 = [editorController5 note];
    if ([note4 isDeletedOrInTrash])
    {

      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      editorController6 = [(ICEditingTextView *)self editorController];
      note5 = [editorController6 note];
      editorController3 = [note5 calculateDocumentController];

      note2 = [editorController3 numberLiteralAtLocation:{-[ICEditingTextView selectedRange](self, "selectedRange")}];
      if (note2)
      {
        objc_initWeak(&location, self);
        v102 = MEMORY[0x277D750C8];
        mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
        v104 = [mainBundle12 localizedStringForKey:@"Adjust" value:&stru_282757698 table:0];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __42__ICEditingTextView_buildMenuWithBuilder___block_invoke_3;
        v140[3] = &unk_2781AF3F8;
        objc_copyWeak(&v142, &location);
        note2 = note2;
        v141 = note2;
        v105 = [v102 ic_actionWithTitle:v104 imageName:@"arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill" handler:v140];

        v106 = MEMORY[0x277D75710];
        v148 = v105;
        v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
        v108 = [v106 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v107];

        [builderCopy insertSiblingMenu:v108 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
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
  textContainer = [(ICEditingTextView *)self textContainer];
  v121 = ICDynamicCast();

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0)
  {
    editorController7 = [(ICEditingTextView *)self editorController];
    note6 = [editorController7 note];
    if (([note6 isSharedReadOnly] & 1) != 0 || -[ICEditingTextView selectionContainsNonLinkAttachment](self, "selectionContainsNonLinkAttachment"))
    {
    }

    else
    {
      insideSiriSnippet = [v121 insideSiriSnippet];

      if ((insideSiriSnippet & 1) == 0)
      {
        objc_initWeak(&location, self);
        if ([(ICEditingTextView *)self selectionContainsLink])
        {
          mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
          [mainBundle13 localizedStringForKey:@"Edit Link" value:&stru_282757698 table:0];
        }

        else
        {
          mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
          [mainBundle13 localizedStringForKey:@"Add Link" value:&stru_282757698 table:0];
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
          mainBundle14 = [MEMORY[0x277CCA8D8] mainBundle];
          v113 = [mainBundle14 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
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

        [builderCopy insertSiblingMenu:v117 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
        objc_destroyWeak(&v139);

        objc_destroyWeak(&location);
      }
    }
  }

  if (([(ICEditingTextView *)self ic_isInSecureWindow]& 1) != 0)
  {
    goto LABEL_22;
  }

  editorController8 = [(ICEditingTextView *)self editorController];
  note7 = [editorController8 note];
  if ([note7 isPasswordProtected])
  {
    goto LABEL_21;
  }

  editorController9 = [(ICEditingTextView *)self editorController];
  note8 = [editorController9 note];
  isSharedReadOnly = [note8 isSharedReadOnly];

  if ((isSharedReadOnly & 1) == 0)
  {
    v80 = MEMORY[0x277D75370];
    mainBundle15 = [MEMORY[0x277CCA8D8] mainBundle];
    v82 = [mainBundle15 localizedStringForKey:@"Attach File" value:&stru_282757698 table:0];
    v83 = [MEMORY[0x277D755B8] ic_systemImageNamed:@"document"];
    editorController8 = [v80 commandWithTitle:v82 image:v83 action:sel_attachFile_ propertyList:0];

    v84 = MEMORY[0x277D75710];
    v147 = editorController8;
    v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
    note7 = [v84 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v85];

    [builderCopy insertSiblingMenu:note7 beforeMenuForIdentifier:*MEMORY[0x277D76CE8]];
LABEL_21:
  }

LABEL_22:
  editorController10 = [(ICEditingTextView *)self editorController];
  note9 = [editorController10 note];
  isSharedReadOnly2 = [note9 isSharedReadOnly];

  if ((isSharedReadOnly2 & 1) == 0)
  {
    [builderCopy insertSiblingMenu:v123 afterMenuForIdentifier:*MEMORY[0x277D76CE8]];
  }

  [builderCopy insertChildMenu:v124 atEndOfMenuForIdentifier:v120];
  v89 = *MEMORY[0x277D76D30];
  if (makeMenu)
  {
    [builderCopy insertChildMenu:makeMenu atEndOfMenuForIdentifier:*MEMORY[0x277D76D30]];
  }

  [builderCopy insertChildMenu:v71 atEndOfMenuForIdentifier:v89];
  if (ICInternalSettingsShouldShowImageGenerationUI() && ([(ICEditingTextView *)self ic_isInSecureWindow]& 1) == 0)
  {
    v90 = MEMORY[0x277D75370];
    mainBundle16 = [MEMORY[0x277CCA8D8] mainBundle];
    v92 = [mainBundle16 localizedStringForKey:@"Add to Playground" value:&stru_282757698 table:0];
    v93 = [MEMORY[0x277D755B8] systemImageNamed:@"apple.image.playground"];
    v94 = [v90 commandWithTitle:v92 image:v93 action:sel_createImage_ propertyList:0];

    v95 = MEMORY[0x277D75710];
    v146 = v94;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    v97 = [v95 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v96];

    [builderCopy insertSiblingMenu:v97 afterMenuForIdentifier:*MEMORY[0x277D76CE8]];
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
  textStorage = [(ICEditingTextView *)self textStorage];
  v4 = [textStorage attribute:*MEMORY[0x277D740E8] atIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    textStorage2 = [(ICEditingTextView *)self textStorage];
    v7 = [textStorage2 attribute:*MEMORY[0x277D74060] atIndex:-[ICEditingTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v8 = ICDynamicCast();
    attachmentUTI = [v8 attachmentUTI];
    v5 = [attachmentUTI isEqualToString:*MEMORY[0x277D35D50]];
  }

  return v5;
}

- (BOOL)selectionContainsNonLinkAttachment
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  textStorage = [(ICEditingTextView *)self textStorage];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v5 = *MEMORY[0x277D74060];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ICEditingTextView_selectionContainsNonLinkAttachment__block_invoke;
  v8[3] = &unk_2781ABC80;
  v8[4] = &v9;
  [textStorage enumerateAttribute:v5 inRange:selectedRange options:v6 usingBlock:{0, v8}];

  LOBYTE(textStorage) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return textStorage;
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
  editorController = [(ICEditingTextView *)self editorController];
  presentedViewController = [editorController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    editorController2 = [(ICEditingTextView *)self editorController];
    [editorController2 showStyleSelector:0 animated:0 sender:0];
  }
}

- (void)updateKeyboardSuggestions:(id)suggestions hashtagController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  controllerCopy = controller;
  inputDelegate = [(ICEditingTextView *)self inputDelegate];
  v9 = inputDelegate;
  if (suggestionsCopy)
  {
    selfCopy = self;
    v28 = inputDelegate;
    v29 = controllerCopy;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = suggestionsCopy;
    v11 = suggestionsCopy;
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
          displayText = [v16 displayText];

          if (displayText)
          {
            v18 = MEMORY[0x277D369A8];
            displayText2 = [v16 displayText];
            displayText3 = [v16 displayText];
            ic_withHashtagPrefix = [displayText3 ic_withHashtagPrefix];
            v22 = [v18 hashtagTextSuggestionWithIdentifier:displayText2 displayText:ic_withHashtagPrefix];

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
    controllerCopy = v29;
    v23 = v29;
    v34 = v23;
    v24 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(ICEditingTextView *)selfCopy setHashtagController:v23];

    suggestionsCopy = v30;
  }

  else
  {
    [controllerCopy setIsUpdatingKeyboard:0];
    [(ICEditingTextView *)self setHashtagController:controllerCopy];
    mentionsController = [(ICEditingTextView *)self mentionsController];
    isUpdatingKeyboard = [mentionsController isUpdatingKeyboard];

    if ((isUpdatingKeyboard & 1) == 0)
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

- (void)updateKeyboardSuggestions:(id)suggestions mentionsController:(id)controller mentionString:(id)string
{
  suggestionsCopy = suggestions;
  controllerCopy = controller;
  stringCopy = string;
  if (!suggestionsCopy)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((participants) != nil)" functionName:"-[ICEditingTextView updateKeyboardSuggestions:mentionsController:mentionString:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "participants"}];
  }

  [(ICEditingTextView *)self setParticipants:suggestionsCopy];
  inputDelegate = [(ICEditingTextView *)self inputDelegate];
  if (suggestionsCopy && [suggestionsCopy count])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke;
    v26[3] = &__block_descriptor_48_e54___ICThumbnailConfiguration_16__0__CKShareParticipant_8l;
    v26[4] = 0x403C000000000000;
    v26[5] = 0x403C000000000000;
    v12 = [suggestionsCopy ic_compactMap:v26];
    objc_initWeak(&location, self);
    mEMORY[0x277D36988] = [MEMORY[0x277D36988] sharedThumbnailService];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__ICEditingTextView_updateKeyboardSuggestions_mentionsController_mentionString___block_invoke_2;
    v18[3] = &unk_2781AF468;
    objc_copyWeak(&v24, &location);
    v19 = suggestionsCopy;
    v14 = v12;
    v20 = v14;
    v21 = stringCopy;
    v15 = controllerCopy;
    v22 = v15;
    v23 = inputDelegate;
    [mEMORY[0x277D36988] thumbnailsWithConfigurations:v14 completion:v18];

    [(ICEditingTextView *)self setMentionsController:v15];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    [controllerCopy setIsUpdatingKeyboard:0];
    [(ICEditingTextView *)self setMentionsController:controllerCopy];
    hashtagController = [(ICEditingTextView *)self hashtagController];
    isUpdatingKeyboard = [hashtagController isUpdatingKeyboard];

    if ((isUpdatingKeyboard & 1) == 0)
    {
      [inputDelegate setSuggestions:0];
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

- (void)showWritingTools:(id)tools
{
  toolsCopy = tools;
  icDelegate = [(ICBaseTextView *)self icDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    icDelegate2 = [(ICBaseTextView *)self icDelegate];
    [icDelegate2 startEditingForWritingTools];
  }

  v8.receiver = self;
  v8.super_class = ICEditingTextView;
  [(ICEditingTextView *)&v8 showWritingTools:toolsCopy];
}

- (void)calculateRecognitionController:(id)controller didUpdateTextSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  controllerCopy = controller;
  inputDelegate = [(ICEditingTextView *)self inputDelegate];
  [inputDelegate setSuggestions:suggestionsCopy];

  [(ICEditingTextView *)self setCalculateRecognitionController:controllerCopy];
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    cellDelegate = [v4 cellDelegate];
    attachment = [cellDelegate attachment];
  }

  else
  {
    attachment = 0;
  }

  objc_opt_class();
  v7 = ICCheckedDynamicCast();
  v8 = v7;
  if (v7)
  {
    type = [v7 type];
    if (type > 2)
    {
      if (type != 3)
      {
        if (type == 4)
        {
          calculateRecognitionController = [(ICEditingTextView *)self calculateRecognitionController];
          selectedRange = [(ICEditingTextView *)self selectedRange];
          v12 = calculateRecognitionController;
          v14 = v18;
          v15 = 0;
        }

        else
        {
          if (type != 5)
          {
            goto LABEL_19;
          }

          calculateRecognitionController = [(ICEditingTextView *)self calculateRecognitionController];
          selectedRange = [(ICEditingTextView *)self selectedRange];
          v12 = calculateRecognitionController;
          v14 = v13;
          v15 = 1;
        }

        [v12 commitPreviewedResultAtRange:selectedRange asLiteral:{v14, v15}];
        goto LABEL_18;
      }

      calculateRecognitionController = [(ICEditingTextView *)self mentionsController];
      inputText = [v8 inputText];
      identifier = [v8 identifier];
      [calculateRecognitionController insertMentionWithText:inputText uuidString:identifier parentAttachment:attachment];
    }

    else
    {
      if (type < 2)
      {
        calculateRecognitionController = [(ICEditingTextView *)self calculateRecognitionController];
        [calculateRecognitionController discardPreviewedResult];
LABEL_18:

        goto LABEL_19;
      }

      if (type != 2)
      {
        goto LABEL_19;
      }

      calculateRecognitionController = [(ICEditingTextView *)self hashtagController];
      inputText = [suggestionCopy displayText];
      [calculateRecognitionController insertHashtagWithText:inputText viaAutoComplete:1 parentAttachment:attachment];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)endHeadingRenameCommittingMarkedText:(BOOL)text
{
  textCopy = text;
  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v12 = ICDynamicCast();

  if ([v12 isMarkingTextForHeadingRename])
  {
    ic_markedTextRange = [(ICEditingTextView *)self ic_markedTextRange];
    v8 = v7;
    markedTextRange = [(ICEditingTextView *)self markedTextRange];

    if (markedTextRange)
    {
      if (textCopy)
      {
        v10 = [v12 attributedSubstringFromRange:{ic_markedTextRange, v8}];
        string = [v10 string];
        [(ICEditingTextView *)self setMarkedText:string selectedRange:0x7FFFFFFFFFFFFFFFLL, 0];

        [(ICEditingTextView *)self unmarkText];
      }

      else
      {
        [(ICEditingTextView *)self unmarkText];
        [v12 deleteCharactersInRange:{ic_markedTextRange, v8}];
      }
    }

    [v12 setIsMarkingTextForHeadingRename:0];
  }
}

- (_NSRange)willInsertText:(id)text
{
  [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:0];
  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v5 = ICDynamicCast();

  [v5 setIsTypingOrMarkingText:1];
  selectedRange = [(ICEditingTextView *)self selectedRange];
  v8 = v7;
  markedTextRange = [(ICEditingTextView *)self markedTextRange];

  if (markedTextRange)
  {
    selectedRange = [(ICEditingTextView *)self selectedRangeBeforeMarking];
    v8 = v10;
  }

  textController = [(ICEditingTextView *)self textController];
  [textController notifyInlineAttachmentsDeletedInRange:selectedRange ofTextStorage:{v8, v5}];

  v12 = selectedRange;
  v13 = v8;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)didInsertText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  textController = [(ICEditingTextView *)self textController];
  editorController = [(ICEditingTextView *)self editorController];
  hashtagController = [editorController hashtagController];

  editorController2 = [(ICEditingTextView *)self editorController];
  mentionsController = [editorController2 mentionsController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = ICDynamicCast();
    [hashtagController setHashtagTableKeyboardDelegate:v12];

    objc_opt_class();
    v13 = ICDynamicCast();
    [mentionsController setMentionsTableKeyboardDelegate:v13];

    objc_opt_class();
    editorController3 = ICDynamicCast();
    cellDelegate = [editorController3 cellDelegate];
    attachment = [cellDelegate attachment];

    LOBYTE(v21) = [(ICEditingTextView *)self languageHasSpaces];
    [textController insertedText:textCopy replacementRange:location inTextView:length hashtagController:self mentionsController:hashtagController languageHasSpaces:mentionsController parentAttachment:{v21, attachment}];
  }

  else
  {
    objc_opt_class();
    v17 = ICDynamicCast();
    [hashtagController setHashtagKeyboardDelegate:v17];

    objc_opt_class();
    v18 = ICDynamicCast();
    [mentionsController setMentionsKeyboardDelegate:v18];

    [textController insertedText:textCopy replacementRange:location inTextView:length languageHasSpaces:{self, -[ICEditingTextView languageHasSpaces](self, "languageHasSpaces")}];
    editorController3 = [(ICEditingTextView *)self editorController];
    attachment = [editorController3 calculateRecognitionController];
    [attachment didInsertString:textCopy atRange:{location, length}];
  }

  objc_opt_class();
  textStorage = [(ICEditingTextView *)self textStorage];
  v20 = ICDynamicCast();

  [v20 setIsTypingOrMarkingText:0];
  [(ICEditingTextView *)self updateTextViewForDidChange];
  [(ICEditingTextView *)self speakAccessibilityAutoListItemIfNecessaryForInsertedText:textCopy];
}

- (void)informDelegateOfAnalyticsCalloutBarButtonActionOfType:(int64_t)type sender:(id)sender
{
  v6 = [(ICBaseTextView *)self icDelegate:type];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    icDelegate = [(ICBaseTextView *)self icDelegate];
    [icDelegate didInvokeAnalyticsCalloutBarButtonActionOfType:type];
  }
}

- (void)informDelegateOfPastedAttributedString:(id)string
{
  stringCopy = string;
  icDelegate = [(ICBaseTextView *)self icDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    icDelegate2 = [(ICBaseTextView *)self icDelegate];
    [icDelegate2 didInvokePasteWithAttributedString:stringCopy];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v9 = self->_eventReporter;

  return v9;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
}

- (void)keyboardLocaleChanged:(id)changed
{
  textInputMode = [(ICEditingTextView *)self textInputMode];
  v9 = textInputMode;
  if (textInputMode)
  {
    v5 = MEMORY[0x277CBEAF8];
    primaryLanguage = [textInputMode primaryLanguage];
    v7 = [v5 localeWithLocaleIdentifier:primaryLanguage];
    languageCode = [v7 languageCode];

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

- (void)showRemoveAttachmentAlertIfNecessaryForOperation:(unint64_t)operation selectedRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v60 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
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
          v21 = array;
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
            audioDocument = [v23 audioDocument];
            isCallRecording = [audioDocument isCallRecording];

            v18 = v22;
            v14 = v54;
            if ((isCallRecording & 1) == 0)
            {
              v21 = array2;
              goto LABEL_15;
            }
          }
        }

        if ([v20 attachmentType] == 4)
        {
          sharedAudioController = [*(v18 + 1728) sharedAudioController];
          currentAttachment = [sharedAudioController currentAttachment];
          v28 = v18;
          v29 = currentAttachment;
          if (currentAttachment == v20)
          {
            sharedAudioController2 = [*(v28 + 1728) sharedAudioController];
            isPlaying = [sharedAudioController2 isPlaying];

            v18 = v28;
            v14 = v54;
            if (isPlaying)
            {
              v21 = array3;
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

  if (![array2 count])
  {
    v34 = array3;
    v33 = handlerCopy;
    if ([array3 count])
    {
      [(ICEditingTextView *)self showRemoveInProgressRecordingAlertWithOperation:operation type:1 attachments:array3 completionHandler:handlerCopy];
      goto LABEL_34;
    }

    if (!operation && [array count])
    {
      if ([array count] == 1)
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
        textStorage = [(ICEditingTextView *)self textStorage];
        string = [textStorage string];
        ic_trimmedString = [string ic_trimmedString];
        v40 = [ic_trimmedString length];

        v41 = v40 == 1;
        v34 = array3;
        if (v41 && [v14 count] == 1)
        {
          firstObject = [v14 firstObject];
          if ([firstObject attachmentType] == 10)
          {

LABEL_50:
            [(ICEditingTextView *)self showDeleteInlineDrawingAlertWithType:v36 attachments:array completionHandler:handlerCopy];
            goto LABEL_34;
          }

          firstObject2 = [v14 firstObject];
          attachmentType = [firstObject2 attachmentType];

          if (attachmentType == 13)
          {
            goto LABEL_50;
          }
        }
      }

      textStorage2 = [(ICEditingTextView *)self textStorage];
      v46 = [textStorage2 length];

      if (!v48 && v47 == v46)
      {
        goto LABEL_50;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 1);
    goto LABEL_34;
  }

  v33 = handlerCopy;
  [(ICEditingTextView *)self showRemoveInProgressRecordingAlertWithOperation:operation type:0 attachments:array2 completionHandler:handlerCopy];
  v34 = array3;
LABEL_34:
}

- (void)showDeleteInlineDrawingAlertWithType:(unint64_t)type attachments:(id)attachments completionHandler:(id)handler
{
  handlerCopy = handler;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"Delete Drawing?" value:&stru_282757698 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle2 localizedStringForKey:@"Delete" value:&stru_282757698 table:0];

  v11 = 0;
  if (type <= 2)
  {
    if (type >= 2)
    {
      if (type == 2)
      {
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        v11 = [mainBundle3 localizedStringForKey:@"Selection contains a drawing." value:&stru_282757698 table:0];
      }

      goto LABEL_9;
    }

LABEL_8:
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICEditingTextView(DeleteConfirmation) showDeleteInlineDrawingAlertWithType:attachments:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Undefined type in delete drawing alert"];
    v11 = 0;
    goto LABEL_9;
  }

  if (type == 3)
  {
    goto LABEL_8;
  }

  if (type == 4)
  {
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [mainBundle4 localizedStringForKey:@"Delete Drawings?" value:&stru_282757698 table:0];

    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle5 localizedStringForKey:@"Selection contains multiple drawings." value:&stru_282757698 table:0];

    v8 = v14;
  }

LABEL_9:
  [(ICEditingTextView *)self showRemoveAttachmentAlertWithTitle:v8 message:v11 primaryActionTitle:v10 completionHandler:handlerCopy];
}

- (void)showRemoveInProgressRecordingAlertWithOperation:(unint64_t)operation type:(unint64_t)type attachments:(id)attachments completionHandler:(id)handler
{
  handlerCopy = handler;
  firstObject = [attachments firstObject];
  audioModel = [firstObject audioModel];
  audioDocument = [audioModel audioDocument];
  isCallRecording = [audioDocument isCallRecording];

  if (operation == 2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = mainBundle;
    if (isCallRecording)
    {
      v17 = [mainBundle localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = mainBundle2;
      v20 = @"Replacing this attachment will stop the recording and remove it from the note.";
      goto LABEL_10;
    }

    v17 = [mainBundle localizedStringForKey:@"Delete Audio Recording?" value:&stru_282757698 table:0];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = mainBundle3;
    v33 = @"Replacing this attachment will stop the recording and remove it from the note.";
    goto LABEL_15;
  }

  if (operation != 1)
  {
    if (operation)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICEditingTextView(DeleteConfirmation) showRemoveInProgressRecordingAlertWithOperation:type:attachments:completionHandler:]" simulateCrash:1 showAlert:0 format:{@"Unexpected ICRemoveAttachmentOperation: %ld", operation}];
      v25 = 0;
      v29 = 0;
      v17 = 0;
      goto LABEL_17;
    }

    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = mainBundle4;
    if (isCallRecording)
    {
      v17 = [mainBundle4 localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = mainBundle2;
      v20 = @"Deleting this attachment will stop the recording and remove it from the note.";
      goto LABEL_10;
    }

    v17 = [mainBundle4 localizedStringForKey:@"Delete Audio Recording?" value:&stru_282757698 table:0];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = mainBundle3;
    v33 = @"Deleting this attachment will stop the recording and remove it from the note.";
LABEL_15:
    v25 = [mainBundle3 localizedStringForKey:v33 value:&stru_282757698 table:0];

    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = mainBundle5;
    v28 = @"Delete";
    goto LABEL_16;
  }

  mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = mainBundle6;
  if (!isCallRecording)
  {
    v17 = [mainBundle6 localizedStringForKey:@"Cut Audio Recording?" value:&stru_282757698 table:0];

    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [mainBundle7 localizedStringForKey:@"Cutting this attachment will stop the recording and remove it from the note." value:&stru_282757698 table:0];

    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = mainBundle5;
    v28 = @"Cut";
    goto LABEL_16;
  }

  v17 = [mainBundle6 localizedStringForKey:@"Stop Call Recording?" value:&stru_282757698 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = mainBundle2;
  v20 = @"Cutting this attachment will stop the recording and remove it from the note.";
LABEL_10:
  v25 = [mainBundle2 localizedStringForKey:v20 value:&stru_282757698 table:0];

  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = mainBundle5;
  v28 = @"OK";
LABEL_16:
  v29 = [mainBundle5 localizedStringForKey:v28 value:&stru_282757698 table:0];

LABEL_17:
  if (type == 1)
  {
    mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = [mainBundle8 localizedStringForKey:@"This will stop the audio that’s playing and remove it from the note." value:&stru_282757698 table:0];

    v25 = v35;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __124__ICEditingTextView_DeleteConfirmation__showRemoveInProgressRecordingAlertWithOperation_type_attachments_completionHandler___block_invoke;
  v37[3] = &unk_2781AFC00;
  v38 = handlerCopy;
  v36 = handlerCopy;
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

- (void)showRemoveAttachmentAlertWithTitle:(id)title message:(id)message primaryActionTitle:(id)actionTitle completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277D75110];
  actionTitleCopy = actionTitle;
  v13 = [v11 alertControllerWithTitle:title message:message preferredStyle:1];
  editorController = [(ICEditingTextView *)self editorController];
  LOBYTE(message) = [editorController isEditing];

  v15 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke;
  v31[3] = &unk_2781AFC28;
  v16 = handlerCopy;
  messageCopy = message;
  v31[4] = self;
  v32 = v16;
  v17 = [v15 actionWithTitle:actionTitleCopy style:2 handler:v31];

  [v13 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [mainBundle localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __121__ICEditingTextView_DeleteConfirmation__showRemoveAttachmentAlertWithTitle_message_primaryActionTitle_completionHandler___block_invoke_3;
  v27 = &unk_2781AFC28;
  messageCopy2 = message;
  selfCopy = self;
  v29 = v16;
  v21 = v16;
  v22 = [v18 actionWithTitle:v20 style:1 handler:&v24];
  [v13 addAction:{v22, v24, v25, v26, v27, selfCopy}];

  [(ICEditingTextView *)self resignFirstResponder];
  editorController2 = [(ICEditingTextView *)self editorController];
  [editorController2 presentViewController:v13 animated:1 completion:0];
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