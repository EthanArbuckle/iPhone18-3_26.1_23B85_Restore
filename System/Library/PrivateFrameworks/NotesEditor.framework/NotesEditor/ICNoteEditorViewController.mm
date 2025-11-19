@interface ICNoteEditorViewController
+ (UIMenu)indentationMenu;
+ (UIMenu)textAlignmentMenu;
+ (id)editorViewControllerWithIdentifier:(int64_t)a3 options:(unint64_t)a4;
+ (void)dismissChildPresentedViewControllersInPostOrder:(id)a3 animated:(BOOL)a4 completion:(id)a5;
+ (void)initialize;
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (BOOL)addSystemPaperLink:(id)a3 updateFirstResponder:(BOOL)a4;
- (BOOL)allowsAccessibilityChildReparenting;
- (BOOL)allowsNewTextLength:(unint64_t)a3;
- (BOOL)attachmentView:(id)a3 shouldRespondToPanGestureTouch:(id)a4 forAttachment:(id)a5;
- (BOOL)becomeFirstResponder;
- (BOOL)canAddToTags;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canConvertToTag;
- (BOOL)canConvertToText;
- (BOOL)canFindInNote;
- (BOOL)canIndentByAmount:(int64_t)a3;
- (BOOL)canIndentLeft;
- (BOOL)canIndentRight;
- (BOOL)canMoveCheckedToBottom;
- (BOOL)canMoveSelectedListItemDown;
- (BOOL)canMoveSelectedListItemUp;
- (BOOL)canOpenLink;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPerformCreateImageWithSelection;
- (BOOL)canPerformTodoCheckAll;
- (BOOL)canPerformTodoUncheckAll;
- (BOOL)canPerformToggleTodoChecked;
- (BOOL)canRecordAudio;
- (BOOL)canRemoveCheckedListItem;
- (BOOL)canRenameAttachmentForSelection;
- (BOOL)canReverseTableDirection;
- (BOOL)canSetListStyle;
- (BOOL)canSetParagraphStyle;
- (BOOL)canToggleTodoStyle;
- (BOOL)containsUnCheckedItems;
- (BOOL)currentSelectionContainsListOrFixedWidth;
- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleTapGestureForAttribution:(id)a3;
- (BOOL)headerSubviewsFadeInOnUnderscrolling;
- (BOOL)ignoresTaps;
- (BOOL)isAssociatedWindowScene:(id)a3;
- (BOOL)isBlockQuoteSet;
- (BOOL)isChecklistSelected;
- (BOOL)isDocumentCameraAvailable;
- (BOOL)isEditingOnSystemPaperOnPad;
- (BOOL)isEditingOnSystemPaperOnPhone;
- (BOOL)isInkPickerShowing;
- (BOOL)isNewInk:(id)a3;
- (BOOL)isOnlyBlockQuoteEnabled;
- (BOOL)isPasswordEntryShowing;
- (BOOL)isPhotosLibraryAvailable;
- (BOOL)isPositionOnTodoItem:(CGPoint)a3;
- (BOOL)isShowingAudioInspector;
- (BOOL)isShowingMiniPlayer;
- (BOOL)isSwipeOnTodoItem:(id)a3;
- (BOOL)languageHasSpaces;
- (BOOL)noteEditorNavigationItemConfigurationIsToolbarHidden;
- (BOOL)noteHasAnyPencilKitDrawings;
- (BOOL)resignFirstResponder;
- (BOOL)safeAreaContainsKeyboard;
- (BOOL)shouldAllowAttributionSidebar;
- (BOOL)shouldBlockHitTestOnTextView:(id)a3 event:(id)a4;
- (BOOL)shouldEnablePencilGestures;
- (BOOL)shouldForceLightContent;
- (BOOL)shouldIgnoreTapToStartEditingTextView:(id)a3;
- (BOOL)shouldInsertNewDrawingsAsPaper;
- (BOOL)shouldLockTextViewContentOffset;
- (BOOL)shouldShowMenuItems;
- (BOOL)shouldStartEditingForTapGesture:(id)a3;
- (BOOL)shouldUseiPadBarLayout;
- (BOOL)styleSelectorInputViewShowing;
- (BOOL)styleSelectorShouldDisableTextStyles:(id)a3;
- (BOOL)styleSelectorShouldUseCompactTopInset:(id)a3;
- (BOOL)textView:(id)a3 canAddDrawingAtIndex:(unint64_t)a4;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (BOOL)textViewCanAddStroke:(id)a3;
- (BOOL)textViewCanSelectDrawing:(id)a3;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (BOOL)toggleInkPickerAnimated:(BOOL)a3;
- (BOOL)useInputViewForStyleSelector;
- (BOOL)usesContextualFormatBar;
- (BOOL)usesCustomTransition;
- (BOOL)wantsToRemainFirstResponder;
- (CGPoint)changePasswordContentOffset;
- (CGRect)notesQuickLookActivityItem:(id)a3 rectForPreviewItem:(id)a4 inView:(id *)a5 previewController:(id)a6;
- (ICAttributionSidebarView)attributionSidebarView;
- (ICAuxiliaryStyling)auxiliaryStylingController;
- (ICBluetoothKeyboardHintViewController)bluetoothKeyboardHintViewController;
- (ICInlineCanvasTextAttachment)selectedCanvasAttachment;
- (ICNAEventReporter)audioEventReporter;
- (ICNAEventReporter)eventReporter;
- (ICNAFindResultExposureReporter)findResultReporter;
- (ICNote)previousNote;
- (ICNoteEditorContextualInputAccessoryView)formatBarView;
- (ICNoteEditorDelegate)delegate;
- (ICNoteEditorViewController)initWithIdentifier:(int64_t)a3 options:(unint64_t)a4;
- (ICNoteFormattingViewController)noteFormattingControllerCreateIfNecessary;
- (ICSelectorDelayer)applyAccessibilityInfoDelayer;
- (ICSelectorDelayer)showOrHideSearchPatternHighlightsDelayer;
- (ICSelectorDelayer)updateNoteUserActivityStateDelayer;
- (ICTTTextStorage)textStorage;
- (ICTableAttachmentViewController)currentTableAttachmentViewController;
- (ICTextController)textController;
- (ICTextView)textView;
- (ICTextView)textViewIfLoaded;
- (ICTextViewScrollState)currentScrollState;
- (ICViewControllerManager)viewControllerManager;
- (LinkEditorController)linkEditorController;
- (NSUndoManager)textViewUndoManager;
- (NotesBackgroundView)backgroundView;
- (OS_dispatch_queue)userActivityUpdateQueue;
- (PKTool)lastSavedInkingTool;
- (UIEdgeInsets)textViewScrollIndicatorInsetsThatWeWant;
- (UIResponder)auxiliaryResponder;
- (UIView)rulerHostingView;
- (UIView)styleSelectorDummyInputView;
- (UIViewController)rootViewController;
- (_NSRange)charRangeForSwipeTextRange:(id)a3;
- (_NSRange)lastSelectedRange;
- (_NSRange)lastSelectedRangeForAccelerator;
- (_NSRange)rangeForIndentationGestureAtPoint:(CGPoint)a3;
- (_NSRange)textViewVisibleRange;
- (_NSRange)visibleRange;
- (double)inputAccessoryViewHeight;
- (double)textViewBottomInsetThatWeWant;
- (double)textViewBottomInsetThatWeWantForEditing:(BOOL)a3;
- (double)textViewBottomPaddingVisibleRatio;
- (double)textViewScrollPosition;
- (double)textViewTopInsetThatWeWant;
- (id)addNewNoteWithEvent:(id)a3;
- (id)addQuickNoteWithPencil:(BOOL)a3;
- (id)attachmentViewForTextAttachment:(id)a3 characterIndex:(int64_t)a4;
- (id)attributedStringFromHTML:(id)a3;
- (id)barButtonItemWithImage:(id)a3 selector:(SEL)a4;
- (id)contextMenuInteraction:(id)a3 atLocation:(CGPoint)a4 inTableTextView:(id)a5;
- (id)createNewNote;
- (id)currentStylesForStyleSelectorIgnoreTypingAttributes:(BOOL)a3;
- (id)currentValidToolForNewDrawingOrNote;
- (id)defaultInkColor;
- (id)documentCameraControllerCreateDataCryptorIfNecessary;
- (id)drawingsForHandwritingDebug;
- (id)dynamicBarColor;
- (id)firstEmbeddedScrollViewInView:(id)a3;
- (id)flexibleSpaceBarButtonItem;
- (id)getTableControllerFor:(id)a3;
- (id)iCloudShareBarButtonItem;
- (id)icSplitViewController;
- (id)icaxDateView;
- (id)icaxMiniPlayerView;
- (id)icaxUserTitleView;
- (id)inkPaletteButtonView:(id)a3;
- (id)inkPaletteUndoManager:(id)a3;
- (id)inlineDrawingAttachmentForPoint:(CGPoint)a3;
- (id)lastPaperDocumentAttachmentView;
- (id)linkForSelection;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (id)nibBundle;
- (id)noteEditorNavigationItemConfigurationChecklistAccessibilityValue:(id)a3;
- (id)noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:(id)a3;
- (id)noteEditorNavigationItemConfigurationIndentationAccessibilityValue:(id)a3;
- (id)noteEditorNavigationItemConfigurationInputAccessoryToolbar:(id)a3;
- (id)noteEditorNavigationItemConfigurationInputAssistantItem:(id)a3;
- (id)noteEditorNavigationItemConfigurationTableAttachmentViewController:(id)a3;
- (id)noteFormattingTintColor;
- (id)notePreviewView:(id)a3;
- (id)notesQuickLookActivityItem:(id)a3 transitionViewForPreviewItem:(id)a4 previewController:(id)a5;
- (id)radarTitleForHandwritingDebug;
- (id)scanDataDelegateWithIdentifier:(id)a3;
- (id)systemImageNameForAddCollaboratorsActivity:(id)a3;
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
- (id)textView:(id)a3 newAttachmentForFileType:(id)a4;
- (id)textView:(id)a3 writingToolsIgnoredRangesInEnclosingRange:(_NSRange)a4;
- (id)titleForAddCollaboratorsActivity:(id)a3;
- (id)undoManager;
- (id)userActivity;
- (id)viewForAttachment:(id)a3;
- (int64_t)attributionSidebarVisibility;
- (int64_t)currentEmphasisType;
- (int64_t)currentWritingDirection;
- (int64_t)icasPalettePositionFromPKPalettePosition:(int64_t)a3;
- (int64_t)indentAmountIncreasing:(BOOL)a3;
- (int64_t)preferredStatusBarStyle;
- (int64_t)writingDirection;
- (unint64_t)currentBIUSForStyleSelector;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_beginLiveResize:(id)a3;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_endLiveResize:(id)a3;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)_scrollViewDidInterruptDecelerating:(id)a3;
- (void)_textViewDidEndUndoCoalescingForWritingTools:(id)a3;
- (void)_textViewWillBeginUndoCoalescingForWritingTools:(id)a3;
- (void)acceleratorOriginNeedsUpdate;
- (void)addKVOObserversForNote:(id)a3;
- (void)addNewNoteIfNeeded;
- (void)addNote:(id)a3 event:(id)a4 shouldInstrumentAsNewNoteAffordanceUsage:(BOOL)a5;
- (void)addSystemPaperAttachment;
- (void)addSystemPaperImageData:(id)a3 updateFirstResponder:(BOOL)a4 forceAddToPaper:(BOOL)a5;
- (void)addTable:(id)a3;
- (void)addToGraph:(id)a3;
- (void)addToTags:(id)a3;
- (void)addTodoListAtEndOfNote;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applyAccessibilityInfo;
- (void)applyScrollStateFromArchive:(id)a3;
- (void)applyScrollStateIfAvailable;
- (void)attachFile:(id)a3;
- (void)attachmentBrickDidChangeSize;
- (void)attachmentInsertionController:(id)a3 didAddAttachment:(id)a4 atRange:(_NSRange)a5;
- (void)attachmentInsertionController:(id)a3 didAddInlineAttachment:(id)a4 atRange:(_NSRange)a5 textStorage:(id)a6;
- (void)attachmentInsertionController:(id)a3 willAddAttachment:(id)a4 atRange:(_NSRange)a5;
- (void)attachmentPresenterDidDismiss:(id)a3;
- (void)attachmentView:(id)a3 shouldPresentAttachment:(id)a4;
- (void)attachmentView:(id)a3 shouldPresentNote:(id)a4;
- (void)attachmentView:(id)a3 shouldShareAttachment:(id)a4;
- (void)audioEventReporterLostSession:(id)a3;
- (void)audioFindInTranscript:(id)a3;
- (void)audioRecordingStarted:(id)a3;
- (void)audioRecordingStopped:(id)a3;
- (void)audioTranscriptInteraction:(id)a3;
- (void)authenticationAuthenticateBiometricsAttemptDidFail:(id)a3;
- (void)blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:(double)a3;
- (void)calculateDocumentControllerDidUpdateHighlights:(id)a3;
- (void)cancelFromSystemPaperCard:(id)a3;
- (void)changeIndentationByIncreasing:(BOOL)a3 sender:(id)a4;
- (void)checkAll:(id)a3;
- (void)cleanupAfterAddImageAttachmentOperation;
- (void)cleanupAfterBarSourcedPopoverPresentation;
- (void)cleanupAfterFingerDrawing;
- (void)clearTextViewSelection;
- (void)configureBarAppearancesIfNecessary;
- (void)contentSizeCategoryDidChange;
- (void)convertToTag:(id)a3;
- (void)convertToText:(id)a3;
- (void)createAndPresentCloudSharingControllerBySender:(id)a3;
- (void)createImage:(id)a3;
- (void)createInkPickerControllerIfNecessary;
- (void)createLink:(id)a3 title:(id)a4 textSelection:(id)a5 range:(_NSRange)a6 addApproach:(int64_t)a7;
- (void)createNoteLinkAttachment:(id)a3 textSelection:(id)a4 range:(_NSRange)a5 addApproach:(int64_t)a6;
- (void)createSystemPaperLinkBarIfNecessary;
- (void)createTodoListItem:(id)a3;
- (void)dealloc;
- (void)decreaseIndentation:(id)a3;
- (void)deleteCurrentNote:(id)a3;
- (void)didAddAttachmentForNoteNotification:(id)a3;
- (void)didBeginFindInteraction;
- (void)didEndEditingNote;
- (void)didEndFindInteraction;
- (void)didInvokeAnalyticsCalloutBarButtonActionOfType:(int64_t)a3;
- (void)didInvokeAnalyticsChecklistActionChecked:(BOOL)a3;
- (void)didInvokePasteWithAttributedString:(id)a3;
- (void)didUpdateSearchQueryInFindInteraction:(id)a3;
- (void)disableBoldface;
- (void)disableItalics;
- (void)disableStrikethrough;
- (void)disableUnderline;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6;
- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7;
- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)a3;
- (void)documentCameraControllerDidRetake:(id)a3 pageCount:(unint64_t)a4;
- (void)documentCameraPresentingViewController:(id)a3 didFinishWithInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)donateEditingIntentIfNecessary;
- (void)doneEditing;
- (void)doneEditing:(id)a3;
- (void)enableBoldface;
- (void)enableItalics;
- (void)enableStrikethrough;
- (void)enableUnderline;
- (void)ensurePaperPreviewsExistIfNecessary;
- (void)ensureValidInkForNewDrawingOrNote;
- (void)eventReporterLostSession:(id)a3;
- (void)fetchAll;
- (void)handleLeftOrRightSwipe:(id)a3;
- (void)handleMenuBarButtonTap:(id)a3;
- (void)hashtagInsertedInNote:(id)a3 tokenContentIdentifier:(id)a4 viaAutoComplete:(BOOL)a5;
- (void)hashtagViewController:(id)a3 insertFutureHashtagWithText:(id)a4;
- (void)hashtagViewController:(id)a3 insertHashtagWithText:(id)a4;
- (void)hashtagViewController:(id)a3 insertUnknownInlineAttachmentWithText:(id)a4;
- (void)hideAcceleratorIfNecessary;
- (void)hideActivityStreamToolbarAnimated:(BOOL)a3;
- (void)hideAndDismissPresentedViewController;
- (void)hideInkPicker;
- (void)iCloudShareButtonPressed:(id)a3;
- (void)icBaseTextViewDidSetHidden:(BOOL)a3;
- (void)ic_alignCenter:(id)a3;
- (void)ic_alignLeft:(id)a3;
- (void)ic_alignRight:(id)a3;
- (void)increaseIndentation:(id)a3;
- (void)indentSelectionIfPossibleByAmount:(int64_t)a3;
- (void)inkPalette:(id)a3 didChangeColor:(id)a4;
- (void)inkPalette:(id)a3 didChangePalettePositionStart:(int64_t)a4 end:(int64_t)a5;
- (void)inkPalette:(id)a3 didHideAnimated:(BOOL)a4;
- (void)inkPalette:(id)a3 didPickTool:(id)a4;
- (void)inkPalette:(id)a3 didShowAnimated:(BOOL)a4;
- (void)inkPalette:(id)a3 willHideAnimated:(BOOL)a4;
- (void)inkPalette:(id)a3 willShowAnimated:(BOOL)a4;
- (void)inkPaletteDidToggleRuler:(id)a3 isRulerActive:(BOOL)a4;
- (void)inlineAttachmentDeleted:(id)a3;
- (void)inputAccessoryDisclosureStateDidChange:(id)a3 tapped:(BOOL)a4;
- (void)inputAccessoryDisclosureStateWillChange:(id)a3;
- (void)insertGraph:(id)a3;
- (void)insertSidecarItems:(id)a3 service:(int64_t)a4;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardResizerAdjustInsetsWithKeyboardFrame:(CGRect)a3 scrollAboveHeight:(double)a4 duration:(double)a5;
- (void)lastSavedInkingTool;
- (void)linkEditorDidDismiss;
- (void)localeChanged:(id)a3;
- (void)lockBarButtonPressed:(id)a3;
- (void)lockNoteManagerDidToggleLock:(id)a3;
- (void)lockNoteManagerWillToggleLock:(id)a3;
- (void)magicGenerativePlaygroundWillDisappear;
- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4;
- (void)mentionInsertedInNote:(id)a3 mentionID:(id)a4 participantID:(id)a5 viaAutoComplete:(BOOL)a6;
- (void)mergeRelatedOperationsDidEnd:(id)a3;
- (void)moveCheckedToBottom:(id)a3;
- (void)moveSelectedListItemDown:(id)a3;
- (void)moveSelectedListItemUp:(id)a3;
- (void)moveToFolderPressed:(id)a3;
- (void)noteDecryptedStatusDidChange:(id)a3;
- (void)noteDidChangeCalculatePreviewBehaviorNotification:(id)a3;
- (void)noteDidDeauthenticateAfterMerge:(id)a3;
- (void)noteEditorNavigationItemConfiguration:(id)a3 addNoteFromBarButtonItem:(id)a4 event:(id)a5;
- (void)noteEditorNavigationItemConfiguration:(id)a3 closeAuxiliaryWindowFromBarButtonItem:(id)a4;
- (void)noteEditorNavigationItemConfiguration:(id)a3 openLinkEditorWithSender:(id)a4;
- (void)noteEditorNavigationItemConfiguration:(id)a3 setToolbarHidden:(BOOL)a4 animated:(BOOL)a5;
- (void)noteEditorNavigationItemConfiguration:(id)a3 showWritingToolsFromBarButtonItem:(id)a4;
- (void)noteEditorNavigationItemConfiguration:(id)a3 toggleListStyle:(unsigned int)a4 withSender:(id)a5;
- (void)noteEditorNavigationItemConfiguration:(id)a3 toggleSidebarFromBarButtonItem:(id)a4;
- (void)noteFormattingDidFinish:(id)a3;
- (void)noteFormattingNeedsUpdate:(id)a3;
- (void)noteOrFolderChangedCallback;
- (void)noteWillAppear:(id)a3;
- (void)noteWillBeDeleted:(id)a3;
- (void)noteWillDisappear:(id)a3;
- (void)notesContextRefreshNotification:(id)a3;
- (void)observeAttachmentDeleted:(id)a3;
- (void)observeDrawingConverted:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openExperimentalHashtagUI:(id)a3;
- (void)openLink:(id)a3;
- (void)openLinkEditor:(id)a3;
- (void)openLinkEditorForLink:(id)a3 atRange:(_NSRange)a4 delegate:(id)a5;
- (void)openLinkEditorForLinkTextItem:(id)a3;
- (void)paperKitBundleDidMerge:(id)a3;
- (void)passwordEntryAlertControllerAttemptDidFail:(id)a3;
- (void)performDeleteAnimation:(id)a3;
- (void)performFindInNote:(id)a3;
- (void)performReplaceInNote:(id)a3;
- (void)prepareForBarSourcedPopoverPresentation;
- (void)prepareSelectionForAddingAttachment;
- (void)prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:(id)a3;
- (void)presentRecordingStoppedAlertForNoteIfNeeded:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)quickNoteAllNotes:(id)a3;
- (void)rebuildInputAccessoryView;
- (void)recreateTextView;
- (void)recreateTextViewIfNecessary;
- (void)recreateTextViewIfPasswordEntryScreenExistsButNoteIsUnlocked;
- (void)redoAction:(id)a3;
- (void)registerForTraitChanges;
- (void)reloadCurrentNote;
- (void)rememberNoteContentForEditingIntent;
- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4;
- (void)removeChecked:(id)a3;
- (void)removeCurrentScrollState;
- (void)removeKVOObserversForNote:(id)a3;
- (void)removeLinkForLinkTextItem:(id)a3;
- (void)removeLinksFromCurrentSelection;
- (void)removeLinksFromRange:(_NSRange)a3;
- (void)removeLinksFromTextSelection:(id)a3 range:(_NSRange)a4;
- (void)renameAttachment;
- (void)resetBarButtonsAnimated:(BOOL)a3;
- (void)resetBarButtonsAnimated:(BOOL)a3 checkIfVisible:(BOOL)a4;
- (void)resetDateView;
- (void)resetTextViewContentOffset;
- (void)resetTextViewUndoManager;
- (void)restoreTextViewScrollPosition:(double)a3;
- (void)restoreTextViewVisibleRange:(_NSRange)a3 animated:(BOOL)a4;
- (void)runScrollPerformanceTest:(id)a3 iterations:(int)a4 offset:(int)a5;
- (void)runTableHorizontalScrollPerformanceTest:(id)a3 iterations:(int)a4 offset:(int)a5;
- (void)saveCurrentScrollState;
- (void)saveFromSystemPaperCard:(id)a3;
- (void)saveInlineDrawings;
- (void)saveNote;
- (void)saveToolAsCurrentTool:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4 inSearchableString:(id)a5 searchHighlightRegexFinder:(id)a6;
- (void)scrollRangeToVisibleWhenViewAppears:(_NSRange)a3 animated:(BOOL)a4 inSearchableString:(id)a5 searchHighlightRegexFinder:(id)a6;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectDrawingAttachmentIfNeeded:(id)a3;
- (void)setArchivedScrollStateToApply:(id)a3;
- (void)setAuxiliaryStylingController:(id)a3;
- (void)setBodyStyle:(id)a3;
- (void)setCanShowLinkBar:(BOOL)a3;
- (void)setCurrentTextStyle:(unsigned int)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFixedWidthStyle:(id)a3;
- (void)setHasMadeEdits;
- (void)setHeadingStyle:(id)a3;
- (void)setIgnoresTaps:(BOOL)a3;
- (void)setInvitation:(id)a3;
- (void)setIsDrawingStroke:(BOOL)a3;
- (void)setMagicGenerativePlaygroundUndoManager:(id)a3;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNote:(id)a3 delayedForLaunch:(BOOL)a4 startEditing:(BOOL)a5 successHandler:(id)a6;
- (void)setNote:(id)a3 overrideScrollState:(id)a4 startEditing:(BOOL)a5;
- (void)setPaperLinkBarShowing:(BOOL)a3;
- (void)setSearchRegexFinder:(id)a3;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setSplitViewExpandingOrCollapsing:(BOOL)a3;
- (void)setSubheadingStyle:(id)a3;
- (void)setTextStyle:(unsigned int)a3 sender:(id)a4;
- (void)setTitleStyle:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setUserWantsToSeeDateLabel:(BOOL)a3;
- (void)setWritingToolsShowing:(BOOL)a3;
- (void)setupForFingerDrawing;
- (void)setupLinedPaperOnNewNote:(id)a3 willStartEditing:(BOOL)a4;
- (void)shareButtonPressedWithSender:(id)a3;
- (void)sharedWithYouControllerDidUpdateHighlights:(id)a3;
- (void)shiftReturn:(id)a3;
- (void)showActivityStreamToolbarForObject:(id)a3 selection:(id)a4 animated:(BOOL)a5;
- (void)showDocumentCamera;
- (void)showDocumentPicker;
- (void)showDrawingUpdateAlert;
- (void)showHandwritingDebug:(BOOL)a3;
- (void)showInkPicker:(BOOL)a3 animated:(BOOL)a4;
- (void)showInkPicker:(id)a3;
- (void)showInkPickerAndEndEditingIfNecessary;
- (void)showInsertUIForSourceType:(unint64_t)a3 sender:(id)a4;
- (void)showInsertUIWithPreferredSourceType:(unint64_t)a3;
- (void)showOrHideActivityStreamToolbarIfNeeded;
- (void)showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:(BOOL)a3;
- (void)showOrHidePasswordEntryViewControllerIfNeeded;
- (void)showOrHideSearchPatternHighlightsIfNecessary;
- (void)showOverscrollContentAndScrollToTop;
- (void)showRecoverNoteAlert;
- (void)showStyleSelector:(BOOL)a3 animated:(BOOL)a4 sender:(id)a5;
- (void)showStyleSelectorInputView:(BOOL)a3 animated:(BOOL)a4 doneEditing:(BOOL)a5;
- (void)showStyleSelectorPopover:(BOOL)a3 animated:(BOOL)a4 sender:(id)a5;
- (void)splitViewModeChangeDidEnd:(id)a3;
- (void)startEditing;
- (void)startEditingForWritingTools;
- (void)stopTextFindingIfNecessary;
- (void)styleSelector:(id)a3 didChangeIndentAmount:(int64_t)a4;
- (void)styleSelector:(id)a3 didSelectStyle:(unsigned int)a4;
- (void)styleSelector:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)styleSelector:(id)a3 toggleBIUS:(unint64_t)a4;
- (void)styleSelectorDidCancel:(id)a3;
- (void)styleSelectorDidIndentLeft:(id)a3;
- (void)styleSelectorDidIndentRight:(id)a3;
- (void)styleSelectorWillShowInlineMenu:(id)a3;
- (void)submitChecklistAnalyticsEventForActionType:(int64_t)a3;
- (void)submitNoteEditEventIfNecessary;
- (void)submitNoteViewEventForModernNote:(id)a3;
- (void)submitPendingInlineDrawingDataIfNecessary;
- (void)systemPaperLinkBarVisibilityPreferenceChanged:(id)a3;
- (void)tab:(id)a3;
- (void)tableCellFirstResponderChanged;
- (void)tearDownAudioPlayers;
- (void)teardownSystemPaperLinkBarIfNecessary;
- (void)textView:(id)a3 didRemoveDrawingAtIndex:(unint64_t)a4;
- (void)textView:(id)a3 upgradeDrawingAtIndex:(unint64_t)a4 itemProviders:(id)a5 insertionLocationInDrawing:(CGPoint)a6;
- (void)textView:(id)a3 willAddDrawingAtIndex:(unint64_t)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidBreakRubberBand:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)textViewDidEndStroke:(id)a3;
- (void)textViewWillBeginStroke:(id)a3 forTouch:(id)a4;
- (void)textViewWritingToolsDidEnd:(id)a3;
- (void)textViewWritingToolsWillBegin:(id)a3;
- (void)toggleBIUS:(unint64_t)a3 sender:(id)a4;
- (void)toggleBlockQuote:(id)a3;
- (void)toggleBoldface;
- (void)toggleBulletedListStyle:(id)a3;
- (void)toggleCurrentTextStyle:(unsigned int)a3;
- (void)toggleDashedListStyle:(id)a3;
- (void)toggleEmphasis;
- (void)toggleEmphasisWithType:(int64_t)a3;
- (void)toggleItalics;
- (void)toggleNumberedListStyle:(id)a3;
- (void)toggleStrikethrough;
- (void)toggleTodoChecked:(id)a3;
- (void)toggleTodoStyle:(id)a3;
- (void)toggleUnderline;
- (void)uncheckAll:(id)a3;
- (void)undoAction:(id)a3;
- (void)undoablySwitchToPPK:(BOOL)a3;
- (void)updateActionMenu;
- (void)updateAuthorHighlightsIfNeeded;
- (void)updateBarButtonsAnimated:(BOOL)a3 checkIfVisible:(BOOL)a4;
- (void)updateBottomContentPadding;
- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5 force:(BOOL)a6;
- (void)updateDataOwnerForCopyAndPaste;
- (void)updateDateLabelAccessibility;
- (void)updateDrawingAttachmentsIfNeeded;
- (void)updateDrawingAttachmentsInNote;
- (void)updateForceLightContentIfNecessary;
- (void)updateFormatToolbarLayoutWithSize:(CGSize)a3;
- (void)updateInkPickerAndTextViewToTool:(id)a3;
- (void)updateInlineDrawings;
- (void)updateInlineDrawingsPaletteVisibility;
- (void)updateLastViewedMetadataIfNessessary;
- (void)updateNoteUserActivityState;
- (void)updatePencilKitPaperStyleType;
- (void)updatePencilKitSelectionViewEnabled;
- (void)updateSelectionOnUndo:(id)a3;
- (void)updateStyleSelectorStateIfNeededIgnoreTypingAttributes:(BOOL)a3;
- (void)updateTextInputAccessoryViewForDidBeginEditing:(id)a3;
- (void)updateTextInputAccessoryViewForDidEndEditing:(id)a3;
- (void)updateTextInputAccessoryViewForTextViewDidChange:(id)a3;
- (void)updateTextViewBackground;
- (void)updateTextViewContentInsetsAnimated:(BOOL)a3;
- (void)updateTextViewContentOffset;
- (void)updateUIEnabledStatePencilActive:(BOOL)a3;
- (void)updateUnsupportedNoteView;
- (void)updateUserAndDateViewVisibility;
- (void)upgradeAllAttachmentsInNoteWithUpgradeHelper:(id)a3 forSydney:(BOOL)a4;
- (void)upgradePencilKitDrawingsForNewInksPromptingIfNecessary;
- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5;
- (void)userActivityWillSave:(id)a3;
- (void)viewControllerWillStartEditModeNotification:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)warnLimitExceededWithTitle:(id)a3 andMessage:(id)a4;
- (void)warnUserAttachmentLimitExceeded;
- (void)warnUserAttachmentSizeExceededWithAttachmentCount:(unint64_t)a3;
- (void)warnUserNoteLengthExceeded;
- (void)willAddAttachmentForNoteNotification:(id)a3;
@end

@implementation ICNoteEditorViewController

+ (void)initialize
{
  v5[10] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v4[0] = &unk_28277E310;
    v4[1] = &unk_28277E340;
    v5[0] = &unk_28277E328;
    v5[1] = &unk_28277E358;
    v4[2] = &unk_28277E370;
    v4[3] = &unk_28277E3A0;
    v5[2] = &unk_28277E388;
    v5[3] = &unk_28277E3B8;
    v4[4] = &unk_28277E3D0;
    v4[5] = &unk_28277E400;
    v5[4] = &unk_28277E3E8;
    v5[5] = &unk_28277E418;
    v4[6] = &unk_28277E430;
    v4[7] = &unk_28277E460;
    v5[6] = &unk_28277E448;
    v5[7] = &unk_28277E358;
    v4[8] = &unk_28277E478;
    v4[9] = &unk_28277E4A8;
    v5[8] = &unk_28277E490;
    v5[9] = &unk_28277E4C0;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:10];
    v3 = topoTextStylesToAnalyticsStyles;
    topoTextStylesToAnalyticsStyles = v2;
  }
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  v3 = [(ICNoteEditorViewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (id)nibBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)viewDidLoad
{
  v47[4] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v46 viewDidLoad];
  BundleBoolSettingValue = ICInternalSettingsGetBundleBoolSettingValue();
  v4 = [(ICNoteEditorViewController *)self backgroundView];
  [v4 setHasBarBlur:BundleBoolSettingValue];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v5 = objc_alloc(MEMORY[0x277D75A78]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(ICNoteEditorViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10 = [v9 statusBarManager];
    [v6 requestStyle:{objc_msgSend(v10, "statusBarStyle")}];

    v11 = [(ICNoteEditorViewController *)self view];
    [v11 addSubview:v6];

    v39 = MEMORY[0x277CCAAD0];
    v44 = [v6 leftAnchor];
    v45 = [(ICNoteEditorViewController *)self view];
    v43 = [v45 leftAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v47[0] = v42;
    v40 = [v6 rightAnchor];
    v41 = [(ICNoteEditorViewController *)self view];
    v38 = [v41 rightAnchor];
    v12 = [v40 constraintEqualToAnchor:v38];
    v47[1] = v12;
    v13 = [v6 topAnchor];
    v14 = [(ICNoteEditorViewController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v47[2] = v16;
    v17 = [v6 heightAnchor];
    v18 = [v17 constraintEqualToConstant:*MEMORY[0x277D76F08]];
    v47[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [v39 activateConstraints:v19];
  }

  v20 = [(ICNoteEditorViewController *)self usesContextualFormatBar];
  v21 = [(ICNoteEditorViewController *)self navigationItem];
  [v21 _setToolbarAvoidsKeyboard:v20];

  v22 = [(ICNoteEditorViewController *)self navigationItem];
  [v22 setLargeTitleDisplayMode:2];

  v23 = [(ICNoteEditorViewController *)self backgroundView];
  v24 = [(ICNoteEditorViewController *)self ic_safeAreaLayoutGuide];
  v25 = [(ICNoteEditorViewController *)self backgroundView];
  [v23 addConstraintsForSafeAreaLayoutGuide:v24 toContainer:v25];

  v26 = [[ICNoteEditorNavigationItemConfiguration alloc] initWithDataSource:self delegate:self];
  [(ICNoteEditorViewController *)self setNavigationItemConfiguration:v26];

  v27 = objc_alloc_init(ICStyleSelectorViewController);
  [(ICNoteEditorViewController *)self setStyleSelectorController:v27];

  v28 = [(ICNoteEditorViewController *)self styleSelectorController];
  [v28 setDelegate:self];

  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(ICNoteEditorViewController *)self applyAccessibilityInfo];
  }

  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  [v29 addObserver:self selector:sel_localeChanged_ name:*MEMORY[0x277CBE620] object:0];
  [v29 addObserver:self selector:sel_sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];
  [v29 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  [v29 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  [v29 addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  [v29 addObserver:self selector:sel_attachmentBrickDidChangeSize name:*MEMORY[0x277D35B78] object:0];
  v30 = *MEMORY[0x277D36100];
  v31 = [MEMORY[0x277CBC6A0] ic_mentionableNamesCache];
  [v29 addObserver:self selector:sel_updateParticipantsInDrawings name:v30 object:v31];

  [v29 addObserver:self selector:sel_splitViewModeChangeWillBegin_ name:@"ICSplitViewControllerWillBeginDisplayModeChange" object:0];
  [v29 addObserver:self selector:sel_navigationControllerWillChange_ name:@"ICNavigationControllerWillChange" object:0];
  [v29 addObserver:self selector:sel_splitViewModeChangeDidEnd_ name:@"ICSplitViewControllerDidEndDisplayModeChange" object:0];
  [v29 addObserver:self selector:sel_paperKitBundleDidMerge_ name:*MEMORY[0x277D35B90] object:0];
  [v29 addObserver:self selector:sel_observeAttachmentDeleted_ name:*MEMORY[0x277D35B68] object:0];
  [v29 addObserver:self selector:sel_observeDrawingConverted_ name:*MEMORY[0x277D364E0] object:0];
  [v29 addObserver:self selector:sel_audioFindInTranscript_ name:*MEMORY[0x277D36578] object:0];
  [v29 addObserver:self selector:sel_audioRecordingStarted_ name:*MEMORY[0x277D35C80] object:0];
  [v29 addObserver:self selector:sel_audioRecordingStopped_ name:*MEMORY[0x277D35C88] object:0];
  [v29 addObserver:self selector:sel_audioTranscriptInteraction_ name:*MEMORY[0x277D36548] object:0];
  [(ICScrollViewDelegateViewController *)self setupScrollViewKeyboardResizer];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self collaborationButtons_registerForSharedWithYouHighlightUpdates];
  }

  [(ICNoteEditorViewController *)self setShouldResetTextViewContentOffsetWhenAppearing:1];
  [MEMORY[0x277D75820] ic_addObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&compoundliteral_0];
  v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v32 ic_addObserver:self forKeyPath:*MEMORY[0x277D36448] context:&compoundliteral_3029];

  [v29 addObserver:self selector:sel_willAddAttachmentForNoteNotification_ name:*MEMORY[0x277D35DD8] object:0];
  [v29 addObserver:self selector:sel_didAddAttachmentForNoteNotification_ name:*MEMORY[0x277D35C50] object:0];
  v33 = *MEMORY[0x277D35C30];
  v34 = [MEMORY[0x277D35E50] sharedState];
  [v29 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v33 object:v34];

  v35 = *MEMORY[0x277D35C38];
  v36 = [MEMORY[0x277D35E50] sharedState];
  [v29 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v35 object:v36];

  [v29 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:*MEMORY[0x277D35B58] object:0];
  [v29 addObserver:self selector:sel_noteDidDeauthenticateAfterMerge_ name:*MEMORY[0x277D35CD8] object:0];
  [v29 addObserver:self selector:sel_sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];
  [v29 addObserver:self selector:sel_passwordEntryAlertControllerAttemptDidFail_ name:*MEMORY[0x277D365B8] object:0];
  [v29 addObserver:self selector:sel_authenticationAuthenticateBiometricsAttemptDidFail_ name:*MEMORY[0x277D36488] object:0];
  [v29 addObserver:self selector:sel_lockNoteManagerWillToggleLock_ name:*MEMORY[0x277D365A8] object:0];
  [v29 addObserver:self selector:sel_lockNoteManagerDidToggleLock_ name:*MEMORY[0x277D365A0] object:0];
  [v29 addObserver:self selector:sel__beginLiveResize_ name:*MEMORY[0x277D776B0] object:0];
  [v29 addObserver:self selector:sel__endLiveResize_ name:*MEMORY[0x277D776B8] object:0];
  if (ICInternalSettingsIsAudioTranscriptionEnabled())
  {
    v37 = [[ICAudioAttachmentEditorCoordinator alloc] initWithNoteEditorViewController:self];
    [(ICNoteEditorViewController *)self setAudioAttachmentEditorCoordinator:v37];
  }

  if (!ICInternalSettingsIsTextKit2Enabled() || [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone])
  {
    [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
  }
}

- (BOOL)isEditingOnSystemPaperOnPhone
{
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    return 0;
  }

  v3 = [(ICNoteEditorViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom] == 0;

  return v4;
}

- (void)registerForTraitChanges
{
  v8[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ICNoteEditorViewController_registerForTraitChanges__block_invoke;
  v5[3] = &unk_2781ACDB8;
  objc_copyWeak(&v6, &location);
  v4 = [(ICNoteEditorViewController *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (BOOL)headerSubviewsFadeInOnUnderscrolling
{
  if ([(ICNoteEditorViewController *)self usesCustomTransition])
  {
    return 1;
  }

  return _UISolariumEnabled();
}

- (BOOL)usesCustomTransition
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(ICNoteEditorViewController *)self preferredTransition];
  v4 = v3 != 0;

  return v4;
}

- (void)submitNoteEditEventIfNecessary
{
  v12 = [(ICNoteEditorBaseViewController *)self note];
  v3 = [v12 modificationDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICNoteEditorBaseViewController *)self note];
    v6 = [v5 modificationDate];
    v7 = [(ICNoteEditorViewController *)self noteLastModificationDate];
    v8 = [v6 isEqualToDate:v7];

    if (v8)
    {
      return;
    }

    v9 = [(ICNoteEditorViewController *)self eventReporter];
    v10 = [(ICNoteEditorBaseViewController *)self note];
    [v9 submitNoteEditEventForModernNote:v10 fromQuickNote:{-[ICNoteEditorBaseViewController isEditingOnSecureScreen](self, "isEditingOnSecureScreen")}];

    v12 = [(ICNoteEditorBaseViewController *)self note];
    v11 = [v12 modificationDate];
    [(ICNoteEditorViewController *)self setNoteLastModificationDate:v11];
  }
}

- (BOOL)useInputViewForStyleSelector
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];

  if ([v3 horizontalSizeClass] == 1)
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 userInterfaceIdiom] == 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D75418] ic_isVision] ^ 1;
  }

  return v4;
}

- (BOOL)styleSelectorInputViewShowing
{
  v3 = [(ICNoteEditorViewController *)self styleSelectorDummyInputView];
  v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  v5 = [v4 inputView];
  if (v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    v7 = [v6 inputView];
    v8 = v3 == v7;
  }

  return v8;
}

- (UIView)styleSelectorDummyInputView
{
  styleSelectorDummyInputView = self->_styleSelectorDummyInputView;
  if (!styleSelectorDummyInputView)
  {
    v4 = objc_alloc(MEMORY[0x277D75608]);
    v5 = [v4 initWithFrame:0 inputViewStyle:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_styleSelectorDummyInputView;
    self->_styleSelectorDummyInputView = v5;

    [(UIView *)self->_styleSelectorDummyInputView setUserInteractionEnabled:0];
    styleSelectorDummyInputView = self->_styleSelectorDummyInputView;
  }

  return styleSelectorDummyInputView;
}

- (ICAuxiliaryStyling)auxiliaryStylingController
{
  WeakRetained = objc_loadWeakRetained(&self->_auxiliaryStylingController);

  return WeakRetained;
}

- (void)stopTextFindingIfNecessary
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 findInteraction];
  v5 = [v4 isFindNavigatorVisible];

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    v7 = [v6 findInteraction];
    [v7 dismissFindNavigator];

    [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  }
}

- (void)tearDownAudioPlayers
{
  v2 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  [v2 teardown];
}

- (void)saveCurrentScrollState
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v9 = [ICTextViewScrollState scrollStateForTextView:v3];

  v4 = [v9 note];
  v5 = [(ICNoteEditorBaseViewController *)self note];

  if (v4 == v5)
  {
    v6 = [(ICNoteEditorViewController *)self savedScrollStates];
    v7 = [v9 note];
    v8 = [v7 identifier];
    [v6 ic_setNonNilObject:v9 forNonNilKey:v8];
  }
}

- (void)resetTextViewUndoManager
{
  v3 = [(ICNoteEditorViewController *)self textView];
  [v3 resetUndoManager];

  [(ICNoteEditorViewController *)self updateBarButtons];
}

- (ICNote)previousNote
{
  WeakRetained = objc_loadWeakRetained(&self->_previousNote);

  return WeakRetained;
}

- (void)recreateTextViewIfNecessary
{
  if ([(ICNoteEditorViewController *)self isViewLoaded])
  {
    v3 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    if (v3)
    {
    }

    else
    {
      v4 = [(ICNoteEditorBaseViewController *)self note];
      v5 = [v4 isPasswordProtectedAndLocked];

      if ((v5 & 1) == 0)
      {

        [(ICNoteEditorViewController *)self recreateTextView];
      }
    }
  }
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

- (void)rebuildInputAccessoryView
{
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    [(ICNoteEditorViewController *)self setTextViewInputAccessoryView:0];
    v3 = [(ICNoteEditorViewController *)self textView];
    [v3 setInputAccessoryView:0];

    objc_opt_class();
    v4 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v15 = ICDynamicCast();

    [v15 setInputAccessoryView:0];
  }

  else
  {
    v15 = [(ICNoteEditorViewController *)self icSplitViewController];
    v5 = [v15 view];
    [v5 frame];
    v7 = v6;

    if ([MEMORY[0x277D75418] ic_isiPhone])
    {
      v8 = [[ICNoteEditorInputAccessoryView alloc] initWithFrame:0.0, 0.0, v7, 44.0];
      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x277D75C58]);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    [(ICNoteEditorInputAccessoryView *)v8 setToolbar:v9];
    [(ICNoteEditorViewController *)self setDismissableInputAccessoryView:v8];
    [(ICNoteEditorInputAccessoryView *)v8 setDelegate:self];
    [(ICNoteEditorViewController *)self setTextViewInputAccessoryView:v8];
    v10 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    v11 = [(ICNoteEditorViewController *)self textView];
    [v11 setInputAccessoryView:v10];

    objc_opt_class();
    v12 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v13 = ICDynamicCast();

    v14 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [v13 setInputAccessoryView:v14];
  }
}

- (id)icSplitViewController
{
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self viewControllerManager];
    v3 = [v4 mainSplitViewController];
  }

  return v3;
}

- (BOOL)shouldForceLightContent
{
  v2 = [(ICNoteEditorBaseViewController *)self note];
  if ([v2 prefersLightBackground])
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D75C80] ic_alwaysShowLightContent];
  }

  return v3;
}

- (BOOL)shouldAllowAttributionSidebar
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  if ([v3 isSharedViaICloud] && !-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper"))
  {
    v4 = ![(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)updateForceLightContentIfNecessary
{
  v3 = [(ICNoteEditorViewController *)self shouldForceLightContent];
  v4 = v3;
  v5 = v3;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [(ICNoteEditorViewController *)self setOverrideUserInterfaceStyle:v3];
  v7 = [(ICNoteEditorViewController *)self view];
  [v7 setOverrideUserInterfaceStyle:v5];

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 setOverrideUserInterfaceStyle:v5];

  [(ICNoteEditorViewController *)self updateTextViewBackground];
  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 setNeedsDisplay];

  v10 = [(ICNoteEditorViewController *)self navigationController];
  [v10 setOverrideUserInterfaceStyle:v5];

  v11 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
  [v11 setOverrideUserInterfaceStyle:v5];

  v12 = [(ICNoteEditorViewController *)self formatBarView];
  [v12 setOverrideUserInterfaceStyle:v5];

  v13 = [(ICNoteEditorViewController *)self textView];
  [v13 setKeyboardAppearance:v6];

  [(ICNoteEditorViewController *)self configureBarAppearancesIfNecessary];
  [(ICNoteEditorViewController *)self setNeedsStatusBarAppearanceUpdate];
  v14 = [(ICNoteEditorViewController *)self inkPaletteController];

  if (v4 || v14)
  {
    v15 = [(ICNoteEditorViewController *)self inkPaletteController];
    v16 = [v15 selectedTool];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = [(ICNoteEditorViewController *)self inkPaletteController];
      v19 = [v18 colorCorrectedTool];
      [(ICNoteEditorViewController *)self updateInkPickerAndTextViewToTool:v19];
    }

    v20 = [(ICNoteEditorViewController *)self inkPaletteController];
    [v20 setColorUserInterfaceStyle:v5];
  }
}

- (void)updateTextViewBackground
{
  if (![(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    return;
  }

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    v8 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    v9 = [(ICNoteEditorViewController *)self textViewController];
    [v9 setBackgroundColor:v8];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      return;
    }

    v10 = [(ICNoteEditorViewController *)self textViewController];
    v4 = [v10 backgroundColor];
    v5 = [(ICNoteEditorViewController *)self view];
    v6 = v5;
    v7 = v4;
    goto LABEL_9;
  }

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    [v3 setBackgroundColor:0];

    v10 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    v4 = [(ICNoteEditorViewController *)self backgroundView];
    v5 = [v4 contentView];
    v6 = v5;
    v7 = v10;
LABEL_9:
    [v5 setBackgroundColor:v7];

    goto LABEL_10;
  }

  v10 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  v4 = [(ICNoteEditorViewController *)self view];
  [v4 setBackgroundColor:v10];
LABEL_10:
}

- (void)configureBarAppearancesIfNecessary
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v18 = [(ICNoteEditorViewController *)self dynamicBarColor];
    v3 = objc_alloc_init(MEMORY[0x277D75788]);
    [v3 configureWithTransparentBackground];
    [v3 setBackgroundColor:v18];
    v4 = [(ICNoteEditorViewController *)self navigationItem];
    [v4 setStandardAppearance:v3];

    v5 = [(ICNoteEditorViewController *)self navigationItem];
    [v5 setCompactAppearance:v3];

    if (![(ICNoteEditorViewController *)self usesCustomTransition])
    {
      v6 = [(ICNoteEditorViewController *)self navigationItem];
      [v6 setScrollEdgeAppearance:v3];
    }

    v7 = [(ICNoteEditorViewController *)self navigationController];
    v8 = [v7 toolbar];
    v9 = [v8 standardAppearance];

    [v9 configureWithTransparentBackground];
    [v9 setBackgroundColor:v18];
    v10 = [(ICNoteEditorViewController *)self navigationController];
    v11 = [v10 toolbar];
    [v11 setStandardAppearance:v9];

    v12 = [(ICNoteEditorViewController *)self navigationController];
    v13 = [v12 toolbar];
    [v13 setCompactAppearance:v9];

    v14 = [(ICNoteEditorViewController *)self navigationController];
    v15 = [v14 toolbar];
    [v15 setScrollEdgeAppearance:v9];

    v16 = [(ICNoteEditorViewController *)self navigationController];
    v17 = [v16 toolbar];
    [v17 setCompactScrollEdgeAppearance:v9];
  }
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v4 setNeedsStatusBarAppearanceUpdate];
  v3 = [(ICNoteEditorViewController *)self navigationController];
  [v3 setNeedsStatusBarAppearanceUpdate];
}

- (void)updatePencilKitPaperStyleType
{
  v3 = MEMORY[0x277D36890];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v13 = [v3 linedPaperWithPaperStyleType:{objc_msgSend(v4, "paperStyleType")}];

  v5 = [(ICNoteEditorViewController *)self viewIfLoaded];
  if (v5 && ([MEMORY[0x277D75418] ic_isVision] & 1) == 0)
  {
    v6 = _UISolariumEnabled();

    if (v6)
    {
      goto LABEL_6;
    }

    v5 = objc_alloc_init(MEMORY[0x277D75C60]);
    [v5 configureWithTransparentBackground];
    v7 = [(ICNoteEditorViewController *)self dynamicBarColor];
    [v5 setBackgroundColor:v7];

    v8 = [(ICNoteEditorViewController *)self navigationController];
    v9 = [v8 toolbar];
    [v9 setScrollEdgeAppearance:v5];

    v10 = [(ICNoteEditorViewController *)self navigationController];
    v11 = [v10 toolbar];
    [v11 setCompactScrollEdgeAppearance:v5];
  }

LABEL_6:
  v12 = [(ICNoteEditorViewController *)self textView];
  [v12 setLinedPaper:v13];
}

- (void)showOrHidePasswordEntryViewControllerIfNeeded
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  if ([v4 isPasswordProtectedAndLocked] && (objc_msgSend(v3, "isUnsupported") & 1) == 0)
  {
    v5 = [v3 hasMissingKeychainItem] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v6 isPasswordProtected];

  if (!v7)
  {
    v17 = [(ICNoteEditorViewController *)self passwordEntryViewController];

    if (v17)
    {
      v18 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      v19 = [v18 view];
      [v19 removeFromSuperview];

      v20 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [(ICNoteEditorViewController *)self removeChildViewController:v20];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
      [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
      v21 = [(ICNoteEditorViewController *)self textView];
      [v21 setAlpha:1.0];

LABEL_42:
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
      [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
      goto LABEL_43;
    }

    v34 = [(ICNoteEditorViewController *)self textView];
    [v34 setAlpha:1.0];
    goto LABEL_21;
  }

  if (v5)
  {
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    [(ICNoteEditorViewController *)self blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:2.0];
    v8 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v9 = [v8 isAnimatingOut];

    if (v9)
    {
      v10 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      v11 = [v10 view];
      [v11 removeFromSuperview];

      v12 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [v12 removeFromParentViewController];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
    }

    v13 = [(ICNoteEditorViewController *)self passwordEntryViewController];

    if (v13)
    {
      goto LABEL_33;
    }

    v14 = [(ICNoteEditorViewController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      v15 = [(ICNoteEditorViewController *)self presentedViewController];
      v16 = [v15 performSelector:sel_canAppearAbovePasswordEntryView];

      if (v16)
      {
LABEL_28:
        v49 = [(ICNoteEditorViewController *)self textView];
        v50 = [v49 isEditing];

        if (v50)
        {
          v51 = [(ICNoteEditorViewController *)self textView];
          [v51 endEditing:1];
        }

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          [(ICNoteEditorViewController *)self setEditing:0 animated:0];
        }

        v52 = [objc_alloc(MEMORY[0x277D36898]) initWithNibName:0 bundle:0 note:v3 intent:0];
        [(ICNoteEditorViewController *)self setPasswordEntryViewController:v52];

        v53 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [v53 setMode:0];

        objc_initWeak(&location, self);
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke;
        v89[3] = &unk_2781AD170;
        objc_copyWeak(&v90, &location);
        v54 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [v54 setPasswordEntryCompletionHandler:v89];

        v55 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        v56 = [v55 view];
        [v56 setAutoresizingMask:18];

        v57 = [(ICNoteEditorViewController *)self view];
        [v57 bounds];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        v67 = [v66 view];
        [v67 setFrame:{v59, v61, v63, v65}];

        v68 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [(ICNoteEditorViewController *)self addChildViewController:v68];

        objc_destroyWeak(&v90);
        objc_destroyWeak(&location);
LABEL_33:
        v69 = [(ICNoteEditorBaseViewController *)self note];
        v70 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [v70 setNote:v69];

        v71 = [(ICNoteEditorViewController *)self backgroundView];
        v72 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        v73 = [v72 view];
        [v71 addSubviewAboveAllViews:v73];

        v74 = [(ICNoteEditorViewController *)self traitCollection];
        if ([v74 ic_hasCompactWidth])
        {
          v75 = 1;
        }

        else
        {
          v76 = [(ICNoteEditorViewController *)self viewControllerManager];
          if ([v76 isAuxiliary])
          {
            v75 = 1;
          }

          else if ([MEMORY[0x277D75418] ic_isVision])
          {
            v77 = [(ICNoteEditorViewController *)self viewControllerManager];
            v75 = [v77 isMainSplitViewDisplayModeSecondaryOnly];
          }

          else
          {
            v75 = 0;
          }
        }

        v78 = [(ICNoteEditorViewController *)self viewControllerManager];
        v79 = [v78 noteContainerViewMode] == 0;

        v80 = [(ICNoteEditorViewController *)self viewControllerManager];
        v81 = ([v80 noteContainerViewMode] == 1) | v75;

        [(ICNoteEditorViewController *)self updateContentViewBezelsStandalone:v75 needsAdditionalBottomMargin:v79 needsAdditionalLeadingMargin:v81 & 1 force:1];
        v82 = [(ICNoteEditorViewController *)self view];
        [v82 layoutIfNeeded];

        [(ICNoteEditorViewController *)self recreateTextView];
        v83 = [(ICNoteEditorViewController *)self textView];
        [v83 setHidden:1];

        [(ICNoteEditorViewController *)self hideInkPicker];
        [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
        goto LABEL_42;
      }
    }

    else
    {
    }

    [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
    goto LABEL_28;
  }

  v22 = [(ICNoteEditorViewController *)self passwordEntryViewController];

  if (v22)
  {
    v23 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v24 = [v23 note];
    v25 = [(ICNoteEditorBaseViewController *)self note];

    if (v24 != v25)
    {
      [(ICNoteEditorViewController *)self recreateTextView];
      v26 = [(ICNoteEditorViewController *)self textView];
      [v26 layoutIfNeeded];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        v27 = [(ICNoteEditorViewController *)self textView];
        v28 = [v27 layoutManager];
        v29 = [(ICNoteEditorViewController *)self textView];
        v30 = [v29 textContainer];
        [v28 ensureLayoutForTextContainer:v30];
      }

      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
      [(ICNoteEditorViewController *)self resetTextViewContentOffset];
      [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
      [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
      v31 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      v32 = [v31 view];
      [v32 removeFromSuperview];

      v33 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [v33 removeFromParentViewController];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
      goto LABEL_43;
    }

    v35 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v36 = [v35 isAnimatingOut];

    if (v36)
    {
      goto LABEL_43;
    }

    v37 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [v37 setIsAnimatingOut:1];

    [(ICNoteEditorViewController *)self recreateTextView];
    v38 = [(ICNoteEditorViewController *)self textView];
    [v38 layoutIfNeeded];

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v39 = [(ICNoteEditorViewController *)self textView];
      v40 = [v39 layoutManager];
      v41 = [(ICNoteEditorViewController *)self textView];
      v42 = [v41 textContainer];
      [v40 ensureLayoutForTextContainer:v42];
    }

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
    v43 = *MEMORY[0x277CBF348];
    v44 = *(MEMORY[0x277CBF348] + 8);
    v45 = [(ICNoteEditorViewController *)self textView];
    [v45 setContentOffset:{v43, v44}];

    [(ICNoteEditorViewController *)self resetTextViewContentOffset];
    [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
    v46 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v47 = [(ICNoteEditorViewController *)self textView];
    [v47 setAlpha:0.0];

    v48 = MEMORY[0x277D75D18];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_2;
    v87[3] = &unk_2781ABCF8;
    v88 = v46;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_3;
    v84[3] = &unk_2781AD198;
    v84[4] = self;
    v85 = v88;
    v86 = v3;
    v34 = v88;
    [v48 animateWithDuration:v87 animations:v84 completion:0.25];

LABEL_21:
  }

LABEL_43:
}

- (void)updateUnsupportedNoteView
{
  v36[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICNoteEditorViewController *)self unsupportedNoteView];
  [v3 removeFromSuperview];

  [(ICNoteEditorViewController *)self setUnsupportedNoteView:0];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 isUnsupported];

  if (v5)
  {
    v6 = [[ICUnsupportedNoteView alloc] initWithReason:0];
    [(ICNoteEditorViewController *)self setUnsupportedNoteView:v6];

    v7 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    [v7 setUserInteractionEnabled:0];
  }

  v8 = [(ICNoteEditorBaseViewController *)self note];
  if ([v8 canAuthenticate])
  {
  }

  else
  {
    v9 = [(ICNoteEditorBaseViewController *)self note];
    v10 = [v9 hasMissingKeychainItem];

    if (v10)
    {
      v11 = [(ICNoteEditorBaseViewController *)self note];
      objc_initWeak(&location, v11);

      v12 = [[ICUnsupportedNoteView alloc] initWithReason:1];
      [(ICNoteEditorViewController *)self setUnsupportedNoteView:v12];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __55__ICNoteEditorViewController_updateUnsupportedNoteView__block_invoke;
      v33[3] = &unk_2781AC0B8;
      objc_copyWeak(&v34, &location);
      v13 = [(ICNoteEditorViewController *)self unsupportedNoteView];
      [v13 setDidTapActionButton:v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }
  }

  v14 = [(ICNoteEditorViewController *)self unsupportedNoteView];

  if (v14)
  {
    v15 = [(ICNoteEditorViewController *)self textView];
    [v15 setHidden:1];

    v16 = [(ICNoteEditorViewController *)self view];
    v17 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    [v16 addSubview:v17];

    v28 = MEMORY[0x277CCAAD0];
    v32 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    v30 = [v32 centerXAnchor];
    v31 = [(ICNoteEditorViewController *)self view];
    v29 = [v31 centerXAnchor];
    v18 = [v30 constraintEqualToAnchor:v29];
    v36[0] = v18;
    v19 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    v20 = [v19 centerYAnchor];
    v21 = [(ICNoteEditorViewController *)self view];
    v22 = [v21 centerYAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v36[1] = v23;
    v24 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    v25 = [v24 widthAnchor];
    v26 = [v25 constraintLessThanOrEqualToConstant:310.0];
    v36[2] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    [v28 activateConstraints:v27];
  }
}

- (ICSelectorDelayer)updateNoteUserActivityStateDelayer
{
  updateNoteUserActivityStateDelayer = self->_updateNoteUserActivityStateDelayer;
  if (!updateNoteUserActivityStateDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_updateNoteUserActivityState delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
    v5 = self->_updateNoteUserActivityStateDelayer;
    self->_updateNoteUserActivityStateDelayer = v4;

    updateNoteUserActivityStateDelayer = self->_updateNoteUserActivityStateDelayer;
  }

  return updateNoteUserActivityStateDelayer;
}

- (void)applyScrollStateIfAvailable
{
  v31 = [(ICNoteEditorViewController *)self view];
  v3 = [v31 window];
  if (v3)
  {
    v4 = v3;
    v5 = +[ICExtensionSafeAPIShims applicationState];

    if (v5 != 2)
    {
      v6 = [(ICNoteEditorBaseViewController *)self note];
      v7 = [v6 isPasswordProtectedAndLocked];

      if ((v7 & 1) == 0 && ![(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__4;
        v37 = __Block_byref_object_dispose__4;
        v38 = 0;
        v8 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
        v9 = [v8 note];
        v10 = [v9 managedObjectContext];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__ICNoteEditorViewController_applyScrollStateIfAvailable__block_invoke;
        v32[3] = &unk_2781ACF80;
        v32[4] = self;
        v32[5] = &v33;
        [v10 performBlockAndWait:v32];

        v11 = v34[5];
        v12 = [(ICNoteEditorBaseViewController *)self note];
        v13 = [v12 identifier];
        LODWORD(v11) = [v11 isEqualToString:v13];

        if (v11)
        {
          v14 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
        }

        else
        {
          v15 = [(ICNoteEditorViewController *)self savedScrollStates];
          v16 = [(ICNoteEditorBaseViewController *)self note];
          v17 = [v16 identifier];
          v18 = [v15 ic_objectForNonNilKey:v17];

          if ([v18 captureIsWithinTimeThreshold])
          {
            v14 = v18;
          }

          else
          {
            v14 = 0;
          }
        }

        v19 = [(ICNoteEditorViewController *)self view];
        [v19 layoutIfNeeded];

        v20 = [(ICNoteEditorViewController *)self textView];
        if ([v14 applyToTextView:v20])
        {
          v21 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];

          if (v14 == v21)
          {
            [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:0];
          }
        }

        else
        {
        }

        if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
        {
          if ([(ICNoteEditorViewController *)self shouldOverscrollScrollState])
          {
            v22 = [(ICNoteEditorViewController *)self textView];
            [v22 contentOffset];
            v24 = v23;
            v26 = v25;

            v27 = [(ICNoteEditorViewController *)self view];
            [v27 safeAreaInsets];
            v29 = v28;

            v30 = [(ICNoteEditorViewController *)self textView];
            [v30 setContentOffset:{v24, fmax(v26 + -100.0, -v29)}];
          }
        }

        _Block_object_dispose(&v33, 8);
      }
    }
  }

  else
  {
  }
}

- (void)rememberNoteContentForEditingIntent
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  -[ICNoteEditorViewController setIsEditingNewNote:](self, "setIsEditingNewNote:", [v3 isEmpty]);

  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 textStorage];
  v6 = [v5 mergeableString];
  v7 = MEMORY[0x277CCAE60];
  v8 = [(ICNoteEditorBaseViewController *)self note];
  v9 = [v8 textStorage];
  v10 = [v9 mergeableString];
  v11 = [v7 valueWithRange:{objc_msgSend(v10, "length"), 0}];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [v6 selectionForCharacterRanges:v12];
  [(ICNoteEditorViewController *)self setOriginalEndOfNote:v13];
}

- (void)updateActionMenu
{
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    return;
  }

  v3 = [(ICNoteEditorViewController *)self navigationItem];

  if (!v3)
  {
    return;
  }

  v4 = [(ICNoteEditorViewController *)self invitationViewController];
  if (v4)
  {

LABEL_6:
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 isDeletedOrInTrash];

  if (v6)
  {
    goto LABEL_6;
  }

  v10 = [(ICNoteEditorViewController *)self viewControllerManager];
  v8 = [v10 createDeferredActionMenuElementForEditorViewController:self];
  v7 = 1;
LABEL_7:
  v9 = [(ICNoteEditorViewController *)self navigationItem];
  [v9 setAdditionalOverflowItems:v8];

  if (v7)
  {
  }
}

- (void)updateDataOwnerForCopyAndPaste
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 account];
  if ([v4 isManaged])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 _setDataOwnerForCopy:v5];

  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 _setDataOwnerForPaste:v5];

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 _setDragDataOwner:v5];

  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 _setDropDataOwner:v5];
}

- (void)updateDrawingAttachmentsIfNeeded
{
  v4 = [MEMORY[0x277D36790] sharedConverter];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  [v4 convertDrawingsInNoteIfNeeded:v3];
}

- (void)showOrHideActivityStreamToolbarIfNeeded
{
  v3 = [(ICNoteEditorViewController *)self activityStreamToolbar];

  if (v3)
  {
    v6 = [(ICNoteEditorViewController *)self navigationController];
    v4 = [v6 view];
    v5 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    [v4 bringSubviewToFront:v5];
  }
}

- (void)updateAuthorHighlightsIfNeeded
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v8 = [v3 textStorageWithoutCreating];

  if (v8)
  {
    v4 = [(ICNoteEditorViewController *)self textController];
    v5 = [v4 authorHighlightsController];
    v6 = [v8 ic_range];
    [v5 performHighlightUpdatesForRange:v6 inTextStorage:v7 updates:{v8, 0}];
  }
}

- (ICBluetoothKeyboardHintViewController)bluetoothKeyboardHintViewController
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    bluetoothKeyboardHintViewController = self->_bluetoothKeyboardHintViewController;
    if (!bluetoothKeyboardHintViewController)
    {
      v4 = [[ICBluetoothKeyboardHintViewController alloc] initWithRootViewController:self];
      v5 = self->_bluetoothKeyboardHintViewController;
      self->_bluetoothKeyboardHintViewController = v4;

      bluetoothKeyboardHintViewController = self->_bluetoothKeyboardHintViewController;
    }

    v6 = bluetoothKeyboardHintViewController;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isShowingAudioInspector
{
  v2 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  v3 = [v2 isShowingInspector];

  return v3;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone];
    v4 = objc_alloc(MEMORY[0x277D35978]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (v3)
    {
      v7 = [v4 initWithSubTrackerName:v6];
      eventReporter = self->_eventReporter;
      self->_eventReporter = v7;
    }

    else
    {
      eventReporter = [(ICNoteEditorViewController *)self viewControllerManager];
      v9 = [eventReporter window];
      v10 = [v9 windowScene];
      v11 = [v4 initWithSubTrackerName:v6 windowScene:v10];
      v12 = self->_eventReporter;
      self->_eventReporter = v11;
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v14 = self->_eventReporter;

  return v14;
}

- (UIResponder)auxiliaryResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_auxiliaryResponder);

  return WeakRetained;
}

- (BOOL)isInkPickerShowing
{
  v3 = [(ICNoteEditorViewController *)self inkPaletteController];
  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self inkPaletteController];
    v5 = [v4 isInkPaletteShowing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)hideAcceleratorIfNecessary
{
  v3 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  v4 = [v3 isShowing];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v5 hideAccelerator];
  }
}

- (int64_t)attributionSidebarVisibility
{
  v2 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v3 = [v2 attributionSidebarVisibility];

  return v3;
}

- (BOOL)shouldLockTextViewContentOffset
{
  result = 1;
  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    v3 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];

    if (!v3)
    {
      return 0;
    }

    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    if (v7 >= 0.1)
    {
      return 0;
    }
  }

  return result;
}

- (void)updateUserAndDateViewVisibility
{
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    v4 = [v3 userTitleView];
    [v4 alpha];
    if (fabs(v5) >= 0.00999999978)
    {
      v17 = [(ICNoteEditorViewController *)self textView];
      v18 = [v17 dateView];
      [v18 alpha];
      v6 = fabs(v19) < 0.00999999978;
    }

    else
    {
      v6 = 1;
    }

    v20 = [(ICNoteEditorViewController *)self textView];
    [v20 safeAreaInsets];
    if (v21 == 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v22 = [(ICNoteEditorViewController *)self textView];
      [v22 safeAreaInsets];
      v24 = -v23;
    }

    v25 = [(ICNoteEditorViewController *)self textView];
    [v25 contentOffset];
    v27 = v26;
    v28 = [(ICNoteEditorViewController *)self textView];
    [v28 contentInset];
    v30 = v29;

    if (v27 < v24 - v30 && v6)
    {
      v32 = MEMORY[0x277D75D18];
      +[ICSystemPaperConstants linkBarAnimationDuration];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__ICNoteEditorViewController_updateUserAndDateViewVisibility__block_invoke;
      v34[3] = &unk_2781ABCF8;
      v34[4] = self;
      [v32 animateWithDuration:v34 animations:?];
    }
  }

  else if ([(ICNoteEditorViewController *)self headerSubviewsFadeInOnUnderscrolling])
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    [v7 safeAreaInsets];
    v9 = v8;

    v10 = [(ICNoteEditorViewController *)self textView];
    [v10 contentOffset];
    v12 = fabs(v11);

    if ((v12 - v9) * 0.0625 <= 1.0)
    {
      v13 = (v12 - v9) * 0.0625;
    }

    else
    {
      v13 = 1.0;
    }

    v14 = [(ICNoteEditorViewController *)self textView];
    v15 = [v14 userTitleView];
    [v15 setAlpha:v13];

    v33 = [(ICNoteEditorViewController *)self textView];
    v16 = [v33 dateView];
    [v16 setAlpha:v13];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(ICNoteEditorViewController *)self textView];

  if (!v3)
  {
    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:[(ICNoteEditorViewController *)self needsInitialBarConfiguration]];
    [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
  }

  [(ICNoteEditorViewController *)self updateBottomContentPadding];
  if ([(ICNoteEditorViewController *)self shouldResetTextViewContentOffsetWhenAppearing])
  {
    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      [(ICNoteEditorViewController *)self resetTextViewContentOffset];
      v4 = [(ICNoteEditorViewController *)self textViewController];
      [v4 applyInitialScrollState];
    }
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && [(ICNoteEditorViewController *)self _appearState]== 1)
  {
    [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
  }

  if ([(ICNoteEditorViewController *)self needsInitialBarConfiguration])
  {
    [(ICNoteEditorViewController *)self setNeedsInitialBarConfiguration:0];
    [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0 checkIfVisible:0];
  }

  v6.receiver = self;
  v6.super_class = ICNoteEditorViewController;
  [(ICScrollViewDelegateViewController *)&v6 viewDidLayoutSubviews];
  v5 = [(ICNoteEditorViewController *)self viewControllerManager];
  [v5 updateHostedNotesAppearance];

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_noteEditorDidLayoutSubviews];
  }
}

- (void)updateBottomContentPadding
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 isTransitioningToNewSize];

  if ((v4 & 1) == 0)
  {
    v5 = [(ICNoteEditorViewController *)self view];
    [v5 bounds];
    Height = CGRectGetHeight(v24);
    v7 = [(ICNoteEditorViewController *)self view];
    [v7 safeAreaInsets];
    v9 = Height - v8;

    [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWant];
    v11 = v9 - (v10 + 0.0 + 70.0);
    [(ICNoteEditorViewController *)self textViewBottomPaddingVisibleRatio];
    v13 = v12 * v11;
    v14 = [(ICNoteEditorViewController *)self textView];
    v15 = [v14 bottomContentPadding];
    [v15 targetValue];
    v17 = vabdd_f64(v16, v13);

    if (v17 >= 0.00999999978)
    {
      v18 = [MEMORY[0x277D36260] BOOLForKey:*MEMORY[0x277D362F8]];
      v19 = [(ICNoteEditorViewController *)self textView];
      v20 = [v19 bottomContentPadding];
      [v20 setMode:v18];

      v22 = [(ICNoteEditorViewController *)self textView];
      v21 = [v22 bottomContentPadding];
      [v21 setTargetValue:v13];
    }
  }
}

- (double)textViewBottomInsetThatWeWant
{
  v3 = [(ICNoteEditorViewController *)self isEditing];

  [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWantForEditing:v3];
  return result;
}

- (UIEdgeInsets)textViewScrollIndicatorInsetsThatWeWant
{
  [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
  v43 = v3;
  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
  v42 = v4;
  v5 = [(ICNoteEditorViewController *)self textView];
  [v5 verticalScrollIndicatorInsets];
  v39 = v7;
  v40 = v6;

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v44.origin.x = v10;
  v44.origin.y = v12;
  v44.size.width = v14;
  v44.size.height = v16;
  v17 = CGRectGetHeight(v44) / 3.0;
  v45.origin.x = v10;
  v45.origin.y = v12;
  v45.size.width = v14;
  v45.size.height = v16;
  v46 = CGRectInset(v45, 0.0, v17);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v22 = [(ICNoteEditorViewController *)self textView];
  [v22 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{x, y, width, height}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v47.origin.x = v24;
  v47.origin.y = v26;
  v47.size.width = v28;
  v47.size.height = v30;
  if (CGRectIsNull(v47))
  {
    v31 = v39;
    v32 = v40;
  }

  else
  {
    v48.origin.x = v24;
    v48.origin.y = v26;
    v48.size.width = v28;
    v48.size.height = v30;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = v10;
    v49.origin.y = v12;
    v49.size.width = v14;
    v49.size.height = v16;
    v33 = CGRectGetMinX(v49);
    v34 = v10;
    v32 = MinX - v33;
    v50.origin.x = v34;
    v50.origin.y = v12;
    v50.size.width = v14;
    v50.size.height = v16;
    MaxX = CGRectGetMaxX(v50);
    v51.origin.x = v24;
    v51.origin.y = v26;
    v51.size.width = v28;
    v51.size.height = v30;
    v31 = MaxX - CGRectGetMaxX(v51);
  }

  v37 = v42;
  v36 = v43;
  v38 = v32;
  result.right = v31;
  result.bottom = v37;
  result.left = v38;
  result.top = v36;
  return result;
}

- (double)textViewTopInsetThatWeWant
{
  v3 = 0.0;
  if (([MEMORY[0x277D75418] ic_isVision] & 1) == 0 && (ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromTop];
    v3 = v4;
  }

  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 compatibilityBannerView];

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 compatibilityBannerView];
    [v8 preferredHeight];
    v3 = v3 + v9;
  }

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [v10 dateView];
    [v11 preferredHeight];
    v13 = v12;
    v14 = [(ICNoteEditorViewController *)self textView];
    v15 = [v14 userTitleView];
    [v15 preferredHeight];
    v3 = v3 + v13 + v16;
  }

  if (self->_paperLinkBarShowing)
  {
    +[ICSystemPaperConstants linkBarHeight];
    v3 = v3 + v17;
  }

  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    +[ICSystemPaperConstants noteTopPaddingOnPad];
    return v3 + v18;
  }

  return v3;
}

- (double)textViewBottomPaddingVisibleRatio
{
  v3 = 1.0;
  if (([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
  {
    v4 = [(ICNoteEditorViewController *)self textStorage];
    v5 = [v4 length];

    v3 = 0.5;
    if (v5)
    {
      v6 = [(ICNoteEditorViewController *)self textStorage];
      v7 = [v6 string];
      v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v9 = [v8 invertedSet];
      v10 = [v7 rangeOfCharacterFromSet:v9 options:4];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_opt_class();
        v11 = [(ICNoteEditorViewController *)self textStorage];
        v12 = [v11 attribute:*MEMORY[0x277D74060] atIndex:v10 effectiveRange:0];
        v13 = ICDynamicCast();

        if (v13)
        {
          return 0.9;
        }

        else
        {
          return 0.5;
        }
      }
    }
  }

  return v3;
}

- (BOOL)isEditingOnSystemPaperOnPad
{
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    return 0;
  }

  v3 = [(ICNoteEditorViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom] == 1;

  return v4;
}

- (id)iCloudShareBarButtonItem
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  if ([v3 isPubliclySharedOrHasInvitees] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [(ICNoteEditorViewController *)self collaborationButtons_collaborationBarButtonItem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)becomeFirstResponder
{
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    v3 = [(ICNoteEditorViewController *)self paletteResponder];
    v4 = [v3 becomeFirstResponder];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICNoteEditorViewController;
    return [(ICNoteEditorViewController *)&v6 becomeFirstResponder];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(ICNoteEditorViewController *)self viewControllerManager];
  if ([v3 hasCompactWidth])
  {
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([v5 isPrimaryContentVisible])
    {

      return 0;
    }

    v6 = [(ICNoteEditorViewController *)self viewControllerManager];
    v7 = [v6 isSupplementaryContentVisible];

    if (v7)
    {
      return 0;
    }
  }

  if ([(ICNoteEditorViewController *)self isStyleSelectorInputViewPresenting])
  {
    return 0;
  }

  v4 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (v4)
  {

    return 0;
  }

  v8 = [(ICNoteEditorViewController *)self invitationViewController];

  return !v8;
}

- (ICNoteEditorViewController)initWithIdentifier:(int64_t)a3 options:(unint64_t)a4
{
  v4 = a4;
  v14.receiver = self;
  v14.super_class = ICNoteEditorViewController;
  v5 = [(ICNoteEditorBaseViewController *)&v14 initWithIdentifier:a3 options:a4 nibName:0 bundle:0];
  if (v5)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = &OBJC_IVAR___ICNoteEditorViewController__enabledSubviews;
    }

    else
    {
      v6 = objc_alloc_init(ICAttributionSidebarController);
      v7 = &OBJC_IVAR___ICNoteEditorViewController__attributionSidebarController;
    }

    v8 = *v7;
    v9 = *(&v5->super.super.super.super.super.isa + v8);
    *(&v5->super.super.super.super.super.isa + v8) = v6;

    v5->_canShowLinkBar = (v4 & 2) != 0;
    v10 = [MEMORY[0x277CBEB38] dictionary];
    savedScrollStates = v5->_savedScrollStates;
    v5->_savedScrollStates = v10;

    v5->_needsInitialBarConfiguration = 1;
    v12 = [(ICNoteEditorViewController *)v5 backgroundView];
    [v12 setAccessibilityElementReparentingDelegate:v5];

    [(ICNoteEditorViewController *)v5 registerForTraitChanges];
  }

  return v5;
}

+ (id)editorViewControllerWithIdentifier:(int64_t)a3 options:(unint64_t)a4
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v7 = off_2781A8E28;
  if (!IsTextKit2Enabled)
  {
    v7 = off_2781A8D90;
  }

  v8 = [objc_alloc(*v7) initWithIdentifier:a3 options:a4];

  return v8;
}

- (ICTextView)textView
{
  v2 = [(ICNoteEditorViewController *)self textViewController];
  v3 = [v2 textView];

  return v3;
}

- (ICTextView)textViewIfLoaded
{
  v2 = [(ICNoteEditorViewController *)self textViewController];
  v3 = [v2 textViewIfLoaded];

  return v3;
}

- (ICTextController)textController
{
  v2 = [(ICNoteEditorViewController *)self textViewController];
  v3 = [v2 textController];

  return v3;
}

- (void)startEditing
{
  if (([(ICNoteEditorViewController *)self ic_isViewVisible]& 1) == 0)
  {
    [(ICNoteEditorViewController *)self setStartEditingAfterViewAppears:1];
    goto LABEL_5;
  }

  v4 = [(ICNoteEditorViewController *)self passwordEntryViewController];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [v5 beginAuthentication];

    [(ICNoteEditorViewController *)self setShouldBeginEditingAfterNoteUnlock:1];
    goto LABEL_5;
  }

  v6 = [(ICNoteEditorViewController *)self invitationViewController];
  if (v6)
  {

    goto LABEL_5;
  }

  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 isFirstResponder];
  if (v8)
  {
    v2 = [(ICNoteEditorViewController *)self textView];
    if ([v2 isEditable])
    {

      goto LABEL_5;
    }
  }

  v9 = [(ICNoteEditorViewController *)self textView];
  v10 = [v9 canBecomeFirstResponder];

  if (v8)
  {
  }

  if (v10)
  {
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    v11 = [(ICNoteEditorViewController *)self textView];
    [v11 setEditable:1];

    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [v12 selectedRange];
    v15 = v14;

    v16 = [(ICNoteEditorViewController *)self textView];
    v17 = [v16 textStorage];
    if ([v17 length] && !v15)
    {
      v18 = [(ICNoteEditorViewController *)self textView];
      v19 = [v18 textStorage];
      v20 = [v19 length];

      if (v13 != v20)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      v21 = [(ICNoteEditorViewController *)self textView];
      v22 = [v21 textStorage];
      v23 = [v22 attribute:*MEMORY[0x277D74060] atIndex:v13 - 1 effectiveRange:0];
      v16 = ICDynamicCast();

      if (!v16 || [v16 embeddingType] != 1)
      {
LABEL_23:

LABEL_24:
        v25 = [(ICNoteEditorViewController *)self view];
        v26 = [v25 window];
        [v26 makeKeyWindow];

        v27 = [(ICNoteEditorViewController *)self textView];
        [v27 becomeFirstResponder];

        if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
        {
          v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v29 = [v28 BOOLForKey:@"DisableInitialCursorSizeWorkaround"];

          if ((v29 & 1) == 0)
          {
            v30 = [(ICNoteEditorViewController *)self textView];
            v31 = [v30 textStorage];
            v32 = [v31 length];

            if (!v32)
            {
              v33 = [(ICNoteEditorViewController *)self textView];
              v34 = [v33 layoutManager];
              v35 = [(ICNoteEditorViewController *)self textView];
              v36 = [v35 textContainer];
              [v34 setExtraLineFragmentRect:v36 usedRect:*MEMORY[0x277CBF3A0] textContainer:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
            }
          }
        }

        [(ICNoteEditorViewController *)self rememberNoteContentForEditingIntent];
        goto LABEL_5;
      }

      v17 = [(ICNoteEditorViewController *)self textView];
      v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [v17 _pasteAttributedString:v24 pasteAsRichText:0];
    }

    goto LABEL_23;
  }

LABEL_5:
  v37 = [MEMORY[0x277CCAB98] defaultCenter];
  [v37 postNotificationName:@"ICNoteEditorViewControllerDidStartEditingNotification" object:self];
}

- (void)keyboardDidShow:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setKeyboardDidShowAnimationDate:v5];

  v6 = dispatch_time(0, 300000000);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __46__ICNoteEditorViewController_keyboardDidShow___block_invoke;
  v10 = &unk_2781AC0B8;
  objc_copyWeak(&v11, &location);
  dispatch_after(v6, MEMORY[0x277D85CD0], &v7);
  [(ICNoteEditorViewController *)self setWasEditingBeforeDrawing:1, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__ICNoteEditorViewController_keyboardDidShow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardDidShowAnimationDate:0];
}

- (BOOL)shouldUseiPadBarLayout
{
  v3 = [(ICNoteEditorViewController *)self traitCollection];
  if (![v3 horizontalSizeClass])
  {
    v4 = [(ICNoteEditorViewController *)self view];
    v5 = [v4 window];
    v6 = [v5 rootViewController];
    v7 = [v6 traitCollection];

    v3 = v7;
  }

  if (([v3 ic_hasCompactWidth] & 1) != 0 || (objc_msgSend(MEMORY[0x277D75418], "ic_isiPad") & 1) == 0)
  {
    v8 = [MEMORY[0x277D75418] ic_isVision];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4 inSearchableString:(id)a5 searchHighlightRegexFinder:(id)a6
{
  v7 = a4;
  length = a3.length;
  location = a3.location;
  v17 = a5;
  v11 = a6;
  if ([(ICNoteEditorViewController *)self _appearState]== 2)
  {
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v12 = [(ICNoteEditorViewController *)self textView];
      v13 = [v12 layoutManager];
      v14 = [(ICNoteEditorViewController *)self textView];
      v15 = [v14 textContainer];
      [v13 ensureLayoutForTextContainer:v15];
    }

    v16 = [(ICNoteEditorViewController *)self textView];
    [v16 scrollRangeToVisible:location consideringInsets:length animated:1 inSearchableString:{0, v17}];

    [(ICNoteEditorViewController *)self setSearchRegexFinder:v11];
  }

  else
  {
    [(ICNoteEditorViewController *)self scrollRangeToVisibleWhenViewAppears:location animated:length inSearchableString:v7 searchHighlightRegexFinder:v17, v11];
  }
}

- (void)scrollRangeToVisibleWhenViewAppears:(_NSRange)a3 animated:(BOOL)a4 inSearchableString:(id)a5 searchHighlightRegexFinder:(id)a6
{
  length = a3.length;
  location = a3.location;
  v9 = a6;
  v10 = [(ICNoteEditorViewController *)self view];
  [(ICNoteEditorViewController *)self setShouldResetTextViewContentOffsetWhenAppearing:0];
  v11 = [(ICNoteEditorBaseViewController *)self note];
  v12 = [ICTextViewScrollState scrollStateForRange:location inNote:length, v11];

  [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:v12];
  [(ICNoteEditorViewController *)self setSearchRegexFinder:v9];

  [(ICNoteEditorViewController *)self setShouldOverscrollScrollState:1];
}

- (void)setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICNoteEditorViewController *)self textView];
  [v5 setSelectedRange:{location, length}];
}

- (id)barButtonItemWithImage:(id)a3 selector:(SEL)a4
{
  v6 = MEMORY[0x277D751E0];
  v7 = a3;
  v8 = [[v6 alloc] initWithImage:v7 style:0 target:self action:a4];

  return v8;
}

- (id)flexibleSpaceBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (void)recreateTextViewIfPasswordEntryScreenExistsButNoteIsUnlocked
{
  v3 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICNoteEditorBaseViewController *)self note];
    v6 = [v5 isPasswordProtectedAndLocked];

    if ((v6 & 1) == 0)
    {

      [(ICNoteEditorViewController *)self recreateTextView];
    }
  }
}

- (void)recreateTextView
{
  v251[2] = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_willLoadNoteIntoEditor];
  }

  v3 = [(ICNoteEditorViewController *)self textView];
  [v3 contentOffset];
  v245 = v5;
  v246 = v4;

  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(ICNoteEditorViewController *)self textView];
  [v15 verticalScrollIndicatorInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(ICNoteEditorViewController *)self textView];

  if (v24)
  {
    v25 = [(ICNoteEditorViewController *)self textView];
    [v25 _removeBoundingPathChangeObserver:self];

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = *MEMORY[0x277CCA7F8];
    v28 = [(ICNoteEditorViewController *)self textView];
    v29 = [v28 undoManager];
    [v26 removeObserver:self name:v27 object:v29];

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    v31 = *MEMORY[0x277CCA810];
    v32 = [(ICNoteEditorViewController *)self textView];
    v33 = [v32 undoManager];
    [v30 removeObserver:self name:v31 object:v33];

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    v35 = *MEMORY[0x277CCA808];
    v36 = [(ICNoteEditorViewController *)self textView];
    v37 = [v36 undoManager];
    [v34 removeObserver:self name:v35 object:v37];

    v38 = [(ICNoteEditorViewController *)self textView];
    [v38 setDelegate:0];

    v39 = [(ICNoteEditorViewController *)self textView];
    [v39 removeFromSuperview];
  }

  v40 = [(ICNoteEditorViewController *)self textViewController];

  if (v40)
  {
    v41 = [(ICNoteEditorViewController *)self textViewController];
    [(ICNoteEditorViewController *)self removeChildViewController:v41];
  }

  v42 = [(ICNoteEditorViewController *)self textView];
  v43 = [v42 textStorage];
  v44 = [v43 layoutManagers];
  v45 = [(ICNoteEditorViewController *)self textView];
  v46 = [v45 layoutManager];
  v47 = [v44 containsObject:v46];

  if (v47)
  {
    v48 = [(ICNoteEditorViewController *)self textView];
    v49 = [v48 textStorage];
    v50 = [(ICNoteEditorViewController *)self textView];
    v51 = [v50 layoutManager];
    [v49 removeLayoutManager:v51];
  }

  v52 = [(ICNoteEditorBaseViewController *)self note];
  if ([v52 isPasswordProtectedAndLocked])
  {
    goto LABEL_12;
  }

  v53 = [(ICNoteEditorViewController *)self invitation];
  if (v53)
  {

LABEL_12:
    goto LABEL_13;
  }

  v64 = [(ICNoteEditorBaseViewController *)self note];
  v65 = [v64 isUnsupported];

  if (v65)
  {
LABEL_13:
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v54 = [ICTextViewController alloc];
      v55 = [(ICNoteEditorViewController *)self viewControllerManager];
      v56 = [(ICNoteEditorBaseViewController *)self note];
      v57 = [(ICNoteEditorViewController *)self view];
      [v57 bounds];
      v59 = v58;
      v60 = objc_alloc_init(ICTextViewScrollState);
      v61 = [(ICTextViewController *)v54 initWithViewControllerManager:v55 editorViewController:self note:v56 initialContainerWidth:v60 scrollState:v59];
      [(ICNoteEditorViewController *)self setTextViewController:v61];

      v247 = [(ICNoteEditorViewController *)self textViewController];
      v62 = [v247 view];
      v63 = [(ICNoteEditorViewController *)self backgroundView];
      [v63 setContentView:v62];
    }

    return;
  }

  v66 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
  v67 = [v66 note];
  v68 = [(ICNoteEditorBaseViewController *)self note];
  if ([v67 isEqual:v68])
  {
    v69 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
  }

  else
  {
    v69 = 0;
  }

  if (!v69)
  {
    v70 = [(ICNoteEditorViewController *)self savedScrollStates];
    v71 = [(ICNoteEditorBaseViewController *)self note];
    v72 = [v71 identifier];
    v69 = [v70 ic_objectForNonNilKey:v72];
  }

  if (([v69 captureIsWithinTimeThreshold] & 1) == 0 && (objc_msgSend(v69, "isFromArchive") & 1) == 0)
  {

    v69 = 0;
  }

  v73 = [ICTextViewController alloc];
  v74 = [(ICNoteEditorViewController *)self viewControllerManager];
  v75 = [(ICNoteEditorBaseViewController *)self note];
  v76 = [(ICNoteEditorViewController *)self view];
  [v76 bounds];
  v78 = [(ICTextViewController *)v73 initWithViewControllerManager:v74 editorViewController:self note:v75 initialContainerWidth:v69 scrollState:v77];
  [(ICNoteEditorViewController *)self setTextViewController:v78];

  v79 = [(ICNoteEditorViewController *)self textViewController];
  [v79 setPerformingInitialSetup:1];

  v80 = [(ICNoteEditorViewController *)self textViewController];
  v81 = [v80 textView];
  [v81 setContentInsetAdjustmentBehavior:2];

  v82 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(v81) = [v82 isPasswordProtected];
  v83 = [(ICNoteEditorViewController *)self textViewController];
  v84 = [v83 textView];
  [v84 setLearnsCorrections:v81 ^ 1];

  v85 = [(ICNoteEditorViewController *)self textViewController];
  [(ICNoteEditorViewController *)self addChildViewController:v85];

  v86 = [(ICNoteEditorViewController *)self textView];
  [v86 setContentInsetAdjustmentBehavior:2];

  v87 = [(ICNoteEditorViewController *)self textView];
  [v87 setDrawingDelegate:self];

  v88 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v88 setDelegate:self];
  v89 = [(ICNoteEditorViewController *)self textView];
  [v89 addInteraction:v88];

  v90 = [(ICNoteEditorViewController *)self textView];
  [v90 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  v91 = objc_alloc(MEMORY[0x277D366A8]);
  v92 = [(ICNoteEditorBaseViewController *)self note];
  v93 = [v91 initWithNote:v92];
  [(ICNoteEditorViewController *)self setAttachmentInsertionController:v93];

  v94 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  [v94 setAttachmentDelegate:self];

  v95 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v96 = [(ICNoteEditorViewController *)self textController];
  [v96 setAttachmentInsertionController:v95];

  v97 = [ICVisualAssetImportController alloc];
  v98 = [(ICNoteEditorBaseViewController *)self note];
  v99 = [(ICNoteEditorViewController *)self textView];
  v100 = [(ICVisualAssetImportController *)v97 initWithNote:v98 textView:v99];
  [(ICNoteEditorViewController *)self setVisualAssetImportController:v100];

  v101 = objc_alloc(MEMORY[0x277D35F20]);
  v102 = [(ICNoteEditorBaseViewController *)self note];
  v103 = [v101 initWithNote:v102];
  [(ICNoteEditorViewController *)self setMentionsController:v103];

  v104 = [(ICNoteEditorViewController *)self mentionsController];
  [v104 setAnalyticsDelegate:self];

  v105 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v106 = [(ICNoteEditorViewController *)self mentionsController];
  [v106 setAttachmentInsertionController:v105];

  v107 = [(ICNoteEditorViewController *)self mentionsController];
  v108 = [(ICNoteEditorViewController *)self textController];
  [v108 setMentionsController:v107];

  v109 = [(ICNoteEditorViewController *)self textView];
  v110 = [(ICNoteEditorViewController *)self mentionsController];
  [v110 setTextView:v109];

  v111 = objc_alloc(MEMORY[0x277D35EE8]);
  v112 = [(ICNoteEditorBaseViewController *)self note];
  v113 = [v111 initWithNote:v112];
  [(ICNoteEditorViewController *)self setHashtagController:v113];

  v114 = [(ICNoteEditorViewController *)self hashtagController];
  [v114 setAnalyticsDelegate:self];

  v115 = [(ICNoteEditorViewController *)self textView];
  v116 = [(ICNoteEditorViewController *)self hashtagController];
  [v116 setTextView:v115];

  v117 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v118 = [(ICNoteEditorViewController *)self hashtagController];
  [v118 setAttachmentInsertionController:v117];

  v119 = [(ICNoteEditorViewController *)self hashtagController];
  v120 = [(ICNoteEditorViewController *)self textController];
  [v120 setHashtagController:v119];

  v121 = [ICLinkAcceleratorController alloc];
  v122 = [MEMORY[0x277D35E70] sharedConfiguration];
  v123 = [(ICLinkAcceleratorController *)v121 initWithCloudConfiguration:v122 mode:0];
  [(ICNoteEditorViewController *)self setLinkAcceleratorController:v123];

  v124 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v124 setDelegate:self];

  v125 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v125 setLinkDelegate:self];

  if (ICInternalSettingsIsNotesMathEnabled())
  {
    v126 = objc_alloc(MEMORY[0x277D36738]);
    v127 = [(ICNoteEditorBaseViewController *)self note];
    v128 = [v126 initWithNote:v127];
    [(ICNoteEditorViewController *)self setCalculateRecognitionController:v128];

    v129 = [(ICNoteEditorViewController *)self textView];
    v130 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v130 setTextView:v129];

    v131 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v132 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v132 setAttachmentInsertionController:v131];

    v133 = [(ICNoteEditorViewController *)self textView];
    v134 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v134 setSuggestionsDelegate:v133];

    v135 = [(ICNoteEditorBaseViewController *)self note];
    v136 = [v135 calculatePreviewBehavior] != 1;
    v137 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v137 setInsertsResults:v136];

    v138 = [(ICNoteEditorBaseViewController *)self note];
    v139 = [v138 calculatePreviewBehavior];
    v140 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v140 setPreviewBehavior:v139];

    v141 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v141 addErrorInteraction];
  }

  if (ICInternalSettingsIsScrubbingEnabled())
  {
    v142 = objc_alloc(MEMORY[0x277D36750]);
    v143 = [(ICNoteEditorViewController *)self textView];
    v144 = [v142 initWithTextView:v143];
    [(ICNoteEditorViewController *)self setCalculateScrubberController:v144];

    v145 = [(ICNoteEditorBaseViewController *)self note];
    v146 = [(ICNoteEditorViewController *)self calculateScrubberController];
    [v146 setNote:v145];
  }

  if (ICInternalSettingsIsGraphingEnabled())
  {
    v147 = objc_alloc(MEMORY[0x277D36728]);
    v148 = [(ICNoteEditorBaseViewController *)self note];
    v149 = [v147 initWithNote:v148];
    [(ICNoteEditorViewController *)self setCalculateGraphingController:v149];

    v150 = [(ICNoteEditorViewController *)self textView];
    v151 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v151 setTextView:v150];

    v152 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v153 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v153 setAttachmentInsertionController:v152];

    v154 = [(ICNoteEditorViewController *)self calculateScrubberController];
    v155 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v155 setScrubberController:v154];
  }

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
    v156 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [v156 refresh];
  }

  v157 = [ICPaperTextAttachmentManager alloc];
  v158 = [(ICNoteEditorBaseViewController *)self note];
  v159 = [(ICNoteEditorViewController *)self textView];
  v160 = [(ICPaperTextAttachmentManager *)v157 initWithNote:v158 textView:v159 delegate:self];
  [(ICNoteEditorViewController *)self setPaperTextAttachmentManager:v160];

  v161 = [(ICNoteEditorBaseViewController *)self note];
  v162 = [(ICNoteEditorViewController *)self textView];
  v163 = [v162 dateView];
  [v163 setNote:v161];

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];
  }

  else
  {
    v164 = [(ICNoteEditorBaseViewController *)self note];
    -[ICNoteEditorViewController setUserWantsToSeeDateLabel:](self, "setUserWantsToSeeDateLabel:", [v164 isSharedAndEmpty]);
  }

  v165 = [(ICNoteEditorViewController *)self textView];
  v166 = [(ICNoteEditorBaseViewController *)self note];
  [v165 createUserTitleViewIfNecessaryForNote:v166];

  v167 = [(ICNoteEditorViewController *)self textView];
  v168 = [(ICNoteEditorBaseViewController *)self note];
  [v167 updateCompatibilityBannerForNote:v168 parentViewController:self updateTextViewContentInsets:0];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen]&& ![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    v171 = [(ICNoteEditorViewController *)self textView];
    [v171 setDataDetectorTypes:2];
  }

  else
  {
    v169 = [(ICNoteEditorViewController *)self textView];
    objc_initWeak(&location, v169);

    v170 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICNoteEditorViewController_recreateTextView__block_invoke;
    block[3] = &unk_2781AC0B8;
    objc_copyWeak(&v249, &location);
    dispatch_after(v170, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v249);
    objc_destroyWeak(&location);
  }

  v172 = [(ICNoteEditorViewController *)self traitCollection];
  if ([v172 ic_hasCompactWidth])
  {
    v173 = 1;
  }

  else
  {
    v174 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([v174 isAuxiliary])
    {
      v173 = 1;
    }

    else if ([MEMORY[0x277D75418] ic_isVision])
    {
      v175 = [(ICNoteEditorViewController *)self viewControllerManager];
      v173 = [v175 isMainSplitViewDisplayModeSecondaryOnly];
    }

    else
    {
      v173 = 0;
    }
  }

  v176 = [(ICNoteEditorViewController *)self viewControllerManager];
  v177 = [v176 noteContainerViewMode] == 0;

  v178 = [(ICNoteEditorViewController *)self viewControllerManager];
  v179 = ([v178 noteContainerViewMode] == 1) | v173;

  v180 = [(ICNoteEditorViewController *)self backgroundView];
  v181 = [(ICNoteEditorViewController *)self textViewController];
  v182 = [v181 view];
  [v180 setContentView:v182 useSafeAreaLayoutGuide:objc_msgSend(MEMORY[0x277D75418] standalone:"ic_isVision") needsAdditionalBottomMargin:v173 needsAdditionalLeadingMargin:v177 force:{v179 & 1, 0}];

  v183 = objc_alloc(MEMORY[0x277D366F8]);
  v184 = [(ICNoteEditorBaseViewController *)self note];
  v185 = [v183 initWithNote:v184 textLayoutManager:0];
  [(ICNoteEditorViewController *)self setAuthorHighlightsController:v185];

  v186 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v187 = [(ICNoteEditorViewController *)self textController];
  [v187 setAuthorHighlightsController:v186];

  v188 = [ICAuthorHighlightsUpdater alloc];
  v189 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v190 = [(ICAuthorHighlightsUpdater *)v188 initWithAuthorHighlightsController:v189 textLayoutManager:0];
  [(ICNoteEditorViewController *)self setAuthorHighlightsUpdater:v190];

  v191 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [v191 setHighlightedValue:0.0];

  v192 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  v193 = [(ICNoteEditorViewController *)self attributionSidebarView];
  [v193 setAuthorHighlightsUpdater:v192];

  v194 = [(ICNoteEditorViewController *)self view];
  [v194 layoutIfNeeded];

  v195 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [v195 scheduleUpdateAnimated:0];

  v196 = [(ICNoteEditorViewController *)self textView];
  v197 = [(ICNoteEditorViewController *)self textView];
  [v197 layoutMargins];
  [v196 applyEdgeInsets:?];

  v198 = [(ICNoteEditorViewController *)self textView];
  [v198 setDelegate:self];

  v199 = [(ICNoteEditorViewController *)self textView];
  [v199 setIcDelegate:self];

  v200 = [(ICNoteEditorViewController *)self textView];
  [v200 setAttachmentViewDelegate:self];

  v201 = [(ICNoteEditorViewController *)self textView];
  [v201 setCanCancelContentTouches:1];

  v202 = [(ICNoteEditorViewController *)self textView];
  [v202 setDelaysContentTouches:0];

  v203 = [(ICNoteEditorBaseViewController *)self note];
  v204 = [v203 isEditable];
  v205 = [(ICNoteEditorViewController *)self textView];
  [v205 setDisplayingEditableContent:v204];

  [(ICNoteEditorViewController *)self rebuildInputAccessoryView];
  v206 = [(ICNoteEditorViewController *)self textView];
  [v206 _addBoundingPathChangeObserver:self];

  if (v24)
  {
    v207 = [(ICNoteEditorViewController *)self textView];
    [v207 setContentInset:{v8, v10, v12, v14}];

    v208 = [(ICNoteEditorViewController *)self textView];
    [v208 setVerticalScrollIndicatorInsets:{v17, v19, v21, v23}];

    v209 = [(ICNoteEditorViewController *)self textView];
    [v209 setContentOffset:{*&v246, v245}];
  }

  v210 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v210 setDirection:1];
  [v210 setDelegate:self];
  v211 = [(ICNoteEditorViewController *)self textView];
  [v211 addGestureRecognizer:v210];

  v212 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v212 setDirection:2];
  [v212 setDelegate:self];
  v213 = [(ICNoteEditorViewController *)self textView];
  [v213 addGestureRecognizer:v212];

  v251[0] = v210;
  v251[1] = v212;
  v214 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
  [(ICNoteEditorViewController *)self setSwipeGestureRecognizers:v214];

  v215 = [(ICNoteEditorViewController *)self textViewController];
  v216 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [v216 setTextViewController:v215];

  v217 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v218 = [v217 panGestureRecognizer];
  [v218 setDelegate:self];

  v219 = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
  v220 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [v220 setEnabled:v219];

  v221 = [(ICNoteEditorViewController *)self textView];
  [v221 setKeyboardDismissMode:4];

  v222 = [(ICNoteEditorViewController *)self textView];
  [v222 setAlwaysBounceVertical:1];

  [(ICNoteEditorViewController *)self setIsPreviewingAttachmentFromNote:0];
  v223 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController recreateTextView];
  }

  v224 = [(ICNoteEditorViewController *)self textView];
  v225 = [v224 ic_pkTiledView];
  [v225 setRulerHostingDelegate:self];

  v226 = [MEMORY[0x277CCAB98] defaultCenter];
  v227 = *MEMORY[0x277CCA7F8];
  v228 = [(ICNoteEditorViewController *)self textView];
  v229 = [v228 undoManager];
  [v226 addObserver:self selector:sel_updateBarButtons name:v227 object:v229];

  v230 = [MEMORY[0x277CCAB98] defaultCenter];
  v231 = *MEMORY[0x277CCA810];
  v232 = [(ICNoteEditorViewController *)self textView];
  v233 = [v232 undoManager];
  [v230 addObserver:self selector:sel_updateBarButtons name:v231 object:v233];

  v234 = [MEMORY[0x277CCAB98] defaultCenter];
  v235 = *MEMORY[0x277CCA808];
  v236 = [(ICNoteEditorViewController *)self textView];
  v237 = [v236 undoManager];
  [v234 addObserver:self selector:sel_updateBarButtons name:v235 object:v237];

  v238 = [MEMORY[0x277CCAB98] defaultCenter];
  [v238 addObserver:self selector:sel_hideInkPicker name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  [(ICNoteEditorViewController *)self updateBarButtons];
  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  [(ICNoteEditorViewController *)self updateAuthorHighlightsIfNeeded];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
  v239 = [(ICNoteEditorViewController *)self backgroundView];
  v240 = [(ICNoteEditorViewController *)self textView];
  [v239 reparentAccessibilityChildrenOfElement:v240];

  v241 = [(ICNoteEditorViewController *)self backgroundView];
  [v241 setAxChildReparentingController:self];

  v242 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(v240) = [v242 isNewNoteWithHashtagsInsertedIntoBody];

  if (v240)
  {
    -[ICNoteEditorViewController setCurrentTextStyle:](self, "setCurrentTextStyle:", [MEMORY[0x277D36978] noteDefaultNamedStyle]);
    v243 = [(ICNoteEditorBaseViewController *)self note];
    [v243 setIsNewNoteWithHashtagsInsertedIntoBody:0];
  }

  v244 = [(ICNoteEditorViewController *)self textViewController];
  [v244 setPerformingInitialSetup:0];
}

void __46__ICNoteEditorViewController_recreateTextView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDataDetectorTypes:-1];
}

- (double)inputAccessoryViewHeight
{
  v2 = [(ICNoteEditorViewController *)self inputAccessoryView];
  [v2 intrinsicContentSize];
  v4 = v3;

  return v4;
}

- (BOOL)usesContextualFormatBar
{
  IsSelectionAwareFormatBarEnabled = ICInternalSettingsIsSelectionAwareFormatBarEnabled();
  if (IsSelectionAwareFormatBarEnabled)
  {
    v3 = MEMORY[0x277D75418];

    LOBYTE(IsSelectionAwareFormatBarEnabled) = [v3 ic_isiPhone];
  }

  return IsSelectionAwareFormatBarEnabled;
}

- (ICNoteEditorContextualInputAccessoryView)formatBarView
{
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar]&& !self->_formatBarView)
  {
    v3 = [(ICNoteEditorViewController *)self icSplitViewController];
    v4 = [v3 view];
    [v4 frame];
    v6 = v5;
    +[ICNoteEditorContextualInputAccessoryView height];
    v8 = v7;

    v9 = [[ICNoteEditorContextualInputAccessoryView alloc] initWithFrame:0.0, 0.0, v6, v8];
    formatBarView = self->_formatBarView;
    self->_formatBarView = v9;
  }

  v11 = self->_formatBarView;

  return v11;
}

- (void)paperKitBundleDidMerge:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 object];

  v5 = ICDynamicCast();
  v6 = [v5 objectID];

  if (v6)
  {
    v7 = v6;
    performBlockOnMainThread();
  }
}

void __53__ICNoteEditorViewController_paperKitBundleDidMerge___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) note];
  v3 = [v2 visibleAttachments];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) objectID];
        v9 = [v8 isEqual:*(a1 + 40)];

        if (v9)
        {
          v10 = +[ICSystemPaperDocumentController sharedInstance];
          [v10 removePresenter:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v49 viewDidAppear:a3];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self collaboration_setupActivityItemsConfigurationProvider];
  }

  else
  {
    [(ICNoteEditorViewController *)self setActivityItemsConfigurationProvider:0];
  }

  v4 = [(ICNoteEditorViewController *)self activityItemsConfigurationProvider];
  v5 = [(ICNoteEditorViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  [v7 setActivityItemsConfigurationSource:v4];

  [(ICNoteEditorViewController *)self setShouldTrackNoteViewEventAnalyticsFromSettingNote:1];
  v8 = [(ICNoteEditorViewController *)self eventReporter];
  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self shouldFireNoteViewEventOnViewDisappear];

    if (!v9)
    {
      v10 = [(ICNoteEditorViewController *)self eventReporter];
      v11 = [(ICNoteEditorBaseViewController *)self note];
      [v10 startNoteViewEventDurationTrackingForModernNote:v11 reportCoreAnalytics:1];

      [(ICNoteEditorViewController *)self setShouldFireNoteViewEventOnViewDisappear:1];
    }
  }

  if ([(ICNoteEditorViewController *)self updateContentSizeCategoryWhenVisible])
  {
    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:0];
    [(ICNoteEditorViewController *)self contentSizeCategoryDidChange];
  }

  v12 = self;
  v13 = [(ICNoteEditorViewController *)v12 view];
  [v13 frame];
  [(ICNoteEditorViewController *)v12 updateFormatToolbarLayoutWithSize:v14, v15];

  [(ICNoteEditorViewController *)v12 setShouldResetTextViewContentOffsetWhenAppearing:0];
  if ([(ICNoteEditorViewController *)v12 startEditingAfterViewAppears])
  {
    [(ICNoteEditorViewController *)v12 startEditing];
    [(ICNoteEditorViewController *)v12 setStartEditingAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)v12 showInkPickerAfterViewAppears])
  {
    v16 = [(ICNoteEditorViewController *)v12 presentedViewController];
    v17 = v16 == 0;

    if (v17)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__ICNoteEditorViewController_viewDidAppear___block_invoke;
      block[3] = &unk_2781ABCF8;
      block[4] = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [(ICNoteEditorViewController *)v12 setShowInkPickerAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)v12 showInsertUIAfterViewAppears])
  {
    [(ICNoteEditorViewController *)v12 showInsertUIWithPreferredSourceType:1];
    [(ICNoteEditorViewController *)v12 setShowInsertUIAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)v12 showInsertAudioAfterViewAppears])
  {
    [(ICNoteEditorViewController *)v12 showInsertUIWithPreferredSourceType:7];
    [(ICNoteEditorViewController *)v12 setShowInsertAudioAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)v12 addToDoListAfterViewAppears])
  {
    [(ICNoteEditorViewController *)v12 addTodoListAtEndOfNote];
    [(ICNoteEditorViewController *)v12 setAddToDoListAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)v12 addDocumentScanAfterViewAppears])
  {
    [(ICNoteEditorViewController *)v12 showInsertUIWithPreferredSourceType:4];
    [(ICNoteEditorViewController *)v12 setAddDocumentScanAfterViewAppears:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)v12 ppt_didFinishExtendedLaunch];
  }

  v18 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v18 addObserver:v12 selector:sel_systemPaperLinkBarVisibilityPreferenceChanged_ name:@"ICShouldQuickNoteLinksBarDefaultsChangedNotification" object:0];

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)v12 ppt_didShowNoteEditor];
  }

  [(ICNoteEditorViewController *)v12 updateTextViewContentInsetsAnimated:1];
  v19 = [(ICNoteEditorViewController *)v12 passwordEntryViewController];
  [v19 setIsAnimatingOut:0];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && [(ICNoteEditorViewController *)v12 wasWindowlessDuringTransitionToSize])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v20 = [(ICNoteEditorBaseViewController *)v12 note];
    v21 = [v20 textStorage];
    v22 = [v21 layoutManagers];

    v23 = [v22 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v23)
    {
      v24 = *v45;
      do
      {
        v25 = 0;
        do
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v44 + 1) + 8 * v25);
          v27 = [(ICNoteEditorViewController *)v12 visibleRange];
          v29 = v28;
          [v26 invalidateLayoutForCharacterRange:v27 actualCharacterRange:{v28, 0}];
          [v26 invalidateDisplayForCharacterRange:{v27, v29}];
          ++v25;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v23);
    }

    [(ICNoteEditorViewController *)v12 setWasWindowlessDuringTransitionToSize:0];
  }

  if (![(ICNoteEditorViewController *)v12 isInLiveWindowResize])
  {
    [(ICNoteEditorViewController *)v12 updateBarButtonsAnimated:0];
  }

  v30 = [(ICNoteEditorViewController *)v12 view];
  v31 = [v30 window];

  if (v31)
  {
    if ([MEMORY[0x277D361D0] deviceSupportsPencil] && (objc_msgSend(MEMORY[0x277D361D0], "deviceSupportsFirstGenPencil") & 1) == 0)
    {
      objc_initWeak(&location, v12);
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __44__ICNoteEditorViewController_viewDidAppear___block_invoke_2;
      v41 = &unk_2781AC0B8;
      objc_copyWeak(&v42, &location);
      dispatchMainAfterDelay();
      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v32 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ICNoteEditorViewController viewDidAppear:];
    }
  }

  v33 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v33 BOOLForKey:*MEMORY[0x277D365C0]])
  {
    [(ICNoteEditorViewController *)v12 showHandwritingDebug:1];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICNoteEditorViewController *)v12 applyScrollStateIfAvailable];
  }

  [(ICNoteEditorViewController *)v12 setArchivedScrollStateToApply:0];
  [(ICNoteEditorViewController *)v12 setShouldOverscrollScrollState:0];
  v34 = [(ICNoteEditorBaseViewController *)v12 note];

  if (v34)
  {
    v35 = [(ICNoteEditorBaseViewController *)v12 note];
    [(ICNoteEditorBaseViewController *)v12 noteDidAppear:v35];

    if (objc_opt_respondsToSelector())
    {
      v36 = [(ICNoteEditorBaseViewController *)v12 note];
      [(ICNoteEditorViewController *)v12 performSelector:sel_updateFastSyncParticipantCursorsForNote_ withObject:v36];
    }
  }

  v37 = [(ICNoteEditorViewController *)v12 viewControllerManager];
  [v37 setSelectedNewNoteShortcutItem:0];
}

void __44__ICNoteEditorViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createInkPickerControllerIfNecessary];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v17 viewIsAppearing:a3];
  v4 = [(ICNoteEditorViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
    v6 = [(ICNoteEditorViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 windowScene];
    -[ICNoteEditorViewController showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:](self, "showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:", [v8 activationState] != 0);

    v9 = [(ICNoteEditorViewController *)self viewControllerManager];
    v10 = [v9 isAuxiliary];
    v11 = [(ICNoteEditorViewController *)self navigationItem];
    [v11 setHidesBackButton:v10];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
    }

    if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
    {
      v12 = [(ICNoteEditorViewController *)self navigationController];
      v13 = [v12 interactiveContentPopGestureRecognizer];
      v14 = [(ICNoteEditorViewController *)self formatBarView];
      v15 = [v14 scrollView];
      v16 = [v15 panGestureRecognizer];
      [v13 requireGestureRecognizerToFail:v16];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277D75418];
  v8 = a4;
  if (([v7 ic_isVision] & 1) == 0)
  {
    v9 = [(ICNoteEditorViewController *)self attributionSidebarController];
    [v9 hideSidebarAnimated:1];
  }

  v10 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  [v10 hideDisclosureViewForTransition:1];

  v11 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  if ([v11 isFirstResponder])
  {
    v12 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(ICNoteEditorViewController *)self textView];
  if ([v13 isFirstResponder])
  {
    v14 = [(ICNoteEditorViewController *)self textView];
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [(ICNoteEditorViewController *)self isInkPickerShowing];
  v17 = [(ICNoteEditorViewController *)self noteFormattingController];
  v18 = [v17 presentingViewController];

  [(ICNoteEditorViewController *)self updateFormatToolbarLayoutWithSize:width, height];
  [(ICNoteEditorViewController *)self hideAcceleratorIfNecessary];
  v19 = [(ICNoteEditorViewController *)self linkEditorController];

  if (v19)
  {
    v20 = [(ICNoteEditorViewController *)self linkEditorController];
    [v20 hideAccelerator];
  }

  v21 = [(ICNoteEditorViewController *)self isInLiveWindowResize];
  v22 = [(ICNoteEditorViewController *)self textView];
  [v22 setNeedsLayout];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v33[3] = &unk_2781ACD68;
  v33[4] = self;
  v34 = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v29[3] = &unk_2781ACD90;
  v32 = v16;
  v29[4] = self;
  v30 = v15;
  v31 = v18;
  v23 = v18;
  v24 = v15;
  [v8 animateAlongsideTransition:v33 completion:v29];
  v25 = [(ICNoteEditorViewController *)self view];
  v26 = [v25 window];
  [(ICNoteEditorViewController *)self setWasWindowlessDuringTransitionToSize:v26 == 0];

  v27 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [v27 viewWillTransitionToSize:v8 withTransitionCoordinator:{width, height}];

  v28.receiver = self;
  v28.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v28 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

void __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) viewControllerManager];
  [v3 updateHostedNotesAppearance];

  if ((*(a1 + 40) & 1) == 0)
  {
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v4 = [*(a1 + 32) viewControllerManager];
      v5 = [v4 noteContainerViewMode];

      if (v5 == 1)
      {
        [*(a1 + 32) updateBarButtonsAnimated:{objc_msgSend(v6, "isAnimated")}];
      }
    }

    else
    {
      [*(a1 + 32) resetBarButtonsAnimated:{objc_msgSend(v6, "isAnimated")}];
    }
  }
}

void __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  if (ICCurrentInkDataDefaultsKey_block_invoke_disableWorkaroundFor150051673_token != -1)
  {
    __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_cold_1();
  }

  if ((ICCurrentInkDataDefaultsKey_block_invoke_disableWorkaroundFor150051673 & 1) == 0 && _UISolariumEnabled())
  {
    v3 = [*(a1 + 32) traitCollection];
    v4 = [v3 ic_hasCompactWidth];

    v5 = v4 ? 0 : 4;
    v6 = [*(a1 + 32) textView];
    v7 = [v6 _hiddenPocketEdges];

    if (v5 != v7)
    {
      v8 = [*(a1 + 32) textView];
      [v8 _setHiddenPocketEdges:v5];

      v9 = [*(a1 + 32) textView];
      [v9 setNeedsLayout];
    }
  }

  v10 = [*(a1 + 32) dismissableInputAccessoryView];
  [v10 hideDisclosureViewForTransition:0];

  v11 = [*(a1 + 32) textView];
  [v11 didFinishAnimatingAfterSizeTransition];

  if (*(a1 + 56) == 1 && ([*(a1 + 32) isInkPickerShowing] & 1) == 0)
  {
    v13 = [*(a1 + 32) view];
    v14 = [v13 window];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 32) presentedViewController];

      if (!v16)
      {
        [*(a1 + 32) showInkPicker:1 animated:1];
        goto LABEL_20;
      }
    }

    else
    {
    }

    [*(a1 + 32) setShowInkPickerAfterViewAppears:1];
    goto LABEL_20;
  }

  v12 = *(a1 + 40);
  if (v12 && ([v12 isFirstResponder] & 1) == 0)
  {
    [*(a1 + 32) setEditing:1 animated:1];
    [*(a1 + 40) becomeFirstResponder];
  }

LABEL_20:
  if (*(a1 + 48) && [*(a1 + 32) useInputViewForStyleSelector])
  {
    [*(a1 + 32) showStyleSelector:1 animated:1];
  }

  v17 = [*(a1 + 32) linkAcceleratorController];
  [v17 presentLinkAcceleratorIfNecessaryWithCompletionHandler:&__block_literal_global_439];
}

void __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  ICCurrentInkDataDefaultsKey_block_invoke_disableWorkaroundFor150051673 = [v0 BOOLForKey:@"DisableWorkaroundFor150051673"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v26 = "[ICNoteEditorViewController viewWillAppear:]";
    *&v26[8] = 1024;
    v27[0] = 1427;
    _os_log_impl(&dword_2151A1000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v24.receiver = self;
  v24.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v24 viewWillAppear:v3];
  if (![(ICNoteEditorViewController *)self isInLiveWindowResize])
  {
    [(ICNoteEditorViewController *)self setNeedsInitialBarConfiguration:1];
  }

  v6 = [(ICNoteEditorViewController *)self view];
  [v6 setNeedsLayout];

  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_notesContextRefreshNotification_ name:*MEMORY[0x277D35D38] object:0];
  [v7 addObserver:self selector:sel_viewControllerWillStartEditModeNotification_ name:@"ICViewControllerWillStartEditModeNotification" object:0];
  [v7 addObserver:self selector:sel_migrationStateDidChange_ name:*MEMORY[0x277D36138] object:0];
  [v7 addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
  [v7 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  [v7 addObserver:self selector:sel_keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  [v7 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
  [v7 addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D20] object:0];
  [v7 addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D18] object:0];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
  }

  v8 = [(ICNoteEditorViewController *)self transitionCoordinator];

  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self transitionCoordinator];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__ICNoteEditorViewController_viewWillAppear___block_invoke;
    v23[3] = &unk_2781AC788;
    v23[4] = self;
    [v9 animateAlongsideTransition:v23 completion:0];
  }

  else
  {
    [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
  }

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];
  }

  else
  {
    v10 = [(ICNoteEditorBaseViewController *)self note];
    -[ICNoteEditorViewController setUserWantsToSeeDateLabel:](self, "setUserWantsToSeeDateLabel:", [v10 isSharedAndEmpty]);
  }

  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
    v13 = [(ICNoteEditorBaseViewController *)self note];
    v14 = [v13 isSharedAndEmpty];
    v15 = [(ICNoteEditorViewController *)self textView];
    v16 = [v15 window];
    *buf = 67109632;
    *v26 = v12;
    *&v26[4] = 1024;
    *&v26[6] = v14;
    LOWORD(v27[0]) = 1024;
    *(v27 + 2) = v16 != 0;
    _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_INFO, "wants to see date label: %d shared and empty: %d, has window: %d", buf, 0x14u);
  }

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel]|| [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    v17 = [(ICNoteEditorViewController *)self textView];
    v18 = [v17 window];

    if (v18)
    {
      [(ICNoteEditorViewController *)self updateTextViewContentOffset];
    }
  }

  v19 = [(ICNoteEditorBaseViewController *)self note];
  v20 = [v19 needsRefresh];

  if (v20)
  {
    [(ICNoteEditorViewController *)self fetchAll];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self link_addCreateNoteInteraction];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self link_addInsertNoteLinkInteraction];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self link_addReplaceSelectionInteraction];
  }

  v21 = [(ICNoteEditorBaseViewController *)self note];

  if (v21)
  {
    v22 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self noteWillAppear:v22];
  }
}

- (void)noteWillAppear:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v5 noteWillAppear:v4];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self performSelector:sel_updateFastSyncParticipantCursorsForNote_ withObject:v4];
  }
}

- (void)noteWillDisappear:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v4 noteWillDisappear:a3];
  [(ICNoteEditorViewController *)self magicGenerativePlaygroundWillDisappear];
}

- (void)updateTextViewContentOffset
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ICNoteEditorViewController updateTextViewContentOffset]";
    v10 = 1024;
    v11 = 1499;
    _os_log_impl(&dword_2151A1000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v8, 0x12u);
  }

  [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  [v5 adjustedContentInset];
  [v4 setContentOffset:{0.0, -v6}];

  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 icaxClearCachedChildrenForReparenting];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v33.receiver = self;
  v33.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v33 viewWillDisappear:?];
  v5 = [(ICNoteEditorBaseViewController *)self note];

  if (v5)
  {
    v6 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self noteWillDisappear:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self link_removeLinkActionInteractions];
  }

  [(ICNoteEditorViewController *)self setShouldTrackNoteViewEventAnalyticsFromSettingNote:0];
  v7 = [(ICNoteEditorBaseViewController *)self note];
  if (v7)
  {
    v8 = v7;
    v9 = [(ICNoteEditorViewController *)self shouldFireNoteViewEventOnViewDisappear];

    if (v9)
    {
      v10 = [(ICNoteEditorBaseViewController *)self note];
      [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:v10];

      [(ICNoteEditorViewController *)self setShouldFireNoteViewEventOnViewDisappear:0];
    }
  }

  [(ICNoteEditorViewController *)self saveCurrentScrollState];
  [(ICNoteEditorViewController *)self showInkPicker:0 animated:v3];
  v11 = [(ICNoteEditorViewController *)self textView];
  v12 = [v11 findInteraction];
  [v12 dismissFindNavigator];

  v13 = [(ICNoteEditorViewController *)self textView];
  LODWORD(v12) = [v13 isEditing];

  if (v12)
  {
    [(ICNoteEditorViewController *)self doneEditing];
    v14 = [(ICNoteEditorViewController *)self noteFormattingController];
    v15 = [v14 presentingViewController];
    if (v15)
    {
      v16 = v15;
      v17 = [(ICNoteEditorViewController *)self isSplitViewExpandingOrCollapsing];

      if (!v17)
      {
        v18 = [(ICNoteEditorViewController *)self noteFormattingController];
        v19 = [v18 presentingViewController];
        [v19 dismissViewControllerAnimated:v3 completion:0];

        goto LABEL_14;
      }
    }

    else
    {
    }

    [(ICNoteEditorViewController *)self setStartEditingAfterViewAppears:1];
    v20 = [(ICNoteEditorViewController *)self transitionCoordinator];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __48__ICNoteEditorViewController_viewWillDisappear___block_invoke;
    v32[3] = &unk_2781AC788;
    v32[4] = self;
    [v20 animateAlongsideTransition:0 completion:v32];
  }

LABEL_14:
  v21 = objc_alloc_init(MEMORY[0x277D75C60]);
  [v21 configureWithTransparentBackground];
  v22 = [(ICNoteEditorViewController *)self navigationController];
  v23 = [v22 toolbar];
  [v23 setScrollEdgeAppearance:v21];

  v24 = [(ICNoteEditorViewController *)self navigationController];
  v25 = [v24 toolbar];
  [v25 setCompactScrollEdgeAppearance:v21];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 removeObserver:self name:*MEMORY[0x277D35D38] object:0];
  [v26 removeObserver:self name:@"ICViewControllerWillStartEditModeNotification" object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D36138] object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D76B98] object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D35D20] object:0];
  [v26 removeObserver:self name:*MEMORY[0x277D35D18] object:0];
  v27 = [(ICNoteEditorViewController *)self navigationController];
  v28 = [v27 toolbar];
  [v28 setAccessibilityElementsHidden:0];

  v29 = [(ICNoteEditorViewController *)self navigationItem];
  [v29 setCenterItemGroups:MEMORY[0x277CBEBF8]];

  v30 = [(ICNoteEditorViewController *)self transitionCoordinator];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __48__ICNoteEditorViewController_viewWillDisappear___block_invoke_2;
  v31[3] = &unk_2781AC788;
  v31[4] = self;
  [v30 animateAlongsideTransition:0 completion:v31];
}

uint64_t __48__ICNoteEditorViewController_viewWillDisappear___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 setStartEditingAfterViewAppears:0];
  }

  return result;
}

uint64_t __48__ICNoteEditorViewController_viewWillDisappear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 updateForceLightContentIfNecessary];
  }

  return result;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v9 viewDidDisappear:a3];
  [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];
  [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
  if ([(ICNoteEditorViewController *)self shouldRemoveEmptyNoteWhenViewDisappeared])
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ICNoteEditorViewController *)self viewDidDisappear:a2];
    }

    [(ICNoteEditorViewController *)self setNote:0];
  }

  if (!+[ICMovieController isFullScreen])
  {
    +[ICMovieController stopIfPlaying];
  }

  [(ICNoteEditorViewController *)self highlightSearchMatchesForRegexFinder:0];
  v6 = [(ICNoteEditorViewController *)self paletteResponder];
  [v6 resignFirstResponder];

  v7 = [(ICNoteEditorBaseViewController *)self note];

  if (v7)
  {
    v8 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorBaseViewController *)self noteDidDisappear:v8];
  }
}

- (void)setUserWantsToSeeDateLabel:(BOOL)a3
{
  self->_userWantsToSeeDateLabel = a3;
  if (!a3 && [(ICNoteEditorViewController *)self headerSubviewsFadeInOnUnderscrolling])
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    v5 = [v4 dateView];
    [v5 setAlpha:0.0];

    v7 = [(ICNoteEditorViewController *)self textView];
    v6 = [v7 userTitleView];
    [v6 setAlpha:0.0];
  }
}

void __53__ICNoteEditorViewController_registerForTraitChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    [v6 setNeedsUpdateConstraints];

    [v5 updateAuthorHighlightsIfNeeded];
    [v5 updateTextViewBackground];
    [v5 updatePencilKitPaperStyleType];
    [v5 setNeedsStatusBarAppearanceUpdate];
    v7 = [v5 inkPaletteController];

    if (v7)
    {
      v8 = [v5 inkPaletteController];
      v9 = [v8 selectedTool];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v11 = [v5 traitCollection];
        v12 = [v11 ic_isDark];
        v13 = [v20 ic_isDark];

        if (v12 != v13)
        {
          v14 = [v5 inkPaletteController];
          v15 = [v14 colorCorrectedTool];
          [v5 updateInkPickerAndTextViewToTool:v15];
        }
      }

      v16 = [v5 traitCollection];
      v17 = [v16 userInterfaceStyle];

      if ([v20 userInterfaceStyle] != v17)
      {
        v18 = [v5 inkPaletteController];
        [v18 updateUserInterfaceStyle:v17];
      }
    }

    [v5 updateForceLightContentIfNecessary];
    v19 = [v5 activityStreamToolbar];
    [v19 update];
  }
}

- (BOOL)resignFirstResponder
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    v6 = [v5 resignFirstResponder];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICNoteEditorViewController;
    return [(ICNoteEditorViewController *)&v8 resignFirstResponder];
  }
}

- (void)dealloc
{
  v3 = [(ICNoteEditorBaseViewController *)self note];

  if (v3)
  {
    v4 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self removeKVOObserversForNote:v4];
  }

  [MEMORY[0x277D75820] ic_removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&compoundliteral_0];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 ic_removeObserver:self forKeyPath:*MEMORY[0x277D36448] context:&compoundliteral_3029];

  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 setDelegate:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  v8 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v8 removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v9.receiver = self;
  v9.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v9 dealloc];
}

- (void)warnLimitExceededWithTitle:(id)a3 andMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorViewController *)self limitExceededAlertController];

  if (!v8)
  {
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    [(ICNoteEditorViewController *)self setLimitExceededAlertController:v9];

    v10 = [(ICNoteEditorViewController *)self limitExceededAlertController];
    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v14 = [v11 actionWithTitle:v13 style:0 handler:0];
    [v10 addAction:v14];

    v15 = [(ICNoteEditorViewController *)self limitExceededAlertController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__ICNoteEditorViewController_warnLimitExceededWithTitle_andMessage___block_invoke;
    v16[3] = &unk_2781ABCF8;
    v16[4] = self;
    [(ICNoteEditorViewController *)self presentViewController:v15 animated:1 completion:v16];
  }
}

- (void)warnUserNoteLengthExceeded
{
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v4 localizedStringForKey:@"Maximum note length reached." value:&stru_282757698 table:0];
  [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v3 andMessage:0];
}

- (void)warnUserAttachmentLimitExceeded
{
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v4 localizedStringForKey:@"Maximum attachments reached." value:&stru_282757698 table:0];
  [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v3 andMessage:0];
}

- (void)warnUserAttachmentSizeExceededWithAttachmentCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277D35E70] sharedConfiguration];
  v6 = [v5 maximumAttachmentSizeMB];
  v7 = [v6 unsignedLongLongValue] << 20;

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = v8;
  if (a3 == 1)
  {
    v10 = @"Large Attachment.";
  }

  else
  {
    v10 = @"Large Attachments";
  }

  if (a3 == 1)
  {
    v11 = @"To add this attachment to your note, you’ll need to make it smaller than %@.";
  }

  else
  {
    v11 = @"Some of these attachments are too large. Each attachment must be smaller than %@.";
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_282757698 table:0];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:v11 value:&stru_282757698 table:0];
  v16 = [MEMORY[0x277CCA8E8] stringFromByteCount:v7 countStyle:3];
  v17 = [v13 localizedStringWithFormat:v15, v16];

  [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v12 andMessage:v17];
}

- (void)showRecoverNoteAlert
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ICNoteEditorViewController showRecoverNoteAlert]";
    v10 = 1024;
    v11 = 1745;
    _os_log_impl(&dword_2151A1000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v8, 0x12u);
  }

  v4 = [(ICNoteEditorBaseViewController *)self note];
  if (v4 && (v5 = v4, v6 = [(ICNoteEditorViewController *)self _appearState], v5, v6 == 2))
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self app_showRecoverNoteAlert];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController showRecoverNoteAlert];
    }
  }
}

- (BOOL)shouldIgnoreTapToStartEditingTextView:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self calculateRecognitionController];
  v6 = [v5 isPreviewingResult];

  if ((v6 & 1) == 0)
  {
    v7 = [(ICNoteEditorViewController *)self calculateScrubberController];
    v8 = [v7 isShowing];

    if ((v8 & 1) == 0)
    {
      v9 = objc_opt_self();
      v10 = [v9 note];
      v11 = [v10 textStorageWithoutCreating];
      v12 = [v11 isMarkingTextForHeadingRename];

      if ((v12 & 1) == 0)
      {
        if ([(ICNoteEditorViewController *)self isEditing])
        {
          v15 = [(ICNoteEditorViewController *)self auxiliaryResponder];
          if (v15)
          {
            v16 = [(ICNoteEditorViewController *)self auxiliaryResponder];
            v13 = v16 == v4;
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v15 = [(ICNoteEditorViewController *)self passwordEntryViewController];
          if (!v15)
          {
            v16 = [(ICNoteEditorViewController *)self invitationViewController];
            v13 = v16 != 0;
            goto LABEL_12;
          }
        }

        v13 = 1;
LABEL_13:

        goto LABEL_5;
      }
    }
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (id)createNewNote
{
  objc_opt_class();
  v3 = [(ICNoteEditorViewController *)self viewControllerManager];
  v4 = [v3 showNewNoteWithApproach:0 sender:0 animated:0];
  v5 = ICDynamicCast();

  return v5;
}

- (void)calculateDocumentControllerDidUpdateHighlights:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [v3 scheduleUpdateAnimated:0 force:1];
}

- (void)noteDidChangeCalculatePreviewBehaviorNotification:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 calculatePreviewBehavior] != 1;
  v6 = [(ICNoteEditorViewController *)self calculateRecognitionController];
  [v6 setInsertsResults:v5];

  v9 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v9 calculatePreviewBehavior];
  v8 = [(ICNoteEditorViewController *)self calculateRecognitionController];
  [v8 setPreviewBehavior:v7];
}

- (void)noteWillBeDeleted:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  v5 = [(ICNoteEditorBaseViewController *)self note];

  if (v4 != v5)
  {
    goto LABEL_9;
  }

  v6 = [(ICNoteEditorViewController *)self viewControllerManager];
  if ([v6 isAuxiliary] && !-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper"))
  {
    v7 = [(ICNoteEditorViewController *)self isTogglingLock];

    if (v7)
    {
      goto LABEL_7;
    }

    v6 = [(ICNoteEditorViewController *)self viewControllerManager];
    [v6 closeAuxiliaryWindowAnimated:1];
  }

LABEL_7:
  v8 = [v13 object];
  v9 = [MEMORY[0x277D366C0] sharedAudioController];
  v10 = [v9 currentAttachment];
  v11 = [v10 note];

  if (v8 == v11)
  {
    v12 = [MEMORY[0x277D366C0] sharedAudioController];
    [v12 stop];
  }

LABEL_9:
}

- (void)updateTextViewContentInsetsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  [v5 contentInset];
  v7 = v6;
  v49 = v8;

  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 verticalScrollIndicatorInsets];
  v11 = v10;
  v48 = v12;

  [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
  v14 = v13;
  [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWant];
  v16 = v15;
  [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    v25 = [(ICNoteEditorViewController *)self textView];
    v26 = [v25 dateView];
    [v26 preferredHeight];
    v47 = v18;
    v27 = v16;
    v28 = v11;
    v29 = v14;
    v30 = v22;
    v31 = v7;
    v32 = v20;
    v33 = v24;
    v35 = v34;
    v36 = [(ICNoteEditorViewController *)self textView];
    v37 = [v36 userTitleView];
    [v37 preferredHeight];
    v39 = v35 + v38;
    v24 = v33;
    v20 = v32;
    v7 = v31;
    v22 = v30;
    v14 = v29;
    v11 = v28;
    v16 = v27;
    v18 = v47 - v39;
  }

  v40 = [(ICNoteEditorViewController *)self textView];
  v41 = [v40 compatibilityBannerView];

  if (v41)
  {
    v42 = [(ICNoteEditorViewController *)self textView];
    v43 = [v42 compatibilityBannerView];
    [v43 preferredHeight];
    v18 = v18 - v44;
  }

  if (vabdd_f64(v49, v16) >= 0.00999999978 || vabdd_f64(v7, v14) >= 0.00999999978 || vabdd_f64(v48, v22) >= 0.00999999978 || vabdd_f64(v11, v18) >= 0.00999999978)
  {
    if (v3)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __66__ICNoteEditorViewController_updateTextViewContentInsetsAnimated___block_invoke;
      v50[3] = &unk_2781ACDE0;
      v50[4] = self;
      *&v50[5] = v14;
      v50[6] = 0;
      *&v50[7] = v16;
      v50[8] = 0;
      *&v50[9] = v18;
      *&v50[10] = v20;
      *&v50[11] = v22;
      *&v50[12] = v24;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v50 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      v45 = [(ICNoteEditorViewController *)self textView];
      [v45 setContentInset:{v14, 0.0, v16, 0.0}];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        v46 = [(ICNoteEditorViewController *)self textView];
        [v46 setVerticalScrollIndicatorInsets:{v18, v20, v22, v24}];
      }
    }
  }

  [(ICNoteEditorViewController *)self updateBottomContentPadding];
}

void __66__ICNoteEditorViewController_updateTextViewContentInsetsAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) textView];
  [v6 setContentInset:{v2, v3, v4, v5}];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    v11 = [*(a1 + 32) textView];
    [v11 setVerticalScrollIndicatorInsets:{v7, v8, v9, v10}];
  }
}

- (void)showOverscrollContentAndScrollToTop
{
  [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];

  [(ICNoteEditorViewController *)self updateTextViewContentOffset];
}

- (double)textViewBottomInsetThatWeWantForEditing:(BOOL)a3
{
  [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
  v6 = v5;
  if (a3)
  {
    if ([(ICNoteEditorViewController *)self isShowingMiniPlayer])
    {
      v6 = v6 + 70.0;
    }

    if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
    {
      v7 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      if (-[ICNoteEditorViewController isSelecting](self, "isSelecting") && v7 && ([v7 buttonsVisible] & 1) == 0)
      {
        [(ICNoteEditorViewController *)self inputAccessoryViewHeight];
        v6 = v6 - v8;
      }

      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [v9 BOOLForKey:*MEMORY[0x277D362E0]];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && (v10 & 1) == 0)
      {
        v11 = [(ICNoteEditorBaseViewController *)self note];
        v12 = [v11 textStorage];

        v13 = [v12 length];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 string];
          v16 = v14 - 1;
          v17 = [v15 characterAtIndex:v16];

          v18 = [MEMORY[0x277CCA900] newlineCharacterSet];
          LODWORD(v17) = [v18 characterIsMember:v17];

          if (v17)
          {
            v19 = [(ICNoteEditorViewController *)self textView];
            v20 = [v19 selectedRange];
            v22 = v21;

            if (!v22 && v20 == v16)
            {
              v23 = [(ICNoteEditorViewController *)self textView];
              v24 = [v23 layoutManager];
              [v24 extraLineFragmentRect];
              v6 = v6 - v25;
            }
          }
        }
      }
    }
  }

  else if (v5 < 0.0)
  {
    return 0.0;
  }

  return v6;
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v19 = a3;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v7 = v19;
  if (v19)
  {
    if ((IsTextKit2Enabled & 1) == 0)
    {
      v8 = [(ICNoteEditorViewController *)self textView];

      v7 = v19;
      if (v8 == v19 && !a4)
      {
        v9 = [(ICNoteEditorViewController *)self textView];
        [v9 verticalScrollIndicatorInsets];
        v11 = v10;
        v13 = v12;

        [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
        v15 = v14;
        v17 = v16;
        v18 = [(ICNoteEditorViewController *)self textView];
        [v18 setVerticalScrollIndicatorInsets:{v11, v15, v13, v17}];

        v7 = v19;
      }
    }
  }
}

- (void)contentSizeCategoryDidChange
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v3 = [(ICNoteEditorViewController *)self textView];
      [v3 setNeedsStylingRefreshOnNextLayout:1];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = [(ICNoteEditorBaseViewController *)self note];
      v5 = [v4 textStorage];
      v6 = [v5 layoutManagers];

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v18 + 1) + 8 * i) contentSizeCategoryDidChange];
          }

          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      objc_opt_class();
      v11 = [(ICNoteEditorViewController *)self textView];
      v12 = [v11 textStorage];
      v3 = ICDynamicCast();

      objc_opt_class();
      v13 = [v3 styler];
      v14 = ICCheckedDynamicCast();

      [v14 refreshTextStylingForTextStorage:v3 withTextController:v14];
    }

    v15 = [(ICNoteEditorViewController *)self textView];
    v16 = [v15 compatibilityBannerView];
    [v16 contentSizeCategoryDidChange];

    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:0];
    v17 = [(ICNoteEditorViewController *)self attributionSidebarView];
    [v17 reload];
  }

  else
  {

    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:1];
  }
}

- (BOOL)isShowingMiniPlayer
{
  v2 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  v3 = [v2 isShowingMiniPlayer];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICNoteEditorViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/ICNoteEditorViewController.m"]& 1) == 0)
  {
    v73.receiver = self;
    v73.super_class = ICNoteEditorViewController;
    [(ICNoteEditorViewController *)&v73 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];

    goto LABEL_10;
  }

  v13 = [(ICNoteEditorViewController *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

  if ((v13 & 1) == 0)
  {
    if (a6 == &compoundliteral_3031)
    {
      [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
      goto LABEL_10;
    }

    if (a6 != &compoundliteral_3033)
    {
      if (a6 != &compoundliteral_3035)
      {
        if (a6 == &compoundliteral_0)
        {
          if ([(ICNoteEditorViewController *)self isInkPickerShowing])
          {
            v23 = [(ICNoteEditorViewController *)self textViewController];
            v24 = [v23 isViewLoaded];

            if (v24)
            {
              if ([MEMORY[0x277D75820] prefersPencilOnlyDrawing])
              {
                [(ICNoteEditorViewController *)self cleanupAfterFingerDrawing];
              }

              else
              {
                [(ICNoteEditorViewController *)self setupForFingerDrawing];
              }
            }
          }
        }

        else if (a6 == &compoundliteral_3029)
        {
          [(ICNoteEditorViewController *)self forceLightContentDidChange:0];
        }

        goto LABEL_10;
      }

      v20 = [(ICNoteEditorViewController *)self textViewIfLoaded];
      v21 = [(ICNoteEditorBaseViewController *)self note];
      [v20 createUserTitleViewIfNecessaryForNote:v21];

      if (![(ICNoteEditorViewController *)self headerSubviewsFadeInOnUnderscrolling])
      {
        goto LABEL_10;
      }

      v19 = [(ICNoteEditorViewController *)self textView];
      v22 = [v19 userTitleView];
      [v22 setAlpha:0.0];

LABEL_18:
      goto LABEL_10;
    }

    v14 = [(ICNoteEditorBaseViewController *)self note];
    if (v14)
    {
      v15 = v14;
      v16 = [(ICNoteEditorBaseViewController *)self note];
      v17 = [v16 noteHasChanges];
      if ([v17 BOOLValue])
      {
        v18 = [v10 isEqualToString:@"noteHasChanges"];

        if (v18)
        {
          v19 = [(ICNoteEditorBaseViewController *)self note];
          [v19 setNoteHasChanges:MEMORY[0x277CBEC28]];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v25 = [(ICNoteEditorBaseViewController *)self note];
    if (v25)
    {
      v26 = v25;
      v27 = [v10 isEqualToString:@"modificationDate"];

      if (v27)
      {
        [(ICNoteEditorViewController *)self updateLastViewedMetadataIfNessessary];
        goto LABEL_10;
      }
    }

    v28 = [(ICNoteEditorBaseViewController *)self note];
    if (v28)
    {
      v29 = v28;
      v30 = [v10 isEqualToString:@"attachmentViewType"];

      if (v30)
      {
        objc_opt_class();
        v31 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v32 = ICDynamicCast();

        objc_opt_class();
        v33 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v34 = ICDynamicCast();

        if (!v34)
        {
          goto LABEL_73;
        }

        v35 = *MEMORY[0x277CBEEE8];
        v36 = *MEMORY[0x277CBEEE8] == v32 ? 0 : v32;
        v37 = v36;
        v38 = v35 == v34 ? 0 : v34;
        v39 = v38;
        if (!(v37 | v39))
        {
          goto LABEL_73;
        }

        v40 = v39;
        if (v37 && v39)
        {
          v41 = [v37 isEqual:v39];

          if (v41)
          {
            goto LABEL_73;
          }
        }

        else
        {
        }

        if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
        {
          [(ICNoteEditorViewController *)self resetTextViewContentOffset];
          objc_opt_class();
          v69 = [(ICNoteEditorViewController *)self textView];
          v70 = [v69 layoutManager];
          v71 = ICDynamicCast();

          [v71 invalidateLayoutAfterAttachmentViewTypeChangeIfNecessary];
        }

        goto LABEL_73;
      }
    }

    v42 = [(ICNoteEditorBaseViewController *)self note];
    if (v42)
    {
      v43 = v42;
      v44 = [v10 isEqualToString:@"paperStyleType"];

      if (v44)
      {
        [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
        goto LABEL_10;
      }
    }

    v45 = [(ICNoteEditorBaseViewController *)self note];
    if (v45)
    {
      v46 = v45;
      v47 = [v10 isEqualToString:@"isEmpty"];

      if (v47)
      {
        objc_opt_class();
        v48 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v32 = ICCheckedDynamicCast();

        objc_opt_class();
        v49 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v34 = ICCheckedDynamicCast();

        if (!v34)
        {
          goto LABEL_73;
        }

        v50 = *MEMORY[0x277CBEEE8];
        v51 = *MEMORY[0x277CBEEE8] == v32 ? 0 : v32;
        v52 = v51;
        v53 = v50 == v34 ? 0 : v34;
        v54 = v53;
        if (!(v52 | v54))
        {
          goto LABEL_73;
        }

        v55 = v54;
        if (v52 && v54)
        {
          v56 = [v52 isEqual:v54];

          if (v56)
          {
            goto LABEL_73;
          }
        }

        else
        {
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__ICNoteEditorViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_2781ABCF8;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_73:

        goto LABEL_10;
      }
    }

    v57 = [(ICNoteEditorBaseViewController *)self note];
    if (v57 && (v58 = v57, v59 = [v10 isEqualToString:@"serverShareData"], v58, v59))
    {
      v60 = [(ICNoteEditorViewController *)self mentionsController];
      [v60 updateNoteParticipants];

      [(ICNoteEditorViewController *)self updateParticipantsInDrawings];
    }

    else
    {
      v61 = [(ICNoteEditorBaseViewController *)self note];
      if (v61 && (v62 = v61, v63 = [v10 isEqualToString:@"isSharedViaICloud"], v62, v63))
      {
        v64 = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
        v65 = [(ICNoteEditorViewController *)self attributionSidebarController];
        [v65 setEnabled:v64];

        [(ICNoteEditorViewController *)self resetDateView];
      }

      else
      {
        v66 = [(ICNoteEditorBaseViewController *)self note];
        if (v66)
        {
          v67 = v66;
          v68 = [v10 isEqualToString:@"lastActivitySummaryViewedDate"];

          if (v68)
          {
            [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
          }
        }
      }
    }
  }

LABEL_10:
}

- (void)willAddAttachmentForNoteNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICNoteEditorBaseViewController *)self note];

  if (v4 == v5)
  {
    objc_opt_class();
    v8 = [(ICNoteEditorViewController *)self textView];
    v6 = [v8 textStorage];
    v7 = ICDynamicCast();
    [v7 breakUndoCoalescing];
  }
}

- (void)didAddAttachmentForNoteNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICNoteEditorBaseViewController *)self note];

  if (v4 == v5)
  {
    objc_opt_class();
    v8 = [(ICNoteEditorViewController *)self textView];
    v6 = [v8 textStorage];
    v7 = ICDynamicCast();
    [v7 breakUndoCoalescing];
  }
}

- (void)audioFindInTranscript:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D36580]];
  v7 = ICDynamicCast();

  objc_opt_class();
  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D36588]];
  v10 = ICDynamicCast();

  v11 = [MEMORY[0x277D35F30] sharedContext];
  v12 = [v11 managedObjectContext];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __52__ICNoteEditorViewController_audioFindInTranscript___block_invoke;
  v20 = &unk_2781ACE08;
  v24 = &v25;
  v13 = v12;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  v23 = self;
  [v13 performBlockAndWait:&v17];
  if (v26[5])
  {
    v15 = [(ICNoteEditorViewController *)self eventReporter:v17];
    v16 = [v10 BOOLValue];
    [v15 submitFindInTranscriptEventWasSearchQueryEntered:v16 audioAttachment:v26[5]];
  }

  _Block_object_dispose(&v25, 8);
}

void __52__ICNoteEditorViewController_audioFindInTranscript___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 56) + 8) + 40) note];
  v6 = [v5 objectID];
  v7 = [*(a1 + 48) note];
  v8 = [v7 objectID];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

- (void)audioTranscriptInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D36550]];
  v7 = ICDynamicCast();

  objc_opt_class();
  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D36558]];
  v10 = ICDynamicCast();

  objc_opt_class();
  v11 = [v4 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D36568]];
  v13 = ICDynamicCast();

  objc_opt_class();
  v14 = [v4 userInfo];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D36560]];
  v16 = ICDynamicCast();

  objc_opt_class();
  v17 = [v4 userInfo];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D36570]];
  v19 = ICDynamicCast();

  v20 = [MEMORY[0x277D35F30] sharedContext];
  v21 = [v20 managedObjectContext];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4;
  v39 = __Block_byref_object_dispose__4;
  v40 = 0;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __57__ICNoteEditorViewController_audioTranscriptInteraction___block_invoke;
  v30 = &unk_2781ACE08;
  v34 = &v35;
  v22 = v21;
  v31 = v22;
  v23 = v7;
  v32 = v23;
  v33 = self;
  [v22 performBlockAndWait:&v27];
  if (v36[5])
  {
    v24 = [(ICNoteEditorViewController *)self eventReporter:v27];
    v25 = [v10 BOOLValue];
    v26 = [v13 BOOLValue];
    [v24 submitAudioTranscriptInteractionEventSummaryViewed:v25 transcriptViewed:v26 interactionTargets:v16 interactionTypes:v19 audioAttachment:v36[5]];
  }

  _Block_object_dispose(&v35, 8);
}

void __57__ICNoteEditorViewController_audioTranscriptInteraction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 56) + 8) + 40) note];
  v6 = [v5 objectID];
  v7 = [*(a1 + 48) note];
  v8 = [v7 objectID];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

- (void)audioRecordingStarted:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self audioEventReporter];
  [v3 startAudioRecordingEvent];
}

- (void)audioRecordingStopped:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35C90]];
  v7 = ICDynamicCast();

  objc_opt_class();
  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35C98]];
  v10 = ICDynamicCast();

  objc_opt_class();
  v11 = [v4 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D35CA0]];
  v13 = ICDynamicCast();

  objc_opt_class();
  v14 = [v4 userInfo];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D35CA8]];
  v16 = ICDynamicCast();

  objc_opt_class();
  v17 = [v4 userInfo];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D35CB0]];
  v19 = ICDynamicCast();
  v20 = [v19 BOOLValue];

  objc_opt_class();
  v21 = [v4 userInfo];
  v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D35CB8]];
  v23 = ICDynamicCast();

  if (!v20 || v23)
  {
    v24 = [MEMORY[0x277D35F30] sharedContext];
    v25 = [v24 managedObjectContext];

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__4;
    v36 = __Block_byref_object_dispose__4;
    v37 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__ICNoteEditorViewController_audioRecordingStopped___block_invoke;
    v28[3] = &unk_2781ACE30;
    v31 = &v32;
    v26 = v25;
    v29 = v26;
    v30 = v7;
    [v26 performBlockAndWait:v28];
    if (v33[5])
    {
      v27 = [(ICNoteEditorViewController *)self audioEventReporter];
      [v27 submitAudioRecordingEventWithAttachment:v33[5] appBackgroundOccurred:objc_msgSend(v10 noteMultitaskingOccurred:"BOOLValue") audioAttachmentDuration:{objc_msgSend(v13, "BOOLValue"), v16}];
    }

    _Block_object_dispose(&v32, 8);
  }
}

void __52__ICNoteEditorViewController_audioRecordingStopped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)observeAttachmentDeleted:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D35B70]];

  if (v5)
  {
    v6 = [v5 managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__ICNoteEditorViewController_observeAttachmentDeleted___block_invoke;
    v7[3] = &unk_2781ABEB8;
    v8 = v5;
    v9 = self;
    [v6 performBlock:v7];
  }
}

void __55__ICNoteEditorViewController_observeAttachmentDeleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 objectID];
  v4 = [*(a1 + 40) note];
  v5 = [v4 objectID];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    if ([*(a1 + 32) attachmentType] == 12)
    {
      v17 = [*(a1 + 40) eventReporter];
      v7 = *(a1 + 32);
      v8 = [v7 note];
      [v17 submitTableRemoveEventForAttachment:v7 inNote:v8];
    }

    else if ([*(a1 + 32) attachmentType] == 11)
    {
      v9 = [*(a1 + 40) eventReporter];
      v10 = [*(a1 + 32) galleryModel];
      [v9 pushStartDocScanPageCountData:{objc_msgSend(v10, "subAttachmentCount")}];

      v11 = [*(a1 + 40) eventReporter];
      v12 = [*(a1 + 32) identifier];
      [v11 pushDocScanDataWithID:v12 actionType:5 stage:2];

      v17 = [*(a1 + 40) eventReporter];
      v8 = [*(a1 + 32) note];
      [v17 submitDocScanEventForNote:v8 pageCount:0];
    }

    else
    {
      if ([*(a1 + 32) attachmentType] != 10 && objc_msgSend(*(a1 + 32), "attachmentType") != 13)
      {
        return;
      }

      v13 = objc_alloc(MEMORY[0x277CD95F8]);
      v14 = [*(a1 + 32) mergeableData];
      v17 = [v13 initWithData:v14 error:0];

      v8 = [*(a1 + 40) eventReporter];
      v15 = [*(a1 + 32) identifier];
      v16 = [*(a1 + 32) note];
      [v8 submitInlineDrawingDataForDrawingDeletion:v17 drawingID:v15 forNote:v16];
    }
  }
}

- (void)observeDrawingConverted:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D364F0]];

  objc_opt_class();
  v7 = [MEMORY[0x277D35F30] sharedContext];
  v8 = [v7 managedObjectContext];
  v19 = 0;
  v9 = [v8 existingObjectWithID:v6 error:&v19];
  v10 = v19;
  v11 = ICDynamicCast();

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [v11 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__ICNoteEditorViewController_observeDrawingConverted___block_invoke;
    v15[3] = &unk_2781AC5B0;
    v16 = v11;
    v17 = self;
    v18 = v4;
    [v14 performBlock:v15];

    v13 = v16;
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICNoteEditorViewController observeDrawingConverted:];
    }
  }
}

void __54__ICNoteEditorViewController_observeDrawingConverted___block_invoke(id *a1)
{
  v2 = [a1[4] note];
  v3 = [v2 objectID];
  v4 = [a1[5] note];
  v5 = [v4 objectID];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = [a1[6] userInfo];
    v15 = [v7 objectForKeyedSubscript:*MEMORY[0x277D364E8]];

    if ([v15 BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = objc_alloc(MEMORY[0x277CD95F8]);
    v10 = [a1[4] mergeableData];
    v11 = [v9 initWithData:v10 error:0];

    v12 = [a1[5] eventReporter];
    v13 = [a1[4] note];
    v14 = [a1[4] identifier];
    [v12 submitFullscreenDrawingToInlineDrawingEventForNote:v13 drawing:v11 drawingID:v14 method:v8];
  }
}

- (void)lockNoteManagerWillToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v8 = ICCheckedDynamicCast();

  v6 = [v8 note];
  v7 = [(ICNoteEditorBaseViewController *)self note];

  if (v6 == v7)
  {
    [(ICNoteEditorViewController *)self setTogglingLock:1];
  }
}

- (void)lockNoteManagerDidToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v11 = ICCheckedDynamicCast();

  v6 = [v11 note];
  v7 = [(ICNoteEditorBaseViewController *)self note];

  if (v6 == v7)
  {
    v8 = [v11 updatedNote];

    if (v8)
    {
      v9 = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
      v10 = [v11 updatedNote];
      [(ICNoteEditorViewController *)self setNote:v10];

      [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:v9];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }

    [(ICNoteEditorViewController *)self setTogglingLock:0];
    [(ICNoteEditorViewController *)self cleanupAfterBarSourcedPopoverPresentation];
  }
}

- (void)attachmentBrickDidChangeSize
{
  objc_opt_class();
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 textStorage];
  v7 = ICDynamicCast();

  objc_opt_class();
  v5 = [v7 styler];
  v6 = ICCheckedDynamicCast();

  [v6 refreshTextStylingForTextStorage:v7 withTextController:v6];
}

- (void)tableCellFirstResponderChanged
{
  v3 = [(ICNoteEditorBaseViewController *)self note];

  if (v3)
  {
    v5 = [(ICNoteEditorViewController *)self mentionsController];
    v4 = [(ICNoteEditorBaseViewController *)self note];
    [v5 tableCellFirstResponderChangedInNote:v4];
  }
}

- (void)sharedWithYouControllerDidUpdateHighlights:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ICNoteEditorViewController_sharedWithYouControllerDidUpdateHighlights___block_invoke;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__ICNoteEditorViewController_sharedWithYouControllerDidUpdateHighlights___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCollaborationBarButtonItem:0];
  v2 = *(a1 + 32);

  return [v2 resetBarButtonsAnimated:0];
}

- (void)passwordEntryAlertControllerAttemptDidFail:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  v5 = [v4 note];

  if (v5)
  {
    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v6 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v7 = [v6 note];
    [v8 submitPasswordFailEventForModernNote:v7];
  }
}

- (void)authenticationAuthenticateBiometricsAttemptDidFail:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  v5 = [v4 note];

  if (v5)
  {
    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v6 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    v7 = [v6 note];
    [v8 submitBiometricsFailEventForModernNote:v7];
  }
}

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorViewController *)self inlineAttachmentChangeController];

  if (v8 == v6)
  {
    v10 = [v7 ic_compactMap:&__block_literal_global_566];
    goto LABEL_5;
  }

  v9 = [(ICNoteEditorViewController *)self noteAndFolderChangeController];

  if (v9 != v6)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteEditorViewController managedObjectContextChangeController:managedObjectIDsToUpdateForUpdatedManagedObjects:]" simulateCrash:1 showAlert:0 format:@"Need to update this method for a new change controller"];
    v10 = [MEMORY[0x277CBEB98] set];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v12 = [(ICNoteEditorBaseViewController *)self note];
  v13 = [v12 folder];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__ICNoteEditorViewController_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke_2;
  v17[3] = &unk_2781ACE78;
  v18 = v12;
  v19 = v13;
  v14 = v13;
  v15 = v12;
  v11 = [v7 ic_compactMap:v17];

LABEL_7:

  return v11;
}

id __116__ICNoteEditorViewController_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectID];
  if ([v3 ic_isInlineAttachmentType])
  {
    v4 = [v2 objectID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __116__ICNoteEditorViewController_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  v5 = [v3 objectID];
  v6 = [*(a1 + 32) objectID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 changedValues];

    if ([v8 count] != 1)
    {
      goto LABEL_8;
    }

    v9 = [v8 allKeys];
    v10 = [v9 lastObject];
    v11 = [v10 isEqualToString:@"lastOpenedDate"];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [v3 objectID];

    v13 = [*(a1 + 40) objectID];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      goto LABEL_9;
    }

    v8 = v4;
  }

  v4 = 0;
LABEL_8:

LABEL_9:

  return v4;
}

- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ICNoteEditorViewController *)self inlineAttachmentChangeController];

  if (v6 == v5)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController managedObjectContextChangeController:performUpdatesForManagedObjectIDs:];
    }

    objc_opt_class();
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 textStorage];
    v11 = ICDynamicCast();

    objc_opt_class();
    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [v12 textLayoutManager];
    v14 = ICDynamicCast();

    objc_opt_class();
    v15 = [v11 styler];
    v16 = ICCheckedDynamicCast();

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [v14 reloadInlineAttachments];
    }

    else
    {
      [v16 refreshTextStylingForTextStorage:v11 withTextController:v16];
    }

    v17 = [(ICNoteEditorBaseViewController *)self note];
    v18 = [v17 visibleAttachmentTextStoragesForTextLayoutManager:v14];
    v19 = [v18 allValues];
    v20 = [v19 ic_flatMap:&__block_literal_global_578];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v16 refreshTextStylingForTextStorage:*(*(&v26 + 1) + 8 * v25++) withTextController:{v16, v26}];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v7 = [(ICNoteEditorViewController *)self noteAndFolderChangeController];

    if (v7 == v5)
    {
      [(ICNoteEditorViewController *)self noteOrFolderChangedCallback];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteEditorViewController managedObjectContextChangeController:performUpdatesForManagedObjectIDs:]" simulateCrash:1 showAlert:0 format:@"Need to update this method for a new change controller"];
    }
  }
}

- (void)updateTextInputAccessoryViewForDidBeginEditing:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    goto LABEL_31;
  }

  v5 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
  v6 = [(ICNoteEditorViewController *)self noteFormattingController];
  v7 = [v6 view];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [(ICNoteEditorViewController *)self styleSelectorInputViewShowing];

  if (!v9)
  {
LABEL_6:
    v10 = [v4 inputAccessoryView];

    [v4 setInputAccessoryView:v5];
    if (!v10 && v5)
    {
      [v4 reloadInputViews];
    }
  }

  v11 = [(ICNoteEditorViewController *)self keyboardAnimateInFinishTime];

  if (v11)
  {
    v12 = [(ICNoteEditorViewController *)self keyboardAnimateInFinishTime];
    [v12 timeIntervalSinceNow];
    v14 = v13;

    if (v14 <= 0.0 || v14 >= 0.5)
    {
      v15 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = v14;
        _os_log_impl(&dword_2151A1000, v15, OS_LOG_TYPE_DEFAULT, "Invalid keyboard animate in finish time interval: %g, falling back to default", buf, 0xCu);
      }

      v14 = 0.1;
    }

    [(ICNoteEditorViewController *)self setKeyboardAnimateInFinishTime:0];
  }

  else
  {
    v14 = 0.1;
  }

  if (![MEMORY[0x277D75658] isInHardwareKeyboardMode] || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "userInterfaceIdiom"), v16, !v17))
  {
    v18 = [(ICNoteEditorViewController *)self inStartEditingForWritingTools];
    v19 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
    v20 = v19;
    if (v18)
    {
      [v19 hide];
    }

    else
    {
      [v19 showWithDelay:v14];
    }

    if (![(ICNoteEditorViewController *)self hasKeyboardBeenVisibleBefore])
    {
      [(ICNoteEditorViewController *)self setHasKeyboardBeenVisibleBefore:1];
      v21 = [(ICNoteEditorViewController *)self view];
      v22 = [v21 window];
      [v22 frame];
      v24 = v23;
      v26 = v25;

      [(ICNoteEditorViewController *)self setShouldInputAccessoryViewButtonsBeVisible:v24 < v26];
    }

    if ([(ICNoteEditorViewController *)self inStartEditingForWritingTools])
    {
      v27 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [v27 setButtonsVisible:0];

      v28 = [(ICNoteEditorViewController *)self shouldInputAccessoryViewButtonsBeVisible];
      v29 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [v29 setSetButtonsVisibleWhenShown:v28];
    }

    else
    {
      v30 = [(ICNoteEditorViewController *)self shouldInputAccessoryViewButtonsBeVisible];
      v29 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [v29 setButtonsVisible:v30];
    }

    if (v5)
    {
      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__ICNoteEditorViewController_updateTextInputAccessoryViewForDidBeginEditing___block_invoke;
    v31[3] = &unk_2781ABEB8;
    v32 = v4;
    v33 = self;
    dispatch_async(MEMORY[0x277D85CD0], v31);
  }

LABEL_31:
}

uint64_t __77__ICNoteEditorViewController_updateTextInputAccessoryViewForDidBeginEditing___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEditing];
  if (result)
  {
    result = [*(a1 + 40) isEditingOnSecureScreen];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 40);

      return [v3 showOrHideActivityStreamToolbarIfNeeded];
    }
  }

  return result;
}

- (void)updateTextInputAccessoryViewForTextViewDidChange:(id)a3
{
  v5 = a3;
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    v4 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v4 textViewDidChange:v5];
  }
}

- (void)updateTextInputAccessoryViewForDidEndEditing:(id)a3
{
  v9 = a3;
  v4 = [(ICNoteEditorViewController *)self textView];
  if (([v4 isFirstResponder] & 1) == 0)
  {
    v5 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v6 = [v5 isFirstResponder];

    if (v6)
    {
      goto LABEL_6;
    }

    v4 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
    -[ICNoteEditorViewController setShouldInputAccessoryViewButtonsBeVisible:](self, "setShouldInputAccessoryViewButtonsBeVisible:", [v4 buttonsVisible]);
    [v4 setButtonsVisible:0];
    [v4 hide];
    v7 = [(ICNoteEditorViewController *)self textView];
    [v7 setInputAccessoryView:0];

    v8 = [(ICNoteEditorViewController *)self textView];

    if (v8 != v9)
    {
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
    }
  }

LABEL_6:
}

- (void)inputAccessoryDisclosureStateWillChange:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  v5 = [v4 buttonsVisible];

  if ((v5 & 1) == 0)
  {

    [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
  }
}

- (void)inputAccessoryDisclosureStateDidChange:(id)a3 tapped:(BOOL)a4
{
  v4 = a4;
  [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  v6 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  v7 = [v6 buttonsVisible];

  if (!v7)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 selectedRange];
  v10 = v9;

  if (!v10)
  {
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [v12 selectedTextRange];
    v14 = [v13 end];
    [v11 caretRectForPosition:v14];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(ICNoteEditorViewController *)self textView];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [(ICNoteEditorViewController *)self textView];
    [v32 contentInset];
    v34 = v31 - v33;

    v39 = v16;
    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    MaxY = CGRectGetMaxY(v41);
    v42.origin.x = v25;
    v42.origin.y = v27;
    v42.size.width = v29;
    v42.size.height = v34;
    v36 = MaxY - CGRectGetMaxY(v42);
    if (v36 > 0.0)
    {
      [(ICNoteEditorViewController *)self inputAccessoryViewHeight];
      if (v36 < v22 + v37)
      {
        v38 = [(ICNoteEditorViewController *)self textView];
        [v38 scrollRectToVisible:1 animated:{v39, v18, v20, v22}];
      }
    }
  }

  if (v4)
  {
LABEL_9:

    [(ICNoteEditorViewController *)self setShouldInputAccessoryViewButtonsBeVisible:v7];
  }
}

- (void)notesContextRefreshNotification:(id)a3
{
  [(ICNoteEditorViewController *)self fetchAll];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v4 refreshNoteTextFromDataStore];
}

- (void)fetchAll
{
  v3 = [(ICNoteEditorBaseViewController *)self note];

  if (v3)
  {
    v4 = MEMORY[0x277D35F28];
    v9 = [(ICNoteEditorBaseViewController *)self note];
    v5 = [v9 identifier];
    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 managedObjectContext];
    v8 = [v4 refreshAllOfNoteWithIdentifier:v5 context:v7];
  }
}

- (void)viewControllerWillStartEditModeNotification:(id)a3
{
  v11 = a3;
  objc_opt_class();
  v4 = [v11 object];
  v5 = ICDynamicCast();

  v6 = [v5 ic_windowScene];
  v7 = [(ICNoteEditorViewController *)self ic_windowScene];

  if (v6 == v7)
  {
    v8 = [v11 object];
    if (v8 == self || ([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
    {
    }

    else
    {
      v9 = [MEMORY[0x277D369A0] sharedInstance];
      v10 = [v9 isSecureScreenShowing];

      if ((v10 & 1) == 0)
      {
        [(ICNoteEditorViewController *)self setEditing:0 animated:1];
      }
    }
  }
}

- (void)submitChecklistAnalyticsEventForActionType:(int64_t)a3
{
  v5 = [(ICNoteEditorViewController *)self textController];
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 selectedRange];
  v8 = [(ICNoteEditorViewController *)self textView];
  v11 = [v5 analyticsInfoForChecklistAtIndex:v7 textView:v8];

  v9 = [(ICNoteEditorViewController *)self eventReporter];
  v10 = [(ICNoteEditorBaseViewController *)self note];
  [v9 submitChecklistUsageEventForModernNote:v10 countOfCheckedItems:objc_msgSend(v11 countOfTotalItems:"numberOfCheckedItems") checklistActionType:{objc_msgSend(v11, "numberOfItems"), a3}];
}

- (void)donateEditingIntentIfNecessary
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 textStorage];
  v5 = [v4 length];

  if (v5)
  {
    if ([(ICNoteEditorViewController *)self isEditingNewNote])
    {
      v6 = [(ICNoteEditorBaseViewController *)self note];
      v7 = [ICIntentsUtilities interactionForCreateNote:v6];
      [ICIntentsUtilities donateInteraction:v7];
    }

    else
    {
      v8 = [(ICNoteEditorViewController *)self originalEndOfNote];

      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [(ICNoteEditorBaseViewController *)self note];
      v10 = [v9 textStorage];
      v11 = [v10 mergeableString];
      v12 = [(ICNoteEditorViewController *)self originalEndOfNote];
      v6 = [v11 characterRangesForSelection:v12];

      v13 = [v6 firstObject];
      v14 = [v13 rangeValue];

      v15 = [(ICNoteEditorBaseViewController *)self note];
      v16 = [v15 textStorage];
      v17 = [v16 length] - v14;

      if (v17 < 2)
      {
        goto LABEL_10;
      }

      v18 = [(ICNoteEditorBaseViewController *)self note];
      v19 = [v18 textStorage];
      v20 = [v19 length];

      if (v14 >= v20)
      {
        goto LABEL_10;
      }

      v21 = [(ICNoteEditorBaseViewController *)self note];
      v22 = [v21 textStorage];
      v23 = [v22 string];
      v7 = [v23 substringWithRange:{v14, v17}];

      if ([v7 hasPrefix:@"\n"])
      {
        v24 = [v7 substringFromIndex:1];

        v25 = [(ICNoteEditorBaseViewController *)self note];
        v26 = [ICIntentsUtilities interactionForAppendToNote:v25 withAppendedText:v24];
        [ICIntentsUtilities donateInteraction:v26];

        v7 = v24;
      }
    }

LABEL_10:
  }

LABEL_11:
  [(ICNoteEditorViewController *)self setIsEditingNewNote:0];

  [(ICNoteEditorViewController *)self setOriginalEndOfNote:0];
}

- (void)didEndEditingNote
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICNoteEditorViewController *)self isAddingImageAttachment];

    if (!v5)
    {
      [(ICNoteEditorViewController *)self saveNote];
      v6 = [(ICNoteEditorViewController *)self bluetoothKeyboardHintViewController];
      [v6 didEditNote];
    }
  }
}

- (void)saveNote
{
  v1 = [a1 note];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)saveInlineDrawings
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 textStorage];

  [v3 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:objc_msgSend(v3 usingBlock:{"length"), 0, &__block_literal_global_584}];
}

void __48__ICNoteEditorViewController_saveInlineDrawings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  v3 = v4;
  if (v4)
  {
    [v4 saveIfNeeded];
    v3 = v4;
  }
}

- (void)updateInlineDrawings
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    v3 = [(ICNoteEditorViewController *)self textView];
    v4 = [v3 layoutManager];
    v5 = ICDynamicCast();

    [v5 updateInlineDrawingViews];
  }
}

- (id)attributedStringFromHTML:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 dataUsingEncoding:4];
  v5 = objc_alloc(MEMORY[0x277CCAB48]);
  v19 = *MEMORY[0x277D74090];
  v20[0] = *MEMORY[0x277D740C8];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = 0;
  v7 = [v5 initWithData:v4 options:v6 documentAttributes:0 error:&v18];
  v8 = v18;

  if (v8)
  {
    NSLog(&cfstr_FailedToConver.isa, v8);
    v9 = objc_alloc_init(MEMORY[0x277CCAB48]);

    v7 = v9;
  }

  if ([v3 rangeOfString:@"<meta name=Generator content=Cocoa HTML Writer>"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__4;
    v16[4] = __Block_byref_object_dispose__4;
    v17 = 0;
    v10 = [v7 length];
    v11 = *MEMORY[0x277D740A8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__ICNoteEditorViewController_attributedStringFromHTML___block_invoke;
    v13[3] = &unk_2781ACEE0;
    v15 = v16;
    v14 = v7;
    [v14 enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{2, v13}];

    _Block_object_dispose(v16, 8);
  }

  return v7;
}

void __55__ICNoteEditorViewController_attributedStringFromHTML___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  v9 = *(*(a1 + 40) + 8);
  if (a4 == 1)
  {
    v13 = v7;
    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = *(v9 + 40);
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v8;
    [v12 pointSize];
    v11 = [v13 fontWithSize:?];
    [*(a1 + 32) addAttribute:*MEMORY[0x277D740A8] value:v11 range:{a3, a4}];
  }

  v8 = v13;
LABEL_6:
}

- (_NSRange)visibleRange
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = v4;
  if (IsTextKit2Enabled)
  {
    v6 = [v4 textLayoutManager];
    v7 = [v6 textViewportLayoutController];
    v8 = [v7 viewportRange];

    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 textLayoutManager];
    v11 = [v10 ic_rangeForTextRange:v8];
    v13 = v12;
  }

  else
  {
    v14 = [v4 textStorage];
    v11 = [v14 length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v15 = [(ICNoteEditorViewController *)self textView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(ICNoteEditorViewController *)self textView];
    v25 = [(ICNoteEditorViewController *)self textView];
    [v25 bounds];
    v26 = [v24 characterRangeAtPoint:?];
    v8 = [v26 start];

    v27 = [(ICNoteEditorViewController *)self textView];
    v36.origin.x = v17;
    v36.origin.y = v19;
    v36.size.width = v21;
    v36.size.height = v23;
    MaxX = CGRectGetMaxX(v36);
    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    v29 = [v27 characterRangeAtPoint:{MaxX, CGRectGetMaxY(v37)}];
    v9 = [v29 end];

    v30 = [(ICNoteEditorViewController *)self textView];
    v31 = [(ICNoteEditorViewController *)self textView];
    v32 = [v31 beginningOfDocument];
    v11 = [v30 offsetFromPosition:v32 toPosition:v8];

    v10 = [(ICNoteEditorViewController *)self textView];
    v13 = [v10 offsetFromPosition:v8 toPosition:v9];
  }

LABEL_6:
  v33 = v11;
  v34 = v13;
  result.length = v34;
  result.location = v33;
  return result;
}

- (id)linkForSelection
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 textStorage];
    v9 = *MEMORY[0x277D740E8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__ICNoteEditorViewController_linkForSelection__block_invoke;
    v21[3] = &unk_2781ABC80;
    v21[4] = &v22;
    [v8 enumerateAttribute:v9 inRange:v4 options:v6 usingBlock:{0, v21}];
  }

  else
  {
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [v10 textStorage];
    v12 = v4 < [v11 length];

    if (!v12)
    {
      goto LABEL_6;
    }

    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 textStorage];
    v13 = [v8 attribute:*MEMORY[0x277D740E8] atIndex:v4 effectiveRange:0];
    v14 = v23[5];
    v23[5] = v13;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v23[5];
LABEL_10:
    v16 = v15;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x277CBEBC0] URLWithString:v23[5]];
    goto LABEL_10;
  }

  if (v23[5])
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_2151A1000, v17, OS_LOG_TYPE_DEFAULT, "Cannot convert link attribute of type %@ to an NSURL", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_16:
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __46__ICNoteEditorViewController_linkForSelection__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v13 = v8;
    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      *v10 = 0;

      *a5 = 1;
    }

    else
    {
      objc_storeStrong(v10, a2);
    }

    v8 = v13;
  }
}

- (BOOL)canFindInNote
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  if (v3)
  {
    v4 = [(ICNoteEditorBaseViewController *)self note];
    if ([v4 isPasswordProtectedAndLocked])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(ICNoteEditorViewController *)self invitation];
      if (v6)
      {
        v5 = 0;
      }

      else
      {
        v5 = [(ICNoteEditorViewController *)self ic_isViewVisible];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canOpenLink
{
  if ([MEMORY[0x277D75418] ic_isLocked])
  {
    return 0;
  }

  v4 = [(ICNoteEditorViewController *)self linkForSelection];
  if (v4)
  {
    v3 = [ICExtensionSafeAPIShims canOpenURL:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canRecordAudio
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 textStorage];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(ICNoteEditorBaseViewController *)self note];
  if (![v6 isEditable])
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  v7 = [(ICNoteEditorViewController *)self textView];
  if (![v7 isEditable])
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = [(ICNoteEditorBaseViewController *)self note];
  if ([v8 isPasswordProtected])
  {

    goto LABEL_6;
  }

  v10 = [MEMORY[0x277D366C8] isRecording];

  return (v10 & 1) == 0;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ICNoteEditorViewController *)self viewControllerManager];
  v8 = [v7 window];
  v9 = [v8 ic_topmostPresentedViewController];

  if (sel_decreaseIndentation_ == a3 || sel_increaseIndentation_ == a3)
  {
    v11 = [(ICNoteEditorViewController *)self textView];
    if ([v11 isEditing])
    {
      LOBYTE(v12) = [(ICNoteEditorViewController *)self canIndentLeft]|| [(ICNoteEditorViewController *)self canIndentRight];
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (sel_checkAll_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canPerformTodoCheckAll];
    goto LABEL_45;
  }

  if (sel_uncheckAll_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canPerformTodoUncheckAll];
    goto LABEL_45;
  }

  if (sel_removeChecked_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canRemoveCheckedListItem];
    goto LABEL_45;
  }

  if (sel_moveCheckedToBottom_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canMoveCheckedToBottom];
    goto LABEL_45;
  }

  if (sel_performFindInNote_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canFindInNote];
    goto LABEL_45;
  }

  if (sel_insertGraph_ == a3 || sel_addToGraph_ == a3)
  {
    v11 = [(ICNoteEditorBaseViewController *)self note];
    if ([v11 isEditable])
    {
      v16 = [(ICNoteEditorBaseViewController *)self note];
      v17 = [v16 isDeletedOrInTrash];
LABEL_48:
      LOBYTE(v12) = v17 ^ 1;

LABEL_67:
      goto LABEL_68;
    }

LABEL_66:
    LOBYTE(v12) = 0;
    goto LABEL_67;
  }

  if (sel_createImage_ == a3)
  {
    if ([(ICNoteEditorViewController *)self canPerformCreateImageWithSelection])
    {
      LOBYTE(v12) = 1;
      goto LABEL_68;
    }

    v18 = [(ICNoteEditorViewController *)self textView];
    [v18 selectedRange];
    LOBYTE(v12) = v19 == 0;
    goto LABEL_52;
  }

  if (v9)
  {
    goto LABEL_73;
  }

  v13 = [(ICNoteEditorViewController *)self textView];
  v14 = [v13 isEditing];

  if (!v14)
  {
    goto LABEL_73;
  }

  if (sel_moveSelectedListItemUp_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canMoveSelectedListItemUp];
    goto LABEL_45;
  }

  if (sel_moveSelectedListItemDown_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canMoveSelectedListItemDown];
    goto LABEL_45;
  }

  if (sel_openLink_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canOpenLink];
    goto LABEL_45;
  }

  LOBYTE(v12) = 1;
  if (sel_tab_ == a3 || sel_shiftTab_ == a3 || sel_shiftReturn_ == a3)
  {
    goto LABEL_68;
  }

  if (sel_indentLeft_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canIndentLeft];
    goto LABEL_45;
  }

  if (sel_indentRight_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canIndentRight];
    goto LABEL_45;
  }

  if (sel_ic_alignLeft_ == a3 || sel_ic_alignCenter_ == a3 || sel_ic_alignRight_ == a3)
  {
    if (!ICDebugModeEnabled())
    {
      goto LABEL_73;
    }

    v18 = [(ICNoteEditorViewController *)self textView];
    v20 = [v18 isEditing];
LABEL_62:
    LOBYTE(v12) = v20;
    goto LABEL_52;
  }

  if (sel_copy_ == a3 || sel_cut_ == a3)
  {
    v24.receiver = self;
    v24.super_class = ICNoteEditorViewController;
    if (![(ICNoteEditorViewController *)&v24 canPerformAction:a3 withSender:v6])
    {
      goto LABEL_73;
    }

    v18 = [(ICNoteEditorViewController *)self textView];
    v20 = [v18 isSelectionCopyableSize];
    goto LABEL_62;
  }

  if (sel__share_ == a3)
  {
    v23.receiver = self;
    v23.super_class = ICNoteEditorViewController;
    if ([(ICNoteEditorViewController *)&v23 canPerformAction:a3 withSender:v6])
    {
      v11 = [(ICNoteEditorViewController *)self textView];
      if ([v11 isSelectionCopyableSize])
      {
        v16 = [(ICNoteEditorViewController *)self textView];
        v17 = [v16 ic_isInSecureWindow];
        goto LABEL_48;
      }

      goto LABEL_66;
    }

LABEL_73:
    LOBYTE(v12) = 0;
    goto LABEL_68;
  }

  if (sel_addToTags_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canAddToTags];
    goto LABEL_45;
  }

  if (sel_convertToText_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canConvertToText];
    goto LABEL_45;
  }

  if (sel_convertToTag_ == a3)
  {
    v15 = [(ICNoteEditorViewController *)self canConvertToTag];
    goto LABEL_45;
  }

  if (sel_openLinkEditor_ == a3)
  {
    if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
    {
      goto LABEL_73;
    }

    v18 = [(ICNoteEditorBaseViewController *)self note];
    v12 = [v18 isSharedReadOnly] ^ 1;
LABEL_52:

    goto LABEL_68;
  }

  if (sel_toggleBlockQuote_ != a3)
  {
    v22.receiver = self;
    v22.super_class = ICNoteEditorViewController;
    v15 = [(ICNoteEditorViewController *)&v22 canPerformAction:a3 withSender:v6];
LABEL_45:
    LOBYTE(v12) = v15;
  }

LABEL_68:

  return v12;
}

- (BOOL)canRenameAttachmentForSelection
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 isDeletedOrInTrash];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 singleSelectedAttachment];
  v8 = [v7 attachment];

  LOBYTE(v6) = [v8 supportsRenaming];
  return v6;
}

- (void)renameAttachment
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 singleSelectedAttachment];
  v5 = [v4 attachment];

  v6 = objc_alloc(MEMORY[0x277D05D48]);
  v7 = [v5 title];
  v8 = [v6 initWithExistingTitle:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ICNoteEditorViewController_renameAttachment__block_invoke;
  v10[3] = &unk_2781ACF08;
  v11 = v5;
  v9 = v5;
  [v8 showFromViewController:self completion:v10];
}

void __46__ICNoteEditorViewController_renameAttachment__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[ICDocCamScannedDocumentEditor alloc] initWithGalleryAttachment:*(a1 + 32)];
    [(ICDocCamScannedDocumentEditor *)v4 updateDocumentTitle:v3 isUserDefined:1];
  }
}

- (OS_dispatch_queue)userActivityUpdateQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_userActivityUpdateQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.user-activity", v3);
    userActivityUpdateQueue = v2->_userActivityUpdateQueue;
    v2->_userActivityUpdateQueue = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_userActivityUpdateQueue;

  return v6;
}

- (void)updateNoteUserActivityState
{
  v71[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICNoteEditorBaseViewController *)self note];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self noteUserActivity];
    if (v5)
    {
    }

    else
    {
      v6 = [(ICNoteEditorBaseViewController *)self note];
      v7 = [v6 isEmpty];

      if (v7)
      {
        return;
      }
    }

    if ([(ICNoteEditorViewController *)self isDrawingStroke])
    {
      v59 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
      [v59 requestFire];
    }

    else
    {
      v8 = [(ICNoteEditorViewController *)self noteUserActivity];

      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.notes.activity.edit-note"];
        [v9 setEligibleForSearch:1];
        v10 = [(ICNoteEditorBaseViewController *)self note];
        v11 = [v10 title];
        v12 = [v11 localizeForLanguage:0];
        [v9 setTitle:v12];

        [v9 setDelegate:self];
        [(ICNoteEditorViewController *)self setNoteUserActivity:v9];
        v13 = [(ICNoteEditorViewController *)self noteUserActivity];
        [v13 becomeCurrent];
      }

      v14 = [(ICNoteEditorBaseViewController *)self note];
      v60 = [v14 objectID];

      v58 = [(ICNoteEditorViewController *)self isEditing];
      v15 = [(ICNoteEditorBaseViewController *)self note];
      v16 = [v15 textStorage];
      v17 = [v16 mergeableString];
      v18 = MEMORY[0x277CCAE60];
      v19 = [(ICNoteEditorViewController *)self textView];
      v20 = [v19 selectedRange];
      v22 = [v18 valueWithRange:{v20, v21}];
      v71[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      v24 = [v17 selectionForCharacterRanges:v23];
      v57 = [v24 serialize];

      v25 = [(ICNoteEditorViewController *)self textView];
      [v25 bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        v34 = [(ICNoteEditorViewController *)self textView];
        v35 = [v34 layoutManager];
        v36 = [(ICNoteEditorViewController *)self textView];
        v37 = [v36 textContainer];
        [v35 ensureLayoutForBoundingRect:v37 inTextContainer:{v27, v29, v31, v33}];
      }

      v38 = [(ICNoteEditorViewController *)self visibleRange];
      v40 = v39;
      v41 = [(ICNoteEditorBaseViewController *)self note];
      v42 = [v41 textStorage];
      v43 = [v42 mergeableString];
      v44 = MEMORY[0x277CCAE60];
      v45 = [(ICNoteEditorViewController *)self visibleRange];
      v47 = [v44 valueWithRange:{v45, v46}];
      v70 = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v49 = [v43 selectionForCharacterRanges:v48];
      v50 = [v49 serialize];

      v51 = [(ICNoteEditorViewController *)self currentScrollState];
      v52 = [(ICNoteEditorViewController *)self userActivityUpdateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ICNoteEditorViewController_updateNoteUserActivityState__block_invoke;
      block[3] = &unk_2781ACF58;
      v69 = v58;
      v62 = v60;
      v63 = v57;
      v67 = v38;
      v68 = v40;
      v64 = v51;
      v65 = v50;
      v66 = self;
      v53 = v50;
      v54 = v51;
      v55 = v57;
      v56 = v60;
      dispatch_async(v52, block);
    }
  }
}

void __57__ICNoteEditorViewController_updateNoteUserActivityState__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D35F30] sharedContext];
    v3 = [v2 workerManagedObjectContext];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__ICNoteEditorViewController_updateNoteUserActivityState__block_invoke_2;
    v9[3] = &unk_2781ACF30;
    v10 = *(a1 + 32);
    v11 = v3;
    v15 = *(a1 + 88);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v14 = *(a1 + 72);
    *&v6 = *(a1 + 56);
    *(&v6 + 1) = *(a1 + 64);
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v12 = v7;
    v13 = v6;
    v8 = v3;
    [v8 performBlockAndWait:v9];
  }
}

void __57__ICNoteEditorViewController_updateNoteUserActivityState__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D35F28] ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  if (v2)
  {
    v9 = v2;
    v3 = [[ICNoteUserActivityState alloc] initWithNote:v2];
    [(ICNoteUserActivityState *)v3 setEditing:*(a1 + 96)];
    if (*(a1 + 96) == 1)
    {
      v4 = [MEMORY[0x277CBEAA8] date];
      [(ICNoteUserActivityState *)v3 setModificationDate:v4];
    }

    [(ICNoteUserActivityState *)v3 setSelectionRangeData:*(a1 + 48)];
    [(ICNoteUserActivityState *)v3 setScrollState:*(a1 + 56)];
    [(ICNoteUserActivityState *)v3 setVisibleRange:*(a1 + 80), *(a1 + 88)];
    [(ICNoteUserActivityState *)v3 setVisibleRangeData:*(a1 + 64)];
    [*(a1 + 72) setNoteUserActivityState:v3];
    CanContinueActivityForNote = ICNotesCanContinueActivityForNote(v9);
    v6 = [*(a1 + 72) noteUserActivity];
    [v6 setEligibleForHandoff:CanContinueActivityForNote];

    v7 = [*(a1 + 72) noteUserActivity];
    [v7 setSupportsContinuationStreams:CanContinueActivityForNote];

    v8 = [*(a1 + 72) noteUserActivity];
    [v8 setNeedsSave:1];

    v2 = v9;
  }
}

- (void)removeCurrentScrollState
{
  v5 = [(ICNoteEditorViewController *)self savedScrollStates];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 identifier];
  [v5 ic_removeObjectForNonNilKey:v4];
}

- (ICTextViewScrollState)currentScrollState
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [ICTextViewScrollState scrollStateForTextView:v2];

  return v3;
}

- (void)applyScrollStateFromArchive:(id)a3
{
  if (a3)
  {
    [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:?];
  }
}

- (void)setArchivedScrollStateToApply:(id)a3
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v6 = [v5 note];
  v7 = [v6 managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__ICNoteEditorViewController_setArchivedScrollStateToApply___block_invoke;
  v13[3] = &unk_2781ACF80;
  v15 = &v16;
  v8 = v5;
  v14 = v8;
  [v7 performBlockAndWait:v13];

  v9 = [(ICNoteEditorViewController *)self savedScrollStates];
  [v9 ic_removeObjectForNonNilKey:v17[5]];

  if (self->_archivedScrollStateToApply != v8)
  {
    objc_storeStrong(&self->_archivedScrollStateToApply, a3);
    if ([(ICNoteEditorViewController *)self ic_isViewVisible])
    {
      v10 = [(ICNoteEditorBaseViewController *)self note];
      v11 = [(ICTextViewScrollState *)self->_archivedScrollStateToApply note];

      if (v10 == v11)
      {
        [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
        if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
        {
          v12 = v8;
          dispatchMainAfterDelay();
        }
      }
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __60__ICNoteEditorViewController_setArchivedScrollStateToApply___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __60__ICNoteEditorViewController_setArchivedScrollStateToApply___block_invoke_2(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 1504);
  if (v3 == *(result + 40))
  {
    v4 = result;
    *(v2 + 1504) = 0;

    v5 = *(v4 + 32);

    return [v5 setShouldOverscrollScrollState:0];
  }

  return result;
}

void __57__ICNoteEditorViewController_applyScrollStateIfAvailable__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) archivedScrollStateToApply];
  v2 = [v6 note];
  v3 = [v2 identifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)submitPendingInlineDrawingDataIfNecessary
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [(ICNoteEditorBaseViewController *)self note];
  if (v2)
  {
    v3 = v2;
    v4 = [(ICNoteEditorViewController *)self eventReporter];
    v5 = [v4 pendingInlineDrawingInformation];
    v6 = [v5 count];

    if (v6)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = [(ICNoteEditorViewController *)self eventReporter];
      v8 = [v7 pendingInlineDrawingInformation];

      v41 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v41)
      {
        goto LABEL_22;
      }

      v9 = *v43;
      v10 = 0x277D35000uLL;
      v11 = 0x277D35000uLL;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * v12);
          v14 = *(v10 + 3584);
          v15 = [*(v11 + 3888) sharedContext];
          v16 = [v15 managedObjectContext];
          v17 = [v14 attachmentWithIdentifier:v13 context:v16];

          if (v17 && ([v17 markedForDeletion] & 1) == 0)
          {
            v18 = [(ICNoteEditorViewController *)self eventReporter];
            v19 = [v18 pendingInlineDrawingInformation];
            v20 = [v19 objectForKeyedSubscript:v13];

            v21 = [v17 systemPaperModel];
            v22 = [v17 inlineDrawingModel];
            v23 = v22;
            if (v21)
            {
              v24 = [[ICSystemPaperIndexableTextContentHelper alloc] initWithPaperAttachment:v17];
              v25 = [(ICSystemPaperIndexableTextContentHelper *)v24 drawing];
LABEL_12:
              v26 = v25;

              if (v26)
              {
                v27 = [(ICNoteEditorViewController *)self eventReporter];
                v39 = v21;
                v28 = v9;
                v29 = [v27 pencilStrokeCountForDrawing:v26];

                v30 = [(ICSystemPaperIndexableTextContentHelper *)v26 strokes];
                v31 = v8;
                v32 = [v30 count] - v29;

                [v20 setEndPencilStrokeCount:v29];
                [v20 setEndFingerStrokeCount:v32];
                v33 = v29 - [v20 addedPencilStrokeCount];
                v9 = v28;
                v21 = v39;
                [v20 setStartPencilStrokeCount:v33];
                v34 = v32 - [v20 addedFingerStrokeCount];
                v8 = v31;
                [v20 setStartFingerStrokeCount:v34];
              }
            }

            else if (v22)
            {
              v35 = [v22 handwritingRecognitionDrawing];
              v24 = v35;
              if (v35)
              {
                v25 = v35;
                v24 = v25;
              }

              else
              {
                v25 = [v23 newDrawingFromMergeableData];
              }

              goto LABEL_12;
            }

            v10 = 0x277D35000;
            v11 = 0x277D35000;
          }

          ++v12;
        }

        while (v41 != v12);
        v36 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
        v41 = v36;
        if (!v36)
        {
LABEL_22:

          break;
        }
      }
    }
  }

  v37 = [(ICNoteEditorViewController *)self eventReporter];
  v38 = [(ICNoteEditorBaseViewController *)self note];
  [v37 submitPendingInlineDrawingDataForNote:v38];
}

- (void)handleMenuBarButtonTap:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 view];

  v7 = ICDynamicCast();

  objc_opt_class();
  v5 = [v7 contextMenuInteraction];
  v6 = ICDynamicCast();

  [v6 _presentMenuAtLocation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

void __58__ICNoteEditorViewController_updateParticipantsInDrawings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  if (v2)
  {
    v3 = [*(a1 + 32) textView];
    v4 = [v3 textStorage];
  }

  else
  {
    v4 = 0;
  }

  [v4 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:objc_msgSend(v4 usingBlock:{"length"), 0, &__block_literal_global_670}];
}

void __58__ICNoteEditorViewController_updateParticipantsInDrawings__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = [v3 attachmentViews];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v9 + 1) + 8 * v8++) updateAllPossibleParticipantNameTokens];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5 force:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ICNoteEditorViewController *)self backgroundView];
  [v10 updateContentViewBezelsStandalone:v9 needsAdditionalBottomMargin:v8 needsAdditionalLeadingMargin:v7 force:v6];
}

- (void)submitNoteViewEventForModernNote:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__4;
    v13[4] = __Block_byref_object_dispose__4;
    v14 = 0;
    v5 = [v4 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke;
    v9[3] = &unk_2781ACFA8;
    v9[4] = self;
    v12 = v13;
    v6 = v5;
    v10 = v6;
    v7 = v4;
    v11 = v7;
    [v6 performBlockAndWait:v9];
    [(ICNoteEditorViewController *)self setNoteViewEventSourceObjectID:0];
    v8 = v7;
    performBlockOnMainThread();

    _Block_object_dispose(v13, 8);
  }
}

uint64_t __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteViewEventSourceObjectID];

  if (v2)
  {
    v3 = MEMORY[0x277D35F28];
    v4 = [*(a1 + 32) noteViewEventSourceObjectID];
    v5 = [v3 ic_existingObjectWithID:v4 context:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = [*(a1 + 32) eventReporter];
  [v8 submitNoteViewEventForModernNote:*(a1 + 48) referringNote:*(*(*(a1 + 56) + 8) + 40) collapsibleSectionAffordanceExposures:objc_msgSend(*(a1 + 32) collapsibleSectionAffordanceUsages:{"uniqueCollapsibleSectionAffordanceExposures"), objc_msgSend(*(a1 + 32), "uniqueCollapsibleSectionAffordanceUsages")}];

  v9 = *(a1 + 32);

  return [v9 resetCollapsibleSectionAffordanceUsageData];
}

void __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  v3 = [*(a1 + 40) note];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = *MEMORY[0x277D74060];
    v6 = [v2 length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke_3;
    v9[3] = &unk_2781AC8D0;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    [v2 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];
  }
}

uint64_t __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v11 = ICDynamicCast();

  if (v11)
  {
    v6 = [*(a1 + 32) attachmentViewForTextAttachment:v11 characterIndex:a3];
    objc_opt_class();
    v7 = ICClassAndProtocolCast();

    if (v7)
    {
      v8 = [v7 paperDocumentEngagementData];
      if ([v8 hasActivity])
      {
        v9 = [*(a1 + 32) eventReporter];
        [v9 submitPDFWorkflowEngagementSummary:v8 modernNote:*(a1 + 40)];
      }

      [v7 resetPaperDocumentEngagementData];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)styleSelector:(id)a3 didSelectStyle:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self setCurrentTextStyle:v4];
  [v6 setCurrentBIUS:{-[ICNoteEditorViewController currentBIUSForStyleSelector](self, "currentBIUSForStyleSelector")}];

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 setIsSettingStyleWithStyleUI:0];

  v9 = topoTextStylesToAnalyticsStyles;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 integerValue];

  if (v12)
  {
    v14 = [(ICNoteEditorViewController *)self eventReporter];
    v13 = [(ICNoteEditorBaseViewController *)self note];
    [v14 submitStyleFormatEventForModernNote:v13 styleTypeValue:v12];
  }
}

- (void)toggleBlockQuote:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self textController];
  v5 = [(ICNoteEditorViewController *)self textView];
  [v4 toggleBlockQuoteInTextView:v5];

  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 ic_visibleRange];
  [v6 updateStyleLayersInRange:{v8, v9}];

  v10 = [(ICNoteEditorViewController *)self textView];
  [v10 setNeedsLayout];

  v11 = [(ICNoteEditorViewController *)self textView];
  [v11 layoutIfNeeded];

  v12 = [(ICNoteEditorViewController *)self eventReporter];
  v13 = [(ICNoteEditorBaseViewController *)self note];
  [v12 submitStyleFormatEventForModernNote:v13 styleTypeValue:15];

  v15 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  v14 = [(ICNoteEditorViewController *)self textView];
  [v15 updateFormatBarButtonsForChangeInTextView:v14];
}

- (void)toggleEmphasis
{
  v3 = ic_currentEmphasisColorTypeDefault();

  [(ICNoteEditorViewController *)self toggleEmphasisWithType:v3];
}

- (void)toggleEmphasisWithType:(int64_t)a3
{
  v8 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  if (v8)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v8 toggleEmphasis:self onValue:v5];
  }

  else
  {
    if (a3 && ic_currentEmphasisColorTypeDefault() != a3)
    {
      ic_setCurrentEmphasisColorTypeDefault();
    }

    v6 = [(ICNoteEditorViewController *)self textView];
    [v6 ic_toggleEmphasisWithType:a3];

    v5 = [(ICNoteEditorViewController *)self eventReporter];
    v7 = [(ICNoteEditorBaseViewController *)self note];
    [v5 submitStyleFormatEventForModernNote:v7 styleTypeValue:16];
  }
}

- (void)styleSelector:(id)a3 didChangeIndentAmount:(int64_t)a4
{
  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:a4];
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setIsSettingStyleWithStyleUI:0];
}

- (void)styleSelectorDidIndentLeft:(id)a3
{
  v5 = a3;
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  [(ICNoteEditorViewController *)self styleSelector:v5 didChangeIndentAmount:v4];
}

- (void)styleSelectorDidIndentRight:(id)a3
{
  v5 = a3;
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  [(ICNoteEditorViewController *)self styleSelector:v5 didChangeIndentAmount:v4];
}

- (void)toggleBoldface
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 toggleBoldface:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_toggleBoldface];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:9];
}

- (void)enableBoldface
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 enableBoldface:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_enableBoldface];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:9];
}

- (void)disableBoldface
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 disableBoldface:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_disableBoldface];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:9];
}

- (void)toggleItalics
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 toggleItalics:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_toggleItalics];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:10];
}

- (void)enableItalics
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 enableItalics:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_enableItalics];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:10];
}

- (void)disableItalics
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 disableItalics:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_disableItalics];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:10];
}

- (void)toggleUnderline
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 toggleUnderline:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_toggleUnderline];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:11];
}

- (void)enableUnderline
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 enableUnderline:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_enableUnderline];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:11];
}

- (void)disableUnderline
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 disableUnderline:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_disableUnderline];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:11];
}

- (void)toggleStrikethrough
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 toggleStrikethrough:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_toggleStrikethrough];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:12];
}

- (void)enableStrikethrough
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 enableStrikethrough:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_enableStrikethrough];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:12];
}

- (void)disableStrikethrough
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v4 disableStrikethrough:self];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 ic_disableStrikethrough];
  }

  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  [v6 submitStyleFormatEventForModernNote:v5 styleTypeValue:12];
}

- (void)styleSelector:(id)a3 toggleBIUS:(unint64_t)a4
{
  v6 = a3;
  [(ICNoteEditorViewController *)self toggleBIUS:a4 sender:v6];
  [v6 setCurrentBIUS:{-[ICNoteEditorViewController currentBIUSForStyleSelector](self, "currentBIUSForStyleSelector")}];
}

- (void)styleSelectorDidCancel:(id)a3
{
  [(ICNoteEditorViewController *)self showStyleSelector:0 animated:1];
  v4 = *MEMORY[0x277D76488];
  v7 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  v5 = [v7 styleBarButtonItem];
  v6 = [v5 view];
  UIAccessibilityPostNotification(v4, v6);
}

- (BOOL)styleSelectorShouldDisableTextStyles:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

  return v4;
}

- (void)styleSelector:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  [(ICNoteEditorViewController *)self doneEditing:0];
  [(ICNoteEditorViewController *)self presentViewController:v10 animated:v6 completion:v9];
}

- (void)styleSelectorWillShowInlineMenu:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self currentStylesForStyleSelectorIgnoreTypingAttributes:0];
  [v4 setCurrentStyles:v5 bius:-[ICNoteEditorViewController currentBIUSForStyleSelector](self animated:{"currentBIUSForStyleSelector"), 0}];
}

- (BOOL)styleSelectorShouldUseCompactTopInset:(id)a3
{
  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    return 1;
  }

  v5 = [(ICNoteEditorViewController *)self viewControllerManager];
  v6 = [v5 hasCompactWidth];

  return v6;
}

- (id)currentStylesForStyleSelectorIgnoreTypingAttributes:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v6 selectedStyles];
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    [v6 ic_selectedStylesIgnoreTypingAttributes:v3];
  }
  v7 = ;

  return v7;
}

- (unint64_t)currentBIUSForStyleSelector
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    v5 = [v4 selectedStyleBIUS];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    v5 = [v4 currentBIUSForStyleSelector];
  }

  v6 = v5;

  return v6;
}

- (int64_t)currentEmphasisType
{
  v3 = [(ICNoteEditorViewController *)self textView];
  [v3 selectedRange];
  v5 = v4;

  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 textStorage];
    v9 = *MEMORY[0x277D35D88];
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v11 selectedRange];
    v14 = [v8 attribute:v9 atIndex:objc_msgSend(v10 effectiveRange:{"firstValidEmphasisLocationWithinSelection:", v12, v13), 0}];
    [v14 intValue];
  }

  else
  {
    v8 = [v6 typingAttributes];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35D88]];
    [v10 intValue];
  }

  return ICEmphasisColorTypeForTag();
}

- (BOOL)isBlockQuoteSet
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 textStorage];
  v5 = [v4 string];
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 selectedRange];
  v9 = [v5 ic_rangeIsValid:{v7, v8}];

  if (v9)
  {
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [v10 textStorage];
    v12 = [v11 string];
    v13 = [(ICNoteEditorViewController *)self textView];
    v14 = [v13 selectedRange];
    v16 = [v12 paragraphRangeForRange:{v14, v15}];
    v18 = v17;

    v19 = [(ICNoteEditorViewController *)self textStorage];
    v20 = *MEMORY[0x277D35DA8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__ICNoteEditorViewController_isBlockQuoteSet__block_invoke;
    v23[3] = &unk_2781ABC80;
    v23[4] = &v24;
    [v19 enumerateAttribute:v20 inRange:v16 options:v18 usingBlock:{0, v23}];
  }

  v21 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v21;
}

void __45__ICNoteEditorViewController_isBlockQuoteSet__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  v8 = v10;
  if (v10)
  {
    v9 = [v10 isBlockQuote];
    v8 = v10;
    if (v9)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }
}

- (BOOL)isOnlyBlockQuoteEnabled
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

  return v3;
}

- (ICNoteFormattingViewController)noteFormattingControllerCreateIfNecessary
{
  v3 = [(ICNoteEditorViewController *)self noteFormattingController];

  if (!v3)
  {
    v4 = objc_alloc_init(ICNoteFormattingViewController);
    [(ICNoteEditorViewController *)self setNoteFormattingController:v4];

    v5 = [(ICNoteEditorViewController *)self noteFormattingController];
    [v5 setFormattingDelegate:self];
  }

  v6 = [(ICNoteEditorViewController *)self noteFormattingController];

  return v6;
}

- (void)showStyleSelector:(BOOL)a3 animated:(BOOL)a4 sender:(id)a5
{
  v5 = a4;
  v6 = a3;
  v10 = a5;
  if (v6)
  {
    v8 = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
    [v8 updateWithDataSource:self ignoreTypingAttributes:0];
  }

  if ([(ICNoteEditorViewController *)self useInputViewForStyleSelector])
  {
    [(ICNoteEditorViewController *)self showStyleSelectorInputView:v6 animated:v5 doneEditing:0];
  }

  else
  {
    [(ICNoteEditorViewController *)self showStyleSelectorPopover:v6 animated:v5 sender:v10];
    v9 = [(ICNoteEditorViewController *)self styleSelectorController];
    [v9 setElementForAXFocusOnDismissal:v10];
  }
}

- (void)showStyleSelectorPopover:(BOOL)a3 animated:(BOOL)a4 sender:(id)a5
{
  v5 = a4;
  v6 = a3;
  v20 = a5;
  if (v6)
  {
    v8 = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
    v9 = [v8 presentingViewController];

    if (!v9)
    {
      if ([MEMORY[0x277D75418] ic_isVision])
      {
        v10 = -2;
      }

      else
      {
        v10 = 7;
      }

      [v8 setModalPresentationStyle:v10];
      v11 = [v8 view];
      v12 = [v11 backgroundColor];
      v13 = [v8 popoverPresentationController];
      [v13 setBackgroundColor:v12];

      v14 = [v8 popoverPresentationController];
      [v14 setDelegate:self];

      v15 = [v8 popoverPresentationController];
      [v15 setBarButtonItem:v20];

      v16 = [v8 popoverPresentationController];
      [v16 setPopoverLayoutMargins:{0.0, 0.0, 0.0, 1.0}];

      [(ICNoteEditorViewController *)self presentViewController:v8 animated:v5 completion:0];
    }
  }

  else
  {
    v17 = [(ICNoteEditorViewController *)self noteFormattingController];
    v18 = [v17 presentingViewController];

    if (!v18)
    {
      goto LABEL_10;
    }

    v8 = [(ICNoteEditorViewController *)self noteFormattingController];
    v19 = [v8 presentingViewController];
    [v19 dismissViewControllerAnimated:v5 completion:0];
  }

LABEL_10:
}

- (void)setAuxiliaryStylingController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_auxiliaryStylingController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_auxiliaryStylingController);
    if (!v5 || (v6 = v5, v7 = objc_loadWeakRetained(&self->_auxiliaryStylingController), v8 = [v7 lockSelection], v7, v6, (v8 & 1) == 0))
    {
      objc_storeWeak(&self->_auxiliaryStylingController, obj);
      [(ICNoteEditorViewController *)self updateBarButtons];
      v9 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      if (obj)
      {
        objc_opt_class();
        v10 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        v11 = ICDynamicCast();
        [v9 updateSelectionInTextView:v11];
      }

      else
      {
        v10 = [(ICNoteEditorViewController *)self textView];
        [v9 updateSelectionInTextView:v10];
      }
    }
  }
}

- (void)showStyleSelectorInputView:(BOOL)a3 animated:(BOOL)a4 doneEditing:(BOOL)a5
{
  v5 = a3;
  v30[1] = *MEMORY[0x277D85DE8];
  [(ICNoteEditorViewController *)self setIsLoadingStyleSelectorInputView:1, a4, a5];
  if ([(ICNoteEditorViewController *)self styleSelectorInputViewShowing]!= v5)
  {
    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:1];
    [(ICNoteEditorViewController *)self setSuspendSelectedRangeUpdates:1];
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 typingAttributes];

    if (v5)
    {
      v9 = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
      v10 = [v9 presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x277D75A28];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __78__ICNoteEditorViewController_showStyleSelectorInputView_animated_doneEditing___block_invoke;
        v28[3] = &unk_2781ACFD0;
        v29 = v9;
        v12 = v10;
        v13 = [v11 customDetentWithIdentifier:@"compactStyleSelector" resolver:v28];
        v30[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
        [v12 setDetents:v14];

        [v12 setPrefersEdgeAttachedInCompactHeight:1];
        [v12 setLargestUndimmedDetentIdentifier:@"compactStyleSelector"];
        [v12 _setShouldDismissWhenTappedOutside:0];
      }

      v15 = [v9 view];
      [v15 setHidden:0];

      [(ICNoteEditorViewController *)self presentViewController:v9 animated:1 completion:0];
      v16 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

      v17 = [(ICNoteEditorViewController *)self styleSelectorDummyInputView];
      if (v16)
      {
        v18 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
        [v18 setInputView:v17];
      }

      else
      {
        v21 = [(ICNoteEditorViewController *)self textView];
        [v21 setInputView:v17];

        v22 = [(ICNoteEditorViewController *)self textView];
        [v22 setInputAccessoryView:0];

        if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
        {
          v23 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v23 setForceHideToolbar:1];
        }

        v17 = [(ICNoteEditorViewController *)self textView];
        [v17 reloadInputViews];
      }
    }

    else
    {
      v19 = [(ICNoteEditorViewController *)self noteFormattingController];
      [v19 dismissViewControllerAnimated:1 completion:0];

      v20 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

      if (v20)
      {
        v9 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
        [v9 setInputView:0];
      }

      else
      {
        v24 = [(ICNoteEditorViewController *)self textView];
        [v24 setInputView:0];

        if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
        {
          v25 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v25 setForceHideToolbar:0];
        }

        else
        {
          v25 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
          v26 = [(ICNoteEditorViewController *)self textView];
          [v26 setInputAccessoryView:v25];
        }

        v9 = [(ICNoteEditorViewController *)self textView];
        [v9 reloadInputViews];
      }
    }

    v27 = [(ICNoteEditorViewController *)self textView];
    [v27 setTypingAttributes:v8];

    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
    [(ICNoteEditorViewController *)self setSuspendSelectedRangeUpdates:0];
  }

  [(ICNoteEditorViewController *)self setIsLoadingStyleSelectorInputView:0];
}

- (void)toggleCurrentTextStyle:(unsigned int)a3
{
  v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    v7 = [v6 selectedStyles];
    v8 = [v7 containsIndex:a3];
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    v8 = [v6 ic_getTextStyleForCurrentSelection] == a3;
  }

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = a3;
  }

  [(ICNoteEditorViewController *)self setCurrentTextStyle:v9];
}

- (void)setCurrentTextStyle:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v6 setTextStyleForCurrentSelection:v3];
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    [v6 ic_setTextStyleForCurrentSelection:v3];
  }
}

- (void)setSplitViewExpandingOrCollapsing:(BOOL)a3
{
  self->_splitViewExpandingOrCollapsing = a3;
  if (a3)
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    if ([v5 isFirstResponder])
    {
      v6 = [(ICNoteEditorViewController *)self textView];
      v7 = [v6 selectedRanges];
      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:v7];
    }

    else
    {
      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:0];
    }

    LODWORD(v5) = [(ICNoteEditorViewController *)self isInkPickerShowing];
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self selectedRangesBeforeSplitViewTransition];

    if (v5)
    {
      [(ICNoteEditorViewController *)self startEditing];
      v8 = [(ICNoteEditorViewController *)self selectedRangesBeforeSplitViewTransition];
      v9 = [(ICNoteEditorViewController *)self textView];
      [v9 setSelectedRanges:v8];

      v5 = [(ICNoteEditorViewController *)self textView];
      [v5 scrollSelectionToVisible:1];

      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:0];
      LODWORD(v5) = 0;
    }
  }

  [(ICNoteEditorViewController *)self setShowInkPickerAfterViewAppears:v5 | [(ICNoteEditorViewController *)self showInkPickerAfterViewAppears]];
  v10 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [v10 hideSidebarAnimated:1];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (!a3)
      {
        v11 = [(ICNoteEditorViewController *)self viewIfLoaded];

        if (v11)
        {
          [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
          v12 = [(ICNoteEditorViewController *)self textView];
          [v12 frame];
          v26 = CGRectInset(v25, 1.0, 0.0);
          x = v26.origin.x;
          y = v26.origin.y;
          width = v26.size.width;
          height = v26.size.height;
          v17 = [(ICNoteEditorViewController *)self textView];
          [v17 setFrame:{x, y, width, height}];

          v23 = [(ICNoteEditorViewController *)self textView];
          [v23 frame];
          v28 = CGRectInset(v27, -1.0, 0.0);
          v18 = v28.origin.x;
          v19 = v28.origin.y;
          v20 = v28.size.width;
          v21 = v28.size.height;
          v22 = [(ICNoteEditorViewController *)self textView];
          [v22 setFrame:{v18, v19, v20, v21}];
        }
      }
    }
  }
}

- (void)setTextStyle:(unsigned int)a3 sender:(id)a4
{
  v4 = *&a3;
  v6 = [(ICNoteEditorViewController *)self textView:*&a3];
  [v6 setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self setCurrentTextStyle:v4];
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setIsSettingStyleWithStyleUI:0];

  v8 = topoTextStylesToAnalyticsStyles;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  if (v11)
  {
    v13 = [(ICNoteEditorViewController *)self eventReporter];
    v12 = [(ICNoteEditorBaseViewController *)self note];
    [v13 submitStyleFormatEventForModernNote:v12 styleTypeValue:v11];
  }
}

- (void)toggleBIUS:(unint64_t)a3 sender:(id)a4
{
  v17 = a4;
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = 1;
  [v6 setIsSettingStyleWithStyleUI:1];

  v8 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  v9 = [(ICNoteEditorViewController *)self textView];
  v10 = v9;
  v11 = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      if (v8)
      {
        [v8 toggleBoldface:v17];
      }

      else
      {
        [v9 ic_toggleBoldface];
      }

      v7 = 0;
      v11 = 9;
    }

    else if (a3 == 2)
    {
      if (v8)
      {
        [v8 toggleItalics:v17];
      }

      else
      {
        [v9 ic_toggleItalics];
      }

      v7 = 0;
      v11 = 10;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        if (v8)
        {
          [v8 toggleUnderline:v17];
        }

        else
        {
          [v9 ic_toggleUnderline];
        }

        v7 = 0;
        v11 = 11;
        break;
      case 8uLL:
        if (v8)
        {
          [v8 toggleStrikethrough:v17];
        }

        else
        {
          [v9 ic_toggleStrikethrough];
        }

        v7 = 0;
        v11 = 12;
        break;
      case 0x10uLL:
        v12 = ic_currentEmphasisColorTypeDefault();
        if (v8)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          [v8 toggleEmphasis:v17 onValue:v13];
        }

        else
        {
          [v10 ic_toggleEmphasisWithType:v12];
        }

        v7 = 0;
        v11 = 16;
        break;
    }
  }

  v14 = [(ICNoteEditorViewController *)self textView];
  [v14 setIsSettingStyleWithStyleUI:0];

  if ((v7 & 1) == 0)
  {
    v15 = [(ICNoteEditorViewController *)self eventReporter];
    v16 = [(ICNoteEditorBaseViewController *)self note];
    [v15 submitStyleFormatEventForModernNote:v16 styleTypeValue:v11];
  }
}

- (void)changeIndentationByIncreasing:(BOOL)a3 sender:(id)a4
{
  if ([(ICNoteEditorViewController *)self currentWritingDirection:a3]== !a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:v5];
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setIsSettingStyleWithStyleUI:0];
}

- (id)noteFormattingTintColor
{
  v2 = [(ICNoteEditorViewController *)self view];
  v3 = [v2 tintColor];

  return v3;
}

- (void)noteFormattingNeedsUpdate:(id)a3
{
  v4 = a3;
  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 selectedRange];
  [v4 updateWithDataSource:self ignoreTypingAttributes:v5 != 0];
}

- (void)noteFormattingDidFinish:(id)a3
{
  if ([(ICNoteEditorViewController *)self styleSelectorInputViewShowing])
  {
    [(ICNoteEditorViewController *)self showStyleSelectorInputView:0 animated:1 doneEditing:0];
  }

  else
  {
    [(ICNoteEditorViewController *)self cleanupAfterAddImageAttachmentOperation];
  }

  v4 = *MEMORY[0x277D76488];
  v7 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  v5 = [v7 styleBarButtonItem];
  v6 = [v5 view];
  UIAccessibilityPostNotification(v4, v6);
}

- (void)attachmentInsertionController:(id)a3 willAddAttachment:(id)a4 atRange:(_NSRange)a5
{
  v5 = [(ICNoteEditorViewController *)self textView:a3];
  [v5 unmarkText];
}

- (void)attachmentInsertionController:(id)a3 didAddAttachment:(id)a4 atRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a4;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    v10 = [v9 textStorage];
    v11 = ICCheckedDynamicCast();

    v12 = location + length;
    if (location + length > [v11 length])
    {
      v13 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ICNoteEditorViewController attachmentInsertionController:didAddAttachment:atRange:];
      }

      goto LABEL_21;
    }

    objc_opt_class();
    v14 = [v11 styler];
    v15 = ICDynamicCast();

    v16 = [v11 string];
    v43 = length;
    v17 = [v16 paragraphRangeForRange:{location, length}];
    v18 = v9;
    v19 = self;
    v20 = v11;
    v21 = v8;
    v22 = v17;
    v24 = v23;

    v25 = v22;
    v8 = v21;
    v11 = v20;
    v26 = v19;
    v9 = v18;
    [v15 updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v25 textStorage:v24 textView:{v11, v18}];
    [(ICNoteEditorViewController *)v26 textViewDidChange:v18];
    [v11 breakUndoCoalescing];
    [(ICNoteEditorViewController *)v26 updateBarButtons];
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    v27 = [v8 attachmentType];
    if (v27 < 0xC || v27 - 13 < 3)
    {
      if (!-[ICNoteEditorViewController doNotAdvanceInsertionPointAfterInsertingAttachment](v26, "doNotAdvanceInsertionPointAfterInsertingAttachment") && v12 + 1 <= [v11 length])
      {
        ++v12;
      }

      [v18 setSelectedRange:v12, 0];
      [(ICNoteEditorViewController *)v26 scrollRangeToVisible:location animated:v43, 1];
      if (ICInternalSettingsIsTextKit2Enabled())
      {
        objc_opt_class();
        v28 = [(ICNoteEditorViewController *)v26 textView];
        v29 = [v28 textLayoutManager];
        v30 = ICCheckedDynamicCast();

        if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(ICNoteEditorViewController *)v26 rcc_updatePaperKitMessengerForAttachment:v8 textLayoutManager:v30];
        }
      }

      else
      {
        objc_opt_class();
        v31 = [v18 layoutManager];
        v30 = ICCheckedDynamicCast();

        if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(ICNoteEditorViewController *)v26 rcc_updatePaperKitMessengerForAttachment:v8 layoutManager:v30];
        }
      }
    }

    else
    {
      if (v27 != 12)
      {
        goto LABEL_20;
      }

      v32 = [(ICNoteEditorViewController *)v26 textStorage];
      v33 = [v32 length];

      if (location >= v33)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      v34 = [(ICNoteEditorViewController *)v26 textStorage];
      v35 = [v34 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];
      v30 = ICDynamicCast();

      if (!v30)
      {
        goto LABEL_20;
      }

      if (ICInternalSettingsIsTextKit2Enabled())
      {
        objc_opt_class();
        v36 = [(ICNoteEditorViewController *)v26 textView];
        v37 = [v36 textLayoutManager];
        v38 = ICDynamicCast();

        v39 = [v38 tableViewControllerForAttachment:v30 createIfNeeded:1];
      }

      else
      {
        objc_opt_class();
        v40 = [(ICNoteEditorViewController *)v26 textView];
        v41 = [v40 layoutManager];
        v38 = ICDynamicCast();

        objc_opt_class();
        v42 = [v38 viewControllerForTextAttachment:v30];
        v39 = ICDynamicCast();
      }

      [v39 setShouldBeginInitialEditing:1];
      [v39 updateTableColumnDirectionForWritingDirection:{-[ICNoteEditorViewController currentWritingDirection](v26, "currentWritingDirection")}];
    }

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ICNoteEditorViewController attachmentInsertionController:didAddAttachment:atRange:];
  }

LABEL_22:
}

- (void)attachmentInsertionController:(id)a3 didAddInlineAttachment:(id)a4 atRange:(_NSRange)a5 textStorage:(id)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a6;
  v10 = [(ICNoteEditorViewController *)self textView];
  v11 = [v10 textStorage];

  if (v11 == v9)
  {
    objc_opt_class();
    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [v12 textStorage];
    v16 = ICCheckedDynamicCast();

    if (([v16 isEditing] & 1) == 0)
    {
      v14 = location + length;
      if (location + length <= [v16 length])
      {
        if ([(ICNoteEditorViewController *)self isConvertToTag])
        {
          v14 = location + 1;
        }

        v15 = [(ICNoteEditorViewController *)self textView];
        [v15 setSelectedRange:{v14, 0}];

        [(ICNoteEditorViewController *)self scrollRangeToVisible:location animated:length, 1];
      }
    }

    [(ICNoteEditorViewController *)self setIsConvertToTag:0];
  }
}

- (void)addSystemPaperAttachment
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 canAddAttachment];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v5 UUIDString];

    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 addSystemPaperAttachmentWithIdentifier:v15];

    v8 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 selectedRange];
    v12 = [v8 addAttachment:v7 atTextLocation:v10 + v11];

    v13 = [(ICNoteEditorBaseViewController *)self note];
    v14 = [v13 managedObjectContext];
    [v14 ic_save];
  }
}

- (void)showDocumentCamera
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 canAddAttachment];

  if (v4)
  {
    v5 = [(ICNoteEditorBaseViewController *)self note];
    v6 = [v5 isDeletedOrInTrash];

    if (v6)
    {

      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }

    else
    {
      [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];

      [(ICNoteEditorViewController *)self showInsertUIWithPreferredSourceType:4];
    }
  }

  else
  {

    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }
}

- (void)documentCameraPresentingViewController:(id)a3 didFinishWithInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v164 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v124 = v8;
  if (v8 && !v7)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!(warnUser && !closeViewController)" functionName:"-[ICNoteEditorViewController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"Cannot warn user if not closing the view controller"];
  }

  v127 = v7;
  v14 = [v12 docInfos];
  v15 = [v14 count];

  if (!v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"docInfoCollection.docInfos.count > 0" functionName:"-[ICNoteEditorViewController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"This should never be called with a count of 0."];
  }

  v16 = MEMORY[0x277CBEB18];
  v17 = [v12 docInfos];
  v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v19 = [v12 docInfos];
  v20 = [v19 countByEnumeratingWithState:&v156 objects:v163 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v157;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v157 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v156 + 1) + 8 * i) croppedAndFilteredImageUUID];
        v25 = [v13 getImageURL:v24 async:0];
        [v18 ic_addNonNilObject:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v156 objects:v163 count:16];
    }

    while (v21);
  }

  v128 = v12;

  objc_opt_class();
  v26 = [MEMORY[0x277D36260] objectForKey:@"ICShouldSavePhotosAndVideosToCameraRollKey"];
  v27 = ICDynamicCast();
  v28 = [v27 BOOLValue];

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v29 = v18;
  v30 = [v29 countByEnumeratingWithState:&v152 objects:v162 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v153;
    v34 = *MEMORY[0x277CBE838];
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v153 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v36 = *(*(&v152 + 1) + 8 * j);
        v151 = 0;
        [v36 getResourceValue:&v151 forKey:v34 error:0];
        if (v151)
        {
          v37 = [v151 unsignedIntegerValue];
          if (v32 <= v37)
          {
            v32 = v37;
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v152 objects:v162 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  v38 = self;
  v39 = [(ICNoteEditorBaseViewController *)self note];
  v40 = [v39 canAddAttachment];

  v41 = [(ICNoteEditorBaseViewController *)self note];
  v42 = [v41 attachmentExceedsMaxSizeAllowed:v32];

  v43 = [(ICNoteEditorBaseViewController *)self note];
  v44 = [v43 isPasswordProtected];

  if (!v44 && ((v28 | v42 | v40 ^ 1) & 1) != 0)
  {
    v120 = v40;
    v122 = v11;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v45 = v29;
    v46 = [v45 countByEnumeratingWithState:&v147 objects:v161 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v148;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v148 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v147 + 1) + 8 * k);
          v51 = objc_autoreleasePoolPush();
          v52 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v50];
          UIImageDataWriteToSavedPhotosAlbum();

          objc_autoreleasePoolPop(v51);
        }

        v47 = [v45 countByEnumeratingWithState:&v147 objects:v161 count:16];
      }

      while (v47);
    }

    v11 = v122;
    v38 = self;
    LOBYTE(v40) = v120;
  }

  if (v40)
  {
    v53 = v128;
    if ((v42 & 1) == 0)
    {
      if (ICInternalSettingsDefaultToPaperKitPDFsAndScans())
      {
        v57 = [(ICNoteEditorViewController *)v38 createdGalleryAttachmentUUID];
        v125 = [v57 UUIDString];

        v58 = [(ICNoteEditorBaseViewController *)v38 note];
        v59 = [v58 addPaperDocumentAttachmentWithIdentifier:v125 subtype:*MEMORY[0x277D35BF8]];

        v60 = [v128 docInfos];
        v61 = [v60 count];
        objc_opt_class();
        v62 = [v59 paperBundleModel];
        v63 = ICDynamicCast();
        [v63 setPaperPageCount:v61];

        v64 = [v59 managedObjectContext];
        [v64 ic_save];

        v65 = MEMORY[0x277D35F48];
        v66 = [v128 docInfos];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2;
        v140[3] = &unk_2781AD020;
        v141 = v59;
        v142 = v38;
        v67 = v59;
        [v65 createPaperBundleForAttachment:v67 fromDocCamInfoCollection:v66 imageCache:v13 completion:v140];

        v68 = [(ICNoteEditorViewController *)v38 eventReporter];
        v69 = [v67 identifier];
        [v68 pushDocScanDataWithID:v69 actionType:1 stage:2];

        v70 = [(ICNoteEditorViewController *)v38 eventReporter];
        v71 = [(ICNoteEditorBaseViewController *)v38 note];
        v72 = [v128 docInfos];
        [v70 submitDocScanEventForNote:v71 pageCount:{objc_msgSend(v72, "count")}];

        v73 = v125;
        v74 = [(ICNoteEditorViewController *)v38 eventReporter];
        [v74 submitAttachmentAddEventForAttachment:v67];

        [(ICNoteEditorViewController *)v38 setCreatedGalleryAttachmentUUID:0];
        v75 = v141;
      }

      else
      {
        v123 = v11;
        v76 = objc_alloc(MEMORY[0x277D05D58]);
        v77 = [v128 docInfos];
        v78 = [v76 initWithImageCache:v13 docInfos:v77];

        v126 = v78;
        [MEMORY[0x277D05D50] setCachedItem:v78];
        v79 = [(ICNoteEditorBaseViewController *)v38 note];
        v80 = [(ICNoteEditorViewController *)v38 createdGalleryAttachmentUUID];
        v81 = [v80 UUIDString];
        v67 = [v79 addGalleryAttachmentWithIdentifier:v81];

        objc_opt_class();
        v82 = [v67 attachmentModel];
        v83 = ICCheckedDynamicCast();

        v84 = [v128 docInfos];
        v85 = [v84 firstObject];

        v86 = [MEMORY[0x277D36798] createSubAttachmentFromDocument:v85 imageCache:v13 galleryAttachment:v67];
        v87 = v86;
        if (v86)
        {
          v88 = [v86 identifier];
          [v85 setScanDataDelegateIdentifier:v88];

          [v83 addSubAttachment:v87];
        }

        v118 = v87;
        v119 = v85;
        v121 = v83;
        [v67 saveMergeableDataIfNeeded];
        v89 = [(ICNoteEditorViewController *)v38 attachmentInsertionController];
        v90 = [(ICNoteEditorViewController *)v38 textView];
        v91 = [v90 selectedRange];
        v93 = [v89 addAttachment:v67 atTextLocation:v91 + v92];

        v94 = [(ICNoteEditorBaseViewController *)v38 note];
        v95 = [v94 managedObjectContext];
        [v95 ic_saveWithLogDescription:@"Insert gallery attachment"];

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v96 = [v67 subAttachments];
        v97 = [v96 countByEnumeratingWithState:&v136 objects:v160 count:16];
        if (v97)
        {
          v98 = v97;
          v99 = *v137;
          do
          {
            for (m = 0; m != v98; ++m)
            {
              if (*v137 != v99)
              {
                objc_enumerationMutation(v96);
              }

              v101 = *(*(&v136 + 1) + 8 * m);
              v102 = [MEMORY[0x277D366B0] sharedGenerator];
              [v102 generatePreviewIfNeededForAttachment:v101];
            }

            v98 = [v96 countByEnumeratingWithState:&v136 objects:v160 count:16];
          }

          while (v98);
        }

        v103 = [MEMORY[0x277D366B0] sharedGenerator];
        [v103 generatePreviewIfNeededForAttachment:v67];

        v38 = self;
        v104 = [(ICNoteEditorViewController *)self eventReporter];
        v105 = [v67 identifier];
        [v104 pushDocScanDataWithID:v105 actionType:1 stage:2];

        v106 = [(ICNoteEditorViewController *)self eventReporter];
        v107 = [(ICNoteEditorBaseViewController *)self note];
        v53 = v128;
        v108 = [v128 docInfos];
        [v106 submitDocScanEventForNote:v107 pageCount:{objc_msgSend(v108, "count")}];

        v109 = [(ICNoteEditorViewController *)self eventReporter];
        [v109 submitAttachmentAddEventForAttachment:v67];

        [(ICNoteEditorViewController *)self setCreatedGalleryAttachmentUUID:0];
        v110 = [v128 docInfos];
        v111 = [v110 count];

        if (v111 < 2)
        {
          v73 = v126;
          [v126 doneBuildingCache];
        }

        else
        {
          v112 = [v128 docInfos];
          v113 = [v128 docInfos];
          v114 = [v112 subarrayWithRange:{1, objc_msgSend(v113, "count") - 1}];

          v115 = [MEMORY[0x277CBEB18] arrayWithArray:v114];
          [v128 setDocInfos:v115];

          v116 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3_773;
          block[3] = &unk_2781AC878;
          v132 = v67;
          v133 = v128;
          v134 = v13;
          v73 = v126;
          v135 = v126;
          dispatch_async(v116, block);
        }

        v75 = v121;
        v11 = v123;
      }

      if (!v127)
      {
        [(ICNoteEditorViewController *)v38 cleanupAfterAddImageAttachmentOperation];
        v117 = v11;
        v55 = 0;
        goto LABEL_67;
      }

      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_4;
      v130[3] = &unk_2781ABCF8;
      v130[4] = v38;
      v55 = v130;
LABEL_66:
      v117 = v11;
LABEL_67:
      [v117 dismissViewControllerAnimated:1 completion:v55];
      goto LABEL_68;
    }

    v54 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController documentCameraPresentingViewController:v38 didFinishWithInfoCollection:? imageCache:? warnUser:? closeViewController:?];
    }

    if (v127)
    {
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_749;
      v143[3] = &unk_2781ACFF8;
      v143[4] = v38;
      v144 = v124;
      v55 = v143;
      goto LABEL_66;
    }

    if (v124)
    {
      [(ICNoteEditorViewController *)v38 warnUserAttachmentSizeExceededWithAttachmentCount:1];
    }
  }

  else
  {
    v56 = os_log_create("com.apple.notes", "UI");
    v53 = v128;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController documentCameraPresentingViewController:v38 didFinishWithInfoCollection:? imageCache:? warnUser:? closeViewController:?];
    }

    if (v127)
    {
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke;
      v145[3] = &unk_2781ACFF8;
      v145[4] = v38;
      v146 = v124;
      v55 = v145;
      goto LABEL_66;
    }

    if (v124)
    {
      [(ICNoteEditorViewController *)v38 warnUserAttachmentLimitExceeded];
    }
  }

LABEL_68:
}

uint64_t __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cleanupAfterAddImageAttachmentOperation];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 warnUserAttachmentLimitExceeded];
  }

  return result;
}

uint64_t __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_749(uint64_t a1)
{
  result = [*(a1 + 32) cleanupAfterAddImageAttachmentOperation];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 warnUserAttachmentSizeExceededWithAttachmentCount:1];
  }

  return result;
}

void __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3;
  v7[3] = &unk_2781AC878;
  v8 = v3;
  v9 = *(a1 + 32);
  v10 = v4;
  v11 = *(a1 + 40);
  v5 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

void __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3(uint64_t a1)
{
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3_cold_1(v2, a1, v3);
    }

    [MEMORY[0x277D35E00] deleteAttachment:*(a1 + 40)];
    [*(a1 + 48) ic_saveWithLogDescription:@"Deleted PaperDocumentScan attachment after error"];
  }

  else
  {
    v4 = [*(a1 + 56) attachmentInsertionController];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 56) textView];
    v7 = [v6 selectedRange];
    v9 = [v4 addAttachment:v5 atTextLocation:v7 + v8];

    [*(a1 + 48) ic_saveWithLogDescription:@"Inserted PaperDocumentScan attachment"];
    v10 = [MEMORY[0x277D366B0] sharedGenerator];
    [v10 generatePreviewIfNeededForAttachment:*(a1 + 40)];

    v11 = [MEMORY[0x277D35F30] sharedContext];
    v12 = [v11 workerManagedObjectContext];

    v13 = [MEMORY[0x277D36888] shared];
    v14 = [*(a1 + 40) objectID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_760;
    v16[3] = &unk_2781ABCF8;
    v17 = v12;
    v15 = v12;
    [v13 updateIndexForAttachment:v14 userInitiated:1 managedObjectContext:v15 completionHandler:v16];
  }
}

void __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_760(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2_761;
  v2[3] = &unk_2781ABCF8;
  v3 = v1;
  [v3 performBlock:v2];
}

uint64_t __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3_773(uint64_t a1)
{
  v2 = MEMORY[0x277D36798];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) docInfos];
  v5 = [v2 createAndAddSubAttachmentsToGalleryAttachment:v3 fromDocuments:v4 imageCache:*(a1 + 48) context:0];

  v6 = *(a1 + 56);

  return [v6 doneBuildingCache];
}

- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__ICNoteEditorViewController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke;
  v3[3] = &unk_2781ABCF8;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __92__ICNoteEditorViewController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupAfterAddImageAttachmentOperation];
  v2 = *(a1 + 32);

  return [v2 setCreatedGalleryAttachmentUUID:0];
}

- (id)documentCameraControllerCreateDataCryptorIfNecessary
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 isPasswordProtected];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D35E98]);
    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 identifier];
    v8 = [v5 initWithObjectIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 presentingViewController];
  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:v12 didFinishWithInfoCollection:v11 imageCache:v10 warnUser:v6 closeViewController:1];
}

- (void)documentCameraController:(id)a3 didFinishWithDocInfoCollection:(id)a4 imageCache:(id)a5 warnUser:(BOOL)a6 closeViewController:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a3 presentingViewController];
  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:v14 didFinishWithInfoCollection:v13 imageCache:v12 warnUser:v8 closeViewController:v7];
}

- (void)documentCameraControllerDidRetake:(id)a3 pageCount:(unint64_t)a4
{
  v6 = [(ICNoteEditorViewController *)self eventReporter];
  v7 = [(ICNoteEditorViewController *)self createdGalleryAttachmentUUID];
  v8 = [v7 UUIDString];
  [v6 pushDocScanDataWithID:v8 actionType:2 stage:1];

  v10 = [(ICNoteEditorViewController *)self eventReporter];
  v9 = [(ICNoteEditorBaseViewController *)self note];
  [v10 submitDocScanEventForNote:v9 pageCount:a4];
}

- (BOOL)documentCameraController:(id)a3 canAddImages:(unint64_t)a4
{
  v5 = [MEMORY[0x277D35E70] sharedConfiguration];
  LOBYTE(a4) = [v5 maxSubAttachmentsPerAttachment] >= a4;

  return a4;
}

- (id)scanDataDelegateWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D35E00];
  v4 = MEMORY[0x277D35F30];
  v5 = a3;
  v6 = [v4 sharedContext];
  v7 = [v6 managedObjectContext];
  v8 = [v3 attachmentWithIdentifier:v5 context:v7];

  return v8;
}

- (void)remoteDocumentCameraController:(id)a3 didFinishWithInfoCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 presentingViewController];
  v8 = [v7 imageCache];

  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:v9 didFinishWithInfoCollection:v6 imageCache:v8 warnUser:1 closeViewController:1];
}

- (void)addSystemPaperImageData:(id)a3 updateFirstResponder:(BOOL)a4 forceAddToPaper:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ICNoteEditorBaseViewController *)self note];
  v10 = [v9 isSharedReadOnly];

  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_DEFAULT, "Not adding system paper image data since note is read-only.", &buf, 2u);
    }

    goto LABEL_18;
  }

  if (v5)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = [(ICNoteEditorBaseViewController *)self note];
    v13 = [v12 textStorage];
    v14 = [(ICNoteEditorBaseViewController *)self note];
    v15 = [v14 textStorage];
    v16 = [v15 ic_range];
    v17 = *MEMORY[0x277D74060];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __91__ICNoteEditorViewController_addSystemPaperImageData_updateFirstResponder_forceAddToPaper___block_invoke;
    v28[3] = &unk_2781ABC80;
    v28[4] = &buf;
    [v13 enumerateAttribute:v17 inRange:v16 options:v18 usingBlock:{0, v28}];

    v19 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v20 = [(ICNoteEditorViewController *)self textView];
  if ([v20 isFirstResponder])
  {
  }

  else
  {
    v21 = [(ICNoteEditorViewController *)self paletteResponder];
    if ([v21 isFirstResponder])
    {
    }

    else
    {
      v22 = [(ICNoteEditorViewController *)self isFirstResponder];

      if ((v22 & 1) == 0)
      {
        [(ICNoteEditorViewController *)self becomeFirstResponder];
      }
    }
  }

LABEL_14:
  v23 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v8 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_2151A1000, v23, OS_LOG_TYPE_DEFAULT, "System Paper received %lu images", &buf, 0xCu);
  }

  v25 = [(ICNoteEditorViewController *)self visualAssetImportController];
  [v25 addImageData:v8 typeIdentifier:0 forceAddToPaper:v19 & 1];

  v26 = [(ICNoteEditorBaseViewController *)self note];
  [v26 updateModificationDateAndChangeCountAndSaveImmediately];

  v27 = [MEMORY[0x277D366B0] sharedGenerator];
  [v27 generatePreviewsIfNeeded];

  if (+[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    v11 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [v11 refresh];
LABEL_18:
  }
}

void __91__ICNoteEditorViewController_addSystemPaperImageData_updateFirstResponder_forceAddToPaper___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
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

- (BOOL)addSystemPaperLink:(id)a3 updateFirstResponder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  IsSystemPaperEnabled = ICInternalSettingsIsSystemPaperEnabled();
  if ((IsSystemPaperEnabled & 1) == 0)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Not adding system paper link since SystemPaper isn't enabled.";
      v12 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_20;
  }

  v8 = [(ICNoteEditorBaseViewController *)self note];
  v9 = [v8 isSharedReadOnly];

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0;
      v11 = "Not adding system paper link since note is read-only.";
      v12 = &v32;
LABEL_7:
      _os_log_impl(&dword_2151A1000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v13 = [(ICNoteEditorViewController *)self textView];
    if (![v13 isFirstResponder])
    {
      v14 = [(ICNoteEditorViewController *)self paletteResponder];
      if (![v14 isFirstResponder])
      {
        v31 = [(ICNoteEditorViewController *)self isFirstResponder];

        if ((v31 & 1) == 0)
        {
          [(ICNoteEditorViewController *)self becomeFirstResponder];
        }

        goto LABEL_14;
      }
    }
  }

LABEL_14:
  v15 = [(ICNoteEditorBaseViewController *)self note];
  v16 = [v15 addSynapseLinkAttachmentWithContentItem:v6];

  v17 = [v6 displayTitle];
  [v16 setTitle:v17];

  [v16 updateChangeCountWithReason:@"Add System Paper Link"];
  if ([(ICNoteEditorViewController *)self isEditing])
  {
    v18 = [(ICNoteEditorViewController *)self textView];
    v19 = [v18 selectedRange];
    v21 = v19 + v20;
  }

  else
  {
    v18 = [(ICNoteEditorBaseViewController *)self note];
    v22 = [v18 textStorage];
    v21 = [v22 length];
  }

  v23 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v24 = [v23 addAttachment:v16 atTextLocation:v21];

  v25 = [(ICNoteEditorBaseViewController *)self note];
  [v25 updateModificationDateAndChangeCountAndSaveImmediately];

  v26 = [MEMORY[0x277D366B0] sharedGenerator];
  [v26 generatePreviewsIfNeeded];

  v27 = [MEMORY[0x277D35970] sharedReporter];
  v28 = [(ICNoteEditorBaseViewController *)self note];
  [v27 fireDeepLinkCreationEventWithNote:v28 contentItem:v6];

  if (+[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    v29 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [v29 refresh];
  }

LABEL_20:
  return IsSystemPaperEnabled ^ 1;
}

- (void)createSystemPaperLinkBarIfNecessary
{
  v41[4] = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController createSystemPaperLinkBarIfNecessary];
  }

  v4 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  if (v4)
  {

    goto LABEL_5;
  }

  v6 = [(ICNoteEditorViewController *)self textView];

  if (!v6)
  {
LABEL_5:
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController createSystemPaperLinkBarIfNecessary];
    }

    goto LABEL_15;
  }

  v7 = [ICSystemPaperLinkBarViewController alloc];
  v8 = [(ICNoteEditorViewController *)self textView];
  v9 = [(ICSystemPaperLinkBarViewController *)v7 initWithNoteEditorViewController:self textView:v8];
  [(ICNoteEditorViewController *)self setPaperLinkBarViewController:v9];

  v10 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [(ICNoteEditorViewController *)self addChildViewController:v10];

  v11 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  v5 = [v11 view];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = 0.0;
  [v5 setAlpha:0.0];
  v13 = [(ICNoteEditorViewController *)self view];
  [v13 addSubview:v5];

  v14 = [(ICNoteEditorViewController *)self ic_safeAreaLayoutGuide];
  v15 = [v14 topAnchor];

  if (_UISolariumEnabled() && [MEMORY[0x277D75418] ic_isiPad] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = [(ICNoteEditorViewController *)self app_systemPaperNavigationBar];
    [v16 frame];
    v18 = v17 + 0.0;
    [v16 safeAreaInsets];
    v20 = v19 + v18;
    [v5 safeAreaInsets];
    v22 = v21 + v20;
    +[ICSystemPaperConstants toolbarTopMarginOnPad];
    v12 = v23 + v22;
  }

  v35 = MEMORY[0x277CCAAD0];
  v38 = [v5 leadingAnchor];
  v39 = [(ICNoteEditorViewController *)self textView];
  v37 = [v39 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v41[0] = v36;
  v34 = [v5 trailingAnchor];
  v24 = [(ICNoteEditorViewController *)self textView];
  v25 = [v24 trailingAnchor];
  v26 = [v34 constraintEqualToAnchor:v25];
  v41[1] = v26;
  v27 = [v5 topAnchor];
  [v27 constraintEqualToAnchor:v15 constant:v12];
  v28 = v40 = v15;
  v41[2] = v28;
  v29 = [v5 heightAnchor];
  +[ICSystemPaperConstants linkBarHeight];
  v30 = [v29 constraintEqualToConstant:?];
  v41[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v35 activateConstraints:v31];

  v32 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [v32 didMoveToParentViewController:self];

  v33 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController createSystemPaperLinkBarIfNecessary];
  }

LABEL_15:
}

- (void)teardownSystemPaperLinkBarIfNecessary
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController teardownSystemPaperLinkBarIfNecessary];
  }

  v4 = [(ICNoteEditorViewController *)self paperLinkBarViewController];

  if (v4)
  {
    if ([(ICNoteEditorViewController *)self isPaperLinkBarShowing])
    {
      [(ICNoteEditorViewController *)self setPaperLinkBarShowing:0];
    }

    v5 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    v6 = [v5 view];

    [v6 removeFromSuperview];
    [(ICNoteEditorViewController *)self setPaperLinkBarViewController:0];
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController teardownSystemPaperLinkBarIfNecessary];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController teardownSystemPaperLinkBarIfNecessary];
    }
  }
}

- (void)systemPaperLinkBarVisibilityPreferenceChanged:(id)a3
{
  v4 = +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote];
  v5 = [(ICNoteEditorViewController *)self paperLinkBarViewController];

  if (!v5 || v4)
  {
    v6 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    v7 = v6 == 0 && v4;

    if (v7 == 1)
    {
      [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
      v8 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
      [v8 refresh];
    }
  }

  else
  {

    [(ICNoteEditorViewController *)self teardownSystemPaperLinkBarIfNecessary];
  }
}

- (void)setCanShowLinkBar:(BOOL)a3
{
  if (self->_canShowLinkBar != a3)
  {
    self->_canShowLinkBar = a3;
    if (!a3)
    {
      [(ICNoteEditorViewController *)self teardownSystemPaperLinkBarIfNecessary];
    }
  }
}

- (void)setPaperLinkBarShowing:(BOOL)a3
{
  LODWORD(v3) = a3;
  if ((ICInternalSettingsIsSystemPaperEnabled() & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICNoteEditorViewController setPaperLinkBarShowing:];
    }

    goto LABEL_14;
  }

  if (([MEMORY[0x277D361D0] deviceSupportsSystemPaper] & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICNoteEditorViewController setPaperLinkBarShowing:];
    }

    goto LABEL_14;
  }

  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICNoteEditorViewController setPaperLinkBarShowing:];
    }

    goto LABEL_14;
  }

  v5 = v3 ^ 1;
  if (![(ICNoteEditorViewController *)self canShowLinkBar]&& (v5 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController setPaperLinkBarShowing:];
    }

LABEL_14:

    return;
  }

  if (self->_paperLinkBarShowing != v3)
  {
    if (((+[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote]| v5) & 1) == 0)
    {
      v3 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [ICNoteEditorViewController setPaperLinkBarShowing:];
      }

      LOBYTE(v3) = 0;
    }

    self->_paperLinkBarShowing = v3;
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [(ICNoteEditorBaseViewController *)self note];
    [v7 createUserTitleViewIfNecessaryForNote:v8];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__ICNoteEditorViewController_setPaperLinkBarShowing___block_invoke;
    aBlock[3] = &unk_2781ACFF8;
    v18 = v3;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = [(ICNoteEditorViewController *)self view];
    [v10 setNeedsUpdateConstraints];

    if ([(ICNoteEditorViewController *)self linksBarNeedsAnimationWhileEditorIsVisible]|| [(ICNoteEditorViewController *)self needsToPerformInitialPaperAnimations])
    {
      v11 = MEMORY[0x277D75D18];
      +[ICSystemPaperConstants linkBarAnimationDuration];
      v13 = v12;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__ICNoteEditorViewController_setPaperLinkBarShowing___block_invoke_2;
      v15[3] = &unk_2781AC7D8;
      v16 = v9;
      [v11 animateWithDuration:v15 animations:v13];
    }

    else
    {
      v9[2](v9);
    }

    [(ICNoteEditorViewController *)self setNeedsToPerformInitialPaperAnimations:0];
    [(ICNoteEditorViewController *)self setLinksBarNeedsAnimationWhileEditorIsVisible:1];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"ICNoteEditorViewControllerSystemPaperLinkBarVisibilityChangedNotification" object:self];
  }
}

void __53__ICNoteEditorViewController_setPaperLinkBarShowing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) textView];
  v4 = [v3 userTitleView];
  v5 = v4;
  if (v2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if (v2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v4 setAlpha:v6];

  v8 = [*(a1 + 32) textView];
  v9 = [v8 dateView];
  [v9 setAlpha:v6];

  v10 = [*(a1 + 32) paperLinkBarViewController];
  v11 = [v10 view];
  [v11 setAlpha:v7];

  v12 = [*(a1 + 32) textView];
  [v12 contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [*(a1 + 32) textViewTopInsetThatWeWant];
  v20 = v19;
  v21 = [*(a1 + 32) textView];
  [v21 setContentInset:{v20, v14, v16, v18}];

  v22 = [*(a1 + 32) view];
  [v22 layoutIfNeeded];
}

- (void)cancelFromSystemPaperCard:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke;
  aBlock[3] = &unk_2781ABCF8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(ICNoteEditorViewController *)self textStorage];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(ICNoteEditorViewController *)self presentedViewController];
    if (v8 && (v9 = v8, -[ICNoteEditorViewController presentedViewController](self, "presentedViewController"), v10 = objc_claimAutoreleasedReturnValue(), -[ICNoteEditorViewController noteFormattingController](self, "noteFormattingController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v9, v12))
    {
      v13 = [(ICNoteEditorViewController *)self noteFormattingController];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_3;
      v30[3] = &unk_2781ABEB8;
      v30[4] = self;
      v31 = v4;
      [v13 dismissViewControllerAnimated:1 completion:v30];
    }

    else
    {
      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v15 = MEMORY[0x277D750F8];
      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 localizedStringForKey:@"Delete Quick Note" value:&stru_282757698 table:0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_4;
      v28[3] = &unk_2781AD048;
      v29 = v5;
      v18 = [v15 actionWithTitle:v17 style:2 handler:v28];
      [v14 addAction:v18];

      v19 = MEMORY[0x277D750F8];
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [v20 localizedStringForKey:@"Save Quick Note" value:&stru_282757698 table:0];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_5;
      v27[3] = &unk_2781AD070;
      v27[4] = self;
      v22 = [v19 actionWithTitle:v21 style:0 handler:v27];
      [v14 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      v24 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [v24 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
      v26 = [v23 actionWithTitle:v25 style:1 handler:0];
      [v14 addAction:v26];

      [v14 setModalPresentationStyle:7];
      [(ICNoteEditorViewController *)self presentViewController:v14 animated:1 completion:0];
    }
  }

  else
  {
    v5[2](v5);
  }
}

void __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setQuickNoteiPhoneDidSaveOrCancel:1];
  v2 = [*(a1 + 32) note];
  v3 = [*(a1 + 32) eventReporter];
  [v3 submitNoteDeleteEventForModernNote:v2];

  v4 = [MEMORY[0x277D35F30] sharedContext];
  v5 = [v4 managedObjectContext];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_2;
  v8[3] = &unk_2781AC5B0;
  v9 = v5;
  v10 = v2;
  v11 = *(a1 + 32);
  v6 = v2;
  v7 = v5;
  [v7 performBlockAndWait:v8];
}

void __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_2(id *a1)
{
  [a1[4] processPendingChanges];
  [a1[5] markForDeletion];
  [a1[4] ic_save];
  v2 = [a1[6] delegate];
  [v2 noteEditorRequestsDismissal:a1[6] cancelled:1];
}

uint64_t __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) styleSelectorInputViewShowing])
  {
    [*(a1 + 32) showStyleSelector:0 animated:0];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 cancelFromSystemPaperCard:v3];
}

- (void)saveFromSystemPaperCard:(id)a3
{
  [(ICNoteEditorViewController *)self saveNote];
  [(ICNoteEditorViewController *)self setQuickNoteiPhoneDidSaveOrCancel:1];
  [(ICNoteEditorViewController *)self ensurePaperPreviewsExistIfNecessary];
  v4 = [(ICNoteEditorViewController *)self delegate];
  [v4 noteEditorRequestsDismissal:self cancelled:0];
}

- (void)ensurePaperPreviewsExistIfNecessary
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 visibleAttachments];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([v9 attachmentType] == 13)
        {
          v11 = MEMORY[0x277D35E40];
          v12 = [v9 identifier];
          [v11 generatePreviewsForAttachment:v9 paperIdentifier:v12];
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v13 = dispatch_semaphore_create(0);
  v14 = [MEMORY[0x277CCAC38] processInfo];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke;
  v22[3] = &unk_2781AD098;
  v15 = v13;
  v23 = v15;
  [v14 performExpiringActivityWithReason:@"Generating thumbnails for System Paper card" usingBlock:v22];

  v16 = [MEMORY[0x277D368F0] sharedService];
  v17 = [(ICNoteEditorBaseViewController *)self note];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke_2;
  v19[3] = &unk_2781ACFF8;
  v21 = 1;
  v20 = v15;
  v18 = v15;
  [v16 updateIfNeededForNote:v17 completion:v19];
}

intptr_t __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke(intptr_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch_semaphore_wait(*(result + 32), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

intptr_t __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277D36290] sharedWidget];
    [v2 reloadTimelinesWithReason:@"System Paper card saved"];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)showActivityStreamToolbarForObject:(id)a3 selection:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v63[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  if (v10)
  {
    v11 = v10;
    v12 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    v13 = [v12 superview];
    v14 = [(ICNoteEditorViewController *)self navigationController];
    v15 = [v14 view];

    if (v13 != v15)
    {
      v16 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [v16 removeFromSuperview];

      [(ICNoteEditorViewController *)self setActivityStreamToolbar:0];
    }
  }

  v17 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  if (v17)
  {
  }

  else
  {
    v18 = [(ICNoteEditorViewController *)self navigationController];

    if (v18)
    {
      v60 = v8;
      v61 = v9;
      v58 = [(ICNoteEditorViewController *)self viewControllerManager];
      v19 = [[ICActivityStreamDockView alloc] initWithCoordinator:v58 isDisplayedInCard:0];
      [(ICNoteEditorViewController *)self setActivityStreamToolbar:v19];

      v20 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

      v21 = [(ICNoteEditorViewController *)self navigationController];
      v22 = [v21 view];
      v23 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [v22 addSubview:v23];

      v24 = [(ICNoteEditorViewController *)self navigationController];
      v25 = [v24 view];
      [v25 layoutIfNeeded];

      v26 = 0.0;
      v59 = v5;
      if (v5)
      {
        v27 = [(ICNoteEditorViewController *)self navigationController];
        v28 = [v27 view];
        [v28 safeAreaInsets];
        v30 = v29;
        v31 = [(ICNoteEditorViewController *)self activityStreamToolbar];
        [v31 frame];
        v26 = v30 + v32;
      }

      v33 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      v34 = [v33 bottomAnchor];
      v35 = [(ICNoteEditorViewController *)self navigationController];
      v36 = [v35 view];
      v37 = [v36 bottomAnchor];
      v38 = [v34 constraintEqualToAnchor:v37 constant:v26];
      [(ICNoteEditorViewController *)self setActivityStreamToolbarBottomConstraint:v38];

      v52 = MEMORY[0x277CCAAD0];
      v57 = [(ICNoteEditorViewController *)self activityStreamToolbarBottomConstraint];
      v63[0] = v57;
      v56 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      v54 = [v56 leadingAnchor];
      v55 = [(ICNoteEditorViewController *)self navigationController];
      v53 = [v55 view];
      v39 = [v53 leadingAnchor];
      v40 = [v54 constraintEqualToAnchor:v39];
      v63[1] = v40;
      v41 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      v42 = [v41 trailingAnchor];
      v43 = [(ICNoteEditorViewController *)self navigationController];
      v44 = [v43 view];
      v45 = [v44 trailingAnchor];
      v46 = [v42 constraintEqualToAnchor:v45];
      v63[2] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
      [v52 activateConstraints:v47];

      if (v59)
      {
        v48 = [(ICNoteEditorViewController *)self navigationController];
        v49 = [v48 view];
        [v49 layoutIfNeeded];

        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __84__ICNoteEditorViewController_showActivityStreamToolbarForObject_selection_animated___block_invoke;
        v62[3] = &unk_2781ABCF8;
        v62[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v62 animations:0.25];
      }

      v8 = v60;
      v9 = v61;
    }
  }

  v50 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  [v50 setSelection:v8];

  v51 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  [v51 setObject:v9];
}

void __84__ICNoteEditorViewController_showActivityStreamToolbarForObject_selection_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityStreamToolbarBottomConstraint];
  [v2 setConstant:0.0];

  v4 = [*(a1 + 32) navigationController];
  v3 = [v4 view];
  [v3 layoutIfNeeded];
}

- (void)hideActivityStreamToolbarAnimated:(BOOL)a3
{
  if (a3 && ([(ICNoteEditorViewController *)self activityStreamToolbar], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    v6 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__ICNoteEditorViewController_hideActivityStreamToolbarAnimated___block_invoke;
    v14[3] = &unk_2781ABCF8;
    v14[4] = self;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __64__ICNoteEditorViewController_hideActivityStreamToolbarAnimated___block_invoke_2;
    v12 = &unk_2781AD098;
    v13 = v5;
    v7 = v5;
    [v6 animateWithDuration:v14 animations:&v9 completion:0.25];
  }

  else
  {
    v8 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    [v8 removeFromSuperview];
  }

  [(ICNoteEditorViewController *)self setActivityStreamToolbar:0, v9, v10, v11, v12];
  [(ICNoteEditorViewController *)self setActivityStreamToolbarBottomConstraint:0];
}

void __64__ICNoteEditorViewController_hideActivityStreamToolbarAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityStreamToolbar];
  [v2 frame];
  v4 = v3;
  v5 = [*(a1 + 32) activityStreamToolbarBottomConstraint];
  [v5 setConstant:v4];

  v7 = [*(a1 + 32) navigationController];
  v6 = [v7 view];
  [v6 layoutIfNeeded];
}

- (UIViewController)rootViewController
{
  v2 = [(ICNoteEditorViewController *)self navigationController];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  return v5;
}

- (void)noteOrFolderChangedCallback
{
  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone])
  {
    if (![(ICNoteEditorViewController *)self quickNoteiPhoneDidSaveOrCancel])
    {
      v3 = [(ICNoteEditorBaseViewController *)self note];
      v4 = [v3 isDeletedOrInTrash];

      if (v4)
      {
        v5 = [(ICNoteEditorViewController *)self delegate];
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          v7 = [(ICNoteEditorViewController *)self delegate];
          [v7 noteEditorRequestsDismissal:self cancelled:1];
        }
      }
    }
  }

  if ([(ICNoteEditorViewController *)self isDrawingStroke])
  {
    v8 = [(ICNoteEditorViewController *)self noteOrFolderChangedCallbackSelectorDelayer];

    if (!v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_noteOrFolderChangedCallback delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.25];
      [(ICNoteEditorViewController *)self setNoteOrFolderChangedCallbackSelectorDelayer:v9];
    }

    v18 = [(ICNoteEditorViewController *)self noteOrFolderChangedCallbackSelectorDelayer];
    [v18 requestFire];
  }

  else
  {
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
    [(ICNoteEditorViewController *)self updateActionMenu];
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [(ICNoteEditorBaseViewController *)self note];
    [v10 updateCompatibilityBannerForNote:v11 parentViewController:self updateTextViewContentInsets:1];

    [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
    [(ICNoteEditorViewController *)self updateBarButtons];
    if (!-[ICNoteEditorViewController userWantsToSeeDateLabel](self, "userWantsToSeeDateLabel") || (-[ICNoteEditorBaseViewController note](self, "note"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isSharedReadOnly], v12, v13))
    {
      [(ICNoteEditorViewController *)self resetDateView];
    }

    v14 = [(ICNoteEditorViewController *)self textView];
    v15 = [v14 userTitleView];
    [v15 updateContentToCurrentNote];

    [(ICNoteEditorViewController *)self updatePencilKitSelectionViewEnabled];
    v18 = [(ICNoteEditorViewController *)self textView];
    if ([v18 ic_isFirstResponder])
    {
      v16 = [(ICNoteEditorBaseViewController *)self note];
      v17 = [v16 isEditable];

      if (v17)
      {
        return;
      }

      v18 = [(ICNoteEditorViewController *)self textView];
      [v18 resignFirstResponder];
    }
  }
}

- (void)resetBarButtonsAnimated:(BOOL)a3 checkIfVisible:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  [v7 reset];

  if (![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:v5 checkIfVisible:v4];
  }
}

- (void)resetBarButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  [v5 reset];

  if (![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:v3];
  }
}

- (void)_beginLiveResize:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v9 = ICDynamicCast();

  v6 = [(ICNoteEditorViewController *)self ic_windowScene];

  v7 = v9;
  if (v6 == v9)
  {
    [(ICNoteEditorViewController *)self setIsInLiveWindowResize:1];
    v8 = [(ICNoteEditorViewController *)self textView];
    [v8 setDisableContentOffsetChanges:1];

    v7 = v9;
  }
}

- (void)_endLiveResize:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v9 = ICDynamicCast();

  v6 = [(ICNoteEditorViewController *)self ic_windowScene];

  v7 = v9;
  if (v6 == v9)
  {
    [(ICNoteEditorViewController *)self setIsInLiveWindowResize:0];
    v8 = [(ICNoteEditorViewController *)self textView];
    [v8 setDisableContentOffsetChanges:0];

    [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
    v7 = v9;
  }
}

- (void)updateBarButtonsAnimated:(BOOL)a3 checkIfVisible:(BOOL)a4
{
  v6 = a3;
  if ((!a4 || [(ICNoteEditorViewController *)self _appearState]!= 3 && [(ICNoteEditorViewController *)self _appearState]) && ![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self collaborationButtons_updateCollaborationStateIfNeeded];
    }

    v8 = [(ICNoteEditorBaseViewController *)self note];
    if ([v8 isEditable])
    {
      v9 = [(ICNoteEditorBaseViewController *)self note];
      v4 = [v9 folder];
      if ([v4 supportsEditingNotes])
      {
        v10 = [(ICNoteEditorViewController *)self invitation];
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v12 = [(ICNoteEditorBaseViewController *)self note];
          if ([v12 isPasswordProtectedAndLocked])
          {
            v11 = 0;
          }

          else
          {
            v5 = [(ICNoteEditorBaseViewController *)self note];
            if ([v5 isUnsupported])
            {
              v11 = 0;
            }

            else
            {
              v13 = [(ICNoteEditorViewController *)self unsupportedNoteView];
              v11 = v13 == 0;
            }
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = [(ICNoteEditorViewController *)self textStorage];
    v15 = [(ICNoteEditorViewController *)self textView];
    v16 = [v15 selectedRange];
    if ([v14 ic_containsBlockAttachmentsInRange:{v16, v17}])
    {
      LODWORD(v168) = 0;
    }

    else
    {
      v18 = [(ICNoteEditorViewController *)self auxiliaryResponder];
      LODWORD(v168) = (v18 == 0) & v11;
    }

    v19 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    if ([v19 canToggleTodo])
    {
      v166 = 1;
      goto LABEL_38;
    }

    v20 = [(ICNoteEditorViewController *)self textView];
    v21 = [v20 isFirstResponder];
    if ((v21 & 1) != 0 || ([(ICNoteEditorViewController *)self auxiliaryResponder], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = [(ICNoteEditorViewController *)self textView];
      if ([v22 ic_canChangeStyle])
      {
        v23 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        v166 = v23 == 0;

        if (v21)
        {
          goto LABEL_37;
        }
      }

      else
      {

        v166 = 0;
        if (v21)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v166 = 1;
    }

LABEL_37:
LABEL_38:

    v24 = [(ICNoteEditorViewController *)self textView];
    v25 = [v24 ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

    if (v25)
    {
      LODWORD(v167) = 0;
    }

    else
    {
      v26 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
      if ([v26 canStyleText])
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v27 = [(ICNoteEditorViewController *)self textView];
        v28 = [v27 ic_canChangeStyle];

        LODWORD(v167) = v28 ^ 1;
      }
    }

    v29 = [(ICNoteEditorBaseViewController *)self note];
    if (v29)
    {
      v165 = 0;
    }

    else
    {
      v30 = [(ICNoteEditorViewController *)self invitation];
      v165 = v30 == 0;
    }

    if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
    {
      v31 = [MEMORY[0x277D75678] sharedInstance];
      HIDWORD(v162) = [v31 isMinimized] ^ 1;
    }

    else
    {
      HIDWORD(v162) = 1;
    }

    v32 = [(ICNoteEditorViewController *)self traitCollection];
    v33 = [v32 ic_hasCompactWidth];

    v34 = [MEMORY[0x277D75418] ic_isVision];
    v35 = v34 ^ 1u;
    if ((v34 & 1) == 0 && (v33 & 1) == 0)
    {
      v35 = [MEMORY[0x277D75418] ic_isiPhone];
    }

    v36 = [(ICNoteEditorViewController *)self ic_behavior];
    if (_UISolariumEnabled() && [MEMORY[0x277D75418] ic_isiPad])
    {
      LODWORD(v162) = ICInternalSettingsIsDoneButtonHidingDisabled();
    }

    else
    {
      LODWORD(v162) = 1;
    }

    v37 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
    v38 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v38 setAccessibilityTextSizeEnabled:v37];

    v39 = [MEMORY[0x277D75418] ic_isVision];
    v169 = v6;
    LODWORD(v170) = v11;
    if (v39)
    {
      v38 = [(ICNoteEditorBaseViewController *)self note];
      if (v38)
      {
        v40 = 0;
        v41 = 1;
      }

      else
      {
        v5 = [(ICNoteEditorViewController *)self viewControllerManager];
        v11 = [v5 selectedContainerItemID];
        v41 = v11 != 0;
        v40 = 1;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v42 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v42 setCanShowPillOrnament:v41];

    if (v40)
    {
    }

    if (v39)
    {
    }

    v43 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v43 setCompact:v35];

    v44 = [(ICNoteEditorBaseViewController *)self note];
    v45 = [v44 isDeletedOrInTrash];
    v46 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v46 setDeleted:v45];

    v47 = [MEMORY[0x277D75418] ic_isVision];
    if (v47)
    {
      v46 = [(ICNoteEditorViewController *)self viewControllerManager];
      v48 = [v46 canTilePrimaryContent] ^ 1;
    }

    else
    {
      v48 = 0;
    }

    v49 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v49 setHidesBackButton:v48];

    if (v47)
    {
    }

    v50 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v50 setHidesDefaultCenterItems:v36 == 1];

    v51 = [(ICNoteEditorViewController *)self traitCollection];
    v52 = [v51 userInterfaceIdiom];
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v48 = [(ICNoteEditorViewController *)self ic_windowScene];
      v5 = [v48 effectiveGeometry];
      v53 = ([v5 interfaceOrientation] - 3) < 2;
    }

    v54 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v54 setLandscape:v53];

    if (!v52)
    {
    }

    v55 = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
    v56 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v56 setInSecureScreen:v55];

    v57 = [(ICNoteEditorViewController *)self viewControllerManager];
    v58 = [v57 proposedMainSplitViewControllerDisplayMode] == 4;
    v59 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v59 setInTripleColumnSplitView:v58];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v60 = 0;
    }

    else
    {
      v60 = ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone]^ 1) & v163;
    }

    v61 = v36 == 1;
    v62 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v62 setShowsDoneWhileEditing:v60];

    v63 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v63 setShowsCalculatorModeButton:v61];

    if (_UISolariumEnabled())
    {
      v64 = [MEMORY[0x277D75418] ic_isVision] ^ 1;
    }

    else
    {
      v64 = 0;
    }

    v65 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v65 setShowsAddNoteButtonOnLeadingEdge:v64];

    v66 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v68 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v68 setTableSelected:isKindOfClass & 1];

    v69 = [MEMORY[0x277D75418] ic_isVision];
    if (v69)
    {
      v68 = [(ICNoteEditorViewController *)self viewControllerManager];
      v70 = [v68 noteContainerViewMode] == 1;
    }

    else
    {
      v70 = 0;
    }

    v71 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v71 setUsesCustomBackButton:v70];

    if (v69)
    {
    }

    v72 = [MEMORY[0x277D75418] ic_isLargeiPad];
    v73 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v73 setUsesOnlyTrailingInputAssistantItems:v72 & v164];

    v74 = [MEMORY[0x277D75418] ic_isVision];
    v75 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v75 setUsesPillOrnament:v74];

    v76 = [MEMORY[0x277D75418] ic_isVision];
    v77 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v77 setUsesSidecarMenu:v76];

    v78 = [MEMORY[0x277D75418] ic_isVision];
    v79 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v79 setUsesStyleMenu:v78];

    v80 = [(ICNoteEditorViewController *)self usesContextualFormatBar];
    v81 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v81 setCanShowContextualFormatBar:v80];

    v82 = ([(ICNoteEditorViewController *)self isEditing]& 1) != 0 || [(ICNoteEditorViewController *)self didEndEditingForAddingImageAttachment];
    v83 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v83 setEditing:v82];

    v84 = [(ICNoteEditorViewController *)self isWritingToolsShowing];
    v85 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v85 setWritingToolsVisible:v84];

    if ([(ICNoteEditorViewController *)self isInkPickerShowing])
    {
      v86 = 3;
    }

    else if ([(ICNoteEditorViewController *)self isDrawingStrokeWithPencil])
    {
      v86 = 1;
    }

    else if ([(ICNoteEditorViewController *)self didDrawWithPencilWithoutPalette])
    {
      v86 = 2;
    }

    else
    {
      if (([MEMORY[0x277D75418] ic_isVision] & 1) != 0 || -[ICNoteEditorViewController usesContextualFormatBar](self, "usesContextualFormatBar"))
      {
        v87 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
        v88 = [v87 inlineSketchEditingState];

        if (v88 == 4)
        {
LABEL_101:
          v90 = [(ICNoteEditorViewController *)self firstResponder];
          objc_opt_class();
          v91 = objc_opt_isKindOfClass();

          v92 = v91 & ~([(ICNoteEditorViewController *)self isSplitViewExpandingOrCollapsing]| v168);
          v93 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v93 setEditingTable:v92 & 1];

          v94 = [MEMORY[0x277D361D0] isWritingToolsAvailable];
          v95 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v95 setCanShowWritingTools:v94];

          if (v94)
          {
            v70 = [(ICNoteEditorBaseViewController *)self note];
            v96 = [v70 isPasswordProtectedAndLocked] ^ 1;
          }

          else
          {
            v96 = 0;
          }

          v97 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v97 setCanUseWritingTools:v96];

          if (v94)
          {
          }

          v98 = v91 ^ 1;
          v99 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v99 setCanAddChecklist:(v166 & v170 | v165) & (v91 ^ 1) & 1];

          v100 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v100 setCanAddMedia:(v170 | v165) & 1];

          v101 = [(ICNoteEditorBaseViewController *)self note];
          v102 = [v101 isEmpty];
          if (v102)
          {
            v103 = 0;
          }

          else
          {
            v70 = [(ICNoteEditorViewController *)self viewControllerManager];
            v103 = [v70 canAddNewNoteToSelectedContainers];
          }

          v104 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v104 setCanAddNote:v103];

          if ((v102 & 1) == 0)
          {
          }

          v105 = (v170 ^ 1);

          if (v168)
          {
            v106 = 1;
          }

          else
          {
            v101 = [(ICNoteEditorViewController *)self auxiliaryResponder];
            v106 = v101 != 0;
          }

          v107 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v107 setCanAddTable:v106];

          if ((v168 & 1) == 0)
          {
          }

          v108 = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
          v109 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v109 setCanAddLink:!v108];

          if ((v167 | v105))
          {
            v110 = 0;
          }

          else
          {
            v110 = [(ICNoteEditorViewController *)self isEditing]& v98;
          }

          v111 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v111 setCanChangeStyle:v110];

          LODWORD(v111) = [MEMORY[0x277D75418] ic_isVision];
          v112 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v112 setCanCustomizeCenterItems:v111 ^ 1];

          v113 = [(ICNoteEditorViewController *)self passwordEntryViewController];
          if (!v113 || (-[ICNoteEditorViewController passwordEntryViewController](self, "passwordEntryViewController"), v170 = objc_claimAutoreleasedReturnValue(), [v170 isAnimatingOut]))
          {
            v119 = [(ICNoteEditorViewController *)self invitationViewController];
            if (v119)
            {
              v105 = v119;
              v115 = 0;
              v116 = 0;
              v117 = 0;
              v118 = 0;
              v114 = 1;
            }

            else
            {
              v120 = [(ICNoteEditorViewController *)self unsupportedNoteView];
              if (v120)
              {
                v106 = v120;
                v105 = 0;
                v116 = 0;
                v117 = 0;
                v118 = 0;
                v114 = 1;
                v115 = 1;
              }

              else
              {
                v121 = [(ICNoteEditorBaseViewController *)self note];
                if (v121)
                {
                  v168 = v121;
                  v167 = [(ICNoteEditorBaseViewController *)self note];
                  v118 = [v167 isEditable];
                  v105 = 0;
                  v106 = 0;
                  v114 = 1;
                  v115 = 1;
                  v116 = 1;
                  v117 = 1;
                }

                else
                {
                  v105 = 0;
                  v106 = 0;
                  v168 = 0;
                  v117 = 0;
                  v114 = 1;
                  v115 = 1;
                  v116 = 1;
                  v118 = 1;
                }
              }
            }
          }

          else
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = 0;
          }

          v122 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [v122 setCanInlineSketch:v118];

          if (v117)
          {
          }

          if (v116)
          {

            if (!v115)
            {
              goto LABEL_133;
            }
          }

          else if (!v115)
          {
LABEL_133:
            if (v114)
            {
              goto LABEL_134;
            }

            goto LABEL_138;
          }

          if (v114)
          {
LABEL_134:

            if (!v113)
            {
LABEL_140:

              v123 = [(ICNoteEditorBaseViewController *)self note];
              v124 = [v123 isEmpty];
              v125 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [v125 setCanSaveQuickNote:v124 ^ 1u];

              v126 = [(ICNoteEditorViewController *)self invitation];
              if (v126)
              {
                v127 = 0;
              }

              else
              {
                v125 = [(ICNoteEditorBaseViewController *)self note];
                v127 = [v125 isSharable];
              }

              v128 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [v128 setCanShare:v127];

              if (!v126)
              {
              }

              v129 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
              v130 = v129;
              if (v129)
              {
                v171 = v129;
              }

              else
              {
                v131 = [(ICNoteEditorViewController *)self textView];
                v171 = [v131 undoManager];
              }

              v132 = [(ICNoteEditorBaseViewController *)self note];
              if ([v132 isEditable])
              {
                v133 = [v171 canRedo];
              }

              else
              {
                v133 = 0;
              }

              v134 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [v134 setCanRedo:v133];

              v135 = [(ICNoteEditorBaseViewController *)self note];
              if ([v135 isEditable])
              {
                v136 = [v171 canUndo];
              }

              else
              {
                v136 = 0;
              }

              v137 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [v137 setCanUndo:v136];

              v138 = [(ICNoteEditorViewController *)self viewControllerManager];
              v139 = [v138 isAuxiliary];

              if (v139)
              {
                if (_UISolariumEnabled())
                {
                  v140 = 2;
                }

                else if ([MEMORY[0x277D75418] ic_isVision])
                {
                  v140 = 2;
                }

                else
                {
                  v140 = 1;
                }
              }

              else
              {
                v140 = 0;
              }

              v141 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [v141 setAuxiliaryWindowType:v140];

              v142 = [(ICNoteEditorBaseViewController *)self note];
              if ([v142 isPasswordProtected])
              {
                v143 = [(ICNoteEditorBaseViewController *)self note];
                v144 = [v143 isUnsupported];

                if (v144)
                {
                  v145 = 0;
LABEL_169:
                  v146 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [v146 setLockState:v145];

                  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone])
                  {
                    v147 = 2;
                  }

                  else
                  {
                    v147 = [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad];
                  }

                  v148 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [v148 setQuickNoteType:v147];

                  if ([MEMORY[0x277D75418] ic_isiPad])
                  {
                    v149 = [(ICNoteEditorViewController *)self viewControllerManager];
                    v150 = [v149 proposedMainSplitViewControllerDisplayMode];

                    v151 = [(ICNoteEditorViewController *)self icSplitViewController];
                    v152 = [v151 traitCollection];
                    v153 = [v152 horizontalSizeClass];

                    v155 = v150 != 2 || v153 == 1;
                  }

                  else
                  {
                    v155 = 1;
                  }

                  v156 = [(ICNoteEditorViewController *)self hasMadeEdits];
                  v157 = v145 != 1 && v156;
                  v158 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [v158 setCanShowUndoRedo:v157 & v155];

                  v159 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [v159 updateAnimated:v169];

                  v160 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  v161 = [(ICNoteEditorViewController *)self textView];
                  [v160 updateFormatBarButtonsForChangeInTextView:v161];

                  return;
                }

                v142 = [(ICNoteEditorBaseViewController *)self note];
                if ([v142 isAuthenticated])
                {
                  v145 = 2;
                }

                else
                {
                  v145 = 1;
                }
              }

              else
              {
                v145 = 0;
              }

              goto LABEL_169;
            }

LABEL_139:

            goto LABEL_140;
          }

LABEL_138:
          if (!v113)
          {
            goto LABEL_140;
          }

          goto LABEL_139;
        }
      }

      v86 = 0;
    }

    v89 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v89 setInlineSketchEditingState:v86];

    goto LABEL_101;
  }
}

- (void)updateFormatToolbarLayoutWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ICNoteEditorViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (!v7)
  {
    v8 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [v8 updateLayoutWithSize:{width, height}];
  }
}

- (void)undoAction:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];

  if (v4)
  {
    v8 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
    [v8 undo];
  }

  else
  {
    v8 = [(ICNoteEditorViewController *)self textView];
    v5 = [v8 undoManager];
    if ([v5 canUndo])
    {
      v6 = [(ICNoteEditorViewController *)self isDrawingStroke];

      if (v6)
      {
        return;
      }

      v8 = [(ICNoteEditorViewController *)self textView];
      v7 = [v8 undoManager];
      [v7 undo];
    }

    else
    {
    }
  }
}

- (void)redoAction:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];

  if (v4)
  {
    v8 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
    [v8 redo];
  }

  else
  {
    v8 = [(ICNoteEditorViewController *)self textView];
    v5 = [v8 undoManager];
    if ([v5 canRedo])
    {
      v6 = [(ICNoteEditorViewController *)self isDrawingStroke];

      if (v6)
      {
        return;
      }

      v8 = [(ICNoteEditorViewController *)self textView];
      v7 = [v8 undoManager];
      [v7 redo];
    }

    else
    {
    }
  }
}

- (void)updateLastViewedMetadataIfNessessary
{
  if ([(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    v3 = [(ICNoteEditorBaseViewController *)self note];
    v4 = [v3 updateLastViewedTimestampWithCurrentTimestamp];

    if (v4)
    {
      v5 = [(ICNoteEditorBaseViewController *)self note];
      [v5 saveAfterDelay];
    }
  }

  v6 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v6 recordID];

  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ICNoteEditorViewController_updateLastViewedMetadataIfNessessary__block_invoke;
    block[3] = &unk_2781ABCF8;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

- (void)localeChanged:(id)a3
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v4 = [(ICNoteEditorBaseViewController *)self note];
    v5 = [v4 textStorage];

    v6 = *MEMORY[0x277D35DA8];
    v7 = [v5 length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ICNoteEditorViewController_localeChanged___block_invoke;
    v9[3] = &unk_2781ACC80;
    v10 = v5;
    v8 = v5;
    [v8 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v9}];
  }
}

void __44__ICNoteEditorViewController_localeChanged___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([a2 style] == 102)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 32) layoutManagers];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 invalidateLayoutForCharacterRange:a3 actualCharacterRange:{a4, 0}];
          [v12 ensureLayoutForCharacterRange:{a3, a4}];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)currentSelectionContainsListOrFixedWidth
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 ic_selectedRanges];

  obj = v4;
  v22 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v24 = *v28;
    v5 = MEMORY[0x277D35DA8];
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [(ICNoteEditorBaseViewController *)self note];
        v9 = [v8 textStorage];
        v10 = [v9 string];
        v11 = [v7 rangeValue];
        v13 = [v10 paragraphRangeForRange:{v11, v12}];
        v15 = v14;

        if (v13 < v13 + v15)
        {
          v16 = v13;
          while (1)
          {
            v25 = 0;
            v26 = 0;
            v17 = [(ICNoteEditorBaseViewController *)self note];
            v18 = [v17 textStorage];
            v19 = [v18 attribute:*v5 atIndex:v16 longestEffectiveRange:&v25 inRange:{v13, v15}];

            if (v19)
            {
              if ([v19 isList])
              {
                break;
              }
            }

            v16 = v26 + v25;

            if (v16 >= v13 + v15)
            {
              goto LABEL_11;
            }
          }

          v20 = 1;
          goto LABEL_16;
        }

LABEL_11:
        ;
      }

      v20 = 0;
      v22 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_16:

  return v20;
}

- (void)addKVOObserversForNote:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 ic_addObserver:self forKeyPath:@"noteHasChanges" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"modificationDate" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"lastActivitySummaryViewedDate" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"attachmentViewType" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"paperStyleType" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"isEmpty" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"serverShareData" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"isSharedViaICloud" context:&compoundliteral_3033];
  [v4 ic_addObserver:self forKeyPath:@"prefersLightBackground" context:&compoundliteral_3031];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = +[ICNoteEditorUserTitleView noteKeyPathsAffectingUserTitleView];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 ic_addObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) context:&compoundliteral_3035];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeKVOObserversForNote:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 ic_removeObserver:self forKeyPath:@"noteHasChanges" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"modificationDate" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"lastActivitySummaryViewedDate" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"attachmentViewType" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"paperStyleType" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"isEmpty" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"serverShareData" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"isSharedViaICloud" context:&compoundliteral_3033];
  [v4 ic_removeObserver:self forKeyPath:@"prefersLightBackground" context:&compoundliteral_3031];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = +[ICNoteEditorUserTitleView noteKeyPathsAffectingUserTitleView];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 ic_removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) context:&compoundliteral_3035];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setNote:(id)a3 overrideScrollState:(id)a4 startEditing:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  if (v8)
  {
    [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:v8];
  }

  [(ICNoteEditorViewController *)self setNote:v10 delayedForLaunch:0 startEditing:v5 successHandler:0];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v9 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];

    if (v9)
    {
      [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
    }
  }
}

- (void)setNote:(id)a3 delayedForLaunch:(BOOL)a4 startEditing:(BOOL)a5 successHandler:(id)a6
{
  v130 = a5;
  v7 = a4;
  v150[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v135 = a6;
  [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:1];
  v10 = [(ICNoteEditorViewController *)self textViewController];
  [v10 setIgnoresTaps:0];

  v11 = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];

  if (v11)
  {
    v12 = [(ICNoteEditorViewController *)self view];
    v13 = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];
    [v12 removeGestureRecognizer:v13];

    [(ICNoteEditorViewController *)self setUnsupportedNoteTapGestureRecognizer:0];
  }

  if ([v9 isUnsupported] && objc_msgSend(v9, "isDeletedOrInTrash"))
  {
    v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_showRecoverNoteAlert];
    [(ICNoteEditorViewController *)self setUnsupportedNoteTapGestureRecognizer:v14];

    v15 = [(ICNoteEditorViewController *)self view];
    v16 = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];
    [v15 addGestureRecognizer:v16];
  }

  if (v9 && [MEMORY[0x277D75418] ic_isVision])
  {
    v17 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([v17 isMainSplitViewDisplayModeSecondaryOnly])
    {
      v18 = 1;
    }

    else
    {
      v19 = [(ICNoteEditorViewController *)self viewControllerManager];
      v18 = [v19 isAuxiliary];
    }

    v20 = [(ICNoteEditorViewController *)self viewControllerManager];
    v21 = [v20 noteContainerViewMode] == 0;

    v22 = [(ICNoteEditorViewController *)self viewControllerManager];
    v23 = ([v22 noteContainerViewMode] == 1) | v18;

    [(ICNoteEditorViewController *)self updateContentViewBezelsStandalone:v18 needsAdditionalBottomMargin:v21 needsAdditionalLeadingMargin:v23 & 1 force:0];
  }

  if ([v9 isSharedReadOnly])
  {
    v24 = 1;
  }

  else
  {
    v24 = [v9 isSharedAndEmpty];
  }

  [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:v24];
  v136 = [(ICNoteEditorBaseViewController *)self note];
  if (v136 != v9)
  {
    [(ICNoteEditorViewController *)self setHasMadeEdits:0];
    v25 = [(ICNoteEditorViewController *)self shouldTrackNoteViewEventAnalyticsFromSettingNote];
    if (v136)
    {
      if (v25)
      {
        v26 = [(ICNoteEditorViewController *)self viewIfLoaded];
        v27 = [v26 window];

        if (v27)
        {
          [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:v136];
        }
      }
    }

    [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];
    [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
    v28 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController setNote:v9 delayedForLaunch:? startEditing:? successHandler:?];
    }

    v29 = [MEMORY[0x277D35E50] sharedState];
    [v29 extendDeauthenticationTimer];

    v133 = [(ICNoteEditorViewController *)self presentedViewController];
    objc_opt_class();
    v30 = ICDynamicCast();
    v131 = v30;
    if (v30)
    {
      v31 = [v30 shouldDismissWhenShowingNote];
    }

    else
    {
      v31 = 1;
    }

    if (NSClassFromString(&cfstr_Icallownotific.isa))
    {
      v31 &= objc_opt_isKindOfClass() ^ 1;
    }

    if ((v31 & 1) != 0 && v133)
    {
      [(ICNoteEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(ICNoteEditorViewController *)self setPaperTextAttachmentManager:0];
    [(ICNoteEditorViewController *)self setMagicGenerativePlaygroundUndoManager:0];
    [(ICNoteEditorViewController *)self setAuthorHighlightsController:0];
    [(ICNoteEditorViewController *)self setAuthorHighlightsUpdater:0];
    [(ICNoteEditorViewController *)self setMentionsController:0];
    [(ICNoteEditorViewController *)self setHashtagController:0];
    [(ICNoteEditorViewController *)self setCalculateRecognitionController:0];
    [(ICNoteEditorViewController *)self setCollaborationButtonsController:0];
    [(ICNoteEditorViewController *)self setCollaborationBarButtonItem:0];
    v134 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    if (v134)
    {
      if ([v134 isShowing])
      {
        [v134 hideAccelerator];
      }

      [v134 setLinkDelegate:0];
    }

    [(ICNoteEditorViewController *)self setLinkAcceleratorController:0];
    v34 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v34 setLinkDelegate:0];

    if (v136)
    {
      [(ICNoteEditorViewController *)self setInkPickerState:2];
      [(ICNoteEditorViewController *)self showInkPicker:0 animated:0];
      [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
      v35 = [MEMORY[0x277D36860] sharedController];
      [v35 sendPendingNotifications];

      [v136 markActivitySummaryViewed];
      if ([v136 isPasswordProtected])
      {
        v36 = [v136 account];
        v37 = [v36 accountData];
        v38 = [v37 cryptoPassphraseVerifier];
        v39 = v38 == 0;

        if (!v39)
        {
          v40 = [MEMORY[0x277D36830] sharedMigrator];
          [v40 migrateNoteToV1NeoIfNeeded:v136 completionHandler:&__block_literal_global_834];
        }
      }

      [(ICNoteEditorViewController *)self presentRecordingStoppedAlertForNoteIfNeeded:v136];
    }

    [(ICNoteEditorViewController *)self showStyleSelector:0 animated:0];
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    [(ICNoteEditorViewController *)self tearDownAudioPlayers];
    [(ICNoteEditorViewController *)self saveCurrentScrollState];
    +[ICMovieController stopIfPlaying];
    if (v7)
    {
      v41 = [v9 textStorage];
      v42 = [v41 length] > 0x10000;

      if (v42)
      {
        v43 = v9;
        v44 = [v135 copy];
        v45 = dispatch_time(0, 0);
        v46 = MEMORY[0x277D85CD0];
        v47 = MEMORY[0x277D85CD0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__ICNoteEditorViewController_setNote_delayedForLaunch_startEditing_successHandler___block_invoke_836;
        block[3] = &unk_2781ABE10;
        block[4] = self;
        v48 = v43;
        v146 = v48;
        v49 = v44;
        v147 = v49;
        dispatch_after(v45, v46, block);

        v9 = 0;
      }
    }

    v132 = [(ICNoteEditorViewController *)self isEditing];
    if (v132)
    {
      [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
      [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:?];
    }

    v50 = MEMORY[0x277D35CC0];
    v51 = MEMORY[0x277D364D0];
    v52 = MEMORY[0x277D36590];
    if (v136)
    {
      [(ICNoteEditorViewController *)self removeKVOObserversForNote:?];
      v53 = [MEMORY[0x277CCAB98] defaultCenter];
      [v53 removeObserver:self name:*v50 object:v136];
      [v53 removeObserver:self name:*MEMORY[0x277D35CF8] object:v136];
      [v53 removeObserver:self name:*MEMORY[0x277D35C60] object:v136];
      v54 = [v136 calculateDocumentController];
      [v53 removeObserver:self name:*v51 object:v54];

      [v53 removeObserver:self name:*v52 object:v136];
      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        objc_opt_class();
        v55 = [(ICNoteEditorViewController *)self textView];
        v56 = [v55 layoutManager];
        v57 = ICCheckedDynamicCast();

        [v57 clearAllSupplementalViews];
      }

      v58 = [(ICNoteEditorViewController *)self textController];
      [v58 resetTrackedToDoParagraphs];

      v59 = [(ICNoteEditorViewController *)self calculateRecognitionController];
      [v59 discardPreviewedResult];

      [(ICNoteEditorViewController *)self setNoteAndFolderChangeController:0];
      [(ICNoteEditorViewController *)self setInlineAttachmentChangeController:0];
      v60 = +[ICSystemPaperDocumentController sharedInstance];
      [v60 removePresenter:self];

      if ([(ICNoteEditorBaseViewController *)self viewAppearanceState]<= 1)
      {
        goto LABEL_56;
      }

      [(ICNoteEditorViewController *)self noteWillDisappear:v136];
      if (!v9)
      {
LABEL_61:
        [(ICNoteEditorViewController *)self resetTextViewUndoManager];
        v62 = v9 != 0;
LABEL_62:
        v64 = [(ICNoteEditorViewController *)self previousNote];
        v65 = v9 == v64;

        if (!v65)
        {
          v66 = [(ICNoteEditorViewController *)self previousNote];
          [v66 setHandwritingRecognitionEnabled:0];
        }

        [(ICNoteEditorViewController *)self setPreviousNote:v136];
        v144.receiver = self;
        v144.super_class = ICNoteEditorViewController;
        [(ICNoteEditorBaseViewController *)&v144 setNote:v9];
        [(ICNoteEditorViewController *)self setLastSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0];
        if ([v9 needsRefresh])
        {
          [(ICNoteEditorViewController *)self fetchAll];
        }

        v67 = [MEMORY[0x277D35F30] sharedContext];
        [v67 setCurrentNote:v9];

        if (v62)
        {
          [(ICNoteEditorViewController *)self addKVOObserversForNote:v9];
          v68 = [MEMORY[0x277CCAB98] defaultCenter];
          [v68 addObserver:self selector:sel_attachmentsExceeded_ name:*v50 object:v9];
          [v68 addObserver:self selector:sel_mergeRelatedOperationsDidEnd_ name:*MEMORY[0x277D35CF8] object:v9];
          [v68 addObserver:self selector:sel_inlineAttachmentDeleted_ name:*MEMORY[0x277D35C60] object:v9];
          v69 = [v9 calculateDocumentController];
          [v68 addObserver:self selector:sel_calculateDocumentControllerDidUpdateHighlights_ name:*v51 object:v69];

          [v68 addObserver:self selector:sel_noteDidChangeCalculatePreviewBehaviorNotification_ name:*v52 object:v9];
          [(ICNoteEditorViewController *)self setInvitation:0];
          v70 = objc_alloc(MEMORY[0x277D36840]);
          v71 = MEMORY[0x277CBEB98];
          v72 = [v9 managedObjectContext];
          v73 = [v71 setWithObject:v72];
          v74 = [v70 initWithManagedObjectContexts:v73 delegate:self];
          [(ICNoteEditorViewController *)self setNoteAndFolderChangeController:v74];

          v75 = [(ICNoteEditorViewController *)self noteAndFolderChangeController];
          [v75 setObjectTypes:9];

          v76 = objc_alloc(MEMORY[0x277D36840]);
          v77 = MEMORY[0x277CBEB98];
          v78 = [v9 managedObjectContext];
          v79 = [v77 setWithObject:v78];
          v80 = [v76 initWithManagedObjectContexts:v79 delegate:self];
          [(ICNoteEditorViewController *)self setInlineAttachmentChangeController:v80];

          v81 = +[ICSystemPaperDocumentController sharedInstance];
          [v81 addPresenter:self];
        }

        if ([(ICNoteEditorBaseViewController *)self viewAppearanceState]>= 2)
        {
          v82 = [(ICNoteEditorViewController *)self previousNote];

          if (v82)
          {
            v83 = [(ICNoteEditorViewController *)self previousNote];
            [(ICNoteEditorBaseViewController *)self noteDidDisappear:v83];
          }

          if (v62 && [(ICNoteEditorBaseViewController *)self viewAppearanceState]== 3)
          {
            [(ICNoteEditorBaseViewController *)self noteDidAppear:v9];
          }
        }

        [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
        [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
        [(ICNoteEditorViewController *)self updateUnsupportedNoteView];
        v84 = [MEMORY[0x277CCAB98] defaultCenter];
        v149[0] = *MEMORY[0x277D35CF0];
        v85 = [(ICNoteEditorViewController *)self previousNote];
        v86 = v85;
        if (!v85)
        {
          v86 = [MEMORY[0x277CBEB68] null];
        }

        v150[0] = v86;
        v149[1] = *MEMORY[0x277D35CE8];
        v87 = v9;
        if (!v62)
        {
          v87 = [MEMORY[0x277CBEB68] null];
        }

        v150[1] = v87;
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
        [v84 postNotificationName:*MEMORY[0x277D35CE0] object:self userInfo:v88];

        if (!v62)
        {
        }

        if (!v85)
        {
        }

        v89 = [(ICNoteEditorViewController *)self previousNote];
        v90 = [v89 isPasswordProtectedAndLocked];

        if ((v90 & 1) == 0)
        {
          v91 = [(ICNoteEditorViewController *)self previousNote];
          v92 = [v91 calculateDocumentController];
          [v92 resetHighlights];
        }

        v93 = [(ICNoteEditorViewController *)self textView];
        [v93 setEditable:0];

        v94 = [(ICNoteEditorViewController *)self noteUserActivity];
        [v94 setDelegate:0];

        v95 = [(ICNoteEditorViewController *)self noteUserActivity];
        [v95 invalidate];

        [(ICNoteEditorViewController *)self setNoteUserActivity:0];
        [(ICNoteEditorViewController *)self setNoteUserActivityState:0];
        if (v62)
        {
          v96 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
          [v96 requestFire];
        }

        if ([(ICNoteEditorViewController *)self ic_isViewVisible])
        {
          [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
          if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
          {
            [(ICNoteEditorViewController *)self resetTextViewContentOffset];
            v97 = [(ICNoteEditorViewController *)self textViewController];
            [v97 applyInitialScrollState];
          }
        }

        else
        {
          [(ICNoteEditorViewController *)self setShouldResetTextViewContentOffsetWhenAppearing:1];
        }

        if (ICInternalSettingsIsTextKit2Enabled())
        {
          [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
        }

        [(ICNoteEditorViewController *)self setEditing:v132 & v62 | v130];
        [(ICNoteEditorViewController *)self rememberNoteContentForEditingIntent];
        v98 = [(ICNoteEditorBaseViewController *)self note];
        [v98 mergeUnappliedEncryptedRecordRecursivelyInBackground];

        [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:0];
        [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
        [(ICNoteEditorViewController *)self setNeedsInitialBarConfiguration:0];
        if ([(ICNoteEditorViewController *)self _appearState]== 2)
        {
          [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
        }

        [(ICNoteEditorViewController *)self updateActionMenu];
        if (v135)
        {
          v135[2]();
        }

        [(ICNoteEditorViewController *)self updateDataOwnerForCopyAndPaste];
        v99 = [(ICNoteEditorViewController *)self textView];
        v100 = [v99 dateView];
        [v100 setNote:v9];

        v101 = [(ICNoteEditorViewController *)self textView];
        v102 = [v101 userTitleView];
        [v102 setNote:v9];

        v103 = [(ICNoteEditorViewController *)self textView];
        [v103 icaxClearCaches];

        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
        objc_initWeak(&location, self);
        v104 = MEMORY[0x277D85CD0];
        v141[0] = MEMORY[0x277D85DD0];
        v141[1] = 3221225472;
        v141[2] = __83__ICNoteEditorViewController_setNote_delayedForLaunch_startEditing_successHandler___block_invoke_2;
        v141[3] = &unk_2781AC0B8;
        objc_copyWeak(&v142, &location);
        v105 = MEMORY[0x277D85CD0];
        dispatch_async(MEMORY[0x277D85CD0], v141);

        v106 = [(ICNoteEditorViewController *)self inkPaletteController];

        if (v106)
        {
          [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
        }

        [(ICNoteEditorViewController *)self updateDrawingAttachmentsIfNeeded];
        [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
        [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
        [(ICNoteEditorViewController *)self updateAuthorHighlightsIfNeeded];
        v107 = [v9 modificationDate];
        [(ICNoteEditorViewController *)self setNoteLastModificationDate:v107];

        if ((v62 & [(ICNoteEditorViewController *)self shouldTrackNoteViewEventAnalyticsFromSettingNote]) == 1)
        {
          v108 = [(ICNoteEditorViewController *)self viewIfLoaded];
          v109 = [v108 window];
          v110 = v109 == 0;

          if (!v110)
          {
            v111 = [(ICNoteEditorViewController *)self eventReporter];
            [v111 startNoteViewEventDurationTrackingForModernNote:v9 reportCoreAnalytics:1];
          }
        }

        v112 = [(ICNoteEditorViewController *)self previousNote];

        if (v112)
        {
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v113 = [(ICNoteEditorViewController *)self previousNote];
          v114 = [v113 attachments];

          v115 = [v114 countByEnumeratingWithState:&v137 objects:v148 count:16];
          if (v115)
          {
            v116 = *v138;
            do
            {
              for (i = 0; i != v115; ++i)
              {
                if (*v138 != v116)
                {
                  objc_enumerationMutation(v114);
                }

                v118 = *(*(&v137 + 1) + 8 * i);
                if (([v118 hasChanges] & 1) == 0)
                {
                  v119 = [v118 managedObjectContext];
                  [v119 ic_refreshObject:v118 mergeChanges:0];
                }
              }

              v115 = [v114 countByEnumeratingWithState:&v137 objects:v148 count:16];
            }

            while (v115);
          }

          v120 = [(ICNoteEditorViewController *)self previousNote];
          v121 = [v120 hasChanges];

          if ((v121 & 1) == 0)
          {
            v122 = [(ICNoteEditorViewController *)self previousNote];
            v123 = [v122 managedObjectContext];
            v124 = [(ICNoteEditorViewController *)self previousNote];
            [v123 ic_refreshObject:v124 mergeChanges:0];
          }
        }

        if ([v9 isPasswordProtected])
        {
          v125 = [MEMORY[0x277D35F50] sharedController];
          v126 = [v9 account];
          [v125 reaskPasswordForAccountIfNecessary:v126];
        }

        v127 = [v9 isEditable];
        v128 = [(ICNoteEditorViewController *)self textView];
        [v128 setDisplayingEditableContent:v127];

        v129 = [(ICNoteEditorViewController *)self bluetoothKeyboardHintViewController];
        [v129 hide];

        if (objc_opt_respondsToSelector())
        {
          [(ICNoteEditorViewController *)self updateViewAnnotation];
        }

        objc_destroyWeak(&v142);
        objc_destroyWeak(&location);

        goto LABEL_118;
      }
    }

    else
    {
      v61 = [(ICNoteEditorBaseViewController *)self viewAppearanceState];
      if (!v9 || v61 < 2)
      {
        goto LABEL_61;
      }
    }

    [(ICNoteEditorViewController *)self noteWillAppear:v9];
LABEL_56:
    [(ICNoteEditorViewController *)self resetTextViewUndoManager];
    v62 = v9 != 0;
    if (v9)
    {
      v63 = v136 != 0;
    }

    else
    {
      v63 = 0;
    }

    if (v63)
    {
      [(ICNoteEditorViewController *)self donateEditingIntentIfNecessary];
      v62 = 1;
    }

    goto LABEL_62;
  }

  if ([(ICNoteEditorViewController *)self shouldAllowAttributionSidebar])
  {
    v32 = [(ICNoteEditorViewController *)self attributionSidebarView];
    [v32 reload];
  }

  [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
  v33 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  [v33 setIsAnimatingOut:0];

  [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
LABEL_118:
}

void __83__ICNoteEditorViewController_setNote_delayedForLaunch_startEditing_successHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 shortLoggingDescription];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2151A1000, v3, OS_LOG_TYPE_INFO, "Migrated previous note to v1 Neo {migratedNote: %@}", &v5, 0xCu);
    }
  }
}

void __83__ICNoteEditorViewController_setNote_delayedForLaunch_startEditing_successHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained note];
  [v1 setHandwritingRecognitionEnabled:1];

  v2 = [WeakRetained note];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained note];
    v5 = [WeakRetained previousNote];

    if (v4 != v5)
    {
      v6 = [WeakRetained previousNote];
      [v6 setHandwritingRecognitionEnabled:0];
    }
  }

  v7 = [WeakRetained handwritingDebugPresenter];
  [v7 refresh];
}

- (ICTableAttachmentViewController)currentTableAttachmentViewController
{
  objc_opt_class();
  v3 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v4 = ICDynamicCast();

  v5 = [(ICNoteEditorViewController *)self getTableControllerFor:v4];

  return v5;
}

- (void)presentRecordingStoppedAlertForNoteIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D366C8] currentAttachment];
  v6 = [v5 note];

  if (v6 == v4)
  {
    v7 = MEMORY[0x277D366C8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke;
    v8[3] = &unk_2781AD020;
    v8[4] = self;
    v9 = v4;
    [v7 cancelCurrentAudioRecordingSessionWithCompletionHandler:v8];
  }
}

void __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "AudioTranscription");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke_cold_2();
  }

  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"Recording Stopped" value:&stru_282757698 table:0];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"Leaving the note stopped your audio recording. Your recording is saved in the note." value:&stru_282757698 table:0];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 localizedStringForKey:@"Return to Note" value:&stru_282757698 table:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke_864;
  v20[3] = &unk_2781AD0E0;
  objc_copyWeak(&v22, &location);
  v21 = *(a1 + 40);
  v15 = [v12 actionWithTitle:v14 style:0 handler:v20];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] mainBundle];
  v18 = [v17 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
  v19 = [v16 actionWithTitle:v18 style:0 handler:&__block_literal_global_866];
  [v11 addAction:v19];

  [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
}

void __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke_864(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained viewControllerManager];
  v3 = [*(a1 + 32) identifier];
  [v2 showNoteWithIdentifier:v3];
}

- (void)reloadCurrentNote
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  v8 = [(ICNoteEditorBaseViewController *)self note];
  [(ICNoteEditorViewController *)self setNote:0];
  [(ICNoteEditorViewController *)self setNote:v8];
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setSelectedRange:{v4, v6}];
}

- (void)noteDidDeauthenticateAfterMerge:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = [v6 object];
    v5 = [(ICNoteEditorBaseViewController *)self note];

    if (v4 == v5)
    {
      [(ICNoteEditorViewController *)self noteDecryptedStatusDidChange:v6];
    }
  }
}

- (void)noteDecryptedStatusDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35C40]];
  v7 = ICCheckedDynamicCast();

  v8 = [MEMORY[0x277D35E50] sharedState];
  if ([v8 isBlockingDeauthentication])
  {
  }

  else
  {
    if (v7)
    {
      v9 = [(ICNoteEditorBaseViewController *)self note];
      v10 = [v9 objectID];
      v11 = [v7 isEqual:v10];

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    dispatchMainAfterDelay();
  }

LABEL_8:
}

void __59__ICNoteEditorViewController_noteDecryptedStatusDidChange___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) note];
  v3 = [v2 isPasswordProtected];

  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [*(a1 + 32) note];
    v5 = [v4 attachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v25 + 1) + 8 * v10++) checkPreviewImagesIntegrity];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v11 = [*(a1 + 32) note];
    [v11 mergeUnappliedEncryptedRecordRecursivelyInBackground];

    [*(a1 + 32) showOrHidePasswordEntryViewControllerIfNeeded];
    v12 = [*(a1 + 32) note];

    if (v12)
    {
      v13 = [*(a1 + 32) note];
      v14 = [v13 isAuthenticated];

      if (v14)
      {
        dispatchMainAfterDelay();
        [*(a1 + 32) updateDrawingAttachmentsIfNeeded];
      }

      else
      {
        v15 = [*(a1 + 32) note];
        v16 = [v15 isPasswordProtected];

        if (v16)
        {
          v17 = [*(a1 + 32) viewControllerManager];
          v18 = [v17 currentAttachmentPresenter];
          [v18 dismissAnimated:0 completion:0];
        }

        v19 = [*(a1 + 32) calculateScrubberController];

        if (v19)
        {
          v20 = [*(a1 + 32) calculateScrubberController];
          [v20 hideScrubber];
        }

        v21 = [MEMORY[0x277CCAB98] defaultCenter];
        [v21 postNotificationName:*MEMORY[0x277D81C08] object:0];

        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v23 = [v22 localizedStringForKey:@"Notes Locked" value:&stru_282757698 table:0];

        ICAccessibilityPostHighPriorityAnnouncementNotification();
      }
    }

    v24 = [*(a1 + 32) textView];
    [v24 icaxClearCaches];
  }
}

void __59__ICNoteEditorViewController_noteDecryptedStatusDidChange___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 localizedStringForKey:@"Notes Unlocked" value:&stru_282757698 table:0];

  ICAccessibilityPostHighPriorityAnnouncementNotification();
}

- (id)dynamicBarColor
{
  v3 = [(ICNoteEditorViewController *)self shouldForceLightContent];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 backgroundColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  }

  v8 = v7;

  v9 = MEMORY[0x277D75348];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__ICNoteEditorViewController_dynamicBarColor__block_invoke;
  v13[3] = &unk_2781AD148;
  v15 = v3;
  v14 = v8;
  v10 = v8;
  v11 = [v9 colorWithDynamicProvider:v13];

  return v11;
}

id __45__ICNoteEditorViewController_dynamicBarColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = [v3 traitCollectionByModifyingTraits:&__block_literal_global_879];

    v4 = v5;
  }

  v6 = [*(a1 + 32) resolvedColorWithTraitCollection:v4];
  v7 = [v4 ic_appearanceInfo];
  [v7 navigationBarAlpha];
  v8 = [v6 colorWithAlphaComponent:?];

  return v8;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(ICNoteEditorViewController *)self shouldForceLightContent])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (_UISolariumEnabled() && ([MEMORY[0x277D75418] ic_isVision] & 1) == 0)
  {
    v10 = [(ICNoteEditorViewController *)self traitCollection];
    if ([v10 ic_hasCompactSize])
    {
      v11 = [MEMORY[0x277D75D28] ic_isPerformingNotesActivity];

      if (v11)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:v6 ^ 1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __72__ICNoteEditorViewController_presentViewController_animated_completion___block_invoke;
        v15[3] = &unk_2781ABCF8;
        v15[4] = self;
        [MEMORY[0x277CD9FF0] setCompletionBlock:v15];
        v12 = [(ICNoteEditorViewController *)self navigationController];
        [v12 setToolbarHidden:1];

        v13 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
        [v13 setContentVisible:0];

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          [(ICNoteEditorViewController *)self setEditing:0 animated:v6];
        }

        else if ([(ICNoteEditorViewController *)self isInkPickerShowing])
        {
          [(ICNoteEditorViewController *)self hideInkPicker];
        }

        [MEMORY[0x277CD9FF0] commit];
      }
    }

    else
    {
    }
  }

  v14.receiver = self;
  v14.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v14 presentViewController:v8 animated:v6 completion:v9];
}

void __72__ICNoteEditorViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 setToolbarHidden:0];

  v3 = [*(a1 + 32) textViewInputAccessoryView];
  [v3 setContentVisible:1];
}

- (void)hideAndDismissPresentedViewController
{
  v3 = [(ICNoteEditorViewController *)self presentedViewController];
  v4 = [v3 view];
  [v4 setHidden:1];

  v5 = objc_opt_class();
  v6 = [(ICNoteEditorViewController *)self presentedViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICNoteEditorViewController_hideAndDismissPresentedViewController__block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [v5 dismissChildPresentedViewControllersInPostOrder:v6 animated:0 completion:v7];
}

+ (void)dismissChildPresentedViewControllersInPostOrder:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [v11 presentedViewController];

  if (v9)
  {
    v10 = [v11 presentedViewController];
    [a1 dismissChildPresentedViewControllersInPostOrder:v10 animated:0 completion:0];
  }

  [v11 dismissViewControllerAnimated:v6 completion:v8];
}

- (void)resetTextViewContentOffset
{
  v3 = [(ICNoteEditorViewController *)self textView];
  [v3 contentOffset];
  v5 = v4;

  [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
  v7 = -v6;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromTop];
    v7 = v7 - v8;
  }

  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 resetContentOffset:{v5, v7}];
}

- (int64_t)currentWritingDirection
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 ic_currentWritingDirection];

  return v3;
}

- (BOOL)ignoresTaps
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    return self->_ignoresTaps;
  }

  v4 = [(ICNoteEditorViewController *)self textViewController];
  v5 = [v4 ignoresTaps];

  return v5;
}

- (void)setIgnoresTaps:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    self->_ignoresTaps = v3;
    if (v3)
    {
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v5 = [(ICNoteEditorViewController *)self textView];
      v6 = [v5 subviews];

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            if ([v11 isUserInteractionEnabled])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v12 = [(ICNoteEditorViewController *)self enabledSubviews];
                [v12 addObject:v11];

                [v11 setUserInteractionEnabled:0];
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v13 = [(ICNoteEditorViewController *)self enabledSubviews];
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v20 + 1) + 8 * j) setUserInteractionEnabled:1];
          }

          v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v15);
      }

      v6 = [(ICNoteEditorViewController *)self enabledSubviews];
      [v6 removeAllObjects];
    }

    v18 = [(ICNoteEditorViewController *)self textView];
    [v18 setSelectable:v3 ^ 1];
  }

  else
  {
    v19 = [(ICNoteEditorViewController *)self textViewController];
    [v19 setIgnoresTaps:v3];
  }
}

- (ICAttributionSidebarView)attributionSidebarView
{
  v2 = [(ICNoteEditorViewController *)self textViewController];
  v3 = [v2 attributionSidebarView];

  return v3;
}

void __55__ICNoteEditorViewController_updateUnsupportedNoteView__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D35F30] sharedContext];
    v4 = objc_loadWeakRetained((a1 + 32));
    v6[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 undoablyTrashOrDeleteNotes:v5];
  }
}

- (void)setInvitation:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self invitation];

  if (v5 != v4)
  {
    v6 = [v4 shareURL];

    if (!v6)
    {
      v7 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "The invitation was likely dismissed/deleted causing the shareURL to be empty. This is an invalid state, and the invitation will be removed from the editor.", buf, 2u);
      }

      v4 = 0;
    }

    objc_storeStrong(&self->_invitation, v4);
    if (v4)
    {
      [(ICNoteEditorViewController *)self setNote:0];
      v8 = [(ICNoteEditorViewController *)self textView];
      [v8 setHidden:1];

      v9 = [(ICNoteEditorViewController *)self invitationViewController];

      if (!v9)
      {
        v10 = objc_alloc_init(ICInvitationViewController);
        [(ICNoteEditorViewController *)self setInvitationViewController:v10];

        v11 = [(ICNoteEditorViewController *)self invitationViewController];
        v12 = [v11 view];
        [v12 setAutoresizingMask:18];

        v13 = [(ICNoteEditorViewController *)self view];
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [(ICNoteEditorViewController *)self invitationViewController];
        v23 = [v22 view];
        [v23 setFrame:{v15, v17, v19, v21}];

        v24 = [(ICNoteEditorViewController *)self invitationViewController];
        [(ICNoteEditorViewController *)self addChildViewController:v24];

        v25 = [(ICNoteEditorViewController *)self backgroundView];
        v26 = [(ICNoteEditorViewController *)self invitationViewController];
        v27 = [v26 view];
        [v25 addSubviewAboveAllViews:v27];
      }

      objc_initWeak(buf, self);
      v28 = [(ICNoteEditorViewController *)self invitationViewController];
      [v28 setInvitation:v4];

      v29 = [v4 highlight];
      v30 = [(ICNoteEditorViewController *)self invitationViewController];
      [v30 setHighlight:v29];

      v31 = [(ICNoteEditorViewController *)self invitationViewController];
      [v31 setShowsActivityIndicator:0];

      v36 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v38, buf);
      v37 = v4;
      v32 = [(ICNoteEditorViewController *)self invitationViewController:v36];
      [v32 setDidTapViewButton:&v36];

      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
    }

    else
    {
      v33 = [(ICNoteEditorViewController *)self invitationViewController];
      v34 = [v33 view];
      [v34 removeFromSuperview];

      v35 = [(ICNoteEditorViewController *)self invitationViewController];
      [(ICNoteEditorViewController *)self removeChildViewController:v35];

      [(ICNoteEditorViewController *)self setInvitationViewController:0];
      [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
    }

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
    [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
    [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
    [(ICNoteEditorViewController *)self updateActionMenu];
  }
}

void __44__ICNoteEditorViewController_setInvitation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) shareURL];
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 invitationViewController];
    [v7 collaborationButtons_acceptInviteWithShareURL:v4 invitationViewController:v6];
  }
}

- (BOOL)isPasswordEntryShowing
{
  v2 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  v3 = v2 != 0;

  return v3;
}

void __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 == 2)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained eventReporter];
    v5 = [v8 note];
    [v4 submitPasswordSuccessEventForModernNote:v5];

    v6 = [v8 note];
    LODWORD(v5) = [v6 isAuthenticated];

    WeakRetained = v8;
    if (v5)
    {
      v7 = [v8 passwordEntryViewController];

      WeakRetained = v8;
      if (v7)
      {
        [v8 showOrHidePasswordEntryViewControllerIfNeeded];
        WeakRetained = v8;
      }
    }
  }
}

void __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_3(id *a1, int a2)
{
  if (a2)
  {
    v3 = [a1[4] passwordEntryViewController];
    v4 = a1[5];

    if (v3 == v4)
    {
      v5 = a1[6];
      v6 = [a1[4] note];
      if (v5 == v6)
      {
        v9 = v6;
        v7 = [a1[6] isAuthenticated];

        if (v7)
        {
          [a1[4] resetDateView];
          v8 = [a1[5] view];
          [v8 removeFromSuperview];

          [a1[4] removeChildViewController:a1[5]];
          [a1[4] setPasswordEntryViewController:0];
          [a1[4] showOrHideActivityStreamToolbarIfNeeded];
          if ([a1[4] shouldBeginEditingAfterNoteUnlock])
          {
            [a1[4] setShouldBeginEditingAfterNoteUnlock:0];
            [a1[4] startEditing];
          }

          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_4;
          v10[3] = &unk_2781ABCF8;
          v10[4] = a1[4];
          [MEMORY[0x277D75D18] animateWithDuration:v10 animations:0.25];
        }
      }

      else
      {
      }
    }
  }
}

void __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) textView];
  [v1 setAlpha:1.0];
}

- (void)showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    return;
  }

  if (v3)
  {
    v5 = [(ICNoteEditorBaseViewController *)self note];
    if ([v5 isPasswordProtected])
    {
      v6 = [(ICNoteEditorBaseViewController *)self note];
      v7 = [v6 isAuthenticated];

      if (v7)
      {
        if (![(ICNoteEditorViewController *)self styleSelectorInputViewShowing])
        {
          v8 = [(ICNoteEditorViewController *)self visualAssetImportController];
          v9 = [v8 isShowing];

          if ((v9 & 1) == 0)
          {
            v10 = [(ICNoteEditorViewController *)self viewControllerManager];
            v11 = [v10 currentAttachmentPresenter];
            [v11 dismissAnimated:0 completion:0];

            [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
          }
        }

        v12 = [(ICNoteEditorViewController *)self lockIconCoverViewController];

        if (v12)
        {
          v13 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
          v14 = [v13 view];
          [v14 removeFromSuperview];

          [(ICNoteEditorViewController *)self setLockIconCoverViewController:0];
        }

        v15 = [objc_alloc(MEMORY[0x277D36898]) initWithNibName:0 bundle:0 note:0 intent:0];
        [(ICNoteEditorViewController *)self setLockIconCoverViewController:v15];

        v16 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        [v16 setMode:1];

        v17 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        v18 = [v17 view];
        [v18 setAutoresizingMask:18];

        v19 = [(ICNoteEditorViewController *)self view];
        [v19 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        v29 = [v28 view];
        [v29 setFrame:{v21, v23, v25, v27}];

        v30 = [(ICNoteEditorViewController *)self view];
        v31 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        v32 = [v31 view];
        [v30 addSubview:v32];

        if (ICInternalSettingsIsTextKit2Enabled())
        {
          v33 = [(ICNoteEditorViewController *)self view];
          v34 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
          v35 = [v34 view];
          [v33 bringSubviewToFront:v35];
        }

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          v36 = [(ICNoteEditorViewController *)self textView];
          v37 = [v36 hidePrediction];

          if ((v37 & 1) == 0)
          {
            v38 = [(ICNoteEditorViewController *)self textView];
            [v38 setHidePrediction:1];

            v47 = [MEMORY[0x277D75658] activeKeyboard];
            [v47 textInputTraitsDidChange];
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  v39 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
  v40 = v39;
  if (v39)
  {
    v41 = MEMORY[0x277D75D18];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke;
    v50[3] = &unk_2781ABCF8;
    v51 = v39;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke_2;
    v48[3] = &unk_2781AD098;
    v49 = v51;
    [v41 animateWithDuration:v50 animations:v48 completion:0.5];
  }

  v42 = [(ICNoteEditorViewController *)self textView];
  v43 = [v42 hidePrediction];

  if (v43)
  {
    v44 = [(ICNoteEditorViewController *)self textView];
    [v44 setHidePrediction:0];

    v45 = [(ICNoteEditorViewController *)self textView];
    LODWORD(v44) = [v45 isEditing];

    if (v44)
    {
      v46 = [MEMORY[0x277D75658] activeKeyboard];
      [v46 textInputTraitsDidChange];
    }
  }
}

void __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 removeFromSuperview];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  if (!a3 && [(ICNoteEditorViewController *)self isEditing])
  {

    [(ICNoteEditorViewController *)self setEditing:0 animated:0];
  }
}

- (void)prepareForBarSourcedPopoverPresentation
{
  [(ICNoteEditorViewController *)self setUserInteractionEnabled:0];
  if (([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    v4 = [v3 selectedTextRange];
    [(ICNoteEditorViewController *)self setSelectedTextRangeToRestoreAfterBarSourcedPopoverPresentation:v4];

    v5 = [(ICNoteEditorViewController *)self textView];
    [v5 setSelectedTextRange:0];
  }
}

- (void)cleanupAfterBarSourcedPopoverPresentation
{
  [(ICNoteEditorViewController *)self setUserInteractionEnabled:1];
  v3 = [(ICNoteEditorViewController *)self selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation];

  if (v3)
  {
    v4 = [(ICNoteEditorViewController *)self selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation];
    v5 = [(ICNoteEditorViewController *)self textView];
    [v5 setSelectedTextRange:v4];

    [(ICNoteEditorViewController *)self setSelectedTextRangeToRestoreAfterBarSourcedPopoverPresentation:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    if ([v7 canBecomeFirstResponder])
    {
    }

    else
    {
      v8 = [(ICNoteEditorViewController *)self isSettingEditing];

      if (!v8)
      {
        return;
      }
    }
  }

  if ([(ICNoteEditorViewController *)self isEditing]!= v5)
  {
    [(ICNoteEditorViewController *)self setIsSettingEditing:1];
    if (v5)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 postNotificationName:@"ICViewControllerWillStartEditModeNotification" object:self];

      v10 = [(ICNoteEditorViewController *)self textView];
      if (![v10 isFirstResponder])
      {
        v11 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        v12 = [v11 isFirstResponder];

        if ((v12 & 1) == 0)
        {
          [(ICNoteEditorViewController *)self startEditing];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v13 = [(ICNoteEditorViewController *)self auxiliaryResponder];
      v14 = [v13 isFirstResponder];

      if (v14)
      {
        v15 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        [v15 resignFirstResponder];
      }

      v16 = [(ICNoteEditorViewController *)self textView];
      v17 = [v16 isFirstResponder];

      if (!v17)
      {
        goto LABEL_15;
      }

      v10 = [(ICNoteEditorViewController *)self textView];
      [v10 resignFirstResponder];
    }

LABEL_15:
    [(ICNoteEditorViewController *)self showStyleSelectorInputView:0 animated:1 doneEditing:1];
    v20.receiver = self;
    v20.super_class = ICNoteEditorViewController;
    [(ICNoteEditorViewController *)&v20 setEditing:v5 animated:v4];
    [(ICNoteEditorViewController *)self setIsSettingEditing:0];
    [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:self];

    v19 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v19 setEditing:v5];
  }
}

- (id)addQuickNoteWithPencil:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[ICNoteEditorViewController addQuickNoteWithPencil:]";
    v20 = 1024;
    v21 = 6221;
    _os_log_impl(&dword_2151A1000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", &v18, 0x12u);
  }

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    if ([v6 isFirstResponder])
    {
      v7 = !v3;
    }

    else
    {
      v9 = [MEMORY[0x277D75418] currentDevice];
      if ([v9 userInterfaceIdiom])
      {
        v7 = 0;
      }

      else
      {
        v7 = !v3;
      }
    }

    v10 = MEMORY[0x277D35DE0];
    v11 = [MEMORY[0x277D35F30] sharedContext];
    v12 = [v11 managedObjectContext];
    v13 = [v10 defaultAccountInContext:v12];

    v14 = [v13 defaultFolder];
    v15 = [MEMORY[0x277D35F28] newEmptyNoteInFolder:v14];
    v16 = [(ICNoteEditorViewController *)self eventReporter];
    [v16 submitNoteCreateEventForModernNote:v15 createApproach:12];

    [(ICNoteEditorViewController *)self setNote:v15];
    [(ICNoteEditorViewController *)self updateBarButtons];
    [(ICNoteEditorViewController *)self setupLinedPaperOnNewNote:v15 willStartEditing:v7];
    if (v7)
    {
      [(ICNoteEditorViewController *)self startEditing];
    }

    v8 = [(ICNoteEditorBaseViewController *)self note];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)addNewNoteWithEvent:(id)a3
{
  v4 = a3;
  [(ICNoteEditorViewController *)self saveNote];
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v5 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:[(ICNoteEditorViewController *)v4 ic_isPencilEvent]];
  }

  else
  {
    v6 = [(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper];
    v7 = [(ICNoteEditorViewController *)self viewControllerManager];
    v8 = v7;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = self;
    }

    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 2;
    }

    v5 = [v7 showNewNoteWithApproach:v10 sender:v9 animated:1];
  }

  return v5;
}

- (void)setupLinedPaperOnNewNote:(id)a3 willStartEditing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  objc_opt_class();
  v6 = [MEMORY[0x277D36260] objectForKey:@"PaperStyle"];
  v7 = ICCheckedDynamicCast();
  v8 = [v7 intValue];

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v4)
  {
    v10 = v9;
    v11 = dispatch_time(0, 1000000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__ICNoteEditorViewController_setupLinedPaperOnNewNote_willStartEditing___block_invoke;
    v12[3] = &unk_2781AD1C0;
    v13 = v5;
    v14 = v10;
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);
  }

  else
  {
    [v5 setPaperStyleType:v9];
  }
}

- (void)addNote:(id)a3 event:(id)a4 shouldInstrumentAsNewNoteAffordanceUsage:(BOOL)a5
{
  v5 = a5;
  v11 = a4;
  if (v5)
  {
    v7 = [(ICNoteEditorViewController *)self eventReporter];
    [v7 pushNoteCreateDataWithCreateApproach:2];

    v8 = [(ICNoteEditorViewController *)self addNewNoteWithEvent:v11];
    v9 = [(ICNoteEditorViewController *)self eventReporter];
    [v9 popNoteCreateData];
  }

  else
  {
    v10 = [(ICNoteEditorViewController *)self addNewNoteWithEvent:v11];
  }
}

- (void)addNewNoteIfNeeded
{
  v3 = [(ICNoteEditorBaseViewController *)self note];

  if (!v3)
  {
    v4 = [MEMORY[0x277D369A0] sharedInstance];
    v5 = [v4 isQuickNoteSessionActive];

    if (v5)
    {
      v6 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:1];
    }

    else
    {
      v8 = [(ICNoteEditorViewController *)self viewControllerManager];
      v7 = [v8 showNewNoteWithApproach:0 sender:self animated:1];
    }
  }
}

- (void)deleteCurrentNote:(id)a3
{
  v4 = a3;
  if (![(ICNoteEditorViewController *)self isPerformingDeleteAnimation])
  {
    v5 = [(ICNoteEditorBaseViewController *)self note];

    if (v5)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __48__ICNoteEditorViewController_deleteCurrentNote___block_invoke;
      v12 = &unk_2781ABEB8;
      v13 = self;
      v14 = v4;
      v6 = _Block_copy(&v9);
      objc_opt_class();
      v7 = [(ICNoteEditorViewController *)self presentedViewController:v9];
      v8 = ICDynamicCast();

      if (v8)
      {
        [v8 dismissViewControllerAnimated:1 completion:v6];
      }

      else
      {
        v6[2](v6);
      }
    }
  }
}

void __48__ICNoteEditorViewController_deleteCurrentNote___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) note];
  [*(a1 + 32) setSuspendBarButtonUpdates:1];
  if ([*(a1 + 32) isEditing])
  {
    [*(a1 + 32) setEditing:0 animated:1];
  }

  v3 = objc_alloc(NSClassFromString(&cfstr_Icdeletedecisi.isa));
  v17[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) eventReporter];
  v9 = [v3 initWithSourceObjects:v4 window:v6 sender:v7 eventReporter:v8];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__ICNoteEditorViewController_deleteCurrentNote___block_invoke_2;
  v14 = &unk_2781AD1E8;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v10;
  [v9 performDecisionWithCompletion:&v11];
  if (!v9)
  {
    [*(a1 + 32) setSuspendBarButtonUpdates:{0, v11, v12, v13, v14, v15}];
  }
}

uint64_t __48__ICNoteEditorViewController_deleteCurrentNote___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) performDeleteAnimation:*(a1 + 40)];
    v3 = [MEMORY[0x277D369A0] sharedInstance];
    v4 = [v3 isQuickNoteSessionActive];

    if (v4)
    {
      v5 = [*(a1 + 32) addQuickNoteWithPencil:0];
    }
  }

  v6 = *(a1 + 32);

  return [v6 setSuspendBarButtonUpdates:0];
}

- (void)performDeleteAnimation:(id)a3
{
  v4 = a3;
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    v5 = [v4 view];
    if (v5 || (-[ICNoteEditorViewController navigationItem](self, "navigationItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rightBarButtonItem], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
    {
      v6 = 0;
      if (v5)
      {
LABEL_7:
        [(ICNoteEditorViewController *)self setIsPerformingDeleteAnimation:1];
        v12 = [(ICNoteEditorViewController *)self backgroundView];
        v13 = [v12 contentView];
        v14 = objc_alloc(MEMORY[0x277D75D18]);
        [v13 bounds];
        v15 = [v14 initWithFrame:?];
        [v13 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v12 snapshotViewAfterScreenUpdates:0];
        if (UIAccessibilityIsReduceMotionEnabled())
        {
          v25 = 0;
        }

        else
        {
          v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v17, v19, v21, v23}];
          v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [v25 setBackgroundColor:v26];

          if ([MEMORY[0x277D75418] ic_isVision])
          {
            [v25 ic_applyRoundedCornersFromView:v13];
          }

          [v15 addSubview:v25];
        }

        [v15 addSubview:v24];
        v27 = [(ICNoteEditorViewController *)self backgroundView];
        [v27 addSubviewAboveAllViews:v15];

        [v5 bounds];
        [v15 convertRect:v5 fromView:?];
        if (v6)
        {
          CGRectGetWidth(*&v28);
          [(ICNoteEditorViewController *)self ic_isRTL];
        }

        v35 = v24;
        v36 = v15;
        v32 = v15;
        v33 = v25;
        v34 = v24;
        dispatchMainAfterDelay();
      }
    }

    else
    {
      v10 = [(ICNoteEditorViewController *)self navigationItem];
      v11 = [v10 rightBarButtonItem];
      v5 = [v11 view];

      v6 = 1;
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }
}

void __53__ICNoteEditorViewController_performDeleteAnimation___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ICNoteEditorViewController_performDeleteAnimation___block_invoke_2;
  v9[3] = &unk_2781AC7B0;
  v10 = *(a1 + 32);
  v3 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v3;
  v11 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ICNoteEditorViewController_performDeleteAnimation___block_invoke_3;
  v6[3] = &unk_2781AD1E8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 _animateUsingDefaultTimingWithOptions:0 animations:v9 completion:v6];
}

uint64_t __53__ICNoteEditorViewController_performDeleteAnimation___block_invoke_2(uint64_t a1)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v2 = *(a1 + 32);

    return [v2 setAlpha:0.0];
  }

  else
  {
    CGAffineTransformMakeRotation(&v9, 0.42062435);
    v4 = *(a1 + 32);
    v8 = v9;
    [v4 setTransform:&v8];
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 transform];
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      memset(&v8, 0, sizeof(v8));
    }

    CGAffineTransformScale(&v7, &v8, 0.01, 0.01);
    v8 = v7;
    [v6 setTransform:&v8];
    TSDCenterOfRect();
    [*(a1 + 32) setCenter:?];
    return [*(a1 + 40) setAlpha:0.0];
  }
}

uint64_t __53__ICNoteEditorViewController_performDeleteAnimation___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setIsPerformingDeleteAnimation:0];
  [*(a1 + 40) setSuspendBarButtonUpdates:0];
  v2 = *(a1 + 40);

  return [v2 updateBarButtons];
}

- (void)moveToFolderPressed:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    [(ICNoteEditorViewController *)self app_showMoveToFolder];
  }
}

- (void)quickNoteAllNotes:(id)a3
{
  [(ICNoteEditorViewController *)self didEndEditingNote];
  v4 = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self delegate];
    [v6 noteEditorDidTapAllNotes:self];
  }
}

- (void)lockBarButtonPressed:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 isAuthenticated];

  if (v5)
  {
    [(ICNoteEditorViewController *)self saveNote];
    v6 = [MEMORY[0x277D35E50] sharedState];
    [v6 deauthenticate];

    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    v7 = [(ICNoteEditorBaseViewController *)self note];
    v12 = [v7 account];

    v8 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277D36830] sharedMigrator];
    v10 = [(ICNoteEditorViewController *)self view];
    v11 = [v10 window];
    [v9 showMigrationPromptAndMigrateIfNeededForAccount:v12 window:v11];
  }

  else
  {
    v12 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [v12 beginAuthentication];
  }

  v8 = v12;
LABEL_6:
}

- (void)iCloudShareButtonPressed:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self delegate];
    [v6 noteEditorDidTapAddPeople:self];
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self view];
    [v6 ic_crashIfWindowIsSecure];
  }
}

- (void)shareButtonPressedWithSender:(id)a3
{
  v12 = a3;
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 findInteraction];
  [v5 dismissFindNavigator];

  v6 = [(ICNoteEditorViewController *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(ICNoteEditorViewController *)self delegate];
    [v7 noteEditorDidTapAddPeople:self];
  }

  else
  {
    v8 = [(ICNoteEditorViewController *)self view];
    [v8 ic_crashIfWindowIsSecure];

    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = v9;
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v11 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      v7 = [v11 shareBarButtonItem];
    }

    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self performSelector:sel_app_shareButtonPressed_ withObject:v7];
    }
  }
}

- (void)createAndPresentCloudSharingControllerBySender:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self app_createAndPresentCloudSharingControllerBySender:v4];
  }
}

- (void)didBeginFindInteraction
{
  v3 = [(ICNoteEditorViewController *)self noteFormattingController];
  v4 = [v3 ic_isViewVisible];

  if (v4)
  {
    [(ICNoteEditorViewController *)self showStyleSelector:0 animated:1];
  }

  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self setInkPickerState:2];
    [(ICNoteEditorViewController *)self hideInkPicker];
  }

  v5 = [(ICNoteEditorViewController *)self findResultReporter];
  [v5 startTrackingFindSession];
}

- (void)didUpdateSearchQueryInFindInteraction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self findResultReporter];
  [v5 updateWithSearchQuery:v4];
}

- (void)didEndFindInteraction
{
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  [(ICNoteEditorViewController *)self clearTextViewSelection];
  v4 = [(ICNoteEditorViewController *)self findResultReporter];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  [v4 submitEventIfApplicableForNote:v3];
}

- (void)performFindInNote:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 findInteraction];
  [v5 presentFindNavigatorShowingReplace:0];

  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
}

- (void)performReplaceInNote:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 findInteraction];
  [v5 presentFindNavigatorShowingReplace:1];

  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
}

- (void)doneEditing
{
  [(ICNoteEditorViewController *)self didEndEditingNote];
  [(ICNoteEditorViewController *)self doneEditing:0];

  [(ICNoteEditorViewController *)self becomeFirstResponder];
}

- (void)doneEditing:(id)a3
{
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self setInkPickerState:2];
    [(ICNoteEditorViewController *)self hideInkPicker];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__ICNoteEditorViewController_doneEditing___block_invoke;
    aBlock[3] = &unk_2781ABCF8;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v5 = [(ICNoteEditorViewController *)self keyboardDidShowAnimationDate];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [(ICNoteEditorViewController *)self keyboardDidShowAnimationDate];
      [v6 timeIntervalSinceDate:v7];
      v9 = v8;

      if (v9 < 0.3 && (-[ICNoteEditorViewController textView](self, "textView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isScrolling], v10, v11))
      {
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __42__ICNoteEditorViewController_doneEditing___block_invoke_2;
        v18 = &unk_2781AC7D8;
        v19 = v4;
        dispatchMainAfterDelay();
      }

      else
      {
        v4[2](v4);
      }
    }

    else
    {
      v4[2](v4);
    }
  }

  v12 = [(ICNoteEditorViewController *)self calculateScrubberController:v15];
  v13 = [v12 isShowing];

  if (v13)
  {
    v14 = [(ICNoteEditorViewController *)self calculateScrubberController];
    [v14 hideScrubber];
  }

  [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];
  [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
}

uint64_t __42__ICNoteEditorViewController_doneEditing___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEditing];
  if (result)
  {
    v3 = [*(a1 + 32) textView];
    v4 = [v3 isWritingToolsActive];

    if (v4)
    {
      v5 = [*(a1 + 32) textView];
      v6 = [v5 writingToolsCoordinator];
      [v6 stopWritingTools];
    }

    [*(a1 + 32) setEditing:0 animated:1];
    v7 = *(a1 + 32);

    return [v7 updateBarButtonsAnimated:1];
  }

  return result;
}

- (void)toggleTodoStyle:(id)a3
{
  v14 = a3;
  v4 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [v4 hideSidebarAnimated:1];

  v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v6 toggleTodoStyle:v14];
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self textController];
    v7 = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    v8 = [v7 textStorage];
    v9 = ICCheckedDynamicCast();

    v10 = [v7 selectedRange];
    v12 = [v6 todoForRange:v10 inTextStorage:{v11, v9}];
    if (v12)
    {
      [(ICNoteEditorViewController *)self setCurrentTextStyle:3];
    }

    else
    {
      [(ICNoteEditorViewController *)self setCurrentTextStyle:103];
      [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:1];
    }

    [(ICNoteEditorViewController *)self showStyleSelector:0 animated:1];
    [(ICNoteEditorViewController *)self updateBarButtons];
    v13 = [(ICNoteEditorViewController *)self textView];
    [v13 icaxClearCaches];
  }
}

- (void)toggleTodoChecked:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 isEditable];

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 selectedRange];
    v10 = v9;

    v11 = [(ICNoteEditorViewController *)self textController];
    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [(ICNoteEditorViewController *)self textView];
    v14 = [v13 textStorage];
    v15 = [v11 paragraphStyleForRange:v8 inTextView:v10 inTextStorage:{v12, v14}];

    if (v15 == 103)
    {
      v16 = [(ICNoteEditorViewController *)self textController];
      v17 = [(ICNoteEditorViewController *)self textView];
      v18 = [v17 textStorage];
      v19 = [v16 isTodoDoneRange:v8 inTextStorage:{v10, v18}];

      v20 = [(ICNoteEditorViewController *)self textController];
      v21 = [(ICNoteEditorViewController *)self textView];
      v22 = [v21 textStorage];
      [v20 setDone:v19 ^ 1u range:v8 inTextStorage:{v10, v22}];

      if (v19)
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }

      [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:v23];
      v24 = [(ICNoteEditorViewController *)self textController];
      v25 = [(ICNoteEditorViewController *)self textView];
      v26 = [v24 expandedChecklistTrackedParagraphsInTextView:v25 forIndex:v8];
      v27 = [v26 firstObject];

      objc_initWeak(&location, self);
      v28 = [(ICNoteEditorViewController *)self textController];
      v29 = [(ICNoteEditorViewController *)self textView];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__ICNoteEditorViewController_toggleTodoChecked___block_invoke;
      v32[3] = &unk_2781ACC10;
      objc_copyWeak(&v33, &location);
      [v28 autoSortChecklistIfNecessaryForTrackedParagraph:v27 textView:v29 analyticsHandler:v32];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v30 = [(ICNoteEditorBaseViewController *)self note];
    v31 = [v30 isDeletedOrInTrash];

    if (v31)
    {
      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }
  }
}

void __48__ICNoteEditorViewController_toggleTodoChecked___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventReporter];
  [v3 submitMoveCheckedItemsToBottomSwitchEventWithNewState:a2 isInApp:1];
}

- (BOOL)canPerformToggleTodoChecked
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  if ([v3 isEditable])
  {
    v4 = [(ICNoteEditorViewController *)self isChecklistSelected];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPerformTodoCheckAll
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (![(ICNoteEditorViewController *)self isChecklistSelected])
  {
    return 0;
  }

  v3 = MEMORY[0x277CCAE60];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 selectedRange];
  v7 = [v3 valueWithRange:{v5, v6}];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v9 = [(ICNoteEditorBaseViewController *)self note];
  if ([v9 isEditable])
  {
    v10 = [(ICNoteEditorViewController *)self textController];
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v10 checklistItemExistsMarkedCompleted:0 inTextView:v11 forRanges:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canPerformTodoUncheckAll
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 selectedRange];
  v7 = [v3 valueWithRange:{v5, v6}];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v9 = [(ICNoteEditorBaseViewController *)self note];
  if ([v9 isEditable])
  {
    v10 = [(ICNoteEditorViewController *)self textController];
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v10 checklistItemExistsMarkedCompleted:1 inTextView:v11 forRanges:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isChecklistSelected
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 selectedRange];
  v7 = v6;
  v8 = [(ICNoteEditorViewController *)self textView];
  v9 = [(ICNoteEditorViewController *)self textView];
  v10 = [v9 textStorage];
  LODWORD(v5) = [v3 paragraphStyleForRange:v5 inTextView:v7 inTextStorage:{v8, v10}];

  return v5 == 103;
}

- (BOOL)canToggleTodoStyle
{
  v3 = [(ICNoteEditorViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  v6 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v6 isEditable];

  return v7;
}

- (BOOL)canSetParagraphStyle
{
  v2 = [(ICNoteEditorBaseViewController *)self note];
  v3 = [v2 isEditable];

  return v3;
}

- (BOOL)canSetListStyle
{
  v2 = [(ICNoteEditorBaseViewController *)self note];
  v3 = [v2 isEditable];

  return v3;
}

- (void)setTitleStyle:(id)a3
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:0];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:1];
}

- (void)setHeadingStyle:(id)a3
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:1];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:2];
}

- (void)setSubheadingStyle:(id)a3
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:2];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:3];
}

- (void)setBodyStyle:(id)a3
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:3];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:4];
}

- (void)setFixedWidthStyle:(id)a3
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:4];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:5];
}

- (void)toggleBulletedListStyle:(id)a3
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:100];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:6];
}

- (void)toggleDashedListStyle:(id)a3
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:101];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:7];
}

- (void)toggleNumberedListStyle:(id)a3
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:102];
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitStyleFormatEventForModernNote:v4 styleTypeValue:8];
}

- (void)prepareSelectionForAddingAttachment
{
  if (([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    v4 = [v3 textStorage];
    v5 = [v4 length];

    v6 = [(ICNoteEditorViewController *)self textView];
    [v6 setSelectedRange:{v5, 0}];
  }
}

- (void)createTodoListItem:(id)a3
{
  v15 = a3;
  v4 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [v4 hideSidebarAnimated:1];

  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = v7;

  if ([(ICNoteEditorViewController *)self isEditing])
  {
    [(ICNoteEditorViewController *)self toggleTodoStyle:v15];
  }

  else if (v6 == 0x7FFFFFFFFFFFFFFFLL || !v8)
  {
    [(ICNoteEditorViewController *)self addTodoListAtEndOfNote];
  }

  else
  {
    objc_opt_class();
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 textStorage];
    v11 = ICCheckedDynamicCast();

    v12 = [(ICNoteEditorViewController *)self textController];
    v13 = [v12 containsOnlyStyle:103 inRange:v6 inTextStorage:{v8, v11}];

    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 103;
    }

    [(ICNoteEditorViewController *)self setCurrentTextStyle:v14];
    [(ICNoteEditorViewController *)self startEditing];
  }
}

- (void)addTodoListAtEndOfNote
{
  if (([(ICNoteEditorViewController *)self ic_isViewVisible]& 1) != 0)
  {
    v3 = [(ICNoteEditorViewController *)self viewControllerManager];
    v4 = [v3 isWelcomeScreenVisible];

    if (v4)
    {
      return;
    }

    [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
    v25 = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    v5 = [v25 textStorage];
    v6 = ICCheckedDynamicCast();

    v7 = [v6 length];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 string];
      v10 = [v9 characterAtIndex:v8 - 1];

      v11 = [MEMORY[0x277CCA900] newlineCharacterSet];
      if ([v11 characterIsMember:v10])
      {
        v12 = [(ICNoteEditorViewController *)self textController];
        v13 = [(ICNoteEditorViewController *)self textView];
        v14 = [v12 paragraphStyleForRange:v8 - 1 inTextView:1 inTextStorage:{v13, v6}];

        if (v14 == 103)
        {
          if (v8 == 1)
          {
            v8 = 0;
          }

          else
          {
            v15 = [v6 string];
            v16 = [v15 characterAtIndex:v8 - 2];

            if ([v11 characterIsMember:v16])
            {
              --v8;
            }

            else
            {
              v23 = [(ICNoteEditorViewController *)self textController];
              [v23 insertNewlineAtCharacterIndex:v8 - 1 textStorage:v6];
            }
          }

          v24 = [(ICNoteEditorViewController *)self textView];
          [v24 setSelectedRange:{v8, 0}];

          goto LABEL_17;
        }
      }

      else
      {
        [v25 setSelectedRange:{v8, 0}];
        [v25 insertText:@"\n"];
        v8 = [v6 length];
      }

      v17 = [(ICNoteEditorViewController *)self textView];
      v18 = v17;
      v19 = v8;
    }

    else
    {
      v17 = [(ICNoteEditorViewController *)self textView];
      v18 = v17;
      v19 = 0;
    }

    [v17 setSelectedRange:{v19, 0}];

    [(ICNoteEditorViewController *)self setCurrentTextStyle:103];
LABEL_17:
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      objc_opt_class();
      v20 = [(ICNoteEditorViewController *)self textView];
      v21 = [v20 layoutManager];
      v22 = ICDynamicCast();

      [v22 updateVisibleSupplementalViews];
    }

    [(ICNoteEditorViewController *)self startEditing];
    [(ICNoteEditorViewController *)self updateBarButtons];

    return;
  }

  [(ICNoteEditorViewController *)self setAddToDoListAfterViewAppears:1];
}

- (void)cleanupAfterAddImageAttachmentOperation
{
  [(ICNoteEditorViewController *)self setIsAddingImageAttachment:0];
  [MEMORY[0x277D75D28] attemptRotationToDeviceOrientation];
  if ([(ICNoteEditorViewController *)self didEndEditingForAddingImageAttachment])
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    [v3 setShouldAvoidBecomingFirstResponder:0];

    if (!+[ICExtensionSafeAPIShims applicationState])
    {
      [(ICNoteEditorViewController *)self startEditing];
    }

    [(ICNoteEditorViewController *)self setDidEndEditingForAddingImageAttachment:0];
  }
}

- (BOOL)isDocumentCameraAvailable
{
  if ([MEMORY[0x277D75128] ic_isExtension])
  {
    return 0;
  }

  v3 = MEMORY[0x277D361D0];

  return [v3 isCameraAvailable];
}

- (BOOL)isPhotosLibraryAvailable
{
  v3 = [MEMORY[0x277D755C8] isSourceTypeAvailable:0];
  if (v3)
  {
    LOBYTE(v3) = ![(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
  }

  return v3;
}

- (void)showInsertUIWithPreferredSourceType:(unint64_t)a3
{
  if (([(ICNoteEditorViewController *)self ic_isViewVisible]& 1) != 0)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        if ([(ICNoteEditorViewController *)self isDocumentCameraAvailable])
        {
          goto LABEL_27;
        }
      }

      else if (a3 == 6 && ([MEMORY[0x277D75418] ic_isVision] & 1) != 0)
      {
LABEL_27:

        [(ICNoteEditorViewController *)self showInsertUIForSourceType:a3 sender:0];
        return;
      }
    }

    else if (a3 == 1)
    {
      if ([MEMORY[0x277D361D0] isCameraAvailable])
      {
        goto LABEL_27;
      }
    }

    else if (a3 == 3 && ([MEMORY[0x277D75418] ic_isLiveTextAvailable] & 1) != 0)
    {
      goto LABEL_27;
    }

    if ([MEMORY[0x277D755C8] isSourceTypeAvailable:1])
    {
      goto LABEL_27;
    }

    if ([(ICNoteEditorViewController *)self isPhotosLibraryAvailable])
    {

      [(ICNoteEditorViewController *)self showPhotoLibrary];
    }
  }

  else
  {
    switch(a3)
    {
      case 7uLL:

        [(ICNoteEditorViewController *)self setShowInsertAudioAfterViewAppears:1];
        break;
      case 4uLL:

        [(ICNoteEditorViewController *)self setAddDocumentScanAfterViewAppears:1];
        break;
      case 1uLL:

        [(ICNoteEditorViewController *)self setShowInsertUIAfterViewAppears:1];
        break;
    }
  }
}

- (void)attachFile:(id)a3
{
  v6 = a3;
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 canAddAttachment];

  if (v5)
  {
    [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
    [(ICNoteEditorViewController *)self showInsertUIForSourceType:5 sender:v6];
  }

  else
  {
    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }
}

- (void)showInsertUIForSourceType:(unint64_t)a3 sender:(id)a4
{
  v6 = [(ICNoteEditorBaseViewController *)self note:a3];
  if (v6 && (v7 = v6, -[ICNoteEditorBaseViewController note](self, "note"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canAddAttachment], v8, v7, (v9 & 1) == 0))
  {

    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }

  else
  {
    [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
    [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
    [(ICNoteEditorViewController *)self showInkPicker:0 animated:1];
    if (a3 <= 3)
    {
      switch(a3)
      {
        case 1uLL:
          if ([(ICNoteEditorViewController *)self isEditing])
          {
            [(ICNoteEditorViewController *)self setEditing:0 animated:1];
          }

          v26 = [(ICNoteEditorViewController *)self visualAssetImportController];
          v25 = [(ICNoteEditorViewController *)self traitCollection];
          [v26 presentVisualAssetCaptureControllerWithDisableAutorotate:{objc_msgSend(v25, "userInterfaceIdiom") == 0}];

          break;
        case 2uLL:
          v26 = [(ICNoteEditorViewController *)self visualAssetImportController];
          [v26 presentVisualAssetPickerController];
          break;
        case 3uLL:
          v10 = [(ICNoteEditorViewController *)self textView];
          [v10 becomeFirstResponder];

          v26 = [(ICNoteEditorViewController *)self textView];
          [v26 captureTextFromCamera:self];
          break;
        default:
          return;
      }

LABEL_24:

      return;
    }

    if (a3 == 7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__ICNoteEditorViewController_showInsertUIForSourceType_sender___block_invoke;
      block[3] = &unk_2781ABCF8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      return;
    }

    if (a3 != 5)
    {
      if (a3 != 4)
      {
        return;
      }

      v11 = [MEMORY[0x277CCAD78] UUID];
      [(ICNoteEditorViewController *)self setCreatedGalleryAttachmentUUID:v11];

      v12 = objc_alloc(MEMORY[0x277D05D28]);
      v13 = [(ICNoteEditorViewController *)self documentCameraControllerCreateDataCryptorIfNecessary];
      v26 = [v12 initWithDataCryptorDelegate:v13];

      v14 = [(ICNoteEditorViewController *)self navigationController];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = self;
      }

      v17 = v16;

      v18 = [objc_alloc(MEMORY[0x277D05D38]) initWithImageCache:v26 docCamDelegate:self remoteDocCamDelegate:self];
      [v18 setModalTransitionStyle:2];
      [(ICNoteEditorViewController *)v17 presentViewController:v18 animated:1 completion:0];
      v19 = [(ICNoteEditorViewController *)self eventReporter];
      [v19 pushStartDocScanPageCountData:0];

      v20 = [(ICNoteEditorViewController *)self eventReporter];
      v21 = [(ICNoteEditorViewController *)self createdGalleryAttachmentUUID];
      v22 = [v21 UUIDString];
      [v20 pushDocScanDataWithID:v22 actionType:1 stage:1];

      v23 = [(ICNoteEditorViewController *)self eventReporter];
      v24 = [(ICNoteEditorBaseViewController *)self note];

      [v23 submitDocScanEventForNote:v24 pageCount:0];
      goto LABEL_24;
    }

    [(ICNoteEditorViewController *)self showDocumentPicker];
  }
}

void __63__ICNoteEditorViewController_showInsertUIForSourceType_sender___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) audioAttachmentEditorCoordinator];
  [v1 presentRecordingViewControllerForAttachment:0];
}

- (void)showDocumentPicker
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75458]);
  v6[0] = *MEMORY[0x277CE1D48];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v3 initForOpeningContentTypes:v4 asCopy:1];

  [v5 setAllowsMultipleSelection:0];
  [v5 setDelegate:self];
  [(ICNoteEditorViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v5;
  v47 = *v51;
  v46 = *MEMORY[0x277CBE7B8];
  v44 = *MEMORY[0x277CE1E08];
  v42 = *MEMORY[0x277D35BF0];
  v43 = *MEMORY[0x277CD9420];
  *&v6 = 138412546;
  v41 = v6;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v51 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v50 + 1) + 8 * i);
      v10 = [(ICNoteEditorBaseViewController *)self note];
      v11 = [v10 canAddAttachment];

      if ((v11 & 1) == 0)
      {
        [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
        goto LABEL_30;
      }

      v12 = [(ICNoteEditorBaseViewController *)self note];
      v13 = [v12 attachmentExceedsMaxSizeAllowed:{objc_msgSend(v9, "ic_fileSize")}];

      if (v13)
      {
        v39 = [MEMORY[0x277CCA8D8] mainBundle];
        v40 = [v39 localizedStringForKey:@"Maximum attachment size reached." value:&stru_282757698 table:0];
        [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v40 andMessage:0];

        goto LABEL_30;
      }

      v14 = [v9 lastPathComponent];
      v15 = [v14 stringByDeletingPathExtension];

      v49 = 0;
      LODWORD(v14) = [v9 getResourceValue:&v49 forKey:v46 error:0];
      v16 = v49;
      v17 = v16;
      if (!v14 || !v16)
      {
        v26 = [(ICNoteEditorBaseViewController *)self note];
        v22 = [v26 addAttachmentWithFileURL:v9];
        goto LABEL_23;
      }

      if (![v16 conformsToType:v44])
      {
        v26 = [(ICNoteEditorBaseViewController *)self note];
        v27 = [v17 identifier];
        v22 = [v26 addAttachmentWithUTI:v27 withURL:v9];

        goto LABEL_23;
      }

      v18 = ICInternalSettingsDefaultToPaperKitPDFsAndScans();
      v19 = [(ICNoteEditorBaseViewController *)self note];
      if (!v18)
      {
        v22 = [v17 identifier];
        v25 = [v19 addAttachmentWithUTI:v22 withURL:v9];
LABEL_19:

        v22 = v25;
        goto LABEL_20;
      }

      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 UUIDString];
      v22 = [v19 addPaperDocumentAttachmentWithIdentifier:v21 subtype:v42];

      v23 = [v22 managedObjectContext];
      [v23 ic_save];

      v48 = 0;
      LOBYTE(v23) = [MEMORY[0x277D35F48] createPaperDocumentForAttachment:v22 fromLegacyMediaAtURL:v9 error:&v48];
      v19 = v48;
      if ((v23 & 1) == 0)
      {
        v24 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v38 = [v22 ic_loggingDescription];
          *buf = v41;
          v55 = v19;
          v56 = 2112;
          v57 = v38;
          _os_log_error_impl(&dword_2151A1000, v24, OS_LOG_TYPE_ERROR, "Failed to create paper document from PDF with error: %@ -- deleting attachment %@", buf, 0x16u);
        }

        [MEMORY[0x277D35E00] deleteAttachment:v22];
        v25 = 0;
        goto LABEL_19;
      }

LABEL_20:

      v26 = [objc_alloc(MEMORY[0x277CD93D8]) initWithURL:v9];
      v28 = [v26 documentAttributes];
      v29 = [v28 objectForKeyedSubscript:v43];

      if ([v29 length])
      {
        v30 = v29;

        v15 = v30;
      }

LABEL_23:
      if (v22)
      {
        [v22 setTitle:v15];
        v31 = [(ICNoteEditorViewController *)self attachmentInsertionController];
        v32 = [(ICNoteEditorViewController *)self textView];
        v33 = [v32 selectedRange];
        v35 = [v31 addAttachment:v22 atTextLocation:v33 + v34];

        v36 = [(ICNoteEditorBaseViewController *)self note];
        [v36 save];

        v37 = [(ICNoteEditorViewController *)self eventReporter];
        [v37 submitAttachmentAddEventForAttachment:v22];
      }
    }

    v7 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_30:
}

- (void)insertSidecarItems:(id)a3 service:(int64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
  if (!a4)
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController insertSidecarItems:service:];
    }

    v8 = [v6 ic_compactMap:&__block_literal_global_928];
    v11 = [(ICNoteEditorViewController *)self visualAssetImportController];
    [v11 addImageData:v8 typeIdentifier:0];
    goto LABEL_10;
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      goto LABEL_12;
    }

    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController insertSidecarItems:service:];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v8 = v6;
    v14 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v47 = v6;
      v16 = *v53;
      v17 = *MEMORY[0x277CD96A8];
      v18 = *MEMORY[0x277CD96C0];
      v19 = *MEMORY[0x277CBF3A8];
      v20 = *(MEMORY[0x277CBF3A8] + 8);
      while (2)
      {
        v21 = 0;
        v48 = v15;
        do
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v22 = *(*(&v52 + 1) + 8 * v21);
          v23 = [v22 type];
          v24 = [v23 isEqualToString:v17];

          if (v24)
          {
            v25 = [(ICNoteEditorBaseViewController *)self note];
            v26 = [v25 canAddAttachment];

            if ((v26 & 1) == 0)
            {
              v46 = os_log_create("com.apple.notes", "UI");
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                [ICNoteEditorViewController insertSidecarItems:service:];
              }

              [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
              goto LABEL_40;
            }

            v27 = v17;
            v28 = [v22 data];
            v29 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v28 error:0];
            [v29 bounds];
            MaxX = CGRectGetMaxX(v60);
            if (MaxX > v18)
            {
              CGAffineTransformMakeScale(&v49, v18 / MaxX, v18 / MaxX);
              [v29 _transformAllStrokes:&v49];
            }

            v31 = v16;
            [v29 _canvasBounds];
            if (v33 == v19 && v32 == v20)
            {
              [v29 bounds];
              [v29 set_canvasBounds:{0.0, 0.0, v18, CGRectGetMaxY(v61)}];
            }

            v35 = MEMORY[0x277D35F48];
            v36 = [(ICNoteEditorBaseViewController *)self note];
            v37 = [v35 createSystemPaperAttachmentWithPKDrawing:v29 inNote:v36];

            v38 = [(ICNoteEditorViewController *)self attachmentInsertionController];
            v39 = [(ICNoteEditorViewController *)self textView];
            v40 = [v39 selectedRange];
            v42 = [v38 addAttachment:v37 atTextLocation:v40 + v41];

            v43 = [(ICNoteEditorBaseViewController *)self note];
            v44 = [v43 managedObjectContext];
            [v44 ic_save];

            v45 = [MEMORY[0x277D366B0] sharedGenerator];
            [v45 generatePreviewIfNeededForAttachment:v37];

            v16 = v31;
            v17 = v27;
            v15 = v48;
          }

          else
          {
            v28 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(ICNoteEditorViewController *)&buf insertSidecarItems:v51 service:v28];
            }
          }

          ++v21;
        }

        while (v15 != v21);
        v15 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

LABEL_40:
      v6 = v47;
    }

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController insertSidecarItems:service:];
    }

    v8 = [v6 ic_map:&__block_literal_global_935];
    v9 = [objc_alloc(MEMORY[0x277D05D28]) initWithDataCryptorDelegate:0];
    v10 = MEMORY[0x277D05D10];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_2;
    v56[3] = &unk_2781AD278;
    v56[4] = self;
    v57 = v9;
    v11 = v9;
    [v10 infoCollectionFromSidecarItems:v8 imageCache:v11 completion:v56];

LABEL_10:
LABEL_11:
  }

LABEL_12:
}

id __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_932(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D54FD0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 data];
  v6 = [v3 type];

  v7 = [v4 initWithData:v5 type:v6];

  return v7;
}

void __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 documentCameraPresentingViewController:0 didFinishWithInfoCollection:a2 imageCache:v3 warnUser:1 closeViewController:0];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_2_cold_1();
    }
  }
}

- (id)getTableControllerFor:(id)a3
{
  v3 = a3;
  v4 = v3;
  while (1)
  {
    v5 = v4;
    v4 = [v4 nextResponder];

    if (!v4)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)addTable:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 canAddAttachment];

  if (v5)
  {
    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 isEditable];

    if (v7)
    {
      [(ICNoteEditorViewController *)self showStyleSelector:0 animated:0];
      v8 = [(ICNoteEditorViewController *)self textView];
      [v8 selectedRange];
      v10 = v9;

      if (v10)
      {
        v11 = [(ICNoteEditorViewController *)self textStorage];
        v12 = [(ICNoteEditorViewController *)self textView];
        v13 = [v12 selectedRange];
        v15 = [v11 ic_attributedSubstringFromRange:{v13, v14}];

        v16 = [(ICNoteEditorBaseViewController *)self note];
        v17 = [v16 managedObjectContext];
        v18 = [v15 ic_attributedStringByFlatteningCalculateAttachmentsWithContext:v17];

        v19 = [(ICNoteEditorBaseViewController *)self note];
        v33 = [v19 addTableAttachmentWithText:v18];
      }

      else
      {
        v18 = [(ICNoteEditorBaseViewController *)self note];
        v33 = [v18 addTableAttachment];
      }

      v23 = [(ICNoteEditorViewController *)self eventReporter];
      v24 = [(ICNoteEditorBaseViewController *)self note];
      [v23 submitTableCreateEventForAttachment:v33 inNote:v24];

      v25 = [(ICNoteEditorViewController *)self attachmentInsertionController];
      v26 = [(ICNoteEditorViewController *)self textView];
      v27 = [v26 selectedRange];
      v29 = [v25 addAttachment:v33 atTextRange:{v27, v28}];

      v30 = [(ICNoteEditorViewController *)self undoManager];
      v31 = [MEMORY[0x277CCA8D8] mainBundle];
      v32 = [v31 localizedStringForKey:@"Add Table" value:&stru_282757698 table:0];
      [v30 setActionName:v32];
    }

    else
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(ICNoteEditorBaseViewController *)self note];
        v22 = [v21 shortLoggingDescription];
        *buf = 138412290;
        v35 = v22;
        _os_log_impl(&dword_2151A1000, v20, OS_LOG_TYPE_DEFAULT, "Trying to add table to non-editable note %@", buf, 0xCu);
      }
    }
  }

  else
  {

    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }
}

- (void)resetDateView
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v2 = [v3 dateView];
  [v2 reset];
}

- (void)updatePencilKitSelectionViewEnabled
{
  if ([MEMORY[0x277D75418] ic_isiPad])
  {
    v6 = [(ICNoteEditorBaseViewController *)self note];
    if ([v6 isEditable])
    {
      v3 = [(ICNoteEditorViewController *)self attributionSidebarVisibility]== 0;
    }

    else
    {
      v3 = 0;
    }

    v4 = [(ICNoteEditorViewController *)self textView];
    v5 = [v4 ic_pkSelectionInteraction];
    [v5 setEnabled:v3];
  }
}

- (void)openLink:(id)a3
{
  v5 = [(ICNoteEditorViewController *)self linkForSelection];
  v4 = [(ICNoteEditorViewController *)self view];
  [ICExtensionSafeAPIShims openURL:v5 originatingView:v4 completionHandler:0];
}

- (void)tab:(id)a3
{
  if ([(ICNoteEditorViewController *)self currentSelectionContainsListOrFixedWidth])
  {

    [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:1];
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    [v4 insertText:@"\t"];
  }
}

- (void)shiftReturn:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self textView];
  [v3 insertText:@"\u2028"];
}

- (void)checkAll:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorViewController *)self textController];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 selectedRange];
  v10 = [v6 valueWithRange:{v8, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 markAllChecklistItemsCompleted:1 inTextview:v5 forSelectedRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:2];
}

- (void)uncheckAll:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorViewController *)self textController];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 selectedRange];
  v10 = [v6 valueWithRange:{v8, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 markAllChecklistItemsCompleted:0 inTextview:v5 forSelectedRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:3];
}

- (BOOL)canRemoveCheckedListItem
{
  v2 = self;
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 selectedRange];
  v7 = [v3 valueWithRange:{v5, v6}];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v9 = [(ICNoteEditorViewController *)v2 textController];
  v10 = [(ICNoteEditorViewController *)v2 textView];
  LOBYTE(v4) = [v9 checklistItemExistsMarkedCompleted:1 inTextView:v10 forRanges:v8];

  v11 = [(ICNoteEditorViewController *)v2 textController];
  v12 = [(ICNoteEditorViewController *)v2 textView];
  v13 = [(ICNoteEditorViewController *)v2 textView];
  v14 = [v13 selectedRange];
  LOBYTE(v2) = [v11 containsOnlyChecklistItemsInTextView:v12 forRange:{v14, v15}];

  return v4 & v2;
}

- (void)removeChecked:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorViewController *)self textController];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 selectedRange];
  v10 = [v6 valueWithRange:{v8, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 removeChecklistItemsMarkedCompleted:1 inTextView:v5 forRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:4];
}

- (BOOL)canMoveCheckedToBottom
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v3 canMoveCheckedChecklistsToBottomInTextView:v4 forRange:{v6, v7}];

  v9 = [(ICNoteEditorViewController *)self textController];
  v10 = [(ICNoteEditorViewController *)self textView];
  v11 = [(ICNoteEditorViewController *)self textView];
  v12 = [v11 selectedRange];
  v14 = [v9 containsOnlyChecklistItemsInTextView:v10 forRange:{v12, v13}];

  return [(ICNoteEditorViewController *)self containsUnCheckedItems]& v8 & v14;
}

- (BOOL)containsUnCheckedItems
{
  v6 = 0;
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  [v3 getTodoSelected:&v6 + 1 andAtLeastOneTodoUnchecked:&v6 inTextView:v4];

  return v6 & 1 | ((v6 & 0x100) == 0);
}

- (void)moveCheckedToBottom:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self textController];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 selectedRange];
  [v4 moveCheckedChecklistsToBottomInTextView:v5 forRange:v7 animated:{v8, 1}];

  v10 = [(ICNoteEditorViewController *)self eventReporter];
  v9 = [(ICNoteEditorBaseViewController *)self note];
  [v10 submitNoteEditorCallOutBarButtonSelectionEventForModernNote:v9 buttonTypeValue:14];
}

- (BOOL)canMoveSelectedListItemUp
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v3 canMoveListItemInDirection:0 inTextView:v4 forRange:{v6, v7}];

  return v8;
}

- (BOOL)canMoveSelectedListItemDown
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v3 canMoveListItemInDirection:1 inTextView:v4 forRange:{v6, v7}];

  return v8;
}

- (void)moveSelectedListItemUp:(id)a3
{
  v8 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  [v8 moveListItemInDirection:0 inTextView:v4 forRange:{v6, v7}];
}

- (void)moveSelectedListItemDown:(id)a3
{
  v8 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  [v8 moveListItemInDirection:1 inTextView:v4 forRange:{v6, v7}];
}

- (BOOL)canConvertToText
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v3 canConvertInlineAttachmentToTextInTextView:v4 forRange:{v6, v7}];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    v10 = [(ICNoteEditorViewController *)self textStorage];
    v11 = *MEMORY[0x277D74060];
    v12 = [(ICNoteEditorViewController *)self textView];
    v13 = [v10 attribute:v11 atIndex:objc_msgSend(v12 effectiveRange:{"selectedRange"), 0}];
    v14 = ICDynamicCast();

    v15 = [(ICNoteEditorViewController *)self firstResponder];
    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    v9 = (v14 != 0) | v10;
  }

  return v9 & 1;
}

- (BOOL)canReverseTableDirection
{
  v2 = [(ICNoteEditorViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canConvertToTag
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 selectedText];
  if ([v4 ic_canConvertToTag])
  {
    v5 = ![(ICNoteEditorViewController *)self canConvertToText];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)convertToText:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [(ICNoteEditorViewController *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v5 attribute:v6 atIndex:objc_msgSend(v7 effectiveRange:{"selectedRange"), 0}];
  v9 = ICDynamicCast();

  v10 = [(ICNoteEditorViewController *)self currentTableAttachmentViewController];

  if (v10)
  {
    v11 = [(ICNoteEditorViewController *)self currentTableAttachmentViewController];
    [v11 convertTableToText:v4];
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      v12 = [(ICNoteEditorViewController *)self textView];
      v13 = [v12 textLayoutManager];
      v14 = ICDynamicCast();

      v15 = [v14 tableViewControllerForAttachment:v9 createIfNeeded:1];
      [v15 convertTableToText:v4];

      goto LABEL_6;
    }

    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(ICNoteEditorViewController *)self textView];
      v29.location = [v17 selectedRange];
      v18 = NSStringFromRange(v29);
      v26 = 138412290;
      v27 = v18;
      _os_log_impl(&dword_2151A1000, v16, OS_LOG_TYPE_INFO, "Converting inline attachment at %@ to text", &v26, 0xCu);
    }

    v19 = [(ICNoteEditorViewController *)self textController];
    v20 = [(ICNoteEditorViewController *)self textView];
    v21 = [(ICNoteEditorViewController *)self textView];
    v22 = [v21 selectedRange];
    [v19 convertInlineAttachmentToTextInTextView:v20 forRange:{v22, v23}];

    v24 = [(ICNoteEditorViewController *)self textView];
    [(ICNoteEditorViewController *)self textViewDidChange:v24];

    v25 = [(ICNoteEditorBaseViewController *)self note];
    [v25 updateChangeCountWithReason:@"Converted inline attachment to text"];

    v11 = [(ICNoteEditorBaseViewController *)self note];
    [v11 save];
  }

LABEL_6:
}

- (void)convertToTag:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorViewController *)self eventReporter];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 selectedText];
  [v4 submitHashtagAddEventForNote:v5 tokenContentIdentifier:v7 viaAutoComplete:0];

  [(ICNoteEditorViewController *)self setIsConvertToTag:1];
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    v28.location = [v9 selectedRange];
    v10 = NSStringFromRange(v28);
    v25 = 138412290;
    v26 = v10;
    _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_INFO, "Converting text to inline attachment at %@", &v25, 0xCu);
  }

  v11 = MEMORY[0x277D35EF8];
  v12 = [(ICNoteEditorViewController *)self textView];
  v13 = [v12 selectedText];
  v14 = [v13 ic_stringByReplacingLeadingFullWidthHashSignIfPossible];
  v15 = [(ICNoteEditorBaseViewController *)self note];
  v16 = [v11 createHashtagAttachmentIfApplicableWithHashtagText:v14 creatingHashtagIfNecessary:1 note:v15 parentAttachment:0];

  if (v16)
  {
    v17 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v18 = [(ICNoteEditorViewController *)self textView];
    v19 = [v18 selectedRange];
    v21 = [v17 addInlineAttachment:v16 atTextRange:{v19, v20}];

    [v16 updateChangeCountWithReason:@"Created tag from text"];
    v22 = [(ICNoteEditorBaseViewController *)self note];
    [v22 updateChangeCountWithReason:@"Created tag from text"];

    v23 = [(ICNoteEditorBaseViewController *)self note];
    [v23 save];

    v24 = [(ICNoteEditorViewController *)self hashtagController];
    [v24 updateNoteHashtags];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (BOOL)canAddToTags
{
  v3 = [(ICNoteEditorViewController *)self textController];
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v3 canAddToTagsInTextView:v4 forRange:{v6, v7}];

  return v8;
}

- (void)addToTags:(id)a3
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController addToTags:?];
  }

  v5 = [(ICNoteEditorViewController *)self textController];
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 selectedRange];
  [v5 addToTagsInTextView:v6 forRange:{v8, v9}];
}

- (void)openExperimentalHashtagUI:(id)a3
{
  if (ICDebugModeEnabled())
  {
    v4 = objc_alloc_init(ICHashtagViewController);
    [(ICHashtagViewController *)v4 setDelegate:self];
    [(ICNoteEditorViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (void)openLinkEditor:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 isDeletedOrInTrash];

  if (v5)
  {

    [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    return;
  }

  v6 = [(ICNoteEditorViewController *)self linkForSelection];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 selectedText];

  v9 = [(ICNoteEditorViewController *)self textView];
  v10 = [v9 textStorage];
  v11 = *MEMORY[0x277D74060];
  v12 = [(ICNoteEditorViewController *)self textView];
  v13 = [v10 attribute:v11 atIndex:objc_msgSend(v12 effectiveRange:{"selectedRange"), 0}];

  objc_opt_class();
  v34 = v13;
  v14 = ICDynamicCast();
  v15 = [v14 attachment];
  v35 = xmmword_2154BBE70;
  if (!v6)
  {
    v6 = [MEMORY[0x277D35DF0] detectedURLInString:v8 allowNonLinkCharacters:0];

    if (v6)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    }

    goto LABEL_11;
  }

  v16 = [(ICNoteEditorViewController *)self textStorage];
  v17 = *MEMORY[0x277D740E8];
  v18 = [(ICNoteEditorViewController *)self textView];
  v19 = [v18 selectedRange];
  v20 = [(ICNoteEditorViewController *)self textStorage];
  v21 = [v16 attribute:v17 atIndex:v19 longestEffectiveRange:&v35 inRange:{0, objc_msgSend(v20, "length")}];

  if (v35 == 0x7FFFFFFFFFFFFFFFLL || !*(&v35 + 1))
  {
LABEL_11:
    v23 = [(ICNoteEditorViewController *)self textView];
    *&v35 = [v23 selectedRange];
    *(&v35 + 1) = v26;
    goto LABEL_12;
  }

  v22 = [(ICNoteEditorViewController *)self textView];
  v23 = [v22 ic_textRangeFromCharacterRange:v35];

  v24 = [(ICNoteEditorViewController *)self textView];
  v25 = [v24 textInRange:v23];

  v8 = v25;
LABEL_12:

  v27 = [(ICNoteEditorViewController *)self presentedViewController];

  if (v27)
  {
    [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
  }

  v28 = [(ICNoteEditorBaseViewController *)self note];
  v29 = [v28 mergeableString];
  v30 = [MEMORY[0x277CCAE60] valueWithRange:v35];
  v36[0] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v32 = [v29 selectionForCharacterRanges:v31 selectionAffinity:1];

  v33 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:self text:v8 url:v6 attachment:v15 stringSelection:v32 range:v35 addApproach:3];
  [(ICNoteEditorViewController *)self setLinkEditorController:v33];
}

- (void)openLinkEditorForLink:(id)a3 atRange:(_NSRange)a4 delegate:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    length = a4.length;
    location = a4.location;
    v9 = a5;
    v10 = a3;
    v11 = [(ICNoteEditorBaseViewController *)self note];
    v12 = [v11 mergeableString];
    v13 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v15 = [v12 selectionForCharacterRanges:v14 selectionAffinity:1];

    v16 = [(ICNoteEditorViewController *)self presentedViewController];

    if (v16)
    {
      [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
    }

    v17 = [v10 displayText];
    v18 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:v9 text:v17 url:0 attachment:v10 stringSelection:v15 range:location addApproach:length, 3];

    [(ICNoteEditorViewController *)self setLinkEditorController:v18];
  }
}

- (void)openLinkEditorForLinkTextItem:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 range];
    v8 = v7;
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 ic_textRangeFromCharacterRange:{v6, v8}];

    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v11 textInRange:v10];

    v13 = [(ICNoteEditorBaseViewController *)self note];
    v14 = [v13 mergeableString];
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{v6, v8}];
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v17 = [v14 selectionForCharacterRanges:v16 selectionAffinity:1];

    v18 = [(ICNoteEditorViewController *)self presentedViewController];

    if (v18)
    {
      [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
    }

    v19 = [v5 link];
    v20 = [(ICNoteEditorViewController *)self textView];
    v21 = [v20 selectedRange];
    v23 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:self text:v12 url:v19 attachment:0 stringSelection:v17 range:v21 addApproach:v22, 3];
    [(ICNoteEditorViewController *)self setLinkEditorController:v23];
  }
}

- (void)removeLinkForLinkTextItem:(id)a3
{
  if (a3)
  {
    v5 = [a3 range];

    [(ICNoteEditorViewController *)self removeLinksFromRange:v5, v4];
  }
}

- (void)insertGraph:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v7 = [v5 calculateGraphingControllerInsertionDecision];

  if (v7)
  {
    v6 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v6 performDecision:v7];
  }
}

- (void)addToGraph:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v7 = [v5 calculateGraphingControllerInsertionDecision];

  if (v7)
  {
    [v7 setPrefersExistingGraph:1];
    v6 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v6 performDecision:v7];
  }
}

- (void)createNoteLinkAttachment:(id)a3 textSelection:(id)a4 range:(_NSRange)a5 addApproach:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a4;
  v12 = MEMORY[0x277D35F28];
  v13 = a3;
  v14 = [(ICNoteEditorBaseViewController *)self note];
  v15 = [v14 managedObjectContext];
  v16 = [v12 noteWithIdentifier:v13 context:v15];

  if (v16)
  {
    v44 = a6;
    v17 = MEMORY[0x277D35EF8];
    v18 = [(ICNoteEditorBaseViewController *)self note];
    v19 = [v17 newLinkAttachmentToNote:v16 fromNote:v18 parentAttachment:0];

    v20 = [(ICNoteEditorBaseViewController *)self note];
    v21 = [v20 mergeableString];
    v22 = [v21 characterRangesForSelection:v11];
    v23 = [v22 firstObject];

    if (v23)
    {
      location = [v23 rangeValue];
      length = v24;
    }

    if (v19)
    {
      v43 = v11;
      if (!length && location)
      {
        v42 = v19;
        v25 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v26 = [(ICNoteEditorViewController *)self textView];
        v27 = [v26 textStorage];
        v28 = [v27 string];
        v29 = [v25 characterIsMember:{objc_msgSend(v28, "characterAtIndex:", location - 1)}];

        if ((v29 & 1) == 0)
        {
          v30 = [(ICNoteEditorViewController *)self textView];
          v31 = [v30 textStorage];
          v32 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
          [v31 insertAttributedString:v32 atIndex:location];

          length = 0;
          ++location;
        }

        v19 = v42;
      }

      v33 = [(ICNoteEditorViewController *)self attachmentInsertionController];
      v34 = [v33 addInlineAttachment:v19 atTextRange:{location, length}];

      [v23 rangeValue];
      if (v35)
      {
        v36 = [v23 rangeValue];
        v37 = [(ICNoteEditorViewController *)self textView];
        [v37 setSelectedRange:{v36 + 1, 0}];
      }

      [v19 updateChangeCountWithReason:@"Created note link"];
      v38 = [(ICNoteEditorBaseViewController *)self note];
      [v38 updateModificationDateAndChangeCountAndSaveImmediately];

      v39 = [(ICNoteEditorViewController *)self eventReporter];
      v40 = [(ICNoteEditorBaseViewController *)self note];
      [v39 submitAddLinkEvent:v40 addApproach:v44 contentType:1 isTokenized:1];

      [(ICNoteEditorViewController *)self startEditing];
      v11 = v43;
    }
  }

  else
  {
    v41 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v41, OS_LOG_TYPE_DEFAULT, "Attempted to create Note Link Attachment to nil Note", buf, 2u);
    }
  }
}

- (void)createLink:(id)a3 title:(id)a4 textSelection:(id)a5 range:(_NSRange)a6 addApproach:(int64_t)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v55 = a4;
  v10 = a5;
  v11 = [(ICNoteEditorBaseViewController *)self note];
  v12 = [v11 mergeableString];
  v48 = v10;
  v13 = [v12 characterRangesForSelection:v10];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v13;
  v57 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v57)
  {
    v54 = *v61;
    gotLoadHelper_x9__DDResultAttributeName(v14);
    v52 = **(v15 + 472);
    v53 = *v16;
    v51 = *MEMORY[0x277D74058];
    do
    {
      v17 = 0;
      do
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v60 + 1) + 8 * v17);
        v19 = [(ICNoteEditorViewController *)self textView];
        v20 = [v19 textStorage];
        v21 = [v20 attributesAtIndex:objc_msgSend(v18 effectiveRange:{"rangeValue"), 0}];

        v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v55];
        v23 = [v22 ic_range];
        [v22 addAttributes:v21 range:{v23, v24}];
        v25 = [v22 ic_range];
        [v22 addAttribute:v53 value:v56 range:{v25, v26}];
        v27 = [v22 ic_range];
        [v22 removeAttribute:v52 range:{v27, v28}];
        v29 = [(ICNoteEditorViewController *)self textView];
        v30 = [v29 textStorage];
        v31 = [v18 rangeValue];
        v33 = v32;
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __79__ICNoteEditorViewController_createLink_title_textSelection_range_addApproach___block_invoke;
        v58[3] = &unk_2781AC8D0;
        v58[4] = v18;
        v34 = v22;
        v59 = v34;
        [v30 enumerateAttribute:v51 inRange:v31 options:v33 usingBlock:{0, v58}];

        v35 = [(ICNoteEditorViewController *)self textView];
        v36 = [v35 textStorage];
        v37 = [v18 rangeValue];
        v39 = v38;
        v40 = [v34 copy];
        [v36 replaceCharactersInRange:v37 withAttributedString:{v39, v40}];

        [v18 rangeValue];
        if (v41)
        {
          v42 = [v18 rangeValue];
          v43 = [v34 length];
          v44 = [(ICNoteEditorViewController *)self textView];
          [v44 setSelectedRange:{v42, v43}];
        }

        ++v17;
      }

      while (v57 != v17);
      v57 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v57);
  }

  v45 = [(ICNoteEditorBaseViewController *)self note];
  [v45 updateModificationDateAndChangeCountAndSaveImmediately];

  v46 = [(ICNoteEditorViewController *)self eventReporter];
  v47 = [(ICNoteEditorBaseViewController *)self note];
  [v46 submitAddLinkEvent:v47 addApproach:a7 url:v56];

  [(ICNoteEditorViewController *)self startEditing];
}

void __79__ICNoteEditorViewController_createLink_title_textSelection_range_addApproach___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(a1 + 32);
    v9 = a2;
    v8 = [v7 rangeValue];
    [*(a1 + 40) addAttribute:*MEMORY[0x277D74058] value:v9 range:{a3 - v8, a4}];
  }
}

- (void)removeLinksFromTextSelection:(id)a3 range:(_NSRange)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v6 mergeableString];
  v8 = [v7 characterRangesForSelection:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) rangeValue];
        [(ICNoteEditorViewController *)self removeLinksFromRange:v14, v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)removeLinksFromRange:(_NSRange)a3
{
  location = a3.location;
  if (a3.length)
  {
    length = a3.length;
    v6 = [(ICNoteEditorViewController *)self textStorage];
    [v6 removeAttribute:*MEMORY[0x277D740E8] range:{location, length}];

    v7 = [(ICNoteEditorViewController *)self textStorage];
    v8 = *MEMORY[0x277D74060];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __51__ICNoteEditorViewController_removeLinksFromRange___block_invoke;
    v29[3] = &unk_2781AC5D8;
    v29[4] = self;
    [v7 enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v29}];
  }

  else
  {
    v30 = xmmword_2154BBE70;
    v9 = [(ICNoteEditorViewController *)self textStorage];
    v10 = *MEMORY[0x277D740E8];
    v11 = [(ICNoteEditorViewController *)self textStorage];
    v12 = [v9 attribute:v10 atIndex:location longestEffectiveRange:&v30 inRange:{0, objc_msgSend(v11, "length")}];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [(ICNoteEditorViewController *)self textView];
      v14 = [v13 textStorage];
      [v14 removeAttribute:v10 range:v30];
    }

    v15 = [(ICNoteEditorViewController *)self textView];
    v16 = [v15 textStorage];
    v17 = [v16 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];

    objc_opt_class();
    v18 = ICDynamicCast();
    v19 = v18;
    if (v18)
    {
      v20 = [v18 attachment];
      v21 = [(ICNoteEditorBaseViewController *)self note];
      v22 = [v21 rangeForAttachment:v20];
      v24 = v23;

      v25 = [(ICNoteEditorViewController *)self textView];
      v26 = [v25 textStorage];
      v27 = [v20 displayText];
      [v26 replaceCharactersInRange:v22 withString:{v24, v27}];
    }
  }

  v28 = [(ICNoteEditorBaseViewController *)self note];
  [v28 updateModificationDateAndChangeCountAndSaveImmediately];
}

void __51__ICNoteEditorViewController_removeLinksFromRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v14 = ICDynamicCast();

  v8 = [v14 attachment];
  v9 = [v8 typeUTI];
  v10 = [v9 isEqualToString:*MEMORY[0x277D35D50]];

  if (v10)
  {
    v11 = [*(a1 + 32) textStorage];
    v12 = [v14 attachment];
    v13 = [v12 displayText];
    [v11 replaceCharactersInRange:a3 withString:{a4, v13}];
  }
}

- (void)removeLinksFromCurrentSelection
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryResponder];

  if (v3)
  {
    objc_opt_class();
    v4 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v7 = ICDynamicCast();

    [v7 removeLinksFromCurrentSelection];
  }

  else
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    v5 = [v7 selectedRange];
    [(ICNoteEditorViewController *)self removeLinksFromRange:v5, v6];
  }
}

- (void)linkEditorDidDismiss
{
  [(ICNoteEditorViewController *)self setLinkEditorController:0];
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 isEditing];

  if ((v4 & 1) == 0)
  {

    [(ICNoteEditorViewController *)self startEditing];
  }
}

- (void)hashtagViewController:(id)a3 insertHashtagWithText:(id)a4
{
  v5 = MEMORY[0x277D35EF8];
  v6 = a4;
  v7 = [(ICNoteEditorBaseViewController *)self note];
  v15 = [v5 createHashtagAttachmentIfApplicableWithHashtagText:v6 creatingHashtagIfNecessary:1 note:v7 parentAttachment:0];

  if (v15)
  {
    v8 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 selectedRange];
    v12 = [v8 addInlineAttachment:v15 atTextRange:{v10, v11}];

    [v15 updateChangeCountWithReason:@"Created tag"];
    v13 = [(ICNoteEditorBaseViewController *)self note];
    [v13 updateChangeCountWithReason:@"Inserted tag"];

    v14 = [(ICNoteEditorBaseViewController *)self note];
    [v14 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)hashtagViewController:(id)a3 insertUnknownInlineAttachmentWithText:(id)a4
{
  v5 = MEMORY[0x277D35EF8];
  v6 = *MEMORY[0x277D35D48];
  v7 = a4;
  v8 = [v6 stringByAppendingString:@".unknown"];
  v9 = [(ICNoteEditorBaseViewController *)self note];
  v17 = [v5 createInlineAttachmentIfApplicableWithTypeUTI:v8 altText:v7 tokenContentIdentifier:v7 note:v9 parentAttachment:0];

  if (v17)
  {
    v10 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v11 selectedRange];
    v14 = [v10 addInlineAttachment:v17 atTextRange:{v12, v13}];

    [v17 updateChangeCountWithReason:@"Created unknown inline attachment"];
    v15 = [(ICNoteEditorBaseViewController *)self note];
    [v15 updateChangeCountWithReason:@"Inserted unknown inline attachment"];

    v16 = [(ICNoteEditorBaseViewController *)self note];
    [v16 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)hashtagViewController:(id)a3 insertFutureHashtagWithText:(id)a4
{
  v5 = MEMORY[0x277D35EF8];
  v6 = a4;
  v7 = [(ICNoteEditorBaseViewController *)self note];
  v15 = [v5 createHashtagAttachmentIfApplicableWithHashtagText:v6 creatingHashtagIfNecessary:1 note:v7 parentAttachment:0];

  if (v15)
  {
    [v15 requireMinimumSupportedVersionAndPropagateToChildObjects:{objc_msgSend(MEMORY[0x277D35E80], "currentNotesVersion") + 1}];
    v8 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 selectedRange];
    v12 = [v8 addInlineAttachment:v15 atTextRange:{v10, v11}];

    [v15 updateChangeCountWithReason:@"Created tag from the future"];
    v13 = [(ICNoteEditorBaseViewController *)self note];
    [v13 updateChangeCountWithReason:@"Inserted tag from the future"];

    v14 = [(ICNoteEditorBaseViewController *)self note];
    [v14 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)decreaseIndentation:(id)a3
{
  v4 = a3;
  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:-1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(ICNoteEditorViewController *)self currentWritingDirection])
    {
      v6 = 12;
    }

    else
    {
      v6 = 13;
    }

    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v7 = [(ICNoteEditorBaseViewController *)self note];
    [v8 submitNoteEditorCallOutBarButtonSelectionEventForModernNote:v7 buttonTypeValue:v6];
  }
}

- (void)increaseIndentation:(id)a3
{
  v4 = a3;
  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(ICNoteEditorViewController *)self currentWritingDirection])
    {
      v6 = 13;
    }

    else
    {
      v6 = 12;
    }

    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v7 = [(ICNoteEditorBaseViewController *)self note];
    [v8 submitNoteEditorCallOutBarButtonSelectionEventForModernNote:v7 buttonTypeValue:v6];
  }
}

- (int64_t)indentAmountIncreasing:(BOOL)a3
{
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== !a3)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)canIndentLeft
{
  v3 = [(ICNoteEditorViewController *)self indentAmountIncreasing:0];

  return [(ICNoteEditorViewController *)self canIndentByAmount:v3];
}

- (BOOL)canIndentRight
{
  v3 = [(ICNoteEditorViewController *)self indentAmountIncreasing:1];

  return [(ICNoteEditorViewController *)self canIndentByAmount:v3];
}

- (void)indentSelectionIfPossibleByAmount:(int64_t)a3
{
  if ([(ICNoteEditorViewController *)self canIndentByAmount:?])
  {
    v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

    if (v5)
    {
      v6 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
      [v6 indentByamount:a3];
    }

    else
    {
      v7 = [(ICNoteEditorViewController *)self textView];
      [v7 ic_indentByAmount:a3];

      v6 = [(ICNoteEditorViewController *)self textView];
      [(ICNoteEditorViewController *)self textViewDidChange:v6];
    }

    if (a3 > 0)
    {
      v8 = 13;
    }

    else
    {
      v8 = 14;
    }

    v9 = [(ICNoteEditorViewController *)self eventReporter];
    v10 = [(ICNoteEditorBaseViewController *)self note];
    [v9 submitStyleFormatEventForModernNote:v10 styleTypeValue:v8];
  }

  dispatchMainAfterDelay();
}

void __64__ICNoteEditorViewController_indentSelectionIfPossibleByAmount___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textView];
  [v1 icaxSpeakIndentationLevelForCurrentSelectedRange];
}

- (BOOL)canIndentByAmount:(int64_t)a3
{
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 isEditable];

  if (!v6)
  {
    return 0;
  }

  v7 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v7)
  {
    v8 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    v9 = [v8 canIndentByamount:a3];
  }

  else
  {
    v8 = [(ICNoteEditorViewController *)self textView];
    v9 = [v8 ic_canIndentByDelta:a3];
  }

  v10 = v9;

  return v10;
}

- (void)ic_alignLeft:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v5 setSelectionAlignment:0];
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    [v5 ic_setTextAlignmentForCurrentSelection:0];
  }
}

- (void)ic_alignCenter:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v5 setSelectionAlignment:1];
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    [v5 ic_setTextAlignmentForCurrentSelection:1];
  }
}

- (void)ic_alignRight:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [v5 setSelectionAlignment:2];
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    [v5 ic_setTextAlignmentForCurrentSelection:2];
  }
}

- (void)handleLeftOrRightSwipe:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [(ICNoteEditorViewController *)self textController];
  v7 = [(ICNoteEditorBaseViewController *)self note];
  if ([v7 isEditable] && objc_msgSend(v4, "state") == 3)
  {
    v8 = [(ICNoteEditorViewController *)self attributionSidebarController];
    v9 = [v8 attributionSidebarVisibility];

    if (!v9)
    {
      [v4 locationInView:v5];
      v10 = [(ICNoteEditorViewController *)self rangeForIndentationGestureAtPoint:?];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v10;
        v13 = v11;
        if ([(ICNoteEditorViewController *)self isSwipeOnTodoItem:v4])
        {
          v14 = [v5 textStorage];
          [v6 paragraphStyleForRange:v12 inTextView:v13 inTextStorage:{v5, v14}];

          if (ICTTNamedStyleIsList())
          {
            if ([v4 direction] == 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = -1;
            }

            v16 = [v5 textStorage];
            v17 = [v6 writingDirectionForRange:v12 inTextView:v13 inTextStorage:{v5, v16}];

            if (v17 == 1)
            {
              v18 = -v15;
            }

            else
            {
              v18 = v15;
            }

            v19 = [MEMORY[0x277CCAE60] valueWithRange:{v12, v13}];
            v30[0] = v19;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
            v21 = [v6 canIndentTextView:v5 byDelta:v18 forRanges:v20];

            if (v21)
            {
              v22 = MEMORY[0x277CBEBB8];
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __53__ICNoteEditorViewController_handleLeftOrRightSwipe___block_invoke;
              v24[3] = &unk_2781AD2A0;
              v24[4] = self;
              v25 = v5;
              v27 = v12;
              v28 = v13;
              v26 = v6;
              v29 = v18;
              v23 = [v22 scheduledTimerWithTimeInterval:0 repeats:v24 block:0.1];
            }
          }
        }
      }
    }
  }

  else
  {
  }
}

void __53__ICNoteEditorViewController_handleLeftOrRightSwipe___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributionSidebarController];
  v3 = [v2 attributionSidebarVisibility];

  if (!v3)
  {
    v4 = [*(a1 + 32) attributionSidebarController];
    [v4 cancelActiveGestures];

    [*(a1 + 40) selectedRange];
    if ([*(a1 + 32) isEditing])
    {
      v5 = TSURangeEnclosesRange();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) TTTextStorage];
    [v7 indentRange:*(a1 + 56) byAmount:*(a1 + 64) inTextStorage:v6 textView:v8 forceUpdateAttributes:{*(a1 + 40), v5}];

    v9 = [*(a1 + 32) note];
    [v9 updateModificationDateAndChangeCountAndSaveImmediately];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self textView];
    v7 = [(ICNoteEditorViewController *)self textController];
    v8 = [(ICNoteEditorBaseViewController *)self note];
    if ([v8 isEditable])
    {
      v9 = [(ICNoteEditorViewController *)self attributionSidebarController];
      v10 = [v9 attributionSidebarVisibility];

      if (!v10)
      {
        [v5 locationInView:v6];
        v11 = [(ICNoteEditorViewController *)self rangeForIndentationGestureAtPoint:?];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v11;
          v14 = v12;
          if ([(ICNoteEditorViewController *)self isSwipeOnTodoItem:v5])
          {
            v15 = [v6 textStorage];
            [v7 paragraphStyleForRange:v13 inTextView:v14 inTextStorage:{v6, v15}];

            if (ICTTNamedStyleIsList())
            {
              if ([v5 direction] == 1)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              v17 = [v6 textStorage];
              v18 = [v7 writingDirectionForRange:v13 inTextView:v14 inTextStorage:{v6, v17}];

              if (v18 == 1)
              {
                v19 = -v16;
              }

              else
              {
                v19 = v16;
              }

              v20 = [MEMORY[0x277CCAE60] valueWithRange:{v13, v14}];
              v24[0] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
              v22 = [v7 canIndentTextView:v6 byDelta:v19 forRanges:v21];

              goto LABEL_17;
            }
          }
        }
      }
    }

    else
    {
    }

    v22 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v22 = 1;
LABEL_18:

  return v22;
}

- (_NSRange)rangeForIndentationGestureAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 characterRangeAtPoint:{x, y}];

  if (v7)
  {
    v8 = [(ICNoteEditorViewController *)self charRangeForSwipeTextRange:v7];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (BOOL)isPositionOnTodoItem:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [(ICNoteEditorViewController *)self textController];
  v8 = [v6 characterRangeAtPoint:{x, y}];
  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self charRangeForSwipeTextRange:v8];
    v11 = v10;
    v12 = [v6 textStorage];
    v13 = [v7 writingDirectionForRange:v9 inTextView:v11 inTextStorage:{v6, v12}];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v14 = [v6 textLayoutManager];
      v15 = [v6 textLayoutManager];
      v16 = [v15 documentRange];
      [v16 location];
      v17 = v33 = v13;
      v18 = [v14 locationFromLocation:v17 withOffset:v9];

      v19 = [v6 icTextLayoutManager];
      v20 = [v19 textLayoutFragmentForLocation:v18];
      [v20 layoutFragmentFrame];
      v22 = v21;
      v24 = v23;

      v13 = v33;
    }

    else
    {
      v18 = [v6 layoutManager];
      [v18 lineFragmentUsedRectForGlyphAtIndex:v9 effectiveRange:0];
      v22 = v26;
      v24 = v27;
    }

    [v6 textContainerInset];
    [v6 textContainerInset];
    TSDAddPoints();
    v35.origin.x = v28 - dbl_2154BBFC0[v13 == 1];
    v35.size.width = v22 + 286.0;
    v35.origin.y = v29 + -22.0;
    v35.size.height = v24 + 44.0;
    v34.x = x;
    v34.y = y;
    v30 = CGRectContainsPoint(v35, v34);
    v31 = [v6 textStorage];
    [v7 paragraphStyleForRange:v9 inTextView:v11 inTextStorage:{v6, v31}];

    v25 = v30 & ICTTNamedStyleIsList();
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  return v25;
}

- (BOOL)isSwipeOnTodoItem:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  return [(ICNoteEditorViewController *)self isPositionOnTodoItem:v7, v9];
}

- (_NSRange)charRangeForSwipeTextRange:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 ic_characterRangeFromTextRange:v4];
  v8 = v7;

  if (v8 == 1)
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 textStorage];
    v11 = [v10 attributedSubstringFromRange:{v6, 1}];
    v12 = [v11 string];

    v13 = [v12 characterAtIndex:0];
    v14 = [MEMORY[0x277CCA900] newlineCharacterSet];
    LODWORD(v13) = [v14 characterIsMember:v13];

    if (v13)
    {
      v15 = [(ICNoteEditorViewController *)self textView];
      v16 = [v15 textStorage];
      [v16 ic_range];
      v6 = TSUClampRange();
      v8 = v17;
    }

    else
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v19 = v8;
  result.length = v19;
  result.location = v18;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(ICNoteEditorViewController *)self splitViewController];
    v11 = [v10 displayMode];

    if (v11 == 1)
    {
      v12 = [(ICNoteEditorViewController *)self view];
      [v7 locationInView:v12];
      v14 = v13 > 44.0;
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_5;
  }

  v15 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v16 = [v15 panGestureRecognizer];

  if (v16 != v6)
  {
LABEL_5:
    v14 = 1;
    goto LABEL_22;
  }

  v12 = [v7 view];
  NSClassFromString(&cfstr_Icpaperdocumen.isa);
  if (v12)
  {
    while (1)
    {
      v17 = [(ICNoteEditorViewController *)self textView];

      if (v12 == v17)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v18 = [v12 superview];

      v12 = v18;
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    v14 = 0;
    goto LABEL_21;
  }

LABEL_11:
  if (![(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    v12 = [(ICNoteEditorViewController *)self textView];
    v19 = [v12 ic_pkSelectionInteraction];
    if ([v19 hasCurrentSelection])
    {
      v14 = 0;
    }

    else
    {
      v20 = [(ICNoteEditorViewController *)self textView];
      v21 = [v20 ic_pkSelectionInteraction];
      v14 = ([v21 hasStrokesOrElementsSelection] & 1) == 0 && objc_msgSend(v7, "type") == 0;
    }

    goto LABEL_21;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v9 = [v8 panGestureRecognizer];

  if (v9 != v7)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v10 = [v6 view];
  v11 = [(ICNoteEditorViewController *)self textView];
  if (v10 == v11)
  {
    goto LABEL_10;
  }

  v12 = [v6 view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v13 = [v6 view];
  v14 = [v13 panGestureRecognizer];

  if (v14 != v6)
  {
    goto LABEL_11;
  }

  v10 = [v6 view];
  v11 = v6;
  [v11 velocityInView:v10];
  if (v15 <= 0.0)
  {
LABEL_10:

LABEL_11:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = [v6 view];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    v21 = [v6 className];
    v22 = [v21 isEqualToString:@"UITextRangeAdjustmentGestureRecognizer"];

    if ((isKindOfClass & 1) == 0)
    {
      v17 = (v20 | v22) ^ 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v10 contentOffset];
  v17 = v16 <= 0.0;
  if (v16 <= 0.0)
  {
    [v11 setState:4];
    [v10 contentOffset];
    [v10 setContentOffset:1 animated:0.0];
  }

LABEL_13:
  return v17 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
  if ([v8 containsObject:v6])
  {

LABEL_5:
    objc_opt_class();
    v12 = ICDynamicCast();
    v11 = v12 != 0;

    goto LABEL_6;
  }

  v9 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v10 = [v9 panGestureRecognizer];

  if (v10 == v6)
  {
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorViewController *)self navigationController];
  v9 = [v8 interactiveContentPopGestureRecognizer];

  if (v9 == v7)
  {
    v11 = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
    if ([v11 containsObject:v6])
    {
      v10 = 1;
    }

    else
    {
      v12 = [(ICNoteEditorViewController *)self attributionSidebarController];
      v13 = [v12 panGestureRecognizer];
      v10 = v13 == v6;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 textStorage];

  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = [v6 isDropping] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v8 = [(ICNoteEditorBaseViewController *)self note];
  v9 = [v8 isEditable];

  if ((v9 & 1) == 0)
  {
    v10 = [(ICNoteEditorBaseViewController *)self note];
    if ([v10 isDeletedOrInTrash])
    {
      v11 = [(ICNoteEditorViewController *)self isTogglingLock];

      if (!v11)
      {
        [(ICNoteEditorViewController *)self showRecoverNoteAlert];
      }
    }

    else
    {
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v22 = a3;
  [MEMORY[0x277D35E88] prefetchHashtagDisplayTextsFromOtherApps];
  [(ICNoteEditorViewController *)self setEditing:1];
  v4 = [(ICNoteEditorBaseViewController *)self note];

  if (v4)
  {
    v5 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [v5 requestFire];
  }

  else
  {
    v6 = MEMORY[0x277D35F28];
    v7 = [(ICNoteEditorViewController *)self noteContext];
    v8 = [v7 managedObjectContext];
    v9 = [v6 newEmptyNoteInContext:v8];
    [(ICNoteEditorViewController *)self setNote:v9];

    [(ICNoteEditorViewController *)self performSelector:sel_startEditing withObject:0 afterDelay:0.0];
  }

  v10 = [(ICNoteEditorViewController *)self textController];
  v11 = [v22 selectedRange];
  v13 = v12;
  v14 = [(ICNoteEditorViewController *)self isLoadingStyleSelectorInputView];
  v15 = [v22 typingAttributes];
  v16 = [(ICNoteEditorViewController *)self textStorage];
  v17 = [v10 typingAttributesForRange:v11 forSelectionChange:v13 currentTypingAttributes:!v14 inTextStorage:{v15, v16}];
  [v22 setTypingAttributes:v17];

  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverrideToRestore];
  if (v18 > 0.0)
  {
    [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverrideToRestore];
    [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:?];
    [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:0.0];
  }

  [(ICNoteEditorViewController *)self setInkPickerState:2];
  v19 = [(ICNoteEditorViewController *)self textView];
  v20 = [v19 ink];
  v21 = [v20 _isHandwritingInk];

  if ((v21 & 1) == 0)
  {
    [(ICNoteEditorViewController *)self hideInkPicker];
  }

  [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForDidBeginEditing:v22];
  [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_didEditorBeginEditing];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v10 = a3;
  v4 = [(ICNoteEditorViewController *)self auxiliaryResponder];

  if (!v4)
  {
    if ([(ICNoteEditorViewController *)self inkPickerState]== 1)
    {
      [(ICNoteEditorViewController *)self showInkPicker:1 animated:1];
    }

    else
    {
      [(ICNoteEditorViewController *)self hideInkPicker];
    }

    [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
    [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForDidEndEditing:v10];
    v5 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v5 discardPreviewedResult];

    v6 = [(ICNoteEditorViewController *)self calculateScrubberController];

    if (v6)
    {
      v7 = [(ICNoteEditorViewController *)self calculateScrubberController];
      [v7 hideScrubber];
    }

    [(ICNoteEditorViewController *)self setEditing:0];
    v8 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [v8 requestFire];

    [(ICNoteEditorViewController *)self didEndEditingNote];
    v9 = [(ICNoteEditorViewController *)self textView];
    [v9 setEditable:0];

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  }

  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  [(ICNoteEditorViewController *)self donateEditingIntentIfNecessary];
}

- (double)textViewScrollPosition
{
  v2 = [(ICNoteEditorViewController *)self textView];
  [v2 contentOffset];
  v4 = v3;

  return v4;
}

- (_NSRange)textViewVisibleRange
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 ic_visibleRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)restoreTextViewScrollPosition:(double)a3
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v5 = [(ICNoteEditorViewController *)self textView];
    v6 = [v5 layoutManager];
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 textContainer];
    [v6 ensureLayoutForTextContainer:v8];
  }

  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 contentOffset];
  v11 = v10;

  v12 = [(ICNoteEditorViewController *)self textView];
  [v12 setClippedContentOffset:{v11, a3}];
}

- (void)restoreTextViewVisibleRange:(_NSRange)a3 animated:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    v8 = [v7 layoutManager];
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 textContainer];
    [v8 ensureLayoutForTextContainer:v10];
  }

  v11 = [(ICNoteEditorViewController *)self textView];
  [v11 ic_scrollRangeToVisible:location consideringInsets:length animated:{1, 0}];
}

- (BOOL)wantsToRemainFirstResponder
{
  if (-[ICNoteEditorViewController isViewLoaded](self, "isViewLoaded") && ((-[ICNoteEditorViewController isEditing](self, "isEditing") & 1) != 0 || (-[ICNoteEditorViewController textView](self, "textView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 selectedTextRange], v4 = objc_claimAutoreleasedReturnValue(), v3, v4) && (v5 = objc_msgSend(v4, "isEmpty"), v4, !v5)) || (-[ICNoteEditorViewController textView](self, "textView"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "findInteraction"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isFindNavigatorVisible"), v7, v6, (v8 & 1) != 0))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = [(ICNoteEditorViewController *)self isInkPickerShowing];
    if (v9)
    {

      LOBYTE(v9) = [(ICNoteEditorViewController *)self ic_isViewVisible];
    }
  }

  return v9;
}

- (ICTTTextStorage)textStorage
{
  objc_opt_class();
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 textStorage];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)textViewDidChange:(id)a3
{
  v30 = a3;
  v4 = [(ICNoteEditorViewController *)self textStorage];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 textStorageWithoutCreating];

  if (v4 != v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"The text storage set on the editor does not match the text storage on the note"];
  }

  v7 = [(ICNoteEditorViewController *)self ic_topViewController];
  v8 = [v7 modalPresentationStyle];

  if (v8 == 7)
  {
    v9 = [(ICNoteEditorViewController *)self viewControllerManager];
    [v9 dismissOverlayContent];
  }

  [v30 updateTextViewForDidChange];
  [(ICNoteEditorViewController *)self setIsSelecting:0];
  [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  v10 = [(ICNoteEditorBaseViewController *)self note];
  [v10 updateModificationDateAndChangeCountAndSaveAfterDelay];

  v11 = [(ICNoteEditorViewController *)self textStorage];
  v12 = [v11 isEditingOrConvertingMarkedText:0];

  if (![(ICNoteEditorViewController *)self previouslyHadMarkedText])
  {
    if (v12)
    {
      v13 = [(ICNoteEditorViewController *)self textView];
      v14 = [v13 markedTextRange];

      if (v14)
      {
        v15 = [(ICNoteEditorViewController *)self textView];
        v16 = [(ICNoteEditorViewController *)self textView];
        v17 = [v16 markedTextRange];
        v18 = [v15 ic_characterRangeFromTextRange:v17];
        v20 = v19;

        v21 = [(ICNoteEditorViewController *)self textController];
        v22 = [(ICNoteEditorViewController *)self textView];
        v23 = [v22 TTTextStorage];
        v24 = [(ICNoteEditorViewController *)self textView];
        [v21 updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v18 textStorage:v20 textView:{v23, v24}];
      }
    }
  }

  v25 = [(ICNoteEditorViewController *)self calculateScrubberController];
  [v25 hideIfNotScrubbing];

  [(ICNoteEditorViewController *)self setPreviouslyHadMarkedText:v12];
  [(ICNoteEditorViewController *)self setHasMadeEdits];
  v26 = [(ICNoteEditorBaseViewController *)self note];
  v27 = [v26 calculateDocumentController];
  [v27 scheduleUpdateAffectingChangeCounts:1 isHighPriority:0];

  v28 = [(ICNoteEditorViewController *)self inkPaletteController];

  if (v28)
  {
    [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_textViewDidChange];
  }

  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  [v29 postNotificationName:@"ICNoteEditorViewControllerDidEditNoteNotification" object:self];
}

- (void)setHasMadeEdits
{
  v3 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  if ([v3 isFirstResponder])
  {
    objc_opt_class();
    v4 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v5 = ICDynamicCast();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [(ICNoteEditorViewController *)self textView];
LABEL_6:
  [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForTextViewDidChange:v5];

  if (![(ICNoteEditorViewController *)self hasMadeEdits])
  {
    [(ICNoteEditorViewController *)self setHasMadeEdits:1];

    [(ICNoteEditorViewController *)self updateBarButtons];
  }
}

- (void)updateStyleSelectorStateIfNeededIgnoreTypingAttributes:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self noteFormattingController];
  v6 = [v5 popoverPresentationController];

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self noteFormattingController];
    v8 = [v7 popoverPresentationController];
    v9 = [v8 presentingViewController];

    if (!v9)
    {
LABEL_5:
      v10 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      v11 = [v10 usesStyleMenu];

      if (!v11)
      {
        return;
      }
    }
  }

  else if (![(ICNoteEditorViewController *)self styleSelectorInputViewShowing])
  {
    goto LABEL_5;
  }

  v12 = [(ICNoteEditorViewController *)self noteFormattingController];
  [v12 updateWithDataSource:self ignoreTypingAttributes:v3];
}

- (void)selectDrawingAttachmentIfNeeded:(id)a3
{
  v12 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  [v4 setTextSelectionHidden:0];
  v5 = [(ICNoteEditorViewController *)self selectedCanvasAttachment];
  v6 = [v12 window];
  [v5 setViewSelected:0 inWindow:v6];

  [v12 selectedRange];
  if (v7 == 1)
  {
    v8 = [v12 textStorage];
    v9 = [v8 attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(v12 effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v10 = ICDynamicCast();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && v10)
    {
      [(ICNoteEditorViewController *)self setSelectedCanvasAttachment:v10];
      v11 = [v12 window];
      [v10 setViewSelected:1 inWindow:v11];

      [v4 setTextSelectionHidden:1];
    }
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v59[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 selectedRange];
  v7 = v6;
  if (v5 != [(ICNoteEditorViewController *)self lastSelectedRange]|| v7 != v8)
  {
    v9 = [MEMORY[0x277D35E50] sharedState];
    [v9 extendDeauthenticationTimer];

    if (![(ICNoteEditorViewController *)self isSelecting])
    {
      [v4 selectedRange];
      if (v10)
      {
        [(ICNoteEditorViewController *)self setIsSelecting:1];
        [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
      }
    }

    if (![(ICNoteEditorViewController *)self isSettingSelection])
    {
      [(ICNoteEditorViewController *)self setIsSettingSelection:1];
      v11 = [(ICNoteEditorViewController *)self textController];
      v12 = [v4 selectedRange];
      v14 = v13;
      v15 = [v4 typingAttributes];
      v16 = [(ICNoteEditorViewController *)self textStorage];
      v17 = [v11 typingAttributesForRange:v12 forSelectionChange:v14 currentTypingAttributes:1 inTextStorage:{v15, v16}];
      [v4 setTypingAttributes:v17];

      [(ICNoteEditorViewController *)self setIsSettingSelection:0];
    }

    v18 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [v18 requestFire];

    [(ICNoteEditorViewController *)self updateBarButtons];
    [(ICNoteEditorViewController *)self selectDrawingAttachmentIfNeeded:v4];
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v19 = [(ICNoteEditorViewController *)self textController];
      v20 = [v4 textStorage];
      v21 = MEMORY[0x277CCAE60];
      v22 = [v4 selectedRange];
      v24 = [v21 valueWithRange:{v22, v23}];
      v59[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
      v26 = [v4 layoutManager];
      v27 = [(ICNoteEditorViewController *)self textView];
      [v19 updateAttachmentsSelectionStateInTextStorage:v20 forSelectedRanges:v25 layoutManager:v26 textView:v27];
    }

    [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
    v28 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [v28 updateSelectionInTextView:v4];

    v29 = [(ICNoteEditorViewController *)self textView];
    [v29 icaxTextDidChangeSelection];

    v30 = [v4 selectedRange];
    [(ICNoteEditorViewController *)self setLastSelectedRange:v30, v31];
    objc_opt_class();
    v32 = [(ICNoteEditorViewController *)self textView];
    v33 = [v32 textStorage];
    v34 = ICDynamicCast();

    v35 = [(ICNoteEditorViewController *)self textView];
    v36 = [(ICNoteEditorViewController *)self hashtagController];
    [v36 setHashtagKeyboardDelegate:v35];

    v37 = [(ICNoteEditorViewController *)self textView];
    v38 = [(ICNoteEditorViewController *)self mentionsController];
    [v38 setMentionsKeyboardDelegate:v37];

    v39 = [(ICNoteEditorViewController *)self mentionsController];
    v40 = [(ICNoteEditorViewController *)self lastSelectedRange];
    v42 = v41;
    v43 = [(ICNoteEditorBaseViewController *)self note];
    v44 = [(ICNoteEditorViewController *)self textView];
    v45 = [(ICNoteEditorViewController *)self textView];
    BYTE1(v57) = [v45 languageHasSpaces];
    LOBYTE(v57) = 0;
    LOBYTE(v40) = [v39 checkForMentionInEditedRange:v40 ofTextStorage:v42 note:v34 textView:v43 allowAutoExplicitMention:v44 isEndingEditing:0 languageHasSpaces:v57 parentAttachment:0];

    if ((v40 & 1) == 0)
    {
      v46 = [(ICNoteEditorViewController *)self hashtagController];
      v47 = [(ICNoteEditorViewController *)self lastSelectedRange];
      v49 = v48;
      v50 = [(ICNoteEditorBaseViewController *)self note];
      v51 = [(ICNoteEditorViewController *)self textView];
      v52 = [(ICNoteEditorViewController *)self textView];
      BYTE1(v58) = [v52 languageHasSpaces];
      LOBYTE(v58) = 0;
      [v46 checkForHashtagInEditedRange:v47 ofTextStorage:v49 note:v34 textView:v50 allowAutoExplicitHashtag:v51 isEndingEditing:0 languageHasSpaces:v58 parentAttachment:0];
    }

    v53 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v53 setDelegate:self];

    v54 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v54 setLinkDelegate:self];

    v55 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v55 presentLinkAcceleratorIfNecessaryWithCompletionHandler:&__block_literal_global_1013];

    v56 = [MEMORY[0x277CCAB98] defaultCenter];
    [v56 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:self];
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = a3;
  v9 = a5;
  v10 = [(ICNoteEditorBaseViewController *)self note];

  if (!v10)
  {
    goto LABEL_25;
  }

  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v11 isInsertingTextFromKeyboardInput];

    if (v12)
    {
      if ([v9 isEqualToString:@"\t"])
      {
        if ([MEMORY[0x277D75658] ic_isShiftKeyPressed])
        {
          [(ICNoteEditorViewController *)self shiftTab:0];
        }

        else
        {
          [(ICNoteEditorViewController *)self tab:0];
        }

        goto LABEL_25;
      }

      if ([v9 isEqualToString:@"\n"] && objc_msgSend(MEMORY[0x277D75658], "ic_isShiftKeyPressed"))
      {
        [(ICNoteEditorViewController *)self shiftReturn:0];
LABEL_25:
        v29 = 0;
        goto LABEL_26;
      }
    }
  }

  v13 = [(ICNoteEditorBaseViewController *)self note];
  v14 = [v13 textStorage];
  v15 = [v14 length];
  v16 = [v9 length];

  if ([v9 length] > length)
  {
    v17 = v15 - length;
    v18 = [(ICNoteEditorBaseViewController *)self note];
    v19 = [v18 allowsNewTextLength:v17 + v16];

    if ((v19 & 1) == 0)
    {
      [(ICNoteEditorViewController *)self warnUserNoteLengthExceeded];
      goto LABEL_25;
    }
  }

  if ([v9 isEqualToString:@"\n"])
  {
    v20 = [(ICNoteEditorViewController *)self textController];
    v21 = [v20 insertNewlineForSpecialCasesInTextView:v8];

    if (v21)
    {
      [(ICNoteEditorViewController *)self updateBarButtons];
      goto LABEL_25;
    }
  }

  v22 = [(ICNoteEditorViewController *)self textView];
  if ([v22 isInsertingTextFromKeyboardInput])
  {
    v23 = [(ICNoteEditorBaseViewController *)self note];
    if ([v23 isEmpty])
    {
      v24 = [v9 length];

      if (v24 >= 0x41)
      {
        v25 = [(ICNoteEditorViewController *)self textView];
        v26 = [v25 typingAttributes];
        v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
        v28 = [v27 style];

        if (v28 <= 2)
        {
          [(ICNoteEditorViewController *)self setCurrentTextStyle:3];
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  v29 = 1;
LABEL_26:

  return v29;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = a3;
  v9 = a4;
  IsExtension = _UIApplicationIsExtension();
  if (a6)
  {
    v11 = 0;
  }

  else
  {
    v11 = IsExtension;
  }

  if (v11 == 1)
  {
    [ICExtensionSafeAPIShims openURL:v9 originatingView:v8 completionHandler:0];
  }

  return v11 ^ 1;
}

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 contentType])
  {
    goto LABEL_19;
  }

  v9 = [(ICNoteEditorBaseViewController *)self note];
  if (![v9 isSharedReadOnly])
  {
    v10 = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];

    if (v10)
    {
      goto LABEL_19;
    }

    v11 = [v8 children];
    v12 = [v11 mutableCopy];

    v13 = objc_alloc(MEMORY[0x277D36808]);
    v14 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v15 = [v13 initWithInsertionController:v14];

    v16 = &off_2154BB000;
    if (!-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper") && [v15 canConvertLinkAtLocationToAttachment:{objc_msgSend(v7, "range")}])
    {
      v17 = MEMORY[0x277D750C8];
      v18 = [MEMORY[0x277D36808] convertLinkToAttachmentActionTitle];
      v19 = [MEMORY[0x277D36808] convertLinkToAttachmentSystemImageName];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke;
      v73[3] = &unk_2781AD2C8;
      v73[4] = self;
      v74 = v15;
      v75 = v7;
      v20 = [v17 ic_actionWithTitle:v18 imageName:v19 handler:v73];

      v16 = &off_2154BB000;
      [v12 addObject:v20];
    }

    v63 = v15;
    v21 = MEMORY[0x277D750C8];
    [MEMORY[0x277CCA8D8] mainBundle];
    v22 = v64 = v12;
    v23 = [v22 localizedStringForKey:@"Edit Link" value:&stru_282757698 table:0];
    v67 = MEMORY[0x277D85DD0];
    v68 = *(v16 + 457);
    v24 = v68;
    v69 = __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke_3;
    v70 = &unk_2781AD2F0;
    v71 = self;
    v25 = v7;
    v72 = v25;
    v26 = [v21 ic_actionWithTitle:v23 imageName:@"pencil" handler:&v67];

    v62 = v26;
    [v64 addObject:v26];
    v27 = MEMORY[0x277D750C8];
    v28 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [v28 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = v24;
    v65[2] = __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke_4;
    v65[3] = &unk_2781AD2F0;
    v65[4] = self;
    v30 = v25;
    v66 = v30;
    v31 = [v27 ic_actionWithTitle:v29 imageName:@"xmark.circle" handler:v65];

    v61 = v31;
    [v64 addObject:v31];
    v32 = MEMORY[0x277D75710];
    v33 = [v64 copy];
    v34 = [v32 menuWithChildren:v33];

    v35 = [v30 link];
    v36 = [v35 absoluteString];
    v37 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    v60 = v37;
    v38 = [MEMORY[0x277D35DF0] predicateForNotesMentionedInURL:v37];
    v39 = [MEMORY[0x277D35F30] sharedContext];
    v40 = v39;
    if (v38 && v39)
    {
      v59 = v34;
      v41 = MEMORY[0x277D35F28];
      v42 = [v39 managedObjectContext];
      v43 = [v41 notesMatchingPredicate:v38 context:v42];

      v44 = [v43 firstObject];
      if (!v44 || ([(ICNoteEditorViewController *)self notePreviewView:v44], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {

        v51 = 1;
        v56 = v63;
        v34 = v59;
        goto LABEL_18;
      }

      v46 = v45;
      v47 = objc_alloc(MEMORY[0x277D75C18]);
      v48 = [v46 view];
      v49 = [v47 initWithView:v48];

      v50 = v49;
      v58 = v46;
      v34 = v59;
      self = [MEMORY[0x277D75C10] configurationWithPreview:v49 menu:v59];

      v51 = 0;
      v43 = v58;
    }

    else
    {
      v52 = objc_alloc(MEMORY[0x277CCACE0]);
      v53 = [v30 link];
      v43 = [v52 initWithURL:v53 resolvingAgainstBaseURL:0];

      v54 = [v43 scheme];
      self = [v54 isEqualToString:@"x-apple-data-detectors"];

      if (self)
      {
        v55 = [MEMORY[0x277D75C10] configurationWithMenu:v8];
        v51 = 1;
      }

      else
      {
        self = [MEMORY[0x277D75C10] configurationWithMenu:v34];
        v51 = 0;
      }
    }

    v56 = v63;
LABEL_18:

    if (!v51)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_19:
  self = [MEMORY[0x277D75C10] configurationWithMenu:v8];
LABEL_20:

  return self;
}

void __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke(id *a1)
{
  v2 = [a1[4] note];
  v3 = [v2 canAddAttachment];

  v4 = a1[4];
  if (v3)
  {
    v5 = [v4 textView];
    [v5 unmarkText];

    v6 = a1[5];
    v7 = a1[6];
    dispatchMainAfterDelay();
  }

  else
  {

    [v4 warnUserAttachmentLimitExceeded];
  }
}

uint64_t __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) range];

  return [v1 convertLinkAtLocationToAttachment:v2];
}

- (void)textViewWritingToolsWillBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = ICDynamicCast();

  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 documentMergeController];
  [v6 beginBlockingMergeForReason:7 textView:v11];

  v7 = [v11 TTTextStorage];
  [v7 setIsEditingViaWritingTools:1];

  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v11 TTTextStorage];
  [v9 setWritingToolsSessionUUID:v8];

  v10 = [v11 TTTextStorage];
  [v10 breakUndoCoalescing];
}

- (void)textViewWritingToolsDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v13 = ICDynamicCast();

  v5 = [v13 TTTextStorage];
  [v5 setIsEditingViaWritingTools:0];

  v6 = [v13 TTTextStorage];
  [v6 setWritingToolsSessionUUID:0];

  v7 = [v13 TTTextStorage];
  [v7 breakUndoCoalescing];

  v8 = [(ICNoteEditorBaseViewController *)self note];
  [v8 save];

  v9 = [(ICNoteEditorBaseViewController *)self note];
  v10 = [v9 documentMergeController];
  [v10 endBlockingMergeForReason:7 textView:v13];

  v11 = [(ICNoteEditorBaseViewController *)self note];
  v12 = [v11 calculateDocumentController];
  [v12 updateHighlights];
}

- (id)textView:(id)a3 writingToolsIgnoredRangesInEnclosingRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  v9 = [v8 TTTextStorage];

  if (v9)
  {
    v10 = [(ICNoteEditorViewController *)self textController];
    v11 = [v8 TTTextStorage];
    v12 = [(ICNoteEditorBaseViewController *)self note];
    v13 = [v10 writingToolsIgnoredRangesForTextStorage:v11 inEnclosingRange:location note:{length, v12}];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)_textViewWillBeginUndoCoalescingForWritingTools:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v4 = [v5 TTTextStorage];
  [v4 setIsUndoCoalescingForWritingTools:1];
}

- (void)_textViewDidEndUndoCoalescingForWritingTools:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v4 = [v5 TTTextStorage];
  [v4 setIsUndoCoalescingForWritingTools:0];
}

- (BOOL)allowsNewTextLength:(unint64_t)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  LOBYTE(a3) = [v4 allowsNewTextLength:a3];

  return a3;
}

- (void)didInvokeAnalyticsCalloutBarButtonActionOfType:(int64_t)a3
{
  v5 = [(ICNoteEditorViewController *)self eventReporter];
  v6 = [(ICNoteEditorBaseViewController *)self note];
  [v5 submitNoteEditorCallOutBarButtonSelectionEventForModernNote:v6 buttonTypeValue:a3];

  if ((a3 - 6) <= 3)
  {
    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v7 = [(ICNoteEditorBaseViewController *)self note];
    [v8 submitStyleFormatEventForModernNote:v7 styleTypeValue:a3 + 3];
  }
}

- (void)didInvokeAnalyticsChecklistActionChecked:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:v3];
}

- (void)didInvokePasteWithAttributedString:(id)a3
{
  v4 = *MEMORY[0x277D740E8];
  v5 = a3;
  v6 = [v5 ic_range];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke;
  v12[3] = &unk_2781AC5D8;
  v12[4] = self;
  [v5 enumerateAttribute:v4 inRange:v6 options:v7 usingBlock:{0, v12}];
  v8 = *MEMORY[0x277D74060];
  v9 = [v5 ic_range];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke_2;
  v11[3] = &unk_2781AC5D8;
  v11[4] = self;
  [v5 enumerateAttribute:v8 inRange:v9 options:v10 usingBlock:{0, v11}];
}

void __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v3 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  v4 = v3;
  if (v3)
  {
    v5 = [*(a1 + 32) eventReporter];
    v6 = [*(a1 + 32) note];
    [v5 submitAddLinkEvent:v6 addApproach:1 url:v4];
  }

LABEL_7:
}

void __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  if (v6)
  {
    v4 = [*(a1 + 32) eventReporter];
    v5 = [*(a1 + 32) note];
    [v4 submitAddLinkEvent:v5 addApproach:1 contentType:1 isTokenized:1];
  }
}

- (BOOL)handleTapGestureForAttribution:(id)a3
{
  v4 = a3;
  if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]== 2)
  {
    v5 = [(ICNoteEditorViewController *)self attributionSidebarView];
    [v5 handleTapGesture:v4];
LABEL_8:

    v11 = 1;
    goto LABEL_9;
  }

  v6 = [(ICNoteEditorViewController *)self attributionSidebarController];
  v7 = [v6 filter];

  if (v7)
  {
    v8 = [(ICNoteEditorViewController *)self viewControllerManager];
    v9 = [v8 hasCompactWidth];

    v10 = [(ICNoteEditorViewController *)self viewControllerManager];
    v5 = v10;
    if (v9)
    {
      [v10 hideActivityStreamWithCompletion:0];
    }

    else
    {
      [v10 hideAttributionHighlights];
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)shouldStartEditingForTapGesture:(id)a3
{
  v4 = a3;
  if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]!= 2)
  {
    if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]== 1)
    {
      goto LABEL_5;
    }

    v9 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      v11 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];
      [v10 timeIntervalSinceDate:v11];
      v13 = v12;

      if (v13 < 0.5)
      {
        v5 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [(ICNoteEditorViewController *)v5 shouldStartEditingForTapGesture:v13];
        }

        goto LABEL_3;
      }

      if (v13 < 1.5)
      {
        v14 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(ICNoteEditorViewController *)v14 shouldStartEditingForTapGesture:v13];
        }

        [(ICNoteEditorViewController *)self setDateOfLastStrokeOrNewDrawing:0];
        goto LABEL_5;
      }
    }

    v15 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([v15 hasCompactWidth])
    {
      v16 = [(ICNoteEditorViewController *)self viewControllerManager];
      v17 = [v16 presentedActivityStreamNavigationController];

      if (v17)
      {
        v5 = [(ICNoteEditorViewController *)self viewControllerManager];
        [v5 hideActivityStreamWithCompletion:0];
        goto LABEL_3;
      }
    }

    else
    {
    }

    v6 = 1;
    goto LABEL_6;
  }

  v5 = [(ICNoteEditorViewController *)self attributionSidebarView];
  [v5 handleTapGesture:v4];
LABEL_3:

LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = ![(ICNoteEditorViewController *)self suspendTapGestureRecognizer];

  return v6 & v7;
}

- (void)startEditingForWritingTools
{
  [(ICNoteEditorViewController *)self setInStartEditingForWritingTools:1];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 isSharedReadOnly];

  if ((v4 & 1) == 0)
  {
    [(ICNoteEditorViewController *)self startEditing];
  }

  [(ICNoteEditorViewController *)self setInStartEditingForWritingTools:0];
}

- (BOOL)shouldBlockHitTestOnTextView:(id)a3 event:(id)a4
{
  v5 = a4;
  if ([(ICNoteEditorViewController *)self isDrawingStrokeWithPencil])
  {
    v6 = [v5 ic_isPencilEvent] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)shouldShowMenuItems
{
  if ([(ICNoteEditorViewController *)self isShowingIndentationItems])
  {
    return 0;
  }

  else
  {
    return ![(ICNoteEditorViewController *)self isShowingChecklistItems];
  }
}

- (BOOL)shouldInsertNewDrawingsAsPaper
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 isPaperEnabled];

  return v3;
}

- (void)icBaseTextViewDidSetHidden:(BOOL)a3
{
  if (a3)
  {
    [(ICNoteEditorViewController *)self magicGenerativePlaygroundWillDisappear];
  }
}

void __61__ICNoteEditorViewController_updateUserAndDateViewVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];
  v3 = [v2 userTitleView];
  [v3 setAlpha:1.0];

  v5 = [*(a1 + 32) textView];
  v4 = [v5 dateView];
  [v4 setAlpha:1.0];
}

- (void)scrollViewDidScroll:(id)a3
{
  v20 = a3;
  v4 = [(ICNoteEditorViewController *)self textView];

  v5 = v20;
  if (v4 == v20)
  {
    v6 = [(ICNoteEditorViewController *)self backgroundView];
    [v20 contentOffset];
    [v6 scrollView:v20 didChangeContentOffset:?];

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v7 = [(ICNoteEditorViewController *)self textView];
      v8 = [v7 shouldUpdateVisibleSupplementalViewsInLayoutSubviews];

      if ((v8 & 1) == 0)
      {
        objc_opt_class();
        v9 = [(ICNoteEditorViewController *)self textView];
        v10 = [v9 layoutManager];
        v11 = ICDynamicCast();

        [v11 updateVisibleSupplementalViews];
        [v11 ensureLayoutForSurroundingPages];
      }
    }

    [(ICNoteEditorViewController *)self updateUserAndDateViewVisibility];
    v12 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    v13 = [v12 isShowing];

    if (v13)
    {
      v14 = [(ICNoteEditorViewController *)self linkAcceleratorController];
      [v14 hideAccelerator];
    }

    v15 = [(ICNoteEditorViewController *)self calculateScrubberController];
    v16 = [v15 isShowing];

    if (v16)
    {
      v17 = [(ICNoteEditorViewController *)self calculateScrubberController];
      [v17 hideScrubber];
    }

    v18 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
    v19 = [(ICNoteEditorViewController *)self textView];
    [v18 textViewDidScroll:v19];

    v5 = v20;
  }
}

- (void)textViewDidBreakRubberBand:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v4 isEqual:v5];

  if (v6)
  {

    [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:1];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v11 = -a5->y;
  if (!IsTextKit2Enabled)
  {
    if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
    {
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      if (v16 < v11)
      {
        goto LABEL_25;
      }

      [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromTop];
      if (v17 > v11 || y < 0.0)
      {
        goto LABEL_25;
      }

      [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:0];
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      a5->y = -v18;
      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    }

    else
    {
      v19 = a5->y;
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      if (vabdd_f64(-v19, v20) >= 0.00999999978 || y >= 0.0)
      {
        goto LABEL_25;
      }

      [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      a5->y = -v21;
      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    }

LABEL_24:
    *(v44 + 24) = 1;
    goto LABEL_25;
  }

  if (([MEMORY[0x277D75418] ic_isVision] & 1) == 0)
  {
    [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromTop];
    v11 = v11 - v12;
  }

  v13 = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel]|| ([(ICNoteEditorViewController *)self textViewTopInsetThatWeWant], vabdd_f64(v11, v22) >= 0.00999999978) || y >= 0.0)
  {
    if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
    {
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      v15 = v11 < 0.0;
      if (y < 0.0)
      {
        v15 = 1;
      }

      if (v11 > v14)
      {
        v15 = 1;
      }

      v13 = v15 & v13;
    }
  }

  else
  {
    v13 = 1;
  }

  if (v13 != [(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:v13];
    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    goto LABEL_24;
  }

LABEL_25:
  v23 = [MEMORY[0x277D35E50] sharedState];
  [v23 extendDeauthenticationTimer];

  if ((v44[3] & 1) == 0)
  {
    v24 = [(ICNoteEditorViewController *)self textView];
    v25 = [v24 textStorage];
    v26 = [(ICNoteEditorViewController *)self textView];
    v27 = [v26 textStorage];
    v28 = [v27 ic_range];
    v30 = v29;
    v31 = *MEMORY[0x277D74060];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __89__ICNoteEditorViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
    v36 = &unk_2781AD360;
    v37 = self;
    v40 = a5;
    v38 = v9;
    v39 = &v43;
    v41 = x;
    v42 = y;
    [v25 enumerateAttribute:v31 inRange:v28 options:v30 usingBlock:{2, &v33}];

    if (*(v44 + 24) == 1)
    {
      v32 = [(ICNoteEditorViewController *)self textView:v33];
      [v32 setShouldRubberBand:0];
    }
  }

  _Block_object_dispose(&v43, 8);
}

void __89__ICNoteEditorViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  objc_opt_class();
  v9 = ICDynamicCast();

  if ([v9 viewportShouldSnapToAttachmentView])
  {
    v10 = [*(a1 + 32) attachmentViewForTextAttachment:v9 characterIndex:a3];
    v11 = v10;
    if (v10)
    {
      [v10 bounds];
      Height = CGRectGetHeight(v85);
      v13 = [*(a1 + 32) textView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [*(a1 + 32) textView];
      [v22 safeAreaInsets];
      v24 = v17 + v23;
      v27 = v19 - (v25 + v26);
      v86.size.height = v21 - (v23 + v28);
      v86.origin.x = v15 + v25;
      v86.origin.y = v24;
      v86.size.width = v27;
      v29 = CGRectGetHeight(v86);

      if (Height < v29)
      {
        goto LABEL_27;
      }
    }

    v30 = [*(a1 + 32) textView];
    v31 = [v30 textStorage];
    if (a3 == [v31 length] - 1)
    {
      v32 = 0;
    }

    else
    {
      v33 = [*(a1 + 32) lastPaperDocumentAttachmentView];
      v34 = [v11 isEqual:v33];

      v32 = v34 ^ 1;
    }

    v35 = [MEMORY[0x277D36878] rootSettings];
    if (![v35 isRubberBandingEnabled] || (v32 & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEditing") & 1) != 0)
    {
    }

    else
    {
      v66 = [v9 viewportShouldSnapToAttachmentView];

      if (v66)
      {
        v67 = **(a1 + 56);
        [*(a1 + 40) contentSize];
        v69 = v68;
        [*(a1 + 40) bounds];
        v70 = CGRectGetHeight(v87);
        v71 = [*(a1 + 32) textView];
        v72 = [v71 bottomContentPadding];
        [v72 currentValue];
        v74 = v73;
        v75 = [*(a1 + 32) textView];
        [v75 textContainerInset];
        v77 = v76;

        if (v11)
        {
          [v11 bounds];
          [v11 convertPoint:*(a1 + 40) toView:?];
          v67 = v78;
          v80 = v79;
          [*(a1 + 40) safeAreaInsets];
          v82 = v80 - v81;
        }

        else
        {
          v82 = v69 - v70 - v74 - v77;
        }

        if (*(*(a1 + 56) + 8) >= v82 && ([*(a1 + 32) preventSnappingToLastPaperDocument] & 1) == 0)
        {
          v83 = *(a1 + 56);
          *v83 = v67;
          *(v83 + 8) = v82;
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a5 = 1;
          goto LABEL_27;
        }
      }
    }

    if (v11)
    {
      v36 = [MEMORY[0x277D36878] rootSettings];
      [v36 snapToPDFDistanceForEndDragging];
      v38 = v37;

      v39 = [*(a1 + 32) textView];
      [v39 convertPoint:v11 toView:{**(a1 + 56), *(*(a1 + 56) + 8)}];
      v41 = v40;

      [v11 bounds];
      v43 = v42;
      v45 = v44;
      [*(a1 + 40) safeAreaInsets];
      v47 = v45 - v46;
      v48 = [*(a1 + 32) textView];
      [v48 convertPoint:v11 fromView:{v43, v47}];
      v50 = v49;
      v52 = v51;

      v53 = vabdd_f64(v47, v41);
      if ((v53 < v38) | v32 & 1)
      {
        if (v53 >= v38)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (*(*(a1 + 56) + 8) < v52)
        {
          goto LABEL_27;
        }

        v54 = [*(a1 + 32) textView];
        v55 = [v54 shouldRubberBand];

        if (!v55)
        {
          goto LABEL_27;
        }
      }

      v56 = *(a1 + 56);
      *v56 = v50;
      *(v56 + 8) = v52;
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a5 = 1;
      if (!((*(a1 + 72) <= 0.0) | v32 & 1) && [v9 viewportShouldSnapToAttachmentView])
      {
        v57 = *(a1 + 56);
        v58 = [*(a1 + 32) textView];
        [v58 contentOffset];
        *v57 = v59;
        v57[1] = v60;

        v61 = [*(a1 + 32) textView];
        [v61 contentOffset];
        v63 = v52 - v62;

        v64 = *(a1 + 72) * 1000.0 / v63;
        v65 = [*(a1 + 32) textView];
        [v65 setShouldRubberBand:0];

        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __89__ICNoteEditorViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke_2;
        v84[3] = &unk_2781AD318;
        v84[4] = *(a1 + 32);
        v84[5] = v50;
        *&v84[6] = v52;
        [MEMORY[0x277D75D18] _animateUsingDefaultDampedSpringWithDelay:196608 initialSpringVelocity:v84 options:&__block_literal_global_1040 animations:0.0 completion:v64];
      }
    }

LABEL_27:
  }
}

void __89__ICNoteEditorViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) textView];
  [v3 setContentOffset:{v1, v2}];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 documentMergeController];
    v8 = [(ICNoteEditorViewController *)self textView];
    [v7 endBlockingMergeForReason:1 textView:v8];

    [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  }
}

- (void)_scrollViewDidInterruptDecelerating:(id)a3
{
  v6 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v6 documentMergeController];
  v5 = [(ICNoteEditorViewController *)self textView];
  [v4 endBlockingMergeForReason:1 textView:v5];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(ICNoteEditorViewController *)self prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:a3];
  v4 = [MEMORY[0x277D35E50] sharedState];
  [v4 extendDeauthenticationTimer];

  v7 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v7 documentMergeController];
  v6 = [(ICNoteEditorViewController *)self textView];
  [v5 beginBlockingMergeForReason:1 textView:v6];
}

- (id)lastPaperDocumentAttachmentView
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 textStorage];
  v5 = [v4 string];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v6 invertedSet];
  v8 = [v5 rangeOfCharacterFromSet:v7 options:4];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v10 = [v3 textStorage];
    v11 = [v10 attribute:*MEMORY[0x277D74060] atIndex:v8 effectiveRange:0];
    v12 = ICDynamicCast();

    if (v12 && [v12 viewportShouldSnapToAttachmentView])
    {
      v9 = [(ICNoteEditorViewController *)self attachmentViewForTextAttachment:v12 characterIndex:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)attachmentViewForTextAttachment:(id)a3 characterIndex:(int64_t)a4
{
  v6 = a3;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v8 = [(ICNoteEditorViewController *)self textView];
  v9 = v8;
  if (IsTextKit2Enabled)
  {
    v10 = [v8 textContainer];
    v11 = [v10 textLayoutManager];

    v12 = [v11 documentRange];
    v13 = [v12 location];
    v14 = [v11 locationFromLocation:v13 withOffset:a4];

    v15 = [v11 viewProviderForTextAttachment:v6 location:v14];
    v9 = v11;
  }

  else
  {
    v14 = [v8 icLayoutManager];
    v15 = [v14 viewProviderForTextAttachment:v6 characterIndex:a4];
  }

  v16 = [v15 view];

  return v16;
}

- (void)prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[scrollView isEqual:self.textView]" functionName:"-[ICNoteEditorViewController prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:]" simulateCrash:1 showAlert:0 format:{@"Unexpected scroll view: %@", v4}];
  }

  [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setShouldRubberBand:0];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [(ICNoteEditorBaseViewController *)self note];
  if ([v10 isEmpty])
  {
  }

  else
  {
    v11 = [(ICNoteEditorViewController *)self isEditing];

    if ((v11 & 1) == 0)
    {
      v12 = [(ICNoteEditorViewController *)self lastPaperDocumentAttachmentView];
      v13 = [MEMORY[0x277D36878] rootSettings];
      if ([v13 isRubberBandingEnabled] && v12)
      {
        [v12 bounds];
        Height = CGRectGetHeight(v57);
        v15 = [(ICNoteEditorViewController *)self textView];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [(ICNoteEditorViewController *)self textView];
        [v24 safeAreaInsets];
        v26 = v19 + v25;
        v29 = v21 - (v27 + v28);
        v58.size.height = v23 - (v25 + v30);
        v58.origin.x = v17 + v27;
        v58.origin.y = v26;
        v58.size.width = v29;
        v31 = CGRectGetHeight(v58);

        if (Height >= v31)
        {
          [v12 bounds];
          [v4 convertPoint:v12 fromView:?];
          v33 = v32;
          v35 = v34;
          [v4 safeAreaInsets];
          v37 = v35 - v36;
          [v4 contentOffset];
          if (v38 < v37 || ([v4 contentOffset], vabdd_f64(v39, v37) < 16.0))
          {
            v40 = [(ICNoteEditorViewController *)self textView];
            [v40 setShouldRubberBand:1];

            v41 = [(ICNoteEditorViewController *)self textView];
            [v41 setRubberBandContentOffset:{v33, v37}];
          }

          [v4 contentOffset];
          [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:v42 >= v37];
        }
      }

      else
      {
      }

      v43 = [(ICNoteEditorViewController *)self textView];
      v44 = [v43 textStorage];
      v51 = *MEMORY[0x277D74060];
      v45 = [(ICNoteEditorViewController *)self textView];
      v46 = [v45 textStorage];
      v52 = v12;
      v47 = [v46 ic_range];
      v49 = v48;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __83__ICNoteEditorViewController_prepareToSnapToPaperDocumentAtStartOfDragIfNecessary___block_invoke;
      v53[3] = &unk_2781AD388;
      v53[4] = self;
      v54 = v4;
      v55 = v8;
      v56 = v9;
      [v44 enumerateAttribute:v51 inRange:v47 options:v49 usingBlock:{0, v53}];
    }
  }

  v50 = [(ICNoteEditorViewController *)self textView];
  [v50 setDraggingSnapPoints:v8];
}

uint64_t __83__ICNoteEditorViewController_prepareToSnapToPaperDocumentAtStartOfDragIfNecessary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v19 = ICDynamicCast();

  if ([v19 viewportShouldSnapToAttachmentView])
  {
    v6 = [*(a1 + 32) attachmentViewForTextAttachment:v19 characterIndex:a3];
    v7 = v6;
    if (v6)
    {
      [v6 bounds];
      [v7 convertPoint:*(a1 + 40) toView:?];
      v9 = v8;
      v11 = v10;
      [*(a1 + 40) safeAreaInsets];
      v13 = v11 - v12;
      [*(a1 + 40) contentOffset];
      if (vabdd_f64(v14, v13) > 16.0)
      {
        v15 = *(a1 + 48);
        v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v9, v13}];
        [v15 addObject:v16];
      }

      v17 = [*(a1 + 32) firstEmbeddedScrollViewInView:v7];
      if (v17)
      {
        [*(a1 + 56) addObject:v17];
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)firstEmbeddedScrollViewInView:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(ICNoteEditorViewController *)self firstEmbeddedScrollViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 userTitleView];
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
  [v4 requestFire];

  [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  v7 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v7 documentMergeController];
  v6 = [(ICNoteEditorViewController *)self textView];
  [v5 endBlockingMergeForReason:1 textView:v6];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v6 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v6 documentMergeController];
  v5 = [(ICNoteEditorViewController *)self textView];
  [v4 endBlockingMergeForReason:1 textView:v5];
}

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self userActivityUpdateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ICNoteEditorViewController_userActivityWillSave___block_invoke;
  v7[3] = &unk_2781ABEB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __51__ICNoteEditorViewController_userActivityWillSave___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteUserActivityState];
  [v2 updateUserActivity:*(a1 + 40)];
}

- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5
{
  v6 = MEMORY[0x277D35ED8];
  v7 = a5;
  v8 = a4;
  v9 = [v6 sharedController];
  [v9 didReceiveInputStream:v8 outputStream:v7];
}

- (id)userActivity
{
  v3 = [(ICNoteEditorViewController *)self noteUserActivity];

  if (!v3)
  {
    [(ICNoteEditorViewController *)self updateNoteUserActivityState];
  }

  return [(ICNoteEditorViewController *)self noteUserActivity];
}

- (void)attachmentView:(id)a3 shouldPresentNote:(id)a4
{
  v5 = [(ICNoteEditorViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self delegate];
    [v7 noteEditor:self didTapAttachment:0];
  }
}

- (void)attachmentView:(id)a3 shouldPresentAttachment:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_INFO, "No attachment to present for attachment view", buf, 2u);
    }

LABEL_6:

    goto LABEL_32;
  }

  if (![MEMORY[0x277D36790] canUpdateFullscreenSketchAttachment:v7])
  {
    v9 = [(ICNoteEditorViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 attachmentType];

      if (v10 == 11)
      {
        v11 = 1;
LABEL_13:
        if (ICInternalSettingsIsAudioTranscriptionEnabled() && v11 && [v7 attachmentType] == 4)
        {
          if ([v7 needsInitialFetchFromCloud])
          {
            goto LABEL_32;
          }

          v8 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
          [v8 presentRecordingViewControllerForAttachment:v7];
          goto LABEL_6;
        }

        if (!v11)
        {
          goto LABEL_32;
        }

        v12 = [(ICNoteEditorBaseViewController *)self note];
        v13 = [v12 attachmentsInOrder];

        v14 = [v13 indexOfObject:v7];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v7 shortLoggingDescription];
            *buf = 138412290;
            v27 = v16;
            _os_log_impl(&dword_2151A1000, v15, OS_LOG_TYPE_INFO, "Could not find attachment %@ in its note. Falling back to showing just this attachment", buf, 0xCu);
          }

          v25 = v7;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

          v18 = 0;
          v13 = v17;
        }

        else
        {
          v18 = v14;
        }

        v19 = [(ICNoteEditorViewController *)self viewControllerManager];

        if (v19)
        {
          v20 = [(ICNoteEditorViewController *)self viewControllerManager];
          -[ICAttachmentPresenter presentAttachments:startingAtIndex:delegate:displayShowInNote:editable:selectedSubAttachment:presentingViewController:](v20, "presentAttachments:startingAtIndex:delegate:displayShowInNote:editable:selectedSubAttachment:presentingViewController:", v13, v18, self, 0, [v7 isReadOnly] ^ 1, 0, self);
        }

        else
        {
          v20 = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];
          v21 = [(ICAttachmentPresenter *)v20 presentedViewController];
          if ([v21 isBeingPresented])
          {
          }

          else
          {
            v22 = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];
            v23 = [v22 galleryAttachmentEditorController];

            if (v23)
            {
LABEL_31:

              goto LABEL_32;
            }

            v20 = -[ICAttachmentPresenter initWithViewControllerManager:attachments:startingAtIndex:delegate:displayShowInNote:editable:presentingViewController:]([ICAttachmentPresenter alloc], "initWithViewControllerManager:attachments:startingAtIndex:delegate:displayShowInNote:editable:presentingViewController:", 0, v13, v18, self, 0, [v7 isReadOnly] ^ 1, self);
            [(ICNoteEditorViewController *)self setQuickNoteiPhoneAttachmentPresenter:v20];
            v24 = [v13 objectAtIndexedSubscript:v18];
            [(ICAttachmentPresenter *)v20 presentAttachmentWithSelectedSubAttachment:v24];
          }
        }

        goto LABEL_31;
      }

      v9 = [(ICNoteEditorViewController *)self delegate];
      v11 = [v9 noteEditor:self didTapAttachment:v7] ^ 1;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_13;
  }

  [(ICNoteEditorViewController *)self showDrawingUpdateAlert];
  ICInternalSettingsIsAudioTranscriptionEnabled();
LABEL_32:
}

- (void)attachmentView:(id)a3 shouldShareAttachment:(id)a4
{
  v6 = a3;
  v18 = [ICAttachmentActivityViewController makeWithAttachment:a4 quickLookItemDelegate:self completion:&__block_literal_global_1053];
  v7 = [v18 popoverPresentationController];
  [v7 setSourceView:v6];

  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v18 popoverPresentationController];
  [v16 setSourceRect:{v9, v11, v13, v15}];

  v17 = [v18 popoverPresentationController];
  [v17 setCanOverlapSourceViewRect:1];

  [(ICNoteEditorViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (BOOL)attachmentView:(id)a3 shouldRespondToPanGestureTouch:(id)a4 forAttachment:(id)a5
{
  v7 = a4;
  if ([a5 attachmentType] == 9)
  {
    v8 = [v7 type] == 2;
    v9 = v8 | [(ICNoteEditorViewController *)self isInkPickerShowing];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (CGRect)notesQuickLookActivityItem:(id)a3 rectForPreviewItem:(id)a4 inView:(id *)a5 previewController:(id)a6
{
  v6 = [(ICNoteEditorViewController *)self textView:a3];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)notesQuickLookActivityItem:(id)a3 transitionViewForPreviewItem:(id)a4 previewController:(id)a5
{
  v6 = a4;
  objc_opt_class();
  v7 = ICDynamicCast();

  v8 = [(ICNoteEditorViewController *)self viewForAttachment:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(ICNoteEditorViewController *)self textView];
  }

  v11 = v10;

  return v11;
}

- (id)viewForAttachment:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v5 = [(ICNoteEditorViewController *)self textView];
    v6 = [v5 icTextLayoutManager];
    v7 = [v4 identifier];
    v8 = [v6 existingAttachmentViewForIdentifier:v7];
    v9 = ICDynamicCast();

    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = [v10 drawingInlineView];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v9 quickLookTransitionView];
    }

    v23 = v13;

    goto LABEL_16;
  }

  v14 = [(ICNoteEditorViewController *)self textView];
  v15 = [v14 layoutManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(ICNoteEditorViewController *)self textView];
    v9 = [v17 layoutManager];

    v18 = [v4 identifier];
    v10 = [v9 supplementalViewForIdentifier:v18 allowHiddenViews:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v10 drawingInlineView];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = 0;
        goto LABEL_16;
      }

      v19 = [v10 quickLookTransitionView];
    }

    v23 = v19;
LABEL_16:

    goto LABEL_17;
  }

  v20 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v4 shortLoggingDescription];
    v25 = 138412546;
    v26 = v21;
    v27 = 2112;
    v28 = objc_opt_class();
    v22 = v28;
    _os_log_impl(&dword_2151A1000, v20, OS_LOG_TYPE_INFO, "Trying to find a transition view for %@, but the note editor's layout manager isn't an %@", &v25, 0x16u);
  }

  v23 = 0;
LABEL_17:

  return v23;
}

- (void)attachmentPresenterDidDismiss:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];

  if (v5 == v4)
  {

    [(ICNoteEditorViewController *)self setQuickNoteiPhoneAttachmentPresenter:0];
  }
}

- (void)showDrawingUpdateAlert
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 textDragInteraction];
  v5 = [v4 isEnabled];

  v6 = MEMORY[0x277D36790];
  v7 = [(ICNoteEditorBaseViewController *)self note];
  v8 = [v6 countOfUpdatableDrawingsInNote:v7];

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = v9;
  if (v8 >= 2)
  {
    v11 = @"Update Drawings?";
  }

  else
  {
    v11 = @"Update Drawing?";
  }

  if (v8 >= 2)
  {
    v12 = @"You need to update these drawings to edit them.\n\nOnly devices upgraded to the latest version of iOS can edit these drawings.";
  }

  else
  {
    v12 = @"You need to update this drawing to edit it.\n\nOnly devices upgraded to the latest version of iOS can edit this drawing.";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_282757698 table:0];

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:v12 value:&stru_282757698 table:0];

  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v15 preferredStyle:1];
  objc_initWeak(location, self);
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [v18 localizedStringForKey:@"Learn More" value:&stru_282757698 table:0];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke;
  v39[3] = &unk_2781AD3B0;
  objc_copyWeak(&v40, location);
  v41 = v5;
  v20 = [v17 actionWithTitle:v19 style:0 handler:v39];
  [v16 addAction:v20];

  [MEMORY[0x277CCA8D8] mainBundle];
  if (v8 >= 2)
  {
    v22 = v21 = 0x277D75000uLL;
    [v22 localizedStringForKey:@"Update Drawings" value:&stru_282757698 table:0];
  }

  else
  {
    v22 = v21 = 0x277D75000;
    [v22 localizedStringForKey:@"Update Drawing" value:&stru_282757698 table:0];
  }
  v23 = ;

  v24 = *(v21 + 248);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke_2;
  v36[3] = &unk_2781AD3B0;
  objc_copyWeak(&v37, location);
  v38 = v5;
  v25 = [v24 actionWithTitle:v23 style:0 handler:v36];
  [v16 addAction:v25];

  v26 = *(v21 + 248);
  v27 = [MEMORY[0x277CCA8D8] mainBundle];
  v28 = [v27 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke_3;
  v33[3] = &unk_2781AD3B0;
  objc_copyWeak(&v34, location);
  v35 = v5;
  v29 = [v26 actionWithTitle:v28 style:1 handler:v33];
  [v16 addAction:v29];

  v30 = [(ICNoteEditorViewController *)self textView];
  v31 = [v30 textDragInteraction];
  [v31 setEnabled:0];

  [(ICNoteEditorViewController *)self presentViewController:v16 animated:1 completion:0];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
}

void __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D367B8];
  v3 = *MEMORY[0x277D36518];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 presentWithTopic:v3 presentingViewController:WeakRetained];

  v5 = *(a1 + 40);
  v8 = objc_loadWeakRetained((a1 + 32));
  v6 = [v8 textView];
  v7 = [v6 textDragInteraction];
  [v7 setEnabled:v5];
}

void __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDrawingAttachmentsInNote];

  v3 = *(a1 + 40);
  v6 = objc_loadWeakRetained((a1 + 32));
  v4 = [v6 textView];
  v5 = [v4 textDragInteraction];
  [v5 setEnabled:v3];
}

void __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained textView];
  v3 = [v2 textDragInteraction];
  [v3 setEnabled:v1];
}

- (void)updateDrawingAttachmentsInNote
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2151A1000, log, OS_LOG_TYPE_DEBUG, "Manually updating all drawings in note %@", buf, 0xCu);
}

void __60__ICNoteEditorViewController_updateDrawingAttachmentsInNote__block_invoke(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 performSelector:sel_showInkPicker_ withObject:v1 afterDelay:0.25];
}

- (id)undoManager
{
  v3 = [(ICNoteEditorViewController *)self textViewUndoManager];
  if (([v3 canRedo] & 1) != 0 || objc_msgSend(v3, "canUndo"))
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICNoteEditorViewController;
    v4 = [(ICNoteEditorViewController *)&v7 undoManager];
  }

  v5 = v4;

  return v5;
}

- (NSUndoManager)textViewUndoManager
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 undoManager];

  return v3;
}

+ (UIMenu)indentationMenu
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75650];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"Decrease Indentation" value:&stru_282757698 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"decrease.indent"];
  v6 = [v2 ic_keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel_indentLeft_ discoverabilityTitle:v4 image:v5];

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"Decrease" value:&stru_282757698 table:0];
  [v6 setTitle:v8];

  v9 = MEMORY[0x277D75650];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"Increase Indentation" value:&stru_282757698 table:0];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v13 = [v9 ic_keyCommandWithInput:@"]" modifierFlags:0x100000 action:sel_indentRight_ discoverabilityTitle:v11 image:v12];

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"Increase" value:&stru_282757698 table:0];
  [v13 setTitle:v15];

  v16 = MEMORY[0x277D75710];
  v17 = [MEMORY[0x277CCA8D8] mainBundle];
  v18 = [v17 localizedStringForKey:@"Indentation" value:&stru_282757698 table:0];
  v19 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v23[0] = v13;
  v23[1] = v6;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v21 = [v16 menuWithTitle:v18 image:v19 identifier:0 options:0 children:v20];

  return v21;
}

+ (UIMenu)textAlignmentMenu
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75650];
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v18 localizedStringForKey:@"Align Left" value:&stru_282757698 table:0];
  v4 = [v2 ic_keyCommandWithInput:@"{" modifierFlags:1179648 action:sel_ic_alignLeft_ discoverabilityTitle:v3];
  v19[0] = v4;
  v5 = MEMORY[0x277D75650];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"Align Center" value:&stru_282757698 table:0];
  v8 = [v5 ic_keyCommandWithInput:@"|" modifierFlags:1179648 action:sel_ic_alignCenter_ discoverabilityTitle:v7];
  v19[1] = v8;
  v9 = MEMORY[0x277D75650];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"Align Right" value:&stru_282757698 table:0];
  v12 = [v9 ic_keyCommandWithInput:@"}" modifierFlags:1179648 action:sel_ic_alignRight_ discoverabilityTitle:v11];
  v19[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v14 = MEMORY[0x277D75710];
  v15 = [v13 copy];
  v16 = [v14 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v15];

  return v16;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    v8 = [v7 _modifierFlags];
    v9 = [v7 _modifiedInput];
    v10 = v9;
    if ((*&v8 & 0x120000) == 0x100000 && [v9 length] == 1)
    {
      v11 = [v10 characterAtIndex:0];
      if (v11 == 93)
      {
        [(ICNoteEditorViewController *)self indentRight:0];
        goto LABEL_11;
      }

      if (v11 == 91)
      {
        [(ICNoteEditorViewController *)self indentLeft:0];
LABEL_11:

        goto LABEL_9;
      }
    }
  }

  v12.receiver = self;
  v12.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v12 pressesBegan:v6 withEvent:v7];
LABEL_9:
}

- (ICSelectorDelayer)applyAccessibilityInfoDelayer
{
  applyAccessibilityInfoDelayer = self->_applyAccessibilityInfoDelayer;
  if (!applyAccessibilityInfoDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_applyAccessibilityInfo delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
    v5 = self->_applyAccessibilityInfoDelayer;
    self->_applyAccessibilityInfoDelayer = v4;

    applyAccessibilityInfoDelayer = self->_applyAccessibilityInfoDelayer;
  }

  return applyAccessibilityInfoDelayer;
}

- (void)applyAccessibilityInfo
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(ICNoteEditorViewController *)self applyAccessibilityInfoDelayer];
  [v3 cancelPreviousFireRequests];

  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    v25 = self;
    v4 = [(ICNoteEditorViewController *)self textView];
    v5 = [v4 inputAssistantItem];

    v24 = v5;
    v6 = [v5 leadingBarButtonGroups];
    v7 = [v6 firstObject];

    v8 = [v7 representativeItem];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"Edit" value:&stru_282757698 table:0];
    [v8 setIc_titleAndAccessibilityLabel:v10];

    v23 = v7;
    [v7 barButtonItems];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obja = v31 = 0u;
    v11 = [obja countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11;
    v13 = *v29;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 action];
        if (v16 == sel_assistantCut)
        {
          v17 = @"Cut";
        }

        else if (v16 == sel_assistantCopy)
        {
          v17 = @"Copy";
        }

        else
        {
          if (v16 != sel_assistantPaste)
          {
            continue;
          }

          v17 = @"Paste";
        }

        v18 = [MEMORY[0x277CCA8D8] mainBundle];
        v19 = [v18 localizedStringForKey:v17 value:&stru_282757698 table:0];
        [v15 setAccessibilityLabel:v19];
      }

      v12 = [obja countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v12)
      {
LABEL_19:
        v20 = [(ICNoteEditorViewController *)v25 backgroundView];
        v21 = [(ICNoteEditorViewController *)v25 textView];
        [v20 reparentAccessibilityChildrenOfElement:v21];

        v22 = [(ICNoteEditorViewController *)v25 backgroundView];
        [v22 setAxChildReparentingController:v25];

        return;
      }
    }
  }

  obj = [(ICNoteEditorViewController *)self applyAccessibilityInfoDelayer];
  [obj requestFire];
}

- (void)updateDateLabelAccessibility
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 dateView];
  v5 = [v4 isAccessibilityElement];

  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 accessibilityFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(ICNoteEditorViewController *)self textView];
  v16 = [v15 dateView];
  [v16 accessibilityFrame];
  v27.origin.x = v17;
  v27.origin.y = v18;
  v27.size.width = v19;
  v27.size.height = v20;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v21 = CGRectContainsRect(v26, v27);

  if (v5 != v21)
  {
    v22 = [(ICNoteEditorViewController *)self textView];
    v23 = [v22 dateView];
    [v23 setIsAccessibilityElement:v21];

    v24 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v24, 0);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ICNoteEditorViewController *)self applyAccessibilityInfo];
  [(ICNoteEditorViewController *)self updateDateLabelAccessibility];
  [(ICNoteEditorViewController *)self updateBarButtons];
}

- (void)blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:(double)a3
{
  v9 = [(ICNoteEditorViewController *)self icSplitViewController];
  v4 = [v9 splitViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICNoteEditorViewController *)self icSplitViewController];
    v7 = [v6 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 != 1)
    {
      _UIAccessibilityBlockPostingOfNotification();

      dispatchMainAfterDelay();
    }
  }

  else
  {
  }
}

- (BOOL)allowsAccessibilityChildReparenting
{
  v3 = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ICNoteEditorViewController *)self invitationViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)runScrollPerformanceTest:(id)a3 iterations:(int)a4 offset:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [(ICNoteEditorViewController *)self textView];
  [v9 _performScrollTest:v8 iterations:v6 delta:v5];
}

- (void)runTableHorizontalScrollPerformanceTest:(id)a3 iterations:(int)a4 offset:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(ICNoteEditorViewController *)self textViewController:0];
  v10 = [v9 childViewControllers];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v15 = ICDynamicCast();
          v16 = [v15 scrollView];
          [v16 _performScrollTest:v8 iterations:v6 delta:v5 scrollAxis:1];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)applicationDidEnterBackground:(id)a3
{
  if ([(ICNoteEditorViewController *)self isEditing])
  {
    v4 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [v4 setAlpha:0.0];
  }

  objc_opt_class();
  v5 = [(ICNoteEditorViewController *)self presentedViewController];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__ICNoteEditorViewController_applicationDidEnterBackground___block_invoke;
    v7[3] = &unk_2781ABCF8;
    v7[4] = self;
    [(ICNoteEditorViewController *)self dismissViewControllerAnimated:0 completion:v7];
  }
}

- (BOOL)isAssociatedWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = self;
    v11 = [(ICNoteEditorViewController *)v10 presentedViewController];

    if (v11)
    {
      do
      {
        v12 = [(ICNoteEditorViewController *)v10 presentedViewController];

        v13 = [(ICNoteEditorViewController *)v12 presentedViewController];

        v10 = v12;
      }

      while (v13);
    }

    else
    {
      v12 = v10;
    }

    v14 = [(ICNoteEditorViewController *)v12 viewIfLoaded];
    v15 = [v14 window];
    v16 = [v15 windowScene];
    v9 = [v16 isEqual:v4];
  }

  return v9;
}

- (void)sceneWillDeactivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICNoteEditorViewController *)self isAssociatedWindowScene:v4];

  if (v5)
  {
    [(ICNoteEditorViewController *)self showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:1];
    if ([(ICNoteEditorViewController *)self ic_isViewVisible])
    {
      v6 = [(ICNoteEditorBaseViewController *)self note];

      if (v6)
      {
        v7 = [(ICNoteEditorBaseViewController *)self note];
        [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:v7];

        [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];

        [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
      }
    }
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(ICNoteEditorViewController *)self isAssociatedWindowScene:v5];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [(ICNoteEditorBaseViewController *)self note];
  if ([v7 isPasswordProtected])
  {
    v8 = [(ICNoteEditorViewController *)self viewControllerManager];
    v9 = [v8 selectedNoteObjectID];
    if (v9)
    {
      v10 = v9;
      v11 = [(ICNoteEditorViewController *)self viewControllerManager];
      v12 = [v11 selectedNoteObjectID];
      v13 = [(ICNoteEditorBaseViewController *)self note];
      v14 = [v13 objectID];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        goto LABEL_8;
      }

      v7 = [(ICNoteEditorViewController *)self viewControllerManager];
      v8 = [v7 selectedModernNote];
      [(ICNoteEditorViewController *)self setNote:v8];
    }
  }

LABEL_8:
  [(ICNoteEditorViewController *)self showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:0];
  if ([(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    v16 = [(ICNoteEditorBaseViewController *)self note];

    if (v16)
    {
      v17 = [(ICNoteEditorViewController *)self eventReporter];
      v18 = [(ICNoteEditorBaseViewController *)self note];
      [v17 startNoteViewEventDurationTrackingForModernNote:v18 reportCoreAnalytics:0];
    }
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v19, &location);
    dispatchMainAfterDelay();
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

LABEL_13:
}

void __47__ICNoteEditorViewController_sceneDidActivate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained ic_isViewVisible])
  {
    v1 = [WeakRetained textView];
    v2 = [v1 window];
    if (v2)
    {
      v3 = v2;
      v4 = [WeakRetained textStorage];
      v5 = [v4 length];

      if (!v5)
      {
        goto LABEL_6;
      }

      v1 = [WeakRetained textView];
      v6 = [v1 layoutManager];
      v7 = [WeakRetained textStorage];
      v8 = [v7 length];

      [v6 ensureLayoutForCharacterRange:{0, v8 != 0}];
    }
  }

LABEL_6:
}

- (void)applicationDidBecomeActive:(id)a3
{
  if ([(ICNoteEditorViewController *)self isEditing])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__ICNoteEditorViewController_applicationDidBecomeActive___block_invoke;
    v5[3] = &unk_2781ABCF8;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.25];
  }

  if ([(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
    v4 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [v4 setIsAnimatingOut:0];

    [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self ppt_didFinishExtendedLaunch];
    }
  }
}

void __57__ICNoteEditorViewController_applicationDidBecomeActive___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textViewInputAccessoryView];
  [v1 setAlpha:1.0];
}

- (void)mergeRelatedOperationsDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35C78]];
  v13 = ICDynamicCast();

  if (!v13 || (v7 = [v13 unsignedIntegerValue] == 2, v8 = v13, v7))
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    v10 = [v9 isEditing];

    if ((v10 & 1) == 0)
    {
      v11 = [(ICNoteEditorViewController *)self textView];
      [v11 ic_resetDataDetectorsResults];

      v12 = [(ICNoteEditorViewController *)self textView];
      [v12 ic_startDataDetectors];
    }

    [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:1];
    v8 = v13;
  }
}

- (BOOL)safeAreaContainsKeyboard
{
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    v3 = [(ICNoteEditorViewController *)self textView];
    v4 = [v3 TTTextStorage];
    v5 = ([v4 isEditingViaWritingTools] & 1) != 0 || -[ICNoteEditorViewController isWritingToolsShowing](self, "isWritingToolsShowing");

    v7 = [(ICNoteEditorViewController *)self navigationController];
    v6 = [v7 isToolbarHidden] ^ 1 | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)keyboardResizerAdjustInsetsWithKeyboardFrame:(CGRect)a3 scrollAboveHeight:(double)a4 duration:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    return;
  }

  [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromBottom];
  v13 = v12;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  IsNull = CGRectIsNull(v60);
  v56 = a5;
  v57 = x;
  v58 = y;
  rect = width;
  if (IsNull)
  {
    [(ICNoteEditorViewController *)self textViewMinimumBottomInset];
    [(ICNoteEditorViewController *)self setTextViewMinimumBottomInset:?];
    if ([(ICNoteEditorViewController *)self safeAreaContainsKeyboard])
    {
      v15 = 0.0;
      v16 = self;
    }

    else
    {
      v16 = self;
      v15 = v13;
    }

    [(ICNoteEditorViewController *)v16 setTextViewScrollIndicatorBottomInsetOverride:v15];
    goto LABEL_19;
  }

  v17 = [(ICNoteEditorViewController *)self textView];
  v18 = [v17 inputAccessoryView];

  if (!v18)
  {
    v19 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [v19 intrinsicContentSize];
    height = height + v20;
  }

  v21 = [(ICNoteEditorViewController *)self safeAreaContainsKeyboard];
  v22 = 0.0;
  if (!v21)
  {
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v22 = CGRectGetHeight(v61) - a4;
    if (v22 < v13)
    {
      v22 = v13;
    }
  }

  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:v22];
  [(ICNoteEditorViewController *)self textViewMinimumBottomInset];
  [(ICNoteEditorViewController *)self setTextViewMinimumBottomInset:?];
  v23 = [(ICNoteEditorViewController *)self textView];
  [v23 _contentScrollInset];
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [(ICNoteEditorViewController *)self textView];
  [v30 _contentScrollInset];
  if (v34 != v27 || v31 != v25 || v33 != v29)
  {

LABEL_16:
    v36 = [(ICNoteEditorViewController *)self textView];
    [v36 _setContentScrollInset:{v25, v27, a4, v29}];

    goto LABEL_19;
  }

  v35 = v32;

  if (v35 != a4)
  {
    goto LABEL_16;
  }

LABEL_19:
  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:v37 + 5.0];
  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:0.0];
  v38 = [(ICNoteEditorViewController *)self textView];
  [v38 contentInset];
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWantForEditing:!IsNull];
  v46 = v45;
  [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = [(ICNoteEditorViewController *)self textView];
  [v53 setContentInset:{v40, v42, v46, v44}];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v54 = [(ICNoteEditorViewController *)self textView];
    [v54 setVerticalScrollIndicatorInsets:{v40, v48, v50, v52}];
  }

  v62.origin.x = v57;
  v62.origin.y = v58;
  v62.size.width = rect;
  v62.size.height = height;
  if (!CGRectIsNull(v62))
  {
    v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v56];
    [(ICNoteEditorViewController *)self setKeyboardAnimateInFinishTime:v55];
  }

  dispatchMainAfterDelay();
}

- (void)ensureValidInkForNewDrawingOrNote
{
  v3 = [(ICNoteEditorViewController *)self currentValidToolForNewDrawingOrNote];
  [(ICNoteEditorViewController *)self updateInkPickerAndTextViewToTool:v3];
}

- (void)updateInkPickerAndTextViewToTool:(id)a3
{
  v10 = a3;
  [(ICNoteEditorViewController *)self createInkPickerControllerIfNecessary];
  v4 = v10;
  if (v10)
  {
    v5 = [(ICNoteEditorViewController *)self inkPaletteController];
    [v5 setSelectedTool:v10];

    if ([(ICNoteEditorViewController *)self isNewInk:v10]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
    {
      v6 = [(ICNoteEditorViewController *)self inkPaletteController];
      [v6 resetToPencilKitCompatibleInk];
    }

    v7 = [(ICNoteEditorViewController *)self inkPaletteController];
    v8 = [v7 selectedTool];
    v9 = [(ICNoteEditorViewController *)self textView];
    [v9 _setTool:v8];

    v4 = v10;
  }
}

- (void)clearTextViewSelection
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  if (v6)
  {
    v7 = [(ICNoteEditorViewController *)self textView];
    [v7 setSelectedRange:{v4, 0}];
  }
}

- (void)setSearchRegexFinder:(id)a3
{
  objc_storeStrong(&self->_searchRegexFinder, a3);
  v4 = [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsDelayer];
  [v4 requestFire];
}

- (void)showOrHideSearchPatternHighlightsIfNecessary
{
  v3 = [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsDelayer];
  [v3 cancelPreviousFireRequests];

  if (([(ICNoteEditorViewController *)self isEditing]& 1) != 0)
  {
    goto LABEL_5;
  }

  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v4 findInteraction];
  if ([v5 isFindNavigatorVisible])
  {

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v6 = [(ICNoteEditorViewController *)self isInkPickerShowing];

  if (v6)
  {
    goto LABEL_5;
  }

  v15 = [(ICNoteEditorViewController *)self searchRegexFinder];
LABEL_6:
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v9 = [(ICNoteEditorViewController *)self textView];
    v13 = [v9 layoutManager];
    v14 = ICDynamicCast();
    [v14 setHighlightPatternRegexFinder:v15];

    goto LABEL_11;
  }

  objc_opt_class();
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 textLayoutManager];
  v9 = ICDynamicCast();

  v10 = v15;
  if (v15 || ([v9 highlightPatternRegexFinder], v11 = objc_claimAutoreleasedReturnValue(), v11, v10 = 0, v11))
  {
    v15 = v10;
    [v9 setHighlightPatternRegexFinder:v10];
    v12 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [v12 setSearchHighlightRegexFinder:v15];

    v13 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [v13 updateAnimated:0];
LABEL_11:
  }
}

- (ICSelectorDelayer)showOrHideSearchPatternHighlightsDelayer
{
  showOrHideSearchPatternHighlightsDelayer = self->_showOrHideSearchPatternHighlightsDelayer;
  if (!showOrHideSearchPatternHighlightsDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_showOrHideSearchPatternHighlightsIfNecessary delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.25];
    v5 = self->_showOrHideSearchPatternHighlightsDelayer;
    self->_showOrHideSearchPatternHighlightsDelayer = v4;

    showOrHideSearchPatternHighlightsDelayer = self->_showOrHideSearchPatternHighlightsDelayer;
  }

  return showOrHideSearchPatternHighlightsDelayer;
}

- (void)showInkPickerAndEndEditingIfNecessary
{
  if ([(ICNoteEditorViewController *)self inkPickerState]!= 2)
  {
    [(ICNoteEditorViewController *)self showInkPicker:1 animated:1];
  }

  if ([(ICNoteEditorViewController *)self isEditing])
  {
    [(ICNoteEditorViewController *)self setEditing:0];
  }

  [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
}

- (void)updateInlineDrawingsPaletteVisibility
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 textStorage];
  v5 = [v4 ic_range];
  v7 = v6;

  v13.location = [(ICNoteEditorViewController *)self visibleRange];
  ++v13.length;
  v14.location = v5;
  v14.length = v7;
  v8 = NSIntersectionRange(v13, v14);
  v9 = [(ICNoteEditorBaseViewController *)self note];
  v10 = [v9 textStorage];
  v11 = *MEMORY[0x277D74060];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ICNoteEditorViewController_updateInlineDrawingsPaletteVisibility__block_invoke;
  v12[3] = &unk_2781AC5D8;
  v12[4] = self;
  [v10 enumerateAttribute:v11 inRange:v8.location options:v8.length usingBlock:{0, v12}];
}

void __67__ICNoteEditorViewController_updateInlineDrawingsPaletteVisibility__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    v4 = [*(a1 + 32) inkPaletteController];
    [v5 updatePaletteVisibilityToVisible:{objc_msgSend(v4, "isInkPaletteShowing")}];
  }
}

- (id)currentValidToolForNewDrawingOrNote
{
  v3 = [(ICNoteEditorViewController *)self inkPaletteController];

  if (!v3)
  {
    goto LABEL_19;
  }

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& ICInternalSettingsIsSystemPaperEnabled())
  {
    v4 = [(ICNoteEditorViewController *)self inkPaletteController];
    v5 = [v4 colorCorrectedTool];
LABEL_18:
    v3 = v5;

    goto LABEL_19;
  }

  v6 = [(ICNoteEditorViewController *)self inkPaletteController];
  v3 = [v6 selectedTool];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [(ICNoteEditorViewController *)self inkPaletteController];
    if ([v7 isHandwritingToolSelected])
    {
    }

    else
    {
      v8 = [(ICNoteEditorViewController *)self inkPaletteController];
      v9 = [v8 isCanvasGenerationToolSelected];

      if ((v9 & 1) == 0)
      {

LABEL_12:
        v3 = [(ICNoteEditorViewController *)self lastSavedInkingTool];
        goto LABEL_13;
      }
    }
  }

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ([(ICNoteEditorViewController *)self isNewInk:v3]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
  {
    v10 = [(ICNoteEditorViewController *)self inkPaletteController];
    [v10 resetToPencilKitCompatibleInk];

    v11 = [(ICNoteEditorViewController *)self inkPaletteController];
    v12 = [v11 selectedTool];

    v3 = v12;
  }

  if (!v3)
  {
    v13 = objc_alloc(MEMORY[0x277CD9640]);
    v14 = *MEMORY[0x277CD96F8];
    v4 = [(ICNoteEditorViewController *)self defaultInkColor];
    v5 = [v13 initWithInkType:v14 color:v4];
    goto LABEL_18;
  }

LABEL_19:

  return v3;
}

- (PKTool)lastSavedInkingTool
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 dataForKey:@"currentInkData"];

  if (v3)
  {
    v21 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v21];
    v5 = v21;
    if (v4)
    {
      if ([v4 _isHandwritingInk])
      {
        v6 = objc_alloc_init(MEMORY[0x277CD9620]);
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x277CD9640]) _initWithInk:v4];
      }

      v15 = v6;
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ICNoteEditorViewController lastSavedInkingTool];
      }

      v15 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v7 dictionaryForKey:@"currentInkTool"];

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v8 stringForKey:@"currentInkTool"];

    v9 = [v5 objectForKeyedSubscript:@"inkType"];
    v10 = [v5 objectForKeyedSubscript:@"color"];
    v11 = [v5 objectForKeyedSubscript:@"width"];
    v12 = v11;
    if (v9 && v10 && v11)
    {
      v13 = [MEMORY[0x277D75348] ic_colorFromString:v10];
      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277CD9640]);
        [v12 doubleValue];
        v15 = [v14 initWithInkType:v9 color:v13 width:?];
      }

      else
      {
        v19 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_2151A1000, v19, OS_LOG_TYPE_DEFAULT, "Could not create ink color from serialized color string: %@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CD9620] className];
      v18 = [v4 isEqualToString:v17];

      if (v18)
      {
        v15 = objc_alloc_init(MEMORY[0x277CD9620]);
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

- (void)saveToolAsCurrentTool:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = MEMORY[0x277CCAAB0];
      v5 = [v3 ink];
      v9 = 0;
      v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
      v7 = v9;

      if (v6)
      {
        v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v8 setObject:v6 forKey:@"currentInkData"];
      }

      else
      {
        v8 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [ICNoteEditorViewController saveToolAsCurrentTool:];
        }
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICNoteEditorViewController saveToolAsCurrentTool:];
      }
    }
  }
}

- (id)defaultInkColor
{
  v3 = [(ICNoteEditorViewController *)self traitCollection];
  if ([v3 ic_isDark])
  {
    v4 = [(ICNoteEditorViewController *)self shouldForceLightContent];

    if (!v4)
    {
      v5 = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [MEMORY[0x277D75348] blackColor];
LABEL_6:

  return v5;
}

- (void)createInkPickerControllerIfNecessary
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setWritingToolsShowing:(BOOL)a3
{
  if (self->_writingToolsShowing != a3)
  {
    self->_writingToolsShowing = a3;
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  }
}

- (void)showInkPicker:(id)a3
{
  v10 = a3;
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self doneEditing:v10];
  }

  else
  {
    v4 = [(ICNoteEditorBaseViewController *)self note];

    if (!v4)
    {
      v5 = [MEMORY[0x277D369A0] sharedInstance];
      v6 = [v5 isQuickNoteSessionActive];

      if (v6)
      {
        v7 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:1];
      }

      else
      {
        v8 = [(ICNoteEditorViewController *)self viewControllerManager];
        v9 = [v8 showNewNoteWithApproach:2 sender:self animated:1];
      }
    }

    [(ICNoteEditorViewController *)self showStyleSelectorPopover:0 animated:1 sender:v10];
    [(ICNoteEditorViewController *)self setInkPickerState:1];
    [(ICNoteEditorViewController *)self showInkPickerAndEndEditingIfNecessary];
    [(ICNoteEditorViewController *)self clearTextViewSelection];
  }
}

- (void)showInkPicker:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
LABEL_4:
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:v4];
    v7 = [(ICNoteEditorViewController *)self inkPaletteController];
    [v7 showInkPalette:v5 animated:v4];

    return;
  }

  if ([(ICNoteEditorViewController *)self _appearState]== 2)
  {
    [(ICNoteEditorViewController *)self createInkPickerControllerIfNecessary];
    goto LABEL_4;
  }

  [(ICNoteEditorViewController *)self setShowInkPickerAfterViewAppears:1];
}

- (BOOL)toggleInkPickerAnimated:(BOOL)a3
{
  v4 = [(ICNoteEditorViewController *)self inkPaletteController];
  v5 = [v4 isInkPaletteShowing];

  [(ICNoteEditorViewController *)self showInkPicker:v5 ^ 1u animated:1];
  return v5 ^ 1;
}

- (void)hideInkPicker
{
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    v3 = [(ICNoteEditorViewController *)self inkPaletteController];
    [v3 showInkPalette:0 animated:1];

    [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  }
}

- (BOOL)shouldEnablePencilGestures
{
  v3 = [(ICNoteEditorViewController *)self splitViewController];
  v4 = [v3 displayMode];

  if (v4 == 3)
  {
    return 0;
  }

  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 findInteraction];
  v8 = [v7 isFindNavigatorVisible];

  return v8 ^ 1;
}

- (void)setupForFingerDrawing
{
  if (!-[ICNoteEditorBaseViewController isEditingOnSecureScreen](self, "isEditingOnSecureScreen") && ([MEMORY[0x277D75820] prefersPencilOnlyDrawing] & 1) == 0)
  {
    v3 = [(ICNoteEditorViewController *)self viewControllerManager];
    [v3 updateForFingerDrawingEnabled:1];
  }
}

- (void)cleanupAfterFingerDrawing
{
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v3 = [(ICNoteEditorViewController *)self viewControllerManager];
    [v3 updateForFingerDrawingEnabled:0];
  }
}

- (id)inkPaletteUndoManager:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 undoManager];

  return v4;
}

- (BOOL)isNewInk:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 ink];
    v5 = [v4 inkFormatVersion] > 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)noteHasAnyPencilKitDrawings
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(ICNoteEditorBaseViewController *)self note];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICNoteEditorViewController_noteHasAnyPencilKitDrawings__block_invoke;
  v4[3] = &unk_2781ABF08;
  v4[4] = &v5;
  [v2 enumerateAttachmentsInOrderUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __57__ICNoteEditorViewController_noteHasAnyPencilKitDrawings__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 isPencilKitDrawing];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)inkPalette:(id)a3 didPickTool:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICNoteEditorViewController *)self isNewInk:v7]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
  {
    [(ICNoteEditorViewController *)self upgradePencilKitDrawingsForNewInksPromptingIfNecessary];
  }

  v8 = [(ICNoteEditorViewController *)self textView];
  [v8 _setTool:v7];

  v9 = [(ICNoteEditorViewController *)self isEditing];
  if (v9)
  {
    v10 = [(ICNoteEditorViewController *)self textView];
    v11 = [v10 ink];
    v12 = [v11 _isHandwritingInk] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(ICNoteEditorViewController *)self textView];
  v14 = [v13 ink];
  if ((v9 | [v14 _isHandwritingInk] ^ 1))
  {
    v15 = 0;
  }

  else
  {
    v16 = [(ICNoteEditorViewController *)self paletteResponder];
    v15 = [v16 isFirstResponder] ^ 1;
  }

  if (((v12 | v15) & 1) != 0 && [v6 isInkPaletteShowing])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ICNoteEditorViewController_inkPalette_didPickTool___block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [(ICNoteEditorViewController *)self saveToolAsCurrentTool:v7];
}

void __53__ICNoteEditorViewController_inkPalette_didPickTool___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) paletteResponder];
  [v1 becomeFirstResponder];
}

- (void)upgradePencilKitDrawingsForNewInksPromptingIfNecessary
{
  v3 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 managedObjectContext];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [(ICInlineDrawingUpgradeHelper *)v3 initWithNote:v4 managedObjectContext:v6 textView:v7];

  [(ICNoteEditorViewController *)self upgradeAllAttachmentsInNoteWithUpgradeHelper:v8 forSydney:1];
}

- (void)inkPalette:(id)a3 didChangeColor:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 _setSelectedInkColor:v5];
}

- (void)inkPaletteDidToggleRuler:(id)a3 isRulerActive:(BOOL)a4
{
  v4 = a4;
  v5 = [(ICNoteEditorViewController *)self textView];
  [v5 setRulerEnabled:v4];
}

- (id)inkPaletteButtonView:(id)a3
{
  v4 = a3;
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]|| (objc_opt_respondsToSelector() & 1) == 0 || ([(ICNoteEditorViewController *)self app_systemPaperInkPaletteButtonView:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = 0;
  }

  return v5;
}

- (void)inkPalette:(id)a3 willShowAnimated:(BOOL)a4
{
  v4 = [(ICNoteEditorViewController *)self attributionSidebarController:a3];
  [v4 hideSidebarAnimated:1];
}

- (void)inkPalette:(id)a3 didShowAnimated:(BOOL)a4
{
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:a4];
  [(ICNoteEditorViewController *)self setupForFingerDrawing];
  [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  v5 = [(ICNoteEditorViewController *)self viewControllerManager];
  [v5 updateHostedNotesAppearance];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_inkPickerDidShow];
  }

  v7 = [(ICNoteEditorViewController *)self navigationController];
  v6 = [v7 toolbar];
  [v6 setAccessibilityElementsHidden:1];
}

- (void)inkPalette:(id)a3 willHideAnimated:(BOOL)a4
{
  v5 = [(ICNoteEditorViewController *)self textView:a3];
  v6 = [v5 ink];
  v7 = [v6 _isHandwritingInk];

  if ((v7 & 1) == 0)
  {
    v8 = [(ICNoteEditorViewController *)self textView];
    [v8 setShouldAvoidBecomingFirstResponder:1];
  }
}

- (void)inkPalette:(id)a3 didHideAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = [(ICNoteEditorViewController *)self textView];
  v7 = [v6 ink];
  v8 = [v7 _isHandwritingInk];

  if ((v8 & 1) == 0)
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    [v9 setShouldAvoidBecomingFirstResponder:0];
  }

  [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:v4];
  v10 = [(ICNoteEditorViewController *)self textView];
  [v10 setRulerEnabled:0];

  v11 = MEMORY[0x277D367C0];
  v12 = [(ICNoteEditorViewController *)self view];
  v13 = [v12 window];
  v14 = [v11 sharedToolPickerForWindow:v13];
  [v14 setRulerActive:0];

  [(ICNoteEditorViewController *)self cleanupAfterFingerDrawing];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  v15 = [(ICNoteEditorViewController *)self viewControllerManager];
  [v15 updateHostedNotesAppearance];

  v17 = [(ICNoteEditorViewController *)self navigationController];
  v16 = [v17 toolbar];
  [v16 setAccessibilityElementsHidden:0];
}

- (int64_t)icasPalettePositionFromPKPalettePosition:(int64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return qword_2154BBFD0[a3];
  }
}

- (void)inkPalette:(id)a3 didChangePalettePositionStart:(int64_t)a4 end:(int64_t)a5
{
  if (a4 != a5)
  {
    v8 = [(ICNoteEditorViewController *)self eventReporter];
    v9 = [(ICNoteEditorBaseViewController *)self note];
    [v8 submitPaletteEngagementEventForNote:v9 startPosition:-[ICNoteEditorViewController icasPalettePositionFromPKPalettePosition:](self endPosition:{"icasPalettePositionFromPKPalettePosition:", a4), -[ICNoteEditorViewController icasPalettePositionFromPKPalettePosition:](self, "icasPalettePositionFromPKPalettePosition:", a5)}];

    performAfterExistingTransaction();
  }
}

void __75__ICNoteEditorViewController_inkPalette_didChangePalettePositionStart_end___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewControllerManager];
  [v1 updateHostedNotesAppearance];
}

- (UIView)rulerHostingView
{
  rulerHostingView = self->_rulerHostingView;
  if (!rulerHostingView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(ICNoteEditorViewController *)self view];
    [v5 addSubview:v4];

    v6 = [(ICNoteEditorViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(ICNoteEditorViewController *)self view];
    v9 = [v7 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v8 attribute:15 multiplier:1.0 constant:0.0];
    [v6 addConstraint:v9];

    v10 = [(ICNoteEditorViewController *)self view];
    v11 = MEMORY[0x277CCAAD0];
    v12 = [(ICNoteEditorViewController *)self view];
    v13 = [v11 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v12 attribute:16 multiplier:1.0 constant:-60.0];
    [v10 addConstraint:v13];

    v14 = [(ICNoteEditorViewController *)self view];
    v15 = MEMORY[0x277CCAAD0];
    v16 = [(ICNoteEditorViewController *)self view];
    v17 = [v15 constraintWithItem:v4 attribute:1 relatedBy:0 toItem:v16 attribute:1 multiplier:1.0 constant:0.0];
    [v14 addConstraint:v17];

    v18 = [(ICNoteEditorViewController *)self view];
    v19 = MEMORY[0x277CCAAD0];
    v20 = [(ICNoteEditorViewController *)self view];
    v21 = [v19 constraintWithItem:v4 attribute:2 relatedBy:0 toItem:v20 attribute:2 multiplier:1.0 constant:0.0];
    [v18 addConstraint:v21];

    v22 = self->_rulerHostingView;
    self->_rulerHostingView = v4;

    rulerHostingView = self->_rulerHostingView;
  }

  return rulerHostingView;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v4 = [(ICNoteEditorViewController *)self textView:a3];
  [v4 setEditable:1];
}

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 ink];
  if ([v8 _isHandwritingInk])
  {
    v9 = [(ICNoteEditorViewController *)self textView];
    if ([v9 canBecomeFirstResponder])
    {
      v10 = [(ICNoteEditorViewController *)self textView];
      v11 = [v10 pointInside:0 withEvent:{x, y}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)textViewCanAddStroke:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6 && [v6 activationState])
  {
LABEL_3:
    v7 = 0;
    goto LABEL_11;
  }

  v8 = [(ICNoteEditorBaseViewController *)self note];
  if (v8)
  {
    v9 = v8;
    v10 = [(ICNoteEditorBaseViewController *)self note];
    v11 = [v10 isEditable];

    if ((v11 & 1) == 0)
    {
      v17 = [(ICNoteEditorBaseViewController *)self note];
      v18 = [v17 isDeletedOrInTrash];

      if (v18)
      {
        [(ICNoteEditorViewController *)self showRecoverNoteAlert];
      }

      goto LABEL_3;
    }
  }

  v12 = [(ICNoteEditorViewController *)self textView];
  [v12 hitTestPoint];
  v13 = [(ICNoteEditorViewController *)self inlineDrawingAttachmentForPoint:?];

  if (v13 && ([v13 typeUTI], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D35BD8]), v14, v15))
  {
    [(ICNoteEditorViewController *)self showDrawingUpdateAlert];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:
  return v7;
}

- (void)setIsDrawingStroke:(BOOL)a3
{
  v3 = a3;
  self->_isDrawingStroke = a3;
  v4 = [(ICNoteEditorBaseViewController *)self note];
  [v4 setIsDrawingStroke:v3];
}

- (void)textViewWillBeginStroke:(id)a3 forTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(ICNoteEditorViewController *)self wasEditingBeforeDrawing]&& ![(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self showInkPicker:1 animated:1];
  }

  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    v8 = [(ICNoteEditorBaseViewController *)self note];
    v9 = [v8 documentMergeController];
    v10 = [(ICNoteEditorViewController *)self textView];
    [v9 beginBlockingMergeForReason:5 textView:v10];
  }

  [(ICNoteEditorViewController *)self setCurrentStrokeStartTouch:v6];
  [(ICNoteEditorViewController *)self setIsDrawingStroke:1];
  v11 = [v6 type];

  [(ICNoteEditorViewController *)self setIsDrawingStrokeWithPencil:v11 == 2];
  [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:0];
  [(ICNoteEditorViewController *)self updateUIEnabledStatePencilActive:[(ICNoteEditorViewController *)self isDrawingStrokeWithPencil]];
  [v7 setInputAccessoryView:0];

  [(ICNoteEditorViewController *)self setHasMadeEdits];
}

- (void)updateUIEnabledStatePencilActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self navigationController];
  v6 = [v5 toolbar];
  [v6 setUserInteractionEnabled:!v3];

  v8 = [(ICNoteEditorViewController *)self navigationController];
  v7 = [v8 navigationBar];
  [v7 setUserInteractionEnabled:!v3];
}

- (void)textViewDidEndStroke:(id)a3
{
  [(ICNoteEditorViewController *)self updateUIEnabledStatePencilActive:0];
  if ([(ICNoteEditorViewController *)self isDrawingStroke])
  {
    v4 = [(ICNoteEditorBaseViewController *)self note];
    v5 = [v4 documentMergeController];
    v6 = [(ICNoteEditorViewController *)self textView];
    [v5 endBlockingMergeForReason:5 textView:v6];
  }

  v7 = [(ICNoteEditorViewController *)self isDrawingStrokeWithPencil];
  [(ICNoteEditorViewController *)self setIsDrawingStroke:0];
  [(ICNoteEditorViewController *)self setIsDrawingStrokeWithPencil:0];
  v8 = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setDateOfLastStrokeOrNewDrawing:v8];

  [(ICNoteEditorViewController *)self clearTextViewSelection];
  v9 = [(ICNoteEditorViewController *)self currentStrokeStartTouch];
  v10 = [(ICNoteEditorViewController *)self textView];
  [v9 locationInView:v10];
  v12 = v11;
  v14 = v13;

  v19 = [(ICNoteEditorViewController *)self inlineDrawingAttachmentForPoint:v12, v14];
  if (v19)
  {
    v15 = [v19 identifier];

    if (v15)
    {
      if (v7)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = [(ICNoteEditorViewController *)self eventReporter];
      v18 = [v19 identifier];
      [v17 pushInlineDrawingDataForDrawingID:v18 tool:v16];
    }
  }

  [(ICNoteEditorViewController *)self setCurrentStrokeStartTouch:0];
  if (v7)
  {
    if (![(ICNoteEditorViewController *)self isInkPickerShowing])
    {
      [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:1];
    }

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  }
}

- (void)undoablySwitchToPPK:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = v5;
  if (v3)
  {
    [v5 setPaperEnabled:1];
  }

  else
  {
    [v5 setPaperEnabled:0];

    v6 = [(ICNoteEditorViewController *)self textView];
    [v6 setStylusDrawingEnabled:1];
  }

  v7 = [(ICNoteEditorViewController *)self textView];
  [v7 setDrawingDelegate:self];

  v9 = [(ICNoteEditorViewController *)self undoManager];
  v8 = [v9 prepareWithInvocationTarget:self];
  [v8 undoablySwitchToPPK:!v3];
}

- (void)textView:(id)a3 upgradeDrawingAtIndex:(unint64_t)a4 itemProviders:(id)a5 insertionLocationInDrawing:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v29 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if ([MEMORY[0x277D368E8] isEnabled])
  {
    v11 = [(ICNoteEditorViewController *)self textView];
    v12 = [v11 textStorage];
    v13 = [v12 attribute:*MEMORY[0x277D74060] atIndex:a4 effectiveRange:0];

    objc_opt_class();
    v14 = ICCheckedDynamicCast();
    v15 = [v14 attachment];

    if (v15)
    {
      v16 = [(ICNoteEditorBaseViewController *)self note];
      v17 = [v16 managedObjectContext];

      if (v17)
      {
        v18 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
        v19 = [(ICNoteEditorBaseViewController *)self note];
        v20 = [(ICNoteEditorViewController *)self textView];
        v21 = [(ICInlineDrawingUpgradeHelper *)v18 initWithNote:v19 managedObjectContext:v17 textView:v20];

        v22 = [v14 attachment];
        v23 = [v21 upgradeWithAttachment:v22 itemProviders:v10 itemsLocation:x, y];

        if (v23)
        {
          [(ICNoteEditorViewController *)self upgradeAllAttachmentsInNoteWithUpgradeHelper:v21];
        }

        else
        {
          v24 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v14 attachment];
            v26 = [v25 loggingDescription];
            v27 = 138412290;
            v28 = v26;
            _os_log_impl(&dword_2151A1000, v24, OS_LOG_TYPE_DEFAULT, "Upgrading drawing failed for: %@", &v27, 0xCu);
          }
        }
      }

      else
      {
        v21 = os_log_create("com.apple.notes", "SystemPaper");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_2151A1000, v21, OS_LOG_TYPE_DEFAULT, "Unable to upgrade drawing since note didn't have a MOC", &v27, 2u);
        }
      }
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_2151A1000, v17, OS_LOG_TYPE_DEFAULT, "Unable to upgrade drawing since inline drawing attachment wasn't found", &v27, 2u);
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_2151A1000, v13, OS_LOG_TYPE_DEFAULT, "Unable to upgrade drawing since Paper isn't enabled", &v27, 2u);
    }
  }
}

- (void)upgradeAllAttachmentsInNoteWithUpgradeHelper:(id)a3 forSydney:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke;
  aBlock[3] = &unk_2781ABEB8;
  aBlock[4] = self;
  v7 = v6;
  v36 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper];
  v10 = MEMORY[0x277D362C0];
  if (!v4)
  {
    v10 = MEMORY[0x277D362B8];
  }

  v11 = *v10;
  v12 = *MEMORY[0x277D362B0];
  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [v13 BOOLForKey:v11];

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [v15 BOOLForKey:v12];

  if (v9 || (v14 & 1) != 0 || (v16 & 1) != 0)
  {
    v29 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke_3;
    block[3] = &unk_2781AC7D8;
    v31 = v8;
    dispatch_after(v29, MEMORY[0x277D85CD0], block);
    v24 = v31;
  }

  else
  {
    v17 = MEMORY[0x277D75110];
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"Drawings Will Be Updated" value:&stru_282757698 table:0];
    [MEMORY[0x277CCA8D8] mainBundle];
    v20 = v11;
    v22 = v21 = v8;
    v23 = [v22 localizedStringForKey:@"Drawings will be updated as needed to allow using new drawing features.\n\nOnly devices upgraded to the latest version of iOS value:iPadOS table:{or visionOS will be able to edit updated drawings.", &stru_282757698, 0}];
    v24 = [v17 alertControllerWithTitle:v19 message:v23 preferredStyle:1];

    v8 = v21;
    v11 = v20;

    v25 = MEMORY[0x277D750F8];
    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [v26 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke_2;
    v32[3] = &unk_2781AD3D8;
    v34 = v8;
    v33 = v12;
    v28 = [v25 actionWithTitle:v27 style:0 handler:v32];
    [v24 addAction:v28];

    [(ICNoteEditorViewController *)self presentViewController:v24 animated:1 completion:0];
  }
}

uint64_t __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveInlineDrawings];
  [*(a1 + 32) undoablySwitchToPPK:1];
  [*(a1 + 40) upgradeAllAttachmentsInNote];
  v2 = *(a1 + 32);

  return [v2 becomeFirstResponder];
}

void __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:*(a1 + 32)];
}

- (id)inlineDrawingAttachmentForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v6 = [(ICNoteEditorViewController *)self textView];
  [v6 textContainerInset];
  v8 = v7;

  v9 = [(ICNoteEditorBaseViewController *)self note];
  v10 = [v9 textStorage];
  v11 = [v10 ic_range];
  v13 = v12;

  v35.location = [(ICNoteEditorViewController *)self visibleRange];
  ++v35.length;
  v36.location = v11;
  v36.length = v13;
  v14 = NSIntersectionRange(v35, v36);
  v15 = [(ICNoteEditorBaseViewController *)self note];
  v16 = [v15 textStorage];
  v17 = *MEMORY[0x277D74060];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__ICNoteEditorViewController_inlineDrawingAttachmentForPoint___block_invoke;
  v21[3] = &unk_2781AD400;
  v21[4] = self;
  v21[5] = &v28;
  *&v21[7] = x;
  *&v21[8] = y - v8;
  v21[6] = &v22;
  [v16 enumerateAttribute:v17 inRange:v14.location options:v14.length usingBlock:{0, v21}];

  v18 = v23[5];
  if (!v18)
  {
    objc_storeStrong(v23 + 5, v29[5]);
    v18 = v23[5];
  }

  v19 = v18;
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v19;
}

void __62__ICNoteEditorViewController_inlineDrawingAttachmentForPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  v38 = ICDynamicCast();

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [v38 attachment];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    v14 = [*(a1 + 32) textView];
    v15 = v14;
    if (IsTextKit2Enabled)
    {
      [v14 ic_rectForRange:{a3, a4}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
    }

    else
    {
      v24 = [v14 layoutManager];
      v25 = [v24 glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
      v27 = v26;

      v15 = [*(a1 + 32) textView];
      v28 = [v15 layoutManager];
      v29 = [*(a1 + 32) textView];
      v30 = [v29 textContainer];
      [v28 boundingRectForGlyphRange:v25 inTextContainer:{v27, v30}];
      v17 = v31;
      v19 = v32;
      v21 = v33;
      v23 = v34;
    }

    v40.origin.x = v17;
    v40.origin.y = v19;
    v40.size.width = v21;
    v40.size.height = v23;
    if (CGRectGetMinY(v40) <= *(a1 + 64))
    {
      v41.origin.x = v17;
      v41.origin.y = v19;
      v41.size.width = v21;
      v41.size.height = v23;
      if (CGRectGetMaxY(v41) >= *(a1 + 64))
      {
        v35 = [v38 attachment];
        v36 = *(*(a1 + 48) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        *a5 = 1;
      }
    }
  }
}

- (BOOL)textView:(id)a3 canAddDrawingAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICNoteEditorBaseViewController *)self note];
  if (v7 && (v8 = v7, -[ICNoteEditorBaseViewController note](self, "note"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEditable], v9, v8, !v10) || (-[ICNoteEditorBaseViewController note](self, "note"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "textStorage"), v12 = objc_claimAutoreleasedReturnValue(), Helper_x8__DDResultAttributeName = gotLoadHelper_x8__DDResultAttributeName(v13), objc_msgSend(v16, "attribute:atIndex:effectiveRange:", **(v15 + 472), a4, 0, Helper_x8__DDResultAttributeName), v17 = objc_claimAutoreleasedReturnValue(), v17, v12, v11, v17))
  {
    v18 = [(ICNoteEditorBaseViewController *)self note];
    v19 = [v18 isDeletedOrInTrash];

    if (v19)
    {
      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }
  }

  else
  {
    v22 = [(ICNoteEditorBaseViewController *)self note];
    if (!v22 || (v23 = v22, -[ICNoteEditorBaseViewController note](self, "note"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 canAddAttachment], v24, v23, (v25 & 1) != 0))
    {
      v20 = 1;
      goto LABEL_7;
    }

    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (BOOL)textViewCanSelectDrawing:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [v4 isEditable];

  if ((v5 & 1) == 0)
  {
    v6 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [v6 isDeletedOrInTrash];

    if (v7)
    {
      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }
  }

  return v5;
}

- (void)textView:(id)a3 willAddDrawingAtIndex:(unint64_t)a4
{
  [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
  [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
  v6 = [MEMORY[0x277D75820] prefersPencilOnlyDrawing];
  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 textStorage];
  v9 = [v8 length];

  if ((v6 & 1) == 0 && a4 + 1 < v9)
  {
    [(ICNoteEditorViewController *)self setInkPickerState:1];
    [(ICNoteEditorViewController *)self showInkPickerAndEndEditingIfNecessary];
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setDateOfLastStrokeOrNewDrawing:v10];

  [MEMORY[0x277D367E0] updateTouchPredictionPointsFromOverride];
  objc_opt_class();
  v14 = [(ICNoteEditorViewController *)self textView];
  v11 = ICDynamicCast();
  v12 = [v11 textContentStorage];
  v13 = [v12 textStorage];
  [v13 setAlwaysEnumerateTrailingParagraph:1];
}

- (void)textView:(id)a3 didRemoveDrawingAtIndex:(unint64_t)a4
{
  v5 = [(ICNoteEditorViewController *)self textView:a3];
  [(ICNoteEditorViewController *)self textViewDidChange:v5];
}

- (id)textView:(id)a3 newAttachmentForFileType:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteEditorBaseViewController *)self note];
  v7 = [v6 isEditable];

  if (v7)
  {
    if ([v5 isEqualToString:*MEMORY[0x277CD96A8]])
    {
      v8 = [(ICNoteEditorBaseViewController *)self note];
      v9 = [v8 addInlineDrawingAttachmentWithAnalytics:1];
      v10 = 0x277D367E8;
LABEL_6:

      v16 = [objc_alloc(*v10) initWithAttachment:v9];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:*MEMORY[0x277CD96B0]])
    {
      v11 = [(ICNoteEditorBaseViewController *)self note];
      v12 = [v11 account];
      [v12 ensureCriticalPaperDirectoriesExist];

      v13 = [(ICNoteEditorBaseViewController *)self note];
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [v14 UUIDString];
      v9 = [v13 addSystemPaperAttachmentWithIdentifier:v15];

      v8 = [v9 managedObjectContext];
      [v8 ic_save];
      v10 = 0x277D368E8;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)showHandwritingDebug:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorViewController *)self handwritingDebugPresenter];

  if (!v5)
  {
    v6 = [MEMORY[0x277D75418] ic_isVision];
    v7 = [objc_alloc(MEMORY[0x277D367A0]) initWithPresentingViewController:self presentationStyle:v6 delegate:self];
    [(ICNoteEditorViewController *)self setHandwritingDebugPresenter:v7];
  }

  v8 = [(ICNoteEditorViewController *)self handwritingDebugPresenter];
  v9 = v8;
  if (v3)
  {
    [v8 show];
  }

  else
  {
    [v8 hide];

    [(ICNoteEditorViewController *)self setHandwritingDebugPresenter:0];
  }
}

- (id)radarTitleForHandwritingDebug
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 title];
  v5 = [v2 localizedStringWithFormat:@"Handwriting recognition: %@", v4];

  return v5;
}

- (id)drawingsForHandwritingDebug
{
  v2 = [(ICNoteEditorBaseViewController *)self note];
  v3 = [v2 allDrawings];

  return v3;
}

- (id)titleForAddCollaboratorsActivity:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ICNoteEditorViewController_titleForAddCollaboratorsActivity___block_invoke;
  v10[3] = &unk_2781ACF80;
  v10[4] = self;
  v10[5] = &v11;
  [v6 performBlockAndWait:v10];

  if (*(v12 + 24) == 1)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:@"View Participants" value:&stru_282757698 table:0];
  }

  else
  {
    v8 = @"person.crop.circle.badge.plus";
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __63__ICNoteEditorViewController_titleForAddCollaboratorsActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isSharedViaICloud];
}

- (id)systemImageNameForAddCollaboratorsActivity:(id)a3
{
  v3 = [(ICNoteEditorBaseViewController *)self note];
  v4 = [v3 isSharedViaICloud];

  if (v4)
  {
    return @"person.crop.circle.badge.checkmark";
  }

  else
  {
    return @"person.crop.circle.badge.plus";
  }
}

- (void)createImage:(id)a3
{
  v47[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!ICInternalSettingsShouldShowImageGenerationUI())
  {
    goto LABEL_27;
  }

  v5 = [(ICNoteEditorViewController *)self canPerformCreateImageWithSelection];
  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = [v6 attachment];

  v8 = [(ICNoteEditorViewController *)self textView];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v5;
  }

  if (!v10)
  {
    v23 = [v8 singleSelectedAttachment];
    v7 = [v23 attachment];
    goto LABEL_13;
  }

  v11 = [v8 TTTextStorage];
  v12 = [v11 length];

  if (v12 <= 0x18)
  {
    v13 = [(ICNoteEditorViewController *)self textView];
    v14 = [v13 TTTextStorage];
    v9 = [v14 ic_stringByTrimmingLeadingTrailingWhitespace];

    if (![v9 length])
    {
LABEL_14:

      goto LABEL_15;
    }

    objc_opt_class();
    v15 = *MEMORY[0x277D74060];
    v16 = [v9 attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(v9 effectiveRange:{"length") - 1, 0}];
    v17 = ICDynamicCast();
    v23 = [v17 fileType];

    if ([MEMORY[0x277D35E00] typeUTIIsSystemPaper:v23])
    {
      v18 = [v9 attributedSubstringFromRange:{0, objc_msgSend(v9, "length") - 1}];
      v19 = [v18 ic_stringByTrimmingLeadingTrailingWhitespace];

      v9 = v19;
    }

    if ([v9 length] == 1)
    {
      objc_opt_class();
      v20 = [v9 attribute:v15 atIndex:0 effectiveRange:0];
      v21 = ICDynamicCast();
      v22 = [v21 attachment];

      v7 = v22;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  if ([v7 attachmentType] == 3)
  {
    v24 = [v7 isPasswordProtected];
    v25 = [v7 media];
    v26 = v25;
    if (v24)
    {
      v27 = [v25 data];
      v28 = CGImageSourceCreateWithData(v27, 0);
    }

    else
    {
      v27 = [v25 mediaURL];
      v28 = CGImageSourceCreateWithURL(v27, 0);
    }

    v39 = v28;

    if (v39)
    {
      v40 = *MEMORY[0x277CD3578];
      v46[0] = *MEMORY[0x277CD3660];
      v46[1] = v40;
      v47[0] = &unk_28277E4D8;
      v47[1] = MEMORY[0x277CBEC38];
      v46[2] = *MEMORY[0x277CD3568];
      v47[2] = MEMORY[0x277CBEC38];
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v39, 0, v41);
      if (ThumbnailAtIndex)
      {
        v43 = ThumbnailAtIndex;
        v44 = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
        [v44 insertMagicGenerativePlaygroundWithImage:v43];

        CGImageRelease(v43);
      }

      CFRelease(v39);
    }
  }

  else if (v5)
  {
    v29 = [(ICNoteEditorViewController *)self textView];
    v30 = [v29 selectedRange];
    v32 = v31;

    v33 = [(ICNoteEditorViewController *)self textView];
    v34 = [v33 TTTextStorage];
    v35 = [*MEMORY[0x277CE1E20] identifier];
    v36 = [v34 filteredAttributedStringForUTI:v35 range:{v30, v32}];
    v37 = [v36 string];

    v38 = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
    [v38 insertMagicGenerativePlaygroundWithText:v37];
  }

  else
  {
    v45 = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
    [v45 insertMagicGenerativePlaygroundWithAutomaticContent];
  }

LABEL_27:
}

- (BOOL)canPerformCreateImageWithSelection
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  v7 = [(ICNoteEditorViewController *)self textView];
  v8 = [v7 textAttachmentsInRange:{v4, v6}];

  if ([v8 count] <= 1)
  {
    v10 = [v8 firstObject];
    v11 = [v10 attachment];

    v12 = v6 == 1 && [v11 attachmentType] == 3;
    v9 = (v11 == 0 || v12) && v6 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setMagicGenerativePlaygroundUndoManager:(id)a3
{
  v5 = a3;
  magicGenerativePlaygroundUndoManager = self->_magicGenerativePlaygroundUndoManager;
  if (magicGenerativePlaygroundUndoManager != v5)
  {
    v16 = v5;
    v7 = MEMORY[0x277CCA7F8];
    v8 = MEMORY[0x277CCA810];
    v9 = MEMORY[0x277CCA808];
    if (magicGenerativePlaygroundUndoManager)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 removeObserver:self name:*v7 object:self->_magicGenerativePlaygroundUndoManager];

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 removeObserver:self name:*v8 object:self->_magicGenerativePlaygroundUndoManager];

      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 removeObserver:self name:*v9 object:self->_magicGenerativePlaygroundUndoManager];
    }

    objc_storeStrong(&self->_magicGenerativePlaygroundUndoManager, a3);
    if (v16)
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 addObserver:self selector:sel_updateBarButtons name:*v7 object:v16];

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:self selector:sel_updateBarButtons name:*v8 object:v16];

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      [v15 addObserver:self selector:sel_updateBarButtons name:*v9 object:v16];
    }

    [(ICNoteEditorViewController *)self updateBarButtons];
    v5 = v16;
  }
}

- (void)magicGenerativePlaygroundWillDisappear
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v3 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    v4 = [v3 inlineSketchEditingState];

    if (v4 == 4)
    {
      v5 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      [v5 setInlineSketchEditingState:0];

      v6 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      [v6 updateAnimated:0];
    }
  }
}

- (void)mentionInsertedInNote:(id)a3 mentionID:(id)a4 participantID:(id)a5 viaAutoComplete:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(ICNoteEditorViewController *)self eventReporter];
  [v13 submitMentionAddEventForNote:v12 mentionID:v11 participantID:v10 viaAutoComplete:v6];
}

- (void)inlineAttachmentDeleted:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35C68]];
  v9 = ICDynamicCast();

  if ([v9 isMentionAttachment])
  {
    v7 = [(ICNoteEditorViewController *)self eventReporter];
    v8 = [(ICNoteEditorBaseViewController *)self note];
    [v7 submitMentionDeleteEvent:v8];
  }

  else
  {
    if (![v9 isHashtagAttachment])
    {
      goto LABEL_6;
    }

    v7 = [(ICNoteEditorViewController *)self eventReporter];
    v8 = [(ICNoteEditorBaseViewController *)self note];
    [v7 submitHashtagDeleteEvent:v8 approachEnum:4];
  }

LABEL_6:
  [v9 accessibilityAnnounceDeletionWithVoiceOver];
}

- (void)hashtagInsertedInNote:(id)a3 tokenContentIdentifier:(id)a4 viaAutoComplete:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ICNoteEditorViewController *)self eventReporter];
  [v10 submitHashtagAddEventForNote:v9 tokenContentIdentifier:v8 viaAutoComplete:v5];
}

- (BOOL)noteEditorNavigationItemConfigurationIsToolbarHidden
{
  v2 = [(ICNoteEditorViewController *)self navigationController];
  v3 = [v2 isToolbarHidden];

  return v3;
}

- (id)noteEditorNavigationItemConfigurationChecklistAccessibilityValue:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v4 checklistStyleAccessibilityDescriptionForRange:{v6, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationIndentationAccessibilityValue:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v4 indentationStyleAccessibilityDescriptionForRange:{v6, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:(id)a3
{
  v4 = [(ICNoteEditorBaseViewController *)self note];
  v5 = [(ICNoteEditorViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = [v4 emphasisStyleAccessibilityDescriptionForRange:{v6, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationInputAccessoryToolbar:(id)a3
{
  v3 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  v4 = [v3 toolbar];

  return v4;
}

- (id)noteEditorNavigationItemConfigurationInputAssistantItem:(id)a3
{
  if ([MEMORY[0x277D75418] ic_isiPad])
  {
    v4 = [(ICNoteEditorViewController *)self textView];
    v5 = [v4 inputAssistantItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)noteEditorNavigationItemConfigurationTableAttachmentViewController:(id)a3
{
  objc_opt_class();
  v4 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v5 = ICDynamicCast();

  v6 = [(ICNoteEditorViewController *)self getTableControllerFor:v5];

  return v6;
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 setToolbarHidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = [(ICNoteEditorViewController *)self navigationController];
  [v7 setToolbarHidden:v6 animated:v5];

  dispatchMainAfterDelay();
}

void __94__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_setToolbarHidden_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollViewResizer];
  [v1 reapplyInsets];
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 addNoteFromBarButtonItem:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICNoteEditorBaseViewController *)self note];
  if (v11 && (v12 = v11, -[ICNoteEditorBaseViewController note](self, "note"), v13 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D366C8] currentAttachment], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "note"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v12, v13 == v15))
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v9);
    v16 = MEMORY[0x277D75110];
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:@"Stop Recording?" value:&stru_282757698 table:0];
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"Are you sure you want to create a new note? It will stop audio recording." value:&stru_282757698 table:0];
    v21 = [v16 alertControllerWithTitle:v18 message:v20 preferredStyle:1];

    v22 = MEMORY[0x277D750F8];
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [v23 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke;
    v30[3] = &unk_2781AD450;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, &from);
    v31 = v10;
    v25 = [v22 actionWithTitle:v24 style:0 handler:v30];
    [v21 addAction:v25];

    v26 = MEMORY[0x277D750F8];
    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [v27 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
    v29 = [v26 actionWithTitle:v28 style:1 handler:&__block_literal_global_1218];
    [v21 addAction:v29];

    [(ICNoteEditorViewController *)self presentViewController:v21 animated:1 completion:0];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICNoteEditorViewController *)self addNote:v9 event:v10 shouldInstrumentAsNewNoteAffordanceUsage:1];
  }
}

void __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D366C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke_2;
  v5[3] = &unk_2781AD428;
  objc_copyWeak(&v7, a1 + 5);
  objc_copyWeak(&v8, a1 + 6);
  v6 = a1[4];
  [v4 cancelCurrentAudioRecordingSessionWithCompletionHandler:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "AudioTranscription");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke_2_cold_2();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addNote:v7 event:*(a1 + 32) shouldInstrumentAsNewNoteAffordanceUsage:1];
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 showWritingToolsFromBarButtonItem:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_showWritingToolsFromBarButtonItem___block_invoke;
  v7[3] = &unk_2781ABEB8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __102__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_showWritingToolsFromBarButtonItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];
  [v2 showWritingTools:*(a1 + 40)];
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 openLinkEditorWithSender:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v8 = ICDynamicCast();

  v7 = v8;
  if (!v8)
  {
    v7 = self;
  }

  [(ICNoteEditorViewController *)v7 openLinkEditor:v5];
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 toggleListStyle:(unsigned int)a4 withSender:(id)a5
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:*&a4];
  switch(a4)
  {
    case 'f':
      v12 = [(ICNoteEditorViewController *)self eventReporter];
      v7 = [(ICNoteEditorBaseViewController *)self note];
      v8 = v12;
      v9 = v7;
      v10 = 8;
      goto LABEL_7;
    case 'e':
      v12 = [(ICNoteEditorViewController *)self eventReporter];
      v7 = [(ICNoteEditorBaseViewController *)self note];
      v8 = v12;
      v9 = v7;
      v10 = 7;
      goto LABEL_7;
    case 'd':
      v12 = [(ICNoteEditorViewController *)self eventReporter];
      v7 = [(ICNoteEditorBaseViewController *)self note];
      v8 = v12;
      v9 = v7;
      v10 = 6;
LABEL_7:
      [v8 submitStyleFormatEventForModernNote:v9 styleTypeValue:v10];

      return;
  }

  v11 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ICNoteEditorViewController noteEditorNavigationItemConfiguration:toggleListStyle:withSender:];
  }
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 closeAuxiliaryWindowFromBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteEditorBaseViewController *)self note];
  if (v8 && (v9 = v8, -[ICNoteEditorBaseViewController note](self, "note"), v10 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D366C8] currentAttachment], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "note"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9, v10 == v12))
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D75110];
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"Stop Recording?" value:&stru_282757698 table:0];
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:@"Are you sure you want to leave this note? It will stop audio recording." value:&stru_282757698 table:0];
    v19 = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

    v20 = MEMORY[0x277D750F8];
    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [v21 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __106__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_closeAuxiliaryWindowFromBarButtonItem___block_invoke;
    v31 = &unk_2781AD478;
    objc_copyWeak(&v32, &location);
    v23 = [v20 actionWithTitle:v22 style:0 handler:&v28];
    [v19 addAction:{v23, v28, v29, v30, v31}];

    v24 = MEMORY[0x277D750F8];
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
    v27 = [v24 actionWithTitle:v26 style:1 handler:&__block_literal_global_1224];
    [v19 addAction:v27];

    [(ICNoteEditorViewController *)self presentViewController:v19 animated:1 completion:0];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(ICNoteEditorViewController *)self viewControllerManager];
    [v13 closeAuxiliaryWindow];
  }
}

void __106__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_closeAuxiliaryWindowFromBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewControllerManager];
  [v1 closeAuxiliaryWindow];
}

- (void)noteEditorNavigationItemConfiguration:(id)a3 toggleSidebarFromBarButtonItem:(id)a4
{
  v4 = [(ICNoteEditorViewController *)self viewControllerManager:a3];
  [v4 toggleSidebar];
}

- (void)acceleratorOriginNeedsUpdate
{
  v3 = [(ICNoteEditorViewController *)self textView];
  v15 = [v3 selectedTextRange];

  v4 = [(ICNoteEditorViewController *)self textView];
  v5 = [v15 end];
  [v4 caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v14 updateAcceleratorOriginWith:{v7, v9, v11, v13}];
}

- (BOOL)languageHasSpaces
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 languageHasSpaces];

  return v3;
}

- (int64_t)writingDirection
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 ic_currentWritingDirection];

  return v3;
}

- (_NSRange)lastSelectedRangeForAccelerator
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 selectedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)splitViewModeChangeDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v7 = ICDynamicCast();

  if ([v7 displayMode] != 3 && objc_msgSend(v7, "displayMode") != 5)
  {
    v6 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [v6 presentLinkAcceleratorIfNecessaryWithCompletionHandler:&__block_literal_global_1227];
  }
}

- (id)contextMenuInteraction:(id)a3 atLocation:(CGPoint)a4 inTableTextView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = [(ICNoteEditorViewController *)v10 characterRangeAtPoint:x, y];
    v13 = [(ICNoteEditorViewController *)v11 ic_characterRangeFromTextRange:v12];
    v55 = v14;
    v56 = v13;
    v15 = v11;
  }

  else
  {
    v12 = [(ICNoteEditorBaseViewController *)self note];
    v16 = [v12 rangeForAttachment:v9];
    v55 = v17;
    v56 = v16;
    v15 = self;
  }

  v58 = v15;
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"Open Note" value:&stru_282757698 table:0];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke;
  v72[3] = &unk_2781AD2F0;
  v22 = v9;
  v73 = v22;
  v74 = self;
  v23 = [v19 ic_actionWithTitle:v21 imageName:@"note.text" handler:v72];

  v57 = v23;
  [v18 addObject:v23];
  if (objc_opt_respondsToSelector())
  {
    v24 = MEMORY[0x277D750C8];
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 localizedStringForKey:@"Copy Link" value:&stru_282757698 table:0];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_2;
    v70[3] = &unk_2781AD2F0;
    v70[4] = self;
    v71 = v22;
    v27 = [v24 ic_actionWithTitle:v26 imageName:@"doc.on.doc" handler:v70];

    [v18 addObject:v27];
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = [(ICNoteEditorBaseViewController *)self note];
    if ([v28 isSharedReadOnly])
    {
    }

    else
    {
      v29 = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];

      if (!v29)
      {
        v30 = MEMORY[0x277D750C8];
        v31 = [MEMORY[0x277CCA8D8] mainBundle];
        v32 = [v31 localizedStringForKey:@"Edit Link" value:&stru_282757698 table:0];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_3;
        v65[3] = &unk_2781AD4A0;
        v65[4] = self;
        v66 = v22;
        v68 = v56;
        v69 = v55;
        v67 = v58;
        v33 = [v30 ic_actionWithTitle:v32 imageName:@"pencil" handler:v65];

        [v18 addObject:v33];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = [(ICNoteEditorBaseViewController *)self note];
    v35 = [v34 isSharedReadOnly];

    if ((v35 & 1) == 0)
    {
      v36 = MEMORY[0x277D750C8];
      v37 = [MEMORY[0x277CCA8D8] mainBundle];
      v38 = [v37 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_4;
      v63[3] = &unk_2781AD2F0;
      v63[4] = self;
      v64 = v22;
      v39 = [v36 ic_actionWithTitle:v38 imageName:@"xmark.circle" attributes:2 handler:v63];

      [v18 addObject:v39];
    }
  }

  v40 = [v22 tokenContentIdentifier];
  v41 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

  v42 = [MEMORY[0x277D35DF0] predicateForNotesMentionedInURL:v41];
  v43 = [MEMORY[0x277D35F30] sharedContext];
  v44 = v43;
  v45 = 0;
  if (v42 && v43)
  {
    v46 = MEMORY[0x277D35F28];
    v47 = [v43 managedObjectContext];
    v48 = [v46 notesMatchingPredicate:v42 context:v47];

    v49 = [v48 firstObject];
    if (v49)
    {
      v50 = v49;
      v51 = [(ICNoteEditorViewController *)self notePreviewView:v49];
      v52 = MEMORY[0x277D753B0];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_5;
      v61[3] = &unk_2781AD4C8;
      v62 = v51;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_6;
      v59[3] = &unk_2781AD4F0;
      v60 = v18;
      v53 = v51;
      v45 = [v52 configurationWithIdentifier:0 previewProvider:v61 actionProvider:v59];
    }

    else
    {
      v45 = 0;
    }
  }

  return v45;
}

void __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tokenContentIdentifier];
  v4 = NotesAppURLForTokenContentIdentifier();

  v3 = [*(a1 + 40) view];
  [ICExtensionSafeAPIShims openURL:v4 originatingView:v3 completionHandler:0];
}

void __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 rangeForAttachment:*(a1 + 40)];
  v5 = v4;

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 32) textView];
    [v6 setSelectedRange:{v3, v5}];

    v7 = [*(a1 + 32) textView];
    [v7 copy:*(a1 + 32)];
  }
}

uint64_t __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 rangeForAttachment:*(a1 + 40)];
  v5 = v4;

  v6 = *(a1 + 32);

  return [v6 removeLinksFromRange:{v3, v5}];
}

- (id)notePreviewView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ICNoteEditorViewController *)self notePreview:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (ICNAEventReporter)audioEventReporter
{
  if (!self->_audioEventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithSubTrackerName:v5];
    audioEventReporter = self->_audioEventReporter;
    self->_audioEventReporter = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_audioEventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_audioEventReporter];
  }

  v9 = self->_audioEventReporter;

  return v9;
}

- (void)audioEventReporterLostSession:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController audioEventReporterLostSession:];
  }

  audioEventReporter = self->_audioEventReporter;
  self->_audioEventReporter = 0;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D35958];
  v9 = [v4 object];

  [v7 removeObserver:self name:v8 object:v9];
}

- (ICNAFindResultExposureReporter)findResultReporter
{
  findResultReporter = self->_findResultReporter;
  if (!findResultReporter)
  {
    v4 = objc_alloc(MEMORY[0x277D35980]);
    v5 = [(ICNoteEditorViewController *)self viewControllerManager];
    v6 = [v5 window];
    v7 = [v4 initWithWindow:v6];
    v8 = self->_findResultReporter;
    self->_findResultReporter = v7;

    findResultReporter = self->_findResultReporter;
  }

  return findResultReporter;
}

- (id)icaxDateView
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 dateView];

  return v3;
}

- (id)icaxUserTitleView
{
  v2 = [(ICNoteEditorViewController *)self textView];
  v3 = [v2 userTitleView];

  return v3;
}

- (id)icaxMiniPlayerView
{
  if ([(ICNoteEditorViewController *)self isShowingMiniPlayer])
  {
    v3 = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
    v4 = [v3 icaxMiniPlayerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICNoteEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LinkEditorController)linkEditorController
{
  WeakRetained = objc_loadWeakRetained(&self->_linkEditorController);

  return WeakRetained;
}

- (_NSRange)lastSelectedRange
{
  p_lastSelectedRange = &self->_lastSelectedRange;
  location = self->_lastSelectedRange.location;
  length = p_lastSelectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGPoint)changePasswordContentOffset
{
  x = self->_changePasswordContentOffset.x;
  y = self->_changePasswordContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (ICInlineCanvasTextAttachment)selectedCanvasAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedCanvasAttachment);

  return WeakRetained;
}

- (void)updateSelectionOnUndo:(id)a3
{
  v4 = [a3 rangeValue];

  [(ICNoteEditorViewController *)self setSelectedRange:v4, 0];
}

- (void)viewDidAppear:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viewDidDisappear:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)observeDrawingConverted:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attachmentInsertionController:didAddAttachment:atRange:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attachmentInsertionController:didAddAttachment:atRange:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)documentCameraPresentingViewController:(void *)a1 didFinishWithInfoCollection:imageCache:warnUser:closeViewController:.cold.1(void *a1)
{
  v2 = [a1 note];
  v3 = [a1 note];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)documentCameraPresentingViewController:(void *)a1 didFinishWithInfoCollection:imageCache:warnUser:closeViewController:.cold.2(void *a1)
{
  v2 = [a1 note];
  v3 = [a1 note];
  v9 = [v3 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [*(a2 + 40) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Failed to create paper document from ICDocCamDocumentInfoCollection with error: %@ -- deleting attachment %@", v5, 0x16u);
}

- (void)setPaperLinkBarShowing:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setPaperLinkBarShowing:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setPaperLinkBarShowing:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setPaperLinkBarShowing:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setNote:(uint64_t)a1 delayedForLaunch:(void *)a2 startEditing:successHandler:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)insertSidecarItems:(os_log_t)log service:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "Cannot insert sketch from Sidecar because UTI is not supported", buf, 2u);
}

void __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addToTags:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 textView];
  v8.location = [v1 selectedRange];
  v2 = NSStringFromRange(v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)shouldStartEditingForTapGesture:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2151A1000, log, OS_LOG_TYPE_DEBUG, "Blocked start editing with longer time interval: %g", &v2, 0xCu);
}

- (void)shouldStartEditingForTapGesture:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2151A1000, log, OS_LOG_TYPE_DEBUG, "Blocked start editing with time interval: %g", &v2, 0xCu);
}

- (void)lastSavedInkingTool
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveToolAsCurrentTool:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveToolAsCurrentTool:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end