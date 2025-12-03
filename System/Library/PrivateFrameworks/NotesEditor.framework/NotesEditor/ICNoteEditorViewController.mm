@interface ICNoteEditorViewController
+ (UIMenu)indentationMenu;
+ (UIMenu)textAlignmentMenu;
+ (id)editorViewControllerWithIdentifier:(int64_t)identifier options:(unint64_t)options;
+ (void)dismissChildPresentedViewControllersInPostOrder:(id)order animated:(BOOL)animated completion:(id)completion;
+ (void)initialize;
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)addSystemPaperLink:(id)link updateFirstResponder:(BOOL)responder;
- (BOOL)allowsAccessibilityChildReparenting;
- (BOOL)allowsNewTextLength:(unint64_t)length;
- (BOOL)attachmentView:(id)view shouldRespondToPanGestureTouch:(id)touch forAttachment:(id)attachment;
- (BOOL)becomeFirstResponder;
- (BOOL)canAddToTags;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canConvertToTag;
- (BOOL)canConvertToText;
- (BOOL)canFindInNote;
- (BOOL)canIndentByAmount:(int64_t)amount;
- (BOOL)canIndentLeft;
- (BOOL)canIndentRight;
- (BOOL)canMoveCheckedToBottom;
- (BOOL)canMoveSelectedListItemDown;
- (BOOL)canMoveSelectedListItemUp;
- (BOOL)canOpenLink;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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
- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleTapGestureForAttribution:(id)attribution;
- (BOOL)headerSubviewsFadeInOnUnderscrolling;
- (BOOL)ignoresTaps;
- (BOOL)isAssociatedWindowScene:(id)scene;
- (BOOL)isBlockQuoteSet;
- (BOOL)isChecklistSelected;
- (BOOL)isDocumentCameraAvailable;
- (BOOL)isEditingOnSystemPaperOnPad;
- (BOOL)isEditingOnSystemPaperOnPhone;
- (BOOL)isInkPickerShowing;
- (BOOL)isNewInk:(id)ink;
- (BOOL)isOnlyBlockQuoteEnabled;
- (BOOL)isPasswordEntryShowing;
- (BOOL)isPhotosLibraryAvailable;
- (BOOL)isPositionOnTodoItem:(CGPoint)item;
- (BOOL)isShowingAudioInspector;
- (BOOL)isShowingMiniPlayer;
- (BOOL)isSwipeOnTodoItem:(id)item;
- (BOOL)languageHasSpaces;
- (BOOL)noteEditorNavigationItemConfigurationIsToolbarHidden;
- (BOOL)noteHasAnyPencilKitDrawings;
- (BOOL)resignFirstResponder;
- (BOOL)safeAreaContainsKeyboard;
- (BOOL)shouldAllowAttributionSidebar;
- (BOOL)shouldBlockHitTestOnTextView:(id)view event:(id)event;
- (BOOL)shouldEnablePencilGestures;
- (BOOL)shouldForceLightContent;
- (BOOL)shouldIgnoreTapToStartEditingTextView:(id)view;
- (BOOL)shouldInsertNewDrawingsAsPaper;
- (BOOL)shouldLockTextViewContentOffset;
- (BOOL)shouldShowMenuItems;
- (BOOL)shouldStartEditingForTapGesture:(id)gesture;
- (BOOL)shouldUseiPadBarLayout;
- (BOOL)styleSelectorInputViewShowing;
- (BOOL)styleSelectorShouldDisableTextStyles:(id)styles;
- (BOOL)styleSelectorShouldUseCompactTopInset:(id)inset;
- (BOOL)textView:(id)view canAddDrawingAtIndex:(unint64_t)index;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (BOOL)textViewCanAddStroke:(id)stroke;
- (BOOL)textViewCanSelectDrawing:(id)drawing;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (BOOL)toggleInkPickerAnimated:(BOOL)animated;
- (BOOL)useInputViewForStyleSelector;
- (BOOL)usesContextualFormatBar;
- (BOOL)usesCustomTransition;
- (BOOL)wantsToRemainFirstResponder;
- (CGPoint)changePasswordContentOffset;
- (CGRect)notesQuickLookActivityItem:(id)item rectForPreviewItem:(id)previewItem inView:(id *)view previewController:(id)controller;
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
- (ICNoteEditorViewController)initWithIdentifier:(int64_t)identifier options:(unint64_t)options;
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
- (_NSRange)charRangeForSwipeTextRange:(id)range;
- (_NSRange)lastSelectedRange;
- (_NSRange)lastSelectedRangeForAccelerator;
- (_NSRange)rangeForIndentationGestureAtPoint:(CGPoint)point;
- (_NSRange)textViewVisibleRange;
- (_NSRange)visibleRange;
- (double)inputAccessoryViewHeight;
- (double)textViewBottomInsetThatWeWant;
- (double)textViewBottomInsetThatWeWantForEditing:(BOOL)editing;
- (double)textViewBottomPaddingVisibleRatio;
- (double)textViewScrollPosition;
- (double)textViewTopInsetThatWeWant;
- (id)addNewNoteWithEvent:(id)event;
- (id)addQuickNoteWithPencil:(BOOL)pencil;
- (id)attachmentViewForTextAttachment:(id)attachment characterIndex:(int64_t)index;
- (id)attributedStringFromHTML:(id)l;
- (id)barButtonItemWithImage:(id)image selector:(SEL)selector;
- (id)contextMenuInteraction:(id)interaction atLocation:(CGPoint)location inTableTextView:(id)view;
- (id)createNewNote;
- (id)currentStylesForStyleSelectorIgnoreTypingAttributes:(BOOL)attributes;
- (id)currentValidToolForNewDrawingOrNote;
- (id)defaultInkColor;
- (id)documentCameraControllerCreateDataCryptorIfNecessary;
- (id)drawingsForHandwritingDebug;
- (id)dynamicBarColor;
- (id)firstEmbeddedScrollViewInView:(id)view;
- (id)flexibleSpaceBarButtonItem;
- (id)getTableControllerFor:(id)for;
- (id)iCloudShareBarButtonItem;
- (id)icSplitViewController;
- (id)icaxDateView;
- (id)icaxMiniPlayerView;
- (id)icaxUserTitleView;
- (id)inkPaletteButtonView:(id)view;
- (id)inkPaletteUndoManager:(id)manager;
- (id)inlineDrawingAttachmentForPoint:(CGPoint)point;
- (id)lastPaperDocumentAttachmentView;
- (id)linkForSelection;
- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects;
- (id)nibBundle;
- (id)noteEditorNavigationItemConfigurationChecklistAccessibilityValue:(id)value;
- (id)noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:(id)value;
- (id)noteEditorNavigationItemConfigurationIndentationAccessibilityValue:(id)value;
- (id)noteEditorNavigationItemConfigurationInputAccessoryToolbar:(id)toolbar;
- (id)noteEditorNavigationItemConfigurationInputAssistantItem:(id)item;
- (id)noteEditorNavigationItemConfigurationTableAttachmentViewController:(id)controller;
- (id)noteFormattingTintColor;
- (id)notePreviewView:(id)view;
- (id)notesQuickLookActivityItem:(id)item transitionViewForPreviewItem:(id)previewItem previewController:(id)controller;
- (id)radarTitleForHandwritingDebug;
- (id)scanDataDelegateWithIdentifier:(id)identifier;
- (id)systemImageNameForAddCollaboratorsActivity:(id)activity;
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (id)textView:(id)view newAttachmentForFileType:(id)type;
- (id)textView:(id)view writingToolsIgnoredRangesInEnclosingRange:(_NSRange)range;
- (id)titleForAddCollaboratorsActivity:(id)activity;
- (id)undoManager;
- (id)userActivity;
- (id)viewForAttachment:(id)attachment;
- (int64_t)attributionSidebarVisibility;
- (int64_t)currentEmphasisType;
- (int64_t)currentWritingDirection;
- (int64_t)icasPalettePositionFromPKPalettePosition:(int64_t)position;
- (int64_t)indentAmountIncreasing:(BOOL)increasing;
- (int64_t)preferredStatusBarStyle;
- (int64_t)writingDirection;
- (unint64_t)currentBIUSForStyleSelector;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_beginLiveResize:(id)resize;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_endLiveResize:(id)resize;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)_scrollViewDidInterruptDecelerating:(id)decelerating;
- (void)_textViewDidEndUndoCoalescingForWritingTools:(id)tools;
- (void)_textViewWillBeginUndoCoalescingForWritingTools:(id)tools;
- (void)acceleratorOriginNeedsUpdate;
- (void)addKVOObserversForNote:(id)note;
- (void)addNewNoteIfNeeded;
- (void)addNote:(id)note event:(id)event shouldInstrumentAsNewNoteAffordanceUsage:(BOOL)usage;
- (void)addSystemPaperAttachment;
- (void)addSystemPaperImageData:(id)data updateFirstResponder:(BOOL)responder forceAddToPaper:(BOOL)paper;
- (void)addTable:(id)table;
- (void)addToGraph:(id)graph;
- (void)addToTags:(id)tags;
- (void)addTodoListAtEndOfNote;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applyAccessibilityInfo;
- (void)applyScrollStateFromArchive:(id)archive;
- (void)applyScrollStateIfAvailable;
- (void)attachFile:(id)file;
- (void)attachmentBrickDidChangeSize;
- (void)attachmentInsertionController:(id)controller didAddAttachment:(id)attachment atRange:(_NSRange)range;
- (void)attachmentInsertionController:(id)controller didAddInlineAttachment:(id)attachment atRange:(_NSRange)range textStorage:(id)storage;
- (void)attachmentInsertionController:(id)controller willAddAttachment:(id)attachment atRange:(_NSRange)range;
- (void)attachmentPresenterDidDismiss:(id)dismiss;
- (void)attachmentView:(id)view shouldPresentAttachment:(id)attachment;
- (void)attachmentView:(id)view shouldPresentNote:(id)note;
- (void)attachmentView:(id)view shouldShareAttachment:(id)attachment;
- (void)audioEventReporterLostSession:(id)session;
- (void)audioFindInTranscript:(id)transcript;
- (void)audioRecordingStarted:(id)started;
- (void)audioRecordingStopped:(id)stopped;
- (void)audioTranscriptInteraction:(id)interaction;
- (void)authenticationAuthenticateBiometricsAttemptDidFail:(id)fail;
- (void)blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:(double)duration;
- (void)calculateDocumentControllerDidUpdateHighlights:(id)highlights;
- (void)cancelFromSystemPaperCard:(id)card;
- (void)changeIndentationByIncreasing:(BOOL)increasing sender:(id)sender;
- (void)checkAll:(id)all;
- (void)cleanupAfterAddImageAttachmentOperation;
- (void)cleanupAfterBarSourcedPopoverPresentation;
- (void)cleanupAfterFingerDrawing;
- (void)clearTextViewSelection;
- (void)configureBarAppearancesIfNecessary;
- (void)contentSizeCategoryDidChange;
- (void)convertToTag:(id)tag;
- (void)convertToText:(id)text;
- (void)createAndPresentCloudSharingControllerBySender:(id)sender;
- (void)createImage:(id)image;
- (void)createInkPickerControllerIfNecessary;
- (void)createLink:(id)link title:(id)title textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach;
- (void)createNoteLinkAttachment:(id)attachment textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach;
- (void)createSystemPaperLinkBarIfNecessary;
- (void)createTodoListItem:(id)item;
- (void)dealloc;
- (void)decreaseIndentation:(id)indentation;
- (void)deleteCurrentNote:(id)note;
- (void)didAddAttachmentForNoteNotification:(id)notification;
- (void)didBeginFindInteraction;
- (void)didEndEditingNote;
- (void)didEndFindInteraction;
- (void)didInvokeAnalyticsCalloutBarButtonActionOfType:(int64_t)type;
- (void)didInvokeAnalyticsChecklistActionChecked:(BOOL)checked;
- (void)didInvokePasteWithAttributedString:(id)string;
- (void)didUpdateSearchQueryInFindInteraction:(id)interaction;
- (void)disableBoldface;
- (void)disableItalics;
- (void)disableStrikethrough;
- (void)disableUnderline;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user;
- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController;
- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)controller;
- (void)documentCameraControllerDidRetake:(id)retake pageCount:(unint64_t)count;
- (void)documentCameraPresentingViewController:(id)controller didFinishWithInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)donateEditingIntentIfNecessary;
- (void)doneEditing;
- (void)doneEditing:(id)editing;
- (void)enableBoldface;
- (void)enableItalics;
- (void)enableStrikethrough;
- (void)enableUnderline;
- (void)ensurePaperPreviewsExistIfNecessary;
- (void)ensureValidInkForNewDrawingOrNote;
- (void)eventReporterLostSession:(id)session;
- (void)fetchAll;
- (void)handleLeftOrRightSwipe:(id)swipe;
- (void)handleMenuBarButtonTap:(id)tap;
- (void)hashtagInsertedInNote:(id)note tokenContentIdentifier:(id)identifier viaAutoComplete:(BOOL)complete;
- (void)hashtagViewController:(id)controller insertFutureHashtagWithText:(id)text;
- (void)hashtagViewController:(id)controller insertHashtagWithText:(id)text;
- (void)hashtagViewController:(id)controller insertUnknownInlineAttachmentWithText:(id)text;
- (void)hideAcceleratorIfNecessary;
- (void)hideActivityStreamToolbarAnimated:(BOOL)animated;
- (void)hideAndDismissPresentedViewController;
- (void)hideInkPicker;
- (void)iCloudShareButtonPressed:(id)pressed;
- (void)icBaseTextViewDidSetHidden:(BOOL)hidden;
- (void)ic_alignCenter:(id)center;
- (void)ic_alignLeft:(id)left;
- (void)ic_alignRight:(id)right;
- (void)increaseIndentation:(id)indentation;
- (void)indentSelectionIfPossibleByAmount:(int64_t)amount;
- (void)inkPalette:(id)palette didChangeColor:(id)color;
- (void)inkPalette:(id)palette didChangePalettePositionStart:(int64_t)start end:(int64_t)end;
- (void)inkPalette:(id)palette didHideAnimated:(BOOL)animated;
- (void)inkPalette:(id)palette didPickTool:(id)tool;
- (void)inkPalette:(id)palette didShowAnimated:(BOOL)animated;
- (void)inkPalette:(id)palette willHideAnimated:(BOOL)animated;
- (void)inkPalette:(id)palette willShowAnimated:(BOOL)animated;
- (void)inkPaletteDidToggleRuler:(id)ruler isRulerActive:(BOOL)active;
- (void)inlineAttachmentDeleted:(id)deleted;
- (void)inputAccessoryDisclosureStateDidChange:(id)change tapped:(BOOL)tapped;
- (void)inputAccessoryDisclosureStateWillChange:(id)change;
- (void)insertGraph:(id)graph;
- (void)insertSidecarItems:(id)items service:(int64_t)service;
- (void)keyboardDidShow:(id)show;
- (void)keyboardResizerAdjustInsetsWithKeyboardFrame:(CGRect)frame scrollAboveHeight:(double)height duration:(double)duration;
- (void)lastSavedInkingTool;
- (void)linkEditorDidDismiss;
- (void)localeChanged:(id)changed;
- (void)lockBarButtonPressed:(id)pressed;
- (void)lockNoteManagerDidToggleLock:(id)lock;
- (void)lockNoteManagerWillToggleLock:(id)lock;
- (void)magicGenerativePlaygroundWillDisappear;
- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds;
- (void)mentionInsertedInNote:(id)note mentionID:(id)d participantID:(id)iD viaAutoComplete:(BOOL)complete;
- (void)mergeRelatedOperationsDidEnd:(id)end;
- (void)moveCheckedToBottom:(id)bottom;
- (void)moveSelectedListItemDown:(id)down;
- (void)moveSelectedListItemUp:(id)up;
- (void)moveToFolderPressed:(id)pressed;
- (void)noteDecryptedStatusDidChange:(id)change;
- (void)noteDidChangeCalculatePreviewBehaviorNotification:(id)notification;
- (void)noteDidDeauthenticateAfterMerge:(id)merge;
- (void)noteEditorNavigationItemConfiguration:(id)configuration addNoteFromBarButtonItem:(id)item event:(id)event;
- (void)noteEditorNavigationItemConfiguration:(id)configuration closeAuxiliaryWindowFromBarButtonItem:(id)item;
- (void)noteEditorNavigationItemConfiguration:(id)configuration openLinkEditorWithSender:(id)sender;
- (void)noteEditorNavigationItemConfiguration:(id)configuration setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)noteEditorNavigationItemConfiguration:(id)configuration showWritingToolsFromBarButtonItem:(id)item;
- (void)noteEditorNavigationItemConfiguration:(id)configuration toggleListStyle:(unsigned int)style withSender:(id)sender;
- (void)noteEditorNavigationItemConfiguration:(id)configuration toggleSidebarFromBarButtonItem:(id)item;
- (void)noteFormattingDidFinish:(id)finish;
- (void)noteFormattingNeedsUpdate:(id)update;
- (void)noteOrFolderChangedCallback;
- (void)noteWillAppear:(id)appear;
- (void)noteWillBeDeleted:(id)deleted;
- (void)noteWillDisappear:(id)disappear;
- (void)notesContextRefreshNotification:(id)notification;
- (void)observeAttachmentDeleted:(id)deleted;
- (void)observeDrawingConverted:(id)converted;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openExperimentalHashtagUI:(id)i;
- (void)openLink:(id)link;
- (void)openLinkEditor:(id)editor;
- (void)openLinkEditorForLink:(id)link atRange:(_NSRange)range delegate:(id)delegate;
- (void)openLinkEditorForLinkTextItem:(id)item;
- (void)paperKitBundleDidMerge:(id)merge;
- (void)passwordEntryAlertControllerAttemptDidFail:(id)fail;
- (void)performDeleteAnimation:(id)animation;
- (void)performFindInNote:(id)note;
- (void)performReplaceInNote:(id)note;
- (void)prepareForBarSourcedPopoverPresentation;
- (void)prepareSelectionForAddingAttachment;
- (void)prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:(id)necessary;
- (void)presentRecordingStoppedAlertForNoteIfNeeded:(id)needed;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)quickNoteAllNotes:(id)notes;
- (void)rebuildInputAccessoryView;
- (void)recreateTextView;
- (void)recreateTextViewIfNecessary;
- (void)recreateTextViewIfPasswordEntryScreenExistsButNoteIsUnlocked;
- (void)redoAction:(id)action;
- (void)registerForTraitChanges;
- (void)reloadCurrentNote;
- (void)rememberNoteContentForEditingIntent;
- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection;
- (void)removeChecked:(id)checked;
- (void)removeCurrentScrollState;
- (void)removeKVOObserversForNote:(id)note;
- (void)removeLinkForLinkTextItem:(id)item;
- (void)removeLinksFromCurrentSelection;
- (void)removeLinksFromRange:(_NSRange)range;
- (void)removeLinksFromTextSelection:(id)selection range:(_NSRange)range;
- (void)renameAttachment;
- (void)resetBarButtonsAnimated:(BOOL)animated;
- (void)resetBarButtonsAnimated:(BOOL)animated checkIfVisible:(BOOL)visible;
- (void)resetDateView;
- (void)resetTextViewContentOffset;
- (void)resetTextViewUndoManager;
- (void)restoreTextViewScrollPosition:(double)position;
- (void)restoreTextViewVisibleRange:(_NSRange)range animated:(BOOL)animated;
- (void)runScrollPerformanceTest:(id)test iterations:(int)iterations offset:(int)offset;
- (void)runTableHorizontalScrollPerformanceTest:(id)test iterations:(int)iterations offset:(int)offset;
- (void)saveCurrentScrollState;
- (void)saveFromSystemPaperCard:(id)card;
- (void)saveInlineDrawings;
- (void)saveNote;
- (void)saveToolAsCurrentTool:(id)tool;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated inSearchableString:(id)string searchHighlightRegexFinder:(id)finder;
- (void)scrollRangeToVisibleWhenViewAppears:(_NSRange)appears animated:(BOOL)animated inSearchableString:(id)string searchHighlightRegexFinder:(id)finder;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)selectDrawingAttachmentIfNeeded:(id)needed;
- (void)setArchivedScrollStateToApply:(id)apply;
- (void)setAuxiliaryStylingController:(id)controller;
- (void)setBodyStyle:(id)style;
- (void)setCanShowLinkBar:(BOOL)bar;
- (void)setCurrentTextStyle:(unsigned int)style;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFixedWidthStyle:(id)style;
- (void)setHasMadeEdits;
- (void)setHeadingStyle:(id)style;
- (void)setIgnoresTaps:(BOOL)taps;
- (void)setInvitation:(id)invitation;
- (void)setIsDrawingStroke:(BOOL)stroke;
- (void)setMagicGenerativePlaygroundUndoManager:(id)manager;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNote:(id)note delayedForLaunch:(BOOL)launch startEditing:(BOOL)editing successHandler:(id)handler;
- (void)setNote:(id)note overrideScrollState:(id)state startEditing:(BOOL)editing;
- (void)setPaperLinkBarShowing:(BOOL)showing;
- (void)setSearchRegexFinder:(id)finder;
- (void)setSelectedRange:(_NSRange)range;
- (void)setSplitViewExpandingOrCollapsing:(BOOL)collapsing;
- (void)setSubheadingStyle:(id)style;
- (void)setTextStyle:(unsigned int)style sender:(id)sender;
- (void)setTitleStyle:(id)style;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUserWantsToSeeDateLabel:(BOOL)label;
- (void)setWritingToolsShowing:(BOOL)showing;
- (void)setupForFingerDrawing;
- (void)setupLinedPaperOnNewNote:(id)note willStartEditing:(BOOL)editing;
- (void)shareButtonPressedWithSender:(id)sender;
- (void)sharedWithYouControllerDidUpdateHighlights:(id)highlights;
- (void)shiftReturn:(id)return;
- (void)showActivityStreamToolbarForObject:(id)object selection:(id)selection animated:(BOOL)animated;
- (void)showDocumentCamera;
- (void)showDocumentPicker;
- (void)showDrawingUpdateAlert;
- (void)showHandwritingDebug:(BOOL)debug;
- (void)showInkPicker:(BOOL)picker animated:(BOOL)animated;
- (void)showInkPicker:(id)picker;
- (void)showInkPickerAndEndEditingIfNecessary;
- (void)showInsertUIForSourceType:(unint64_t)type sender:(id)sender;
- (void)showInsertUIWithPreferredSourceType:(unint64_t)type;
- (void)showOrHideActivityStreamToolbarIfNeeded;
- (void)showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:(BOOL)backgrounding;
- (void)showOrHidePasswordEntryViewControllerIfNeeded;
- (void)showOrHideSearchPatternHighlightsIfNecessary;
- (void)showOverscrollContentAndScrollToTop;
- (void)showRecoverNoteAlert;
- (void)showStyleSelector:(BOOL)selector animated:(BOOL)animated sender:(id)sender;
- (void)showStyleSelectorInputView:(BOOL)view animated:(BOOL)animated doneEditing:(BOOL)editing;
- (void)showStyleSelectorPopover:(BOOL)popover animated:(BOOL)animated sender:(id)sender;
- (void)splitViewModeChangeDidEnd:(id)end;
- (void)startEditing;
- (void)startEditingForWritingTools;
- (void)stopTextFindingIfNecessary;
- (void)styleSelector:(id)selector didChangeIndentAmount:(int64_t)amount;
- (void)styleSelector:(id)selector didSelectStyle:(unsigned int)style;
- (void)styleSelector:(id)selector presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)styleSelector:(id)selector toggleBIUS:(unint64_t)s;
- (void)styleSelectorDidCancel:(id)cancel;
- (void)styleSelectorDidIndentLeft:(id)left;
- (void)styleSelectorDidIndentRight:(id)right;
- (void)styleSelectorWillShowInlineMenu:(id)menu;
- (void)submitChecklistAnalyticsEventForActionType:(int64_t)type;
- (void)submitNoteEditEventIfNecessary;
- (void)submitNoteViewEventForModernNote:(id)note;
- (void)submitPendingInlineDrawingDataIfNecessary;
- (void)systemPaperLinkBarVisibilityPreferenceChanged:(id)changed;
- (void)tab:(id)tab;
- (void)tableCellFirstResponderChanged;
- (void)tearDownAudioPlayers;
- (void)teardownSystemPaperLinkBarIfNecessary;
- (void)textView:(id)view didRemoveDrawingAtIndex:(unint64_t)index;
- (void)textView:(id)view upgradeDrawingAtIndex:(unint64_t)index itemProviders:(id)providers insertionLocationInDrawing:(CGPoint)drawing;
- (void)textView:(id)view willAddDrawingAtIndex:(unint64_t)index;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidBreakRubberBand:(id)band;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)textViewDidEndStroke:(id)stroke;
- (void)textViewWillBeginStroke:(id)stroke forTouch:(id)touch;
- (void)textViewWritingToolsDidEnd:(id)end;
- (void)textViewWritingToolsWillBegin:(id)begin;
- (void)toggleBIUS:(unint64_t)s sender:(id)sender;
- (void)toggleBlockQuote:(id)quote;
- (void)toggleBoldface;
- (void)toggleBulletedListStyle:(id)style;
- (void)toggleCurrentTextStyle:(unsigned int)style;
- (void)toggleDashedListStyle:(id)style;
- (void)toggleEmphasis;
- (void)toggleEmphasisWithType:(int64_t)type;
- (void)toggleItalics;
- (void)toggleNumberedListStyle:(id)style;
- (void)toggleStrikethrough;
- (void)toggleTodoChecked:(id)checked;
- (void)toggleTodoStyle:(id)style;
- (void)toggleUnderline;
- (void)uncheckAll:(id)all;
- (void)undoAction:(id)action;
- (void)undoablySwitchToPPK:(BOOL)k;
- (void)updateActionMenu;
- (void)updateAuthorHighlightsIfNeeded;
- (void)updateBarButtonsAnimated:(BOOL)animated checkIfVisible:(BOOL)visible;
- (void)updateBottomContentPadding;
- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force;
- (void)updateDataOwnerForCopyAndPaste;
- (void)updateDateLabelAccessibility;
- (void)updateDrawingAttachmentsIfNeeded;
- (void)updateDrawingAttachmentsInNote;
- (void)updateForceLightContentIfNecessary;
- (void)updateFormatToolbarLayoutWithSize:(CGSize)size;
- (void)updateInkPickerAndTextViewToTool:(id)tool;
- (void)updateInlineDrawings;
- (void)updateInlineDrawingsPaletteVisibility;
- (void)updateLastViewedMetadataIfNessessary;
- (void)updateNoteUserActivityState;
- (void)updatePencilKitPaperStyleType;
- (void)updatePencilKitSelectionViewEnabled;
- (void)updateSelectionOnUndo:(id)undo;
- (void)updateStyleSelectorStateIfNeededIgnoreTypingAttributes:(BOOL)attributes;
- (void)updateTextInputAccessoryViewForDidBeginEditing:(id)editing;
- (void)updateTextInputAccessoryViewForDidEndEditing:(id)editing;
- (void)updateTextInputAccessoryViewForTextViewDidChange:(id)change;
- (void)updateTextViewBackground;
- (void)updateTextViewContentInsetsAnimated:(BOOL)animated;
- (void)updateTextViewContentOffset;
- (void)updateUIEnabledStatePencilActive:(BOOL)active;
- (void)updateUnsupportedNoteView;
- (void)updateUserAndDateViewVisibility;
- (void)upgradeAllAttachmentsInNoteWithUpgradeHelper:(id)helper forSydney:(BOOL)sydney;
- (void)upgradePencilKitDrawingsForNewInksPromptingIfNecessary;
- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)userActivityWillSave:(id)save;
- (void)viewControllerWillStartEditModeNotification:(id)notification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)warnLimitExceededWithTitle:(id)title andMessage:(id)message;
- (void)warnUserAttachmentLimitExceeded;
- (void)warnUserAttachmentSizeExceededWithAttachmentCount:(unint64_t)count;
- (void)warnUserNoteLengthExceeded;
- (void)willAddAttachmentForNoteNotification:(id)notification;
@end

@implementation ICNoteEditorViewController

+ (void)initialize
{
  v5[10] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
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
  view = [(ICNoteEditorViewController *)self view];
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
  backgroundView = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView setHasBarBlur:BundleBoolSettingValue];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v5 = objc_alloc(MEMORY[0x277D75A78]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(ICNoteEditorViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [v6 requestStyle:{objc_msgSend(statusBarManager, "statusBarStyle")}];

    view2 = [(ICNoteEditorViewController *)self view];
    [view2 addSubview:v6];

    v39 = MEMORY[0x277CCAAD0];
    leftAnchor = [v6 leftAnchor];
    view3 = [(ICNoteEditorViewController *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v42 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v47[0] = v42;
    rightAnchor = [v6 rightAnchor];
    view4 = [(ICNoteEditorViewController *)self view];
    rightAnchor2 = [view4 rightAnchor];
    v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v47[1] = v12;
    topAnchor = [v6 topAnchor];
    view5 = [(ICNoteEditorViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v16;
    heightAnchor = [v6 heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:*MEMORY[0x277D76F08]];
    v47[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [v39 activateConstraints:v19];
  }

  usesContextualFormatBar = [(ICNoteEditorViewController *)self usesContextualFormatBar];
  navigationItem = [(ICNoteEditorViewController *)self navigationItem];
  [navigationItem _setToolbarAvoidsKeyboard:usesContextualFormatBar];

  navigationItem2 = [(ICNoteEditorViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  backgroundView2 = [(ICNoteEditorViewController *)self backgroundView];
  ic_safeAreaLayoutGuide = [(ICNoteEditorViewController *)self ic_safeAreaLayoutGuide];
  backgroundView3 = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView2 addConstraintsForSafeAreaLayoutGuide:ic_safeAreaLayoutGuide toContainer:backgroundView3];

  v26 = [[ICNoteEditorNavigationItemConfiguration alloc] initWithDataSource:self delegate:self];
  [(ICNoteEditorViewController *)self setNavigationItemConfiguration:v26];

  v27 = objc_alloc_init(ICStyleSelectorViewController);
  [(ICNoteEditorViewController *)self setStyleSelectorController:v27];

  styleSelectorController = [(ICNoteEditorViewController *)self styleSelectorController];
  [styleSelectorController setDelegate:self];

  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(ICNoteEditorViewController *)self applyAccessibilityInfo];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_localeChanged_ name:*MEMORY[0x277CBE620] object:0];
  [defaultCenter addObserver:self selector:sel_sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
  [defaultCenter addObserver:self selector:sel_attachmentBrickDidChangeSize name:*MEMORY[0x277D35B78] object:0];
  v30 = *MEMORY[0x277D36100];
  ic_mentionableNamesCache = [MEMORY[0x277CBC6A0] ic_mentionableNamesCache];
  [defaultCenter addObserver:self selector:sel_updateParticipantsInDrawings name:v30 object:ic_mentionableNamesCache];

  [defaultCenter addObserver:self selector:sel_splitViewModeChangeWillBegin_ name:@"ICSplitViewControllerWillBeginDisplayModeChange" object:0];
  [defaultCenter addObserver:self selector:sel_navigationControllerWillChange_ name:@"ICNavigationControllerWillChange" object:0];
  [defaultCenter addObserver:self selector:sel_splitViewModeChangeDidEnd_ name:@"ICSplitViewControllerDidEndDisplayModeChange" object:0];
  [defaultCenter addObserver:self selector:sel_paperKitBundleDidMerge_ name:*MEMORY[0x277D35B90] object:0];
  [defaultCenter addObserver:self selector:sel_observeAttachmentDeleted_ name:*MEMORY[0x277D35B68] object:0];
  [defaultCenter addObserver:self selector:sel_observeDrawingConverted_ name:*MEMORY[0x277D364E0] object:0];
  [defaultCenter addObserver:self selector:sel_audioFindInTranscript_ name:*MEMORY[0x277D36578] object:0];
  [defaultCenter addObserver:self selector:sel_audioRecordingStarted_ name:*MEMORY[0x277D35C80] object:0];
  [defaultCenter addObserver:self selector:sel_audioRecordingStopped_ name:*MEMORY[0x277D35C88] object:0];
  [defaultCenter addObserver:self selector:sel_audioTranscriptInteraction_ name:*MEMORY[0x277D36548] object:0];
  [(ICScrollViewDelegateViewController *)self setupScrollViewKeyboardResizer];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self collaborationButtons_registerForSharedWithYouHighlightUpdates];
  }

  [(ICNoteEditorViewController *)self setShouldResetTextViewContentOffsetWhenAppearing:1];
  [MEMORY[0x277D75820] ic_addObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&compoundliteral_0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults ic_addObserver:self forKeyPath:*MEMORY[0x277D36448] context:&compoundliteral_3029];

  [defaultCenter addObserver:self selector:sel_willAddAttachmentForNoteNotification_ name:*MEMORY[0x277D35DD8] object:0];
  [defaultCenter addObserver:self selector:sel_didAddAttachmentForNoteNotification_ name:*MEMORY[0x277D35C50] object:0];
  v33 = *MEMORY[0x277D35C30];
  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  [defaultCenter addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v33 object:mEMORY[0x277D35E50]];

  v35 = *MEMORY[0x277D35C38];
  mEMORY[0x277D35E50]2 = [MEMORY[0x277D35E50] sharedState];
  [defaultCenter addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v35 object:mEMORY[0x277D35E50]2];

  [defaultCenter addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:*MEMORY[0x277D35B58] object:0];
  [defaultCenter addObserver:self selector:sel_noteDidDeauthenticateAfterMerge_ name:*MEMORY[0x277D35CD8] object:0];
  [defaultCenter addObserver:self selector:sel_sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];
  [defaultCenter addObserver:self selector:sel_passwordEntryAlertControllerAttemptDidFail_ name:*MEMORY[0x277D365B8] object:0];
  [defaultCenter addObserver:self selector:sel_authenticationAuthenticateBiometricsAttemptDidFail_ name:*MEMORY[0x277D36488] object:0];
  [defaultCenter addObserver:self selector:sel_lockNoteManagerWillToggleLock_ name:*MEMORY[0x277D365A8] object:0];
  [defaultCenter addObserver:self selector:sel_lockNoteManagerDidToggleLock_ name:*MEMORY[0x277D365A0] object:0];
  [defaultCenter addObserver:self selector:sel__beginLiveResize_ name:*MEMORY[0x277D776B0] object:0];
  [defaultCenter addObserver:self selector:sel__endLiveResize_ name:*MEMORY[0x277D776B8] object:0];
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

  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  v4 = [traitCollection userInterfaceIdiom] == 0;

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

  preferredTransition = [(ICNoteEditorViewController *)self preferredTransition];
  v4 = preferredTransition != 0;

  return v4;
}

- (void)submitNoteEditEventIfNecessary
{
  note = [(ICNoteEditorBaseViewController *)self note];
  modificationDate = [note modificationDate];
  if (modificationDate)
  {
    v4 = modificationDate;
    note2 = [(ICNoteEditorBaseViewController *)self note];
    modificationDate2 = [note2 modificationDate];
    noteLastModificationDate = [(ICNoteEditorViewController *)self noteLastModificationDate];
    v8 = [modificationDate2 isEqualToDate:noteLastModificationDate];

    if (v8)
    {
      return;
    }

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note3 = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitNoteEditEventForModernNote:note3 fromQuickNote:{-[ICNoteEditorBaseViewController isEditingOnSecureScreen](self, "isEditingOnSecureScreen")}];

    note = [(ICNoteEditorBaseViewController *)self note];
    modificationDate3 = [note modificationDate];
    [(ICNoteEditorViewController *)self setNoteLastModificationDate:modificationDate3];
  }
}

- (BOOL)useInputViewForStyleSelector
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  if ([traitCollection horizontalSizeClass] == 1)
  {
    LOBYTE(v4) = 1;
  }

  else if ([traitCollection userInterfaceIdiom] == 1)
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
  styleSelectorDummyInputView = [(ICNoteEditorViewController *)self styleSelectorDummyInputView];
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  inputView = [auxiliaryStylingController inputView];
  if (styleSelectorDummyInputView == inputView)
  {
    v8 = 1;
  }

  else
  {
    textView = [(ICNoteEditorViewController *)self textView];
    inputView2 = [textView inputView];
    v8 = styleSelectorDummyInputView == inputView2;
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
  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  if (isFindNavigatorVisible)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    findInteraction2 = [textView2 findInteraction];
    [findInteraction2 dismissFindNavigator];

    [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  }
}

- (void)tearDownAudioPlayers
{
  audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  [audioAttachmentEditorCoordinator teardown];
}

- (void)saveCurrentScrollState
{
  textView = [(ICNoteEditorViewController *)self textView];
  v9 = [ICTextViewScrollState scrollStateForTextView:textView];

  note = [v9 note];
  note2 = [(ICNoteEditorBaseViewController *)self note];

  if (note == note2)
  {
    savedScrollStates = [(ICNoteEditorViewController *)self savedScrollStates];
    note3 = [v9 note];
    identifier = [note3 identifier];
    [savedScrollStates ic_setNonNilObject:v9 forNonNilKey:identifier];
  }
}

- (void)resetTextViewUndoManager
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView resetUndoManager];

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
    passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
    if (passwordEntryViewController)
    {
    }

    else
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      isPasswordProtectedAndLocked = [note isPasswordProtectedAndLocked];

      if ((isPasswordProtectedAndLocked & 1) == 0)
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
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setInputAccessoryView:0];

    objc_opt_class();
    auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
    icSplitViewController = ICDynamicCast();

    [icSplitViewController setInputAccessoryView:0];
  }

  else
  {
    icSplitViewController = [(ICNoteEditorViewController *)self icSplitViewController];
    view = [icSplitViewController view];
    [view frame];
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
    textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setInputAccessoryView:textViewInputAccessoryView];

    objc_opt_class();
    auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    v13 = ICDynamicCast();

    textViewInputAccessoryView2 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [v13 setInputAccessoryView:textViewInputAccessoryView2];
  }
}

- (id)icSplitViewController
{
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    mainSplitViewController = 0;
  }

  else
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    mainSplitViewController = [viewControllerManager mainSplitViewController];
  }

  return mainSplitViewController;
}

- (BOOL)shouldForceLightContent
{
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note prefersLightBackground])
  {
    ic_alwaysShowLightContent = 1;
  }

  else
  {
    ic_alwaysShowLightContent = [MEMORY[0x277D75C80] ic_alwaysShowLightContent];
  }

  return ic_alwaysShowLightContent;
}

- (BOOL)shouldAllowAttributionSidebar
{
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isSharedViaICloud] && !-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper"))
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
  shouldForceLightContent = [(ICNoteEditorViewController *)self shouldForceLightContent];
  v4 = shouldForceLightContent;
  v5 = shouldForceLightContent;
  if (shouldForceLightContent)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [(ICNoteEditorViewController *)self setOverrideUserInterfaceStyle:shouldForceLightContent];
  view = [(ICNoteEditorViewController *)self view];
  [view setOverrideUserInterfaceStyle:v5];

  textView = [(ICNoteEditorViewController *)self textView];
  [textView setOverrideUserInterfaceStyle:v5];

  [(ICNoteEditorViewController *)self updateTextViewBackground];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setNeedsDisplay];

  navigationController = [(ICNoteEditorViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:v5];

  textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
  [textViewInputAccessoryView setOverrideUserInterfaceStyle:v5];

  formatBarView = [(ICNoteEditorViewController *)self formatBarView];
  [formatBarView setOverrideUserInterfaceStyle:v5];

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 setKeyboardAppearance:v6];

  [(ICNoteEditorViewController *)self configureBarAppearancesIfNecessary];
  [(ICNoteEditorViewController *)self setNeedsStatusBarAppearanceUpdate];
  inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];

  if (v4 || inkPaletteController)
  {
    inkPaletteController2 = [(ICNoteEditorViewController *)self inkPaletteController];
    selectedTool = [inkPaletteController2 selectedTool];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      inkPaletteController3 = [(ICNoteEditorViewController *)self inkPaletteController];
      colorCorrectedTool = [inkPaletteController3 colorCorrectedTool];
      [(ICNoteEditorViewController *)self updateInkPickerAndTextViewToTool:colorCorrectedTool];
    }

    inkPaletteController4 = [(ICNoteEditorViewController *)self inkPaletteController];
    [inkPaletteController4 setColorUserInterfaceStyle:v5];
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
    ic_noteEditorBackgroundColor = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    textViewController = [(ICNoteEditorViewController *)self textViewController];
    [textViewController setBackgroundColor:ic_noteEditorBackgroundColor];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      return;
    }

    textViewController2 = [(ICNoteEditorViewController *)self textViewController];
    backgroundColor = [textViewController2 backgroundColor];
    view = [(ICNoteEditorViewController *)self view];
    v6 = view;
    v7 = backgroundColor;
    goto LABEL_9;
  }

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setBackgroundColor:0];

    textViewController2 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
    backgroundColor = [(ICNoteEditorViewController *)self backgroundView];
    view = [backgroundColor contentView];
    v6 = view;
    v7 = textViewController2;
LABEL_9:
    [view setBackgroundColor:v7];

    goto LABEL_10;
  }

  textViewController2 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  backgroundColor = [(ICNoteEditorViewController *)self view];
  [backgroundColor setBackgroundColor:textViewController2];
LABEL_10:
}

- (void)configureBarAppearancesIfNecessary
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    dynamicBarColor = [(ICNoteEditorViewController *)self dynamicBarColor];
    v3 = objc_alloc_init(MEMORY[0x277D75788]);
    [v3 configureWithTransparentBackground];
    [v3 setBackgroundColor:dynamicBarColor];
    navigationItem = [(ICNoteEditorViewController *)self navigationItem];
    [navigationItem setStandardAppearance:v3];

    navigationItem2 = [(ICNoteEditorViewController *)self navigationItem];
    [navigationItem2 setCompactAppearance:v3];

    if (![(ICNoteEditorViewController *)self usesCustomTransition])
    {
      navigationItem3 = [(ICNoteEditorViewController *)self navigationItem];
      [navigationItem3 setScrollEdgeAppearance:v3];
    }

    navigationController = [(ICNoteEditorViewController *)self navigationController];
    toolbar = [navigationController toolbar];
    standardAppearance = [toolbar standardAppearance];

    [standardAppearance configureWithTransparentBackground];
    [standardAppearance setBackgroundColor:dynamicBarColor];
    navigationController2 = [(ICNoteEditorViewController *)self navigationController];
    toolbar2 = [navigationController2 toolbar];
    [toolbar2 setStandardAppearance:standardAppearance];

    navigationController3 = [(ICNoteEditorViewController *)self navigationController];
    toolbar3 = [navigationController3 toolbar];
    [toolbar3 setCompactAppearance:standardAppearance];

    navigationController4 = [(ICNoteEditorViewController *)self navigationController];
    toolbar4 = [navigationController4 toolbar];
    [toolbar4 setScrollEdgeAppearance:standardAppearance];

    navigationController5 = [(ICNoteEditorViewController *)self navigationController];
    toolbar5 = [navigationController5 toolbar];
    [toolbar5 setCompactScrollEdgeAppearance:standardAppearance];
  }
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v4 setNeedsStatusBarAppearanceUpdate];
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  [navigationController setNeedsStatusBarAppearanceUpdate];
}

- (void)updatePencilKitPaperStyleType
{
  v3 = MEMORY[0x277D36890];
  note = [(ICNoteEditorBaseViewController *)self note];
  v13 = [v3 linedPaperWithPaperStyleType:{objc_msgSend(note, "paperStyleType")}];

  viewIfLoaded = [(ICNoteEditorViewController *)self viewIfLoaded];
  if (viewIfLoaded && ([MEMORY[0x277D75418] ic_isVision] & 1) == 0)
  {
    v6 = _UISolariumEnabled();

    if (v6)
    {
      goto LABEL_6;
    }

    viewIfLoaded = objc_alloc_init(MEMORY[0x277D75C60]);
    [viewIfLoaded configureWithTransparentBackground];
    dynamicBarColor = [(ICNoteEditorViewController *)self dynamicBarColor];
    [viewIfLoaded setBackgroundColor:dynamicBarColor];

    navigationController = [(ICNoteEditorViewController *)self navigationController];
    toolbar = [navigationController toolbar];
    [toolbar setScrollEdgeAppearance:viewIfLoaded];

    navigationController2 = [(ICNoteEditorViewController *)self navigationController];
    toolbar2 = [navigationController2 toolbar];
    [toolbar2 setCompactScrollEdgeAppearance:viewIfLoaded];
  }

LABEL_6:
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setLinedPaper:v13];
}

- (void)showOrHidePasswordEntryViewControllerIfNeeded
{
  note = [(ICNoteEditorBaseViewController *)self note];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  if ([note2 isPasswordProtectedAndLocked] && (objc_msgSend(note, "isUnsupported") & 1) == 0)
  {
    v5 = [note hasMissingKeychainItem] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  note3 = [(ICNoteEditorBaseViewController *)self note];
  isPasswordProtected = [note3 isPasswordProtected];

  if (!isPasswordProtected)
  {
    passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];

    if (passwordEntryViewController)
    {
      passwordEntryViewController2 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      view = [passwordEntryViewController2 view];
      [view removeFromSuperview];

      passwordEntryViewController3 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [(ICNoteEditorViewController *)self removeChildViewController:passwordEntryViewController3];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
      [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
      textView = [(ICNoteEditorViewController *)self textView];
      [textView setAlpha:1.0];

LABEL_42:
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
      [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
      goto LABEL_43;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setAlpha:1.0];
    goto LABEL_21;
  }

  if (v5)
  {
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    [(ICNoteEditorViewController *)self blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:2.0];
    passwordEntryViewController4 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    isAnimatingOut = [passwordEntryViewController4 isAnimatingOut];

    if (isAnimatingOut)
    {
      passwordEntryViewController5 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      view2 = [passwordEntryViewController5 view];
      [view2 removeFromSuperview];

      passwordEntryViewController6 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [passwordEntryViewController6 removeFromParentViewController];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
    }

    passwordEntryViewController7 = [(ICNoteEditorViewController *)self passwordEntryViewController];

    if (passwordEntryViewController7)
    {
      goto LABEL_33;
    }

    presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];
    if (objc_opt_respondsToSelector())
    {
      presentedViewController2 = [(ICNoteEditorViewController *)self presentedViewController];
      v16 = [presentedViewController2 performSelector:sel_canAppearAbovePasswordEntryView];

      if (v16)
      {
LABEL_28:
        textView3 = [(ICNoteEditorViewController *)self textView];
        isEditing = [textView3 isEditing];

        if (isEditing)
        {
          textView4 = [(ICNoteEditorViewController *)self textView];
          [textView4 endEditing:1];
        }

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          [(ICNoteEditorViewController *)self setEditing:0 animated:0];
        }

        v52 = [objc_alloc(MEMORY[0x277D36898]) initWithNibName:0 bundle:0 note:note intent:0];
        [(ICNoteEditorViewController *)self setPasswordEntryViewController:v52];

        passwordEntryViewController8 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [passwordEntryViewController8 setMode:0];

        objc_initWeak(&location, self);
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke;
        v89[3] = &unk_2781AD170;
        objc_copyWeak(&v90, &location);
        passwordEntryViewController9 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [passwordEntryViewController9 setPasswordEntryCompletionHandler:v89];

        passwordEntryViewController10 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        view3 = [passwordEntryViewController10 view];
        [view3 setAutoresizingMask:18];

        view4 = [(ICNoteEditorViewController *)self view];
        [view4 bounds];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        passwordEntryViewController11 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        view5 = [passwordEntryViewController11 view];
        [view5 setFrame:{v59, v61, v63, v65}];

        passwordEntryViewController12 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [(ICNoteEditorViewController *)self addChildViewController:passwordEntryViewController12];

        objc_destroyWeak(&v90);
        objc_destroyWeak(&location);
LABEL_33:
        note4 = [(ICNoteEditorBaseViewController *)self note];
        passwordEntryViewController13 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        [passwordEntryViewController13 setNote:note4];

        backgroundView = [(ICNoteEditorViewController *)self backgroundView];
        passwordEntryViewController14 = [(ICNoteEditorViewController *)self passwordEntryViewController];
        view6 = [passwordEntryViewController14 view];
        [backgroundView addSubviewAboveAllViews:view6];

        traitCollection = [(ICNoteEditorViewController *)self traitCollection];
        if ([traitCollection ic_hasCompactWidth])
        {
          isMainSplitViewDisplayModeSecondaryOnly = 1;
        }

        else
        {
          viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
          if ([viewControllerManager isAuxiliary])
          {
            isMainSplitViewDisplayModeSecondaryOnly = 1;
          }

          else if ([MEMORY[0x277D75418] ic_isVision])
          {
            viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
            isMainSplitViewDisplayModeSecondaryOnly = [viewControllerManager2 isMainSplitViewDisplayModeSecondaryOnly];
          }

          else
          {
            isMainSplitViewDisplayModeSecondaryOnly = 0;
          }
        }

        viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
        v79 = [viewControllerManager3 noteContainerViewMode] == 0;

        viewControllerManager4 = [(ICNoteEditorViewController *)self viewControllerManager];
        v81 = ([viewControllerManager4 noteContainerViewMode] == 1) | isMainSplitViewDisplayModeSecondaryOnly;

        [(ICNoteEditorViewController *)self updateContentViewBezelsStandalone:isMainSplitViewDisplayModeSecondaryOnly needsAdditionalBottomMargin:v79 needsAdditionalLeadingMargin:v81 & 1 force:1];
        view7 = [(ICNoteEditorViewController *)self view];
        [view7 layoutIfNeeded];

        [(ICNoteEditorViewController *)self recreateTextView];
        textView5 = [(ICNoteEditorViewController *)self textView];
        [textView5 setHidden:1];

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

  passwordEntryViewController15 = [(ICNoteEditorViewController *)self passwordEntryViewController];

  if (passwordEntryViewController15)
  {
    passwordEntryViewController16 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    note5 = [passwordEntryViewController16 note];
    note6 = [(ICNoteEditorBaseViewController *)self note];

    if (note5 != note6)
    {
      [(ICNoteEditorViewController *)self recreateTextView];
      textView6 = [(ICNoteEditorViewController *)self textView];
      [textView6 layoutIfNeeded];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        textView7 = [(ICNoteEditorViewController *)self textView];
        layoutManager = [textView7 layoutManager];
        textView8 = [(ICNoteEditorViewController *)self textView];
        textContainer = [textView8 textContainer];
        [layoutManager ensureLayoutForTextContainer:textContainer];
      }

      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
      [(ICNoteEditorViewController *)self resetTextViewContentOffset];
      [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
      [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
      passwordEntryViewController17 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      view8 = [passwordEntryViewController17 view];
      [view8 removeFromSuperview];

      passwordEntryViewController18 = [(ICNoteEditorViewController *)self passwordEntryViewController];
      [passwordEntryViewController18 removeFromParentViewController];

      [(ICNoteEditorViewController *)self setPasswordEntryViewController:0];
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
      goto LABEL_43;
    }

    passwordEntryViewController19 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    isAnimatingOut2 = [passwordEntryViewController19 isAnimatingOut];

    if (isAnimatingOut2)
    {
      goto LABEL_43;
    }

    passwordEntryViewController20 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [passwordEntryViewController20 setIsAnimatingOut:1];

    [(ICNoteEditorViewController *)self recreateTextView];
    textView9 = [(ICNoteEditorViewController *)self textView];
    [textView9 layoutIfNeeded];

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      textView10 = [(ICNoteEditorViewController *)self textView];
      layoutManager2 = [textView10 layoutManager];
      textView11 = [(ICNoteEditorViewController *)self textView];
      textContainer2 = [textView11 textContainer];
      [layoutManager2 ensureLayoutForTextContainer:textContainer2];
    }

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
    v43 = *MEMORY[0x277CBF348];
    v44 = *(MEMORY[0x277CBF348] + 8);
    textView12 = [(ICNoteEditorViewController *)self textView];
    [textView12 setContentOffset:{v43, v44}];

    [(ICNoteEditorViewController *)self resetTextViewContentOffset];
    [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
    passwordEntryViewController21 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    textView13 = [(ICNoteEditorViewController *)self textView];
    [textView13 setAlpha:0.0];

    v48 = MEMORY[0x277D75D18];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_2;
    v87[3] = &unk_2781ABCF8;
    v88 = passwordEntryViewController21;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __75__ICNoteEditorViewController_showOrHidePasswordEntryViewControllerIfNeeded__block_invoke_3;
    v84[3] = &unk_2781AD198;
    v84[4] = self;
    v85 = v88;
    v86 = note;
    textView2 = v88;
    [v48 animateWithDuration:v87 animations:v84 completion:0.25];

LABEL_21:
  }

LABEL_43:
}

- (void)updateUnsupportedNoteView
{
  v36[3] = *MEMORY[0x277D85DE8];
  unsupportedNoteView = [(ICNoteEditorViewController *)self unsupportedNoteView];
  [unsupportedNoteView removeFromSuperview];

  [(ICNoteEditorViewController *)self setUnsupportedNoteView:0];
  note = [(ICNoteEditorBaseViewController *)self note];
  isUnsupported = [note isUnsupported];

  if (isUnsupported)
  {
    v6 = [[ICUnsupportedNoteView alloc] initWithReason:0];
    [(ICNoteEditorViewController *)self setUnsupportedNoteView:v6];

    unsupportedNoteView2 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    [unsupportedNoteView2 setUserInteractionEnabled:0];
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  if ([note2 canAuthenticate])
  {
  }

  else
  {
    note3 = [(ICNoteEditorBaseViewController *)self note];
    hasMissingKeychainItem = [note3 hasMissingKeychainItem];

    if (hasMissingKeychainItem)
    {
      note4 = [(ICNoteEditorBaseViewController *)self note];
      objc_initWeak(&location, note4);

      v12 = [[ICUnsupportedNoteView alloc] initWithReason:1];
      [(ICNoteEditorViewController *)self setUnsupportedNoteView:v12];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __55__ICNoteEditorViewController_updateUnsupportedNoteView__block_invoke;
      v33[3] = &unk_2781AC0B8;
      objc_copyWeak(&v34, &location);
      unsupportedNoteView3 = [(ICNoteEditorViewController *)self unsupportedNoteView];
      [unsupportedNoteView3 setDidTapActionButton:v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }
  }

  unsupportedNoteView4 = [(ICNoteEditorViewController *)self unsupportedNoteView];

  if (unsupportedNoteView4)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setHidden:1];

    view = [(ICNoteEditorViewController *)self view];
    unsupportedNoteView5 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    [view addSubview:unsupportedNoteView5];

    v28 = MEMORY[0x277CCAAD0];
    unsupportedNoteView6 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    centerXAnchor = [unsupportedNoteView6 centerXAnchor];
    view2 = [(ICNoteEditorViewController *)self view];
    centerXAnchor2 = [view2 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v36[0] = v18;
    unsupportedNoteView7 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    centerYAnchor = [unsupportedNoteView7 centerYAnchor];
    view3 = [(ICNoteEditorViewController *)self view];
    centerYAnchor2 = [view3 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v36[1] = v23;
    unsupportedNoteView8 = [(ICNoteEditorViewController *)self unsupportedNoteView];
    widthAnchor = [unsupportedNoteView8 widthAnchor];
    v26 = [widthAnchor constraintLessThanOrEqualToConstant:310.0];
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
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  if (window)
  {
    v4 = window;
    v5 = +[ICExtensionSafeAPIShims applicationState];

    if (v5 != 2)
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      isPasswordProtectedAndLocked = [note isPasswordProtectedAndLocked];

      if ((isPasswordProtectedAndLocked & 1) == 0 && ![(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__4;
        v37 = __Block_byref_object_dispose__4;
        v38 = 0;
        archivedScrollStateToApply = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
        note2 = [archivedScrollStateToApply note];
        managedObjectContext = [note2 managedObjectContext];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__ICNoteEditorViewController_applyScrollStateIfAvailable__block_invoke;
        v32[3] = &unk_2781ACF80;
        v32[4] = self;
        v32[5] = &v33;
        [managedObjectContext performBlockAndWait:v32];

        v11 = v34[5];
        note3 = [(ICNoteEditorBaseViewController *)self note];
        identifier = [note3 identifier];
        LODWORD(v11) = [v11 isEqualToString:identifier];

        if (v11)
        {
          archivedScrollStateToApply2 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
        }

        else
        {
          savedScrollStates = [(ICNoteEditorViewController *)self savedScrollStates];
          note4 = [(ICNoteEditorBaseViewController *)self note];
          identifier2 = [note4 identifier];
          v18 = [savedScrollStates ic_objectForNonNilKey:identifier2];

          if ([v18 captureIsWithinTimeThreshold])
          {
            archivedScrollStateToApply2 = v18;
          }

          else
          {
            archivedScrollStateToApply2 = 0;
          }
        }

        view2 = [(ICNoteEditorViewController *)self view];
        [view2 layoutIfNeeded];

        textView = [(ICNoteEditorViewController *)self textView];
        if ([archivedScrollStateToApply2 applyToTextView:textView])
        {
          archivedScrollStateToApply3 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];

          if (archivedScrollStateToApply2 == archivedScrollStateToApply3)
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
            textView2 = [(ICNoteEditorViewController *)self textView];
            [textView2 contentOffset];
            v24 = v23;
            v26 = v25;

            view3 = [(ICNoteEditorViewController *)self view];
            [view3 safeAreaInsets];
            v29 = v28;

            textView3 = [(ICNoteEditorViewController *)self textView];
            [textView3 setContentOffset:{v24, fmax(v26 + -100.0, -v29)}];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  -[ICNoteEditorViewController setIsEditingNewNote:](self, "setIsEditingNewNote:", [note isEmpty]);

  note2 = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note2 textStorage];
  mergeableString = [textStorage mergeableString];
  v7 = MEMORY[0x277CCAE60];
  note3 = [(ICNoteEditorBaseViewController *)self note];
  textStorage2 = [note3 textStorage];
  mergeableString2 = [textStorage2 mergeableString];
  v11 = [v7 valueWithRange:{objc_msgSend(mergeableString2, "length"), 0}];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = [mergeableString selectionForCharacterRanges:v12];
  [(ICNoteEditorViewController *)self setOriginalEndOfNote:v13];
}

- (void)updateActionMenu
{
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    return;
  }

  navigationItem = [(ICNoteEditorViewController *)self navigationItem];

  if (!navigationItem)
  {
    return;
  }

  invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];
  if (invitationViewController)
  {

LABEL_6:
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  if (isDeletedOrInTrash)
  {
    goto LABEL_6;
  }

  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  v8 = [viewControllerManager createDeferredActionMenuElementForEditorViewController:self];
  v7 = 1;
LABEL_7:
  navigationItem2 = [(ICNoteEditorViewController *)self navigationItem];
  [navigationItem2 setAdditionalOverflowItems:v8];

  if (v7)
  {
  }
}

- (void)updateDataOwnerForCopyAndPaste
{
  note = [(ICNoteEditorBaseViewController *)self note];
  account = [note account];
  if ([account isManaged])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  [textView _setDataOwnerForCopy:v5];

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 _setDataOwnerForPaste:v5];

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 _setDragDataOwner:v5];

  textView4 = [(ICNoteEditorViewController *)self textView];
  [textView4 _setDropDataOwner:v5];
}

- (void)updateDrawingAttachmentsIfNeeded
{
  mEMORY[0x277D36790] = [MEMORY[0x277D36790] sharedConverter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [mEMORY[0x277D36790] convertDrawingsInNoteIfNeeded:note];
}

- (void)showOrHideActivityStreamToolbarIfNeeded
{
  activityStreamToolbar = [(ICNoteEditorViewController *)self activityStreamToolbar];

  if (activityStreamToolbar)
  {
    navigationController = [(ICNoteEditorViewController *)self navigationController];
    view = [navigationController view];
    activityStreamToolbar2 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    [view bringSubviewToFront:activityStreamToolbar2];
  }
}

- (void)updateAuthorHighlightsIfNeeded
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorageWithoutCreating = [note textStorageWithoutCreating];

  if (textStorageWithoutCreating)
  {
    textController = [(ICNoteEditorViewController *)self textController];
    authorHighlightsController = [textController authorHighlightsController];
    ic_range = [textStorageWithoutCreating ic_range];
    [authorHighlightsController performHighlightUpdatesForRange:ic_range inTextStorage:v7 updates:{textStorageWithoutCreating, 0}];
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
  audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  isShowingInspector = [audioAttachmentEditorCoordinator isShowingInspector];

  return isShowingInspector;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    isEditingOnSystemPaperOnPhone = [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone];
    v4 = objc_alloc(MEMORY[0x277D35978]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (isEditingOnSystemPaperOnPhone)
    {
      v7 = [v4 initWithSubTrackerName:v6];
      eventReporter = self->_eventReporter;
      self->_eventReporter = v7;
    }

    else
    {
      eventReporter = [(ICNoteEditorViewController *)self viewControllerManager];
      window = [eventReporter window];
      windowScene = [window windowScene];
      v11 = [v4 initWithSubTrackerName:v6 windowScene:windowScene];
      v12 = self->_eventReporter;
      self->_eventReporter = v11;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
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
  inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];
  if (inkPaletteController)
  {
    inkPaletteController2 = [(ICNoteEditorViewController *)self inkPaletteController];
    isInkPaletteShowing = [inkPaletteController2 isInkPaletteShowing];
  }

  else
  {
    isInkPaletteShowing = 0;
  }

  return isInkPaletteShowing;
}

- (void)hideAcceleratorIfNecessary
{
  linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
  isShowing = [linkAcceleratorController isShowing];

  if (isShowing)
  {
    linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController2 hideAccelerator];
  }
}

- (int64_t)attributionSidebarVisibility
{
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  attributionSidebarVisibility = [attributionSidebarController attributionSidebarVisibility];

  return attributionSidebarVisibility;
}

- (BOOL)shouldLockTextViewContentOffset
{
  result = 1;
  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    dateOfLastStrokeOrNewDrawing = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];

    if (!dateOfLastStrokeOrNewDrawing)
    {
      return 0;
    }

    date = [MEMORY[0x277CBEAA8] date];
    dateOfLastStrokeOrNewDrawing2 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];
    [date timeIntervalSinceDate:dateOfLastStrokeOrNewDrawing2];
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
    textView = [(ICNoteEditorViewController *)self textView];
    userTitleView = [textView userTitleView];
    [userTitleView alpha];
    if (fabs(v5) >= 0.00999999978)
    {
      textView2 = [(ICNoteEditorViewController *)self textView];
      dateView = [textView2 dateView];
      [dateView alpha];
      v6 = fabs(v19) < 0.00999999978;
    }

    else
    {
      v6 = 1;
    }

    textView3 = [(ICNoteEditorViewController *)self textView];
    [textView3 safeAreaInsets];
    if (v21 == 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      textView4 = [(ICNoteEditorViewController *)self textView];
      [textView4 safeAreaInsets];
      v24 = -v23;
    }

    textView5 = [(ICNoteEditorViewController *)self textView];
    [textView5 contentOffset];
    v27 = v26;
    textView6 = [(ICNoteEditorViewController *)self textView];
    [textView6 contentInset];
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
    textView7 = [(ICNoteEditorViewController *)self textView];
    [textView7 safeAreaInsets];
    v9 = v8;

    textView8 = [(ICNoteEditorViewController *)self textView];
    [textView8 contentOffset];
    v12 = fabs(v11);

    if ((v12 - v9) * 0.0625 <= 1.0)
    {
      v13 = (v12 - v9) * 0.0625;
    }

    else
    {
      v13 = 1.0;
    }

    textView9 = [(ICNoteEditorViewController *)self textView];
    userTitleView2 = [textView9 userTitleView];
    [userTitleView2 setAlpha:v13];

    textView10 = [(ICNoteEditorViewController *)self textView];
    dateView2 = [textView10 dateView];
    [dateView2 setAlpha:v13];
  }
}

- (void)viewDidLayoutSubviews
{
  textView = [(ICNoteEditorViewController *)self textView];

  if (!textView)
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
      textViewController = [(ICNoteEditorViewController *)self textViewController];
      [textViewController applyInitialScrollState];
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
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  [viewControllerManager updateHostedNotesAppearance];

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_noteEditorDidLayoutSubviews];
  }
}

- (void)updateBottomContentPadding
{
  textView = [(ICNoteEditorViewController *)self textView];
  isTransitioningToNewSize = [textView isTransitioningToNewSize];

  if ((isTransitioningToNewSize & 1) == 0)
  {
    view = [(ICNoteEditorViewController *)self view];
    [view bounds];
    Height = CGRectGetHeight(v24);
    view2 = [(ICNoteEditorViewController *)self view];
    [view2 safeAreaInsets];
    v9 = Height - v8;

    [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWant];
    v11 = v9 - (v10 + 0.0 + 70.0);
    [(ICNoteEditorViewController *)self textViewBottomPaddingVisibleRatio];
    v13 = v12 * v11;
    textView2 = [(ICNoteEditorViewController *)self textView];
    bottomContentPadding = [textView2 bottomContentPadding];
    [bottomContentPadding targetValue];
    v17 = vabdd_f64(v16, v13);

    if (v17 >= 0.00999999978)
    {
      v18 = [MEMORY[0x277D36260] BOOLForKey:*MEMORY[0x277D362F8]];
      textView3 = [(ICNoteEditorViewController *)self textView];
      bottomContentPadding2 = [textView3 bottomContentPadding];
      [bottomContentPadding2 setMode:v18];

      textView4 = [(ICNoteEditorViewController *)self textView];
      bottomContentPadding3 = [textView4 bottomContentPadding];
      [bottomContentPadding3 setTargetValue:v13];
    }
  }
}

- (double)textViewBottomInsetThatWeWant
{
  isEditing = [(ICNoteEditorViewController *)self isEditing];

  [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWantForEditing:isEditing];
  return result;
}

- (UIEdgeInsets)textViewScrollIndicatorInsetsThatWeWant
{
  [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
  v43 = v3;
  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
  v42 = v4;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView verticalScrollIndicatorInsets];
  v39 = v7;
  v40 = v6;

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 bounds];
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
  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{x, y, width, height}];
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

  textView = [(ICNoteEditorViewController *)self textView];
  compatibilityBannerView = [textView compatibilityBannerView];

  if (compatibilityBannerView)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    compatibilityBannerView2 = [textView2 compatibilityBannerView];
    [compatibilityBannerView2 preferredHeight];
    v3 = v3 + v9;
  }

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    textView3 = [(ICNoteEditorViewController *)self textView];
    dateView = [textView3 dateView];
    [dateView preferredHeight];
    v13 = v12;
    textView4 = [(ICNoteEditorViewController *)self textView];
    userTitleView = [textView4 userTitleView];
    [userTitleView preferredHeight];
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
    textStorage = [(ICNoteEditorViewController *)self textStorage];
    v5 = [textStorage length];

    v3 = 0.5;
    if (v5)
    {
      textStorage2 = [(ICNoteEditorViewController *)self textStorage];
      string = [textStorage2 string];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
      v10 = [string rangeOfCharacterFromSet:invertedSet options:4];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_opt_class();
        textStorage3 = [(ICNoteEditorViewController *)self textStorage];
        v12 = [textStorage3 attribute:*MEMORY[0x277D74060] atIndex:v10 effectiveRange:0];
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

  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  v4 = [traitCollection userInterfaceIdiom] == 1;

  return v4;
}

- (id)iCloudShareBarButtonItem
{
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isPubliclySharedOrHasInvitees] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    collaborationButtons_collaborationBarButtonItem = [(ICNoteEditorViewController *)self collaborationButtons_collaborationBarButtonItem];
  }

  else
  {
    collaborationButtons_collaborationBarButtonItem = 0;
  }

  return collaborationButtons_collaborationBarButtonItem;
}

- (BOOL)becomeFirstResponder
{
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    paletteResponder = [(ICNoteEditorViewController *)self paletteResponder];
    becomeFirstResponder = [paletteResponder becomeFirstResponder];

    return becomeFirstResponder;
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
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  if ([viewControllerManager hasCompactWidth])
  {
  }

  else
  {
    viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([viewControllerManager2 isPrimaryContentVisible])
    {

      return 0;
    }

    viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
    isSupplementaryContentVisible = [viewControllerManager3 isSupplementaryContentVisible];

    if (isSupplementaryContentVisible)
    {
      return 0;
    }
  }

  if ([(ICNoteEditorViewController *)self isStyleSelectorInputViewPresenting])
  {
    return 0;
  }

  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (passwordEntryViewController)
  {

    return 0;
  }

  invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];

  return !invitationViewController;
}

- (ICNoteEditorViewController)initWithIdentifier:(int64_t)identifier options:(unint64_t)options
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = ICNoteEditorViewController;
  v5 = [(ICNoteEditorBaseViewController *)&v14 initWithIdentifier:identifier options:options nibName:0 bundle:0];
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

    v5->_canShowLinkBar = (optionsCopy & 2) != 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    savedScrollStates = v5->_savedScrollStates;
    v5->_savedScrollStates = dictionary;

    v5->_needsInitialBarConfiguration = 1;
    backgroundView = [(ICNoteEditorViewController *)v5 backgroundView];
    [backgroundView setAccessibilityElementReparentingDelegate:v5];

    [(ICNoteEditorViewController *)v5 registerForTraitChanges];
  }

  return v5;
}

+ (id)editorViewControllerWithIdentifier:(int64_t)identifier options:(unint64_t)options
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v7 = off_2781A8E28;
  if (!IsTextKit2Enabled)
  {
    v7 = off_2781A8D90;
  }

  v8 = [objc_alloc(*v7) initWithIdentifier:identifier options:options];

  return v8;
}

- (ICTextView)textView
{
  textViewController = [(ICNoteEditorViewController *)self textViewController];
  textView = [textViewController textView];

  return textView;
}

- (ICTextView)textViewIfLoaded
{
  textViewController = [(ICNoteEditorViewController *)self textViewController];
  textViewIfLoaded = [textViewController textViewIfLoaded];

  return textViewIfLoaded;
}

- (ICTextController)textController
{
  textViewController = [(ICNoteEditorViewController *)self textViewController];
  textController = [textViewController textController];

  return textController;
}

- (void)startEditing
{
  if (([(ICNoteEditorViewController *)self ic_isViewVisible]& 1) == 0)
  {
    [(ICNoteEditorViewController *)self setStartEditingAfterViewAppears:1];
    goto LABEL_5;
  }

  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];

  if (passwordEntryViewController)
  {
    passwordEntryViewController2 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [passwordEntryViewController2 beginAuthentication];

    [(ICNoteEditorViewController *)self setShouldBeginEditingAfterNoteUnlock:1];
    goto LABEL_5;
  }

  invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];
  if (invitationViewController)
  {

    goto LABEL_5;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  isFirstResponder = [textView isFirstResponder];
  if (isFirstResponder)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    if ([textView2 isEditable])
    {

      goto LABEL_5;
    }
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  canBecomeFirstResponder = [textView3 canBecomeFirstResponder];

  if (isFirstResponder)
  {
  }

  if (canBecomeFirstResponder)
  {
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    textView4 = [(ICNoteEditorViewController *)self textView];
    [textView4 setEditable:1];

    textView5 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView5 selectedRange];
    v15 = v14;

    textView6 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView6 textStorage];
    if ([textStorage length] && !v15)
    {
      textView7 = [(ICNoteEditorViewController *)self textView];
      textStorage2 = [textView7 textStorage];
      v20 = [textStorage2 length];

      if (selectedRange != v20)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      textView8 = [(ICNoteEditorViewController *)self textView];
      textStorage3 = [textView8 textStorage];
      v23 = [textStorage3 attribute:*MEMORY[0x277D74060] atIndex:selectedRange - 1 effectiveRange:0];
      textView6 = ICDynamicCast();

      if (!textView6 || [textView6 embeddingType] != 1)
      {
LABEL_23:

LABEL_24:
        view = [(ICNoteEditorViewController *)self view];
        window = [view window];
        [window makeKeyWindow];

        textView9 = [(ICNoteEditorViewController *)self textView];
        [textView9 becomeFirstResponder];

        if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
        {
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v29 = [standardUserDefaults BOOLForKey:@"DisableInitialCursorSizeWorkaround"];

          if ((v29 & 1) == 0)
          {
            textView10 = [(ICNoteEditorViewController *)self textView];
            textStorage4 = [textView10 textStorage];
            v32 = [textStorage4 length];

            if (!v32)
            {
              textView11 = [(ICNoteEditorViewController *)self textView];
              layoutManager = [textView11 layoutManager];
              textView12 = [(ICNoteEditorViewController *)self textView];
              textContainer = [textView12 textContainer];
              [layoutManager setExtraLineFragmentRect:textContainer usedRect:*MEMORY[0x277CBF3A0] textContainer:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
            }
          }
        }

        [(ICNoteEditorViewController *)self rememberNoteContentForEditingIntent];
        goto LABEL_5;
      }

      textStorage = [(ICNoteEditorViewController *)self textView];
      v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [textStorage _pasteAttributedString:v24 pasteAsRichText:0];
    }

    goto LABEL_23;
  }

LABEL_5:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteEditorViewControllerDidStartEditingNotification" object:self];
}

- (void)keyboardDidShow:(id)show
{
  showCopy = show;
  objc_initWeak(&location, self);
  date = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setKeyboardDidShowAnimationDate:date];

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
  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  if (![traitCollection horizontalSizeClass])
  {
    view = [(ICNoteEditorViewController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];
    traitCollection2 = [rootViewController traitCollection];

    traitCollection = traitCollection2;
  }

  if (([traitCollection ic_hasCompactWidth] & 1) != 0 || (objc_msgSend(MEMORY[0x277D75418], "ic_isiPad") & 1) == 0)
  {
    ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  }

  else
  {
    ic_isVision = 1;
  }

  return ic_isVision;
}

- (void)scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated inSearchableString:(id)string searchHighlightRegexFinder:(id)finder
{
  animatedCopy = animated;
  length = visible.length;
  location = visible.location;
  stringCopy = string;
  finderCopy = finder;
  if ([(ICNoteEditorViewController *)self _appearState]== 2)
  {
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      textView = [(ICNoteEditorViewController *)self textView];
      layoutManager = [textView layoutManager];
      textView2 = [(ICNoteEditorViewController *)self textView];
      textContainer = [textView2 textContainer];
      [layoutManager ensureLayoutForTextContainer:textContainer];
    }

    textView3 = [(ICNoteEditorViewController *)self textView];
    [textView3 scrollRangeToVisible:location consideringInsets:length animated:1 inSearchableString:{0, stringCopy}];

    [(ICNoteEditorViewController *)self setSearchRegexFinder:finderCopy];
  }

  else
  {
    [(ICNoteEditorViewController *)self scrollRangeToVisibleWhenViewAppears:location animated:length inSearchableString:animatedCopy searchHighlightRegexFinder:stringCopy, finderCopy];
  }
}

- (void)scrollRangeToVisibleWhenViewAppears:(_NSRange)appears animated:(BOOL)animated inSearchableString:(id)string searchHighlightRegexFinder:(id)finder
{
  length = appears.length;
  location = appears.location;
  finderCopy = finder;
  view = [(ICNoteEditorViewController *)self view];
  [(ICNoteEditorViewController *)self setShouldResetTextViewContentOffsetWhenAppearing:0];
  note = [(ICNoteEditorBaseViewController *)self note];
  v12 = [ICTextViewScrollState scrollStateForRange:location inNote:length, note];

  [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:v12];
  [(ICNoteEditorViewController *)self setSearchRegexFinder:finderCopy];

  [(ICNoteEditorViewController *)self setShouldOverscrollScrollState:1];
}

- (void)setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setSelectedRange:{location, length}];
}

- (id)barButtonItemWithImage:(id)image selector:(SEL)selector
{
  v6 = MEMORY[0x277D751E0];
  imageCopy = image;
  v8 = [[v6 alloc] initWithImage:imageCopy style:0 target:self action:selector];

  return v8;
}

- (id)flexibleSpaceBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (void)recreateTextViewIfPasswordEntryScreenExistsButNoteIsUnlocked
{
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (passwordEntryViewController)
  {
    v4 = passwordEntryViewController;
    note = [(ICNoteEditorBaseViewController *)self note];
    isPasswordProtectedAndLocked = [note isPasswordProtectedAndLocked];

    if ((isPasswordProtectedAndLocked & 1) == 0)
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

  textView = [(ICNoteEditorViewController *)self textView];
  [textView contentOffset];
  v245 = v5;
  v246 = v4;

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 verticalScrollIndicatorInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  textView4 = [(ICNoteEditorViewController *)self textView];

  if (textView4)
  {
    textView5 = [(ICNoteEditorViewController *)self textView];
    [textView5 _removeBoundingPathChangeObserver:self];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = *MEMORY[0x277CCA7F8];
    textView6 = [(ICNoteEditorViewController *)self textView];
    undoManager = [textView6 undoManager];
    [defaultCenter removeObserver:self name:v27 object:undoManager];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v31 = *MEMORY[0x277CCA810];
    textView7 = [(ICNoteEditorViewController *)self textView];
    undoManager2 = [textView7 undoManager];
    [defaultCenter2 removeObserver:self name:v31 object:undoManager2];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v35 = *MEMORY[0x277CCA808];
    textView8 = [(ICNoteEditorViewController *)self textView];
    undoManager3 = [textView8 undoManager];
    [defaultCenter3 removeObserver:self name:v35 object:undoManager3];

    textView9 = [(ICNoteEditorViewController *)self textView];
    [textView9 setDelegate:0];

    textView10 = [(ICNoteEditorViewController *)self textView];
    [textView10 removeFromSuperview];
  }

  textViewController = [(ICNoteEditorViewController *)self textViewController];

  if (textViewController)
  {
    textViewController2 = [(ICNoteEditorViewController *)self textViewController];
    [(ICNoteEditorViewController *)self removeChildViewController:textViewController2];
  }

  textView11 = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView11 textStorage];
  layoutManagers = [textStorage layoutManagers];
  textView12 = [(ICNoteEditorViewController *)self textView];
  layoutManager = [textView12 layoutManager];
  v47 = [layoutManagers containsObject:layoutManager];

  if (v47)
  {
    textView13 = [(ICNoteEditorViewController *)self textView];
    textStorage2 = [textView13 textStorage];
    textView14 = [(ICNoteEditorViewController *)self textView];
    layoutManager2 = [textView14 layoutManager];
    [textStorage2 removeLayoutManager:layoutManager2];
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isPasswordProtectedAndLocked])
  {
    goto LABEL_12;
  }

  invitation = [(ICNoteEditorViewController *)self invitation];
  if (invitation)
  {

LABEL_12:
    goto LABEL_13;
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  isUnsupported = [note2 isUnsupported];

  if (isUnsupported)
  {
LABEL_13:
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v54 = [ICTextViewController alloc];
      viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
      note3 = [(ICNoteEditorBaseViewController *)self note];
      view = [(ICNoteEditorViewController *)self view];
      [view bounds];
      v59 = v58;
      v60 = objc_alloc_init(ICTextViewScrollState);
      v61 = [(ICTextViewController *)v54 initWithViewControllerManager:viewControllerManager editorViewController:self note:note3 initialContainerWidth:v60 scrollState:v59];
      [(ICNoteEditorViewController *)self setTextViewController:v61];

      textViewController3 = [(ICNoteEditorViewController *)self textViewController];
      view2 = [textViewController3 view];
      backgroundView = [(ICNoteEditorViewController *)self backgroundView];
      [backgroundView setContentView:view2];
    }

    return;
  }

  archivedScrollStateToApply = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
  note4 = [archivedScrollStateToApply note];
  note5 = [(ICNoteEditorBaseViewController *)self note];
  if ([note4 isEqual:note5])
  {
    archivedScrollStateToApply2 = [(ICNoteEditorViewController *)self archivedScrollStateToApply];
  }

  else
  {
    archivedScrollStateToApply2 = 0;
  }

  if (!archivedScrollStateToApply2)
  {
    savedScrollStates = [(ICNoteEditorViewController *)self savedScrollStates];
    note6 = [(ICNoteEditorBaseViewController *)self note];
    identifier = [note6 identifier];
    archivedScrollStateToApply2 = [savedScrollStates ic_objectForNonNilKey:identifier];
  }

  if (([archivedScrollStateToApply2 captureIsWithinTimeThreshold] & 1) == 0 && (objc_msgSend(archivedScrollStateToApply2, "isFromArchive") & 1) == 0)
  {

    archivedScrollStateToApply2 = 0;
  }

  v73 = [ICTextViewController alloc];
  viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
  note7 = [(ICNoteEditorBaseViewController *)self note];
  view3 = [(ICNoteEditorViewController *)self view];
  [view3 bounds];
  v78 = [(ICTextViewController *)v73 initWithViewControllerManager:viewControllerManager2 editorViewController:self note:note7 initialContainerWidth:archivedScrollStateToApply2 scrollState:v77];
  [(ICNoteEditorViewController *)self setTextViewController:v78];

  textViewController4 = [(ICNoteEditorViewController *)self textViewController];
  [textViewController4 setPerformingInitialSetup:1];

  textViewController5 = [(ICNoteEditorViewController *)self textViewController];
  textView15 = [textViewController5 textView];
  [textView15 setContentInsetAdjustmentBehavior:2];

  note8 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(textView15) = [note8 isPasswordProtected];
  textViewController6 = [(ICNoteEditorViewController *)self textViewController];
  textView16 = [textViewController6 textView];
  [textView16 setLearnsCorrections:textView15 ^ 1];

  textViewController7 = [(ICNoteEditorViewController *)self textViewController];
  [(ICNoteEditorViewController *)self addChildViewController:textViewController7];

  textView17 = [(ICNoteEditorViewController *)self textView];
  [textView17 setContentInsetAdjustmentBehavior:2];

  textView18 = [(ICNoteEditorViewController *)self textView];
  [textView18 setDrawingDelegate:self];

  v88 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v88 setDelegate:self];
  textView19 = [(ICNoteEditorViewController *)self textView];
  [textView19 addInteraction:v88];

  textView20 = [(ICNoteEditorViewController *)self textView];
  [textView20 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  v91 = objc_alloc(MEMORY[0x277D366A8]);
  note9 = [(ICNoteEditorBaseViewController *)self note];
  v93 = [v91 initWithNote:note9];
  [(ICNoteEditorViewController *)self setAttachmentInsertionController:v93];

  attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
  [attachmentInsertionController setAttachmentDelegate:self];

  attachmentInsertionController2 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  textController = [(ICNoteEditorViewController *)self textController];
  [textController setAttachmentInsertionController:attachmentInsertionController2];

  v97 = [ICVisualAssetImportController alloc];
  note10 = [(ICNoteEditorBaseViewController *)self note];
  textView21 = [(ICNoteEditorViewController *)self textView];
  v100 = [(ICVisualAssetImportController *)v97 initWithNote:note10 textView:textView21];
  [(ICNoteEditorViewController *)self setVisualAssetImportController:v100];

  v101 = objc_alloc(MEMORY[0x277D35F20]);
  note11 = [(ICNoteEditorBaseViewController *)self note];
  v103 = [v101 initWithNote:note11];
  [(ICNoteEditorViewController *)self setMentionsController:v103];

  mentionsController = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController setAnalyticsDelegate:self];

  attachmentInsertionController3 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  mentionsController2 = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController2 setAttachmentInsertionController:attachmentInsertionController3];

  mentionsController3 = [(ICNoteEditorViewController *)self mentionsController];
  textController2 = [(ICNoteEditorViewController *)self textController];
  [textController2 setMentionsController:mentionsController3];

  textView22 = [(ICNoteEditorViewController *)self textView];
  mentionsController4 = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController4 setTextView:textView22];

  v111 = objc_alloc(MEMORY[0x277D35EE8]);
  note12 = [(ICNoteEditorBaseViewController *)self note];
  v113 = [v111 initWithNote:note12];
  [(ICNoteEditorViewController *)self setHashtagController:v113];

  hashtagController = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController setAnalyticsDelegate:self];

  textView23 = [(ICNoteEditorViewController *)self textView];
  hashtagController2 = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController2 setTextView:textView23];

  attachmentInsertionController4 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  hashtagController3 = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController3 setAttachmentInsertionController:attachmentInsertionController4];

  hashtagController4 = [(ICNoteEditorViewController *)self hashtagController];
  textController3 = [(ICNoteEditorViewController *)self textController];
  [textController3 setHashtagController:hashtagController4];

  v121 = [ICLinkAcceleratorController alloc];
  mEMORY[0x277D35E70] = [MEMORY[0x277D35E70] sharedConfiguration];
  v123 = [(ICLinkAcceleratorController *)v121 initWithCloudConfiguration:mEMORY[0x277D35E70] mode:0];
  [(ICNoteEditorViewController *)self setLinkAcceleratorController:v123];

  linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController setDelegate:self];

  linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController2 setLinkDelegate:self];

  if (ICInternalSettingsIsNotesMathEnabled())
  {
    v126 = objc_alloc(MEMORY[0x277D36738]);
    note13 = [(ICNoteEditorBaseViewController *)self note];
    v128 = [v126 initWithNote:note13];
    [(ICNoteEditorViewController *)self setCalculateRecognitionController:v128];

    textView24 = [(ICNoteEditorViewController *)self textView];
    calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController setTextView:textView24];

    attachmentInsertionController5 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    calculateRecognitionController2 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController2 setAttachmentInsertionController:attachmentInsertionController5];

    textView25 = [(ICNoteEditorViewController *)self textView];
    calculateRecognitionController3 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController3 setSuggestionsDelegate:textView25];

    note14 = [(ICNoteEditorBaseViewController *)self note];
    v136 = [note14 calculatePreviewBehavior] != 1;
    calculateRecognitionController4 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController4 setInsertsResults:v136];

    note15 = [(ICNoteEditorBaseViewController *)self note];
    calculatePreviewBehavior = [note15 calculatePreviewBehavior];
    calculateRecognitionController5 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController5 setPreviewBehavior:calculatePreviewBehavior];

    calculateRecognitionController6 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController6 addErrorInteraction];
  }

  if (ICInternalSettingsIsScrubbingEnabled())
  {
    v142 = objc_alloc(MEMORY[0x277D36750]);
    textView26 = [(ICNoteEditorViewController *)self textView];
    v144 = [v142 initWithTextView:textView26];
    [(ICNoteEditorViewController *)self setCalculateScrubberController:v144];

    note16 = [(ICNoteEditorBaseViewController *)self note];
    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
    [calculateScrubberController setNote:note16];
  }

  if (ICInternalSettingsIsGraphingEnabled())
  {
    v147 = objc_alloc(MEMORY[0x277D36728]);
    note17 = [(ICNoteEditorBaseViewController *)self note];
    v149 = [v147 initWithNote:note17];
    [(ICNoteEditorViewController *)self setCalculateGraphingController:v149];

    textView27 = [(ICNoteEditorViewController *)self textView];
    calculateGraphingController = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController setTextView:textView27];

    attachmentInsertionController6 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    calculateGraphingController2 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController2 setAttachmentInsertionController:attachmentInsertionController6];

    calculateScrubberController2 = [(ICNoteEditorViewController *)self calculateScrubberController];
    calculateGraphingController3 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController3 setScrubberController:calculateScrubberController2];
  }

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
    paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [paperLinkBarViewController refresh];
  }

  v157 = [ICPaperTextAttachmentManager alloc];
  note18 = [(ICNoteEditorBaseViewController *)self note];
  textView28 = [(ICNoteEditorViewController *)self textView];
  v160 = [(ICPaperTextAttachmentManager *)v157 initWithNote:note18 textView:textView28 delegate:self];
  [(ICNoteEditorViewController *)self setPaperTextAttachmentManager:v160];

  note19 = [(ICNoteEditorBaseViewController *)self note];
  textView29 = [(ICNoteEditorViewController *)self textView];
  dateView = [textView29 dateView];
  [dateView setNote:note19];

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];
  }

  else
  {
    note20 = [(ICNoteEditorBaseViewController *)self note];
    -[ICNoteEditorViewController setUserWantsToSeeDateLabel:](self, "setUserWantsToSeeDateLabel:", [note20 isSharedAndEmpty]);
  }

  textView30 = [(ICNoteEditorViewController *)self textView];
  note21 = [(ICNoteEditorBaseViewController *)self note];
  [textView30 createUserTitleViewIfNecessaryForNote:note21];

  textView31 = [(ICNoteEditorViewController *)self textView];
  note22 = [(ICNoteEditorBaseViewController *)self note];
  [textView31 updateCompatibilityBannerForNote:note22 parentViewController:self updateTextViewContentInsets:0];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen]&& ![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    textView32 = [(ICNoteEditorViewController *)self textView];
    [textView32 setDataDetectorTypes:2];
  }

  else
  {
    textView33 = [(ICNoteEditorViewController *)self textView];
    objc_initWeak(&location, textView33);

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

  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  if ([traitCollection ic_hasCompactWidth])
  {
    isMainSplitViewDisplayModeSecondaryOnly = 1;
  }

  else
  {
    viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([viewControllerManager3 isAuxiliary])
    {
      isMainSplitViewDisplayModeSecondaryOnly = 1;
    }

    else if ([MEMORY[0x277D75418] ic_isVision])
    {
      viewControllerManager4 = [(ICNoteEditorViewController *)self viewControllerManager];
      isMainSplitViewDisplayModeSecondaryOnly = [viewControllerManager4 isMainSplitViewDisplayModeSecondaryOnly];
    }

    else
    {
      isMainSplitViewDisplayModeSecondaryOnly = 0;
    }
  }

  viewControllerManager5 = [(ICNoteEditorViewController *)self viewControllerManager];
  v177 = [viewControllerManager5 noteContainerViewMode] == 0;

  viewControllerManager6 = [(ICNoteEditorViewController *)self viewControllerManager];
  v179 = ([viewControllerManager6 noteContainerViewMode] == 1) | isMainSplitViewDisplayModeSecondaryOnly;

  backgroundView2 = [(ICNoteEditorViewController *)self backgroundView];
  textViewController8 = [(ICNoteEditorViewController *)self textViewController];
  view4 = [textViewController8 view];
  [backgroundView2 setContentView:view4 useSafeAreaLayoutGuide:objc_msgSend(MEMORY[0x277D75418] standalone:"ic_isVision") needsAdditionalBottomMargin:isMainSplitViewDisplayModeSecondaryOnly needsAdditionalLeadingMargin:v177 force:{v179 & 1, 0}];

  v183 = objc_alloc(MEMORY[0x277D366F8]);
  note23 = [(ICNoteEditorBaseViewController *)self note];
  v185 = [v183 initWithNote:note23 textLayoutManager:0];
  [(ICNoteEditorViewController *)self setAuthorHighlightsController:v185];

  authorHighlightsController = [(ICNoteEditorViewController *)self authorHighlightsController];
  textController4 = [(ICNoteEditorViewController *)self textController];
  [textController4 setAuthorHighlightsController:authorHighlightsController];

  v188 = [ICAuthorHighlightsUpdater alloc];
  authorHighlightsController2 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v190 = [(ICAuthorHighlightsUpdater *)v188 initWithAuthorHighlightsController:authorHighlightsController2 textLayoutManager:0];
  [(ICNoteEditorViewController *)self setAuthorHighlightsUpdater:v190];

  authorHighlightsUpdater = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [authorHighlightsUpdater setHighlightedValue:0.0];

  authorHighlightsUpdater2 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  attributionSidebarView = [(ICNoteEditorViewController *)self attributionSidebarView];
  [attributionSidebarView setAuthorHighlightsUpdater:authorHighlightsUpdater2];

  view5 = [(ICNoteEditorViewController *)self view];
  [view5 layoutIfNeeded];

  authorHighlightsUpdater3 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [authorHighlightsUpdater3 scheduleUpdateAnimated:0];

  textView34 = [(ICNoteEditorViewController *)self textView];
  textView35 = [(ICNoteEditorViewController *)self textView];
  [textView35 layoutMargins];
  [textView34 applyEdgeInsets:?];

  textView36 = [(ICNoteEditorViewController *)self textView];
  [textView36 setDelegate:self];

  textView37 = [(ICNoteEditorViewController *)self textView];
  [textView37 setIcDelegate:self];

  textView38 = [(ICNoteEditorViewController *)self textView];
  [textView38 setAttachmentViewDelegate:self];

  textView39 = [(ICNoteEditorViewController *)self textView];
  [textView39 setCanCancelContentTouches:1];

  textView40 = [(ICNoteEditorViewController *)self textView];
  [textView40 setDelaysContentTouches:0];

  note24 = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note24 isEditable];
  textView41 = [(ICNoteEditorViewController *)self textView];
  [textView41 setDisplayingEditableContent:isEditable];

  [(ICNoteEditorViewController *)self rebuildInputAccessoryView];
  textView42 = [(ICNoteEditorViewController *)self textView];
  [textView42 _addBoundingPathChangeObserver:self];

  if (textView4)
  {
    textView43 = [(ICNoteEditorViewController *)self textView];
    [textView43 setContentInset:{v8, v10, v12, v14}];

    textView44 = [(ICNoteEditorViewController *)self textView];
    [textView44 setVerticalScrollIndicatorInsets:{v17, v19, v21, v23}];

    textView45 = [(ICNoteEditorViewController *)self textView];
    [textView45 setContentOffset:{*&v246, v245}];
  }

  v210 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v210 setDirection:1];
  [v210 setDelegate:self];
  textView46 = [(ICNoteEditorViewController *)self textView];
  [textView46 addGestureRecognizer:v210];

  v212 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v212 setDirection:2];
  [v212 setDelegate:self];
  textView47 = [(ICNoteEditorViewController *)self textView];
  [textView47 addGestureRecognizer:v212];

  v251[0] = v210;
  v251[1] = v212;
  v214 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
  [(ICNoteEditorViewController *)self setSwipeGestureRecognizers:v214];

  textViewController9 = [(ICNoteEditorViewController *)self textViewController];
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController setTextViewController:textViewController9];

  attributionSidebarController2 = [(ICNoteEditorViewController *)self attributionSidebarController];
  panGestureRecognizer = [attributionSidebarController2 panGestureRecognizer];
  [panGestureRecognizer setDelegate:self];

  shouldAllowAttributionSidebar = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
  attributionSidebarController3 = [(ICNoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController3 setEnabled:shouldAllowAttributionSidebar];

  textView48 = [(ICNoteEditorViewController *)self textView];
  [textView48 setKeyboardDismissMode:4];

  textView49 = [(ICNoteEditorViewController *)self textView];
  [textView49 setAlwaysBounceVertical:1];

  [(ICNoteEditorViewController *)self setIsPreviewingAttachmentFromNote:0];
  v223 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController recreateTextView];
  }

  textView50 = [(ICNoteEditorViewController *)self textView];
  ic_pkTiledView = [textView50 ic_pkTiledView];
  [ic_pkTiledView setRulerHostingDelegate:self];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  v227 = *MEMORY[0x277CCA7F8];
  textView51 = [(ICNoteEditorViewController *)self textView];
  undoManager4 = [textView51 undoManager];
  [defaultCenter4 addObserver:self selector:sel_updateBarButtons name:v227 object:undoManager4];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  v231 = *MEMORY[0x277CCA810];
  textView52 = [(ICNoteEditorViewController *)self textView];
  undoManager5 = [textView52 undoManager];
  [defaultCenter5 addObserver:self selector:sel_updateBarButtons name:v231 object:undoManager5];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  v235 = *MEMORY[0x277CCA808];
  textView53 = [(ICNoteEditorViewController *)self textView];
  undoManager6 = [textView53 undoManager];
  [defaultCenter6 addObserver:self selector:sel_updateBarButtons name:v235 object:undoManager6];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_hideInkPicker name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  [(ICNoteEditorViewController *)self updateBarButtons];
  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  [(ICNoteEditorViewController *)self updateAuthorHighlightsIfNeeded];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
  backgroundView3 = [(ICNoteEditorViewController *)self backgroundView];
  textView54 = [(ICNoteEditorViewController *)self textView];
  [backgroundView3 reparentAccessibilityChildrenOfElement:textView54];

  backgroundView4 = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView4 setAxChildReparentingController:self];

  note25 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(textView54) = [note25 isNewNoteWithHashtagsInsertedIntoBody];

  if (textView54)
  {
    -[ICNoteEditorViewController setCurrentTextStyle:](self, "setCurrentTextStyle:", [MEMORY[0x277D36978] noteDefaultNamedStyle]);
    note26 = [(ICNoteEditorBaseViewController *)self note];
    [note26 setIsNewNoteWithHashtagsInsertedIntoBody:0];
  }

  textViewController10 = [(ICNoteEditorViewController *)self textViewController];
  [textViewController10 setPerformingInitialSetup:0];
}

void __46__ICNoteEditorViewController_recreateTextView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDataDetectorTypes:-1];
}

- (double)inputAccessoryViewHeight
{
  inputAccessoryView = [(ICNoteEditorViewController *)self inputAccessoryView];
  [inputAccessoryView intrinsicContentSize];
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
    icSplitViewController = [(ICNoteEditorViewController *)self icSplitViewController];
    view = [icSplitViewController view];
    [view frame];
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

- (void)paperKitBundleDidMerge:(id)merge
{
  mergeCopy = merge;
  objc_opt_class();
  object = [mergeCopy object];

  v5 = ICDynamicCast();
  objectID = [v5 objectID];

  if (objectID)
  {
    v7 = objectID;
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

- (void)viewDidAppear:(BOOL)appear
{
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v49 viewDidAppear:appear];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self collaboration_setupActivityItemsConfigurationProvider];
  }

  else
  {
    [(ICNoteEditorViewController *)self setActivityItemsConfigurationProvider:0];
  }

  activityItemsConfigurationProvider = [(ICNoteEditorViewController *)self activityItemsConfigurationProvider];
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [windowScene setActivityItemsConfigurationSource:activityItemsConfigurationProvider];

  [(ICNoteEditorViewController *)self setShouldTrackNoteViewEventAnalyticsFromSettingNote:1];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  if (eventReporter)
  {
    shouldFireNoteViewEventOnViewDisappear = [(ICNoteEditorViewController *)self shouldFireNoteViewEventOnViewDisappear];

    if (!shouldFireNoteViewEventOnViewDisappear)
    {
      eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
      note = [(ICNoteEditorBaseViewController *)self note];
      [eventReporter2 startNoteViewEventDurationTrackingForModernNote:note reportCoreAnalytics:1];

      [(ICNoteEditorViewController *)self setShouldFireNoteViewEventOnViewDisappear:1];
    }
  }

  if ([(ICNoteEditorViewController *)self updateContentSizeCategoryWhenVisible])
  {
    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:0];
    [(ICNoteEditorViewController *)self contentSizeCategoryDidChange];
  }

  selfCopy = self;
  view2 = [(ICNoteEditorViewController *)selfCopy view];
  [view2 frame];
  [(ICNoteEditorViewController *)selfCopy updateFormatToolbarLayoutWithSize:v14, v15];

  [(ICNoteEditorViewController *)selfCopy setShouldResetTextViewContentOffsetWhenAppearing:0];
  if ([(ICNoteEditorViewController *)selfCopy startEditingAfterViewAppears])
  {
    [(ICNoteEditorViewController *)selfCopy startEditing];
    [(ICNoteEditorViewController *)selfCopy setStartEditingAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)selfCopy showInkPickerAfterViewAppears])
  {
    presentedViewController = [(ICNoteEditorViewController *)selfCopy presentedViewController];
    v17 = presentedViewController == 0;

    if (v17)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__ICNoteEditorViewController_viewDidAppear___block_invoke;
      block[3] = &unk_2781ABCF8;
      block[4] = selfCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [(ICNoteEditorViewController *)selfCopy setShowInkPickerAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)selfCopy showInsertUIAfterViewAppears])
  {
    [(ICNoteEditorViewController *)selfCopy showInsertUIWithPreferredSourceType:1];
    [(ICNoteEditorViewController *)selfCopy setShowInsertUIAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)selfCopy showInsertAudioAfterViewAppears])
  {
    [(ICNoteEditorViewController *)selfCopy showInsertUIWithPreferredSourceType:7];
    [(ICNoteEditorViewController *)selfCopy setShowInsertAudioAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)selfCopy addToDoListAfterViewAppears])
  {
    [(ICNoteEditorViewController *)selfCopy addTodoListAtEndOfNote];
    [(ICNoteEditorViewController *)selfCopy setAddToDoListAfterViewAppears:0];
  }

  if ([(ICNoteEditorViewController *)selfCopy addDocumentScanAfterViewAppears])
  {
    [(ICNoteEditorViewController *)selfCopy showInsertUIWithPreferredSourceType:4];
    [(ICNoteEditorViewController *)selfCopy setAddDocumentScanAfterViewAppears:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)selfCopy ppt_didFinishExtendedLaunch];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_systemPaperLinkBarVisibilityPreferenceChanged_ name:@"ICShouldQuickNoteLinksBarDefaultsChangedNotification" object:0];

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)selfCopy ppt_didShowNoteEditor];
  }

  [(ICNoteEditorViewController *)selfCopy updateTextViewContentInsetsAnimated:1];
  passwordEntryViewController = [(ICNoteEditorViewController *)selfCopy passwordEntryViewController];
  [passwordEntryViewController setIsAnimatingOut:0];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && [(ICNoteEditorViewController *)selfCopy wasWindowlessDuringTransitionToSize])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    note2 = [(ICNoteEditorBaseViewController *)selfCopy note];
    textStorage = [note2 textStorage];
    layoutManagers = [textStorage layoutManagers];

    v23 = [layoutManagers countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(layoutManagers);
          }

          v26 = *(*(&v44 + 1) + 8 * v25);
          visibleRange = [(ICNoteEditorViewController *)selfCopy visibleRange];
          v29 = v28;
          [v26 invalidateLayoutForCharacterRange:visibleRange actualCharacterRange:{v28, 0}];
          [v26 invalidateDisplayForCharacterRange:{visibleRange, v29}];
          ++v25;
        }

        while (v23 != v25);
        v23 = [layoutManagers countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v23);
    }

    [(ICNoteEditorViewController *)selfCopy setWasWindowlessDuringTransitionToSize:0];
  }

  if (![(ICNoteEditorViewController *)selfCopy isInLiveWindowResize])
  {
    [(ICNoteEditorViewController *)selfCopy updateBarButtonsAnimated:0];
  }

  view3 = [(ICNoteEditorViewController *)selfCopy view];
  window2 = [view3 window];

  if (window2)
  {
    if ([MEMORY[0x277D361D0] deviceSupportsPencil] && (objc_msgSend(MEMORY[0x277D361D0], "deviceSupportsFirstGenPencil") & 1) == 0)
    {
      objc_initWeak(&location, selfCopy);
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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:*MEMORY[0x277D365C0]])
  {
    [(ICNoteEditorViewController *)selfCopy showHandwritingDebug:1];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICNoteEditorViewController *)selfCopy applyScrollStateIfAvailable];
  }

  [(ICNoteEditorViewController *)selfCopy setArchivedScrollStateToApply:0];
  [(ICNoteEditorViewController *)selfCopy setShouldOverscrollScrollState:0];
  note3 = [(ICNoteEditorBaseViewController *)selfCopy note];

  if (note3)
  {
    note4 = [(ICNoteEditorBaseViewController *)selfCopy note];
    [(ICNoteEditorBaseViewController *)selfCopy noteDidAppear:note4];

    if (objc_opt_respondsToSelector())
    {
      note5 = [(ICNoteEditorBaseViewController *)selfCopy note];
      [(ICNoteEditorViewController *)selfCopy performSelector:sel_updateFastSyncParticipantCursorsForNote_ withObject:note5];
    }
  }

  viewControllerManager = [(ICNoteEditorViewController *)selfCopy viewControllerManager];
  [viewControllerManager setSelectedNewNoteShortcutItem:0];
}

void __44__ICNoteEditorViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createInkPickerControllerIfNecessary];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v17.receiver = self;
  v17.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v17 viewIsAppearing:appearing];
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];

  if (window)
  {
    [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
    view2 = [(ICNoteEditorViewController *)self view];
    window2 = [view2 window];
    windowScene = [window2 windowScene];
    -[ICNoteEditorViewController showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:](self, "showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:", [windowScene activationState] != 0);

    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    isAuxiliary = [viewControllerManager isAuxiliary];
    navigationItem = [(ICNoteEditorViewController *)self navigationItem];
    [navigationItem setHidesBackButton:isAuxiliary];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
    }

    if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
    {
      navigationController = [(ICNoteEditorViewController *)self navigationController];
      interactiveContentPopGestureRecognizer = [navigationController interactiveContentPopGestureRecognizer];
      formatBarView = [(ICNoteEditorViewController *)self formatBarView];
      scrollView = [formatBarView scrollView];
      panGestureRecognizer = [scrollView panGestureRecognizer];
      [interactiveContentPopGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277D75418];
  coordinatorCopy = coordinator;
  if (([v7 ic_isVision] & 1) == 0)
  {
    attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
    [attributionSidebarController hideSidebarAnimated:1];
  }

  dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  [dismissableInputAccessoryView hideDisclosureViewForTransition:1];

  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
  if ([auxiliaryResponder isFirstResponder])
  {
    auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
  }

  else
  {
    auxiliaryResponder2 = 0;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  if ([textView isFirstResponder])
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
  }

  else
  {
    textView2 = auxiliaryResponder2;
  }

  v15 = textView2;

  isInkPickerShowing = [(ICNoteEditorViewController *)self isInkPickerShowing];
  noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
  presentingViewController = [noteFormattingController presentingViewController];

  [(ICNoteEditorViewController *)self updateFormatToolbarLayoutWithSize:width, height];
  [(ICNoteEditorViewController *)self hideAcceleratorIfNecessary];
  linkEditorController = [(ICNoteEditorViewController *)self linkEditorController];

  if (linkEditorController)
  {
    linkEditorController2 = [(ICNoteEditorViewController *)self linkEditorController];
    [linkEditorController2 hideAccelerator];
  }

  isInLiveWindowResize = [(ICNoteEditorViewController *)self isInLiveWindowResize];
  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 setNeedsLayout];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v33[3] = &unk_2781ACD68;
  v33[4] = self;
  v34 = isInLiveWindowResize;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __81__ICNoteEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v29[3] = &unk_2781ACD90;
  v32 = isInkPickerShowing;
  v29[4] = self;
  v30 = v15;
  v31 = presentingViewController;
  v23 = presentingViewController;
  v24 = v15;
  [coordinatorCopy animateAlongsideTransition:v33 completion:v29];
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  [(ICNoteEditorViewController *)self setWasWindowlessDuringTransitionToSize:window == 0];

  paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [paperLinkBarViewController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];

  v28.receiver = self;
  v28.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v28 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(ICNoteEditorBaseViewController *)&v24 viewWillAppear:appearCopy];
  if (![(ICNoteEditorViewController *)self isInLiveWindowResize])
  {
    [(ICNoteEditorViewController *)self setNeedsInitialBarConfiguration:1];
  }

  view = [(ICNoteEditorViewController *)self view];
  [view setNeedsLayout];

  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_notesContextRefreshNotification_ name:*MEMORY[0x277D35D38] object:0];
  [defaultCenter addObserver:self selector:sel_viewControllerWillStartEditModeNotification_ name:@"ICViewControllerWillStartEditModeNotification" object:0];
  [defaultCenter addObserver:self selector:sel_migrationStateDidChange_ name:*MEMORY[0x277D36138] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
  [defaultCenter addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D20] object:0];
  [defaultCenter addObserver:self selector:sel_noteWillBeDeleted_ name:*MEMORY[0x277D35D18] object:0];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
  }

  transitionCoordinator = [(ICNoteEditorViewController *)self transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [(ICNoteEditorViewController *)self transitionCoordinator];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__ICNoteEditorViewController_viewWillAppear___block_invoke;
    v23[3] = &unk_2781AC788;
    v23[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v23 completion:0];
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
    note = [(ICNoteEditorBaseViewController *)self note];
    -[ICNoteEditorViewController setUserWantsToSeeDateLabel:](self, "setUserWantsToSeeDateLabel:", [note isSharedAndEmpty]);
  }

  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    userWantsToSeeDateLabel = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isSharedAndEmpty = [note2 isSharedAndEmpty];
    textView = [(ICNoteEditorViewController *)self textView];
    window = [textView window];
    *buf = 67109632;
    *v26 = userWantsToSeeDateLabel;
    *&v26[4] = 1024;
    *&v26[6] = isSharedAndEmpty;
    LOWORD(v27[0]) = 1024;
    *(v27 + 2) = window != 0;
    _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_INFO, "wants to see date label: %d shared and empty: %d, has window: %d", buf, 0x14u);
  }

  if ([(ICNoteEditorViewController *)self userWantsToSeeDateLabel]|| [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    window2 = [textView2 window];

    if (window2)
    {
      [(ICNoteEditorViewController *)self updateTextViewContentOffset];
    }
  }

  note3 = [(ICNoteEditorBaseViewController *)self note];
  needsRefresh = [note3 needsRefresh];

  if (needsRefresh)
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

  note4 = [(ICNoteEditorBaseViewController *)self note];

  if (note4)
  {
    note5 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self noteWillAppear:note5];
  }
}

- (void)noteWillAppear:(id)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v5 noteWillAppear:appearCopy];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self performSelector:sel_updateFastSyncParticipantCursorsForNote_ withObject:appearCopy];
  }
}

- (void)noteWillDisappear:(id)disappear
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v4 noteWillDisappear:disappear];
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
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 adjustedContentInset];
  [textView setContentOffset:{0.0, -v6}];

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 icaxClearCachedChildrenForReparenting];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v33.receiver = self;
  v33.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v33 viewWillDisappear:?];
  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self noteWillDisappear:note2];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self link_removeLinkActionInteractions];
  }

  [(ICNoteEditorViewController *)self setShouldTrackNoteViewEventAnalyticsFromSettingNote:0];
  note3 = [(ICNoteEditorBaseViewController *)self note];
  if (note3)
  {
    v8 = note3;
    shouldFireNoteViewEventOnViewDisappear = [(ICNoteEditorViewController *)self shouldFireNoteViewEventOnViewDisappear];

    if (shouldFireNoteViewEventOnViewDisappear)
    {
      note4 = [(ICNoteEditorBaseViewController *)self note];
      [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:note4];

      [(ICNoteEditorViewController *)self setShouldFireNoteViewEventOnViewDisappear:0];
    }
  }

  [(ICNoteEditorViewController *)self saveCurrentScrollState];
  [(ICNoteEditorViewController *)self showInkPicker:0 animated:disappearCopy];
  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  [findInteraction dismissFindNavigator];

  textView2 = [(ICNoteEditorViewController *)self textView];
  LODWORD(findInteraction) = [textView2 isEditing];

  if (findInteraction)
  {
    [(ICNoteEditorViewController *)self doneEditing];
    noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
    presentingViewController = [noteFormattingController presentingViewController];
    if (presentingViewController)
    {
      v16 = presentingViewController;
      isSplitViewExpandingOrCollapsing = [(ICNoteEditorViewController *)self isSplitViewExpandingOrCollapsing];

      if (!isSplitViewExpandingOrCollapsing)
      {
        noteFormattingController2 = [(ICNoteEditorViewController *)self noteFormattingController];
        presentingViewController2 = [noteFormattingController2 presentingViewController];
        [presentingViewController2 dismissViewControllerAnimated:disappearCopy completion:0];

        goto LABEL_14;
      }
    }

    else
    {
    }

    [(ICNoteEditorViewController *)self setStartEditingAfterViewAppears:1];
    transitionCoordinator = [(ICNoteEditorViewController *)self transitionCoordinator];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __48__ICNoteEditorViewController_viewWillDisappear___block_invoke;
    v32[3] = &unk_2781AC788;
    v32[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v32];
  }

LABEL_14:
  v21 = objc_alloc_init(MEMORY[0x277D75C60]);
  [v21 configureWithTransparentBackground];
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setScrollEdgeAppearance:v21];

  navigationController2 = [(ICNoteEditorViewController *)self navigationController];
  toolbar2 = [navigationController2 toolbar];
  [toolbar2 setCompactScrollEdgeAppearance:v21];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D35D38] object:0];
  [defaultCenter removeObserver:self name:@"ICViewControllerWillStartEditModeNotification" object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D36138] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76B98] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D35D20] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D35D18] object:0];
  navigationController3 = [(ICNoteEditorViewController *)self navigationController];
  toolbar3 = [navigationController3 toolbar];
  [toolbar3 setAccessibilityElementsHidden:0];

  navigationItem = [(ICNoteEditorViewController *)self navigationItem];
  [navigationItem setCenterItemGroups:MEMORY[0x277CBEBF8]];

  transitionCoordinator2 = [(ICNoteEditorViewController *)self transitionCoordinator];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __48__ICNoteEditorViewController_viewWillDisappear___block_invoke_2;
  v31[3] = &unk_2781AC788;
  v31[4] = self;
  [transitionCoordinator2 animateAlongsideTransition:0 completion:v31];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = ICNoteEditorViewController;
  [(ICNoteEditorBaseViewController *)&v9 viewDidDisappear:disappear];
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
  paletteResponder = [(ICNoteEditorViewController *)self paletteResponder];
  [paletteResponder resignFirstResponder];

  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorBaseViewController *)self noteDidDisappear:note2];
  }
}

- (void)setUserWantsToSeeDateLabel:(BOOL)label
{
  self->_userWantsToSeeDateLabel = label;
  if (!label && [(ICNoteEditorViewController *)self headerSubviewsFadeInOnUnderscrolling])
  {
    textView = [(ICNoteEditorViewController *)self textView];
    dateView = [textView dateView];
    [dateView setAlpha:0.0];

    textView2 = [(ICNoteEditorViewController *)self textView];
    userTitleView = [textView2 userTitleView];
    [userTitleView setAlpha:0.0];
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
  textView = [(ICNoteEditorViewController *)self textView];
  isFirstResponder = [textView isFirstResponder];

  if (isFirstResponder)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    resignFirstResponder = [textView2 resignFirstResponder];

    return resignFirstResponder;
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
  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [(ICNoteEditorViewController *)self removeKVOObserversForNote:note2];
  }

  [MEMORY[0x277D75820] ic_removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&compoundliteral_0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults ic_removeObserver:self forKeyPath:*MEMORY[0x277D36448] context:&compoundliteral_3029];

  textView = [(ICNoteEditorViewController *)self textView];
  [textView setDelegate:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v9.receiver = self;
  v9.super_class = ICNoteEditorViewController;
  [(ICNoteEditorViewController *)&v9 dealloc];
}

- (void)warnLimitExceededWithTitle:(id)title andMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  limitExceededAlertController = [(ICNoteEditorViewController *)self limitExceededAlertController];

  if (!limitExceededAlertController)
  {
    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    [(ICNoteEditorViewController *)self setLimitExceededAlertController:v9];

    limitExceededAlertController2 = [(ICNoteEditorViewController *)self limitExceededAlertController];
    v11 = MEMORY[0x277D750F8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v14 = [v11 actionWithTitle:v13 style:0 handler:0];
    [limitExceededAlertController2 addAction:v14];

    limitExceededAlertController3 = [(ICNoteEditorViewController *)self limitExceededAlertController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__ICNoteEditorViewController_warnLimitExceededWithTitle_andMessage___block_invoke;
    v16[3] = &unk_2781ABCF8;
    v16[4] = self;
    [(ICNoteEditorViewController *)self presentViewController:limitExceededAlertController3 animated:1 completion:v16];
  }
}

- (void)warnUserNoteLengthExceeded
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Maximum note length reached." value:&stru_282757698 table:0];
  [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v3 andMessage:0];
}

- (void)warnUserAttachmentLimitExceeded
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Maximum attachments reached." value:&stru_282757698 table:0];
  [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v3 andMessage:0];
}

- (void)warnUserAttachmentSizeExceededWithAttachmentCount:(unint64_t)count
{
  mEMORY[0x277D35E70] = [MEMORY[0x277D35E70] sharedConfiguration];
  maximumAttachmentSizeMB = [mEMORY[0x277D35E70] maximumAttachmentSizeMB];
  v7 = [maximumAttachmentSizeMB unsignedLongLongValue] << 20;

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = mainBundle;
  if (count == 1)
  {
    v10 = @"Large Attachment.";
  }

  else
  {
    v10 = @"Large Attachments";
  }

  if (count == 1)
  {
    v11 = @"To add this attachment to your note, you’ll need to make it smaller than %@.";
  }

  else
  {
    v11 = @"Some of these attachments are too large. Each attachment must be smaller than %@.";
  }

  v12 = [mainBundle localizedStringForKey:v10 value:&stru_282757698 table:0];

  v13 = MEMORY[0x277CCACA8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:v11 value:&stru_282757698 table:0];
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

  note = [(ICNoteEditorBaseViewController *)self note];
  if (note && (v5 = note, v6 = [(ICNoteEditorViewController *)self _appearState], v5, v6 == 2))
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

- (BOOL)shouldIgnoreTapToStartEditingTextView:(id)view
{
  viewCopy = view;
  calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
  isPreviewingResult = [calculateRecognitionController isPreviewingResult];

  if ((isPreviewingResult & 1) == 0)
  {
    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
    isShowing = [calculateScrubberController isShowing];

    if ((isShowing & 1) == 0)
    {
      v9 = objc_opt_self();
      note = [v9 note];
      textStorageWithoutCreating = [note textStorageWithoutCreating];
      isMarkingTextForHeadingRename = [textStorageWithoutCreating isMarkingTextForHeadingRename];

      if ((isMarkingTextForHeadingRename & 1) == 0)
      {
        if ([(ICNoteEditorViewController *)self isEditing])
        {
          auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
          if (auxiliaryResponder)
          {
            auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
            v13 = auxiliaryResponder2 == viewCopy;
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          auxiliaryResponder = [(ICNoteEditorViewController *)self passwordEntryViewController];
          if (!auxiliaryResponder)
          {
            auxiliaryResponder2 = [(ICNoteEditorViewController *)self invitationViewController];
            v13 = auxiliaryResponder2 != 0;
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
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  v4 = [viewControllerManager showNewNoteWithApproach:0 sender:0 animated:0];
  v5 = ICDynamicCast();

  return v5;
}

- (void)calculateDocumentControllerDidUpdateHighlights:(id)highlights
{
  authorHighlightsUpdater = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [authorHighlightsUpdater scheduleUpdateAnimated:0 force:1];
}

- (void)noteDidChangeCalculatePreviewBehaviorNotification:(id)notification
{
  note = [(ICNoteEditorBaseViewController *)self note];
  v5 = [note calculatePreviewBehavior] != 1;
  calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
  [calculateRecognitionController setInsertsResults:v5];

  note2 = [(ICNoteEditorBaseViewController *)self note];
  calculatePreviewBehavior = [note2 calculatePreviewBehavior];
  calculateRecognitionController2 = [(ICNoteEditorViewController *)self calculateRecognitionController];
  [calculateRecognitionController2 setPreviewBehavior:calculatePreviewBehavior];
}

- (void)noteWillBeDeleted:(id)deleted
{
  deletedCopy = deleted;
  object = [deletedCopy object];
  note = [(ICNoteEditorBaseViewController *)self note];

  if (object != note)
  {
    goto LABEL_9;
  }

  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  if ([viewControllerManager isAuxiliary] && !-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper"))
  {
    isTogglingLock = [(ICNoteEditorViewController *)self isTogglingLock];

    if (isTogglingLock)
    {
      goto LABEL_7;
    }

    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    [viewControllerManager closeAuxiliaryWindowAnimated:1];
  }

LABEL_7:
  object2 = [deletedCopy object];
  mEMORY[0x277D366C0] = [MEMORY[0x277D366C0] sharedAudioController];
  currentAttachment = [mEMORY[0x277D366C0] currentAttachment];
  note2 = [currentAttachment note];

  if (object2 == note2)
  {
    mEMORY[0x277D366C0]2 = [MEMORY[0x277D366C0] sharedAudioController];
    [mEMORY[0x277D366C0]2 stop];
  }

LABEL_9:
}

- (void)updateTextViewContentInsetsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView contentInset];
  v7 = v6;
  v49 = v8;

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 verticalScrollIndicatorInsets];
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
    textView3 = [(ICNoteEditorViewController *)self textView];
    dateView = [textView3 dateView];
    [dateView preferredHeight];
    v47 = v18;
    v27 = v16;
    v28 = v11;
    v29 = v14;
    v30 = v22;
    v31 = v7;
    v32 = v20;
    v33 = v24;
    v35 = v34;
    textView4 = [(ICNoteEditorViewController *)self textView];
    userTitleView = [textView4 userTitleView];
    [userTitleView preferredHeight];
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

  textView5 = [(ICNoteEditorViewController *)self textView];
  compatibilityBannerView = [textView5 compatibilityBannerView];

  if (compatibilityBannerView)
  {
    textView6 = [(ICNoteEditorViewController *)self textView];
    compatibilityBannerView2 = [textView6 compatibilityBannerView];
    [compatibilityBannerView2 preferredHeight];
    v18 = v18 - v44;
  }

  if (vabdd_f64(v49, v16) >= 0.00999999978 || vabdd_f64(v7, v14) >= 0.00999999978 || vabdd_f64(v48, v22) >= 0.00999999978 || vabdd_f64(v11, v18) >= 0.00999999978)
  {
    if (animatedCopy)
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
      textView7 = [(ICNoteEditorViewController *)self textView];
      [textView7 setContentInset:{v14, 0.0, v16, 0.0}];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        textView8 = [(ICNoteEditorViewController *)self textView];
        [textView8 setVerticalScrollIndicatorInsets:{v18, v20, v22, v24}];
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

- (double)textViewBottomInsetThatWeWantForEditing:(BOOL)editing
{
  [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
  v6 = v5;
  if (editing)
  {
    if ([(ICNoteEditorViewController *)self isShowingMiniPlayer])
    {
      v6 = v6 + 70.0;
    }

    if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
    {
      dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      if (-[ICNoteEditorViewController isSelecting](self, "isSelecting") && dismissableInputAccessoryView && ([dismissableInputAccessoryView buttonsVisible] & 1) == 0)
      {
        [(ICNoteEditorViewController *)self inputAccessoryViewHeight];
        v6 = v6 - v8;
      }

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D362E0]];

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && (v10 & 1) == 0)
      {
        note = [(ICNoteEditorBaseViewController *)self note];
        textStorage = [note textStorage];

        v13 = [textStorage length];
        if (v13)
        {
          v14 = v13;
          string = [textStorage string];
          v16 = v14 - 1;
          v17 = [string characterAtIndex:v16];

          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          LODWORD(v17) = [newlineCharacterSet characterIsMember:v17];

          if (v17)
          {
            textView = [(ICNoteEditorViewController *)self textView];
            selectedRange = [textView selectedRange];
            v22 = v21;

            if (!v22 && selectedRange == v16)
            {
              textView2 = [(ICNoteEditorViewController *)self textView];
              layoutManager = [textView2 layoutManager];
              [layoutManager extraLineFragmentRect];
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

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v7 = viewCopy;
  if (viewCopy)
  {
    if ((IsTextKit2Enabled & 1) == 0)
    {
      textView = [(ICNoteEditorViewController *)self textView];

      v7 = viewCopy;
      if (textView == viewCopy && !only)
      {
        textView2 = [(ICNoteEditorViewController *)self textView];
        [textView2 verticalScrollIndicatorInsets];
        v11 = v10;
        v13 = v12;

        [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
        v15 = v14;
        v17 = v16;
        textView3 = [(ICNoteEditorViewController *)self textView];
        [textView3 setVerticalScrollIndicatorInsets:{v11, v15, v13, v17}];

        v7 = viewCopy;
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
      textView = [(ICNoteEditorViewController *)self textView];
      [textView setNeedsStylingRefreshOnNextLayout:1];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      note = [(ICNoteEditorBaseViewController *)self note];
      textStorage = [note textStorage];
      layoutManagers = [textStorage layoutManagers];

      v7 = [layoutManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(layoutManagers);
            }

            [*(*(&v18 + 1) + 8 * i) contentSizeCategoryDidChange];
          }

          v8 = [layoutManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      objc_opt_class();
      textView2 = [(ICNoteEditorViewController *)self textView];
      textStorage2 = [textView2 textStorage];
      textView = ICDynamicCast();

      objc_opt_class();
      styler = [textView styler];
      v14 = ICCheckedDynamicCast();

      [v14 refreshTextStylingForTextStorage:textView withTextController:v14];
    }

    textView3 = [(ICNoteEditorViewController *)self textView];
    compatibilityBannerView = [textView3 compatibilityBannerView];
    [compatibilityBannerView contentSizeCategoryDidChange];

    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:0];
    attributionSidebarView = [(ICNoteEditorViewController *)self attributionSidebarView];
    [attributionSidebarView reload];
  }

  else
  {

    [(ICNoteEditorViewController *)self setUpdateContentSizeCategoryWhenVisible:1];
  }
}

- (BOOL)isShowingMiniPlayer
{
  audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
  isShowingMiniPlayer = [audioAttachmentEditorCoordinator isShowingMiniPlayer];

  return isShowingMiniPlayer;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICNoteEditorViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/ICNoteEditorViewController.m"]& 1) == 0)
  {
    v73.receiver = self;
    v73.super_class = ICNoteEditorViewController;
    [(ICNoteEditorViewController *)&v73 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];

    goto LABEL_10;
  }

  v13 = [(ICNoteEditorViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

  if ((v13 & 1) == 0)
  {
    if (context == &compoundliteral_3031)
    {
      [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
      goto LABEL_10;
    }

    if (context != &compoundliteral_3033)
    {
      if (context != &compoundliteral_3035)
      {
        if (context == &compoundliteral_0)
        {
          if ([(ICNoteEditorViewController *)self isInkPickerShowing])
          {
            textViewController = [(ICNoteEditorViewController *)self textViewController];
            isViewLoaded = [textViewController isViewLoaded];

            if (isViewLoaded)
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

        else if (context == &compoundliteral_3029)
        {
          [(ICNoteEditorViewController *)self forceLightContentDidChange:0];
        }

        goto LABEL_10;
      }

      textViewIfLoaded = [(ICNoteEditorViewController *)self textViewIfLoaded];
      note = [(ICNoteEditorBaseViewController *)self note];
      [textViewIfLoaded createUserTitleViewIfNecessaryForNote:note];

      if (![(ICNoteEditorViewController *)self headerSubviewsFadeInOnUnderscrolling])
      {
        goto LABEL_10;
      }

      textView = [(ICNoteEditorViewController *)self textView];
      userTitleView = [textView userTitleView];
      [userTitleView setAlpha:0.0];

LABEL_18:
      goto LABEL_10;
    }

    note2 = [(ICNoteEditorBaseViewController *)self note];
    if (note2)
    {
      v15 = note2;
      note3 = [(ICNoteEditorBaseViewController *)self note];
      noteHasChanges = [note3 noteHasChanges];
      if ([noteHasChanges BOOLValue])
      {
        v18 = [pathCopy isEqualToString:@"noteHasChanges"];

        if (v18)
        {
          textView = [(ICNoteEditorBaseViewController *)self note];
          [textView setNoteHasChanges:MEMORY[0x277CBEC28]];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    note4 = [(ICNoteEditorBaseViewController *)self note];
    if (note4)
    {
      v26 = note4;
      v27 = [pathCopy isEqualToString:@"modificationDate"];

      if (v27)
      {
        [(ICNoteEditorViewController *)self updateLastViewedMetadataIfNessessary];
        goto LABEL_10;
      }
    }

    note5 = [(ICNoteEditorBaseViewController *)self note];
    if (note5)
    {
      v29 = note5;
      v30 = [pathCopy isEqualToString:@"attachmentViewType"];

      if (v30)
      {
        objc_opt_class();
        v31 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v32 = ICDynamicCast();

        objc_opt_class();
        v33 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
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
          textView2 = [(ICNoteEditorViewController *)self textView];
          layoutManager = [textView2 layoutManager];
          v71 = ICDynamicCast();

          [v71 invalidateLayoutAfterAttachmentViewTypeChangeIfNecessary];
        }

        goto LABEL_73;
      }
    }

    note6 = [(ICNoteEditorBaseViewController *)self note];
    if (note6)
    {
      v43 = note6;
      v44 = [pathCopy isEqualToString:@"paperStyleType"];

      if (v44)
      {
        [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
        goto LABEL_10;
      }
    }

    note7 = [(ICNoteEditorBaseViewController *)self note];
    if (note7)
    {
      v46 = note7;
      v47 = [pathCopy isEqualToString:@"isEmpty"];

      if (v47)
      {
        objc_opt_class();
        v48 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v32 = ICCheckedDynamicCast();

        objc_opt_class();
        v49 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
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

    note8 = [(ICNoteEditorBaseViewController *)self note];
    if (note8 && (v58 = note8, v59 = [pathCopy isEqualToString:@"serverShareData"], v58, v59))
    {
      mentionsController = [(ICNoteEditorViewController *)self mentionsController];
      [mentionsController updateNoteParticipants];

      [(ICNoteEditorViewController *)self updateParticipantsInDrawings];
    }

    else
    {
      note9 = [(ICNoteEditorBaseViewController *)self note];
      if (note9 && (v62 = note9, v63 = [pathCopy isEqualToString:@"isSharedViaICloud"], v62, v63))
      {
        shouldAllowAttributionSidebar = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
        attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
        [attributionSidebarController setEnabled:shouldAllowAttributionSidebar];

        [(ICNoteEditorViewController *)self resetDateView];
      }

      else
      {
        note10 = [(ICNoteEditorBaseViewController *)self note];
        if (note10)
        {
          v67 = note10;
          v68 = [pathCopy isEqualToString:@"lastActivitySummaryViewedDate"];

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

- (void)willAddAttachmentForNoteNotification:(id)notification
{
  object = [notification object];
  note = [(ICNoteEditorBaseViewController *)self note];

  if (object == note)
  {
    objc_opt_class();
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    v7 = ICDynamicCast();
    [v7 breakUndoCoalescing];
  }
}

- (void)didAddAttachmentForNoteNotification:(id)notification
{
  object = [notification object];
  note = [(ICNoteEditorBaseViewController *)self note];

  if (object == note)
  {
    objc_opt_class();
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    v7 = ICDynamicCast();
    [v7 breakUndoCoalescing];
  }
}

- (void)audioFindInTranscript:(id)transcript
{
  transcriptCopy = transcript;
  objc_opt_class();
  userInfo = [transcriptCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36580]];
  v7 = ICDynamicCast();

  objc_opt_class();
  userInfo2 = [transcriptCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D36588]];
  v10 = ICDynamicCast();

  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];

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
  v13 = managedObjectContext;
  v21 = v13;
  v14 = v7;
  v22 = v14;
  selfCopy = self;
  [v13 performBlockAndWait:&v17];
  if (v26[5])
  {
    v15 = [(ICNoteEditorViewController *)self eventReporter:v17];
    bOOLValue = [v10 BOOLValue];
    [v15 submitFindInTranscriptEventWasSearchQueryEntered:bOOLValue audioAttachment:v26[5]];
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

- (void)audioTranscriptInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  userInfo = [interactionCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36550]];
  v7 = ICDynamicCast();

  objc_opt_class();
  userInfo2 = [interactionCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D36558]];
  v10 = ICDynamicCast();

  objc_opt_class();
  userInfo3 = [interactionCopy userInfo];
  v12 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277D36568]];
  v13 = ICDynamicCast();

  objc_opt_class();
  userInfo4 = [interactionCopy userInfo];
  v15 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277D36560]];
  v16 = ICDynamicCast();

  objc_opt_class();
  userInfo5 = [interactionCopy userInfo];
  v18 = [userInfo5 objectForKeyedSubscript:*MEMORY[0x277D36570]];
  v19 = ICDynamicCast();

  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];

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
  v22 = managedObjectContext;
  v31 = v22;
  v23 = v7;
  v32 = v23;
  selfCopy = self;
  [v22 performBlockAndWait:&v27];
  if (v36[5])
  {
    v24 = [(ICNoteEditorViewController *)self eventReporter:v27];
    bOOLValue = [v10 BOOLValue];
    bOOLValue2 = [v13 BOOLValue];
    [v24 submitAudioTranscriptInteractionEventSummaryViewed:bOOLValue transcriptViewed:bOOLValue2 interactionTargets:v16 interactionTypes:v19 audioAttachment:v36[5]];
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

- (void)audioRecordingStarted:(id)started
{
  audioEventReporter = [(ICNoteEditorViewController *)self audioEventReporter];
  [audioEventReporter startAudioRecordingEvent];
}

- (void)audioRecordingStopped:(id)stopped
{
  stoppedCopy = stopped;
  objc_opt_class();
  userInfo = [stoppedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35C90]];
  v7 = ICDynamicCast();

  objc_opt_class();
  userInfo2 = [stoppedCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D35C98]];
  v10 = ICDynamicCast();

  objc_opt_class();
  userInfo3 = [stoppedCopy userInfo];
  v12 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277D35CA0]];
  v13 = ICDynamicCast();

  objc_opt_class();
  userInfo4 = [stoppedCopy userInfo];
  v15 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277D35CA8]];
  v16 = ICDynamicCast();

  objc_opt_class();
  userInfo5 = [stoppedCopy userInfo];
  v18 = [userInfo5 objectForKeyedSubscript:*MEMORY[0x277D35CB0]];
  v19 = ICDynamicCast();
  bOOLValue = [v19 BOOLValue];

  objc_opt_class();
  userInfo6 = [stoppedCopy userInfo];
  v22 = [userInfo6 objectForKeyedSubscript:*MEMORY[0x277D35CB8]];
  v23 = ICDynamicCast();

  if (!bOOLValue || v23)
  {
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];

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
    v26 = managedObjectContext;
    v29 = v26;
    v30 = v7;
    [v26 performBlockAndWait:v28];
    if (v33[5])
    {
      audioEventReporter = [(ICNoteEditorViewController *)self audioEventReporter];
      [audioEventReporter submitAudioRecordingEventWithAttachment:v33[5] appBackgroundOccurred:objc_msgSend(v10 noteMultitaskingOccurred:"BOOLValue") audioAttachmentDuration:{objc_msgSend(v13, "BOOLValue"), v16}];
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

- (void)observeAttachmentDeleted:(id)deleted
{
  userInfo = [deleted userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35B70]];

  if (v5)
  {
    managedObjectContext = [v5 managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__ICNoteEditorViewController_observeAttachmentDeleted___block_invoke;
    v7[3] = &unk_2781ABEB8;
    v8 = v5;
    selfCopy = self;
    [managedObjectContext performBlock:v7];
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

- (void)observeDrawingConverted:(id)converted
{
  convertedCopy = converted;
  userInfo = [convertedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D364F0]];

  objc_opt_class();
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];
  v19 = 0;
  v9 = [managedObjectContext existingObjectWithID:v6 error:&v19];
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
    managedObjectContext2 = [v11 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__ICNoteEditorViewController_observeDrawingConverted___block_invoke;
    v15[3] = &unk_2781AC5B0;
    v16 = v11;
    selfCopy = self;
    v18 = convertedCopy;
    [managedObjectContext2 performBlock:v15];

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

- (void)lockNoteManagerWillToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];

  v8 = ICCheckedDynamicCast();

  note = [v8 note];
  note2 = [(ICNoteEditorBaseViewController *)self note];

  if (note == note2)
  {
    [(ICNoteEditorViewController *)self setTogglingLock:1];
  }
}

- (void)lockNoteManagerDidToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];

  v11 = ICCheckedDynamicCast();

  note = [v11 note];
  note2 = [(ICNoteEditorBaseViewController *)self note];

  if (note == note2)
  {
    updatedNote = [v11 updatedNote];

    if (updatedNote)
    {
      userWantsToSeeDateLabel = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
      updatedNote2 = [v11 updatedNote];
      [(ICNoteEditorViewController *)self setNote:updatedNote2];

      [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:userWantsToSeeDateLabel];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }

    [(ICNoteEditorViewController *)self setTogglingLock:0];
    [(ICNoteEditorViewController *)self cleanupAfterBarSourcedPopoverPresentation];
  }
}

- (void)attachmentBrickDidChangeSize
{
  objc_opt_class();
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];
  v7 = ICDynamicCast();

  objc_opt_class();
  styler = [v7 styler];
  v6 = ICCheckedDynamicCast();

  [v6 refreshTextStylingForTextStorage:v7 withTextController:v6];
}

- (void)tableCellFirstResponderChanged
{
  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    mentionsController = [(ICNoteEditorViewController *)self mentionsController];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [mentionsController tableCellFirstResponderChangedInNote:note2];
  }
}

- (void)sharedWithYouControllerDidUpdateHighlights:(id)highlights
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

- (void)passwordEntryAlertControllerAttemptDidFail:(id)fail
{
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  note = [passwordEntryViewController note];

  if (note)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    passwordEntryViewController2 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    note2 = [passwordEntryViewController2 note];
    [eventReporter submitPasswordFailEventForModernNote:note2];
  }
}

- (void)authenticationAuthenticateBiometricsAttemptDidFail:(id)fail
{
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  note = [passwordEntryViewController note];

  if (note)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    passwordEntryViewController2 = [(ICNoteEditorViewController *)self passwordEntryViewController];
    note2 = [passwordEntryViewController2 note];
    [eventReporter submitBiometricsFailEventForModernNote:note2];
  }
}

- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects
{
  controllerCopy = controller;
  objectsCopy = objects;
  inlineAttachmentChangeController = [(ICNoteEditorViewController *)self inlineAttachmentChangeController];

  if (inlineAttachmentChangeController == controllerCopy)
  {
    v10 = [objectsCopy ic_compactMap:&__block_literal_global_566];
    goto LABEL_5;
  }

  noteAndFolderChangeController = [(ICNoteEditorViewController *)self noteAndFolderChangeController];

  if (noteAndFolderChangeController != controllerCopy)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteEditorViewController managedObjectContextChangeController:managedObjectIDsToUpdateForUpdatedManagedObjects:]" simulateCrash:1 showAlert:0 format:@"Need to update this method for a new change controller"];
    v10 = [MEMORY[0x277CBEB98] set];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  folder = [note folder];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__ICNoteEditorViewController_managedObjectContextChangeController_managedObjectIDsToUpdateForUpdatedManagedObjects___block_invoke_2;
  v17[3] = &unk_2781ACE78;
  v18 = note;
  v19 = folder;
  v14 = folder;
  v15 = note;
  v11 = [objectsCopy ic_compactMap:v17];

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

- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  inlineAttachmentChangeController = [(ICNoteEditorViewController *)self inlineAttachmentChangeController];

  if (inlineAttachmentChangeController == controllerCopy)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController managedObjectContextChangeController:performUpdatesForManagedObjectIDs:];
    }

    objc_opt_class();
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    v11 = ICDynamicCast();

    objc_opt_class();
    textView2 = [(ICNoteEditorViewController *)self textView];
    textLayoutManager = [textView2 textLayoutManager];
    v14 = ICDynamicCast();

    objc_opt_class();
    styler = [v11 styler];
    v16 = ICCheckedDynamicCast();

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      [v14 reloadInlineAttachments];
    }

    else
    {
      [v16 refreshTextStylingForTextStorage:v11 withTextController:v16];
    }

    note = [(ICNoteEditorBaseViewController *)self note];
    v18 = [note visibleAttachmentTextStoragesForTextLayoutManager:v14];
    allValues = [v18 allValues];
    v20 = [allValues ic_flatMap:&__block_literal_global_578];

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
    noteAndFolderChangeController = [(ICNoteEditorViewController *)self noteAndFolderChangeController];

    if (noteAndFolderChangeController == controllerCopy)
    {
      [(ICNoteEditorViewController *)self noteOrFolderChangedCallback];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteEditorViewController managedObjectContextChangeController:performUpdatesForManagedObjectIDs:]" simulateCrash:1 showAlert:0 format:@"Need to update this method for a new change controller"];
    }
  }
}

- (void)updateTextInputAccessoryViewForDidBeginEditing:(id)editing
{
  v36 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    goto LABEL_31;
  }

  textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
  noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
  view = [noteFormattingController view];
  if (!view)
  {

    goto LABEL_6;
  }

  v8 = view;
  styleSelectorInputViewShowing = [(ICNoteEditorViewController *)self styleSelectorInputViewShowing];

  if (!styleSelectorInputViewShowing)
  {
LABEL_6:
    inputAccessoryView = [editingCopy inputAccessoryView];

    [editingCopy setInputAccessoryView:textViewInputAccessoryView];
    if (!inputAccessoryView && textViewInputAccessoryView)
    {
      [editingCopy reloadInputViews];
    }
  }

  keyboardAnimateInFinishTime = [(ICNoteEditorViewController *)self keyboardAnimateInFinishTime];

  if (keyboardAnimateInFinishTime)
  {
    keyboardAnimateInFinishTime2 = [(ICNoteEditorViewController *)self keyboardAnimateInFinishTime];
    [keyboardAnimateInFinishTime2 timeIntervalSinceNow];
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
    inStartEditingForWritingTools = [(ICNoteEditorViewController *)self inStartEditingForWritingTools];
    dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
    v20 = dismissableInputAccessoryView;
    if (inStartEditingForWritingTools)
    {
      [dismissableInputAccessoryView hide];
    }

    else
    {
      [dismissableInputAccessoryView showWithDelay:v14];
    }

    if (![(ICNoteEditorViewController *)self hasKeyboardBeenVisibleBefore])
    {
      [(ICNoteEditorViewController *)self setHasKeyboardBeenVisibleBefore:1];
      view2 = [(ICNoteEditorViewController *)self view];
      window = [view2 window];
      [window frame];
      v24 = v23;
      v26 = v25;

      [(ICNoteEditorViewController *)self setShouldInputAccessoryViewButtonsBeVisible:v24 < v26];
    }

    if ([(ICNoteEditorViewController *)self inStartEditingForWritingTools])
    {
      dismissableInputAccessoryView2 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [dismissableInputAccessoryView2 setButtonsVisible:0];

      shouldInputAccessoryViewButtonsBeVisible = [(ICNoteEditorViewController *)self shouldInputAccessoryViewButtonsBeVisible];
      dismissableInputAccessoryView3 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [dismissableInputAccessoryView3 setSetButtonsVisibleWhenShown:shouldInputAccessoryViewButtonsBeVisible];
    }

    else
    {
      shouldInputAccessoryViewButtonsBeVisible2 = [(ICNoteEditorViewController *)self shouldInputAccessoryViewButtonsBeVisible];
      dismissableInputAccessoryView3 = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
      [dismissableInputAccessoryView3 setButtonsVisible:shouldInputAccessoryViewButtonsBeVisible2];
    }

    if (textViewInputAccessoryView)
    {
      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__ICNoteEditorViewController_updateTextInputAccessoryViewForDidBeginEditing___block_invoke;
    v31[3] = &unk_2781ABEB8;
    v32 = editingCopy;
    selfCopy = self;
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

- (void)updateTextInputAccessoryViewForTextViewDidChange:(id)change
{
  changeCopy = change;
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration textViewDidChange:changeCopy];
  }
}

- (void)updateTextInputAccessoryViewForDidEndEditing:(id)editing
{
  editingCopy = editing;
  textView = [(ICNoteEditorViewController *)self textView];
  if (([textView isFirstResponder] & 1) == 0)
  {
    auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
    isFirstResponder = [auxiliaryResponder isFirstResponder];

    if (isFirstResponder)
    {
      goto LABEL_6;
    }

    textView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
    -[ICNoteEditorViewController setShouldInputAccessoryViewButtonsBeVisible:](self, "setShouldInputAccessoryViewButtonsBeVisible:", [textView buttonsVisible]);
    [textView setButtonsVisible:0];
    [textView hide];
    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setInputAccessoryView:0];

    textView3 = [(ICNoteEditorViewController *)self textView];

    if (textView3 != editingCopy)
    {
      [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
    }
  }

LABEL_6:
}

- (void)inputAccessoryDisclosureStateWillChange:(id)change
{
  dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  buttonsVisible = [dismissableInputAccessoryView buttonsVisible];

  if ((buttonsVisible & 1) == 0)
  {

    [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
  }
}

- (void)inputAccessoryDisclosureStateDidChange:(id)change tapped:(BOOL)tapped
{
  tappedCopy = tapped;
  [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  buttonsVisible = [dismissableInputAccessoryView buttonsVisible];

  if (!buttonsVisible)
  {
    if (!tappedCopy)
    {
      return;
    }

    goto LABEL_9;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  [textView selectedRange];
  v10 = v9;

  if (!v10)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    textView3 = [(ICNoteEditorViewController *)self textView];
    selectedTextRange = [textView3 selectedTextRange];
    v14 = [selectedTextRange end];
    [textView2 caretRectForPosition:v14];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    textView4 = [(ICNoteEditorViewController *)self textView];
    [textView4 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    textView5 = [(ICNoteEditorViewController *)self textView];
    [textView5 contentInset];
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
        textView6 = [(ICNoteEditorViewController *)self textView];
        [textView6 scrollRectToVisible:1 animated:{v39, v18, v20, v22}];
      }
    }
  }

  if (tappedCopy)
  {
LABEL_9:

    [(ICNoteEditorViewController *)self setShouldInputAccessoryViewButtonsBeVisible:buttonsVisible];
  }
}

- (void)notesContextRefreshNotification:(id)notification
{
  [(ICNoteEditorViewController *)self fetchAll];
  note = [(ICNoteEditorBaseViewController *)self note];
  [note refreshNoteTextFromDataStore];
}

- (void)fetchAll
{
  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    v4 = MEMORY[0x277D35F28];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    identifier = [note2 identifier];
    note3 = [(ICNoteEditorBaseViewController *)self note];
    managedObjectContext = [note3 managedObjectContext];
    v8 = [v4 refreshAllOfNoteWithIdentifier:identifier context:managedObjectContext];
  }
}

- (void)viewControllerWillStartEditModeNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  object = [notificationCopy object];
  v5 = ICDynamicCast();

  ic_windowScene = [v5 ic_windowScene];
  ic_windowScene2 = [(ICNoteEditorViewController *)self ic_windowScene];

  if (ic_windowScene == ic_windowScene2)
  {
    object2 = [notificationCopy object];
    if (object2 == self || ([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
    {
    }

    else
    {
      mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
      isSecureScreenShowing = [mEMORY[0x277D369A0] isSecureScreenShowing];

      if ((isSecureScreenShowing & 1) == 0)
      {
        [(ICNoteEditorViewController *)self setEditing:0 animated:1];
      }
    }
  }
}

- (void)submitChecklistAnalyticsEventForActionType:(int64_t)type
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  textView2 = [(ICNoteEditorViewController *)self textView];
  v11 = [textController analyticsInfoForChecklistAtIndex:selectedRange textView:textView2];

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitChecklistUsageEventForModernNote:note countOfCheckedItems:objc_msgSend(v11 countOfTotalItems:"numberOfCheckedItems") checklistActionType:{objc_msgSend(v11, "numberOfItems"), type}];
}

- (void)donateEditingIntentIfNecessary
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note textStorage];
  v5 = [textStorage length];

  if (v5)
  {
    if ([(ICNoteEditorViewController *)self isEditingNewNote])
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      v7 = [ICIntentsUtilities interactionForCreateNote:note2];
      [ICIntentsUtilities donateInteraction:v7];
    }

    else
    {
      originalEndOfNote = [(ICNoteEditorViewController *)self originalEndOfNote];

      if (!originalEndOfNote)
      {
        goto LABEL_11;
      }

      note3 = [(ICNoteEditorBaseViewController *)self note];
      textStorage2 = [note3 textStorage];
      mergeableString = [textStorage2 mergeableString];
      originalEndOfNote2 = [(ICNoteEditorViewController *)self originalEndOfNote];
      note2 = [mergeableString characterRangesForSelection:originalEndOfNote2];

      firstObject = [note2 firstObject];
      rangeValue = [firstObject rangeValue];

      note4 = [(ICNoteEditorBaseViewController *)self note];
      textStorage3 = [note4 textStorage];
      v17 = [textStorage3 length] - rangeValue;

      if (v17 < 2)
      {
        goto LABEL_10;
      }

      note5 = [(ICNoteEditorBaseViewController *)self note];
      textStorage4 = [note5 textStorage];
      v20 = [textStorage4 length];

      if (rangeValue >= v20)
      {
        goto LABEL_10;
      }

      note6 = [(ICNoteEditorBaseViewController *)self note];
      textStorage5 = [note6 textStorage];
      string = [textStorage5 string];
      v7 = [string substringWithRange:{rangeValue, v17}];

      if ([v7 hasPrefix:@"\n"])
      {
        v24 = [v7 substringFromIndex:1];

        note7 = [(ICNoteEditorBaseViewController *)self note];
        v26 = [ICIntentsUtilities interactionForAppendToNote:note7 withAppendedText:v24];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note)
  {
    v4 = note;
    isAddingImageAttachment = [(ICNoteEditorViewController *)self isAddingImageAttachment];

    if (!isAddingImageAttachment)
    {
      [(ICNoteEditorViewController *)self saveNote];
      bluetoothKeyboardHintViewController = [(ICNoteEditorViewController *)self bluetoothKeyboardHintViewController];
      [bluetoothKeyboardHintViewController didEditNote];
    }
  }
}

- (void)saveNote
{
  note = [self note];
  shortLoggingDescription = [note shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)saveInlineDrawings
{
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];

  [textStorage enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:objc_msgSend(textStorage usingBlock:{"length"), 0, &__block_literal_global_584}];
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
    textView = [(ICNoteEditorViewController *)self textView];
    layoutManager = [textView layoutManager];
    v5 = ICDynamicCast();

    [v5 updateInlineDrawingViews];
  }
}

- (id)attributedStringFromHTML:(id)l
{
  v20[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [lCopy dataUsingEncoding:4];
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

  if ([lCopy rangeOfString:@"<meta name=Generator content=Cocoa HTML Writer>"] != 0x7FFFFFFFFFFFFFFFLL)
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
  textView = [(ICNoteEditorViewController *)self textView];
  v5 = textView;
  if (IsTextKit2Enabled)
  {
    textLayoutManager = [textView textLayoutManager];
    textViewportLayoutController = [textLayoutManager textViewportLayoutController];
    viewportRange = [textViewportLayoutController viewportRange];

    textView2 = [(ICNoteEditorViewController *)self textView];
    textLayoutManager2 = [textView2 textLayoutManager];
    v11 = [textLayoutManager2 ic_rangeForTextRange:viewportRange];
    v13 = v12;
  }

  else
  {
    textStorage = [textView textStorage];
    v11 = [textStorage length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_6;
    }

    textView3 = [(ICNoteEditorViewController *)self textView];
    [textView3 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    textView4 = [(ICNoteEditorViewController *)self textView];
    textView5 = [(ICNoteEditorViewController *)self textView];
    [textView5 bounds];
    v26 = [textView4 characterRangeAtPoint:?];
    viewportRange = [v26 start];

    textView6 = [(ICNoteEditorViewController *)self textView];
    v36.origin.x = v17;
    v36.origin.y = v19;
    v36.size.width = v21;
    v36.size.height = v23;
    MaxX = CGRectGetMaxX(v36);
    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    v29 = [textView6 characterRangeAtPoint:{MaxX, CGRectGetMaxY(v37)}];
    textView2 = [v29 end];

    textView7 = [(ICNoteEditorViewController *)self textView];
    textView8 = [(ICNoteEditorViewController *)self textView];
    beginningOfDocument = [textView8 beginningOfDocument];
    v11 = [textView7 offsetFromPosition:beginningOfDocument toPosition:viewportRange];

    textLayoutManager2 = [(ICNoteEditorViewController *)self textView];
    v13 = [textLayoutManager2 offsetFromPosition:viewportRange toPosition:textView2];
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
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  if (v6)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView2 textStorage];
    v9 = *MEMORY[0x277D740E8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__ICNoteEditorViewController_linkForSelection__block_invoke;
    v21[3] = &unk_2781ABC80;
    v21[4] = &v22;
    [textStorage enumerateAttribute:v9 inRange:selectedRange options:v6 usingBlock:{0, v21}];
  }

  else
  {
    textView3 = [(ICNoteEditorViewController *)self textView];
    textStorage2 = [textView3 textStorage];
    v12 = selectedRange < [textStorage2 length];

    if (!v12)
    {
      goto LABEL_6;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView2 textStorage];
    v13 = [textStorage attribute:*MEMORY[0x277D740E8] atIndex:selectedRange effectiveRange:0];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    if ([note2 isPasswordProtectedAndLocked])
    {
      ic_isViewVisible = 0;
    }

    else
    {
      invitation = [(ICNoteEditorViewController *)self invitation];
      if (invitation)
      {
        ic_isViewVisible = 0;
      }

      else
      {
        ic_isViewVisible = [(ICNoteEditorViewController *)self ic_isViewVisible];
      }
    }
  }

  else
  {
    ic_isViewVisible = 0;
  }

  return ic_isViewVisible;
}

- (BOOL)canOpenLink
{
  if ([MEMORY[0x277D75418] ic_isLocked])
  {
    return 0;
  }

  linkForSelection = [(ICNoteEditorViewController *)self linkForSelection];
  if (linkForSelection)
  {
    v3 = [ICExtensionSafeAPIShims canOpenURL:linkForSelection];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canRecordAudio
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note textStorage];
  if (!textStorage)
  {
    goto LABEL_8;
  }

  v5 = textStorage;
  note2 = [(ICNoteEditorBaseViewController *)self note];
  if (![note2 isEditable])
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  if (![textView isEditable])
  {
LABEL_6:

    goto LABEL_7;
  }

  note3 = [(ICNoteEditorBaseViewController *)self note];
  if ([note3 isPasswordProtected])
  {

    goto LABEL_6;
  }

  isRecording = [MEMORY[0x277D366C8] isRecording];

  return (isRecording & 1) == 0;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  window = [viewControllerManager window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

  if (sel_decreaseIndentation_ == action || sel_increaseIndentation_ == action)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    if ([textView isEditing])
    {
      LOBYTE(v12) = [(ICNoteEditorViewController *)self canIndentLeft]|| [(ICNoteEditorViewController *)self canIndentRight];
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (sel_checkAll_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canPerformTodoCheckAll];
    goto LABEL_45;
  }

  if (sel_uncheckAll_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canPerformTodoUncheckAll];
    goto LABEL_45;
  }

  if (sel_removeChecked_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canRemoveCheckedListItem];
    goto LABEL_45;
  }

  if (sel_moveCheckedToBottom_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canMoveCheckedToBottom];
    goto LABEL_45;
  }

  if (sel_performFindInNote_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canFindInNote];
    goto LABEL_45;
  }

  if (sel_insertGraph_ == action || sel_addToGraph_ == action)
  {
    textView = [(ICNoteEditorBaseViewController *)self note];
    if ([textView isEditable])
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      isDeletedOrInTrash = [note isDeletedOrInTrash];
LABEL_48:
      LOBYTE(v12) = isDeletedOrInTrash ^ 1;

LABEL_67:
      goto LABEL_68;
    }

LABEL_66:
    LOBYTE(v12) = 0;
    goto LABEL_67;
  }

  if (sel_createImage_ == action)
  {
    if ([(ICNoteEditorViewController *)self canPerformCreateImageWithSelection])
    {
      LOBYTE(v12) = 1;
      goto LABEL_68;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 selectedRange];
    LOBYTE(v12) = v19 == 0;
    goto LABEL_52;
  }

  if (ic_topmostPresentedViewController)
  {
    goto LABEL_73;
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  isEditing = [textView3 isEditing];

  if (!isEditing)
  {
    goto LABEL_73;
  }

  if (sel_moveSelectedListItemUp_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canMoveSelectedListItemUp];
    goto LABEL_45;
  }

  if (sel_moveSelectedListItemDown_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canMoveSelectedListItemDown];
    goto LABEL_45;
  }

  if (sel_openLink_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canOpenLink];
    goto LABEL_45;
  }

  LOBYTE(v12) = 1;
  if (sel_tab_ == action || sel_shiftTab_ == action || sel_shiftReturn_ == action)
  {
    goto LABEL_68;
  }

  if (sel_indentLeft_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canIndentLeft];
    goto LABEL_45;
  }

  if (sel_indentRight_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canIndentRight];
    goto LABEL_45;
  }

  if (sel_ic_alignLeft_ == action || sel_ic_alignCenter_ == action || sel_ic_alignRight_ == action)
  {
    if (!ICDebugModeEnabled())
    {
      goto LABEL_73;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    isEditing2 = [textView2 isEditing];
LABEL_62:
    LOBYTE(v12) = isEditing2;
    goto LABEL_52;
  }

  if (sel_copy_ == action || sel_cut_ == action)
  {
    v24.receiver = self;
    v24.super_class = ICNoteEditorViewController;
    if (![(ICNoteEditorViewController *)&v24 canPerformAction:action withSender:senderCopy])
    {
      goto LABEL_73;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    isEditing2 = [textView2 isSelectionCopyableSize];
    goto LABEL_62;
  }

  if (sel__share_ == action)
  {
    v23.receiver = self;
    v23.super_class = ICNoteEditorViewController;
    if ([(ICNoteEditorViewController *)&v23 canPerformAction:action withSender:senderCopy])
    {
      textView = [(ICNoteEditorViewController *)self textView];
      if ([textView isSelectionCopyableSize])
      {
        note = [(ICNoteEditorViewController *)self textView];
        isDeletedOrInTrash = [note ic_isInSecureWindow];
        goto LABEL_48;
      }

      goto LABEL_66;
    }

LABEL_73:
    LOBYTE(v12) = 0;
    goto LABEL_68;
  }

  if (sel_addToTags_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canAddToTags];
    goto LABEL_45;
  }

  if (sel_convertToText_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canConvertToText];
    goto LABEL_45;
  }

  if (sel_convertToTag_ == action)
  {
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)self canConvertToTag];
    goto LABEL_45;
  }

  if (sel_openLinkEditor_ == action)
  {
    if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
    {
      goto LABEL_73;
    }

    textView2 = [(ICNoteEditorBaseViewController *)self note];
    v12 = [textView2 isSharedReadOnly] ^ 1;
LABEL_52:

    goto LABEL_68;
  }

  if (sel_toggleBlockQuote_ != action)
  {
    v22.receiver = self;
    v22.super_class = ICNoteEditorViewController;
    canPerformTodoCheckAll = [(ICNoteEditorViewController *)&v22 canPerformAction:action withSender:senderCopy];
LABEL_45:
    LOBYTE(v12) = canPerformTodoCheckAll;
  }

LABEL_68:

  return v12;
}

- (BOOL)canRenameAttachmentForSelection
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  if (isDeletedOrInTrash)
  {
    return 0;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  singleSelectedAttachment = [textView singleSelectedAttachment];
  attachment = [singleSelectedAttachment attachment];

  LOBYTE(textView) = [attachment supportsRenaming];
  return textView;
}

- (void)renameAttachment
{
  textView = [(ICNoteEditorViewController *)self textView];
  singleSelectedAttachment = [textView singleSelectedAttachment];
  attachment = [singleSelectedAttachment attachment];

  v6 = objc_alloc(MEMORY[0x277D05D48]);
  title = [attachment title];
  v8 = [v6 initWithExistingTitle:title];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ICNoteEditorViewController_renameAttachment__block_invoke;
  v10[3] = &unk_2781ACF08;
  v11 = attachment;
  v9 = attachment;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userActivityUpdateQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.user-activity", v3);
    userActivityUpdateQueue = selfCopy->_userActivityUpdateQueue;
    selfCopy->_userActivityUpdateQueue = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_userActivityUpdateQueue;

  return v6;
}

- (void)updateNoteUserActivityState
{
  v71[1] = *MEMORY[0x277D85DE8];
  updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
  [updateNoteUserActivityStateDelayer cancelPreviousFireRequests];

  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    noteUserActivity = [(ICNoteEditorViewController *)self noteUserActivity];
    if (noteUserActivity)
    {
    }

    else
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      isEmpty = [note2 isEmpty];

      if (isEmpty)
      {
        return;
      }
    }

    if ([(ICNoteEditorViewController *)self isDrawingStroke])
    {
      updateNoteUserActivityStateDelayer2 = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
      [updateNoteUserActivityStateDelayer2 requestFire];
    }

    else
    {
      noteUserActivity2 = [(ICNoteEditorViewController *)self noteUserActivity];

      if (!noteUserActivity2)
      {
        v9 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.notes.activity.edit-note"];
        [v9 setEligibleForSearch:1];
        note3 = [(ICNoteEditorBaseViewController *)self note];
        title = [note3 title];
        v12 = [title localizeForLanguage:0];
        [v9 setTitle:v12];

        [v9 setDelegate:self];
        [(ICNoteEditorViewController *)self setNoteUserActivity:v9];
        noteUserActivity3 = [(ICNoteEditorViewController *)self noteUserActivity];
        [noteUserActivity3 becomeCurrent];
      }

      note4 = [(ICNoteEditorBaseViewController *)self note];
      objectID = [note4 objectID];

      isEditing = [(ICNoteEditorViewController *)self isEditing];
      note5 = [(ICNoteEditorBaseViewController *)self note];
      textStorage = [note5 textStorage];
      mergeableString = [textStorage mergeableString];
      v18 = MEMORY[0x277CCAE60];
      textView = [(ICNoteEditorViewController *)self textView];
      selectedRange = [textView selectedRange];
      v22 = [v18 valueWithRange:{selectedRange, v21}];
      v71[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      v24 = [mergeableString selectionForCharacterRanges:v23];
      serialize = [v24 serialize];

      textView2 = [(ICNoteEditorViewController *)self textView];
      [textView2 bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        textView3 = [(ICNoteEditorViewController *)self textView];
        layoutManager = [textView3 layoutManager];
        textView4 = [(ICNoteEditorViewController *)self textView];
        textContainer = [textView4 textContainer];
        [layoutManager ensureLayoutForBoundingRect:textContainer inTextContainer:{v27, v29, v31, v33}];
      }

      visibleRange = [(ICNoteEditorViewController *)self visibleRange];
      v40 = v39;
      note6 = [(ICNoteEditorBaseViewController *)self note];
      textStorage2 = [note6 textStorage];
      mergeableString2 = [textStorage2 mergeableString];
      v44 = MEMORY[0x277CCAE60];
      visibleRange2 = [(ICNoteEditorViewController *)self visibleRange];
      v47 = [v44 valueWithRange:{visibleRange2, v46}];
      v70 = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v49 = [mergeableString2 selectionForCharacterRanges:v48];
      serialize2 = [v49 serialize];

      currentScrollState = [(ICNoteEditorViewController *)self currentScrollState];
      userActivityUpdateQueue = [(ICNoteEditorViewController *)self userActivityUpdateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ICNoteEditorViewController_updateNoteUserActivityState__block_invoke;
      block[3] = &unk_2781ACF58;
      v69 = isEditing;
      v62 = objectID;
      v63 = serialize;
      v67 = visibleRange;
      v68 = v40;
      v64 = currentScrollState;
      v65 = serialize2;
      selfCopy = self;
      v53 = serialize2;
      v54 = currentScrollState;
      v55 = serialize;
      v56 = objectID;
      dispatch_async(userActivityUpdateQueue, block);
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
  savedScrollStates = [(ICNoteEditorViewController *)self savedScrollStates];
  note = [(ICNoteEditorBaseViewController *)self note];
  identifier = [note identifier];
  [savedScrollStates ic_removeObjectForNonNilKey:identifier];
}

- (ICTextViewScrollState)currentScrollState
{
  textView = [(ICNoteEditorViewController *)self textView];
  v3 = [ICTextViewScrollState scrollStateForTextView:textView];

  return v3;
}

- (void)applyScrollStateFromArchive:(id)archive
{
  if (archive)
  {
    [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:?];
  }
}

- (void)setArchivedScrollStateToApply:(id)apply
{
  applyCopy = apply;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  note = [applyCopy note];
  managedObjectContext = [note managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__ICNoteEditorViewController_setArchivedScrollStateToApply___block_invoke;
  v13[3] = &unk_2781ACF80;
  v15 = &v16;
  v8 = applyCopy;
  v14 = v8;
  [managedObjectContext performBlockAndWait:v13];

  savedScrollStates = [(ICNoteEditorViewController *)self savedScrollStates];
  [savedScrollStates ic_removeObjectForNonNilKey:v17[5]];

  if (self->_archivedScrollStateToApply != v8)
  {
    objc_storeStrong(&self->_archivedScrollStateToApply, apply);
    if ([(ICNoteEditorViewController *)self ic_isViewVisible])
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      note3 = [(ICTextViewScrollState *)self->_archivedScrollStateToApply note];

      if (note2 == note3)
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
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note)
  {
    v3 = note;
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    pendingInlineDrawingInformation = [eventReporter pendingInlineDrawingInformation];
    v6 = [pendingInlineDrawingInformation count];

    if (v6)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
      pendingInlineDrawingInformation2 = [eventReporter2 pendingInlineDrawingInformation];

      v41 = [pendingInlineDrawingInformation2 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(pendingInlineDrawingInformation2);
          }

          v13 = *(*(&v42 + 1) + 8 * v12);
          v14 = *(v10 + 3584);
          sharedContext = [*(v11 + 3888) sharedContext];
          managedObjectContext = [sharedContext managedObjectContext];
          v17 = [v14 attachmentWithIdentifier:v13 context:managedObjectContext];

          if (v17 && ([v17 markedForDeletion] & 1) == 0)
          {
            eventReporter3 = [(ICNoteEditorViewController *)self eventReporter];
            pendingInlineDrawingInformation3 = [eventReporter3 pendingInlineDrawingInformation];
            v20 = [pendingInlineDrawingInformation3 objectForKeyedSubscript:v13];

            systemPaperModel = [v17 systemPaperModel];
            inlineDrawingModel = [v17 inlineDrawingModel];
            v23 = inlineDrawingModel;
            if (systemPaperModel)
            {
              v24 = [[ICSystemPaperIndexableTextContentHelper alloc] initWithPaperAttachment:v17];
              drawing = [(ICSystemPaperIndexableTextContentHelper *)v24 drawing];
LABEL_12:
              v26 = drawing;

              if (v26)
              {
                eventReporter4 = [(ICNoteEditorViewController *)self eventReporter];
                v39 = systemPaperModel;
                v28 = v9;
                v29 = [eventReporter4 pencilStrokeCountForDrawing:v26];

                strokes = [(ICSystemPaperIndexableTextContentHelper *)v26 strokes];
                v31 = pendingInlineDrawingInformation2;
                v32 = [strokes count] - v29;

                [v20 setEndPencilStrokeCount:v29];
                [v20 setEndFingerStrokeCount:v32];
                v33 = v29 - [v20 addedPencilStrokeCount];
                v9 = v28;
                systemPaperModel = v39;
                [v20 setStartPencilStrokeCount:v33];
                v34 = v32 - [v20 addedFingerStrokeCount];
                pendingInlineDrawingInformation2 = v31;
                [v20 setStartFingerStrokeCount:v34];
              }
            }

            else if (inlineDrawingModel)
            {
              handwritingRecognitionDrawing = [inlineDrawingModel handwritingRecognitionDrawing];
              v24 = handwritingRecognitionDrawing;
              if (handwritingRecognitionDrawing)
              {
                drawing = handwritingRecognitionDrawing;
                v24 = drawing;
              }

              else
              {
                drawing = [v23 newDrawingFromMergeableData];
              }

              goto LABEL_12;
            }

            v10 = 0x277D35000;
            v11 = 0x277D35000;
          }

          ++v12;
        }

        while (v41 != v12);
        v36 = [pendingInlineDrawingInformation2 countByEnumeratingWithState:&v42 objects:v46 count:16];
        v41 = v36;
        if (!v36)
        {
LABEL_22:

          break;
        }
      }
    }
  }

  eventReporter5 = [(ICNoteEditorViewController *)self eventReporter];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter5 submitPendingInlineDrawingDataForNote:note2];
}

- (void)handleMenuBarButtonTap:(id)tap
{
  tapCopy = tap;
  objc_opt_class();
  view = [tapCopy view];

  v7 = ICDynamicCast();

  objc_opt_class();
  contextMenuInteraction = [v7 contextMenuInteraction];
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

- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin force:(BOOL)force
{
  forceCopy = force;
  leadingMarginCopy = leadingMargin;
  marginCopy = margin;
  standaloneCopy = standalone;
  backgroundView = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView updateContentViewBezelsStandalone:standaloneCopy needsAdditionalBottomMargin:marginCopy needsAdditionalLeadingMargin:leadingMarginCopy force:forceCopy];
}

- (void)submitNoteViewEventForModernNote:(id)note
{
  noteCopy = note;
  if ([MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__4;
    v13[4] = __Block_byref_object_dispose__4;
    v14 = 0;
    managedObjectContext = [noteCopy managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__ICNoteEditorViewController_submitNoteViewEventForModernNote___block_invoke;
    v9[3] = &unk_2781ACFA8;
    v9[4] = self;
    v12 = v13;
    v6 = managedObjectContext;
    v10 = v6;
    v7 = noteCopy;
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

- (void)styleSelector:(id)selector didSelectStyle:(unsigned int)style
{
  v4 = *&style;
  selectorCopy = selector;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self setCurrentTextStyle:v4];
  [selectorCopy setCurrentBIUS:{-[ICNoteEditorViewController currentBIUSForStyleSelector](self, "currentBIUSForStyleSelector")}];

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setIsSettingStyleWithStyleUI:0];

  v9 = topoTextStylesToAnalyticsStyles;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v11 = [v9 objectForKeyedSubscript:v10];
  integerValue = [v11 integerValue];

  if (integerValue)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:integerValue];
  }
}

- (void)toggleBlockQuote:(id)quote
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  [textController toggleBlockQuoteInTextView:textView];

  textView2 = [(ICNoteEditorViewController *)self textView];
  textView3 = [(ICNoteEditorViewController *)self textView];
  ic_visibleRange = [textView3 ic_visibleRange];
  [textView2 updateStyleLayersInRange:{ic_visibleRange, v9}];

  textView4 = [(ICNoteEditorViewController *)self textView];
  [textView4 setNeedsLayout];

  textView5 = [(ICNoteEditorViewController *)self textView];
  [textView5 layoutIfNeeded];

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:15];

  navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  textView6 = [(ICNoteEditorViewController *)self textView];
  [navigationItemConfiguration updateFormatBarButtonsForChangeInTextView:textView6];
}

- (void)toggleEmphasis
{
  v3 = ic_currentEmphasisColorTypeDefault();

  [(ICNoteEditorViewController *)self toggleEmphasisWithType:v3];
}

- (void)toggleEmphasisWithType:(int64_t)type
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  if (auxiliaryStylingController)
  {
    eventReporter = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [auxiliaryStylingController toggleEmphasis:self onValue:eventReporter];
  }

  else
  {
    if (type && ic_currentEmphasisColorTypeDefault() != type)
    {
      ic_setCurrentEmphasisColorTypeDefault();
    }

    textView = [(ICNoteEditorViewController *)self textView];
    [textView ic_toggleEmphasisWithType:type];

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:16];
  }
}

- (void)styleSelector:(id)selector didChangeIndentAmount:(int64_t)amount
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:amount];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setIsSettingStyleWithStyleUI:0];
}

- (void)styleSelectorDidIndentLeft:(id)left
{
  leftCopy = left;
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  [(ICNoteEditorViewController *)self styleSelector:leftCopy didChangeIndentAmount:v4];
}

- (void)styleSelectorDidIndentRight:(id)right
{
  rightCopy = right;
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  [(ICNoteEditorViewController *)self styleSelector:rightCopy didChangeIndentAmount:v4];
}

- (void)toggleBoldface
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 toggleBoldface:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_toggleBoldface];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:9];
}

- (void)enableBoldface
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 enableBoldface:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_enableBoldface];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:9];
}

- (void)disableBoldface
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 disableBoldface:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_disableBoldface];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:9];
}

- (void)toggleItalics
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 toggleItalics:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_toggleItalics];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:10];
}

- (void)enableItalics
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 enableItalics:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_enableItalics];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:10];
}

- (void)disableItalics
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 disableItalics:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_disableItalics];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:10];
}

- (void)toggleUnderline
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 toggleUnderline:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_toggleUnderline];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:11];
}

- (void)enableUnderline
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 enableUnderline:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_enableUnderline];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:11];
}

- (void)disableUnderline
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 disableUnderline:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_disableUnderline];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:11];
}

- (void)toggleStrikethrough
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 toggleStrikethrough:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_toggleStrikethrough];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:12];
}

- (void)enableStrikethrough
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 enableStrikethrough:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_enableStrikethrough];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:12];
}

- (void)disableStrikethrough
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 disableStrikethrough:self];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_disableStrikethrough];
  }

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:12];
}

- (void)styleSelector:(id)selector toggleBIUS:(unint64_t)s
{
  selectorCopy = selector;
  [(ICNoteEditorViewController *)self toggleBIUS:s sender:selectorCopy];
  [selectorCopy setCurrentBIUS:{-[ICNoteEditorViewController currentBIUSForStyleSelector](self, "currentBIUSForStyleSelector")}];
}

- (void)styleSelectorDidCancel:(id)cancel
{
  [(ICNoteEditorViewController *)self showStyleSelector:0 animated:1];
  v4 = *MEMORY[0x277D76488];
  navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  styleBarButtonItem = [navigationItemConfiguration styleBarButtonItem];
  view = [styleBarButtonItem view];
  UIAccessibilityPostNotification(v4, view);
}

- (BOOL)styleSelectorShouldDisableTextStyles:(id)styles
{
  textView = [(ICNoteEditorViewController *)self textView];
  ic_shouldEnableBlockQuoteForAttachmentsOnlySelection = [textView ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

  return ic_shouldEnableBlockQuoteForAttachmentsOnlySelection;
}

- (void)styleSelector:(id)selector presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  [(ICNoteEditorViewController *)self doneEditing:0];
  [(ICNoteEditorViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)styleSelectorWillShowInlineMenu:(id)menu
{
  menuCopy = menu;
  v5 = [(ICNoteEditorViewController *)self currentStylesForStyleSelectorIgnoreTypingAttributes:0];
  [menuCopy setCurrentStyles:v5 bius:-[ICNoteEditorViewController currentBIUSForStyleSelector](self animated:{"currentBIUSForStyleSelector"), 0}];
}

- (BOOL)styleSelectorShouldUseCompactTopInset:(id)inset
{
  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad])
  {
    return 1;
  }

  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];

  return hasCompactWidth;
}

- (id)currentStylesForStyleSelectorIgnoreTypingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 selectedStyles];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_selectedStylesIgnoreTypingAttributes:attributesCopy];
  }
  v7 = ;

  return v7;
}

- (unint64_t)currentBIUSForStyleSelector
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    selectedStyleBIUS = [auxiliaryStylingController2 selectedStyleBIUS];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    selectedStyleBIUS = [auxiliaryStylingController2 currentBIUSForStyleSelector];
  }

  v6 = selectedStyleBIUS;

  return v6;
}

- (int64_t)currentEmphasisType
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView selectedRange];
  v5 = v4;

  textView2 = [(ICNoteEditorViewController *)self textView];
  v7 = textView2;
  if (v5)
  {
    textStorage = [textView2 textStorage];
    v9 = *MEMORY[0x277D35D88];
    textView3 = [(ICNoteEditorViewController *)self textView];
    textView4 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView4 selectedRange];
    v14 = [textStorage attribute:v9 atIndex:objc_msgSend(textView3 effectiveRange:{"firstValidEmphasisLocationWithinSelection:", selectedRange, v13), 0}];
    [v14 intValue];
  }

  else
  {
    textStorage = [textView2 typingAttributes];
    textView3 = [textStorage objectForKeyedSubscript:*MEMORY[0x277D35D88]];
    [textView3 intValue];
  }

  return ICEmphasisColorTypeForTag();
}

- (BOOL)isBlockQuoteSet
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];
  string = [textStorage string];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v9 = [string ic_rangeIsValid:{selectedRange, v8}];

  if (v9)
  {
    textView3 = [(ICNoteEditorViewController *)self textView];
    textStorage2 = [textView3 textStorage];
    string2 = [textStorage2 string];
    textView4 = [(ICNoteEditorViewController *)self textView];
    selectedRange2 = [textView4 selectedRange];
    v16 = [string2 paragraphRangeForRange:{selectedRange2, v15}];
    v18 = v17;

    textStorage3 = [(ICNoteEditorViewController *)self textStorage];
    v20 = *MEMORY[0x277D35DA8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__ICNoteEditorViewController_isBlockQuoteSet__block_invoke;
    v23[3] = &unk_2781ABC80;
    v23[4] = &v24;
    [textStorage3 enumerateAttribute:v20 inRange:v16 options:v18 usingBlock:{0, v23}];
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
  textView = [(ICNoteEditorViewController *)self textView];
  ic_shouldEnableBlockQuoteForAttachmentsOnlySelection = [textView ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

  return ic_shouldEnableBlockQuoteForAttachmentsOnlySelection;
}

- (ICNoteFormattingViewController)noteFormattingControllerCreateIfNecessary
{
  noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];

  if (!noteFormattingController)
  {
    v4 = objc_alloc_init(ICNoteFormattingViewController);
    [(ICNoteEditorViewController *)self setNoteFormattingController:v4];

    noteFormattingController2 = [(ICNoteEditorViewController *)self noteFormattingController];
    [noteFormattingController2 setFormattingDelegate:self];
  }

  noteFormattingController3 = [(ICNoteEditorViewController *)self noteFormattingController];

  return noteFormattingController3;
}

- (void)showStyleSelector:(BOOL)selector animated:(BOOL)animated sender:(id)sender
{
  animatedCopy = animated;
  selectorCopy = selector;
  senderCopy = sender;
  if (selectorCopy)
  {
    noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
    [noteFormattingControllerCreateIfNecessary updateWithDataSource:self ignoreTypingAttributes:0];
  }

  if ([(ICNoteEditorViewController *)self useInputViewForStyleSelector])
  {
    [(ICNoteEditorViewController *)self showStyleSelectorInputView:selectorCopy animated:animatedCopy doneEditing:0];
  }

  else
  {
    [(ICNoteEditorViewController *)self showStyleSelectorPopover:selectorCopy animated:animatedCopy sender:senderCopy];
    styleSelectorController = [(ICNoteEditorViewController *)self styleSelectorController];
    [styleSelectorController setElementForAXFocusOnDismissal:senderCopy];
  }
}

- (void)showStyleSelectorPopover:(BOOL)popover animated:(BOOL)animated sender:(id)sender
{
  animatedCopy = animated;
  popoverCopy = popover;
  senderCopy = sender;
  if (popoverCopy)
  {
    noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
    presentingViewController = [noteFormattingControllerCreateIfNecessary presentingViewController];

    if (!presentingViewController)
    {
      if ([MEMORY[0x277D75418] ic_isVision])
      {
        v10 = -2;
      }

      else
      {
        v10 = 7;
      }

      [noteFormattingControllerCreateIfNecessary setModalPresentationStyle:v10];
      view = [noteFormattingControllerCreateIfNecessary view];
      backgroundColor = [view backgroundColor];
      popoverPresentationController = [noteFormattingControllerCreateIfNecessary popoverPresentationController];
      [popoverPresentationController setBackgroundColor:backgroundColor];

      popoverPresentationController2 = [noteFormattingControllerCreateIfNecessary popoverPresentationController];
      [popoverPresentationController2 setDelegate:self];

      popoverPresentationController3 = [noteFormattingControllerCreateIfNecessary popoverPresentationController];
      [popoverPresentationController3 setBarButtonItem:senderCopy];

      popoverPresentationController4 = [noteFormattingControllerCreateIfNecessary popoverPresentationController];
      [popoverPresentationController4 setPopoverLayoutMargins:{0.0, 0.0, 0.0, 1.0}];

      [(ICNoteEditorViewController *)self presentViewController:noteFormattingControllerCreateIfNecessary animated:animatedCopy completion:0];
    }
  }

  else
  {
    noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
    presentingViewController2 = [noteFormattingController presentingViewController];

    if (!presentingViewController2)
    {
      goto LABEL_10;
    }

    noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self noteFormattingController];
    presentingViewController3 = [noteFormattingControllerCreateIfNecessary presentingViewController];
    [presentingViewController3 dismissViewControllerAnimated:animatedCopy completion:0];
  }

LABEL_10:
}

- (void)setAuxiliaryStylingController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_auxiliaryStylingController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_auxiliaryStylingController);
    if (!v5 || (v6 = v5, v7 = objc_loadWeakRetained(&self->_auxiliaryStylingController), v8 = [v7 lockSelection], v7, v6, (v8 & 1) == 0))
    {
      objc_storeWeak(&self->_auxiliaryStylingController, obj);
      [(ICNoteEditorViewController *)self updateBarButtons];
      navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      if (obj)
      {
        objc_opt_class();
        auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
        v11 = ICDynamicCast();
        [navigationItemConfiguration updateSelectionInTextView:v11];
      }

      else
      {
        auxiliaryResponder = [(ICNoteEditorViewController *)self textView];
        [navigationItemConfiguration updateSelectionInTextView:auxiliaryResponder];
      }
    }
  }
}

- (void)showStyleSelectorInputView:(BOOL)view animated:(BOOL)animated doneEditing:(BOOL)editing
{
  viewCopy = view;
  v30[1] = *MEMORY[0x277D85DE8];
  [(ICNoteEditorViewController *)self setIsLoadingStyleSelectorInputView:1, animated, editing];
  if ([(ICNoteEditorViewController *)self styleSelectorInputViewShowing]!= viewCopy)
  {
    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:1];
    [(ICNoteEditorViewController *)self setSuspendSelectedRangeUpdates:1];
    textView = [(ICNoteEditorViewController *)self textView];
    typingAttributes = [textView typingAttributes];

    if (viewCopy)
    {
      noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self noteFormattingControllerCreateIfNecessary];
      presentationController = [noteFormattingControllerCreateIfNecessary presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x277D75A28];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __78__ICNoteEditorViewController_showStyleSelectorInputView_animated_doneEditing___block_invoke;
        v28[3] = &unk_2781ACFD0;
        v29 = noteFormattingControllerCreateIfNecessary;
        v12 = presentationController;
        v13 = [v11 customDetentWithIdentifier:@"compactStyleSelector" resolver:v28];
        v30[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
        [v12 setDetents:v14];

        [v12 setPrefersEdgeAttachedInCompactHeight:1];
        [v12 setLargestUndimmedDetentIdentifier:@"compactStyleSelector"];
        [v12 _setShouldDismissWhenTappedOutside:0];
      }

      view = [noteFormattingControllerCreateIfNecessary view];
      [view setHidden:0];

      [(ICNoteEditorViewController *)self presentViewController:noteFormattingControllerCreateIfNecessary animated:1 completion:0];
      auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

      styleSelectorDummyInputView = [(ICNoteEditorViewController *)self styleSelectorDummyInputView];
      if (auxiliaryStylingController)
      {
        auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
        [auxiliaryStylingController2 setInputView:styleSelectorDummyInputView];
      }

      else
      {
        textView2 = [(ICNoteEditorViewController *)self textView];
        [textView2 setInputView:styleSelectorDummyInputView];

        textView3 = [(ICNoteEditorViewController *)self textView];
        [textView3 setInputAccessoryView:0];

        if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
        {
          navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration setForceHideToolbar:1];
        }

        styleSelectorDummyInputView = [(ICNoteEditorViewController *)self textView];
        [styleSelectorDummyInputView reloadInputViews];
      }
    }

    else
    {
      noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
      [noteFormattingController dismissViewControllerAnimated:1 completion:0];

      auxiliaryStylingController3 = [(ICNoteEditorViewController *)self auxiliaryStylingController];

      if (auxiliaryStylingController3)
      {
        noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self auxiliaryStylingController];
        [noteFormattingControllerCreateIfNecessary setInputView:0];
      }

      else
      {
        textView4 = [(ICNoteEditorViewController *)self textView];
        [textView4 setInputView:0];

        if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
        {
          navigationItemConfiguration2 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration2 setForceHideToolbar:0];
        }

        else
        {
          navigationItemConfiguration2 = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
          textView5 = [(ICNoteEditorViewController *)self textView];
          [textView5 setInputAccessoryView:navigationItemConfiguration2];
        }

        noteFormattingControllerCreateIfNecessary = [(ICNoteEditorViewController *)self textView];
        [noteFormattingControllerCreateIfNecessary reloadInputViews];
      }
    }

    textView6 = [(ICNoteEditorViewController *)self textView];
    [textView6 setTypingAttributes:typingAttributes];

    [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
    [(ICNoteEditorViewController *)self setSuspendSelectedRangeUpdates:0];
  }

  [(ICNoteEditorViewController *)self setIsLoadingStyleSelectorInputView:0];
}

- (void)toggleCurrentTextStyle:(unsigned int)style
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    selectedStyles = [auxiliaryStylingController2 selectedStyles];
    v8 = [selectedStyles containsIndex:style];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    v8 = [auxiliaryStylingController2 ic_getTextStyleForCurrentSelection] == style;
  }

  if (v8)
  {
    styleCopy = 3;
  }

  else
  {
    styleCopy = style;
  }

  [(ICNoteEditorViewController *)self setCurrentTextStyle:styleCopy];
}

- (void)setCurrentTextStyle:(unsigned int)style
{
  v3 = *&style;
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 setTextStyleForCurrentSelection:v3];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_setTextStyleForCurrentSelection:v3];
  }
}

- (void)setSplitViewExpandingOrCollapsing:(BOOL)collapsing
{
  self->_splitViewExpandingOrCollapsing = collapsing;
  if (collapsing)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    if ([textView isFirstResponder])
    {
      textView2 = [(ICNoteEditorViewController *)self textView];
      selectedRanges = [textView2 selectedRanges];
      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:selectedRanges];
    }

    else
    {
      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:0];
    }

    LODWORD(textView) = [(ICNoteEditorViewController *)self isInkPickerShowing];
  }

  else
  {
    textView = [(ICNoteEditorViewController *)self selectedRangesBeforeSplitViewTransition];

    if (textView)
    {
      [(ICNoteEditorViewController *)self startEditing];
      selectedRangesBeforeSplitViewTransition = [(ICNoteEditorViewController *)self selectedRangesBeforeSplitViewTransition];
      textView3 = [(ICNoteEditorViewController *)self textView];
      [textView3 setSelectedRanges:selectedRangesBeforeSplitViewTransition];

      textView = [(ICNoteEditorViewController *)self textView];
      [textView scrollSelectionToVisible:1];

      [(ICNoteEditorViewController *)self setSelectedRangesBeforeSplitViewTransition:0];
      LODWORD(textView) = 0;
    }
  }

  [(ICNoteEditorViewController *)self setShowInkPickerAfterViewAppears:textView | [(ICNoteEditorViewController *)self showInkPickerAfterViewAppears]];
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController hideSidebarAnimated:1];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (!collapsing)
      {
        viewIfLoaded = [(ICNoteEditorViewController *)self viewIfLoaded];

        if (viewIfLoaded)
        {
          [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
          textView4 = [(ICNoteEditorViewController *)self textView];
          [textView4 frame];
          v26 = CGRectInset(v25, 1.0, 0.0);
          x = v26.origin.x;
          y = v26.origin.y;
          width = v26.size.width;
          height = v26.size.height;
          textView5 = [(ICNoteEditorViewController *)self textView];
          [textView5 setFrame:{x, y, width, height}];

          textView6 = [(ICNoteEditorViewController *)self textView];
          [textView6 frame];
          v28 = CGRectInset(v27, -1.0, 0.0);
          v18 = v28.origin.x;
          v19 = v28.origin.y;
          v20 = v28.size.width;
          v21 = v28.size.height;
          textView7 = [(ICNoteEditorViewController *)self textView];
          [textView7 setFrame:{v18, v19, v20, v21}];
        }
      }
    }
  }
}

- (void)setTextStyle:(unsigned int)style sender:(id)sender
{
  v4 = *&style;
  v6 = [(ICNoteEditorViewController *)self textView:*&style];
  [v6 setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self setCurrentTextStyle:v4];
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setIsSettingStyleWithStyleUI:0];

  v8 = topoTextStylesToAnalyticsStyles;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v10 = [v8 objectForKeyedSubscript:v9];
  integerValue = [v10 integerValue];

  if (integerValue)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:integerValue];
  }
}

- (void)toggleBIUS:(unint64_t)s sender:(id)sender
{
  senderCopy = sender;
  textView = [(ICNoteEditorViewController *)self textView];
  v7 = 1;
  [textView setIsSettingStyleWithStyleUI:1];

  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];
  textView2 = [(ICNoteEditorViewController *)self textView];
  v10 = textView2;
  v11 = 0;
  if (s <= 3)
  {
    if (s == 1)
    {
      if (auxiliaryStylingController)
      {
        [auxiliaryStylingController toggleBoldface:senderCopy];
      }

      else
      {
        [textView2 ic_toggleBoldface];
      }

      v7 = 0;
      v11 = 9;
    }

    else if (s == 2)
    {
      if (auxiliaryStylingController)
      {
        [auxiliaryStylingController toggleItalics:senderCopy];
      }

      else
      {
        [textView2 ic_toggleItalics];
      }

      v7 = 0;
      v11 = 10;
    }
  }

  else
  {
    switch(s)
    {
      case 4uLL:
        if (auxiliaryStylingController)
        {
          [auxiliaryStylingController toggleUnderline:senderCopy];
        }

        else
        {
          [textView2 ic_toggleUnderline];
        }

        v7 = 0;
        v11 = 11;
        break;
      case 8uLL:
        if (auxiliaryStylingController)
        {
          [auxiliaryStylingController toggleStrikethrough:senderCopy];
        }

        else
        {
          [textView2 ic_toggleStrikethrough];
        }

        v7 = 0;
        v11 = 12;
        break;
      case 0x10uLL:
        v12 = ic_currentEmphasisColorTypeDefault();
        if (auxiliaryStylingController)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          [auxiliaryStylingController toggleEmphasis:senderCopy onValue:v13];
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

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 setIsSettingStyleWithStyleUI:0];

  if ((v7 & 1) == 0)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:v11];
  }
}

- (void)changeIndentationByIncreasing:(BOOL)increasing sender:(id)sender
{
  if ([(ICNoteEditorViewController *)self currentWritingDirection:increasing]== !increasing)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  [textView setIsSettingStyleWithStyleUI:1];

  [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:v5];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setIsSettingStyleWithStyleUI:0];
}

- (id)noteFormattingTintColor
{
  view = [(ICNoteEditorViewController *)self view];
  tintColor = [view tintColor];

  return tintColor;
}

- (void)noteFormattingNeedsUpdate:(id)update
{
  updateCopy = update;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView selectedRange];
  [updateCopy updateWithDataSource:self ignoreTypingAttributes:v5 != 0];
}

- (void)noteFormattingDidFinish:(id)finish
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
  navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  styleBarButtonItem = [navigationItemConfiguration styleBarButtonItem];
  view = [styleBarButtonItem view];
  UIAccessibilityPostNotification(v4, view);
}

- (void)attachmentInsertionController:(id)controller willAddAttachment:(id)attachment atRange:(_NSRange)range
{
  v5 = [(ICNoteEditorViewController *)self textView:controller];
  [v5 unmarkText];
}

- (void)attachmentInsertionController:(id)controller didAddAttachment:(id)attachment atRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    textStorage = [textView textStorage];
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
    styler = [v11 styler];
    v15 = ICDynamicCast();

    string = [v11 string];
    v43 = length;
    v17 = [string paragraphRangeForRange:{location, length}];
    v18 = textView;
    selfCopy = self;
    v20 = v11;
    v21 = attachmentCopy;
    v22 = v17;
    v24 = v23;

    v25 = v22;
    attachmentCopy = v21;
    v11 = v20;
    v26 = selfCopy;
    textView = v18;
    [v15 updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v25 textStorage:v24 textView:{v11, v18}];
    [(ICNoteEditorViewController *)v26 textViewDidChange:v18];
    [v11 breakUndoCoalescing];
    [(ICNoteEditorViewController *)v26 updateBarButtons];
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    attachmentType = [attachmentCopy attachmentType];
    if (attachmentType < 0xC || attachmentType - 13 < 3)
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
        textView2 = [(ICNoteEditorViewController *)v26 textView];
        textLayoutManager = [textView2 textLayoutManager];
        v30 = ICCheckedDynamicCast();

        if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(ICNoteEditorViewController *)v26 rcc_updatePaperKitMessengerForAttachment:attachmentCopy textLayoutManager:v30];
        }
      }

      else
      {
        objc_opt_class();
        layoutManager = [v18 layoutManager];
        v30 = ICCheckedDynamicCast();

        if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [(ICNoteEditorViewController *)v26 rcc_updatePaperKitMessengerForAttachment:attachmentCopy layoutManager:v30];
        }
      }
    }

    else
    {
      if (attachmentType != 12)
      {
        goto LABEL_20;
      }

      textStorage2 = [(ICNoteEditorViewController *)v26 textStorage];
      v33 = [textStorage2 length];

      if (location >= v33)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      textStorage3 = [(ICNoteEditorViewController *)v26 textStorage];
      v35 = [textStorage3 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];
      v30 = ICDynamicCast();

      if (!v30)
      {
        goto LABEL_20;
      }

      if (ICInternalSettingsIsTextKit2Enabled())
      {
        objc_opt_class();
        textView3 = [(ICNoteEditorViewController *)v26 textView];
        textLayoutManager2 = [textView3 textLayoutManager];
        v38 = ICDynamicCast();

        v39 = [v38 tableViewControllerForAttachment:v30 createIfNeeded:1];
      }

      else
      {
        objc_opt_class();
        textView4 = [(ICNoteEditorViewController *)v26 textView];
        layoutManager2 = [textView4 layoutManager];
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

  textView = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(textView, OS_LOG_TYPE_ERROR))
  {
    [ICNoteEditorViewController attachmentInsertionController:didAddAttachment:atRange:];
  }

LABEL_22:
}

- (void)attachmentInsertionController:(id)controller didAddInlineAttachment:(id)attachment atRange:(_NSRange)range textStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];

  if (textStorage == storageCopy)
  {
    objc_opt_class();
    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage2 = [textView2 textStorage];
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

        textView3 = [(ICNoteEditorViewController *)self textView];
        [textView3 setSelectedRange:{v14, 0}];

        [(ICNoteEditorViewController *)self scrollRangeToVisible:location animated:length, 1];
      }
    }

    [(ICNoteEditorViewController *)self setIsConvertToTag:0];
  }
}

- (void)addSystemPaperAttachment
{
  note = [(ICNoteEditorBaseViewController *)self note];
  canAddAttachment = [note canAddAttachment];

  if (canAddAttachment)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    note2 = [(ICNoteEditorBaseViewController *)self note];
    v7 = [note2 addSystemPaperAttachmentWithIdentifier:uUIDString];

    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    v12 = [attachmentInsertionController addAttachment:v7 atTextLocation:selectedRange + v11];

    note3 = [(ICNoteEditorBaseViewController *)self note];
    managedObjectContext = [note3 managedObjectContext];
    [managedObjectContext ic_save];
  }
}

- (void)showDocumentCamera
{
  note = [(ICNoteEditorBaseViewController *)self note];
  canAddAttachment = [note canAddAttachment];

  if (canAddAttachment)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isDeletedOrInTrash = [note2 isDeletedOrInTrash];

    if (isDeletedOrInTrash)
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

- (void)documentCameraPresentingViewController:(id)controller didFinishWithInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController
{
  viewControllerCopy = viewController;
  userCopy = user;
  v164 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  collectionCopy = collection;
  cacheCopy = cache;
  v124 = userCopy;
  if (userCopy && !viewControllerCopy)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!(warnUser && !closeViewController)" functionName:"-[ICNoteEditorViewController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"Cannot warn user if not closing the view controller"];
  }

  v127 = viewControllerCopy;
  docInfos = [collectionCopy docInfos];
  v15 = [docInfos count];

  if (!v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"docInfoCollection.docInfos.count > 0" functionName:"-[ICNoteEditorViewController documentCameraPresentingViewController:didFinishWithInfoCollection:imageCache:warnUser:closeViewController:]" simulateCrash:1 showAlert:0 format:@"This should never be called with a count of 0."];
  }

  v16 = MEMORY[0x277CBEB18];
  docInfos2 = [collectionCopy docInfos];
  v18 = [v16 arrayWithCapacity:{objc_msgSend(docInfos2, "count")}];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  docInfos3 = [collectionCopy docInfos];
  v20 = [docInfos3 countByEnumeratingWithState:&v156 objects:v163 count:16];
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
          objc_enumerationMutation(docInfos3);
        }

        croppedAndFilteredImageUUID = [*(*(&v156 + 1) + 8 * i) croppedAndFilteredImageUUID];
        v25 = [cacheCopy getImageURL:croppedAndFilteredImageUUID async:0];
        [v18 ic_addNonNilObject:v25];
      }

      v21 = [docInfos3 countByEnumeratingWithState:&v156 objects:v163 count:16];
    }

    while (v21);
  }

  v128 = collectionCopy;

  objc_opt_class();
  v26 = [MEMORY[0x277D36260] objectForKey:@"ICShouldSavePhotosAndVideosToCameraRollKey"];
  v27 = ICDynamicCast();
  bOOLValue = [v27 BOOLValue];

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
          unsignedIntegerValue = [v151 unsignedIntegerValue];
          if (v32 <= unsignedIntegerValue)
          {
            v32 = unsignedIntegerValue;
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

  selfCopy3 = self;
  note = [(ICNoteEditorBaseViewController *)self note];
  canAddAttachment = [note canAddAttachment];

  note2 = [(ICNoteEditorBaseViewController *)self note];
  v42 = [note2 attachmentExceedsMaxSizeAllowed:v32];

  note3 = [(ICNoteEditorBaseViewController *)self note];
  isPasswordProtected = [note3 isPasswordProtected];

  if (!isPasswordProtected && ((bOOLValue | v42 | canAddAttachment ^ 1) & 1) != 0)
  {
    v120 = canAddAttachment;
    v122 = controllerCopy;
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

    controllerCopy = v122;
    selfCopy3 = self;
    LOBYTE(canAddAttachment) = v120;
  }

  if (canAddAttachment)
  {
    v53 = v128;
    if ((v42 & 1) == 0)
    {
      if (ICInternalSettingsDefaultToPaperKitPDFsAndScans())
      {
        createdGalleryAttachmentUUID = [(ICNoteEditorViewController *)selfCopy3 createdGalleryAttachmentUUID];
        uUIDString = [createdGalleryAttachmentUUID UUIDString];

        note4 = [(ICNoteEditorBaseViewController *)selfCopy3 note];
        v59 = [note4 addPaperDocumentAttachmentWithIdentifier:uUIDString subtype:*MEMORY[0x277D35BF8]];

        docInfos4 = [v128 docInfos];
        v61 = [docInfos4 count];
        objc_opt_class();
        paperBundleModel = [v59 paperBundleModel];
        v63 = ICDynamicCast();
        [v63 setPaperPageCount:v61];

        managedObjectContext = [v59 managedObjectContext];
        [managedObjectContext ic_save];

        v65 = MEMORY[0x277D35F48];
        docInfos5 = [v128 docInfos];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_2;
        v140[3] = &unk_2781AD020;
        v141 = v59;
        v142 = selfCopy3;
        v67 = v59;
        [v65 createPaperBundleForAttachment:v67 fromDocCamInfoCollection:docInfos5 imageCache:cacheCopy completion:v140];

        eventReporter = [(ICNoteEditorViewController *)selfCopy3 eventReporter];
        identifier = [v67 identifier];
        [eventReporter pushDocScanDataWithID:identifier actionType:1 stage:2];

        eventReporter2 = [(ICNoteEditorViewController *)selfCopy3 eventReporter];
        note5 = [(ICNoteEditorBaseViewController *)selfCopy3 note];
        docInfos6 = [v128 docInfos];
        [eventReporter2 submitDocScanEventForNote:note5 pageCount:{objc_msgSend(docInfos6, "count")}];

        v73 = uUIDString;
        eventReporter3 = [(ICNoteEditorViewController *)selfCopy3 eventReporter];
        [eventReporter3 submitAttachmentAddEventForAttachment:v67];

        [(ICNoteEditorViewController *)selfCopy3 setCreatedGalleryAttachmentUUID:0];
        v75 = v141;
      }

      else
      {
        v123 = controllerCopy;
        v76 = objc_alloc(MEMORY[0x277D05D58]);
        docInfos7 = [v128 docInfos];
        v78 = [v76 initWithImageCache:cacheCopy docInfos:docInfos7];

        v126 = v78;
        [MEMORY[0x277D05D50] setCachedItem:v78];
        note6 = [(ICNoteEditorBaseViewController *)selfCopy3 note];
        createdGalleryAttachmentUUID2 = [(ICNoteEditorViewController *)selfCopy3 createdGalleryAttachmentUUID];
        uUIDString2 = [createdGalleryAttachmentUUID2 UUIDString];
        v67 = [note6 addGalleryAttachmentWithIdentifier:uUIDString2];

        objc_opt_class();
        attachmentModel = [v67 attachmentModel];
        v83 = ICCheckedDynamicCast();

        docInfos8 = [v128 docInfos];
        firstObject = [docInfos8 firstObject];

        v86 = [MEMORY[0x277D36798] createSubAttachmentFromDocument:firstObject imageCache:cacheCopy galleryAttachment:v67];
        v87 = v86;
        if (v86)
        {
          identifier2 = [v86 identifier];
          [firstObject setScanDataDelegateIdentifier:identifier2];

          [v83 addSubAttachment:v87];
        }

        v118 = v87;
        v119 = firstObject;
        v121 = v83;
        [v67 saveMergeableDataIfNeeded];
        attachmentInsertionController = [(ICNoteEditorViewController *)selfCopy3 attachmentInsertionController];
        textView = [(ICNoteEditorViewController *)selfCopy3 textView];
        selectedRange = [textView selectedRange];
        v93 = [attachmentInsertionController addAttachment:v67 atTextLocation:selectedRange + v92];

        note7 = [(ICNoteEditorBaseViewController *)selfCopy3 note];
        managedObjectContext2 = [note7 managedObjectContext];
        [managedObjectContext2 ic_saveWithLogDescription:@"Insert gallery attachment"];

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        subAttachments = [v67 subAttachments];
        v97 = [subAttachments countByEnumeratingWithState:&v136 objects:v160 count:16];
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
                objc_enumerationMutation(subAttachments);
              }

              v101 = *(*(&v136 + 1) + 8 * m);
              mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
              [mEMORY[0x277D366B0] generatePreviewIfNeededForAttachment:v101];
            }

            v98 = [subAttachments countByEnumeratingWithState:&v136 objects:v160 count:16];
          }

          while (v98);
        }

        mEMORY[0x277D366B0]2 = [MEMORY[0x277D366B0] sharedGenerator];
        [mEMORY[0x277D366B0]2 generatePreviewIfNeededForAttachment:v67];

        selfCopy3 = self;
        eventReporter4 = [(ICNoteEditorViewController *)self eventReporter];
        identifier3 = [v67 identifier];
        [eventReporter4 pushDocScanDataWithID:identifier3 actionType:1 stage:2];

        eventReporter5 = [(ICNoteEditorViewController *)self eventReporter];
        note8 = [(ICNoteEditorBaseViewController *)self note];
        v53 = v128;
        docInfos9 = [v128 docInfos];
        [eventReporter5 submitDocScanEventForNote:note8 pageCount:{objc_msgSend(docInfos9, "count")}];

        eventReporter6 = [(ICNoteEditorViewController *)self eventReporter];
        [eventReporter6 submitAttachmentAddEventForAttachment:v67];

        [(ICNoteEditorViewController *)self setCreatedGalleryAttachmentUUID:0];
        docInfos10 = [v128 docInfos];
        v111 = [docInfos10 count];

        if (v111 < 2)
        {
          v73 = v126;
          [v126 doneBuildingCache];
        }

        else
        {
          docInfos11 = [v128 docInfos];
          docInfos12 = [v128 docInfos];
          v114 = [docInfos11 subarrayWithRange:{1, objc_msgSend(docInfos12, "count") - 1}];

          v115 = [MEMORY[0x277CBEB18] arrayWithArray:v114];
          [v128 setDocInfos:v115];

          v116 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_3_773;
          block[3] = &unk_2781AC878;
          v132 = v67;
          v133 = v128;
          v134 = cacheCopy;
          v73 = v126;
          v135 = v126;
          dispatch_async(v116, block);
        }

        v75 = v121;
        controllerCopy = v123;
      }

      if (!v127)
      {
        [(ICNoteEditorViewController *)selfCopy3 cleanupAfterAddImageAttachmentOperation];
        v117 = controllerCopy;
        v55 = 0;
        goto LABEL_67;
      }

      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_4;
      v130[3] = &unk_2781ABCF8;
      v130[4] = selfCopy3;
      v55 = v130;
LABEL_66:
      v117 = controllerCopy;
LABEL_67:
      [v117 dismissViewControllerAnimated:1 completion:v55];
      goto LABEL_68;
    }

    v54 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController documentCameraPresentingViewController:selfCopy3 didFinishWithInfoCollection:? imageCache:? warnUser:? closeViewController:?];
    }

    if (v127)
    {
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke_749;
      v143[3] = &unk_2781ACFF8;
      v143[4] = selfCopy3;
      v144 = v124;
      v55 = v143;
      goto LABEL_66;
    }

    if (v124)
    {
      [(ICNoteEditorViewController *)selfCopy3 warnUserAttachmentSizeExceededWithAttachmentCount:1];
    }
  }

  else
  {
    v56 = os_log_create("com.apple.notes", "UI");
    v53 = v128;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController documentCameraPresentingViewController:selfCopy3 didFinishWithInfoCollection:? imageCache:? warnUser:? closeViewController:?];
    }

    if (v127)
    {
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __137__ICNoteEditorViewController_documentCameraPresentingViewController_didFinishWithInfoCollection_imageCache_warnUser_closeViewController___block_invoke;
      v145[3] = &unk_2781ACFF8;
      v145[4] = selfCopy3;
      v146 = v124;
      v55 = v145;
      goto LABEL_66;
    }

    if (v124)
    {
      [(ICNoteEditorViewController *)selfCopy3 warnUserAttachmentLimitExceeded];
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

- (void)documentCameraControllerDidCancelWithPresentingViewController:(id)controller
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__ICNoteEditorViewController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke;
  v3[3] = &unk_2781ABCF8;
  v3[4] = self;
  [controller dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __92__ICNoteEditorViewController_documentCameraControllerDidCancelWithPresentingViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupAfterAddImageAttachmentOperation];
  v2 = *(a1 + 32);

  return [v2 setCreatedGalleryAttachmentUUID:0];
}

- (id)documentCameraControllerCreateDataCryptorIfNecessary
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    v5 = objc_alloc(MEMORY[0x277D35E98]);
    note2 = [(ICNoteEditorBaseViewController *)self note];
    identifier = [note2 identifier];
    v8 = [v5 initWithObjectIdentifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user
{
  userCopy = user;
  cacheCopy = cache;
  collectionCopy = collection;
  presentingViewController = [controller presentingViewController];
  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:cacheCopy warnUser:userCopy closeViewController:1];
}

- (void)documentCameraController:(id)controller didFinishWithDocInfoCollection:(id)collection imageCache:(id)cache warnUser:(BOOL)user closeViewController:(BOOL)viewController
{
  viewControllerCopy = viewController;
  userCopy = user;
  cacheCopy = cache;
  collectionCopy = collection;
  presentingViewController = [controller presentingViewController];
  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:cacheCopy warnUser:userCopy closeViewController:viewControllerCopy];
}

- (void)documentCameraControllerDidRetake:(id)retake pageCount:(unint64_t)count
{
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  createdGalleryAttachmentUUID = [(ICNoteEditorViewController *)self createdGalleryAttachmentUUID];
  uUIDString = [createdGalleryAttachmentUUID UUIDString];
  [eventReporter pushDocScanDataWithID:uUIDString actionType:2 stage:1];

  eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter2 submitDocScanEventForNote:note pageCount:count];
}

- (BOOL)documentCameraController:(id)controller canAddImages:(unint64_t)images
{
  mEMORY[0x277D35E70] = [MEMORY[0x277D35E70] sharedConfiguration];
  LOBYTE(images) = [mEMORY[0x277D35E70] maxSubAttachmentsPerAttachment] >= images;

  return images;
}

- (id)scanDataDelegateWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D35E00];
  v4 = MEMORY[0x277D35F30];
  identifierCopy = identifier;
  sharedContext = [v4 sharedContext];
  managedObjectContext = [sharedContext managedObjectContext];
  v8 = [v3 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  return v8;
}

- (void)remoteDocumentCameraController:(id)controller didFinishWithInfoCollection:(id)collection
{
  collectionCopy = collection;
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];
  imageCache = [controllerCopy imageCache];

  [(ICNoteEditorViewController *)self documentCameraPresentingViewController:presentingViewController didFinishWithInfoCollection:collectionCopy imageCache:imageCache warnUser:1 closeViewController:1];
}

- (void)addSystemPaperImageData:(id)data updateFirstResponder:(BOOL)responder forceAddToPaper:(BOOL)paper
{
  paperCopy = paper;
  responderCopy = responder;
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  note = [(ICNoteEditorBaseViewController *)self note];
  isSharedReadOnly = [note isSharedReadOnly];

  if (isSharedReadOnly)
  {
    paperLinkBarViewController = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(paperLinkBarViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2151A1000, paperLinkBarViewController, OS_LOG_TYPE_DEFAULT, "Not adding system paper image data since note is read-only.", &buf, 2u);
    }

    goto LABEL_18;
  }

  if (paperCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    note2 = [(ICNoteEditorBaseViewController *)self note];
    textStorage = [note2 textStorage];
    note3 = [(ICNoteEditorBaseViewController *)self note];
    textStorage2 = [note3 textStorage];
    ic_range = [textStorage2 ic_range];
    v17 = *MEMORY[0x277D74060];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __91__ICNoteEditorViewController_addSystemPaperImageData_updateFirstResponder_forceAddToPaper___block_invoke;
    v28[3] = &unk_2781ABC80;
    v28[4] = &buf;
    [textStorage enumerateAttribute:v17 inRange:ic_range options:v18 usingBlock:{0, v28}];

    v19 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (!responderCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    if (!responderCopy)
    {
      goto LABEL_14;
    }
  }

  textView = [(ICNoteEditorViewController *)self textView];
  if ([textView isFirstResponder])
  {
  }

  else
  {
    paletteResponder = [(ICNoteEditorViewController *)self paletteResponder];
    if ([paletteResponder isFirstResponder])
    {
    }

    else
    {
      isFirstResponder = [(ICNoteEditorViewController *)self isFirstResponder];

      if ((isFirstResponder & 1) == 0)
      {
        [(ICNoteEditorViewController *)self becomeFirstResponder];
      }
    }
  }

LABEL_14:
  v23 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [dataCopy count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_2151A1000, v23, OS_LOG_TYPE_DEFAULT, "System Paper received %lu images", &buf, 0xCu);
  }

  visualAssetImportController = [(ICNoteEditorViewController *)self visualAssetImportController];
  [visualAssetImportController addImageData:dataCopy typeIdentifier:0 forceAddToPaper:v19 & 1];

  note4 = [(ICNoteEditorBaseViewController *)self note];
  [note4 updateModificationDateAndChangeCountAndSaveImmediately];

  mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
  [mEMORY[0x277D366B0] generatePreviewsIfNeeded];

  if (+[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [paperLinkBarViewController refresh];
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

- (BOOL)addSystemPaperLink:(id)link updateFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  linkCopy = link;
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

  note = [(ICNoteEditorBaseViewController *)self note];
  isSharedReadOnly = [note isSharedReadOnly];

  if (isSharedReadOnly)
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

  if (responderCopy)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    if (![textView isFirstResponder])
    {
      paletteResponder = [(ICNoteEditorViewController *)self paletteResponder];
      if (![paletteResponder isFirstResponder])
      {
        isFirstResponder = [(ICNoteEditorViewController *)self isFirstResponder];

        if ((isFirstResponder & 1) == 0)
        {
          [(ICNoteEditorViewController *)self becomeFirstResponder];
        }

        goto LABEL_14;
      }
    }
  }

LABEL_14:
  note2 = [(ICNoteEditorBaseViewController *)self note];
  v16 = [note2 addSynapseLinkAttachmentWithContentItem:linkCopy];

  displayTitle = [linkCopy displayTitle];
  [v16 setTitle:displayTitle];

  [v16 updateChangeCountWithReason:@"Add System Paper Link"];
  if ([(ICNoteEditorViewController *)self isEditing])
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView2 selectedRange];
    v21 = selectedRange + v20;
  }

  else
  {
    textView2 = [(ICNoteEditorBaseViewController *)self note];
    textStorage = [textView2 textStorage];
    v21 = [textStorage length];
  }

  attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v24 = [attachmentInsertionController addAttachment:v16 atTextLocation:v21];

  note3 = [(ICNoteEditorBaseViewController *)self note];
  [note3 updateModificationDateAndChangeCountAndSaveImmediately];

  mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
  [mEMORY[0x277D366B0] generatePreviewsIfNeeded];

  mEMORY[0x277D35970] = [MEMORY[0x277D35970] sharedReporter];
  note4 = [(ICNoteEditorBaseViewController *)self note];
  [mEMORY[0x277D35970] fireDeepLinkCreationEventWithNote:note4 contentItem:linkCopy];

  if (+[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [paperLinkBarViewController refresh];
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

  paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  if (paperLinkBarViewController)
  {

    goto LABEL_5;
  }

  textView = [(ICNoteEditorViewController *)self textView];

  if (!textView)
  {
LABEL_5:
    view = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController createSystemPaperLinkBarIfNecessary];
    }

    goto LABEL_15;
  }

  v7 = [ICSystemPaperLinkBarViewController alloc];
  textView2 = [(ICNoteEditorViewController *)self textView];
  v9 = [(ICSystemPaperLinkBarViewController *)v7 initWithNoteEditorViewController:self textView:textView2];
  [(ICNoteEditorViewController *)self setPaperLinkBarViewController:v9];

  paperLinkBarViewController2 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [(ICNoteEditorViewController *)self addChildViewController:paperLinkBarViewController2];

  paperLinkBarViewController3 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  view = [paperLinkBarViewController3 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = 0.0;
  [view setAlpha:0.0];
  view2 = [(ICNoteEditorViewController *)self view];
  [view2 addSubview:view];

  ic_safeAreaLayoutGuide = [(ICNoteEditorViewController *)self ic_safeAreaLayoutGuide];
  topAnchor = [ic_safeAreaLayoutGuide topAnchor];

  if (_UISolariumEnabled() && [MEMORY[0x277D75418] ic_isiPad] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    app_systemPaperNavigationBar = [(ICNoteEditorViewController *)self app_systemPaperNavigationBar];
    [app_systemPaperNavigationBar frame];
    v18 = v17 + 0.0;
    [app_systemPaperNavigationBar safeAreaInsets];
    v20 = v19 + v18;
    [view safeAreaInsets];
    v22 = v21 + v20;
    +[ICSystemPaperConstants toolbarTopMarginOnPad];
    v12 = v23 + v22;
  }

  v35 = MEMORY[0x277CCAAD0];
  leadingAnchor = [view leadingAnchor];
  textView3 = [(ICNoteEditorViewController *)self textView];
  leadingAnchor2 = [textView3 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v36;
  trailingAnchor = [view trailingAnchor];
  textView4 = [(ICNoteEditorViewController *)self textView];
  trailingAnchor2 = [textView4 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v26;
  topAnchor2 = [view topAnchor];
  [topAnchor2 constraintEqualToAnchor:topAnchor constant:v12];
  v28 = v40 = topAnchor;
  v41[2] = v28;
  heightAnchor = [view heightAnchor];
  +[ICSystemPaperConstants linkBarHeight];
  v30 = [heightAnchor constraintEqualToConstant:?];
  v41[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v35 activateConstraints:v31];

  paperLinkBarViewController4 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
  [paperLinkBarViewController4 didMoveToParentViewController:self];

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

  paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];

  if (paperLinkBarViewController)
  {
    if ([(ICNoteEditorViewController *)self isPaperLinkBarShowing])
    {
      [(ICNoteEditorViewController *)self setPaperLinkBarShowing:0];
    }

    paperLinkBarViewController2 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    view = [paperLinkBarViewController2 view];

    [view removeFromSuperview];
    [(ICNoteEditorViewController *)self setPaperLinkBarViewController:0];
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController teardownSystemPaperLinkBarIfNecessary];
    }
  }

  else
  {
    view = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController teardownSystemPaperLinkBarIfNecessary];
    }
  }
}

- (void)systemPaperLinkBarVisibilityPreferenceChanged:(id)changed
{
  v4 = +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote];
  paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];

  if (!paperLinkBarViewController || v4)
  {
    paperLinkBarViewController2 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    v7 = paperLinkBarViewController2 == 0 && v4;

    if (v7 == 1)
    {
      [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
      paperLinkBarViewController3 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
      [paperLinkBarViewController3 refresh];
    }
  }

  else
  {

    [(ICNoteEditorViewController *)self teardownSystemPaperLinkBarIfNecessary];
  }
}

- (void)setCanShowLinkBar:(BOOL)bar
{
  if (self->_canShowLinkBar != bar)
  {
    self->_canShowLinkBar = bar;
    if (!bar)
    {
      [(ICNoteEditorViewController *)self teardownSystemPaperLinkBarIfNecessary];
    }
  }
}

- (void)setPaperLinkBarShowing:(BOOL)showing
{
  LODWORD(v3) = showing;
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
    textView = [(ICNoteEditorViewController *)self textView];
    note = [(ICNoteEditorBaseViewController *)self note];
    [textView createUserTitleViewIfNecessaryForNote:note];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__ICNoteEditorViewController_setPaperLinkBarShowing___block_invoke;
    aBlock[3] = &unk_2781ACFF8;
    v18 = v3;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    view = [(ICNoteEditorViewController *)self view];
    [view setNeedsUpdateConstraints];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICNoteEditorViewControllerSystemPaperLinkBarVisibilityChangedNotification" object:self];
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

- (void)cancelFromSystemPaperCard:(id)card
{
  cardCopy = card;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke;
  aBlock[3] = &unk_2781ABCF8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  textStorage = [(ICNoteEditorViewController *)self textStorage];
  v7 = [textStorage length];

  if (v7)
  {
    presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];
    if (presentedViewController && (v9 = presentedViewController, -[ICNoteEditorViewController presentedViewController](self, "presentedViewController"), v10 = objc_claimAutoreleasedReturnValue(), -[ICNoteEditorViewController noteFormattingController](self, "noteFormattingController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v9, v12))
    {
      noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_3;
      v30[3] = &unk_2781ABEB8;
      v30[4] = self;
      v31 = cardCopy;
      [noteFormattingController dismissViewControllerAnimated:1 completion:v30];
    }

    else
    {
      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v15 = MEMORY[0x277D750F8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle localizedStringForKey:@"Delete Quick Note" value:&stru_282757698 table:0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_4;
      v28[3] = &unk_2781AD048;
      v29 = v5;
      v18 = [v15 actionWithTitle:v17 style:2 handler:v28];
      [v14 addAction:v18];

      v19 = MEMORY[0x277D750F8];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle2 localizedStringForKey:@"Save Quick Note" value:&stru_282757698 table:0];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __56__ICNoteEditorViewController_cancelFromSystemPaperCard___block_invoke_5;
      v27[3] = &unk_2781AD070;
      v27[4] = self;
      v22 = [v19 actionWithTitle:v21 style:0 handler:v27];
      [v14 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [mainBundle3 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
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

- (void)saveFromSystemPaperCard:(id)card
{
  [(ICNoteEditorViewController *)self saveNote];
  [(ICNoteEditorViewController *)self setQuickNoteiPhoneDidSaveOrCancel:1];
  [(ICNoteEditorViewController *)self ensurePaperPreviewsExistIfNecessary];
  delegate = [(ICNoteEditorViewController *)self delegate];
  [delegate noteEditorRequestsDismissal:self cancelled:0];
}

- (void)ensurePaperPreviewsExistIfNecessary
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  note = [(ICNoteEditorBaseViewController *)self note];
  visibleAttachments = [note visibleAttachments];

  v5 = [visibleAttachments countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(visibleAttachments);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([v9 attachmentType] == 13)
        {
          v11 = MEMORY[0x277D35E40];
          identifier = [v9 identifier];
          [v11 generatePreviewsForAttachment:v9 paperIdentifier:identifier];
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleAttachments countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v13 = dispatch_semaphore_create(0);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke;
  v22[3] = &unk_2781AD098;
  v15 = v13;
  v23 = v15;
  [processInfo performExpiringActivityWithReason:@"Generating thumbnails for System Paper card" usingBlock:v22];

  mEMORY[0x277D368F0] = [MEMORY[0x277D368F0] sharedService];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ICNoteEditorViewController_ensurePaperPreviewsExistIfNecessary__block_invoke_2;
  v19[3] = &unk_2781ACFF8;
  v21 = 1;
  v20 = v15;
  v18 = v15;
  [mEMORY[0x277D368F0] updateIfNeededForNote:note2 completion:v19];
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

- (void)showActivityStreamToolbarForObject:(id)object selection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  v63[3] = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  objectCopy = object;
  activityStreamToolbar = [(ICNoteEditorViewController *)self activityStreamToolbar];
  if (activityStreamToolbar)
  {
    v11 = activityStreamToolbar;
    activityStreamToolbar2 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    superview = [activityStreamToolbar2 superview];
    navigationController = [(ICNoteEditorViewController *)self navigationController];
    view = [navigationController view];

    if (superview != view)
    {
      activityStreamToolbar3 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [activityStreamToolbar3 removeFromSuperview];

      [(ICNoteEditorViewController *)self setActivityStreamToolbar:0];
    }
  }

  activityStreamToolbar4 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  if (activityStreamToolbar4)
  {
  }

  else
  {
    navigationController2 = [(ICNoteEditorViewController *)self navigationController];

    if (navigationController2)
    {
      v60 = selectionCopy;
      v61 = objectCopy;
      viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
      v19 = [[ICActivityStreamDockView alloc] initWithCoordinator:viewControllerManager isDisplayedInCard:0];
      [(ICNoteEditorViewController *)self setActivityStreamToolbar:v19];

      activityStreamToolbar5 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [activityStreamToolbar5 setTranslatesAutoresizingMaskIntoConstraints:0];

      navigationController3 = [(ICNoteEditorViewController *)self navigationController];
      view2 = [navigationController3 view];
      activityStreamToolbar6 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      [view2 addSubview:activityStreamToolbar6];

      navigationController4 = [(ICNoteEditorViewController *)self navigationController];
      view3 = [navigationController4 view];
      [view3 layoutIfNeeded];

      v26 = 0.0;
      v59 = animatedCopy;
      if (animatedCopy)
      {
        navigationController5 = [(ICNoteEditorViewController *)self navigationController];
        view4 = [navigationController5 view];
        [view4 safeAreaInsets];
        v30 = v29;
        activityStreamToolbar7 = [(ICNoteEditorViewController *)self activityStreamToolbar];
        [activityStreamToolbar7 frame];
        v26 = v30 + v32;
      }

      activityStreamToolbar8 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      bottomAnchor = [activityStreamToolbar8 bottomAnchor];
      navigationController6 = [(ICNoteEditorViewController *)self navigationController];
      view5 = [navigationController6 view];
      bottomAnchor2 = [view5 bottomAnchor];
      v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v26];
      [(ICNoteEditorViewController *)self setActivityStreamToolbarBottomConstraint:v38];

      v52 = MEMORY[0x277CCAAD0];
      activityStreamToolbarBottomConstraint = [(ICNoteEditorViewController *)self activityStreamToolbarBottomConstraint];
      v63[0] = activityStreamToolbarBottomConstraint;
      activityStreamToolbar9 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      leadingAnchor = [activityStreamToolbar9 leadingAnchor];
      navigationController7 = [(ICNoteEditorViewController *)self navigationController];
      view6 = [navigationController7 view];
      leadingAnchor2 = [view6 leadingAnchor];
      v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v63[1] = v40;
      activityStreamToolbar10 = [(ICNoteEditorViewController *)self activityStreamToolbar];
      trailingAnchor = [activityStreamToolbar10 trailingAnchor];
      navigationController8 = [(ICNoteEditorViewController *)self navigationController];
      view7 = [navigationController8 view];
      trailingAnchor2 = [view7 trailingAnchor];
      v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v63[2] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
      [v52 activateConstraints:v47];

      if (v59)
      {
        navigationController9 = [(ICNoteEditorViewController *)self navigationController];
        view8 = [navigationController9 view];
        [view8 layoutIfNeeded];

        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __84__ICNoteEditorViewController_showActivityStreamToolbarForObject_selection_animated___block_invoke;
        v62[3] = &unk_2781ABCF8;
        v62[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v62 animations:0.25];
      }

      selectionCopy = v60;
      objectCopy = v61;
    }
  }

  activityStreamToolbar11 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  [activityStreamToolbar11 setSelection:selectionCopy];

  activityStreamToolbar12 = [(ICNoteEditorViewController *)self activityStreamToolbar];
  [activityStreamToolbar12 setObject:objectCopy];
}

void __84__ICNoteEditorViewController_showActivityStreamToolbarForObject_selection_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityStreamToolbarBottomConstraint];
  [v2 setConstant:0.0];

  v4 = [*(a1 + 32) navigationController];
  v3 = [v4 view];
  [v3 layoutIfNeeded];
}

- (void)hideActivityStreamToolbarAnimated:(BOOL)animated
{
  if (animated && ([(ICNoteEditorViewController *)self activityStreamToolbar], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    activityStreamToolbar = [(ICNoteEditorViewController *)self activityStreamToolbar];
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
    v13 = activityStreamToolbar;
    v7 = activityStreamToolbar;
    [v6 animateWithDuration:v14 animations:&v9 completion:0.25];
  }

  else
  {
    activityStreamToolbar2 = [(ICNoteEditorViewController *)self activityStreamToolbar];
    [activityStreamToolbar2 removeFromSuperview];
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
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  view = [navigationController view];
  window = [view window];
  rootViewController = [window rootViewController];

  return rootViewController;
}

- (void)noteOrFolderChangedCallback
{
  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone])
  {
    if (![(ICNoteEditorViewController *)self quickNoteiPhoneDidSaveOrCancel])
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      isDeletedOrInTrash = [note isDeletedOrInTrash];

      if (isDeletedOrInTrash)
      {
        delegate = [(ICNoteEditorViewController *)self delegate];
        v6 = objc_opt_respondsToSelector();

        if (v6)
        {
          delegate2 = [(ICNoteEditorViewController *)self delegate];
          [delegate2 noteEditorRequestsDismissal:self cancelled:1];
        }
      }
    }
  }

  if ([(ICNoteEditorViewController *)self isDrawingStroke])
  {
    noteOrFolderChangedCallbackSelectorDelayer = [(ICNoteEditorViewController *)self noteOrFolderChangedCallbackSelectorDelayer];

    if (!noteOrFolderChangedCallbackSelectorDelayer)
    {
      v9 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_noteOrFolderChangedCallback delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.25];
      [(ICNoteEditorViewController *)self setNoteOrFolderChangedCallbackSelectorDelayer:v9];
    }

    noteOrFolderChangedCallbackSelectorDelayer2 = [(ICNoteEditorViewController *)self noteOrFolderChangedCallbackSelectorDelayer];
    [noteOrFolderChangedCallbackSelectorDelayer2 requestFire];
  }

  else
  {
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
    [(ICNoteEditorViewController *)self updateActionMenu];
    textView = [(ICNoteEditorViewController *)self textView];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [textView updateCompatibilityBannerForNote:note2 parentViewController:self updateTextViewContentInsets:1];

    [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
    [(ICNoteEditorViewController *)self updateBarButtons];
    if (!-[ICNoteEditorViewController userWantsToSeeDateLabel](self, "userWantsToSeeDateLabel") || (-[ICNoteEditorBaseViewController note](self, "note"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isSharedReadOnly], v12, v13))
    {
      [(ICNoteEditorViewController *)self resetDateView];
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    userTitleView = [textView2 userTitleView];
    [userTitleView updateContentToCurrentNote];

    [(ICNoteEditorViewController *)self updatePencilKitSelectionViewEnabled];
    noteOrFolderChangedCallbackSelectorDelayer2 = [(ICNoteEditorViewController *)self textView];
    if ([noteOrFolderChangedCallbackSelectorDelayer2 ic_isFirstResponder])
    {
      note3 = [(ICNoteEditorBaseViewController *)self note];
      isEditable = [note3 isEditable];

      if (isEditable)
      {
        return;
      }

      noteOrFolderChangedCallbackSelectorDelayer2 = [(ICNoteEditorViewController *)self textView];
      [noteOrFolderChangedCallbackSelectorDelayer2 resignFirstResponder];
    }
  }
}

- (void)resetBarButtonsAnimated:(BOOL)animated checkIfVisible:(BOOL)visible
{
  visibleCopy = visible;
  animatedCopy = animated;
  navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration reset];

  if (![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:animatedCopy checkIfVisible:visibleCopy];
  }
}

- (void)resetBarButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration reset];

  if (![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:animatedCopy];
  }
}

- (void)_beginLiveResize:(id)resize
{
  resizeCopy = resize;
  objc_opt_class();
  object = [resizeCopy object];

  v9 = ICDynamicCast();

  ic_windowScene = [(ICNoteEditorViewController *)self ic_windowScene];

  v7 = v9;
  if (ic_windowScene == v9)
  {
    [(ICNoteEditorViewController *)self setIsInLiveWindowResize:1];
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setDisableContentOffsetChanges:1];

    v7 = v9;
  }
}

- (void)_endLiveResize:(id)resize
{
  resizeCopy = resize;
  objc_opt_class();
  object = [resizeCopy object];

  v9 = ICDynamicCast();

  ic_windowScene = [(ICNoteEditorViewController *)self ic_windowScene];

  v7 = v9;
  if (ic_windowScene == v9)
  {
    [(ICNoteEditorViewController *)self setIsInLiveWindowResize:0];
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setDisableContentOffsetChanges:0];

    [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
    v7 = v9;
  }
}

- (void)updateBarButtonsAnimated:(BOOL)animated checkIfVisible:(BOOL)visible
{
  animatedCopy = animated;
  if ((!visible || [(ICNoteEditorViewController *)self _appearState]!= 3 && [(ICNoteEditorViewController *)self _appearState]) && ![(ICNoteEditorViewController *)self suspendBarButtonUpdates])
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self collaborationButtons_updateCollaborationStateIfNeeded];
    }

    note = [(ICNoteEditorBaseViewController *)self note];
    if ([note isEditable])
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      folder = [note2 folder];
      if ([folder supportsEditingNotes])
      {
        invitation = [(ICNoteEditorViewController *)self invitation];
        if (invitation)
        {
          selectedContainerItemID = 0;
        }

        else
        {
          note3 = [(ICNoteEditorBaseViewController *)self note];
          if ([note3 isPasswordProtectedAndLocked])
          {
            selectedContainerItemID = 0;
          }

          else
          {
            note4 = [(ICNoteEditorBaseViewController *)self note];
            if ([note4 isUnsupported])
            {
              selectedContainerItemID = 0;
            }

            else
            {
              unsupportedNoteView = [(ICNoteEditorViewController *)self unsupportedNoteView];
              selectedContainerItemID = unsupportedNoteView == 0;
            }
          }
        }
      }

      else
      {
        selectedContainerItemID = 0;
      }
    }

    else
    {
      selectedContainerItemID = 0;
    }

    textStorage = [(ICNoteEditorViewController *)self textStorage];
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    if ([textStorage ic_containsBlockAttachmentsInRange:{selectedRange, v17}])
    {
      LODWORD(v168) = 0;
    }

    else
    {
      auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
      LODWORD(v168) = (auxiliaryResponder == 0) & selectedContainerItemID;
    }

    auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    if ([auxiliaryStylingController canToggleTodo])
    {
      v166 = 1;
      goto LABEL_38;
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    isFirstResponder = [textView2 isFirstResponder];
    if ((isFirstResponder & 1) != 0 || ([(ICNoteEditorViewController *)self auxiliaryResponder], (folder = objc_claimAutoreleasedReturnValue()) != 0))
    {
      textView3 = [(ICNoteEditorViewController *)self textView];
      if ([textView3 ic_canChangeStyle])
      {
        auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        v166 = auxiliaryResponder2 == 0;

        if (isFirstResponder)
        {
          goto LABEL_37;
        }
      }

      else
      {

        v166 = 0;
        if (isFirstResponder)
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

    textView4 = [(ICNoteEditorViewController *)self textView];
    ic_shouldEnableBlockQuoteForAttachmentsOnlySelection = [textView4 ic_shouldEnableBlockQuoteForAttachmentsOnlySelection];

    if (ic_shouldEnableBlockQuoteForAttachmentsOnlySelection)
    {
      LODWORD(note10) = 0;
    }

    else
    {
      auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
      if ([auxiliaryStylingController2 canStyleText])
      {
        LODWORD(note10) = 0;
      }

      else
      {
        textView5 = [(ICNoteEditorViewController *)self textView];
        ic_canChangeStyle = [textView5 ic_canChangeStyle];

        LODWORD(note10) = ic_canChangeStyle ^ 1;
      }
    }

    note5 = [(ICNoteEditorBaseViewController *)self note];
    if (note5)
    {
      v165 = 0;
    }

    else
    {
      invitation2 = [(ICNoteEditorViewController *)self invitation];
      v165 = invitation2 == 0;
    }

    if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
    {
      mEMORY[0x277D75678] = [MEMORY[0x277D75678] sharedInstance];
      HIDWORD(v162) = [mEMORY[0x277D75678] isMinimized] ^ 1;
    }

    else
    {
      HIDWORD(v162) = 1;
    }

    traitCollection = [(ICNoteEditorViewController *)self traitCollection];
    ic_hasCompactWidth = [traitCollection ic_hasCompactWidth];

    ic_isVision = [MEMORY[0x277D75418] ic_isVision];
    ic_isiPhone = ic_isVision ^ 1u;
    if ((ic_isVision & 1) == 0 && (ic_hasCompactWidth & 1) == 0)
    {
      ic_isiPhone = [MEMORY[0x277D75418] ic_isiPhone];
    }

    ic_behavior = [(ICNoteEditorViewController *)self ic_behavior];
    if (_UISolariumEnabled() && [MEMORY[0x277D75418] ic_isiPad])
    {
      LODWORD(v162) = ICInternalSettingsIsDoneButtonHidingDisabled();
    }

    else
    {
      LODWORD(v162) = 1;
    }

    v37 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration setAccessibilityTextSizeEnabled:v37];

    ic_isVision2 = [MEMORY[0x277D75418] ic_isVision];
    v169 = animatedCopy;
    LODWORD(v170) = selectedContainerItemID;
    if (ic_isVision2)
    {
      navigationItemConfiguration = [(ICNoteEditorBaseViewController *)self note];
      if (navigationItemConfiguration)
      {
        v40 = 0;
        v41 = 1;
      }

      else
      {
        note4 = [(ICNoteEditorViewController *)self viewControllerManager];
        selectedContainerItemID = [note4 selectedContainerItemID];
        v41 = selectedContainerItemID != 0;
        v40 = 1;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    navigationItemConfiguration2 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration2 setCanShowPillOrnament:v41];

    if (v40)
    {
    }

    if (ic_isVision2)
    {
    }

    navigationItemConfiguration3 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration3 setCompact:ic_isiPhone];

    note6 = [(ICNoteEditorBaseViewController *)self note];
    isDeletedOrInTrash = [note6 isDeletedOrInTrash];
    navigationItemConfiguration4 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration4 setDeleted:isDeletedOrInTrash];

    ic_isVision3 = [MEMORY[0x277D75418] ic_isVision];
    if (ic_isVision3)
    {
      navigationItemConfiguration4 = [(ICNoteEditorViewController *)self viewControllerManager];
      ic_windowScene = [navigationItemConfiguration4 canTilePrimaryContent] ^ 1;
    }

    else
    {
      ic_windowScene = 0;
    }

    navigationItemConfiguration5 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration5 setHidesBackButton:ic_windowScene];

    if (ic_isVision3)
    {
    }

    navigationItemConfiguration6 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration6 setHidesDefaultCenterItems:ic_behavior == 1];

    traitCollection2 = [(ICNoteEditorViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
    if (userInterfaceIdiom)
    {
      v53 = 0;
    }

    else
    {
      ic_windowScene = [(ICNoteEditorViewController *)self ic_windowScene];
      note4 = [ic_windowScene effectiveGeometry];
      v53 = ([note4 interfaceOrientation] - 3) < 2;
    }

    navigationItemConfiguration7 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration7 setLandscape:v53];

    if (!userInterfaceIdiom)
    {
    }

    isEditingOnSecureScreen = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
    navigationItemConfiguration8 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration8 setInSecureScreen:isEditingOnSecureScreen];

    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    v58 = [viewControllerManager proposedMainSplitViewControllerDisplayMode] == 4;
    navigationItemConfiguration9 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration9 setInTripleColumnSplitView:v58];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v60 = 0;
    }

    else
    {
      v60 = ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone]^ 1) & v163;
    }

    v61 = ic_behavior == 1;
    navigationItemConfiguration10 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration10 setShowsDoneWhileEditing:v60];

    navigationItemConfiguration11 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration11 setShowsCalculatorModeButton:v61];

    if (_UISolariumEnabled())
    {
      v64 = [MEMORY[0x277D75418] ic_isVision] ^ 1;
    }

    else
    {
      v64 = 0;
    }

    navigationItemConfiguration12 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration12 setShowsAddNoteButtonOnLeadingEdge:v64];

    auxiliaryResponder3 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    navigationItemConfiguration13 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration13 setTableSelected:isKindOfClass & 1];

    ic_isVision4 = [MEMORY[0x277D75418] ic_isVision];
    if (ic_isVision4)
    {
      navigationItemConfiguration13 = [(ICNoteEditorViewController *)self viewControllerManager];
      note7 = [navigationItemConfiguration13 noteContainerViewMode] == 1;
    }

    else
    {
      note7 = 0;
    }

    navigationItemConfiguration14 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration14 setUsesCustomBackButton:note7];

    if (ic_isVision4)
    {
    }

    ic_isLargeiPad = [MEMORY[0x277D75418] ic_isLargeiPad];
    navigationItemConfiguration15 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration15 setUsesOnlyTrailingInputAssistantItems:ic_isLargeiPad & v164];

    ic_isVision5 = [MEMORY[0x277D75418] ic_isVision];
    navigationItemConfiguration16 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration16 setUsesPillOrnament:ic_isVision5];

    ic_isVision6 = [MEMORY[0x277D75418] ic_isVision];
    navigationItemConfiguration17 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration17 setUsesSidecarMenu:ic_isVision6];

    ic_isVision7 = [MEMORY[0x277D75418] ic_isVision];
    navigationItemConfiguration18 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration18 setUsesStyleMenu:ic_isVision7];

    usesContextualFormatBar = [(ICNoteEditorViewController *)self usesContextualFormatBar];
    navigationItemConfiguration19 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration19 setCanShowContextualFormatBar:usesContextualFormatBar];

    v82 = ([(ICNoteEditorViewController *)self isEditing]& 1) != 0 || [(ICNoteEditorViewController *)self didEndEditingForAddingImageAttachment];
    navigationItemConfiguration20 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration20 setEditing:v82];

    isWritingToolsShowing = [(ICNoteEditorViewController *)self isWritingToolsShowing];
    navigationItemConfiguration21 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration21 setWritingToolsVisible:isWritingToolsShowing];

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
        navigationItemConfiguration22 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
        inlineSketchEditingState = [navigationItemConfiguration22 inlineSketchEditingState];

        if (inlineSketchEditingState == 4)
        {
LABEL_101:
          firstResponder = [(ICNoteEditorViewController *)self firstResponder];
          objc_opt_class();
          v91 = objc_opt_isKindOfClass();

          v92 = v91 & ~([(ICNoteEditorViewController *)self isSplitViewExpandingOrCollapsing]| v168);
          navigationItemConfiguration23 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration23 setEditingTable:v92 & 1];

          isWritingToolsAvailable = [MEMORY[0x277D361D0] isWritingToolsAvailable];
          navigationItemConfiguration24 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration24 setCanShowWritingTools:isWritingToolsAvailable];

          if (isWritingToolsAvailable)
          {
            note7 = [(ICNoteEditorBaseViewController *)self note];
            v96 = [note7 isPasswordProtectedAndLocked] ^ 1;
          }

          else
          {
            v96 = 0;
          }

          navigationItemConfiguration25 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration25 setCanUseWritingTools:v96];

          if (isWritingToolsAvailable)
          {
          }

          v98 = v91 ^ 1;
          navigationItemConfiguration26 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration26 setCanAddChecklist:(v166 & v170 | v165) & (v91 ^ 1) & 1];

          navigationItemConfiguration27 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration27 setCanAddMedia:(v170 | v165) & 1];

          note8 = [(ICNoteEditorBaseViewController *)self note];
          isEmpty = [note8 isEmpty];
          if (isEmpty)
          {
            canAddNewNoteToSelectedContainers = 0;
          }

          else
          {
            note7 = [(ICNoteEditorViewController *)self viewControllerManager];
            canAddNewNoteToSelectedContainers = [note7 canAddNewNoteToSelectedContainers];
          }

          navigationItemConfiguration28 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration28 setCanAddNote:canAddNewNoteToSelectedContainers];

          if ((isEmpty & 1) == 0)
          {
          }

          v105 = (v170 ^ 1);

          if (v168)
          {
            v106 = 1;
          }

          else
          {
            note8 = [(ICNoteEditorViewController *)self auxiliaryResponder];
            v106 = note8 != 0;
          }

          navigationItemConfiguration29 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration29 setCanAddTable:v106];

          if ((v168 & 1) == 0)
          {
          }

          isEditingOnSecureScreen2 = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];
          navigationItemConfiguration30 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration30 setCanAddLink:!isEditingOnSecureScreen2];

          if ((note10 | v105))
          {
            v110 = 0;
          }

          else
          {
            v110 = [(ICNoteEditorViewController *)self isEditing]& v98;
          }

          navigationItemConfiguration31 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration31 setCanChangeStyle:v110];

          LODWORD(navigationItemConfiguration31) = [MEMORY[0x277D75418] ic_isVision];
          navigationItemConfiguration32 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration32 setCanCustomizeCenterItems:navigationItemConfiguration31 ^ 1];

          passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
          if (!passwordEntryViewController || (-[ICNoteEditorViewController passwordEntryViewController](self, "passwordEntryViewController"), v170 = objc_claimAutoreleasedReturnValue(), [v170 isAnimatingOut]))
          {
            invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];
            if (invitationViewController)
            {
              v105 = invitationViewController;
              v115 = 0;
              v116 = 0;
              v117 = 0;
              isEditable = 0;
              v114 = 1;
            }

            else
            {
              unsupportedNoteView2 = [(ICNoteEditorViewController *)self unsupportedNoteView];
              if (unsupportedNoteView2)
              {
                v106 = unsupportedNoteView2;
                v105 = 0;
                v116 = 0;
                v117 = 0;
                isEditable = 0;
                v114 = 1;
                v115 = 1;
              }

              else
              {
                note9 = [(ICNoteEditorBaseViewController *)self note];
                if (note9)
                {
                  v168 = note9;
                  note10 = [(ICNoteEditorBaseViewController *)self note];
                  isEditable = [note10 isEditable];
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
                  isEditable = 1;
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
            isEditable = 0;
          }

          navigationItemConfiguration33 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
          [navigationItemConfiguration33 setCanInlineSketch:isEditable];

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

            if (!passwordEntryViewController)
            {
LABEL_140:

              note11 = [(ICNoteEditorBaseViewController *)self note];
              isEmpty2 = [note11 isEmpty];
              navigationItemConfiguration34 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [navigationItemConfiguration34 setCanSaveQuickNote:isEmpty2 ^ 1u];

              invitation3 = [(ICNoteEditorViewController *)self invitation];
              if (invitation3)
              {
                isSharable = 0;
              }

              else
              {
                navigationItemConfiguration34 = [(ICNoteEditorBaseViewController *)self note];
                isSharable = [navigationItemConfiguration34 isSharable];
              }

              navigationItemConfiguration35 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [navigationItemConfiguration35 setCanShare:isSharable];

              if (!invitation3)
              {
              }

              magicGenerativePlaygroundUndoManager = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
              v130 = magicGenerativePlaygroundUndoManager;
              if (magicGenerativePlaygroundUndoManager)
              {
                undoManager = magicGenerativePlaygroundUndoManager;
              }

              else
              {
                textView6 = [(ICNoteEditorViewController *)self textView];
                undoManager = [textView6 undoManager];
              }

              note12 = [(ICNoteEditorBaseViewController *)self note];
              if ([note12 isEditable])
              {
                canRedo = [undoManager canRedo];
              }

              else
              {
                canRedo = 0;
              }

              navigationItemConfiguration36 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [navigationItemConfiguration36 setCanRedo:canRedo];

              note13 = [(ICNoteEditorBaseViewController *)self note];
              if ([note13 isEditable])
              {
                canUndo = [undoManager canUndo];
              }

              else
              {
                canUndo = 0;
              }

              navigationItemConfiguration37 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [navigationItemConfiguration37 setCanUndo:canUndo];

              viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
              isAuxiliary = [viewControllerManager2 isAuxiliary];

              if (isAuxiliary)
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

              navigationItemConfiguration38 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
              [navigationItemConfiguration38 setAuxiliaryWindowType:v140];

              note14 = [(ICNoteEditorBaseViewController *)self note];
              if ([note14 isPasswordProtected])
              {
                note15 = [(ICNoteEditorBaseViewController *)self note];
                isUnsupported = [note15 isUnsupported];

                if (isUnsupported)
                {
                  v145 = 0;
LABEL_169:
                  navigationItemConfiguration39 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [navigationItemConfiguration39 setLockState:v145];

                  if ([(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPhone])
                  {
                    isEditingOnSystemPaperOnPad = 2;
                  }

                  else
                  {
                    isEditingOnSystemPaperOnPad = [(ICNoteEditorViewController *)self isEditingOnSystemPaperOnPad];
                  }

                  navigationItemConfiguration40 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [navigationItemConfiguration40 setQuickNoteType:isEditingOnSystemPaperOnPad];

                  if ([MEMORY[0x277D75418] ic_isiPad])
                  {
                    viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
                    proposedMainSplitViewControllerDisplayMode = [viewControllerManager3 proposedMainSplitViewControllerDisplayMode];

                    icSplitViewController = [(ICNoteEditorViewController *)self icSplitViewController];
                    traitCollection3 = [icSplitViewController traitCollection];
                    horizontalSizeClass = [traitCollection3 horizontalSizeClass];

                    v155 = proposedMainSplitViewControllerDisplayMode != 2 || horizontalSizeClass == 1;
                  }

                  else
                  {
                    v155 = 1;
                  }

                  hasMadeEdits = [(ICNoteEditorViewController *)self hasMadeEdits];
                  v157 = v145 != 1 && hasMadeEdits;
                  navigationItemConfiguration41 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [navigationItemConfiguration41 setCanShowUndoRedo:v157 & v155];

                  navigationItemConfiguration42 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  [navigationItemConfiguration42 updateAnimated:v169];

                  navigationItemConfiguration43 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
                  textView7 = [(ICNoteEditorViewController *)self textView];
                  [navigationItemConfiguration43 updateFormatBarButtonsForChangeInTextView:textView7];

                  return;
                }

                note14 = [(ICNoteEditorBaseViewController *)self note];
                if ([note14 isAuthenticated])
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
          if (!passwordEntryViewController)
          {
            goto LABEL_140;
          }

          goto LABEL_139;
        }
      }

      v86 = 0;
    }

    navigationItemConfiguration44 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration44 setInlineSketchEditingState:v86];

    goto LABEL_101;
  }
}

- (void)updateFormatToolbarLayoutWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [textViewInputAccessoryView updateLayoutWithSize:{width, height}];
  }
}

- (void)undoAction:(id)action
{
  magicGenerativePlaygroundUndoManager = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];

  if (magicGenerativePlaygroundUndoManager)
  {
    magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
    [magicGenerativePlaygroundUndoManager2 undo];
  }

  else
  {
    magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self textView];
    undoManager = [magicGenerativePlaygroundUndoManager2 undoManager];
    if ([undoManager canUndo])
    {
      isDrawingStroke = [(ICNoteEditorViewController *)self isDrawingStroke];

      if (isDrawingStroke)
      {
        return;
      }

      magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self textView];
      undoManager2 = [magicGenerativePlaygroundUndoManager2 undoManager];
      [undoManager2 undo];
    }

    else
    {
    }
  }
}

- (void)redoAction:(id)action
{
  magicGenerativePlaygroundUndoManager = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];

  if (magicGenerativePlaygroundUndoManager)
  {
    magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self magicGenerativePlaygroundUndoManager];
    [magicGenerativePlaygroundUndoManager2 redo];
  }

  else
  {
    magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self textView];
    undoManager = [magicGenerativePlaygroundUndoManager2 undoManager];
    if ([undoManager canRedo])
    {
      isDrawingStroke = [(ICNoteEditorViewController *)self isDrawingStroke];

      if (isDrawingStroke)
      {
        return;
      }

      magicGenerativePlaygroundUndoManager2 = [(ICNoteEditorViewController *)self textView];
      undoManager2 = [magicGenerativePlaygroundUndoManager2 undoManager];
      [undoManager2 redo];
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
    note = [(ICNoteEditorBaseViewController *)self note];
    updateLastViewedTimestampWithCurrentTimestamp = [note updateLastViewedTimestampWithCurrentTimestamp];

    if (updateLastViewedTimestampWithCurrentTimestamp)
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      [note2 saveAfterDelay];
    }
  }

  note3 = [(ICNoteEditorBaseViewController *)self note];
  recordID = [note3 recordID];

  if (recordID)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ICNoteEditorViewController_updateLastViewedMetadataIfNessessary__block_invoke;
    block[3] = &unk_2781ABCF8;
    v10 = recordID;
    dispatch_async(v8, block);
  }
}

- (void)localeChanged:(id)changed
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    textStorage = [note textStorage];

    v6 = *MEMORY[0x277D35DA8];
    v7 = [textStorage length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ICNoteEditorViewController_localeChanged___block_invoke;
    v9[3] = &unk_2781ACC80;
    v10 = textStorage;
    v8 = textStorage;
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
  textView = [(ICNoteEditorViewController *)self textView];
  ic_selectedRanges = [textView ic_selectedRanges];

  obj = ic_selectedRanges;
  v22 = [ic_selectedRanges countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        note = [(ICNoteEditorBaseViewController *)self note];
        textStorage = [note textStorage];
        string = [textStorage string];
        rangeValue = [v7 rangeValue];
        v13 = [string paragraphRangeForRange:{rangeValue, v12}];
        v15 = v14;

        if (v13 < v13 + v15)
        {
          v16 = v13;
          while (1)
          {
            v25 = 0;
            v26 = 0;
            note2 = [(ICNoteEditorBaseViewController *)self note];
            textStorage2 = [note2 textStorage];
            v19 = [textStorage2 attribute:*v5 atIndex:v16 longestEffectiveRange:&v25 inRange:{v13, v15}];

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

- (void)addKVOObserversForNote:(id)note
{
  v15 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  [noteCopy ic_addObserver:self forKeyPath:@"noteHasChanges" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"modificationDate" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"lastActivitySummaryViewedDate" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"attachmentViewType" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"paperStyleType" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"isEmpty" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"serverShareData" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"isSharedViaICloud" context:&compoundliteral_3033];
  [noteCopy ic_addObserver:self forKeyPath:@"prefersLightBackground" context:&compoundliteral_3031];
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

        [noteCopy ic_addObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) context:&compoundliteral_3035];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeKVOObserversForNote:(id)note
{
  v15 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  [noteCopy ic_removeObserver:self forKeyPath:@"noteHasChanges" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"modificationDate" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"lastActivitySummaryViewedDate" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"attachmentViewType" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"paperStyleType" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"isEmpty" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"serverShareData" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"isSharedViaICloud" context:&compoundliteral_3033];
  [noteCopy ic_removeObserver:self forKeyPath:@"prefersLightBackground" context:&compoundliteral_3031];
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

        [noteCopy ic_removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) context:&compoundliteral_3035];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setNote:(id)note overrideScrollState:(id)state startEditing:(BOOL)editing
{
  editingCopy = editing;
  noteCopy = note;
  stateCopy = state;
  if (stateCopy)
  {
    [(ICNoteEditorViewController *)self setArchivedScrollStateToApply:stateCopy];
  }

  [(ICNoteEditorViewController *)self setNote:noteCopy delayedForLaunch:0 startEditing:editingCopy successHandler:0];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    archivedScrollStateToApply = [(ICNoteEditorViewController *)self archivedScrollStateToApply];

    if (archivedScrollStateToApply)
    {
      [(ICNoteEditorViewController *)self applyScrollStateIfAvailable];
    }
  }
}

- (void)setNote:(id)note delayedForLaunch:(BOOL)launch startEditing:(BOOL)editing successHandler:(id)handler
{
  editingCopy = editing;
  launchCopy = launch;
  v150[2] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  handlerCopy = handler;
  [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:1];
  textViewController = [(ICNoteEditorViewController *)self textViewController];
  [textViewController setIgnoresTaps:0];

  unsupportedNoteTapGestureRecognizer = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];

  if (unsupportedNoteTapGestureRecognizer)
  {
    view = [(ICNoteEditorViewController *)self view];
    unsupportedNoteTapGestureRecognizer2 = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];
    [view removeGestureRecognizer:unsupportedNoteTapGestureRecognizer2];

    [(ICNoteEditorViewController *)self setUnsupportedNoteTapGestureRecognizer:0];
  }

  if ([noteCopy isUnsupported] && objc_msgSend(noteCopy, "isDeletedOrInTrash"))
  {
    v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_showRecoverNoteAlert];
    [(ICNoteEditorViewController *)self setUnsupportedNoteTapGestureRecognizer:v14];

    view2 = [(ICNoteEditorViewController *)self view];
    unsupportedNoteTapGestureRecognizer3 = [(ICNoteEditorViewController *)self unsupportedNoteTapGestureRecognizer];
    [view2 addGestureRecognizer:unsupportedNoteTapGestureRecognizer3];
  }

  if (noteCopy && [MEMORY[0x277D75418] ic_isVision])
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([viewControllerManager isMainSplitViewDisplayModeSecondaryOnly])
    {
      isAuxiliary = 1;
    }

    else
    {
      viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
      isAuxiliary = [viewControllerManager2 isAuxiliary];
    }

    viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
    v21 = [viewControllerManager3 noteContainerViewMode] == 0;

    viewControllerManager4 = [(ICNoteEditorViewController *)self viewControllerManager];
    v23 = ([viewControllerManager4 noteContainerViewMode] == 1) | isAuxiliary;

    [(ICNoteEditorViewController *)self updateContentViewBezelsStandalone:isAuxiliary needsAdditionalBottomMargin:v21 needsAdditionalLeadingMargin:v23 & 1 force:0];
  }

  if ([noteCopy isSharedReadOnly])
  {
    isSharedAndEmpty = 1;
  }

  else
  {
    isSharedAndEmpty = [noteCopy isSharedAndEmpty];
  }

  [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:isSharedAndEmpty];
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note != noteCopy)
  {
    [(ICNoteEditorViewController *)self setHasMadeEdits:0];
    shouldTrackNoteViewEventAnalyticsFromSettingNote = [(ICNoteEditorViewController *)self shouldTrackNoteViewEventAnalyticsFromSettingNote];
    if (note)
    {
      if (shouldTrackNoteViewEventAnalyticsFromSettingNote)
      {
        viewIfLoaded = [(ICNoteEditorViewController *)self viewIfLoaded];
        window = [viewIfLoaded window];

        if (window)
        {
          [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:note];
        }
      }
    }

    [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];
    [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
    v28 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController setNote:noteCopy delayedForLaunch:? startEditing:? successHandler:?];
    }

    mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
    [mEMORY[0x277D35E50] extendDeauthenticationTimer];

    presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];
    objc_opt_class();
    v30 = ICDynamicCast();
    v131 = v30;
    if (v30)
    {
      shouldDismissWhenShowingNote = [v30 shouldDismissWhenShowingNote];
    }

    else
    {
      shouldDismissWhenShowingNote = 1;
    }

    if (NSClassFromString(&cfstr_Icallownotific.isa))
    {
      shouldDismissWhenShowingNote &= objc_opt_isKindOfClass() ^ 1;
    }

    if ((shouldDismissWhenShowingNote & 1) != 0 && presentedViewController)
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
    linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
    if (linkAcceleratorController)
    {
      if ([linkAcceleratorController isShowing])
      {
        [linkAcceleratorController hideAccelerator];
      }

      [linkAcceleratorController setLinkDelegate:0];
    }

    [(ICNoteEditorViewController *)self setLinkAcceleratorController:0];
    linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController2 setLinkDelegate:0];

    if (note)
    {
      [(ICNoteEditorViewController *)self setInkPickerState:2];
      [(ICNoteEditorViewController *)self showInkPicker:0 animated:0];
      [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
      mEMORY[0x277D36860] = [MEMORY[0x277D36860] sharedController];
      [mEMORY[0x277D36860] sendPendingNotifications];

      [note markActivitySummaryViewed];
      if ([note isPasswordProtected])
      {
        account = [note account];
        accountData = [account accountData];
        cryptoPassphraseVerifier = [accountData cryptoPassphraseVerifier];
        v39 = cryptoPassphraseVerifier == 0;

        if (!v39)
        {
          mEMORY[0x277D36830] = [MEMORY[0x277D36830] sharedMigrator];
          [mEMORY[0x277D36830] migrateNoteToV1NeoIfNeeded:note completionHandler:&__block_literal_global_834];
        }
      }

      [(ICNoteEditorViewController *)self presentRecordingStoppedAlertForNoteIfNeeded:note];
    }

    [(ICNoteEditorViewController *)self showStyleSelector:0 animated:0];
    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    [(ICNoteEditorViewController *)self tearDownAudioPlayers];
    [(ICNoteEditorViewController *)self saveCurrentScrollState];
    +[ICMovieController stopIfPlaying];
    if (launchCopy)
    {
      textStorage = [noteCopy textStorage];
      v42 = [textStorage length] > 0x10000;

      if (v42)
      {
        v43 = noteCopy;
        v44 = [handlerCopy copy];
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

        noteCopy = 0;
      }
    }

    isEditing = [(ICNoteEditorViewController *)self isEditing];
    if (isEditing)
    {
      [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
      [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:?];
    }

    v50 = MEMORY[0x277D35CC0];
    v51 = MEMORY[0x277D364D0];
    v52 = MEMORY[0x277D36590];
    if (note)
    {
      [(ICNoteEditorViewController *)self removeKVOObserversForNote:?];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:*v50 object:note];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D35CF8] object:note];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D35C60] object:note];
      calculateDocumentController = [note calculateDocumentController];
      [defaultCenter removeObserver:self name:*v51 object:calculateDocumentController];

      [defaultCenter removeObserver:self name:*v52 object:note];
      if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
      {
        objc_opt_class();
        textView = [(ICNoteEditorViewController *)self textView];
        layoutManager = [textView layoutManager];
        v57 = ICCheckedDynamicCast();

        [v57 clearAllSupplementalViews];
      }

      textController = [(ICNoteEditorViewController *)self textController];
      [textController resetTrackedToDoParagraphs];

      calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
      [calculateRecognitionController discardPreviewedResult];

      [(ICNoteEditorViewController *)self setNoteAndFolderChangeController:0];
      [(ICNoteEditorViewController *)self setInlineAttachmentChangeController:0];
      v60 = +[ICSystemPaperDocumentController sharedInstance];
      [v60 removePresenter:self];

      if ([(ICNoteEditorBaseViewController *)self viewAppearanceState]<= 1)
      {
        goto LABEL_56;
      }

      [(ICNoteEditorViewController *)self noteWillDisappear:note];
      if (!noteCopy)
      {
LABEL_61:
        [(ICNoteEditorViewController *)self resetTextViewUndoManager];
        v62 = noteCopy != 0;
LABEL_62:
        previousNote = [(ICNoteEditorViewController *)self previousNote];
        v65 = noteCopy == previousNote;

        if (!v65)
        {
          previousNote2 = [(ICNoteEditorViewController *)self previousNote];
          [previousNote2 setHandwritingRecognitionEnabled:0];
        }

        [(ICNoteEditorViewController *)self setPreviousNote:note];
        v144.receiver = self;
        v144.super_class = ICNoteEditorViewController;
        [(ICNoteEditorBaseViewController *)&v144 setNote:noteCopy];
        [(ICNoteEditorViewController *)self setLastSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0];
        if ([noteCopy needsRefresh])
        {
          [(ICNoteEditorViewController *)self fetchAll];
        }

        mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
        [mEMORY[0x277D35F30] setCurrentNote:noteCopy];

        if (v62)
        {
          [(ICNoteEditorViewController *)self addKVOObserversForNote:noteCopy];
          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter2 addObserver:self selector:sel_attachmentsExceeded_ name:*v50 object:noteCopy];
          [defaultCenter2 addObserver:self selector:sel_mergeRelatedOperationsDidEnd_ name:*MEMORY[0x277D35CF8] object:noteCopy];
          [defaultCenter2 addObserver:self selector:sel_inlineAttachmentDeleted_ name:*MEMORY[0x277D35C60] object:noteCopy];
          calculateDocumentController2 = [noteCopy calculateDocumentController];
          [defaultCenter2 addObserver:self selector:sel_calculateDocumentControllerDidUpdateHighlights_ name:*v51 object:calculateDocumentController2];

          [defaultCenter2 addObserver:self selector:sel_noteDidChangeCalculatePreviewBehaviorNotification_ name:*v52 object:noteCopy];
          [(ICNoteEditorViewController *)self setInvitation:0];
          v70 = objc_alloc(MEMORY[0x277D36840]);
          v71 = MEMORY[0x277CBEB98];
          managedObjectContext = [noteCopy managedObjectContext];
          v73 = [v71 setWithObject:managedObjectContext];
          v74 = [v70 initWithManagedObjectContexts:v73 delegate:self];
          [(ICNoteEditorViewController *)self setNoteAndFolderChangeController:v74];

          noteAndFolderChangeController = [(ICNoteEditorViewController *)self noteAndFolderChangeController];
          [noteAndFolderChangeController setObjectTypes:9];

          v76 = objc_alloc(MEMORY[0x277D36840]);
          v77 = MEMORY[0x277CBEB98];
          managedObjectContext2 = [noteCopy managedObjectContext];
          v79 = [v77 setWithObject:managedObjectContext2];
          v80 = [v76 initWithManagedObjectContexts:v79 delegate:self];
          [(ICNoteEditorViewController *)self setInlineAttachmentChangeController:v80];

          v81 = +[ICSystemPaperDocumentController sharedInstance];
          [v81 addPresenter:self];
        }

        if ([(ICNoteEditorBaseViewController *)self viewAppearanceState]>= 2)
        {
          previousNote3 = [(ICNoteEditorViewController *)self previousNote];

          if (previousNote3)
          {
            previousNote4 = [(ICNoteEditorViewController *)self previousNote];
            [(ICNoteEditorBaseViewController *)self noteDidDisappear:previousNote4];
          }

          if (v62 && [(ICNoteEditorBaseViewController *)self viewAppearanceState]== 3)
          {
            [(ICNoteEditorBaseViewController *)self noteDidAppear:noteCopy];
          }
        }

        [(ICNoteEditorViewController *)self recreateTextViewIfNecessary];
        [(ICNoteEditorViewController *)self showOrHidePasswordEntryViewControllerIfNeeded];
        [(ICNoteEditorViewController *)self updateUnsupportedNoteView];
        defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
        v149[0] = *MEMORY[0x277D35CF0];
        previousNote5 = [(ICNoteEditorViewController *)self previousNote];
        null = previousNote5;
        if (!previousNote5)
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        v150[0] = null;
        v149[1] = *MEMORY[0x277D35CE8];
        null2 = noteCopy;
        if (!v62)
        {
          null2 = [MEMORY[0x277CBEB68] null];
        }

        v150[1] = null2;
        v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
        [defaultCenter3 postNotificationName:*MEMORY[0x277D35CE0] object:self userInfo:v88];

        if (!v62)
        {
        }

        if (!previousNote5)
        {
        }

        previousNote6 = [(ICNoteEditorViewController *)self previousNote];
        isPasswordProtectedAndLocked = [previousNote6 isPasswordProtectedAndLocked];

        if ((isPasswordProtectedAndLocked & 1) == 0)
        {
          previousNote7 = [(ICNoteEditorViewController *)self previousNote];
          calculateDocumentController3 = [previousNote7 calculateDocumentController];
          [calculateDocumentController3 resetHighlights];
        }

        textView2 = [(ICNoteEditorViewController *)self textView];
        [textView2 setEditable:0];

        noteUserActivity = [(ICNoteEditorViewController *)self noteUserActivity];
        [noteUserActivity setDelegate:0];

        noteUserActivity2 = [(ICNoteEditorViewController *)self noteUserActivity];
        [noteUserActivity2 invalidate];

        [(ICNoteEditorViewController *)self setNoteUserActivity:0];
        [(ICNoteEditorViewController *)self setNoteUserActivityState:0];
        if (v62)
        {
          updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
          [updateNoteUserActivityStateDelayer requestFire];
        }

        if ([(ICNoteEditorViewController *)self ic_isViewVisible])
        {
          [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:0];
          if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
          {
            [(ICNoteEditorViewController *)self resetTextViewContentOffset];
            textViewController2 = [(ICNoteEditorViewController *)self textViewController];
            [textViewController2 applyInitialScrollState];
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

        [(ICNoteEditorViewController *)self setEditing:isEditing & v62 | editingCopy];
        [(ICNoteEditorViewController *)self rememberNoteContentForEditingIntent];
        note2 = [(ICNoteEditorBaseViewController *)self note];
        [note2 mergeUnappliedEncryptedRecordRecursivelyInBackground];

        [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:0];
        [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
        [(ICNoteEditorViewController *)self setNeedsInitialBarConfiguration:0];
        if ([(ICNoteEditorViewController *)self _appearState]== 2)
        {
          [(ICNoteEditorViewController *)self resetBarButtonsAnimated:0];
        }

        [(ICNoteEditorViewController *)self updateActionMenu];
        if (handlerCopy)
        {
          handlerCopy[2]();
        }

        [(ICNoteEditorViewController *)self updateDataOwnerForCopyAndPaste];
        textView3 = [(ICNoteEditorViewController *)self textView];
        dateView = [textView3 dateView];
        [dateView setNote:noteCopy];

        textView4 = [(ICNoteEditorViewController *)self textView];
        userTitleView = [textView4 userTitleView];
        [userTitleView setNote:noteCopy];

        textView5 = [(ICNoteEditorViewController *)self textView];
        [textView5 icaxClearCaches];

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

        inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];

        if (inkPaletteController)
        {
          [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
        }

        [(ICNoteEditorViewController *)self updateDrawingAttachmentsIfNeeded];
        [(ICNoteEditorViewController *)self showOrHideActivityStreamToolbarIfNeeded];
        [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
        [(ICNoteEditorViewController *)self updateAuthorHighlightsIfNeeded];
        modificationDate = [noteCopy modificationDate];
        [(ICNoteEditorViewController *)self setNoteLastModificationDate:modificationDate];

        if ((v62 & [(ICNoteEditorViewController *)self shouldTrackNoteViewEventAnalyticsFromSettingNote]) == 1)
        {
          viewIfLoaded2 = [(ICNoteEditorViewController *)self viewIfLoaded];
          window2 = [viewIfLoaded2 window];
          v110 = window2 == 0;

          if (!v110)
          {
            eventReporter = [(ICNoteEditorViewController *)self eventReporter];
            [eventReporter startNoteViewEventDurationTrackingForModernNote:noteCopy reportCoreAnalytics:1];
          }
        }

        previousNote8 = [(ICNoteEditorViewController *)self previousNote];

        if (previousNote8)
        {
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          previousNote9 = [(ICNoteEditorViewController *)self previousNote];
          attachments = [previousNote9 attachments];

          v115 = [attachments countByEnumeratingWithState:&v137 objects:v148 count:16];
          if (v115)
          {
            v116 = *v138;
            do
            {
              for (i = 0; i != v115; ++i)
              {
                if (*v138 != v116)
                {
                  objc_enumerationMutation(attachments);
                }

                v118 = *(*(&v137 + 1) + 8 * i);
                if (([v118 hasChanges] & 1) == 0)
                {
                  managedObjectContext3 = [v118 managedObjectContext];
                  [managedObjectContext3 ic_refreshObject:v118 mergeChanges:0];
                }
              }

              v115 = [attachments countByEnumeratingWithState:&v137 objects:v148 count:16];
            }

            while (v115);
          }

          previousNote10 = [(ICNoteEditorViewController *)self previousNote];
          hasChanges = [previousNote10 hasChanges];

          if ((hasChanges & 1) == 0)
          {
            previousNote11 = [(ICNoteEditorViewController *)self previousNote];
            managedObjectContext4 = [previousNote11 managedObjectContext];
            previousNote12 = [(ICNoteEditorViewController *)self previousNote];
            [managedObjectContext4 ic_refreshObject:previousNote12 mergeChanges:0];
          }
        }

        if ([noteCopy isPasswordProtected])
        {
          mEMORY[0x277D35F50] = [MEMORY[0x277D35F50] sharedController];
          account2 = [noteCopy account];
          [mEMORY[0x277D35F50] reaskPasswordForAccountIfNecessary:account2];
        }

        isEditable = [noteCopy isEditable];
        textView6 = [(ICNoteEditorViewController *)self textView];
        [textView6 setDisplayingEditableContent:isEditable];

        bluetoothKeyboardHintViewController = [(ICNoteEditorViewController *)self bluetoothKeyboardHintViewController];
        [bluetoothKeyboardHintViewController hide];

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
      viewAppearanceState = [(ICNoteEditorBaseViewController *)self viewAppearanceState];
      if (!noteCopy || viewAppearanceState < 2)
      {
        goto LABEL_61;
      }
    }

    [(ICNoteEditorViewController *)self noteWillAppear:noteCopy];
LABEL_56:
    [(ICNoteEditorViewController *)self resetTextViewUndoManager];
    v62 = noteCopy != 0;
    if (noteCopy)
    {
      v63 = note != 0;
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
    attributionSidebarView = [(ICNoteEditorViewController *)self attributionSidebarView];
    [attributionSidebarView reload];
  }

  [(ICNoteEditorViewController *)self setSuspendBarButtonUpdates:0];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:[(ICNoteEditorViewController *)self ic_isViewVisible]];
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  [passwordEntryViewController setIsAnimatingOut:0];

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
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v4 = ICDynamicCast();

  v5 = [(ICNoteEditorViewController *)self getTableControllerFor:v4];

  return v5;
}

- (void)presentRecordingStoppedAlertForNoteIfNeeded:(id)needed
{
  neededCopy = needed;
  currentAttachment = [MEMORY[0x277D366C8] currentAttachment];
  note = [currentAttachment note];

  if (note == neededCopy)
  {
    v7 = MEMORY[0x277D366C8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__ICNoteEditorViewController_presentRecordingStoppedAlertForNoteIfNeeded___block_invoke;
    v8[3] = &unk_2781AD020;
    v8[4] = self;
    v9 = neededCopy;
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
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  note = [(ICNoteEditorBaseViewController *)self note];
  [(ICNoteEditorViewController *)self setNote:0];
  [(ICNoteEditorViewController *)self setNote:note];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setSelectedRange:{selectedRange, v6}];
}

- (void)noteDidDeauthenticateAfterMerge:(id)merge
{
  mergeCopy = merge;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    object = [mergeCopy object];
    note = [(ICNoteEditorBaseViewController *)self note];

    if (object == note)
    {
      [(ICNoteEditorViewController *)self noteDecryptedStatusDidChange:mergeCopy];
    }
  }
}

- (void)noteDecryptedStatusDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35C40]];
  v7 = ICCheckedDynamicCast();

  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  if ([mEMORY[0x277D35E50] isBlockingDeauthentication])
  {
  }

  else
  {
    if (v7)
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      objectID = [note objectID];
      v11 = [v7 isEqual:objectID];

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
  shouldForceLightContent = [(ICNoteEditorViewController *)self shouldForceLightContent];
  textView = [(ICNoteEditorViewController *)self textView];
  backgroundColor = [textView backgroundColor];
  v6 = backgroundColor;
  if (backgroundColor)
  {
    ic_noteEditorBackgroundColor = backgroundColor;
  }

  else
  {
    ic_noteEditorBackgroundColor = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  }

  v8 = ic_noteEditorBackgroundColor;

  v9 = MEMORY[0x277D75348];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__ICNoteEditorViewController_dynamicBarColor__block_invoke;
  v13[3] = &unk_2781AD148;
  v15 = shouldForceLightContent;
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

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (_UISolariumEnabled() && ([MEMORY[0x277D75418] ic_isVision] & 1) == 0)
  {
    traitCollection = [(ICNoteEditorViewController *)self traitCollection];
    if ([traitCollection ic_hasCompactSize])
    {
      ic_isPerformingNotesActivity = [MEMORY[0x277D75D28] ic_isPerformingNotesActivity];

      if (ic_isPerformingNotesActivity)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:animatedCopy ^ 1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __72__ICNoteEditorViewController_presentViewController_animated_completion___block_invoke;
        v15[3] = &unk_2781ABCF8;
        v15[4] = self;
        [MEMORY[0x277CD9FF0] setCompletionBlock:v15];
        navigationController = [(ICNoteEditorViewController *)self navigationController];
        [navigationController setToolbarHidden:1];

        textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
        [textViewInputAccessoryView setContentVisible:0];

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          [(ICNoteEditorViewController *)self setEditing:0 animated:animatedCopy];
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
  [(ICNoteEditorViewController *)&v14 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
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
  presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];
  view = [presentedViewController view];
  [view setHidden:1];

  v5 = objc_opt_class();
  presentedViewController2 = [(ICNoteEditorViewController *)self presentedViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICNoteEditorViewController_hideAndDismissPresentedViewController__block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [v5 dismissChildPresentedViewControllersInPostOrder:presentedViewController2 animated:0 completion:v7];
}

+ (void)dismissChildPresentedViewControllersInPostOrder:(id)order animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  orderCopy = order;
  completionCopy = completion;
  presentedViewController = [orderCopy presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [orderCopy presentedViewController];
    [self dismissChildPresentedViewControllersInPostOrder:presentedViewController2 animated:0 completion:0];
  }

  [orderCopy dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)resetTextViewContentOffset
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView contentOffset];
  v5 = v4;

  [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
  v7 = -v6;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICNoteEditorViewController *)self ic_safeAreaDistanceFromTop];
    v7 = v7 - v8;
  }

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 resetContentOffset:{v5, v7}];
}

- (int64_t)currentWritingDirection
{
  textView = [(ICNoteEditorViewController *)self textView];
  ic_currentWritingDirection = [textView ic_currentWritingDirection];

  return ic_currentWritingDirection;
}

- (BOOL)ignoresTaps
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    return self->_ignoresTaps;
  }

  textViewController = [(ICNoteEditorViewController *)self textViewController];
  ignoresTaps = [textViewController ignoresTaps];

  return ignoresTaps;
}

- (void)setIgnoresTaps:(BOOL)taps
{
  tapsCopy = taps;
  v30 = *MEMORY[0x277D85DE8];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    self->_ignoresTaps = tapsCopy;
    if (tapsCopy)
    {
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      textView = [(ICNoteEditorViewController *)self textView];
      subviews = [textView subviews];

      v7 = [subviews countByEnumeratingWithState:&v24 objects:v29 count:16];
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
              objc_enumerationMutation(subviews);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            if ([v11 isUserInteractionEnabled])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                enabledSubviews = [(ICNoteEditorViewController *)self enabledSubviews];
                [enabledSubviews addObject:v11];

                [v11 setUserInteractionEnabled:0];
              }
            }
          }

          v8 = [subviews countByEnumeratingWithState:&v24 objects:v29 count:16];
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
      enabledSubviews2 = [(ICNoteEditorViewController *)self enabledSubviews];
      v14 = [enabledSubviews2 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
              objc_enumerationMutation(enabledSubviews2);
            }

            [*(*(&v20 + 1) + 8 * j) setUserInteractionEnabled:1];
          }

          v15 = [enabledSubviews2 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v15);
      }

      subviews = [(ICNoteEditorViewController *)self enabledSubviews];
      [subviews removeAllObjects];
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setSelectable:tapsCopy ^ 1];
  }

  else
  {
    textViewController = [(ICNoteEditorViewController *)self textViewController];
    [textViewController setIgnoresTaps:tapsCopy];
  }
}

- (ICAttributionSidebarView)attributionSidebarView
{
  textViewController = [(ICNoteEditorViewController *)self textViewController];
  attributionSidebarView = [textViewController attributionSidebarView];

  return attributionSidebarView;
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

- (void)setInvitation:(id)invitation
{
  invitationCopy = invitation;
  invitation = [(ICNoteEditorViewController *)self invitation];

  if (invitation != invitationCopy)
  {
    shareURL = [invitationCopy shareURL];

    if (!shareURL)
    {
      v7 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "The invitation was likely dismissed/deleted causing the shareURL to be empty. This is an invalid state, and the invitation will be removed from the editor.", buf, 2u);
      }

      invitationCopy = 0;
    }

    objc_storeStrong(&self->_invitation, invitationCopy);
    if (invitationCopy)
    {
      [(ICNoteEditorViewController *)self setNote:0];
      textView = [(ICNoteEditorViewController *)self textView];
      [textView setHidden:1];

      invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];

      if (!invitationViewController)
      {
        v10 = objc_alloc_init(ICInvitationViewController);
        [(ICNoteEditorViewController *)self setInvitationViewController:v10];

        invitationViewController2 = [(ICNoteEditorViewController *)self invitationViewController];
        view = [invitationViewController2 view];
        [view setAutoresizingMask:18];

        view2 = [(ICNoteEditorViewController *)self view];
        [view2 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        invitationViewController3 = [(ICNoteEditorViewController *)self invitationViewController];
        view3 = [invitationViewController3 view];
        [view3 setFrame:{v15, v17, v19, v21}];

        invitationViewController4 = [(ICNoteEditorViewController *)self invitationViewController];
        [(ICNoteEditorViewController *)self addChildViewController:invitationViewController4];

        backgroundView = [(ICNoteEditorViewController *)self backgroundView];
        invitationViewController5 = [(ICNoteEditorViewController *)self invitationViewController];
        view4 = [invitationViewController5 view];
        [backgroundView addSubviewAboveAllViews:view4];
      }

      objc_initWeak(buf, self);
      invitationViewController6 = [(ICNoteEditorViewController *)self invitationViewController];
      [invitationViewController6 setInvitation:invitationCopy];

      highlight = [invitationCopy highlight];
      invitationViewController7 = [(ICNoteEditorViewController *)self invitationViewController];
      [invitationViewController7 setHighlight:highlight];

      invitationViewController8 = [(ICNoteEditorViewController *)self invitationViewController];
      [invitationViewController8 setShowsActivityIndicator:0];

      v36 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v38, buf);
      v37 = invitationCopy;
      v32 = [(ICNoteEditorViewController *)self invitationViewController:v36];
      [v32 setDidTapViewButton:&v36];

      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
    }

    else
    {
      invitationViewController9 = [(ICNoteEditorViewController *)self invitationViewController];
      view5 = [invitationViewController9 view];
      [view5 removeFromSuperview];

      invitationViewController10 = [(ICNoteEditorViewController *)self invitationViewController];
      [(ICNoteEditorViewController *)self removeChildViewController:invitationViewController10];

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
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  v3 = passwordEntryViewController != 0;

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

- (void)showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:(BOOL)backgrounding
{
  backgroundingCopy = backgrounding;
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    return;
  }

  if (backgroundingCopy)
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    if ([note isPasswordProtected])
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      isAuthenticated = [note2 isAuthenticated];

      if (isAuthenticated)
      {
        if (![(ICNoteEditorViewController *)self styleSelectorInputViewShowing])
        {
          visualAssetImportController = [(ICNoteEditorViewController *)self visualAssetImportController];
          isShowing = [visualAssetImportController isShowing];

          if ((isShowing & 1) == 0)
          {
            viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
            currentAttachmentPresenter = [viewControllerManager currentAttachmentPresenter];
            [currentAttachmentPresenter dismissAnimated:0 completion:0];

            [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
          }
        }

        lockIconCoverViewController = [(ICNoteEditorViewController *)self lockIconCoverViewController];

        if (lockIconCoverViewController)
        {
          lockIconCoverViewController2 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
          view = [lockIconCoverViewController2 view];
          [view removeFromSuperview];

          [(ICNoteEditorViewController *)self setLockIconCoverViewController:0];
        }

        v15 = [objc_alloc(MEMORY[0x277D36898]) initWithNibName:0 bundle:0 note:0 intent:0];
        [(ICNoteEditorViewController *)self setLockIconCoverViewController:v15];

        lockIconCoverViewController3 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        [lockIconCoverViewController3 setMode:1];

        lockIconCoverViewController4 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        view2 = [lockIconCoverViewController4 view];
        [view2 setAutoresizingMask:18];

        view3 = [(ICNoteEditorViewController *)self view];
        [view3 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        lockIconCoverViewController5 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        view4 = [lockIconCoverViewController5 view];
        [view4 setFrame:{v21, v23, v25, v27}];

        view5 = [(ICNoteEditorViewController *)self view];
        lockIconCoverViewController6 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
        view6 = [lockIconCoverViewController6 view];
        [view5 addSubview:view6];

        if (ICInternalSettingsIsTextKit2Enabled())
        {
          view7 = [(ICNoteEditorViewController *)self view];
          lockIconCoverViewController7 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
          view8 = [lockIconCoverViewController7 view];
          [view7 bringSubviewToFront:view8];
        }

        if ([(ICNoteEditorViewController *)self isEditing])
        {
          textView = [(ICNoteEditorViewController *)self textView];
          hidePrediction = [textView hidePrediction];

          if ((hidePrediction & 1) == 0)
          {
            textView2 = [(ICNoteEditorViewController *)self textView];
            [textView2 setHidePrediction:1];

            activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
            [activeKeyboard textInputTraitsDidChange];
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  lockIconCoverViewController8 = [(ICNoteEditorViewController *)self lockIconCoverViewController];
  v40 = lockIconCoverViewController8;
  if (lockIconCoverViewController8)
  {
    v41 = MEMORY[0x277D75D18];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke;
    v50[3] = &unk_2781ABCF8;
    v51 = lockIconCoverViewController8;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __91__ICNoteEditorViewController_showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding___block_invoke_2;
    v48[3] = &unk_2781AD098;
    v49 = v51;
    [v41 animateWithDuration:v50 animations:v48 completion:0.5];
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  hidePrediction2 = [textView3 hidePrediction];

  if (hidePrediction2)
  {
    textView4 = [(ICNoteEditorViewController *)self textView];
    [textView4 setHidePrediction:0];

    textView5 = [(ICNoteEditorViewController *)self textView];
    LODWORD(textView4) = [textView5 isEditing];

    if (textView4)
    {
      activeKeyboard2 = [MEMORY[0x277D75658] activeKeyboard];
      [activeKeyboard2 textInputTraitsDidChange];
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

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  if (!enabled && [(ICNoteEditorViewController *)self isEditing])
  {

    [(ICNoteEditorViewController *)self setEditing:0 animated:0];
  }
}

- (void)prepareForBarSourcedPopoverPresentation
{
  [(ICNoteEditorViewController *)self setUserInteractionEnabled:0];
  if (([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    selectedTextRange = [textView selectedTextRange];
    [(ICNoteEditorViewController *)self setSelectedTextRangeToRestoreAfterBarSourcedPopoverPresentation:selectedTextRange];

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setSelectedTextRange:0];
  }
}

- (void)cleanupAfterBarSourcedPopoverPresentation
{
  [(ICNoteEditorViewController *)self setUserInteractionEnabled:1];
  selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation = [(ICNoteEditorViewController *)self selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation];

  if (selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation)
  {
    selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation2 = [(ICNoteEditorViewController *)self selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation];
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setSelectedTextRange:selectedTextRangeToRestoreAfterBarSourcedPopoverPresentation2];

    [(ICNoteEditorViewController *)self setSelectedTextRangeToRestoreAfterBarSourcedPopoverPresentation:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (editing)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    if ([textView canBecomeFirstResponder])
    {
    }

    else
    {
      isSettingEditing = [(ICNoteEditorViewController *)self isSettingEditing];

      if (!isSettingEditing)
      {
        return;
      }
    }
  }

  if ([(ICNoteEditorViewController *)self isEditing]!= editingCopy)
  {
    [(ICNoteEditorViewController *)self setIsSettingEditing:1];
    if (editingCopy)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"ICViewControllerWillStartEditModeNotification" object:self];

      textView2 = [(ICNoteEditorViewController *)self textView];
      if (![textView2 isFirstResponder])
      {
        auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
        isFirstResponder = [auxiliaryResponder isFirstResponder];

        if ((isFirstResponder & 1) == 0)
        {
          [(ICNoteEditorViewController *)self startEditing];
        }

        goto LABEL_15;
      }
    }

    else
    {
      auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
      isFirstResponder2 = [auxiliaryResponder2 isFirstResponder];

      if (isFirstResponder2)
      {
        auxiliaryResponder3 = [(ICNoteEditorViewController *)self auxiliaryResponder];
        [auxiliaryResponder3 resignFirstResponder];
      }

      textView3 = [(ICNoteEditorViewController *)self textView];
      isFirstResponder3 = [textView3 isFirstResponder];

      if (!isFirstResponder3)
      {
        goto LABEL_15;
      }

      textView2 = [(ICNoteEditorViewController *)self textView];
      [textView2 resignFirstResponder];
    }

LABEL_15:
    [(ICNoteEditorViewController *)self showStyleSelectorInputView:0 animated:1 doneEditing:1];
    v20.receiver = self;
    v20.super_class = ICNoteEditorViewController;
    [(ICNoteEditorViewController *)&v20 setEditing:editingCopy animated:animatedCopy];
    [(ICNoteEditorViewController *)self setIsSettingEditing:0];
    [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:self];

    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration setEditing:editingCopy];
  }
}

- (id)addQuickNoteWithPencil:(BOOL)pencil
{
  pencilCopy = pencil;
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
    textView = [(ICNoteEditorViewController *)self textView];
    if ([textView isFirstResponder])
    {
      v7 = !pencilCopy;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom])
      {
        v7 = 0;
      }

      else
      {
        v7 = !pencilCopy;
      }
    }

    v10 = MEMORY[0x277D35DE0];
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];
    v13 = [v10 defaultAccountInContext:managedObjectContext];

    defaultFolder = [v13 defaultFolder];
    v15 = [MEMORY[0x277D35F28] newEmptyNoteInFolder:defaultFolder];
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    [eventReporter submitNoteCreateEventForModernNote:v15 createApproach:12];

    [(ICNoteEditorViewController *)self setNote:v15];
    [(ICNoteEditorViewController *)self updateBarButtons];
    [(ICNoteEditorViewController *)self setupLinedPaperOnNewNote:v15 willStartEditing:v7];
    if (v7)
    {
      [(ICNoteEditorViewController *)self startEditing];
    }

    note = [(ICNoteEditorBaseViewController *)self note];
  }

  else
  {
    note = 0;
  }

  return note;
}

- (id)addNewNoteWithEvent:(id)event
{
  eventCopy = event;
  [(ICNoteEditorViewController *)self saveNote];
  if ([(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    v5 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:[(ICNoteEditorViewController *)eventCopy ic_isPencilEvent]];
  }

  else
  {
    isEditingOnSystemPaper = [(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper];
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    v8 = viewControllerManager;
    if (eventCopy)
    {
      selfCopy = eventCopy;
    }

    else
    {
      selfCopy = self;
    }

    if (isEditingOnSystemPaper)
    {
      v10 = 18;
    }

    else
    {
      v10 = 2;
    }

    v5 = [viewControllerManager showNewNoteWithApproach:v10 sender:selfCopy animated:1];
  }

  return v5;
}

- (void)setupLinedPaperOnNewNote:(id)note willStartEditing:(BOOL)editing
{
  editingCopy = editing;
  noteCopy = note;
  objc_opt_class();
  v6 = [MEMORY[0x277D36260] objectForKey:@"PaperStyle"];
  v7 = ICCheckedDynamicCast();
  intValue = [v7 intValue];

  if (intValue <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = intValue;
  }

  if (editingCopy)
  {
    v10 = v9;
    v11 = dispatch_time(0, 1000000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__ICNoteEditorViewController_setupLinedPaperOnNewNote_willStartEditing___block_invoke;
    v12[3] = &unk_2781AD1C0;
    v13 = noteCopy;
    v14 = v10;
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);
  }

  else
  {
    [noteCopy setPaperStyleType:v9];
  }
}

- (void)addNote:(id)note event:(id)event shouldInstrumentAsNewNoteAffordanceUsage:(BOOL)usage
{
  usageCopy = usage;
  eventCopy = event;
  if (usageCopy)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    [eventReporter pushNoteCreateDataWithCreateApproach:2];

    v8 = [(ICNoteEditorViewController *)self addNewNoteWithEvent:eventCopy];
    eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
    [eventReporter2 popNoteCreateData];
  }

  else
  {
    v10 = [(ICNoteEditorViewController *)self addNewNoteWithEvent:eventCopy];
  }
}

- (void)addNewNoteIfNeeded
{
  note = [(ICNoteEditorBaseViewController *)self note];

  if (!note)
  {
    mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
    isQuickNoteSessionActive = [mEMORY[0x277D369A0] isQuickNoteSessionActive];

    if (isQuickNoteSessionActive)
    {
      v6 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:1];
    }

    else
    {
      viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
      v7 = [viewControllerManager showNewNoteWithApproach:0 sender:self animated:1];
    }
  }
}

- (void)deleteCurrentNote:(id)note
{
  noteCopy = note;
  if (![(ICNoteEditorViewController *)self isPerformingDeleteAnimation])
  {
    note = [(ICNoteEditorBaseViewController *)self note];

    if (note)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __48__ICNoteEditorViewController_deleteCurrentNote___block_invoke;
      v12 = &unk_2781ABEB8;
      selfCopy = self;
      v14 = noteCopy;
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

- (void)performDeleteAnimation:(id)animation
{
  animationCopy = animation;
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper])
  {
    view = [animationCopy view];
    if (view || (-[ICNoteEditorViewController navigationItem](self, "navigationItem"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rightBarButtonItem], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
    {
      v6 = 0;
      if (view)
      {
LABEL_7:
        [(ICNoteEditorViewController *)self setIsPerformingDeleteAnimation:1];
        backgroundView = [(ICNoteEditorViewController *)self backgroundView];
        contentView = [backgroundView contentView];
        v14 = objc_alloc(MEMORY[0x277D75D18]);
        [contentView bounds];
        v15 = [v14 initWithFrame:?];
        [contentView frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [backgroundView snapshotViewAfterScreenUpdates:0];
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
            [v25 ic_applyRoundedCornersFromView:contentView];
          }

          [v15 addSubview:v25];
        }

        [v15 addSubview:v24];
        backgroundView2 = [(ICNoteEditorViewController *)self backgroundView];
        [backgroundView2 addSubviewAboveAllViews:v15];

        [view bounds];
        [v15 convertRect:view fromView:?];
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
      navigationItem = [(ICNoteEditorViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      view = [rightBarButtonItem view];

      v6 = 1;
      if (view)
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

- (void)moveToFolderPressed:(id)pressed
{
  if (objc_opt_respondsToSelector())
  {

    [(ICNoteEditorViewController *)self app_showMoveToFolder];
  }
}

- (void)quickNoteAllNotes:(id)notes
{
  [(ICNoteEditorViewController *)self didEndEditingNote];
  delegate = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICNoteEditorViewController *)self delegate];
    [delegate2 noteEditorDidTapAllNotes:self];
  }
}

- (void)lockBarButtonPressed:(id)pressed
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isAuthenticated = [note isAuthenticated];

  if (isAuthenticated)
  {
    [(ICNoteEditorViewController *)self saveNote];
    mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
    [mEMORY[0x277D35E50] deauthenticate];

    [(ICNoteEditorViewController *)self stopTextFindingIfNecessary];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    account = [note2 account];

    v8 = account;
    if (!account)
    {
      goto LABEL_6;
    }

    mEMORY[0x277D36830] = [MEMORY[0x277D36830] sharedMigrator];
    view = [(ICNoteEditorViewController *)self view];
    window = [view window];
    [mEMORY[0x277D36830] showMigrationPromptAndMigrateIfNeededForAccount:account window:window];
  }

  else
  {
    account = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [account beginAuthentication];
  }

  v8 = account;
LABEL_6:
}

- (void)iCloudShareButtonPressed:(id)pressed
{
  delegate = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICNoteEditorViewController *)self delegate];
    [delegate2 noteEditorDidTapAddPeople:self];
  }

  else
  {
    delegate2 = [(ICNoteEditorViewController *)self view];
    [delegate2 ic_crashIfWindowIsSecure];
  }
}

- (void)shareButtonPressedWithSender:(id)sender
{
  senderCopy = sender;
  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  [findInteraction dismissFindNavigator];

  delegate = [(ICNoteEditorViewController *)self delegate];
  LOBYTE(findInteraction) = objc_opt_respondsToSelector();

  if (findInteraction)
  {
    delegate2 = [(ICNoteEditorViewController *)self delegate];
    [delegate2 noteEditorDidTapAddPeople:self];
  }

  else
  {
    view = [(ICNoteEditorViewController *)self view];
    [view ic_crashIfWindowIsSecure];

    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = v9;
    if (v9)
    {
      delegate2 = v9;
    }

    else
    {
      navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      delegate2 = [navigationItemConfiguration shareBarButtonItem];
    }

    if (objc_opt_respondsToSelector())
    {
      [(ICNoteEditorViewController *)self performSelector:sel_app_shareButtonPressed_ withObject:delegate2];
    }
  }
}

- (void)createAndPresentCloudSharingControllerBySender:(id)sender
{
  senderCopy = sender;
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self app_createAndPresentCloudSharingControllerBySender:senderCopy];
  }
}

- (void)didBeginFindInteraction
{
  noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
  ic_isViewVisible = [noteFormattingController ic_isViewVisible];

  if (ic_isViewVisible)
  {
    [(ICNoteEditorViewController *)self showStyleSelector:0 animated:1];
  }

  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self setInkPickerState:2];
    [(ICNoteEditorViewController *)self hideInkPicker];
  }

  findResultReporter = [(ICNoteEditorViewController *)self findResultReporter];
  [findResultReporter startTrackingFindSession];
}

- (void)didUpdateSearchQueryInFindInteraction:(id)interaction
{
  interactionCopy = interaction;
  findResultReporter = [(ICNoteEditorViewController *)self findResultReporter];
  [findResultReporter updateWithSearchQuery:interactionCopy];
}

- (void)didEndFindInteraction
{
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  [(ICNoteEditorViewController *)self clearTextViewSelection];
  findResultReporter = [(ICNoteEditorViewController *)self findResultReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [findResultReporter submitEventIfApplicableForNote:note];
}

- (void)performFindInNote:(id)note
{
  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  [findInteraction presentFindNavigatorShowingReplace:0];

  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
}

- (void)performReplaceInNote:(id)note
{
  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  [findInteraction presentFindNavigatorShowingReplace:1];

  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
}

- (void)doneEditing
{
  [(ICNoteEditorViewController *)self didEndEditingNote];
  [(ICNoteEditorViewController *)self doneEditing:0];

  [(ICNoteEditorViewController *)self becomeFirstResponder];
}

- (void)doneEditing:(id)editing
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
    keyboardDidShowAnimationDate = [(ICNoteEditorViewController *)self keyboardDidShowAnimationDate];

    if (keyboardDidShowAnimationDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
      keyboardDidShowAnimationDate2 = [(ICNoteEditorViewController *)self keyboardDidShowAnimationDate];
      [date timeIntervalSinceDate:keyboardDidShowAnimationDate2];
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
  isShowing = [v12 isShowing];

  if (isShowing)
  {
    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
    [calculateScrubberController hideScrubber];
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

- (void)toggleTodoStyle:(id)style
{
  styleCopy = style;
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController hideSidebarAnimated:1];

  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 toggleTodoStyle:styleCopy];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textController];
    textView = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    textStorage = [textView textStorage];
    v9 = ICCheckedDynamicCast();

    selectedRange = [textView selectedRange];
    v12 = [auxiliaryStylingController2 todoForRange:selectedRange inTextStorage:{v11, v9}];
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
    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 icaxClearCaches];
  }
}

- (void)toggleTodoChecked:(id)checked
{
  checkedCopy = checked;
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  if (isEditable)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    v10 = v9;

    textController = [(ICNoteEditorViewController *)self textController];
    textView2 = [(ICNoteEditorViewController *)self textView];
    textView3 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView3 textStorage];
    v15 = [textController paragraphStyleForRange:selectedRange inTextView:v10 inTextStorage:{textView2, textStorage}];

    if (v15 == 103)
    {
      textController2 = [(ICNoteEditorViewController *)self textController];
      textView4 = [(ICNoteEditorViewController *)self textView];
      textStorage2 = [textView4 textStorage];
      v19 = [textController2 isTodoDoneRange:selectedRange inTextStorage:{v10, textStorage2}];

      textController3 = [(ICNoteEditorViewController *)self textController];
      textView5 = [(ICNoteEditorViewController *)self textView];
      textStorage3 = [textView5 textStorage];
      [textController3 setDone:v19 ^ 1u range:selectedRange inTextStorage:{v10, textStorage3}];

      if (v19)
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }

      [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:v23];
      textController4 = [(ICNoteEditorViewController *)self textController];
      textView6 = [(ICNoteEditorViewController *)self textView];
      v26 = [textController4 expandedChecklistTrackedParagraphsInTextView:textView6 forIndex:selectedRange];
      firstObject = [v26 firstObject];

      objc_initWeak(&location, self);
      textController5 = [(ICNoteEditorViewController *)self textController];
      textView7 = [(ICNoteEditorViewController *)self textView];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __48__ICNoteEditorViewController_toggleTodoChecked___block_invoke;
      v32[3] = &unk_2781ACC10;
      objc_copyWeak(&v33, &location);
      [textController5 autoSortChecklistIfNecessaryForTrackedParagraph:firstObject textView:textView7 analyticsHandler:v32];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isDeletedOrInTrash = [note2 isDeletedOrInTrash];

    if (isDeletedOrInTrash)
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
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isEditable])
  {
    isChecklistSelected = [(ICNoteEditorViewController *)self isChecklistSelected];
  }

  else
  {
    isChecklistSelected = 0;
  }

  return isChecklistSelected;
}

- (BOOL)canPerformTodoCheckAll
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (![(ICNoteEditorViewController *)self isChecklistSelected])
  {
    return 0;
  }

  v3 = MEMORY[0x277CCAE60];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v7 = [v3 valueWithRange:{selectedRange, v6}];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isEditable])
  {
    textController = [(ICNoteEditorViewController *)self textController];
    textView2 = [(ICNoteEditorViewController *)self textView];
    v12 = [textController checklistItemExistsMarkedCompleted:0 inTextView:textView2 forRanges:v8];
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
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v7 = [v3 valueWithRange:{selectedRange, v6}];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isEditable])
  {
    textController = [(ICNoteEditorViewController *)self textController];
    textView2 = [(ICNoteEditorViewController *)self textView];
    v12 = [textController checklistItemExistsMarkedCompleted:1 inTextView:textView2 forRanges:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isChecklistSelected
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v7 = v6;
  textView2 = [(ICNoteEditorViewController *)self textView];
  textView3 = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView3 textStorage];
  LODWORD(selectedRange) = [textController paragraphStyleForRange:selectedRange inTextView:v7 inTextStorage:{textView2, textStorage}];

  return selectedRange == 103;
}

- (BOOL)canToggleTodoStyle
{
  firstResponder = [(ICNoteEditorViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  return isEditable;
}

- (BOOL)canSetParagraphStyle
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  return isEditable;
}

- (BOOL)canSetListStyle
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  return isEditable;
}

- (void)setTitleStyle:(id)style
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:0];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:1];
}

- (void)setHeadingStyle:(id)style
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:1];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:2];
}

- (void)setSubheadingStyle:(id)style
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:2];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:3];
}

- (void)setBodyStyle:(id)style
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:3];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:4];
}

- (void)setFixedWidthStyle:(id)style
{
  [(ICNoteEditorViewController *)self setCurrentTextStyle:4];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:5];
}

- (void)toggleBulletedListStyle:(id)style
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:100];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:6];
}

- (void)toggleDashedListStyle:(id)style
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:101];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:7];
}

- (void)toggleNumberedListStyle:(id)style
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:102];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:8];
}

- (void)prepareSelectionForAddingAttachment
{
  if (([(ICNoteEditorViewController *)self isEditing]& 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    v5 = [textStorage length];

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setSelectedRange:{v5, 0}];
  }
}

- (void)createTodoListItem:(id)item
{
  itemCopy = item;
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController hideSidebarAnimated:1];

  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v8 = v7;

  if ([(ICNoteEditorViewController *)self isEditing])
  {
    [(ICNoteEditorViewController *)self toggleTodoStyle:itemCopy];
  }

  else if (selectedRange == 0x7FFFFFFFFFFFFFFFLL || !v8)
  {
    [(ICNoteEditorViewController *)self addTodoListAtEndOfNote];
  }

  else
  {
    objc_opt_class();
    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView2 textStorage];
    v11 = ICCheckedDynamicCast();

    textController = [(ICNoteEditorViewController *)self textController];
    v13 = [textController containsOnlyStyle:103 inRange:selectedRange inTextStorage:{v8, v11}];

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
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    isWelcomeScreenVisible = [viewControllerManager isWelcomeScreenVisible];

    if (isWelcomeScreenVisible)
    {
      return;
    }

    [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
    textView = [(ICNoteEditorViewController *)self textView];
    objc_opt_class();
    textStorage = [textView textStorage];
    v6 = ICCheckedDynamicCast();

    v7 = [v6 length];
    if (v7)
    {
      v8 = v7;
      string = [v6 string];
      v10 = [string characterAtIndex:v8 - 1];

      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      if ([newlineCharacterSet characterIsMember:v10])
      {
        textController = [(ICNoteEditorViewController *)self textController];
        textView2 = [(ICNoteEditorViewController *)self textView];
        v14 = [textController paragraphStyleForRange:v8 - 1 inTextView:1 inTextStorage:{textView2, v6}];

        if (v14 == 103)
        {
          if (v8 == 1)
          {
            v8 = 0;
          }

          else
          {
            string2 = [v6 string];
            v16 = [string2 characterAtIndex:v8 - 2];

            if ([newlineCharacterSet characterIsMember:v16])
            {
              --v8;
            }

            else
            {
              textController2 = [(ICNoteEditorViewController *)self textController];
              [textController2 insertNewlineAtCharacterIndex:v8 - 1 textStorage:v6];
            }
          }

          textView3 = [(ICNoteEditorViewController *)self textView];
          [textView3 setSelectedRange:{v8, 0}];

          goto LABEL_17;
        }
      }

      else
      {
        [textView setSelectedRange:{v8, 0}];
        [textView insertText:@"\n"];
        v8 = [v6 length];
      }

      textView4 = [(ICNoteEditorViewController *)self textView];
      v18 = textView4;
      v19 = v8;
    }

    else
    {
      textView4 = [(ICNoteEditorViewController *)self textView];
      v18 = textView4;
      v19 = 0;
    }

    [textView4 setSelectedRange:{v19, 0}];

    [(ICNoteEditorViewController *)self setCurrentTextStyle:103];
LABEL_17:
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      objc_opt_class();
      textView5 = [(ICNoteEditorViewController *)self textView];
      layoutManager = [textView5 layoutManager];
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
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setShouldAvoidBecomingFirstResponder:0];

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

- (void)showInsertUIWithPreferredSourceType:(unint64_t)type
{
  if (([(ICNoteEditorViewController *)self ic_isViewVisible]& 1) != 0)
  {
    if (type > 3)
    {
      if (type == 4)
      {
        if ([(ICNoteEditorViewController *)self isDocumentCameraAvailable])
        {
          goto LABEL_27;
        }
      }

      else if (type == 6 && ([MEMORY[0x277D75418] ic_isVision] & 1) != 0)
      {
LABEL_27:

        [(ICNoteEditorViewController *)self showInsertUIForSourceType:type sender:0];
        return;
      }
    }

    else if (type == 1)
    {
      if ([MEMORY[0x277D361D0] isCameraAvailable])
      {
        goto LABEL_27;
      }
    }

    else if (type == 3 && ([MEMORY[0x277D75418] ic_isLiveTextAvailable] & 1) != 0)
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
    switch(type)
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

- (void)attachFile:(id)file
{
  fileCopy = file;
  note = [(ICNoteEditorBaseViewController *)self note];
  canAddAttachment = [note canAddAttachment];

  if (canAddAttachment)
  {
    [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
    [(ICNoteEditorViewController *)self showInsertUIForSourceType:5 sender:fileCopy];
  }

  else
  {
    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }
}

- (void)showInsertUIForSourceType:(unint64_t)type sender:(id)sender
{
  v6 = [(ICNoteEditorBaseViewController *)self note:type];
  if (v6 && (v7 = v6, -[ICNoteEditorBaseViewController note](self, "note"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canAddAttachment], v8, v7, (v9 & 1) == 0))
  {

    [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
  }

  else
  {
    [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
    [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
    [(ICNoteEditorViewController *)self showInkPicker:0 animated:1];
    if (type <= 3)
    {
      switch(type)
      {
        case 1uLL:
          if ([(ICNoteEditorViewController *)self isEditing])
          {
            [(ICNoteEditorViewController *)self setEditing:0 animated:1];
          }

          visualAssetImportController = [(ICNoteEditorViewController *)self visualAssetImportController];
          traitCollection = [(ICNoteEditorViewController *)self traitCollection];
          [visualAssetImportController presentVisualAssetCaptureControllerWithDisableAutorotate:{objc_msgSend(traitCollection, "userInterfaceIdiom") == 0}];

          break;
        case 2uLL:
          visualAssetImportController = [(ICNoteEditorViewController *)self visualAssetImportController];
          [visualAssetImportController presentVisualAssetPickerController];
          break;
        case 3uLL:
          textView = [(ICNoteEditorViewController *)self textView];
          [textView becomeFirstResponder];

          visualAssetImportController = [(ICNoteEditorViewController *)self textView];
          [visualAssetImportController captureTextFromCamera:self];
          break;
        default:
          return;
      }

LABEL_24:

      return;
    }

    if (type == 7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__ICNoteEditorViewController_showInsertUIForSourceType_sender___block_invoke;
      block[3] = &unk_2781ABCF8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      return;
    }

    if (type != 5)
    {
      if (type != 4)
      {
        return;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      [(ICNoteEditorViewController *)self setCreatedGalleryAttachmentUUID:uUID];

      v12 = objc_alloc(MEMORY[0x277D05D28]);
      documentCameraControllerCreateDataCryptorIfNecessary = [(ICNoteEditorViewController *)self documentCameraControllerCreateDataCryptorIfNecessary];
      visualAssetImportController = [v12 initWithDataCryptorDelegate:documentCameraControllerCreateDataCryptorIfNecessary];

      navigationController = [(ICNoteEditorViewController *)self navigationController];
      v15 = navigationController;
      if (navigationController)
      {
        selfCopy = navigationController;
      }

      else
      {
        selfCopy = self;
      }

      v17 = selfCopy;

      v18 = [objc_alloc(MEMORY[0x277D05D38]) initWithImageCache:visualAssetImportController docCamDelegate:self remoteDocCamDelegate:self];
      [v18 setModalTransitionStyle:2];
      [(ICNoteEditorViewController *)v17 presentViewController:v18 animated:1 completion:0];
      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      [eventReporter pushStartDocScanPageCountData:0];

      eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
      createdGalleryAttachmentUUID = [(ICNoteEditorViewController *)self createdGalleryAttachmentUUID];
      uUIDString = [createdGalleryAttachmentUUID UUIDString];
      [eventReporter2 pushDocScanDataWithID:uUIDString actionType:1 stage:1];

      eventReporter3 = [(ICNoteEditorViewController *)self eventReporter];
      note = [(ICNoteEditorBaseViewController *)self note];

      [eventReporter3 submitDocScanEventForNote:note pageCount:0];
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

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v59 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = ls;
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
      note = [(ICNoteEditorBaseViewController *)self note];
      canAddAttachment = [note canAddAttachment];

      if ((canAddAttachment & 1) == 0)
      {
        [(ICNoteEditorViewController *)self warnUserAttachmentLimitExceeded];
        goto LABEL_30;
      }

      note2 = [(ICNoteEditorBaseViewController *)self note];
      v13 = [note2 attachmentExceedsMaxSizeAllowed:{objc_msgSend(v9, "ic_fileSize")}];

      if (v13)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v40 = [mainBundle localizedStringForKey:@"Maximum attachment size reached." value:&stru_282757698 table:0];
        [(ICNoteEditorViewController *)self warnLimitExceededWithTitle:v40 andMessage:0];

        goto LABEL_30;
      }

      lastPathComponent = [v9 lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v49 = 0;
      LODWORD(lastPathComponent) = [v9 getResourceValue:&v49 forKey:v46 error:0];
      v16 = v49;
      v17 = v16;
      if (!lastPathComponent || !v16)
      {
        note3 = [(ICNoteEditorBaseViewController *)self note];
        identifier2 = [note3 addAttachmentWithFileURL:v9];
        goto LABEL_23;
      }

      if (![v16 conformsToType:v44])
      {
        note3 = [(ICNoteEditorBaseViewController *)self note];
        identifier = [v17 identifier];
        identifier2 = [note3 addAttachmentWithUTI:identifier withURL:v9];

        goto LABEL_23;
      }

      v18 = ICInternalSettingsDefaultToPaperKitPDFsAndScans();
      note4 = [(ICNoteEditorBaseViewController *)self note];
      if (!v18)
      {
        identifier2 = [v17 identifier];
        v25 = [note4 addAttachmentWithUTI:identifier2 withURL:v9];
LABEL_19:

        identifier2 = v25;
        goto LABEL_20;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      identifier2 = [note4 addPaperDocumentAttachmentWithIdentifier:uUIDString subtype:v42];

      managedObjectContext = [identifier2 managedObjectContext];
      [managedObjectContext ic_save];

      v48 = 0;
      LOBYTE(managedObjectContext) = [MEMORY[0x277D35F48] createPaperDocumentForAttachment:identifier2 fromLegacyMediaAtURL:v9 error:&v48];
      note4 = v48;
      if ((managedObjectContext & 1) == 0)
      {
        v24 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          ic_loggingDescription = [identifier2 ic_loggingDescription];
          *buf = v41;
          v55 = note4;
          v56 = 2112;
          v57 = ic_loggingDescription;
          _os_log_error_impl(&dword_2151A1000, v24, OS_LOG_TYPE_ERROR, "Failed to create paper document from PDF with error: %@ -- deleting attachment %@", buf, 0x16u);
        }

        [MEMORY[0x277D35E00] deleteAttachment:identifier2];
        v25 = 0;
        goto LABEL_19;
      }

LABEL_20:

      note3 = [objc_alloc(MEMORY[0x277CD93D8]) initWithURL:v9];
      documentAttributes = [note3 documentAttributes];
      v29 = [documentAttributes objectForKeyedSubscript:v43];

      if ([v29 length])
      {
        v30 = v29;

        stringByDeletingPathExtension = v30;
      }

LABEL_23:
      if (identifier2)
      {
        [identifier2 setTitle:stringByDeletingPathExtension];
        attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
        textView = [(ICNoteEditorViewController *)self textView];
        selectedRange = [textView selectedRange];
        v35 = [attachmentInsertionController addAttachment:identifier2 atTextLocation:selectedRange + v34];

        note5 = [(ICNoteEditorBaseViewController *)self note];
        [note5 save];

        eventReporter = [(ICNoteEditorViewController *)self eventReporter];
        [eventReporter submitAttachmentAddEventForAttachment:identifier2];
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

- (void)insertSidecarItems:(id)items service:(int64_t)service
{
  v59 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  [(ICNoteEditorViewController *)self prepareSelectionForAddingAttachment];
  if (!service)
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteEditorViewController insertSidecarItems:service:];
    }

    v8 = [itemsCopy ic_compactMap:&__block_literal_global_928];
    visualAssetImportController = [(ICNoteEditorViewController *)self visualAssetImportController];
    [visualAssetImportController addImageData:v8 typeIdentifier:0];
    goto LABEL_10;
  }

  if (service > 2)
  {
    if (service != 3)
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
    v8 = itemsCopy;
    v14 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v47 = itemsCopy;
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
          type = [v22 type];
          v24 = [type isEqualToString:v17];

          if (v24)
          {
            note = [(ICNoteEditorBaseViewController *)self note];
            canAddAttachment = [note canAddAttachment];

            if ((canAddAttachment & 1) == 0)
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
            data = [v22 data];
            v29 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:data error:0];
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
            note2 = [(ICNoteEditorBaseViewController *)self note];
            v37 = [v35 createSystemPaperAttachmentWithPKDrawing:v29 inNote:note2];

            attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
            textView = [(ICNoteEditorViewController *)self textView];
            selectedRange = [textView selectedRange];
            v42 = [attachmentInsertionController addAttachment:v37 atTextLocation:selectedRange + v41];

            note3 = [(ICNoteEditorBaseViewController *)self note];
            managedObjectContext = [note3 managedObjectContext];
            [managedObjectContext ic_save];

            mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
            [mEMORY[0x277D366B0] generatePreviewIfNeededForAttachment:v37];

            v16 = v31;
            v17 = v27;
            v15 = v48;
          }

          else
          {
            data = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
            {
              [(ICNoteEditorViewController *)&buf insertSidecarItems:v51 service:data];
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
      itemsCopy = v47;
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

    v8 = [itemsCopy ic_map:&__block_literal_global_935];
    v9 = [objc_alloc(MEMORY[0x277D05D28]) initWithDataCryptorDelegate:0];
    v10 = MEMORY[0x277D05D10];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __57__ICNoteEditorViewController_insertSidecarItems_service___block_invoke_2;
    v56[3] = &unk_2781AD278;
    v56[4] = self;
    v57 = v9;
    visualAssetImportController = v9;
    [v10 infoCollectionFromSidecarItems:v8 imageCache:visualAssetImportController completion:v56];

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

- (id)getTableControllerFor:(id)for
{
  forCopy = for;
  nextResponder = forCopy;
  while (1)
  {
    v5 = nextResponder;
    nextResponder = [nextResponder nextResponder];

    if (!nextResponder)
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

- (void)addTable:(id)table
{
  v36 = *MEMORY[0x277D85DE8];
  note = [(ICNoteEditorBaseViewController *)self note];
  canAddAttachment = [note canAddAttachment];

  if (canAddAttachment)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isEditable = [note2 isEditable];

    if (isEditable)
    {
      [(ICNoteEditorViewController *)self showStyleSelector:0 animated:0];
      textView = [(ICNoteEditorViewController *)self textView];
      [textView selectedRange];
      v10 = v9;

      if (v10)
      {
        textStorage = [(ICNoteEditorViewController *)self textStorage];
        textView2 = [(ICNoteEditorViewController *)self textView];
        selectedRange = [textView2 selectedRange];
        v15 = [textStorage ic_attributedSubstringFromRange:{selectedRange, v14}];

        note3 = [(ICNoteEditorBaseViewController *)self note];
        managedObjectContext = [note3 managedObjectContext];
        note5 = [v15 ic_attributedStringByFlatteningCalculateAttachmentsWithContext:managedObjectContext];

        note4 = [(ICNoteEditorBaseViewController *)self note];
        addTableAttachment = [note4 addTableAttachmentWithText:note5];
      }

      else
      {
        note5 = [(ICNoteEditorBaseViewController *)self note];
        addTableAttachment = [note5 addTableAttachment];
      }

      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note6 = [(ICNoteEditorBaseViewController *)self note];
      [eventReporter submitTableCreateEventForAttachment:addTableAttachment inNote:note6];

      attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
      textView3 = [(ICNoteEditorViewController *)self textView];
      selectedRange2 = [textView3 selectedRange];
      v29 = [attachmentInsertionController addAttachment:addTableAttachment atTextRange:{selectedRange2, v28}];

      undoManager = [(ICNoteEditorViewController *)self undoManager];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v32 = [mainBundle localizedStringForKey:@"Add Table" value:&stru_282757698 table:0];
      [undoManager setActionName:v32];
    }

    else
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        note7 = [(ICNoteEditorBaseViewController *)self note];
        shortLoggingDescription = [note7 shortLoggingDescription];
        *buf = 138412290;
        v35 = shortLoggingDescription;
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
  textView = [(ICNoteEditorViewController *)self textView];
  dateView = [textView dateView];
  [dateView reset];
}

- (void)updatePencilKitSelectionViewEnabled
{
  if ([MEMORY[0x277D75418] ic_isiPad])
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    if ([note isEditable])
    {
      v3 = [(ICNoteEditorViewController *)self attributionSidebarVisibility]== 0;
    }

    else
    {
      v3 = 0;
    }

    textView = [(ICNoteEditorViewController *)self textView];
    ic_pkSelectionInteraction = [textView ic_pkSelectionInteraction];
    [ic_pkSelectionInteraction setEnabled:v3];
  }
}

- (void)openLink:(id)link
{
  linkForSelection = [(ICNoteEditorViewController *)self linkForSelection];
  view = [(ICNoteEditorViewController *)self view];
  [ICExtensionSafeAPIShims openURL:linkForSelection originatingView:view completionHandler:0];
}

- (void)tab:(id)tab
{
  if ([(ICNoteEditorViewController *)self currentSelectionContainsListOrFixedWidth])
  {

    [(ICNoteEditorViewController *)self indentSelectionIfPossibleByAmount:1];
  }

  else
  {
    textView = [(ICNoteEditorViewController *)self textView];
    [textView insertText:@"\t"];
  }
}

- (void)shiftReturn:(id)return
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView insertText:@"\u2028"];
}

- (void)checkAll:(id)all
{
  v12[1] = *MEMORY[0x277D85DE8];
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v10 = [v6 valueWithRange:{selectedRange, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [textController markAllChecklistItemsCompleted:1 inTextview:textView forSelectedRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:2];
}

- (void)uncheckAll:(id)all
{
  v12[1] = *MEMORY[0x277D85DE8];
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v10 = [v6 valueWithRange:{selectedRange, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [textController markAllChecklistItemsCompleted:0 inTextview:textView forSelectedRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:3];
}

- (BOOL)canRemoveCheckedListItem
{
  selfCopy = self;
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v7 = [v3 valueWithRange:{selectedRange, v6}];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  textController = [(ICNoteEditorViewController *)selfCopy textController];
  textView2 = [(ICNoteEditorViewController *)selfCopy textView];
  LOBYTE(textView) = [textController checklistItemExistsMarkedCompleted:1 inTextView:textView2 forRanges:v8];

  textController2 = [(ICNoteEditorViewController *)selfCopy textController];
  textView3 = [(ICNoteEditorViewController *)selfCopy textView];
  textView4 = [(ICNoteEditorViewController *)selfCopy textView];
  selectedRange2 = [textView4 selectedRange];
  LOBYTE(selfCopy) = [textController2 containsOnlyChecklistItemsInTextView:textView3 forRange:{selectedRange2, v15}];

  return textView & selfCopy;
}

- (void)removeChecked:(id)checked
{
  v12[1] = *MEMORY[0x277D85DE8];
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = MEMORY[0x277CCAE60];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v10 = [v6 valueWithRange:{selectedRange, v9}];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [textController removeChecklistItemsMarkedCompleted:1 inTextView:textView forRanges:v11];

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:4];
}

- (BOOL)canMoveCheckedToBottom
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v8 = [textController canMoveCheckedChecklistsToBottomInTextView:textView forRange:{selectedRange, v7}];

  textController2 = [(ICNoteEditorViewController *)self textController];
  textView3 = [(ICNoteEditorViewController *)self textView];
  textView4 = [(ICNoteEditorViewController *)self textView];
  selectedRange2 = [textView4 selectedRange];
  v14 = [textController2 containsOnlyChecklistItemsInTextView:textView3 forRange:{selectedRange2, v13}];

  return [(ICNoteEditorViewController *)self containsUnCheckedItems]& v8 & v14;
}

- (BOOL)containsUnCheckedItems
{
  v6 = 0;
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  [textController getTodoSelected:&v6 + 1 andAtLeastOneTodoUnchecked:&v6 inTextView:textView];

  return v6 & 1 | ((v6 & 0x100) == 0);
}

- (void)moveCheckedToBottom:(id)bottom
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  [textController moveCheckedChecklistsToBottomInTextView:textView forRange:selectedRange animated:{v8, 1}];

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitNoteEditorCallOutBarButtonSelectionEventForModernNote:note buttonTypeValue:14];
}

- (BOOL)canMoveSelectedListItemUp
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v8 = [textController canMoveListItemInDirection:0 inTextView:textView forRange:{selectedRange, v7}];

  return v8;
}

- (BOOL)canMoveSelectedListItemDown
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v8 = [textController canMoveListItemInDirection:1 inTextView:textView forRange:{selectedRange, v7}];

  return v8;
}

- (void)moveSelectedListItemUp:(id)up
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  [textController moveListItemInDirection:0 inTextView:textView forRange:{selectedRange, v7}];
}

- (void)moveSelectedListItemDown:(id)down
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  [textController moveListItemInDirection:1 inTextView:textView forRange:{selectedRange, v7}];
}

- (BOOL)canConvertToText
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v8 = [textController canConvertInlineAttachmentToTextInTextView:textView forRange:{selectedRange, v7}];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    textStorage = [(ICNoteEditorViewController *)self textStorage];
    v11 = *MEMORY[0x277D74060];
    textView3 = [(ICNoteEditorViewController *)self textView];
    v13 = [textStorage attribute:v11 atIndex:objc_msgSend(textView3 effectiveRange:{"selectedRange"), 0}];
    v14 = ICDynamicCast();

    firstResponder = [(ICNoteEditorViewController *)self firstResponder];
    objc_opt_class();
    LOBYTE(textStorage) = objc_opt_isKindOfClass();

    v9 = (v14 != 0) | textStorage;
  }

  return v9 & 1;
}

- (BOOL)canReverseTableDirection
{
  firstResponder = [(ICNoteEditorViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canConvertToTag
{
  textView = [(ICNoteEditorViewController *)self textView];
  selectedText = [textView selectedText];
  if ([selectedText ic_canConvertToTag])
  {
    v5 = ![(ICNoteEditorViewController *)self canConvertToText];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)convertToText:(id)text
{
  v28 = *MEMORY[0x277D85DE8];
  textCopy = text;
  objc_opt_class();
  textStorage = [(ICNoteEditorViewController *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  textView = [(ICNoteEditorViewController *)self textView];
  v8 = [textStorage attribute:v6 atIndex:objc_msgSend(textView effectiveRange:{"selectedRange"), 0}];
  v9 = ICDynamicCast();

  currentTableAttachmentViewController = [(ICNoteEditorViewController *)self currentTableAttachmentViewController];

  if (currentTableAttachmentViewController)
  {
    currentTableAttachmentViewController2 = [(ICNoteEditorViewController *)self currentTableAttachmentViewController];
    [currentTableAttachmentViewController2 convertTableToText:textCopy];
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      textView2 = [(ICNoteEditorViewController *)self textView];
      textLayoutManager = [textView2 textLayoutManager];
      v14 = ICDynamicCast();

      v15 = [v14 tableViewControllerForAttachment:v9 createIfNeeded:1];
      [v15 convertTableToText:textCopy];

      goto LABEL_6;
    }

    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      textView3 = [(ICNoteEditorViewController *)self textView];
      v29.location = [textView3 selectedRange];
      v18 = NSStringFromRange(v29);
      v26 = 138412290;
      v27 = v18;
      _os_log_impl(&dword_2151A1000, v16, OS_LOG_TYPE_INFO, "Converting inline attachment at %@ to text", &v26, 0xCu);
    }

    textController = [(ICNoteEditorViewController *)self textController];
    textView4 = [(ICNoteEditorViewController *)self textView];
    textView5 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView5 selectedRange];
    [textController convertInlineAttachmentToTextInTextView:textView4 forRange:{selectedRange, v23}];

    textView6 = [(ICNoteEditorViewController *)self textView];
    [(ICNoteEditorViewController *)self textViewDidChange:textView6];

    note = [(ICNoteEditorBaseViewController *)self note];
    [note updateChangeCountWithReason:@"Converted inline attachment to text"];

    currentTableAttachmentViewController2 = [(ICNoteEditorBaseViewController *)self note];
    [currentTableAttachmentViewController2 save];
  }

LABEL_6:
}

- (void)convertToTag:(id)tag
{
  v27 = *MEMORY[0x277D85DE8];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedText = [textView selectedText];
  [eventReporter submitHashtagAddEventForNote:note tokenContentIdentifier:selectedText viaAutoComplete:0];

  [(ICNoteEditorViewController *)self setIsConvertToTag:1];
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    v28.location = [textView2 selectedRange];
    v10 = NSStringFromRange(v28);
    v25 = 138412290;
    v26 = v10;
    _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_INFO, "Converting text to inline attachment at %@", &v25, 0xCu);
  }

  v11 = MEMORY[0x277D35EF8];
  textView3 = [(ICNoteEditorViewController *)self textView];
  selectedText2 = [textView3 selectedText];
  ic_stringByReplacingLeadingFullWidthHashSignIfPossible = [selectedText2 ic_stringByReplacingLeadingFullWidthHashSignIfPossible];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  v16 = [v11 createHashtagAttachmentIfApplicableWithHashtagText:ic_stringByReplacingLeadingFullWidthHashSignIfPossible creatingHashtagIfNecessary:1 note:note2 parentAttachment:0];

  if (v16)
  {
    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    textView4 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView4 selectedRange];
    v21 = [attachmentInsertionController addInlineAttachment:v16 atTextRange:{selectedRange, v20}];

    [v16 updateChangeCountWithReason:@"Created tag from text"];
    note3 = [(ICNoteEditorBaseViewController *)self note];
    [note3 updateChangeCountWithReason:@"Created tag from text"];

    note4 = [(ICNoteEditorBaseViewController *)self note];
    [note4 save];

    hashtagController = [(ICNoteEditorViewController *)self hashtagController];
    [hashtagController updateNoteHashtags];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (BOOL)canAddToTags
{
  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  v8 = [textController canAddToTagsInTextView:textView forRange:{selectedRange, v7}];

  return v8;
}

- (void)addToTags:(id)tags
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController addToTags:?];
  }

  textController = [(ICNoteEditorViewController *)self textController];
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView2 selectedRange];
  [textController addToTagsInTextView:textView forRange:{selectedRange, v9}];
}

- (void)openExperimentalHashtagUI:(id)i
{
  if (ICDebugModeEnabled())
  {
    v4 = objc_alloc_init(ICHashtagViewController);
    [(ICHashtagViewController *)v4 setDelegate:self];
    [(ICNoteEditorViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (void)openLinkEditor:(id)editor
{
  v36[1] = *MEMORY[0x277D85DE8];
  note = [(ICNoteEditorBaseViewController *)self note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  if (isDeletedOrInTrash)
  {

    [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    return;
  }

  linkForSelection = [(ICNoteEditorViewController *)self linkForSelection];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedText = [textView selectedText];

  textView2 = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView2 textStorage];
  v11 = *MEMORY[0x277D74060];
  textView3 = [(ICNoteEditorViewController *)self textView];
  v13 = [textStorage attribute:v11 atIndex:objc_msgSend(textView3 effectiveRange:{"selectedRange"), 0}];

  objc_opt_class();
  v34 = v13;
  v14 = ICDynamicCast();
  attachment = [v14 attachment];
  v35 = xmmword_2154BBE70;
  if (!linkForSelection)
  {
    linkForSelection = [MEMORY[0x277D35DF0] detectedURLInString:selectedText allowNonLinkCharacters:0];

    if (linkForSelection)
    {
      linkForSelection = [MEMORY[0x277CBEBC0] URLWithString:selectedText];
    }

    goto LABEL_11;
  }

  textStorage2 = [(ICNoteEditorViewController *)self textStorage];
  v17 = *MEMORY[0x277D740E8];
  textView4 = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView4 selectedRange];
  textStorage3 = [(ICNoteEditorViewController *)self textStorage];
  v21 = [textStorage2 attribute:v17 atIndex:selectedRange longestEffectiveRange:&v35 inRange:{0, objc_msgSend(textStorage3, "length")}];

  if (v35 == 0x7FFFFFFFFFFFFFFFLL || !*(&v35 + 1))
  {
LABEL_11:
    textView5 = [(ICNoteEditorViewController *)self textView];
    *&v35 = [textView5 selectedRange];
    *(&v35 + 1) = v26;
    goto LABEL_12;
  }

  textView6 = [(ICNoteEditorViewController *)self textView];
  textView5 = [textView6 ic_textRangeFromCharacterRange:v35];

  textView7 = [(ICNoteEditorViewController *)self textView];
  v25 = [textView7 textInRange:textView5];

  selectedText = v25;
LABEL_12:

  presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  mergeableString = [note2 mergeableString];
  v30 = [MEMORY[0x277CCAE60] valueWithRange:v35];
  v36[0] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v32 = [mergeableString selectionForCharacterRanges:v31 selectionAffinity:1];

  v33 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:self text:selectedText url:linkForSelection attachment:attachment stringSelection:v32 range:v35 addApproach:3];
  [(ICNoteEditorViewController *)self setLinkEditorController:v33];
}

- (void)openLinkEditorForLink:(id)link atRange:(_NSRange)range delegate:(id)delegate
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (link)
  {
    length = range.length;
    location = range.location;
    delegateCopy = delegate;
    linkCopy = link;
    note = [(ICNoteEditorBaseViewController *)self note];
    mergeableString = [note mergeableString];
    v13 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v15 = [mergeableString selectionForCharacterRanges:v14 selectionAffinity:1];

    presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];

    if (presentedViewController)
    {
      [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
    }

    displayText = [linkCopy displayText];
    v18 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:delegateCopy text:displayText url:0 attachment:linkCopy stringSelection:v15 range:location addApproach:length, 3];

    [(ICNoteEditorViewController *)self setLinkEditorController:v18];
  }
}

- (void)openLinkEditorForLinkTextItem:(id)item
{
  v24[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    range = [itemCopy range];
    v8 = v7;
    textView = [(ICNoteEditorViewController *)self textView];
    v10 = [textView ic_textRangeFromCharacterRange:{range, v8}];

    textView2 = [(ICNoteEditorViewController *)self textView];
    v12 = [textView2 textInRange:v10];

    note = [(ICNoteEditorBaseViewController *)self note];
    mergeableString = [note mergeableString];
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{range, v8}];
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v17 = [mergeableString selectionForCharacterRanges:v16 selectionAffinity:1];

    presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];

    if (presentedViewController)
    {
      [(ICNoteEditorViewController *)self hideAndDismissPresentedViewController];
    }

    link = [v5 link];
    textView3 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView3 selectedRange];
    v23 = [ICLinkEditorControllerHelper presentFromViewController:self delegate:self text:v12 url:link attachment:0 stringSelection:v17 range:selectedRange addApproach:v22, 3];
    [(ICNoteEditorViewController *)self setLinkEditorController:v23];
  }
}

- (void)removeLinkForLinkTextItem:(id)item
{
  if (item)
  {
    range = [item range];

    [(ICNoteEditorViewController *)self removeLinksFromRange:range, v4];
  }
}

- (void)insertGraph:(id)graph
{
  graphCopy = graph;
  objc_opt_class();
  v5 = ICDynamicCast();

  calculateGraphingControllerInsertionDecision = [v5 calculateGraphingControllerInsertionDecision];

  if (calculateGraphingControllerInsertionDecision)
  {
    calculateGraphingController = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController performDecision:calculateGraphingControllerInsertionDecision];
  }
}

- (void)addToGraph:(id)graph
{
  graphCopy = graph;
  objc_opt_class();
  v5 = ICDynamicCast();

  calculateGraphingControllerInsertionDecision = [v5 calculateGraphingControllerInsertionDecision];

  if (calculateGraphingControllerInsertionDecision)
  {
    [calculateGraphingControllerInsertionDecision setPrefersExistingGraph:1];
    calculateGraphingController = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController performDecision:calculateGraphingControllerInsertionDecision];
  }
}

- (void)createNoteLinkAttachment:(id)attachment textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach
{
  length = range.length;
  location = range.location;
  selectionCopy = selection;
  v12 = MEMORY[0x277D35F28];
  attachmentCopy = attachment;
  note = [(ICNoteEditorBaseViewController *)self note];
  managedObjectContext = [note managedObjectContext];
  v16 = [v12 noteWithIdentifier:attachmentCopy context:managedObjectContext];

  if (v16)
  {
    approachCopy = approach;
    v17 = MEMORY[0x277D35EF8];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    v19 = [v17 newLinkAttachmentToNote:v16 fromNote:note2 parentAttachment:0];

    note3 = [(ICNoteEditorBaseViewController *)self note];
    mergeableString = [note3 mergeableString];
    v22 = [mergeableString characterRangesForSelection:selectionCopy];
    firstObject = [v22 firstObject];

    if (firstObject)
    {
      location = [firstObject rangeValue];
      length = v24;
    }

    if (v19)
    {
      v43 = selectionCopy;
      if (!length && location)
      {
        v42 = v19;
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        textView = [(ICNoteEditorViewController *)self textView];
        textStorage = [textView textStorage];
        string = [textStorage string];
        v29 = [whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", location - 1)}];

        if ((v29 & 1) == 0)
        {
          textView2 = [(ICNoteEditorViewController *)self textView];
          textStorage2 = [textView2 textStorage];
          v32 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
          [textStorage2 insertAttributedString:v32 atIndex:location];

          length = 0;
          ++location;
        }

        v19 = v42;
      }

      attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
      v34 = [attachmentInsertionController addInlineAttachment:v19 atTextRange:{location, length}];

      [firstObject rangeValue];
      if (v35)
      {
        rangeValue = [firstObject rangeValue];
        textView3 = [(ICNoteEditorViewController *)self textView];
        [textView3 setSelectedRange:{rangeValue + 1, 0}];
      }

      [v19 updateChangeCountWithReason:@"Created note link"];
      note4 = [(ICNoteEditorBaseViewController *)self note];
      [note4 updateModificationDateAndChangeCountAndSaveImmediately];

      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note5 = [(ICNoteEditorBaseViewController *)self note];
      [eventReporter submitAddLinkEvent:note5 addApproach:approachCopy contentType:1 isTokenized:1];

      [(ICNoteEditorViewController *)self startEditing];
      selectionCopy = v43;
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

- (void)createLink:(id)link title:(id)title textSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)approach
{
  v65 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  titleCopy = title;
  selectionCopy = selection;
  note = [(ICNoteEditorBaseViewController *)self note];
  mergeableString = [note mergeableString];
  v48 = selectionCopy;
  v13 = [mergeableString characterRangesForSelection:selectionCopy];

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
        textView = [(ICNoteEditorViewController *)self textView];
        textStorage = [textView textStorage];
        v21 = [textStorage attributesAtIndex:objc_msgSend(v18 effectiveRange:{"rangeValue"), 0}];

        v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:titleCopy];
        ic_range = [v22 ic_range];
        [v22 addAttributes:v21 range:{ic_range, v24}];
        ic_range2 = [v22 ic_range];
        [v22 addAttribute:v53 value:linkCopy range:{ic_range2, v26}];
        ic_range3 = [v22 ic_range];
        [v22 removeAttribute:v52 range:{ic_range3, v28}];
        textView2 = [(ICNoteEditorViewController *)self textView];
        textStorage2 = [textView2 textStorage];
        rangeValue = [v18 rangeValue];
        v33 = v32;
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __79__ICNoteEditorViewController_createLink_title_textSelection_range_addApproach___block_invoke;
        v58[3] = &unk_2781AC8D0;
        v58[4] = v18;
        v34 = v22;
        v59 = v34;
        [textStorage2 enumerateAttribute:v51 inRange:rangeValue options:v33 usingBlock:{0, v58}];

        textView3 = [(ICNoteEditorViewController *)self textView];
        textStorage3 = [textView3 textStorage];
        rangeValue2 = [v18 rangeValue];
        v39 = v38;
        v40 = [v34 copy];
        [textStorage3 replaceCharactersInRange:rangeValue2 withAttributedString:{v39, v40}];

        [v18 rangeValue];
        if (v41)
        {
          rangeValue3 = [v18 rangeValue];
          v43 = [v34 length];
          textView4 = [(ICNoteEditorViewController *)self textView];
          [textView4 setSelectedRange:{rangeValue3, v43}];
        }

        ++v17;
      }

      while (v57 != v17);
      v57 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v57);
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  [note2 updateModificationDateAndChangeCountAndSaveImmediately];

  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note3 = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitAddLinkEvent:note3 addApproach:approach url:linkCopy];

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

- (void)removeLinksFromTextSelection:(id)selection range:(_NSRange)range
{
  v21 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  note = [(ICNoteEditorBaseViewController *)self note];
  mergeableString = [note mergeableString];
  v8 = [mergeableString characterRangesForSelection:selectionCopy];

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

        rangeValue = [*(*(&v16 + 1) + 8 * v13) rangeValue];
        [(ICNoteEditorViewController *)self removeLinksFromRange:rangeValue, v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)removeLinksFromRange:(_NSRange)range
{
  location = range.location;
  if (range.length)
  {
    length = range.length;
    textStorage = [(ICNoteEditorViewController *)self textStorage];
    [textStorage removeAttribute:*MEMORY[0x277D740E8] range:{location, length}];

    textStorage2 = [(ICNoteEditorViewController *)self textStorage];
    v8 = *MEMORY[0x277D74060];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __51__ICNoteEditorViewController_removeLinksFromRange___block_invoke;
    v29[3] = &unk_2781AC5D8;
    v29[4] = self;
    [textStorage2 enumerateAttribute:v8 inRange:location options:length usingBlock:{0, v29}];
  }

  else
  {
    v30 = xmmword_2154BBE70;
    textStorage3 = [(ICNoteEditorViewController *)self textStorage];
    v10 = *MEMORY[0x277D740E8];
    textStorage4 = [(ICNoteEditorViewController *)self textStorage];
    v12 = [textStorage3 attribute:v10 atIndex:location longestEffectiveRange:&v30 inRange:{0, objc_msgSend(textStorage4, "length")}];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      textView = [(ICNoteEditorViewController *)self textView];
      textStorage5 = [textView textStorage];
      [textStorage5 removeAttribute:v10 range:v30];
    }

    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage6 = [textView2 textStorage];
    v17 = [textStorage6 attribute:*MEMORY[0x277D74060] atIndex:location effectiveRange:0];

    objc_opt_class();
    v18 = ICDynamicCast();
    v19 = v18;
    if (v18)
    {
      attachment = [v18 attachment];
      note = [(ICNoteEditorBaseViewController *)self note];
      v22 = [note rangeForAttachment:attachment];
      v24 = v23;

      textView3 = [(ICNoteEditorViewController *)self textView];
      textStorage7 = [textView3 textStorage];
      displayText = [attachment displayText];
      [textStorage7 replaceCharactersInRange:v22 withString:{v24, displayText}];
    }
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  [note2 updateModificationDateAndChangeCountAndSaveImmediately];
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
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];

  if (auxiliaryResponder)
  {
    objc_opt_class();
    auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    textView = ICDynamicCast();

    [textView removeLinksFromCurrentSelection];
  }

  else
  {
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    [(ICNoteEditorViewController *)self removeLinksFromRange:selectedRange, v6];
  }
}

- (void)linkEditorDidDismiss
{
  [(ICNoteEditorViewController *)self setLinkEditorController:0];
  textView = [(ICNoteEditorViewController *)self textView];
  isEditing = [textView isEditing];

  if ((isEditing & 1) == 0)
  {

    [(ICNoteEditorViewController *)self startEditing];
  }
}

- (void)hashtagViewController:(id)controller insertHashtagWithText:(id)text
{
  v5 = MEMORY[0x277D35EF8];
  textCopy = text;
  note = [(ICNoteEditorBaseViewController *)self note];
  v15 = [v5 createHashtagAttachmentIfApplicableWithHashtagText:textCopy creatingHashtagIfNecessary:1 note:note parentAttachment:0];

  if (v15)
  {
    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    v12 = [attachmentInsertionController addInlineAttachment:v15 atTextRange:{selectedRange, v11}];

    [v15 updateChangeCountWithReason:@"Created tag"];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [note2 updateChangeCountWithReason:@"Inserted tag"];

    note3 = [(ICNoteEditorBaseViewController *)self note];
    [note3 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)hashtagViewController:(id)controller insertUnknownInlineAttachmentWithText:(id)text
{
  v5 = MEMORY[0x277D35EF8];
  v6 = *MEMORY[0x277D35D48];
  textCopy = text;
  v8 = [v6 stringByAppendingString:@".unknown"];
  note = [(ICNoteEditorBaseViewController *)self note];
  v17 = [v5 createInlineAttachmentIfApplicableWithTypeUTI:v8 altText:textCopy tokenContentIdentifier:textCopy note:note parentAttachment:0];

  if (v17)
  {
    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    v14 = [attachmentInsertionController addInlineAttachment:v17 atTextRange:{selectedRange, v13}];

    [v17 updateChangeCountWithReason:@"Created unknown inline attachment"];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [note2 updateChangeCountWithReason:@"Inserted unknown inline attachment"];

    note3 = [(ICNoteEditorBaseViewController *)self note];
    [note3 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)hashtagViewController:(id)controller insertFutureHashtagWithText:(id)text
{
  v5 = MEMORY[0x277D35EF8];
  textCopy = text;
  note = [(ICNoteEditorBaseViewController *)self note];
  v15 = [v5 createHashtagAttachmentIfApplicableWithHashtagText:textCopy creatingHashtagIfNecessary:1 note:note parentAttachment:0];

  if (v15)
  {
    [v15 requireMinimumSupportedVersionAndPropagateToChildObjects:{objc_msgSend(MEMORY[0x277D35E80], "currentNotesVersion") + 1}];
    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    textView = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView selectedRange];
    v12 = [attachmentInsertionController addInlineAttachment:v15 atTextRange:{selectedRange, v11}];

    [v15 updateChangeCountWithReason:@"Created tag from the future"];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [note2 updateChangeCountWithReason:@"Inserted tag from the future"];

    note3 = [(ICNoteEditorBaseViewController *)self note];
    [note3 save];
  }

  [(ICNoteEditorViewController *)self setEditing:1 animated:1];
}

- (void)decreaseIndentation:(id)indentation
{
  indentationCopy = indentation;
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

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitNoteEditorCallOutBarButtonSelectionEventForModernNote:note buttonTypeValue:v6];
  }
}

- (void)increaseIndentation:(id)indentation
{
  indentationCopy = indentation;
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

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitNoteEditorCallOutBarButtonSelectionEventForModernNote:note buttonTypeValue:v6];
  }
}

- (int64_t)indentAmountIncreasing:(BOOL)increasing
{
  if ([(ICNoteEditorViewController *)self currentWritingDirection]== !increasing)
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

- (void)indentSelectionIfPossibleByAmount:(int64_t)amount
{
  if ([(ICNoteEditorViewController *)self canIndentByAmount:?])
  {
    auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

    if (auxiliaryStylingController)
    {
      auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
      [auxiliaryStylingController2 indentByamount:amount];
    }

    else
    {
      textView = [(ICNoteEditorViewController *)self textView];
      [textView ic_indentByAmount:amount];

      auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
      [(ICNoteEditorViewController *)self textViewDidChange:auxiliaryStylingController2];
    }

    if (amount > 0)
    {
      v8 = 13;
    }

    else
    {
      v8 = 14;
    }

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitStyleFormatEventForModernNote:note styleTypeValue:v8];
  }

  dispatchMainAfterDelay();
}

void __64__ICNoteEditorViewController_indentSelectionIfPossibleByAmount___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textView];
  [v1 icaxSpeakIndentationLevelForCurrentSelectedRange];
}

- (BOOL)canIndentByAmount:(int64_t)amount
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  if (!isEditable)
  {
    return 0;
  }

  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    v9 = [auxiliaryStylingController2 canIndentByamount:amount];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    v9 = [auxiliaryStylingController2 ic_canIndentByDelta:amount];
  }

  v10 = v9;

  return v10;
}

- (void)ic_alignLeft:(id)left
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 setSelectionAlignment:0];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_setTextAlignmentForCurrentSelection:0];
  }
}

- (void)ic_alignCenter:(id)center
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 setSelectionAlignment:1];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_setTextAlignmentForCurrentSelection:1];
  }
}

- (void)ic_alignRight:(id)right
{
  auxiliaryStylingController = [(ICNoteEditorViewController *)self auxiliaryStylingController];

  if (auxiliaryStylingController)
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self auxiliaryStylingController];
    [auxiliaryStylingController2 setSelectionAlignment:2];
  }

  else
  {
    auxiliaryStylingController2 = [(ICNoteEditorViewController *)self textView];
    [auxiliaryStylingController2 ic_setTextAlignmentForCurrentSelection:2];
  }
}

- (void)handleLeftOrRightSwipe:(id)swipe
{
  v30[1] = *MEMORY[0x277D85DE8];
  swipeCopy = swipe;
  textView = [(ICNoteEditorViewController *)self textView];
  textController = [(ICNoteEditorViewController *)self textController];
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isEditable] && objc_msgSend(swipeCopy, "state") == 3)
  {
    attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
    attributionSidebarVisibility = [attributionSidebarController attributionSidebarVisibility];

    if (!attributionSidebarVisibility)
    {
      [swipeCopy locationInView:textView];
      v10 = [(ICNoteEditorViewController *)self rangeForIndentationGestureAtPoint:?];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v10;
        v13 = v11;
        if ([(ICNoteEditorViewController *)self isSwipeOnTodoItem:swipeCopy])
        {
          textStorage = [textView textStorage];
          [textController paragraphStyleForRange:v12 inTextView:v13 inTextStorage:{textView, textStorage}];

          if (ICTTNamedStyleIsList())
          {
            if ([swipeCopy direction] == 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = -1;
            }

            textStorage2 = [textView textStorage];
            v17 = [textController writingDirectionForRange:v12 inTextView:v13 inTextStorage:{textView, textStorage2}];

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
            v21 = [textController canIndentTextView:textView byDelta:v18 forRanges:v20];

            if (v21)
            {
              v22 = MEMORY[0x277CBEBB8];
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __53__ICNoteEditorViewController_handleLeftOrRightSwipe___block_invoke;
              v24[3] = &unk_2781AD2A0;
              v24[4] = self;
              v25 = textView;
              v27 = v12;
              v28 = v13;
              v26 = textController;
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v24[1] = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    textController = [(ICNoteEditorViewController *)self textController];
    note = [(ICNoteEditorBaseViewController *)self note];
    if ([note isEditable])
    {
      attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
      attributionSidebarVisibility = [attributionSidebarController attributionSidebarVisibility];

      if (!attributionSidebarVisibility)
      {
        [v5 locationInView:textView];
        v11 = [(ICNoteEditorViewController *)self rangeForIndentationGestureAtPoint:?];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v11;
          v14 = v12;
          if ([(ICNoteEditorViewController *)self isSwipeOnTodoItem:v5])
          {
            textStorage = [textView textStorage];
            [textController paragraphStyleForRange:v13 inTextView:v14 inTextStorage:{textView, textStorage}];

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

              textStorage2 = [textView textStorage];
              v18 = [textController writingDirectionForRange:v13 inTextView:v14 inTextStorage:{textView, textStorage2}];

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
              v22 = [textController canIndentTextView:textView byDelta:v19 forRanges:v21];

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

- (_NSRange)rangeForIndentationGestureAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textView = [(ICNoteEditorViewController *)self textView];
  v7 = [textView characterRangeAtPoint:{x, y}];

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

- (BOOL)isPositionOnTodoItem:(CGPoint)item
{
  y = item.y;
  x = item.x;
  textView = [(ICNoteEditorViewController *)self textView];
  textController = [(ICNoteEditorViewController *)self textController];
  v8 = [textView characterRangeAtPoint:{x, y}];
  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self charRangeForSwipeTextRange:v8];
    v11 = v10;
    textStorage = [textView textStorage];
    v13 = [textController writingDirectionForRange:v9 inTextView:v11 inTextStorage:{textView, textStorage}];

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      textLayoutManager = [textView textLayoutManager];
      textLayoutManager2 = [textView textLayoutManager];
      documentRange = [textLayoutManager2 documentRange];
      [documentRange location];
      v17 = v33 = v13;
      layoutManager = [textLayoutManager locationFromLocation:v17 withOffset:v9];

      icTextLayoutManager = [textView icTextLayoutManager];
      v20 = [icTextLayoutManager textLayoutFragmentForLocation:layoutManager];
      [v20 layoutFragmentFrame];
      v22 = v21;
      v24 = v23;

      v13 = v33;
    }

    else
    {
      layoutManager = [textView layoutManager];
      [layoutManager lineFragmentUsedRectForGlyphAtIndex:v9 effectiveRange:0];
      v22 = v26;
      v24 = v27;
    }

    [textView textContainerInset];
    [textView textContainerInset];
    TSDAddPoints();
    v35.origin.x = v28 - dbl_2154BBFC0[v13 == 1];
    v35.size.width = v22 + 286.0;
    v35.origin.y = v29 + -22.0;
    v35.size.height = v24 + 44.0;
    v34.x = x;
    v34.y = y;
    v30 = CGRectContainsPoint(v35, v34);
    textStorage2 = [textView textStorage];
    [textController paragraphStyleForRange:v9 inTextView:v11 inTextStorage:{textView, textStorage2}];

    v25 = v30 & ICTTNamedStyleIsList();
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  return v25;
}

- (BOOL)isSwipeOnTodoItem:(id)item
{
  itemCopy = item;
  textView = [(ICNoteEditorViewController *)self textView];
  [itemCopy locationInView:textView];
  v7 = v6;
  v9 = v8;

  return [(ICNoteEditorViewController *)self isPositionOnTodoItem:v7, v9];
}

- (_NSRange)charRangeForSwipeTextRange:(id)range
{
  rangeCopy = range;
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = [textView ic_characterRangeFromTextRange:rangeCopy];
  v8 = v7;

  if (v8 == 1)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView2 textStorage];
    v11 = [textStorage attributedSubstringFromRange:{v6, 1}];
    string = [v11 string];

    v13 = [string characterAtIndex:0];
    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    LODWORD(v13) = [newlineCharacterSet characterIsMember:v13];

    if (v13)
    {
      textView3 = [(ICNoteEditorViewController *)self textView];
      textStorage2 = [textView3 textStorage];
      [textStorage2 ic_range];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  swipeGestureRecognizers = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
  v9 = [swipeGestureRecognizers containsObject:recognizerCopy];

  if (v9)
  {
    splitViewController = [(ICNoteEditorViewController *)self splitViewController];
    displayMode = [splitViewController displayMode];

    if (displayMode == 1)
    {
      view = [(ICNoteEditorViewController *)self view];
      [touchCopy locationInView:view];
      v14 = v13 > 44.0;
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_5;
  }

  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  panGestureRecognizer = [attributionSidebarController panGestureRecognizer];

  if (panGestureRecognizer != recognizerCopy)
  {
LABEL_5:
    v14 = 1;
    goto LABEL_22;
  }

  view = [touchCopy view];
  NSClassFromString(&cfstr_Icpaperdocumen.isa);
  if (view)
  {
    while (1)
    {
      textView = [(ICNoteEditorViewController *)self textView];

      if (view == textView)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [view superview];

      view = superview;
      if (!superview)
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
    view = [(ICNoteEditorViewController *)self textView];
    ic_pkSelectionInteraction = [view ic_pkSelectionInteraction];
    if ([ic_pkSelectionInteraction hasCurrentSelection])
    {
      v14 = 0;
    }

    else
    {
      textView2 = [(ICNoteEditorViewController *)self textView];
      ic_pkSelectionInteraction2 = [textView2 ic_pkSelectionInteraction];
      v14 = ([ic_pkSelectionInteraction2 hasStrokesOrElementsSelection] & 1) == 0 && objc_msgSend(touchCopy, "type") == 0;
    }

    goto LABEL_21;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  panGestureRecognizer = [attributionSidebarController panGestureRecognizer];

  if (panGestureRecognizer != recognizerCopy)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  view = [gestureRecognizerCopy view];
  textView = [(ICNoteEditorViewController *)self textView];
  if (view == textView)
  {
    goto LABEL_10;
  }

  view2 = [gestureRecognizerCopy view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  view3 = [gestureRecognizerCopy view];
  panGestureRecognizer2 = [view3 panGestureRecognizer];

  if (panGestureRecognizer2 != gestureRecognizerCopy)
  {
    goto LABEL_11;
  }

  view = [gestureRecognizerCopy view];
  textView = gestureRecognizerCopy;
  [textView velocityInView:view];
  if (v15 <= 0.0)
  {
LABEL_10:

LABEL_11:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    view4 = [gestureRecognizerCopy view];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    className = [gestureRecognizerCopy className];
    v22 = [className isEqualToString:@"UITextRangeAdjustmentGestureRecognizer"];

    if ((isKindOfClass & 1) == 0)
    {
      v17 = (v20 | v22) ^ 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [view contentOffset];
  v17 = v16 <= 0.0;
  if (v16 <= 0.0)
  {
    [textView setState:4];
    [view contentOffset];
    [view setContentOffset:1 animated:0.0];
  }

LABEL_13:
  return v17 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  swipeGestureRecognizers = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
  if ([swipeGestureRecognizers containsObject:recognizerCopy])
  {

LABEL_5:
    objc_opt_class();
    v12 = ICDynamicCast();
    v11 = v12 != 0;

    goto LABEL_6;
  }

  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  panGestureRecognizer = [attributionSidebarController panGestureRecognizer];

  if (panGestureRecognizer == recognizerCopy)
  {
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  interactiveContentPopGestureRecognizer = [navigationController interactiveContentPopGestureRecognizer];

  if (interactiveContentPopGestureRecognizer == gestureRecognizerCopy)
  {
    swipeGestureRecognizers = [(ICNoteEditorViewController *)self swipeGestureRecognizers];
    if ([swipeGestureRecognizers containsObject:recognizerCopy])
    {
      v10 = 1;
    }

    else
    {
      attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
      panGestureRecognizer = [attributionSidebarController panGestureRecognizer];
      v10 = panGestureRecognizer == recognizerCopy;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  objc_opt_class();
  textStorage = [editingCopy textStorage];

  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = [v6 isDropping] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  if ((isEditable & 1) == 0)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    if ([note2 isDeletedOrInTrash])
    {
      isTogglingLock = [(ICNoteEditorViewController *)self isTogglingLock];

      if (!isTogglingLock)
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

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  [MEMORY[0x277D35E88] prefetchHashtagDisplayTextsFromOtherApps];
  [(ICNoteEditorViewController *)self setEditing:1];
  note = [(ICNoteEditorBaseViewController *)self note];

  if (note)
  {
    updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [updateNoteUserActivityStateDelayer requestFire];
  }

  else
  {
    v6 = MEMORY[0x277D35F28];
    noteContext = [(ICNoteEditorViewController *)self noteContext];
    managedObjectContext = [noteContext managedObjectContext];
    v9 = [v6 newEmptyNoteInContext:managedObjectContext];
    [(ICNoteEditorViewController *)self setNote:v9];

    [(ICNoteEditorViewController *)self performSelector:sel_startEditing withObject:0 afterDelay:0.0];
  }

  textController = [(ICNoteEditorViewController *)self textController];
  selectedRange = [editingCopy selectedRange];
  v13 = v12;
  isLoadingStyleSelectorInputView = [(ICNoteEditorViewController *)self isLoadingStyleSelectorInputView];
  typingAttributes = [editingCopy typingAttributes];
  textStorage = [(ICNoteEditorViewController *)self textStorage];
  v17 = [textController typingAttributesForRange:selectedRange forSelectionChange:v13 currentTypingAttributes:!isLoadingStyleSelectorInputView inTextStorage:{typingAttributes, textStorage}];
  [editingCopy setTypingAttributes:v17];

  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverrideToRestore];
  if (v18 > 0.0)
  {
    [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverrideToRestore];
    [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:?];
    [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:0.0];
  }

  [(ICNoteEditorViewController *)self setInkPickerState:2];
  textView = [(ICNoteEditorViewController *)self textView];
  v20 = [textView ink];
  _isHandwritingInk = [v20 _isHandwritingInk];

  if ((_isHandwritingInk & 1) == 0)
  {
    [(ICNoteEditorViewController *)self hideInkPicker];
  }

  [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForDidBeginEditing:editingCopy];
  [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_didEditorBeginEditing];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];

  if (!auxiliaryResponder)
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
    [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForDidEndEditing:editingCopy];
    calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController discardPreviewedResult];

    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];

    if (calculateScrubberController)
    {
      calculateScrubberController2 = [(ICNoteEditorViewController *)self calculateScrubberController];
      [calculateScrubberController2 hideScrubber];
    }

    [(ICNoteEditorViewController *)self setEditing:0];
    updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [updateNoteUserActivityStateDelayer requestFire];

    [(ICNoteEditorViewController *)self didEndEditingNote];
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setEditable:0];

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  }

  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  [(ICNoteEditorViewController *)self donateEditingIntentIfNecessary];
}

- (double)textViewScrollPosition
{
  textView = [(ICNoteEditorViewController *)self textView];
  [textView contentOffset];
  v4 = v3;

  return v4;
}

- (_NSRange)textViewVisibleRange
{
  textView = [(ICNoteEditorViewController *)self textView];
  ic_visibleRange = [textView ic_visibleRange];
  v5 = v4;

  v6 = ic_visibleRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)restoreTextViewScrollPosition:(double)position
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    layoutManager = [textView layoutManager];
    textView2 = [(ICNoteEditorViewController *)self textView];
    textContainer = [textView2 textContainer];
    [layoutManager ensureLayoutForTextContainer:textContainer];
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 contentOffset];
  v11 = v10;

  textView4 = [(ICNoteEditorViewController *)self textView];
  [textView4 setClippedContentOffset:{v11, position}];
}

- (void)restoreTextViewVisibleRange:(_NSRange)range animated:(BOOL)animated
{
  length = range.length;
  location = range.location;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    layoutManager = [textView layoutManager];
    textView2 = [(ICNoteEditorViewController *)self textView];
    textContainer = [textView2 textContainer];
    [layoutManager ensureLayoutForTextContainer:textContainer];
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 ic_scrollRangeToVisible:location consideringInsets:length animated:{1, 0}];
}

- (BOOL)wantsToRemainFirstResponder
{
  if (-[ICNoteEditorViewController isViewLoaded](self, "isViewLoaded") && ((-[ICNoteEditorViewController isEditing](self, "isEditing") & 1) != 0 || (-[ICNoteEditorViewController textView](self, "textView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 selectedTextRange], v4 = objc_claimAutoreleasedReturnValue(), v3, v4) && (v5 = objc_msgSend(v4, "isEmpty"), v4, !v5)) || (-[ICNoteEditorViewController textView](self, "textView"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "findInteraction"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isFindNavigatorVisible"), v7, v6, (v8 & 1) != 0))
  {
    LOBYTE(isInkPickerShowing) = 1;
  }

  else
  {
    isInkPickerShowing = [(ICNoteEditorViewController *)self isInkPickerShowing];
    if (isInkPickerShowing)
    {

      LOBYTE(isInkPickerShowing) = [(ICNoteEditorViewController *)self ic_isViewVisible];
    }
  }

  return isInkPickerShowing;
}

- (ICTTTextStorage)textStorage
{
  objc_opt_class();
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  textStorage = [(ICNoteEditorViewController *)self textStorage];
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorageWithoutCreating = [note textStorageWithoutCreating];

  if (textStorage != textStorageWithoutCreating)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"The text storage set on the editor does not match the text storage on the note"];
  }

  ic_topViewController = [(ICNoteEditorViewController *)self ic_topViewController];
  modalPresentationStyle = [ic_topViewController modalPresentationStyle];

  if (modalPresentationStyle == 7)
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    [viewControllerManager dismissOverlayContent];
  }

  [changeCopy updateTextViewForDidChange];
  [(ICNoteEditorViewController *)self setIsSelecting:0];
  [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  [note2 updateModificationDateAndChangeCountAndSaveAfterDelay];

  textStorage2 = [(ICNoteEditorViewController *)self textStorage];
  v12 = [textStorage2 isEditingOrConvertingMarkedText:0];

  if (![(ICNoteEditorViewController *)self previouslyHadMarkedText])
  {
    if (v12)
    {
      textView = [(ICNoteEditorViewController *)self textView];
      markedTextRange = [textView markedTextRange];

      if (markedTextRange)
      {
        textView2 = [(ICNoteEditorViewController *)self textView];
        textView3 = [(ICNoteEditorViewController *)self textView];
        markedTextRange2 = [textView3 markedTextRange];
        v18 = [textView2 ic_characterRangeFromTextRange:markedTextRange2];
        v20 = v19;

        textController = [(ICNoteEditorViewController *)self textController];
        textView4 = [(ICNoteEditorViewController *)self textView];
        tTTextStorage = [textView4 TTTextStorage];
        textView5 = [(ICNoteEditorViewController *)self textView];
        [textController updateParagraphWritingDirectionToKeyboardWritingDirectionInRange:v18 textStorage:v20 textView:{tTTextStorage, textView5}];
      }
    }
  }

  calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
  [calculateScrubberController hideIfNotScrubbing];

  [(ICNoteEditorViewController *)self setPreviouslyHadMarkedText:v12];
  [(ICNoteEditorViewController *)self setHasMadeEdits];
  note3 = [(ICNoteEditorBaseViewController *)self note];
  calculateDocumentController = [note3 calculateDocumentController];
  [calculateDocumentController scheduleUpdateAffectingChangeCounts:1 isHighPriority:0];

  inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];

  if (inkPaletteController)
  {
    [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_textViewDidChange];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteEditorViewControllerDidEditNoteNotification" object:self];
}

- (void)setHasMadeEdits
{
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
  if ([auxiliaryResponder isFirstResponder])
  {
    objc_opt_class();
    auxiliaryResponder2 = [(ICNoteEditorViewController *)self auxiliaryResponder];
    textView = ICDynamicCast();

    if (textView)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  textView = [(ICNoteEditorViewController *)self textView];
LABEL_6:
  [(ICNoteEditorViewController *)self updateTextInputAccessoryViewForTextViewDidChange:textView];

  if (![(ICNoteEditorViewController *)self hasMadeEdits])
  {
    [(ICNoteEditorViewController *)self setHasMadeEdits:1];

    [(ICNoteEditorViewController *)self updateBarButtons];
  }
}

- (void)updateStyleSelectorStateIfNeededIgnoreTypingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  noteFormattingController = [(ICNoteEditorViewController *)self noteFormattingController];
  popoverPresentationController = [noteFormattingController popoverPresentationController];

  if (popoverPresentationController)
  {
    noteFormattingController2 = [(ICNoteEditorViewController *)self noteFormattingController];
    popoverPresentationController2 = [noteFormattingController2 popoverPresentationController];
    presentingViewController = [popoverPresentationController2 presentingViewController];

    if (!presentingViewController)
    {
LABEL_5:
      navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      usesStyleMenu = [navigationItemConfiguration usesStyleMenu];

      if (!usesStyleMenu)
      {
        return;
      }
    }
  }

  else if (![(ICNoteEditorViewController *)self styleSelectorInputViewShowing])
  {
    goto LABEL_5;
  }

  noteFormattingController3 = [(ICNoteEditorViewController *)self noteFormattingController];
  [noteFormattingController3 updateWithDataSource:self ignoreTypingAttributes:attributesCopy];
}

- (void)selectDrawingAttachmentIfNeeded:(id)needed
{
  neededCopy = needed;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  [v4 setTextSelectionHidden:0];
  selectedCanvasAttachment = [(ICNoteEditorViewController *)self selectedCanvasAttachment];
  window = [neededCopy window];
  [selectedCanvasAttachment setViewSelected:0 inWindow:window];

  [neededCopy selectedRange];
  if (v7 == 1)
  {
    textStorage = [neededCopy textStorage];
    v9 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(neededCopy effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v10 = ICDynamicCast();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && v10)
    {
      [(ICNoteEditorViewController *)self setSelectedCanvasAttachment:v10];
      window2 = [neededCopy window];
      [v10 setViewSelected:1 inWindow:window2];

      [v4 setTextSelectionHidden:1];
    }
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  v59[1] = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selectedRange = [selectionCopy selectedRange];
  v7 = v6;
  if (selectedRange != [(ICNoteEditorViewController *)self lastSelectedRange]|| v7 != v8)
  {
    mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
    [mEMORY[0x277D35E50] extendDeauthenticationTimer];

    if (![(ICNoteEditorViewController *)self isSelecting])
    {
      [selectionCopy selectedRange];
      if (v10)
      {
        [(ICNoteEditorViewController *)self setIsSelecting:1];
        [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
      }
    }

    if (![(ICNoteEditorViewController *)self isSettingSelection])
    {
      [(ICNoteEditorViewController *)self setIsSettingSelection:1];
      textController = [(ICNoteEditorViewController *)self textController];
      selectedRange2 = [selectionCopy selectedRange];
      v14 = v13;
      typingAttributes = [selectionCopy typingAttributes];
      textStorage = [(ICNoteEditorViewController *)self textStorage];
      v17 = [textController typingAttributesForRange:selectedRange2 forSelectionChange:v14 currentTypingAttributes:1 inTextStorage:{typingAttributes, textStorage}];
      [selectionCopy setTypingAttributes:v17];

      [(ICNoteEditorViewController *)self setIsSettingSelection:0];
    }

    updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
    [updateNoteUserActivityStateDelayer requestFire];

    [(ICNoteEditorViewController *)self updateBarButtons];
    [(ICNoteEditorViewController *)self selectDrawingAttachmentIfNeeded:selectionCopy];
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      textController2 = [(ICNoteEditorViewController *)self textController];
      textStorage2 = [selectionCopy textStorage];
      v21 = MEMORY[0x277CCAE60];
      selectedRange3 = [selectionCopy selectedRange];
      v24 = [v21 valueWithRange:{selectedRange3, v23}];
      v59[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
      layoutManager = [selectionCopy layoutManager];
      textView = [(ICNoteEditorViewController *)self textView];
      [textController2 updateAttachmentsSelectionStateInTextStorage:textStorage2 forSelectedRanges:v25 layoutManager:layoutManager textView:textView];
    }

    [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration updateSelectionInTextView:selectionCopy];

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 icaxTextDidChangeSelection];

    selectedRange4 = [selectionCopy selectedRange];
    [(ICNoteEditorViewController *)self setLastSelectedRange:selectedRange4, v31];
    objc_opt_class();
    textView3 = [(ICNoteEditorViewController *)self textView];
    textStorage3 = [textView3 textStorage];
    v34 = ICDynamicCast();

    textView4 = [(ICNoteEditorViewController *)self textView];
    hashtagController = [(ICNoteEditorViewController *)self hashtagController];
    [hashtagController setHashtagKeyboardDelegate:textView4];

    textView5 = [(ICNoteEditorViewController *)self textView];
    mentionsController = [(ICNoteEditorViewController *)self mentionsController];
    [mentionsController setMentionsKeyboardDelegate:textView5];

    mentionsController2 = [(ICNoteEditorViewController *)self mentionsController];
    lastSelectedRange = [(ICNoteEditorViewController *)self lastSelectedRange];
    v42 = v41;
    note = [(ICNoteEditorBaseViewController *)self note];
    textView6 = [(ICNoteEditorViewController *)self textView];
    textView7 = [(ICNoteEditorViewController *)self textView];
    BYTE1(v57) = [textView7 languageHasSpaces];
    LOBYTE(v57) = 0;
    LOBYTE(lastSelectedRange) = [mentionsController2 checkForMentionInEditedRange:lastSelectedRange ofTextStorage:v42 note:v34 textView:note allowAutoExplicitMention:textView6 isEndingEditing:0 languageHasSpaces:v57 parentAttachment:0];

    if ((lastSelectedRange & 1) == 0)
    {
      hashtagController2 = [(ICNoteEditorViewController *)self hashtagController];
      lastSelectedRange2 = [(ICNoteEditorViewController *)self lastSelectedRange];
      v49 = v48;
      note2 = [(ICNoteEditorBaseViewController *)self note];
      textView8 = [(ICNoteEditorViewController *)self textView];
      textView9 = [(ICNoteEditorViewController *)self textView];
      BYTE1(v58) = [textView9 languageHasSpaces];
      LOBYTE(v58) = 0;
      [hashtagController2 checkForHashtagInEditedRange:lastSelectedRange2 ofTextStorage:v49 note:v34 textView:note2 allowAutoExplicitHashtag:textView8 isEndingEditing:0 languageHasSpaces:v58 parentAttachment:0];
    }

    linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController setDelegate:self];

    linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController2 setLinkDelegate:self];

    linkAcceleratorController3 = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController3 presentLinkAcceleratorIfNecessaryWithCompletionHandler:&__block_literal_global_1013];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:self];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  viewCopy = view;
  textCopy = text;
  note = [(ICNoteEditorBaseViewController *)self note];

  if (!note)
  {
    goto LABEL_25;
  }

  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    isInsertingTextFromKeyboardInput = [textView isInsertingTextFromKeyboardInput];

    if (isInsertingTextFromKeyboardInput)
    {
      if ([textCopy isEqualToString:@"\t"])
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

      if ([textCopy isEqualToString:@"\n"] && objc_msgSend(MEMORY[0x277D75658], "ic_isShiftKeyPressed"))
      {
        [(ICNoteEditorViewController *)self shiftReturn:0];
LABEL_25:
        v29 = 0;
        goto LABEL_26;
      }
    }
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note2 textStorage];
  v15 = [textStorage length];
  v16 = [textCopy length];

  if ([textCopy length] > length)
  {
    v17 = v15 - length;
    note3 = [(ICNoteEditorBaseViewController *)self note];
    v19 = [note3 allowsNewTextLength:v17 + v16];

    if ((v19 & 1) == 0)
    {
      [(ICNoteEditorViewController *)self warnUserNoteLengthExceeded];
      goto LABEL_25;
    }
  }

  if ([textCopy isEqualToString:@"\n"])
  {
    textController = [(ICNoteEditorViewController *)self textController];
    v21 = [textController insertNewlineForSpecialCasesInTextView:viewCopy];

    if (v21)
    {
      [(ICNoteEditorViewController *)self updateBarButtons];
      goto LABEL_25;
    }
  }

  textView2 = [(ICNoteEditorViewController *)self textView];
  if ([textView2 isInsertingTextFromKeyboardInput])
  {
    note4 = [(ICNoteEditorBaseViewController *)self note];
    if ([note4 isEmpty])
    {
      v24 = [textCopy length];

      if (v24 >= 0x41)
      {
        textView3 = [(ICNoteEditorViewController *)self textView];
        typingAttributes = [textView3 typingAttributes];
        v27 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
        style = [v27 style];

        if (style <= 2)
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  viewCopy = view;
  lCopy = l;
  IsExtension = _UIApplicationIsExtension();
  if (interaction)
  {
    v11 = 0;
  }

  else
  {
    v11 = IsExtension;
  }

  if (v11 == 1)
  {
    [ICExtensionSafeAPIShims openURL:lCopy originatingView:viewCopy completionHandler:0];
  }

  return v11 ^ 1;
}

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  itemCopy = item;
  menuCopy = menu;
  if ([itemCopy contentType])
  {
    goto LABEL_19;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  if (![note isSharedReadOnly])
  {
    isEditingOnSecureScreen = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];

    if (isEditingOnSecureScreen)
    {
      goto LABEL_19;
    }

    children = [menuCopy children];
    v12 = [children mutableCopy];

    v13 = objc_alloc(MEMORY[0x277D36808]);
    attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v15 = [v13 initWithInsertionController:attachmentInsertionController];

    v16 = &off_2154BB000;
    if (!-[ICNoteEditorBaseViewController isEditingOnSystemPaper](self, "isEditingOnSystemPaper") && [v15 canConvertLinkAtLocationToAttachment:{objc_msgSend(itemCopy, "range")}])
    {
      v17 = MEMORY[0x277D750C8];
      convertLinkToAttachmentActionTitle = [MEMORY[0x277D36808] convertLinkToAttachmentActionTitle];
      convertLinkToAttachmentSystemImageName = [MEMORY[0x277D36808] convertLinkToAttachmentSystemImageName];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __80__ICNoteEditorViewController_textView_menuConfigurationForTextItem_defaultMenu___block_invoke;
      v73[3] = &unk_2781AD2C8;
      v73[4] = self;
      v74 = v15;
      v75 = itemCopy;
      v20 = [v17 ic_actionWithTitle:convertLinkToAttachmentActionTitle imageName:convertLinkToAttachmentSystemImageName handler:v73];

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
    selfCopy = self;
    v25 = itemCopy;
    v72 = v25;
    v26 = [v21 ic_actionWithTitle:v23 imageName:@"pencil" handler:&v67];

    v62 = v26;
    [v64 addObject:v26];
    v27 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [mainBundle localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
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

    link = [v30 link];
    absoluteString = [link absoluteString];
    v37 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    v60 = v37;
    v38 = [MEMORY[0x277D35DF0] predicateForNotesMentionedInURL:v37];
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    v40 = mEMORY[0x277D35F30];
    if (v38 && mEMORY[0x277D35F30])
    {
      v59 = v34;
      v41 = MEMORY[0x277D35F28];
      managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];
      v43 = [v41 notesMatchingPredicate:v38 context:managedObjectContext];

      firstObject = [v43 firstObject];
      if (!firstObject || ([(ICNoteEditorViewController *)self notePreviewView:firstObject], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {

        v51 = 1;
        v56 = v63;
        v34 = v59;
        goto LABEL_18;
      }

      v46 = v45;
      v47 = objc_alloc(MEMORY[0x277D75C18]);
      view = [v46 view];
      v49 = [v47 initWithView:view];

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
      link2 = [v30 link];
      v43 = [v52 initWithURL:link2 resolvingAgainstBaseURL:0];

      scheme = [v43 scheme];
      self = [scheme isEqualToString:@"x-apple-data-detectors"];

      if (self)
      {
        v55 = [MEMORY[0x277D75C10] configurationWithMenu:menuCopy];
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
  self = [MEMORY[0x277D75C10] configurationWithMenu:menuCopy];
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

- (void)textViewWritingToolsWillBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  v11 = ICDynamicCast();

  note = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note documentMergeController];
  [documentMergeController beginBlockingMergeForReason:7 textView:v11];

  tTTextStorage = [v11 TTTextStorage];
  [tTTextStorage setIsEditingViaWritingTools:1];

  uUID = [MEMORY[0x277CCAD78] UUID];
  tTTextStorage2 = [v11 TTTextStorage];
  [tTTextStorage2 setWritingToolsSessionUUID:uUID];

  tTTextStorage3 = [v11 TTTextStorage];
  [tTTextStorage3 breakUndoCoalescing];
}

- (void)textViewWritingToolsDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  v13 = ICDynamicCast();

  tTTextStorage = [v13 TTTextStorage];
  [tTTextStorage setIsEditingViaWritingTools:0];

  tTTextStorage2 = [v13 TTTextStorage];
  [tTTextStorage2 setWritingToolsSessionUUID:0];

  tTTextStorage3 = [v13 TTTextStorage];
  [tTTextStorage3 breakUndoCoalescing];

  note = [(ICNoteEditorBaseViewController *)self note];
  [note save];

  note2 = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note2 documentMergeController];
  [documentMergeController endBlockingMergeForReason:7 textView:v13];

  note3 = [(ICNoteEditorBaseViewController *)self note];
  calculateDocumentController = [note3 calculateDocumentController];
  [calculateDocumentController updateHighlights];
}

- (id)textView:(id)view writingToolsIgnoredRangesInEnclosingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  objc_opt_class();
  v8 = ICDynamicCast();

  tTTextStorage = [v8 TTTextStorage];

  if (tTTextStorage)
  {
    textController = [(ICNoteEditorViewController *)self textController];
    tTTextStorage2 = [v8 TTTextStorage];
    note = [(ICNoteEditorBaseViewController *)self note];
    v13 = [textController writingToolsIgnoredRangesForTextStorage:tTTextStorage2 inEnclosingRange:location note:{length, note}];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)_textViewWillBeginUndoCoalescingForWritingTools:(id)tools
{
  toolsCopy = tools;
  objc_opt_class();
  v5 = ICDynamicCast();

  tTTextStorage = [v5 TTTextStorage];
  [tTTextStorage setIsUndoCoalescingForWritingTools:1];
}

- (void)_textViewDidEndUndoCoalescingForWritingTools:(id)tools
{
  toolsCopy = tools;
  objc_opt_class();
  v5 = ICDynamicCast();

  tTTextStorage = [v5 TTTextStorage];
  [tTTextStorage setIsUndoCoalescingForWritingTools:0];
}

- (BOOL)allowsNewTextLength:(unint64_t)length
{
  note = [(ICNoteEditorBaseViewController *)self note];
  LOBYTE(length) = [note allowsNewTextLength:length];

  return length;
}

- (void)didInvokeAnalyticsCalloutBarButtonActionOfType:(int64_t)type
{
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  note = [(ICNoteEditorBaseViewController *)self note];
  [eventReporter submitNoteEditorCallOutBarButtonSelectionEventForModernNote:note buttonTypeValue:type];

  if ((type - 6) <= 3)
  {
    eventReporter2 = [(ICNoteEditorViewController *)self eventReporter];
    note2 = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter2 submitStyleFormatEventForModernNote:note2 styleTypeValue:type + 3];
  }
}

- (void)didInvokeAnalyticsChecklistActionChecked:(BOOL)checked
{
  if (checked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  [(ICNoteEditorViewController *)self submitChecklistAnalyticsEventForActionType:v3];
}

- (void)didInvokePasteWithAttributedString:(id)string
{
  v4 = *MEMORY[0x277D740E8];
  stringCopy = string;
  ic_range = [stringCopy ic_range];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke;
  v12[3] = &unk_2781AC5D8;
  v12[4] = self;
  [stringCopy enumerateAttribute:v4 inRange:ic_range options:v7 usingBlock:{0, v12}];
  v8 = *MEMORY[0x277D74060];
  ic_range2 = [stringCopy ic_range];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICNoteEditorViewController_didInvokePasteWithAttributedString___block_invoke_2;
  v11[3] = &unk_2781AC5D8;
  v11[4] = self;
  [stringCopy enumerateAttribute:v8 inRange:ic_range2 options:v10 usingBlock:{0, v11}];
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

- (BOOL)handleTapGestureForAttribution:(id)attribution
{
  attributionCopy = attribution;
  if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]== 2)
  {
    attributionSidebarView = [(ICNoteEditorViewController *)self attributionSidebarView];
    [attributionSidebarView handleTapGesture:attributionCopy];
LABEL_8:

    v11 = 1;
    goto LABEL_9;
  }

  attributionSidebarController = [(ICNoteEditorViewController *)self attributionSidebarController];
  filter = [attributionSidebarController filter];

  if (filter)
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    hasCompactWidth = [viewControllerManager hasCompactWidth];

    viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
    attributionSidebarView = viewControllerManager2;
    if (hasCompactWidth)
    {
      [viewControllerManager2 hideActivityStreamWithCompletion:0];
    }

    else
    {
      [viewControllerManager2 hideAttributionHighlights];
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)shouldStartEditingForTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]!= 2)
  {
    if ([(ICNoteEditorViewController *)self attributionSidebarVisibility]== 1)
    {
      goto LABEL_5;
    }

    dateOfLastStrokeOrNewDrawing = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];

    if (dateOfLastStrokeOrNewDrawing)
    {
      date = [MEMORY[0x277CBEAA8] date];
      dateOfLastStrokeOrNewDrawing2 = [(ICNoteEditorViewController *)self dateOfLastStrokeOrNewDrawing];
      [date timeIntervalSinceDate:dateOfLastStrokeOrNewDrawing2];
      v13 = v12;

      if (v13 < 0.5)
      {
        viewControllerManager3 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(viewControllerManager3, OS_LOG_TYPE_DEBUG))
        {
          [(ICNoteEditorViewController *)viewControllerManager3 shouldStartEditingForTapGesture:v13];
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

    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([viewControllerManager hasCompactWidth])
    {
      viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
      presentedActivityStreamNavigationController = [viewControllerManager2 presentedActivityStreamNavigationController];

      if (presentedActivityStreamNavigationController)
      {
        viewControllerManager3 = [(ICNoteEditorViewController *)self viewControllerManager];
        [viewControllerManager3 hideActivityStreamWithCompletion:0];
        goto LABEL_3;
      }
    }

    else
    {
    }

    v6 = 1;
    goto LABEL_6;
  }

  viewControllerManager3 = [(ICNoteEditorViewController *)self attributionSidebarView];
  [viewControllerManager3 handleTapGesture:gestureCopy];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  isSharedReadOnly = [note isSharedReadOnly];

  if ((isSharedReadOnly & 1) == 0)
  {
    [(ICNoteEditorViewController *)self startEditing];
  }

  [(ICNoteEditorViewController *)self setInStartEditingForWritingTools:0];
}

- (BOOL)shouldBlockHitTestOnTextView:(id)view event:(id)event
{
  eventCopy = event;
  if ([(ICNoteEditorViewController *)self isDrawingStrokeWithPencil])
  {
    v6 = [eventCopy ic_isPencilEvent] ^ 1;
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
  textView = [(ICNoteEditorViewController *)self textView];
  isPaperEnabled = [textView isPaperEnabled];

  return isPaperEnabled;
}

- (void)icBaseTextViewDidSetHidden:(BOOL)hidden
{
  if (hidden)
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  textView = [(ICNoteEditorViewController *)self textView];

  v5 = scrollCopy;
  if (textView == scrollCopy)
  {
    backgroundView = [(ICNoteEditorViewController *)self backgroundView];
    [scrollCopy contentOffset];
    [backgroundView scrollView:scrollCopy didChangeContentOffset:?];

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      textView2 = [(ICNoteEditorViewController *)self textView];
      shouldUpdateVisibleSupplementalViewsInLayoutSubviews = [textView2 shouldUpdateVisibleSupplementalViewsInLayoutSubviews];

      if ((shouldUpdateVisibleSupplementalViewsInLayoutSubviews & 1) == 0)
      {
        objc_opt_class();
        textView3 = [(ICNoteEditorViewController *)self textView];
        layoutManager = [textView3 layoutManager];
        v11 = ICDynamicCast();

        [v11 updateVisibleSupplementalViews];
        [v11 ensureLayoutForSurroundingPages];
      }
    }

    [(ICNoteEditorViewController *)self updateUserAndDateViewVisibility];
    linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
    isShowing = [linkAcceleratorController isShowing];

    if (isShowing)
    {
      linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
      [linkAcceleratorController2 hideAccelerator];
    }

    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
    isShowing2 = [calculateScrubberController isShowing];

    if (isShowing2)
    {
      calculateScrubberController2 = [(ICNoteEditorViewController *)self calculateScrubberController];
      [calculateScrubberController2 hideScrubber];
    }

    audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
    textView4 = [(ICNoteEditorViewController *)self textView];
    [audioAttachmentEditorCoordinator textViewDidScroll:textView4];

    v5 = scrollCopy;
  }
}

- (void)textViewDidBreakRubberBand:(id)band
{
  bandCopy = band;
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = [bandCopy isEqual:textView];

  if (v6)
  {

    [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:1];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v11 = -offset->y;
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
      offset->y = -v18;
      [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    }

    else
    {
      v19 = offset->y;
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      if (vabdd_f64(-v19, v20) >= 0.00999999978 || y >= 0.0)
      {
        goto LABEL_25;
      }

      [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:1];
      [(ICNoteEditorViewController *)self textViewTopInsetThatWeWant];
      offset->y = -v21;
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

  userWantsToSeeDateLabel = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
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

      userWantsToSeeDateLabel = v15 & userWantsToSeeDateLabel;
    }
  }

  else
  {
    userWantsToSeeDateLabel = 1;
  }

  if (userWantsToSeeDateLabel != [(ICNoteEditorViewController *)self userWantsToSeeDateLabel])
  {
    [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:userWantsToSeeDateLabel];
    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
    goto LABEL_24;
  }

LABEL_25:
  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  [mEMORY[0x277D35E50] extendDeauthenticationTimer];

  if ((v44[3] & 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    textView2 = [(ICNoteEditorViewController *)self textView];
    textStorage2 = [textView2 textStorage];
    ic_range = [textStorage2 ic_range];
    v30 = v29;
    v31 = *MEMORY[0x277D74060];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __89__ICNoteEditorViewController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
    v36 = &unk_2781AD360;
    selfCopy = self;
    offsetCopy = offset;
    v38 = draggingCopy;
    v39 = &v43;
    v41 = x;
    v42 = y;
    [textStorage enumerateAttribute:v31 inRange:ic_range options:v30 usingBlock:{2, &v33}];

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

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    documentMergeController = [note documentMergeController];
    textView = [(ICNoteEditorViewController *)self textView];
    [documentMergeController endBlockingMergeForReason:1 textView:textView];

    [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  }
}

- (void)_scrollViewDidInterruptDecelerating:(id)decelerating
{
  note = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note documentMergeController];
  textView = [(ICNoteEditorViewController *)self textView];
  [documentMergeController endBlockingMergeForReason:1 textView:textView];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(ICNoteEditorViewController *)self prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:dragging];
  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  [mEMORY[0x277D35E50] extendDeauthenticationTimer];

  note = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note documentMergeController];
  textView = [(ICNoteEditorViewController *)self textView];
  [documentMergeController beginBlockingMergeForReason:1 textView:textView];
}

- (id)lastPaperDocumentAttachmentView
{
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];
  string = [textStorage string];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
  v8 = [string rangeOfCharacterFromSet:invertedSet options:4];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    textStorage2 = [textView textStorage];
    v11 = [textStorage2 attribute:*MEMORY[0x277D74060] atIndex:v8 effectiveRange:0];
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

- (id)attachmentViewForTextAttachment:(id)attachment characterIndex:(int64_t)index
{
  attachmentCopy = attachment;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  textView = [(ICNoteEditorViewController *)self textView];
  v9 = textView;
  if (IsTextKit2Enabled)
  {
    textContainer = [textView textContainer];
    textLayoutManager = [textContainer textLayoutManager];

    documentRange = [textLayoutManager documentRange];
    location = [documentRange location];
    icLayoutManager = [textLayoutManager locationFromLocation:location withOffset:index];

    v15 = [textLayoutManager viewProviderForTextAttachment:attachmentCopy location:icLayoutManager];
    v9 = textLayoutManager;
  }

  else
  {
    icLayoutManager = [textView icLayoutManager];
    v15 = [icLayoutManager viewProviderForTextAttachment:attachmentCopy characterIndex:index];
  }

  view = [v15 view];

  return view;
}

- (void)prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  textView = [(ICNoteEditorViewController *)self textView];
  v6 = [necessaryCopy isEqual:textView];

  if ((v6 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[scrollView isEqual:self.textView]" functionName:"-[ICNoteEditorViewController prepareToSnapToPaperDocumentAtStartOfDragIfNecessary:]" simulateCrash:1 showAlert:0 format:{@"Unexpected scroll view: %@", necessaryCopy}];
  }

  [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 setShouldRubberBand:0];

  array = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB58] set];
  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isEmpty])
  {
  }

  else
  {
    isEditing = [(ICNoteEditorViewController *)self isEditing];

    if ((isEditing & 1) == 0)
    {
      lastPaperDocumentAttachmentView = [(ICNoteEditorViewController *)self lastPaperDocumentAttachmentView];
      rootSettings = [MEMORY[0x277D36878] rootSettings];
      if ([rootSettings isRubberBandingEnabled] && lastPaperDocumentAttachmentView)
      {
        [lastPaperDocumentAttachmentView bounds];
        Height = CGRectGetHeight(v57);
        textView3 = [(ICNoteEditorViewController *)self textView];
        [textView3 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        textView4 = [(ICNoteEditorViewController *)self textView];
        [textView4 safeAreaInsets];
        v26 = v19 + v25;
        v29 = v21 - (v27 + v28);
        v58.size.height = v23 - (v25 + v30);
        v58.origin.x = v17 + v27;
        v58.origin.y = v26;
        v58.size.width = v29;
        v31 = CGRectGetHeight(v58);

        if (Height >= v31)
        {
          [lastPaperDocumentAttachmentView bounds];
          [necessaryCopy convertPoint:lastPaperDocumentAttachmentView fromView:?];
          v33 = v32;
          v35 = v34;
          [necessaryCopy safeAreaInsets];
          v37 = v35 - v36;
          [necessaryCopy contentOffset];
          if (v38 < v37 || ([necessaryCopy contentOffset], vabdd_f64(v39, v37) < 16.0))
          {
            textView5 = [(ICNoteEditorViewController *)self textView];
            [textView5 setShouldRubberBand:1];

            textView6 = [(ICNoteEditorViewController *)self textView];
            [textView6 setRubberBandContentOffset:{v33, v37}];
          }

          [necessaryCopy contentOffset];
          [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:v42 >= v37];
        }
      }

      else
      {
      }

      textView7 = [(ICNoteEditorViewController *)self textView];
      textStorage = [textView7 textStorage];
      v51 = *MEMORY[0x277D74060];
      textView8 = [(ICNoteEditorViewController *)self textView];
      textStorage2 = [textView8 textStorage];
      v52 = lastPaperDocumentAttachmentView;
      ic_range = [textStorage2 ic_range];
      v49 = v48;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __83__ICNoteEditorViewController_prepareToSnapToPaperDocumentAtStartOfDragIfNecessary___block_invoke;
      v53[3] = &unk_2781AD388;
      v53[4] = self;
      v54 = necessaryCopy;
      v55 = array;
      v56 = v9;
      [textStorage enumerateAttribute:v51 inRange:ic_range options:v49 usingBlock:{0, v53}];
    }
  }

  textView9 = [(ICNoteEditorViewController *)self textView];
  [textView9 setDraggingSnapPoints:array];
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

- (id)firstEmbeddedScrollViewInView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [(ICNoteEditorViewController *)self firstEmbeddedScrollViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  textView = [(ICNoteEditorViewController *)self textView];
  userTitleView = [textView userTitleView];
  isHidden = [userTitleView isHidden];

  if ((isHidden & 1) == 0)
  {

    [(ICNoteEditorViewController *)self updateTextViewContentInsetsAnimated:1];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  updateNoteUserActivityStateDelayer = [(ICNoteEditorViewController *)self updateNoteUserActivityStateDelayer];
  [updateNoteUserActivityStateDelayer requestFire];

  [(ICNoteEditorViewController *)self setPreventSnappingToLastPaperDocument:0];
  note = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note documentMergeController];
  textView = [(ICNoteEditorViewController *)self textView];
  [documentMergeController endBlockingMergeForReason:1 textView:textView];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  note = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note documentMergeController];
  textView = [(ICNoteEditorViewController *)self textView];
  [documentMergeController endBlockingMergeForReason:1 textView:textView];
}

- (void)userActivityWillSave:(id)save
{
  saveCopy = save;
  userActivityUpdateQueue = [(ICNoteEditorViewController *)self userActivityUpdateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ICNoteEditorViewController_userActivityWillSave___block_invoke;
  v7[3] = &unk_2781ABEB8;
  v7[4] = self;
  v8 = saveCopy;
  v6 = saveCopy;
  dispatch_sync(userActivityUpdateQueue, v7);
}

void __51__ICNoteEditorViewController_userActivityWillSave___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteUserActivityState];
  [v2 updateUserActivity:*(a1 + 40)];
}

- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  v6 = MEMORY[0x277D35ED8];
  outputStreamCopy = outputStream;
  streamCopy = stream;
  sharedController = [v6 sharedController];
  [sharedController didReceiveInputStream:streamCopy outputStream:outputStreamCopy];
}

- (id)userActivity
{
  noteUserActivity = [(ICNoteEditorViewController *)self noteUserActivity];

  if (!noteUserActivity)
  {
    [(ICNoteEditorViewController *)self updateNoteUserActivityState];
  }

  return [(ICNoteEditorViewController *)self noteUserActivity];
}

- (void)attachmentView:(id)view shouldPresentNote:(id)note
{
  v5 = [(ICNoteEditorViewController *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(ICNoteEditorViewController *)self delegate];
    [delegate noteEditor:self didTapAttachment:0];
  }
}

- (void)attachmentView:(id)view shouldPresentAttachment:(id)attachment
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  attachmentCopy = attachment;
  if (!attachmentCopy)
  {
    audioAttachmentEditorCoordinator = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(audioAttachmentEditorCoordinator, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, audioAttachmentEditorCoordinator, OS_LOG_TYPE_INFO, "No attachment to present for attachment view", buf, 2u);
    }

LABEL_6:

    goto LABEL_32;
  }

  if (![MEMORY[0x277D36790] canUpdateFullscreenSketchAttachment:attachmentCopy])
  {
    delegate = [(ICNoteEditorViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      attachmentType = [attachmentCopy attachmentType];

      if (attachmentType == 11)
      {
        v11 = 1;
LABEL_13:
        if (ICInternalSettingsIsAudioTranscriptionEnabled() && v11 && [attachmentCopy attachmentType] == 4)
        {
          if ([attachmentCopy needsInitialFetchFromCloud])
          {
            goto LABEL_32;
          }

          audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
          [audioAttachmentEditorCoordinator presentRecordingViewControllerForAttachment:attachmentCopy];
          goto LABEL_6;
        }

        if (!v11)
        {
          goto LABEL_32;
        }

        note = [(ICNoteEditorBaseViewController *)self note];
        attachmentsInOrder = [note attachmentsInOrder];

        v14 = [attachmentsInOrder indexOfObject:attachmentCopy];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            shortLoggingDescription = [attachmentCopy shortLoggingDescription];
            *buf = 138412290;
            v27 = shortLoggingDescription;
            _os_log_impl(&dword_2151A1000, v15, OS_LOG_TYPE_INFO, "Could not find attachment %@ in its note. Falling back to showing just this attachment", buf, 0xCu);
          }

          v25 = attachmentCopy;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

          v18 = 0;
          attachmentsInOrder = v17;
        }

        else
        {
          v18 = v14;
        }

        viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];

        if (viewControllerManager)
        {
          viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
          -[ICAttachmentPresenter presentAttachments:startingAtIndex:delegate:displayShowInNote:editable:selectedSubAttachment:presentingViewController:](viewControllerManager2, "presentAttachments:startingAtIndex:delegate:displayShowInNote:editable:selectedSubAttachment:presentingViewController:", attachmentsInOrder, v18, self, 0, [attachmentCopy isReadOnly] ^ 1, 0, self);
        }

        else
        {
          viewControllerManager2 = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];
          presentedViewController = [(ICAttachmentPresenter *)viewControllerManager2 presentedViewController];
          if ([presentedViewController isBeingPresented])
          {
          }

          else
          {
            quickNoteiPhoneAttachmentPresenter = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];
            galleryAttachmentEditorController = [quickNoteiPhoneAttachmentPresenter galleryAttachmentEditorController];

            if (galleryAttachmentEditorController)
            {
LABEL_31:

              goto LABEL_32;
            }

            viewControllerManager2 = -[ICAttachmentPresenter initWithViewControllerManager:attachments:startingAtIndex:delegate:displayShowInNote:editable:presentingViewController:]([ICAttachmentPresenter alloc], "initWithViewControllerManager:attachments:startingAtIndex:delegate:displayShowInNote:editable:presentingViewController:", 0, attachmentsInOrder, v18, self, 0, [attachmentCopy isReadOnly] ^ 1, self);
            [(ICNoteEditorViewController *)self setQuickNoteiPhoneAttachmentPresenter:viewControllerManager2];
            v24 = [attachmentsInOrder objectAtIndexedSubscript:v18];
            [(ICAttachmentPresenter *)viewControllerManager2 presentAttachmentWithSelectedSubAttachment:v24];
          }
        }

        goto LABEL_31;
      }

      delegate = [(ICNoteEditorViewController *)self delegate];
      v11 = [delegate noteEditor:self didTapAttachment:attachmentCopy] ^ 1;
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

- (void)attachmentView:(id)view shouldShareAttachment:(id)attachment
{
  viewCopy = view;
  v18 = [ICAttachmentActivityViewController makeWithAttachment:attachment quickLookItemDelegate:self completion:&__block_literal_global_1053];
  popoverPresentationController = [v18 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  popoverPresentationController2 = [v18 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v9, v11, v13, v15}];

  popoverPresentationController3 = [v18 popoverPresentationController];
  [popoverPresentationController3 setCanOverlapSourceViewRect:1];

  [(ICNoteEditorViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (BOOL)attachmentView:(id)view shouldRespondToPanGestureTouch:(id)touch forAttachment:(id)attachment
{
  touchCopy = touch;
  if ([attachment attachmentType] == 9)
  {
    v8 = [touchCopy type] == 2;
    v9 = v8 | [(ICNoteEditorViewController *)self isInkPickerShowing];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (CGRect)notesQuickLookActivityItem:(id)item rectForPreviewItem:(id)previewItem inView:(id *)view previewController:(id)controller
{
  v6 = [(ICNoteEditorViewController *)self textView:item];
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

- (id)notesQuickLookActivityItem:(id)item transitionViewForPreviewItem:(id)previewItem previewController:(id)controller
{
  previewItemCopy = previewItem;
  objc_opt_class();
  v7 = ICDynamicCast();

  v8 = [(ICNoteEditorViewController *)self viewForAttachment:v7];
  v9 = v8;
  if (v8)
  {
    textView = v8;
  }

  else
  {
    textView = [(ICNoteEditorViewController *)self textView];
  }

  v11 = textView;

  return v11;
}

- (id)viewForAttachment:(id)attachment
{
  v29 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    textView = [(ICNoteEditorViewController *)self textView];
    icTextLayoutManager = [textView icTextLayoutManager];
    identifier = [attachmentCopy identifier];
    v8 = [icTextLayoutManager existingAttachmentViewForIdentifier:identifier];
    layoutManager2 = ICDynamicCast();

    objc_opt_class();
    v10 = ICDynamicCast();
    drawingInlineView = [v10 drawingInlineView];
    v12 = drawingInlineView;
    if (drawingInlineView)
    {
      quickLookTransitionView = drawingInlineView;
    }

    else
    {
      quickLookTransitionView = [layoutManager2 quickLookTransitionView];
    }

    v23 = quickLookTransitionView;

    goto LABEL_16;
  }

  textView2 = [(ICNoteEditorViewController *)self textView];
  layoutManager = [textView2 layoutManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    textView3 = [(ICNoteEditorViewController *)self textView];
    layoutManager2 = [textView3 layoutManager];

    identifier2 = [attachmentCopy identifier];
    v10 = [layoutManager2 supplementalViewForIdentifier:identifier2 allowHiddenViews:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drawingInlineView2 = [v10 drawingInlineView];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = 0;
        goto LABEL_16;
      }

      drawingInlineView2 = [v10 quickLookTransitionView];
    }

    v23 = drawingInlineView2;
LABEL_16:

    goto LABEL_17;
  }

  v20 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [attachmentCopy shortLoggingDescription];
    v25 = 138412546;
    v26 = shortLoggingDescription;
    v27 = 2112;
    v28 = objc_opt_class();
    v22 = v28;
    _os_log_impl(&dword_2151A1000, v20, OS_LOG_TYPE_INFO, "Trying to find a transition view for %@, but the note editor's layout manager isn't an %@", &v25, 0x16u);
  }

  v23 = 0;
LABEL_17:

  return v23;
}

- (void)attachmentPresenterDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  quickNoteiPhoneAttachmentPresenter = [(ICNoteEditorViewController *)self quickNoteiPhoneAttachmentPresenter];

  if (quickNoteiPhoneAttachmentPresenter == dismissCopy)
  {

    [(ICNoteEditorViewController *)self setQuickNoteiPhoneAttachmentPresenter:0];
  }
}

- (void)showDrawingUpdateAlert
{
  textView = [(ICNoteEditorViewController *)self textView];
  textDragInteraction = [textView textDragInteraction];
  isEnabled = [textDragInteraction isEnabled];

  v6 = MEMORY[0x277D36790];
  note = [(ICNoteEditorBaseViewController *)self note];
  v8 = [v6 countOfUpdatableDrawingsInNote:note];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = mainBundle;
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

  v13 = [mainBundle localizedStringForKey:v11 value:&stru_282757698 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:v12 value:&stru_282757698 table:0];

  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v15 preferredStyle:1];
  objc_initWeak(location, self);
  v17 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [mainBundle3 localizedStringForKey:@"Learn More" value:&stru_282757698 table:0];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke;
  v39[3] = &unk_2781AD3B0;
  objc_copyWeak(&v40, location);
  v41 = isEnabled;
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
  v38 = isEnabled;
  v25 = [v24 actionWithTitle:v23 style:0 handler:v36];
  [v16 addAction:v25];

  v26 = *(v21 + 248);
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v28 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __52__ICNoteEditorViewController_showDrawingUpdateAlert__block_invoke_3;
  v33[3] = &unk_2781AD3B0;
  objc_copyWeak(&v34, location);
  v35 = isEnabled;
  v29 = [v26 actionWithTitle:v28 style:1 handler:v33];
  [v16 addAction:v29];

  textView2 = [(ICNoteEditorViewController *)self textView];
  textDragInteraction2 = [textView2 textDragInteraction];
  [textDragInteraction2 setEnabled:0];

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
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_2151A1000, log, OS_LOG_TYPE_DEBUG, "Manually updating all drawings in note %@", buf, 0xCu);
}

void __60__ICNoteEditorViewController_updateDrawingAttachmentsInNote__block_invoke(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 performSelector:sel_showInkPicker_ withObject:v1 afterDelay:0.25];
}

- (id)undoManager
{
  textViewUndoManager = [(ICNoteEditorViewController *)self textViewUndoManager];
  if (([textViewUndoManager canRedo] & 1) != 0 || objc_msgSend(textViewUndoManager, "canUndo"))
  {
    undoManager = textViewUndoManager;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICNoteEditorViewController;
    undoManager = [(ICNoteEditorViewController *)&v7 undoManager];
  }

  v5 = undoManager;

  return v5;
}

- (NSUndoManager)textViewUndoManager
{
  textView = [(ICNoteEditorViewController *)self textView];
  undoManager = [textView undoManager];

  return undoManager;
}

+ (UIMenu)indentationMenu
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75650];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Decrease Indentation" value:&stru_282757698 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"decrease.indent"];
  v6 = [v2 ic_keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel_indentLeft_ discoverabilityTitle:v4 image:v5];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle2 localizedStringForKey:@"Decrease" value:&stru_282757698 table:0];
  [v6 setTitle:v8];

  v9 = MEMORY[0x277D75650];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle3 localizedStringForKey:@"Increase Indentation" value:&stru_282757698 table:0];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"increase.indent"];
  v13 = [v9 ic_keyCommandWithInput:@"]" modifierFlags:0x100000 action:sel_indentRight_ discoverabilityTitle:v11 image:v12];

  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle4 localizedStringForKey:@"Increase" value:&stru_282757698 table:0];
  [v13 setTitle:v15];

  v16 = MEMORY[0x277D75710];
  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v18 = [mainBundle5 localizedStringForKey:@"Indentation" value:&stru_282757698 table:0];
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Align Left" value:&stru_282757698 table:0];
  v4 = [v2 ic_keyCommandWithInput:@"{" modifierFlags:1179648 action:sel_ic_alignLeft_ discoverabilityTitle:v3];
  v19[0] = v4;
  v5 = MEMORY[0x277D75650];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle2 localizedStringForKey:@"Align Center" value:&stru_282757698 table:0];
  v8 = [v5 ic_keyCommandWithInput:@"|" modifierFlags:1179648 action:sel_ic_alignCenter_ discoverabilityTitle:v7];
  v19[1] = v8;
  v9 = MEMORY[0x277D75650];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle3 localizedStringForKey:@"Align Right" value:&stru_282757698 table:0];
  v12 = [v9 ic_keyCommandWithInput:@"}" modifierFlags:1179648 action:sel_ic_alignRight_ discoverabilityTitle:v11];
  v19[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v14 = MEMORY[0x277D75710];
  v15 = [v13 copy];
  v16 = [v14 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v15];

  return v16;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    _modifierFlags = [eventCopy _modifierFlags];
    _modifiedInput = [eventCopy _modifiedInput];
    v10 = _modifiedInput;
    if ((*&_modifierFlags & 0x120000) == 0x100000 && [_modifiedInput length] == 1)
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
  [(ICNoteEditorViewController *)&v12 pressesBegan:beganCopy withEvent:eventCopy];
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
  applyAccessibilityInfoDelayer = [(ICNoteEditorViewController *)self applyAccessibilityInfoDelayer];
  [applyAccessibilityInfoDelayer cancelPreviousFireRequests];

  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    selfCopy = self;
    textView = [(ICNoteEditorViewController *)self textView];
    inputAssistantItem = [textView inputAssistantItem];

    v24 = inputAssistantItem;
    leadingBarButtonGroups = [inputAssistantItem leadingBarButtonGroups];
    firstObject = [leadingBarButtonGroups firstObject];

    representativeItem = [firstObject representativeItem];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle localizedStringForKey:@"Edit" value:&stru_282757698 table:0];
    [representativeItem setIc_titleAndAccessibilityLabel:v10];

    v23 = firstObject;
    [firstObject barButtonItems];
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
        action = [v15 action];
        if (action == sel_assistantCut)
        {
          v17 = @"Cut";
        }

        else if (action == sel_assistantCopy)
        {
          v17 = @"Copy";
        }

        else
        {
          if (action != sel_assistantPaste)
          {
            continue;
          }

          v17 = @"Paste";
        }

        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v19 = [mainBundle2 localizedStringForKey:v17 value:&stru_282757698 table:0];
        [v15 setAccessibilityLabel:v19];
      }

      v12 = [obja countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v12)
      {
LABEL_19:
        backgroundView = [(ICNoteEditorViewController *)selfCopy backgroundView];
        textView2 = [(ICNoteEditorViewController *)selfCopy textView];
        [backgroundView reparentAccessibilityChildrenOfElement:textView2];

        backgroundView2 = [(ICNoteEditorViewController *)selfCopy backgroundView];
        [backgroundView2 setAxChildReparentingController:selfCopy];

        return;
      }
    }
  }

  obj = [(ICNoteEditorViewController *)self applyAccessibilityInfoDelayer];
  [obj requestFire];
}

- (void)updateDateLabelAccessibility
{
  textView = [(ICNoteEditorViewController *)self textView];
  dateView = [textView dateView];
  isAccessibilityElement = [dateView isAccessibilityElement];

  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 accessibilityFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  textView3 = [(ICNoteEditorViewController *)self textView];
  dateView2 = [textView3 dateView];
  [dateView2 accessibilityFrame];
  v27.origin.x = v17;
  v27.origin.y = v18;
  v27.size.width = v19;
  v27.size.height = v20;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v21 = CGRectContainsRect(v26, v27);

  if (isAccessibilityElement != v21)
  {
    textView4 = [(ICNoteEditorViewController *)self textView];
    dateView3 = [textView4 dateView];
    [dateView3 setIsAccessibilityElement:v21];

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

- (void)blockAccessibilityScreenChangedNotificationsIfNecessaryForDuration:(double)duration
{
  icSplitViewController = [(ICNoteEditorViewController *)self icSplitViewController];
  splitViewController = [icSplitViewController splitViewController];
  if (splitViewController)
  {
    v5 = splitViewController;
    icSplitViewController2 = [(ICNoteEditorViewController *)self icSplitViewController];
    traitCollection = [icSplitViewController2 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass != 1)
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
  passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
  if (passwordEntryViewController)
  {
    v4 = 0;
  }

  else
  {
    invitationViewController = [(ICNoteEditorViewController *)self invitationViewController];
    v4 = invitationViewController == 0;
  }

  return v4;
}

- (void)runScrollPerformanceTest:(id)test iterations:(int)iterations offset:(int)offset
{
  v5 = *&offset;
  v6 = *&iterations;
  testCopy = test;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView _performScrollTest:testCopy iterations:v6 delta:v5];
}

- (void)runTableHorizontalScrollPerformanceTest:(id)test iterations:(int)iterations offset:(int)offset
{
  v5 = *&offset;
  v6 = *&iterations;
  v22 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(ICNoteEditorViewController *)self textViewController:0];
  childViewControllers = [v9 childViewControllers];

  v11 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v15 = ICDynamicCast();
          scrollView = [v15 scrollView];
          [scrollView _performScrollTest:testCopy iterations:v6 delta:v5 scrollAxis:1];

          goto LABEL_11;
        }
      }

      v12 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)applicationDidEnterBackground:(id)background
{
  if ([(ICNoteEditorViewController *)self isEditing])
  {
    textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [textViewInputAccessoryView setAlpha:0.0];
  }

  objc_opt_class();
  presentedViewController = [(ICNoteEditorViewController *)self presentedViewController];
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

- (BOOL)isAssociatedWindowScene:(id)scene
{
  sceneCopy = scene;
  viewIfLoaded = [(ICNoteEditorViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v8 = [windowScene isEqual:sceneCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    selfCopy = self;
    presentedViewController = [(ICNoteEditorViewController *)selfCopy presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [(ICNoteEditorViewController *)selfCopy presentedViewController];

        v12PresentedViewController = [(ICNoteEditorViewController *)presentedViewController2 presentedViewController];

        selfCopy = presentedViewController2;
      }

      while (v12PresentedViewController);
    }

    else
    {
      presentedViewController2 = selfCopy;
    }

    viewIfLoaded2 = [(ICNoteEditorViewController *)presentedViewController2 viewIfLoaded];
    window2 = [viewIfLoaded2 window];
    windowScene2 = [window2 windowScene];
    v9 = [windowScene2 isEqual:sceneCopy];
  }

  return v9;
}

- (void)sceneWillDeactivate:(id)deactivate
{
  object = [deactivate object];
  v5 = [(ICNoteEditorViewController *)self isAssociatedWindowScene:object];

  if (v5)
  {
    [(ICNoteEditorViewController *)self showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:1];
    if ([(ICNoteEditorViewController *)self ic_isViewVisible])
    {
      note = [(ICNoteEditorBaseViewController *)self note];

      if (note)
      {
        note2 = [(ICNoteEditorBaseViewController *)self note];
        [(ICNoteEditorViewController *)self submitNoteViewEventForModernNote:note2];

        [(ICNoteEditorViewController *)self submitPendingInlineDrawingDataIfNecessary];

        [(ICNoteEditorViewController *)self submitNoteEditEventIfNecessary];
      }
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  object = [activateCopy object];
  v6 = [(ICNoteEditorViewController *)self isAssociatedWindowScene:object];

  if (!v6)
  {
    goto LABEL_13;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isPasswordProtected])
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    selectedNoteObjectID = [viewControllerManager selectedNoteObjectID];
    if (selectedNoteObjectID)
    {
      v10 = selectedNoteObjectID;
      viewControllerManager2 = [(ICNoteEditorViewController *)self viewControllerManager];
      selectedNoteObjectID2 = [viewControllerManager2 selectedNoteObjectID];
      note2 = [(ICNoteEditorBaseViewController *)self note];
      objectID = [note2 objectID];
      v15 = [selectedNoteObjectID2 isEqual:objectID];

      if (v15)
      {
        goto LABEL_8;
      }

      note = [(ICNoteEditorViewController *)self viewControllerManager];
      viewControllerManager = [note selectedModernNote];
      [(ICNoteEditorViewController *)self setNote:viewControllerManager];
    }
  }

LABEL_8:
  [(ICNoteEditorViewController *)self showOrHideLockIconCoverViewControllerIfNeededIsBackgrounding:0];
  if ([(ICNoteEditorViewController *)self ic_isViewVisible])
  {
    note3 = [(ICNoteEditorBaseViewController *)self note];

    if (note3)
    {
      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note4 = [(ICNoteEditorBaseViewController *)self note];
      [eventReporter startNoteViewEventDurationTrackingForModernNote:note4 reportCoreAnalytics:0];
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

- (void)applicationDidBecomeActive:(id)active
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
    passwordEntryViewController = [(ICNoteEditorViewController *)self passwordEntryViewController];
    [passwordEntryViewController setIsAnimatingOut:0];

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

- (void)mergeRelatedOperationsDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  userInfo = [endCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35C78]];
  v13 = ICDynamicCast();

  if (!v13 || (v7 = [v13 unsignedIntegerValue] == 2, v8 = v13, v7))
  {
    textView = [(ICNoteEditorViewController *)self textView];
    isEditing = [textView isEditing];

    if ((isEditing & 1) == 0)
    {
      textView2 = [(ICNoteEditorViewController *)self textView];
      [textView2 ic_resetDataDetectorsResults];

      textView3 = [(ICNoteEditorViewController *)self textView];
      [textView3 ic_startDataDetectors];
    }

    [(ICNoteEditorViewController *)self updateStyleSelectorStateIfNeededIgnoreTypingAttributes:1];
    v8 = v13;
  }
}

- (BOOL)safeAreaContainsKeyboard
{
  if ([(ICNoteEditorViewController *)self usesContextualFormatBar])
  {
    textView = [(ICNoteEditorViewController *)self textView];
    tTTextStorage = [textView TTTextStorage];
    v5 = ([tTTextStorage isEditingViaWritingTools] & 1) != 0 || -[ICNoteEditorViewController isWritingToolsShowing](self, "isWritingToolsShowing");

    navigationController = [(ICNoteEditorViewController *)self navigationController];
    v6 = [navigationController isToolbarHidden] ^ 1 | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)keyboardResizerAdjustInsetsWithKeyboardFrame:(CGRect)frame scrollAboveHeight:(double)height duration:(double)duration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  durationCopy = duration;
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
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = self;
      v15 = v13;
    }

    [(ICNoteEditorViewController *)selfCopy2 setTextViewScrollIndicatorBottomInsetOverride:v15];
    goto LABEL_19;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  inputAccessoryView = [textView inputAccessoryView];

  if (!inputAccessoryView)
  {
    textViewInputAccessoryView = [(ICNoteEditorViewController *)self textViewInputAccessoryView];
    [textViewInputAccessoryView intrinsicContentSize];
    height = height + v20;
  }

  safeAreaContainsKeyboard = [(ICNoteEditorViewController *)self safeAreaContainsKeyboard];
  v22 = 0.0;
  if (!safeAreaContainsKeyboard)
  {
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v22 = CGRectGetHeight(v61) - height;
    if (v22 < v13)
    {
      v22 = v13;
    }
  }

  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:v22];
  [(ICNoteEditorViewController *)self textViewMinimumBottomInset];
  [(ICNoteEditorViewController *)self setTextViewMinimumBottomInset:?];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [textView2 _contentScrollInset];
  v25 = v24;
  v27 = v26;
  v29 = v28;

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 _contentScrollInset];
  if (v34 != v27 || v31 != v25 || v33 != v29)
  {

LABEL_16:
    textView4 = [(ICNoteEditorViewController *)self textView];
    [textView4 _setContentScrollInset:{v25, v27, height, v29}];

    goto LABEL_19;
  }

  v35 = v32;

  if (v35 != height)
  {
    goto LABEL_16;
  }

LABEL_19:
  [(ICNoteEditorViewController *)self textViewScrollIndicatorBottomInsetOverride];
  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverride:v37 + 5.0];
  [(ICNoteEditorViewController *)self setTextViewScrollIndicatorBottomInsetOverrideToRestore:0.0];
  textView5 = [(ICNoteEditorViewController *)self textView];
  [textView5 contentInset];
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [(ICNoteEditorViewController *)self textViewBottomInsetThatWeWantForEditing:!IsNull];
  v46 = v45;
  [(ICNoteEditorViewController *)self textViewScrollIndicatorInsetsThatWeWant];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  textView6 = [(ICNoteEditorViewController *)self textView];
  [textView6 setContentInset:{v40, v42, v46, v44}];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    textView7 = [(ICNoteEditorViewController *)self textView];
    [textView7 setVerticalScrollIndicatorInsets:{v40, v48, v50, v52}];
  }

  v62.origin.x = v57;
  v62.origin.y = v58;
  v62.size.width = rect;
  v62.size.height = height;
  if (!CGRectIsNull(v62))
  {
    v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:durationCopy];
    [(ICNoteEditorViewController *)self setKeyboardAnimateInFinishTime:v55];
  }

  dispatchMainAfterDelay();
}

- (void)ensureValidInkForNewDrawingOrNote
{
  currentValidToolForNewDrawingOrNote = [(ICNoteEditorViewController *)self currentValidToolForNewDrawingOrNote];
  [(ICNoteEditorViewController *)self updateInkPickerAndTextViewToTool:currentValidToolForNewDrawingOrNote];
}

- (void)updateInkPickerAndTextViewToTool:(id)tool
{
  toolCopy = tool;
  [(ICNoteEditorViewController *)self createInkPickerControllerIfNecessary];
  v4 = toolCopy;
  if (toolCopy)
  {
    inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];
    [inkPaletteController setSelectedTool:toolCopy];

    if ([(ICNoteEditorViewController *)self isNewInk:toolCopy]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
    {
      inkPaletteController2 = [(ICNoteEditorViewController *)self inkPaletteController];
      [inkPaletteController2 resetToPencilKitCompatibleInk];
    }

    inkPaletteController3 = [(ICNoteEditorViewController *)self inkPaletteController];
    selectedTool = [inkPaletteController3 selectedTool];
    textView = [(ICNoteEditorViewController *)self textView];
    [textView _setTool:selectedTool];

    v4 = toolCopy;
  }
}

- (void)clearTextViewSelection
{
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  if (v6)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setSelectedRange:{selectedRange, 0}];
  }
}

- (void)setSearchRegexFinder:(id)finder
{
  objc_storeStrong(&self->_searchRegexFinder, finder);
  showOrHideSearchPatternHighlightsDelayer = [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsDelayer];
  [showOrHideSearchPatternHighlightsDelayer requestFire];
}

- (void)showOrHideSearchPatternHighlightsIfNecessary
{
  showOrHideSearchPatternHighlightsDelayer = [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsDelayer];
  [showOrHideSearchPatternHighlightsDelayer cancelPreviousFireRequests];

  if (([(ICNoteEditorViewController *)self isEditing]& 1) != 0)
  {
    goto LABEL_5;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  if ([findInteraction isFindNavigatorVisible])
  {

LABEL_5:
    searchRegexFinder = 0;
    goto LABEL_6;
  }

  isInkPickerShowing = [(ICNoteEditorViewController *)self isInkPickerShowing];

  if (isInkPickerShowing)
  {
    goto LABEL_5;
  }

  searchRegexFinder = [(ICNoteEditorViewController *)self searchRegexFinder];
LABEL_6:
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    textView2 = [(ICNoteEditorViewController *)self textView];
    layoutManager = [textView2 layoutManager];
    v14 = ICDynamicCast();
    [v14 setHighlightPatternRegexFinder:searchRegexFinder];

    goto LABEL_11;
  }

  objc_opt_class();
  textView3 = [(ICNoteEditorViewController *)self textView];
  textLayoutManager = [textView3 textLayoutManager];
  textView2 = ICDynamicCast();

  v10 = searchRegexFinder;
  if (searchRegexFinder || ([textView2 highlightPatternRegexFinder], v11 = objc_claimAutoreleasedReturnValue(), v11, v10 = 0, v11))
  {
    searchRegexFinder = v10;
    [textView2 setHighlightPatternRegexFinder:v10];
    authorHighlightsUpdater = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [authorHighlightsUpdater setSearchHighlightRegexFinder:searchRegexFinder];

    layoutManager = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [layoutManager updateAnimated:0];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note textStorage];
  ic_range = [textStorage ic_range];
  v7 = v6;

  v13.location = [(ICNoteEditorViewController *)self visibleRange];
  ++v13.length;
  v14.location = ic_range;
  v14.length = v7;
  v8 = NSIntersectionRange(v13, v14);
  note2 = [(ICNoteEditorBaseViewController *)self note];
  textStorage2 = [note2 textStorage];
  v11 = *MEMORY[0x277D74060];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ICNoteEditorViewController_updateInlineDrawingsPaletteVisibility__block_invoke;
  v12[3] = &unk_2781AC5D8;
  v12[4] = self;
  [textStorage2 enumerateAttribute:v11 inRange:v8.location options:v8.length usingBlock:{0, v12}];
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
  inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];

  if (!inkPaletteController)
  {
    goto LABEL_19;
  }

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& ICInternalSettingsIsSystemPaperEnabled())
  {
    inkPaletteController2 = [(ICNoteEditorViewController *)self inkPaletteController];
    colorCorrectedTool = [inkPaletteController2 colorCorrectedTool];
LABEL_18:
    inkPaletteController = colorCorrectedTool;

    goto LABEL_19;
  }

  inkPaletteController3 = [(ICNoteEditorViewController *)self inkPaletteController];
  inkPaletteController = [inkPaletteController3 selectedTool];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    inkPaletteController4 = [(ICNoteEditorViewController *)self inkPaletteController];
    if ([inkPaletteController4 isHandwritingToolSelected])
    {
    }

    else
    {
      inkPaletteController5 = [(ICNoteEditorViewController *)self inkPaletteController];
      isCanvasGenerationToolSelected = [inkPaletteController5 isCanvasGenerationToolSelected];

      if ((isCanvasGenerationToolSelected & 1) == 0)
      {

LABEL_12:
        inkPaletteController = [(ICNoteEditorViewController *)self lastSavedInkingTool];
        goto LABEL_13;
      }
    }
  }

  if (!inkPaletteController)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ([(ICNoteEditorViewController *)self isNewInk:inkPaletteController]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
  {
    inkPaletteController6 = [(ICNoteEditorViewController *)self inkPaletteController];
    [inkPaletteController6 resetToPencilKitCompatibleInk];

    inkPaletteController7 = [(ICNoteEditorViewController *)self inkPaletteController];
    selectedTool = [inkPaletteController7 selectedTool];

    inkPaletteController = selectedTool;
  }

  if (!inkPaletteController)
  {
    v13 = objc_alloc(MEMORY[0x277CD9640]);
    v14 = *MEMORY[0x277CD96F8];
    inkPaletteController2 = [(ICNoteEditorViewController *)self defaultInkColor];
    colorCorrectedTool = [v13 initWithInkType:v14 color:inkPaletteController2];
    goto LABEL_18;
  }

LABEL_19:

  return inkPaletteController;
}

- (PKTool)lastSavedInkingTool
{
  v24 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults dataForKey:@"currentInkData"];

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
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults2 dictionaryForKey:@"currentInkTool"];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults3 stringForKey:@"currentInkTool"];

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
      className = [MEMORY[0x277CD9620] className];
      v18 = [v4 isEqualToString:className];

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

- (void)saveToolAsCurrentTool:(id)tool
{
  toolCopy = tool;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = MEMORY[0x277CCAAB0];
      v5 = [toolCopy ink];
      v9 = 0;
      v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
      v7 = v9;

      if (v6)
      {
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults setObject:v6 forKey:@"currentInkData"];
      }

      else
      {
        standardUserDefaults = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(standardUserDefaults, OS_LOG_TYPE_ERROR))
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
  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  if ([traitCollection ic_isDark])
  {
    shouldForceLightContent = [(ICNoteEditorViewController *)self shouldForceLightContent];

    if (!shouldForceLightContent)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  whiteColor = [MEMORY[0x277D75348] blackColor];
LABEL_6:

  return whiteColor;
}

- (void)createInkPickerControllerIfNecessary
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setWritingToolsShowing:(BOOL)showing
{
  if (self->_writingToolsShowing != showing)
  {
    self->_writingToolsShowing = showing;
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  }
}

- (void)showInkPicker:(id)picker
{
  pickerCopy = picker;
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self doneEditing:pickerCopy];
  }

  else
  {
    note = [(ICNoteEditorBaseViewController *)self note];

    if (!note)
    {
      mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
      isQuickNoteSessionActive = [mEMORY[0x277D369A0] isQuickNoteSessionActive];

      if (isQuickNoteSessionActive)
      {
        v7 = [(ICNoteEditorViewController *)self addQuickNoteWithPencil:1];
      }

      else
      {
        viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
        v9 = [viewControllerManager showNewNoteWithApproach:2 sender:self animated:1];
      }
    }

    [(ICNoteEditorViewController *)self showStyleSelectorPopover:0 animated:1 sender:pickerCopy];
    [(ICNoteEditorViewController *)self setInkPickerState:1];
    [(ICNoteEditorViewController *)self showInkPickerAndEndEditingIfNecessary];
    [(ICNoteEditorViewController *)self clearTextViewSelection];
  }
}

- (void)showInkPicker:(BOOL)picker animated:(BOOL)animated
{
  animatedCopy = animated;
  pickerCopy = picker;
  if (!picker)
  {
LABEL_4:
    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:animatedCopy];
    inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];
    [inkPaletteController showInkPalette:pickerCopy animated:animatedCopy];

    return;
  }

  if ([(ICNoteEditorViewController *)self _appearState]== 2)
  {
    [(ICNoteEditorViewController *)self createInkPickerControllerIfNecessary];
    goto LABEL_4;
  }

  [(ICNoteEditorViewController *)self setShowInkPickerAfterViewAppears:1];
}

- (BOOL)toggleInkPickerAnimated:(BOOL)animated
{
  inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];
  isInkPaletteShowing = [inkPaletteController isInkPaletteShowing];

  [(ICNoteEditorViewController *)self showInkPicker:isInkPaletteShowing ^ 1u animated:1];
  return isInkPaletteShowing ^ 1;
}

- (void)hideInkPicker
{
  if ([(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    inkPaletteController = [(ICNoteEditorViewController *)self inkPaletteController];
    [inkPaletteController showInkPalette:0 animated:1];

    [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  }
}

- (BOOL)shouldEnablePencilGestures
{
  splitViewController = [(ICNoteEditorViewController *)self splitViewController];
  displayMode = [splitViewController displayMode];

  if (displayMode == 3)
  {
    return 0;
  }

  textView = [(ICNoteEditorViewController *)self textView];
  findInteraction = [textView findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  return isFindNavigatorVisible ^ 1;
}

- (void)setupForFingerDrawing
{
  if (!-[ICNoteEditorBaseViewController isEditingOnSecureScreen](self, "isEditingOnSecureScreen") && ([MEMORY[0x277D75820] prefersPencilOnlyDrawing] & 1) == 0)
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    [viewControllerManager updateForFingerDrawingEnabled:1];
  }
}

- (void)cleanupAfterFingerDrawing
{
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen])
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    [viewControllerManager updateForFingerDrawingEnabled:0];
  }
}

- (id)inkPaletteUndoManager:(id)manager
{
  textView = [(ICNoteEditorViewController *)self textView];
  undoManager = [textView undoManager];

  return undoManager;
}

- (BOOL)isNewInk:(id)ink
{
  inkCopy = ink;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [inkCopy ink];
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
  note = [(ICNoteEditorBaseViewController *)self note];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICNoteEditorViewController_noteHasAnyPencilKitDrawings__block_invoke;
  v4[3] = &unk_2781ABF08;
  v4[4] = &v5;
  [note enumerateAttachmentsInOrderUsingBlock:v4];

  LOBYTE(note) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return note;
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

- (void)inkPalette:(id)palette didPickTool:(id)tool
{
  paletteCopy = palette;
  toolCopy = tool;
  if ([(ICNoteEditorViewController *)self isNewInk:toolCopy]&& [(ICNoteEditorViewController *)self noteHasAnyPencilKitDrawings])
  {
    [(ICNoteEditorViewController *)self upgradePencilKitDrawingsForNewInksPromptingIfNecessary];
  }

  textView = [(ICNoteEditorViewController *)self textView];
  [textView _setTool:toolCopy];

  isEditing = [(ICNoteEditorViewController *)self isEditing];
  if (isEditing)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    v11 = [textView2 ink];
    v12 = [v11 _isHandwritingInk] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  v14 = [textView3 ink];
  if ((isEditing | [v14 _isHandwritingInk] ^ 1))
  {
    v15 = 0;
  }

  else
  {
    paletteResponder = [(ICNoteEditorViewController *)self paletteResponder];
    v15 = [paletteResponder isFirstResponder] ^ 1;
  }

  if (((v12 | v15) & 1) != 0 && [paletteCopy isInkPaletteShowing])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ICNoteEditorViewController_inkPalette_didPickTool___block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [(ICNoteEditorViewController *)self saveToolAsCurrentTool:toolCopy];
}

void __53__ICNoteEditorViewController_inkPalette_didPickTool___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) paletteResponder];
  [v1 becomeFirstResponder];
}

- (void)upgradePencilKitDrawingsForNewInksPromptingIfNecessary
{
  v3 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
  note = [(ICNoteEditorBaseViewController *)self note];
  note2 = [(ICNoteEditorBaseViewController *)self note];
  managedObjectContext = [note2 managedObjectContext];
  textView = [(ICNoteEditorViewController *)self textView];
  v8 = [(ICInlineDrawingUpgradeHelper *)v3 initWithNote:note managedObjectContext:managedObjectContext textView:textView];

  [(ICNoteEditorViewController *)self upgradeAllAttachmentsInNoteWithUpgradeHelper:v8 forSydney:1];
}

- (void)inkPalette:(id)palette didChangeColor:(id)color
{
  colorCopy = color;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView _setSelectedInkColor:colorCopy];
}

- (void)inkPaletteDidToggleRuler:(id)ruler isRulerActive:(BOOL)active
{
  activeCopy = active;
  textView = [(ICNoteEditorViewController *)self textView];
  [textView setRulerEnabled:activeCopy];
}

- (id)inkPaletteButtonView:(id)view
{
  viewCopy = view;
  if (![(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]|| (objc_opt_respondsToSelector() & 1) == 0 || ([(ICNoteEditorViewController *)self app_systemPaperInkPaletteButtonView:viewCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = 0;
  }

  return v5;
}

- (void)inkPalette:(id)palette willShowAnimated:(BOOL)animated
{
  v4 = [(ICNoteEditorViewController *)self attributionSidebarController:palette];
  [v4 hideSidebarAnimated:1];
}

- (void)inkPalette:(id)palette didShowAnimated:(BOOL)animated
{
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:animated];
  [(ICNoteEditorViewController *)self setupForFingerDrawing];
  [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  [viewControllerManager updateHostedNotesAppearance];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (objc_opt_respondsToSelector())
  {
    [(ICNoteEditorViewController *)self ppt_inkPickerDidShow];
  }

  navigationController = [(ICNoteEditorViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setAccessibilityElementsHidden:1];
}

- (void)inkPalette:(id)palette willHideAnimated:(BOOL)animated
{
  v5 = [(ICNoteEditorViewController *)self textView:palette];
  v6 = [v5 ink];
  _isHandwritingInk = [v6 _isHandwritingInk];

  if ((_isHandwritingInk & 1) == 0)
  {
    textView = [(ICNoteEditorViewController *)self textView];
    [textView setShouldAvoidBecomingFirstResponder:1];
  }
}

- (void)inkPalette:(id)palette didHideAnimated:(BOOL)animated
{
  animatedCopy = animated;
  textView = [(ICNoteEditorViewController *)self textView];
  v7 = [textView ink];
  _isHandwritingInk = [v7 _isHandwritingInk];

  if ((_isHandwritingInk & 1) == 0)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setShouldAvoidBecomingFirstResponder:0];
  }

  [(ICNoteEditorViewController *)self updateInlineDrawingsPaletteVisibility];
  [(ICNoteEditorViewController *)self updateBarButtonsAnimated:animatedCopy];
  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 setRulerEnabled:0];

  v11 = MEMORY[0x277D367C0];
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  v14 = [v11 sharedToolPickerForWindow:window];
  [v14 setRulerActive:0];

  [(ICNoteEditorViewController *)self cleanupAfterFingerDrawing];
  [(ICNoteEditorViewController *)self showOrHideSearchPatternHighlightsIfNecessary];
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  [viewControllerManager updateHostedNotesAppearance];

  navigationController = [(ICNoteEditorViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setAccessibilityElementsHidden:0];
}

- (int64_t)icasPalettePositionFromPKPalettePosition:(int64_t)position
{
  if (position > 9)
  {
    return 0;
  }

  else
  {
    return qword_2154BBFD0[position];
  }
}

- (void)inkPalette:(id)palette didChangePalettePositionStart:(int64_t)start end:(int64_t)end
{
  if (start != end)
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitPaletteEngagementEventForNote:note startPosition:-[ICNoteEditorViewController icasPalettePositionFromPKPalettePosition:](self endPosition:{"icasPalettePositionFromPKPalettePosition:", start), -[ICNoteEditorViewController icasPalettePositionFromPKPalettePosition:](self, "icasPalettePositionFromPKPalettePosition:", end)}];

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
    view = [(ICNoteEditorViewController *)self view];
    [view addSubview:v4];

    view2 = [(ICNoteEditorViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    view3 = [(ICNoteEditorViewController *)self view];
    v9 = [v7 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:view3 attribute:15 multiplier:1.0 constant:0.0];
    [view2 addConstraint:v9];

    view4 = [(ICNoteEditorViewController *)self view];
    v11 = MEMORY[0x277CCAAD0];
    view5 = [(ICNoteEditorViewController *)self view];
    v13 = [v11 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:view5 attribute:16 multiplier:1.0 constant:-60.0];
    [view4 addConstraint:v13];

    view6 = [(ICNoteEditorViewController *)self view];
    v15 = MEMORY[0x277CCAAD0];
    view7 = [(ICNoteEditorViewController *)self view];
    v17 = [v15 constraintWithItem:v4 attribute:1 relatedBy:0 toItem:view7 attribute:1 multiplier:1.0 constant:0.0];
    [view6 addConstraint:v17];

    view8 = [(ICNoteEditorViewController *)self view];
    v19 = MEMORY[0x277CCAAD0];
    view9 = [(ICNoteEditorViewController *)self view];
    v21 = [v19 constraintWithItem:v4 attribute:2 relatedBy:0 toItem:view9 attribute:2 multiplier:1.0 constant:0.0];
    [view8 addConstraint:v21];

    v22 = self->_rulerHostingView;
    self->_rulerHostingView = v4;

    rulerHostingView = self->_rulerHostingView;
  }

  return rulerHostingView;
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v4 = [(ICNoteEditorViewController *)self textView:interaction];
  [v4 setEditable:1];
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  textView = [(ICNoteEditorViewController *)self textView];
  v8 = [textView ink];
  if ([v8 _isHandwritingInk])
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    if ([textView2 canBecomeFirstResponder])
    {
      textView3 = [(ICNoteEditorViewController *)self textView];
      v11 = [textView3 pointInside:0 withEvent:{x, y}];
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

- (BOOL)textViewCanAddStroke:(id)stroke
{
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene && [windowScene activationState])
  {
LABEL_3:
    v7 = 0;
    goto LABEL_11;
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  if (note)
  {
    v9 = note;
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isEditable = [note2 isEditable];

    if ((isEditable & 1) == 0)
    {
      note3 = [(ICNoteEditorBaseViewController *)self note];
      isDeletedOrInTrash = [note3 isDeletedOrInTrash];

      if (isDeletedOrInTrash)
      {
        [(ICNoteEditorViewController *)self showRecoverNoteAlert];
      }

      goto LABEL_3;
    }
  }

  textView = [(ICNoteEditorViewController *)self textView];
  [textView hitTestPoint];
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

- (void)setIsDrawingStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  self->_isDrawingStroke = stroke;
  note = [(ICNoteEditorBaseViewController *)self note];
  [note setIsDrawingStroke:strokeCopy];
}

- (void)textViewWillBeginStroke:(id)stroke forTouch:(id)touch
{
  touchCopy = touch;
  strokeCopy = stroke;
  if ([(ICNoteEditorViewController *)self wasEditingBeforeDrawing]&& ![(ICNoteEditorViewController *)self isInkPickerShowing])
  {
    [(ICNoteEditorViewController *)self showInkPicker:1 animated:1];
  }

  if (![(ICNoteEditorViewController *)self isDrawingStroke])
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    documentMergeController = [note documentMergeController];
    textView = [(ICNoteEditorViewController *)self textView];
    [documentMergeController beginBlockingMergeForReason:5 textView:textView];
  }

  [(ICNoteEditorViewController *)self setCurrentStrokeStartTouch:touchCopy];
  [(ICNoteEditorViewController *)self setIsDrawingStroke:1];
  type = [touchCopy type];

  [(ICNoteEditorViewController *)self setIsDrawingStrokeWithPencil:type == 2];
  [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:0];
  [(ICNoteEditorViewController *)self updateUIEnabledStatePencilActive:[(ICNoteEditorViewController *)self isDrawingStrokeWithPencil]];
  [strokeCopy setInputAccessoryView:0];

  [(ICNoteEditorViewController *)self setHasMadeEdits];
}

- (void)updateUIEnabledStatePencilActive:(BOOL)active
{
  activeCopy = active;
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setUserInteractionEnabled:!activeCopy];

  navigationController2 = [(ICNoteEditorViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setUserInteractionEnabled:!activeCopy];
}

- (void)textViewDidEndStroke:(id)stroke
{
  [(ICNoteEditorViewController *)self updateUIEnabledStatePencilActive:0];
  if ([(ICNoteEditorViewController *)self isDrawingStroke])
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    documentMergeController = [note documentMergeController];
    textView = [(ICNoteEditorViewController *)self textView];
    [documentMergeController endBlockingMergeForReason:5 textView:textView];
  }

  isDrawingStrokeWithPencil = [(ICNoteEditorViewController *)self isDrawingStrokeWithPencil];
  [(ICNoteEditorViewController *)self setIsDrawingStroke:0];
  [(ICNoteEditorViewController *)self setIsDrawingStrokeWithPencil:0];
  date = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setDateOfLastStrokeOrNewDrawing:date];

  [(ICNoteEditorViewController *)self clearTextViewSelection];
  currentStrokeStartTouch = [(ICNoteEditorViewController *)self currentStrokeStartTouch];
  textView2 = [(ICNoteEditorViewController *)self textView];
  [currentStrokeStartTouch locationInView:textView2];
  v12 = v11;
  v14 = v13;

  v19 = [(ICNoteEditorViewController *)self inlineDrawingAttachmentForPoint:v12, v14];
  if (v19)
  {
    identifier = [v19 identifier];

    if (identifier)
    {
      if (isDrawingStrokeWithPencil)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      identifier2 = [v19 identifier];
      [eventReporter pushInlineDrawingDataForDrawingID:identifier2 tool:v16];
    }
  }

  [(ICNoteEditorViewController *)self setCurrentStrokeStartTouch:0];
  if (isDrawingStrokeWithPencil)
  {
    if (![(ICNoteEditorViewController *)self isInkPickerShowing])
    {
      [(ICNoteEditorViewController *)self setDidDrawWithPencilWithoutPalette:1];
    }

    [(ICNoteEditorViewController *)self updateBarButtonsAnimated:1];
  }
}

- (void)undoablySwitchToPPK:(BOOL)k
{
  kCopy = k;
  textView = [(ICNoteEditorViewController *)self textView];
  textView2 = textView;
  if (kCopy)
  {
    [textView setPaperEnabled:1];
  }

  else
  {
    [textView setPaperEnabled:0];

    textView2 = [(ICNoteEditorViewController *)self textView];
    [textView2 setStylusDrawingEnabled:1];
  }

  textView3 = [(ICNoteEditorViewController *)self textView];
  [textView3 setDrawingDelegate:self];

  undoManager = [(ICNoteEditorViewController *)self undoManager];
  v8 = [undoManager prepareWithInvocationTarget:self];
  [v8 undoablySwitchToPPK:!kCopy];
}

- (void)textView:(id)view upgradeDrawingAtIndex:(unint64_t)index itemProviders:(id)providers insertionLocationInDrawing:(CGPoint)drawing
{
  y = drawing.y;
  x = drawing.x;
  v29 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  if ([MEMORY[0x277D368E8] isEnabled])
  {
    textView = [(ICNoteEditorViewController *)self textView];
    textStorage = [textView textStorage];
    v13 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:index effectiveRange:0];

    objc_opt_class();
    v14 = ICCheckedDynamicCast();
    attachment = [v14 attachment];

    if (attachment)
    {
      note = [(ICNoteEditorBaseViewController *)self note];
      managedObjectContext = [note managedObjectContext];

      if (managedObjectContext)
      {
        v18 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
        note2 = [(ICNoteEditorBaseViewController *)self note];
        textView2 = [(ICNoteEditorViewController *)self textView];
        v21 = [(ICInlineDrawingUpgradeHelper *)v18 initWithNote:note2 managedObjectContext:managedObjectContext textView:textView2];

        attachment2 = [v14 attachment];
        v23 = [v21 upgradeWithAttachment:attachment2 itemProviders:providersCopy itemsLocation:x, y];

        if (v23)
        {
          [(ICNoteEditorViewController *)self upgradeAllAttachmentsInNoteWithUpgradeHelper:v21];
        }

        else
        {
          v24 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            attachment3 = [v14 attachment];
            loggingDescription = [attachment3 loggingDescription];
            v27 = 138412290;
            v28 = loggingDescription;
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
      managedObjectContext = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_2151A1000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "Unable to upgrade drawing since inline drawing attachment wasn't found", &v27, 2u);
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

- (void)upgradeAllAttachmentsInNoteWithUpgradeHelper:(id)helper forSydney:(BOOL)sydney
{
  sydneyCopy = sydney;
  helperCopy = helper;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__ICNoteEditorViewController_upgradeAllAttachmentsInNoteWithUpgradeHelper_forSydney___block_invoke;
  aBlock[3] = &unk_2781ABEB8;
  aBlock[4] = self;
  v7 = helperCopy;
  v36 = v7;
  v8 = _Block_copy(aBlock);
  isEditingOnSystemPaper = [(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper];
  v10 = MEMORY[0x277D362C0];
  if (!sydneyCopy)
  {
    v10 = MEMORY[0x277D362B8];
  }

  v11 = *v10;
  v12 = *MEMORY[0x277D362B0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults BOOLForKey:v11];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [standardUserDefaults2 BOOLForKey:v12];

  if (isEditingOnSystemPaper || (v14 & 1) != 0 || (v16 & 1) != 0)
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle localizedStringForKey:@"Drawings Will Be Updated" value:&stru_282757698 table:0];
    [MEMORY[0x277CCA8D8] mainBundle];
    v20 = v11;
    v22 = v21 = v8;
    v23 = [v22 localizedStringForKey:@"Drawings will be updated as needed to allow using new drawing features.\n\nOnly devices upgraded to the latest version of iOS value:iPadOS table:{or visionOS will be able to edit updated drawings.", &stru_282757698, 0}];
    v24 = [v17 alertControllerWithTitle:v19 message:v23 preferredStyle:1];

    v8 = v21;
    v11 = v20;

    v25 = MEMORY[0x277D750F8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [mainBundle2 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
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

- (id)inlineDrawingAttachmentForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  textView = [(ICNoteEditorViewController *)self textView];
  [textView textContainerInset];
  v8 = v7;

  note = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note textStorage];
  ic_range = [textStorage ic_range];
  v13 = v12;

  v35.location = [(ICNoteEditorViewController *)self visibleRange];
  ++v35.length;
  v36.location = ic_range;
  v36.length = v13;
  v14 = NSIntersectionRange(v35, v36);
  note2 = [(ICNoteEditorBaseViewController *)self note];
  textStorage2 = [note2 textStorage];
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
  [textStorage2 enumerateAttribute:v17 inRange:v14.location options:v14.length usingBlock:{0, v21}];

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

- (BOOL)textView:(id)view canAddDrawingAtIndex:(unint64_t)index
{
  viewCopy = view;
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note && (v8 = note, -[ICNoteEditorBaseViewController note](self, "note"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEditable], v9, v8, !v10) || (-[ICNoteEditorBaseViewController note](self, "note"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "textStorage"), v12 = objc_claimAutoreleasedReturnValue(), Helper_x8__DDResultAttributeName = gotLoadHelper_x8__DDResultAttributeName(v13), objc_msgSend(v16, "attribute:atIndex:effectiveRange:", **(v15 + 472), index, 0, Helper_x8__DDResultAttributeName), v17 = objc_claimAutoreleasedReturnValue(), v17, v12, v11, v17))
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isDeletedOrInTrash = [note2 isDeletedOrInTrash];

    if (isDeletedOrInTrash)
    {
      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }
  }

  else
  {
    note3 = [(ICNoteEditorBaseViewController *)self note];
    if (!note3 || (v23 = note3, -[ICNoteEditorBaseViewController note](self, "note"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 canAddAttachment], v24, v23, (v25 & 1) != 0))
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

- (BOOL)textViewCanSelectDrawing:(id)drawing
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  if ((isEditable & 1) == 0)
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    isDeletedOrInTrash = [note2 isDeletedOrInTrash];

    if (isDeletedOrInTrash)
    {
      [(ICNoteEditorViewController *)self showRecoverNoteAlert];
    }
  }

  return isEditable;
}

- (void)textView:(id)view willAddDrawingAtIndex:(unint64_t)index
{
  [(ICNoteEditorViewController *)self ensureValidInkForNewDrawingOrNote];
  [(ICNoteEditorViewController *)self addNewNoteIfNeeded];
  prefersPencilOnlyDrawing = [MEMORY[0x277D75820] prefersPencilOnlyDrawing];
  textView = [(ICNoteEditorViewController *)self textView];
  textStorage = [textView textStorage];
  v9 = [textStorage length];

  if ((prefersPencilOnlyDrawing & 1) == 0 && index + 1 < v9)
  {
    [(ICNoteEditorViewController *)self setInkPickerState:1];
    [(ICNoteEditorViewController *)self showInkPickerAndEndEditingIfNecessary];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(ICNoteEditorViewController *)self setDateOfLastStrokeOrNewDrawing:date];

  [MEMORY[0x277D367E0] updateTouchPredictionPointsFromOverride];
  objc_opt_class();
  textView2 = [(ICNoteEditorViewController *)self textView];
  v11 = ICDynamicCast();
  textContentStorage = [v11 textContentStorage];
  textStorage2 = [textContentStorage textStorage];
  [textStorage2 setAlwaysEnumerateTrailingParagraph:1];
}

- (void)textView:(id)view didRemoveDrawingAtIndex:(unint64_t)index
{
  v5 = [(ICNoteEditorViewController *)self textView:view];
  [(ICNoteEditorViewController *)self textViewDidChange:v5];
}

- (id)textView:(id)view newAttachmentForFileType:(id)type
{
  typeCopy = type;
  note = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note isEditable];

  if (isEditable)
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CD96A8]])
    {
      note2 = [(ICNoteEditorBaseViewController *)self note];
      v9 = [note2 addInlineDrawingAttachmentWithAnalytics:1];
      v10 = 0x277D367E8;
LABEL_6:

      v16 = [objc_alloc(*v10) initWithAttachment:v9];
      goto LABEL_8;
    }

    if ([typeCopy isEqualToString:*MEMORY[0x277CD96B0]])
    {
      note3 = [(ICNoteEditorBaseViewController *)self note];
      account = [note3 account];
      [account ensureCriticalPaperDirectoriesExist];

      note4 = [(ICNoteEditorBaseViewController *)self note];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v9 = [note4 addSystemPaperAttachmentWithIdentifier:uUIDString];

      note2 = [v9 managedObjectContext];
      [note2 ic_save];
      v10 = 0x277D368E8;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)showHandwritingDebug:(BOOL)debug
{
  debugCopy = debug;
  handwritingDebugPresenter = [(ICNoteEditorViewController *)self handwritingDebugPresenter];

  if (!handwritingDebugPresenter)
  {
    ic_isVision = [MEMORY[0x277D75418] ic_isVision];
    v7 = [objc_alloc(MEMORY[0x277D367A0]) initWithPresentingViewController:self presentationStyle:ic_isVision delegate:self];
    [(ICNoteEditorViewController *)self setHandwritingDebugPresenter:v7];
  }

  handwritingDebugPresenter2 = [(ICNoteEditorViewController *)self handwritingDebugPresenter];
  v9 = handwritingDebugPresenter2;
  if (debugCopy)
  {
    [handwritingDebugPresenter2 show];
  }

  else
  {
    [handwritingDebugPresenter2 hide];

    [(ICNoteEditorViewController *)self setHandwritingDebugPresenter:0];
  }
}

- (id)radarTitleForHandwritingDebug
{
  v2 = MEMORY[0x277CCACA8];
  note = [(ICNoteEditorBaseViewController *)self note];
  title = [note title];
  v5 = [v2 localizedStringWithFormat:@"Handwriting recognition: %@", title];

  return v5;
}

- (id)drawingsForHandwritingDebug
{
  note = [(ICNoteEditorBaseViewController *)self note];
  allDrawings = [note allDrawings];

  return allDrawings;
}

- (id)titleForAddCollaboratorsActivity:(id)activity
{
  activityCopy = activity;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  note = [(ICNoteEditorBaseViewController *)self note];
  managedObjectContext = [note managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ICNoteEditorViewController_titleForAddCollaboratorsActivity___block_invoke;
  v10[3] = &unk_2781ACF80;
  v10[4] = self;
  v10[5] = &v11;
  [managedObjectContext performBlockAndWait:v10];

  if (*(v12 + 24) == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"View Participants" value:&stru_282757698 table:0];
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

- (id)systemImageNameForAddCollaboratorsActivity:(id)activity
{
  note = [(ICNoteEditorBaseViewController *)self note];
  isSharedViaICloud = [note isSharedViaICloud];

  if (isSharedViaICloud)
  {
    return @"person.crop.circle.badge.checkmark";
  }

  else
  {
    return @"person.crop.circle.badge.plus";
  }
}

- (void)createImage:(id)image
{
  v47[3] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (!ICInternalSettingsShouldShowImageGenerationUI())
  {
    goto LABEL_27;
  }

  canPerformCreateImageWithSelection = [(ICNoteEditorViewController *)self canPerformCreateImageWithSelection];
  objc_opt_class();
  v6 = ICDynamicCast();
  attachment = [v6 attachment];

  textView = [(ICNoteEditorViewController *)self textView];
  ic_stringByTrimmingLeadingTrailingWhitespace = textView;
  if (attachment)
  {
    v10 = 1;
  }

  else
  {
    v10 = !canPerformCreateImageWithSelection;
  }

  if (!v10)
  {
    singleSelectedAttachment = [textView singleSelectedAttachment];
    attachment = [singleSelectedAttachment attachment];
    goto LABEL_13;
  }

  tTTextStorage = [textView TTTextStorage];
  v12 = [tTTextStorage length];

  if (v12 <= 0x18)
  {
    textView2 = [(ICNoteEditorViewController *)self textView];
    tTTextStorage2 = [textView2 TTTextStorage];
    ic_stringByTrimmingLeadingTrailingWhitespace = [tTTextStorage2 ic_stringByTrimmingLeadingTrailingWhitespace];

    if (![ic_stringByTrimmingLeadingTrailingWhitespace length])
    {
LABEL_14:

      goto LABEL_15;
    }

    objc_opt_class();
    v15 = *MEMORY[0x277D74060];
    v16 = [ic_stringByTrimmingLeadingTrailingWhitespace attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(ic_stringByTrimmingLeadingTrailingWhitespace effectiveRange:{"length") - 1, 0}];
    v17 = ICDynamicCast();
    singleSelectedAttachment = [v17 fileType];

    if ([MEMORY[0x277D35E00] typeUTIIsSystemPaper:singleSelectedAttachment])
    {
      v18 = [ic_stringByTrimmingLeadingTrailingWhitespace attributedSubstringFromRange:{0, objc_msgSend(ic_stringByTrimmingLeadingTrailingWhitespace, "length") - 1}];
      ic_stringByTrimmingLeadingTrailingWhitespace2 = [v18 ic_stringByTrimmingLeadingTrailingWhitespace];

      ic_stringByTrimmingLeadingTrailingWhitespace = ic_stringByTrimmingLeadingTrailingWhitespace2;
    }

    if ([ic_stringByTrimmingLeadingTrailingWhitespace length] == 1)
    {
      objc_opt_class();
      v20 = [ic_stringByTrimmingLeadingTrailingWhitespace attribute:v15 atIndex:0 effectiveRange:0];
      v21 = ICDynamicCast();
      attachment2 = [v21 attachment];

      attachment = attachment2;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  if ([attachment attachmentType] == 3)
  {
    isPasswordProtected = [attachment isPasswordProtected];
    media = [attachment media];
    v26 = media;
    if (isPasswordProtected)
    {
      data = [media data];
      v28 = CGImageSourceCreateWithData(data, 0);
    }

    else
    {
      data = [media mediaURL];
      v28 = CGImageSourceCreateWithURL(data, 0);
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
        paperTextAttachmentManager = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
        [paperTextAttachmentManager insertMagicGenerativePlaygroundWithImage:v43];

        CGImageRelease(v43);
      }

      CFRelease(v39);
    }
  }

  else if (canPerformCreateImageWithSelection)
  {
    textView3 = [(ICNoteEditorViewController *)self textView];
    selectedRange = [textView3 selectedRange];
    v32 = v31;

    textView4 = [(ICNoteEditorViewController *)self textView];
    tTTextStorage3 = [textView4 TTTextStorage];
    identifier = [*MEMORY[0x277CE1E20] identifier];
    v36 = [tTTextStorage3 filteredAttributedStringForUTI:identifier range:{selectedRange, v32}];
    string = [v36 string];

    paperTextAttachmentManager2 = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
    [paperTextAttachmentManager2 insertMagicGenerativePlaygroundWithText:string];
  }

  else
  {
    paperTextAttachmentManager3 = [(ICNoteEditorViewController *)self paperTextAttachmentManager];
    [paperTextAttachmentManager3 insertMagicGenerativePlaygroundWithAutomaticContent];
  }

LABEL_27:
}

- (BOOL)canPerformCreateImageWithSelection
{
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  textView2 = [(ICNoteEditorViewController *)self textView];
  v8 = [textView2 textAttachmentsInRange:{selectedRange, v6}];

  if ([v8 count] <= 1)
  {
    firstObject = [v8 firstObject];
    attachment = [firstObject attachment];

    v12 = v6 == 1 && [attachment attachmentType] == 3;
    v9 = (attachment == 0 || v12) && v6 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setMagicGenerativePlaygroundUndoManager:(id)manager
{
  managerCopy = manager;
  magicGenerativePlaygroundUndoManager = self->_magicGenerativePlaygroundUndoManager;
  if (magicGenerativePlaygroundUndoManager != managerCopy)
  {
    v16 = managerCopy;
    v7 = MEMORY[0x277CCA7F8];
    v8 = MEMORY[0x277CCA810];
    v9 = MEMORY[0x277CCA808];
    if (magicGenerativePlaygroundUndoManager)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:*v7 object:self->_magicGenerativePlaygroundUndoManager];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 removeObserver:self name:*v8 object:self->_magicGenerativePlaygroundUndoManager];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 removeObserver:self name:*v9 object:self->_magicGenerativePlaygroundUndoManager];
    }

    objc_storeStrong(&self->_magicGenerativePlaygroundUndoManager, manager);
    if (v16)
    {
      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter4 addObserver:self selector:sel_updateBarButtons name:*v7 object:v16];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter5 addObserver:self selector:sel_updateBarButtons name:*v8 object:v16];

      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter6 addObserver:self selector:sel_updateBarButtons name:*v9 object:v16];
    }

    [(ICNoteEditorViewController *)self updateBarButtons];
    managerCopy = v16;
  }
}

- (void)magicGenerativePlaygroundWillDisappear
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    inlineSketchEditingState = [navigationItemConfiguration inlineSketchEditingState];

    if (inlineSketchEditingState == 4)
    {
      navigationItemConfiguration2 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      [navigationItemConfiguration2 setInlineSketchEditingState:0];

      navigationItemConfiguration3 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
      [navigationItemConfiguration3 updateAnimated:0];
    }
  }
}

- (void)mentionInsertedInNote:(id)note mentionID:(id)d participantID:(id)iD viaAutoComplete:(BOOL)complete
{
  completeCopy = complete;
  iDCopy = iD;
  dCopy = d;
  noteCopy = note;
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  [eventReporter submitMentionAddEventForNote:noteCopy mentionID:dCopy participantID:iDCopy viaAutoComplete:completeCopy];
}

- (void)inlineAttachmentDeleted:(id)deleted
{
  deletedCopy = deleted;
  objc_opt_class();
  userInfo = [deletedCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35C68]];
  v9 = ICDynamicCast();

  if ([v9 isMentionAttachment])
  {
    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitMentionDeleteEvent:note];
  }

  else
  {
    if (![v9 isHashtagAttachment])
    {
      goto LABEL_6;
    }

    eventReporter = [(ICNoteEditorViewController *)self eventReporter];
    note = [(ICNoteEditorBaseViewController *)self note];
    [eventReporter submitHashtagDeleteEvent:note approachEnum:4];
  }

LABEL_6:
  [v9 accessibilityAnnounceDeletionWithVoiceOver];
}

- (void)hashtagInsertedInNote:(id)note tokenContentIdentifier:(id)identifier viaAutoComplete:(BOOL)complete
{
  completeCopy = complete;
  identifierCopy = identifier;
  noteCopy = note;
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  [eventReporter submitHashtagAddEventForNote:noteCopy tokenContentIdentifier:identifierCopy viaAutoComplete:completeCopy];
}

- (BOOL)noteEditorNavigationItemConfigurationIsToolbarHidden
{
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  return isToolbarHidden;
}

- (id)noteEditorNavigationItemConfigurationChecklistAccessibilityValue:(id)value
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v8 = [note checklistStyleAccessibilityDescriptionForRange:{selectedRange, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationIndentationAccessibilityValue:(id)value
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v8 = [note indentationStyleAccessibilityDescriptionForRange:{selectedRange, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationEmphasisAccessibilityCustomContentValue:(id)value
{
  note = [(ICNoteEditorBaseViewController *)self note];
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v8 = [note emphasisStyleAccessibilityDescriptionForRange:{selectedRange, v7}];

  return v8;
}

- (id)noteEditorNavigationItemConfigurationInputAccessoryToolbar:(id)toolbar
{
  dismissableInputAccessoryView = [(ICNoteEditorViewController *)self dismissableInputAccessoryView];
  toolbar = [dismissableInputAccessoryView toolbar];

  return toolbar;
}

- (id)noteEditorNavigationItemConfigurationInputAssistantItem:(id)item
{
  if ([MEMORY[0x277D75418] ic_isiPad])
  {
    textView = [(ICNoteEditorViewController *)self textView];
    inputAssistantItem = [textView inputAssistantItem];
  }

  else
  {
    inputAssistantItem = 0;
  }

  return inputAssistantItem;
}

- (id)noteEditorNavigationItemConfigurationTableAttachmentViewController:(id)controller
{
  objc_opt_class();
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v5 = ICDynamicCast();

  v6 = [(ICNoteEditorViewController *)self getTableControllerFor:v5];

  return v6;
}

- (void)noteEditorNavigationItemConfiguration:(id)configuration setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  navigationController = [(ICNoteEditorViewController *)self navigationController];
  [navigationController setToolbarHidden:hiddenCopy animated:animatedCopy];

  dispatchMainAfterDelay();
}

void __94__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_setToolbarHidden_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollViewResizer];
  [v1 reapplyInsets];
}

- (void)noteEditorNavigationItemConfiguration:(id)configuration addNoteFromBarButtonItem:(id)item event:(id)event
{
  configurationCopy = configuration;
  itemCopy = item;
  eventCopy = event;
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note && (v12 = note, -[ICNoteEditorBaseViewController note](self, "note"), v13 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D366C8] currentAttachment], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "note"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v12, v13 == v15))
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, itemCopy);
    v16 = MEMORY[0x277D75110];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle localizedStringForKey:@"Stop Recording?" value:&stru_282757698 table:0];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle2 localizedStringForKey:@"Are you sure you want to create a new note? It will stop audio recording." value:&stru_282757698 table:0];
    v21 = [v16 alertControllerWithTitle:v18 message:v20 preferredStyle:1];

    v22 = MEMORY[0x277D750F8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [mainBundle3 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __99__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_addNoteFromBarButtonItem_event___block_invoke;
    v30[3] = &unk_2781AD450;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, &from);
    v31 = eventCopy;
    v25 = [v22 actionWithTitle:v24 style:0 handler:v30];
    [v21 addAction:v25];

    v26 = MEMORY[0x277D750F8];
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
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
    [(ICNoteEditorViewController *)self addNote:itemCopy event:eventCopy shouldInstrumentAsNewNoteAffordanceUsage:1];
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

- (void)noteEditorNavigationItemConfiguration:(id)configuration showWritingToolsFromBarButtonItem:(id)item
{
  itemCopy = item;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_showWritingToolsFromBarButtonItem___block_invoke;
  v7[3] = &unk_2781ABEB8;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __102__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_showWritingToolsFromBarButtonItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];
  [v2 showWritingTools:*(a1 + 40)];
}

- (void)noteEditorNavigationItemConfiguration:(id)configuration openLinkEditorWithSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  auxiliaryResponder = [(ICNoteEditorViewController *)self auxiliaryResponder];
  v8 = ICDynamicCast();

  selfCopy = v8;
  if (!v8)
  {
    selfCopy = self;
  }

  [(ICNoteEditorViewController *)selfCopy openLinkEditor:senderCopy];
}

- (void)noteEditorNavigationItemConfiguration:(id)configuration toggleListStyle:(unsigned int)style withSender:(id)sender
{
  [(ICNoteEditorViewController *)self toggleCurrentTextStyle:*&style];
  switch(style)
  {
    case 'f':
      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note = [(ICNoteEditorBaseViewController *)self note];
      v8 = eventReporter;
      v9 = note;
      v10 = 8;
      goto LABEL_7;
    case 'e':
      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note = [(ICNoteEditorBaseViewController *)self note];
      v8 = eventReporter;
      v9 = note;
      v10 = 7;
      goto LABEL_7;
    case 'd':
      eventReporter = [(ICNoteEditorViewController *)self eventReporter];
      note = [(ICNoteEditorBaseViewController *)self note];
      v8 = eventReporter;
      v9 = note;
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

- (void)noteEditorNavigationItemConfiguration:(id)configuration closeAuxiliaryWindowFromBarButtonItem:(id)item
{
  configurationCopy = configuration;
  itemCopy = item;
  note = [(ICNoteEditorBaseViewController *)self note];
  if (note && (v9 = note, -[ICNoteEditorBaseViewController note](self, "note"), v10 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277D366C8] currentAttachment], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "note"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9, v10 == v12))
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D75110];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle localizedStringForKey:@"Stop Recording?" value:&stru_282757698 table:0];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle2 localizedStringForKey:@"Are you sure you want to leave this note? It will stop audio recording." value:&stru_282757698 table:0];
    v19 = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

    v20 = MEMORY[0x277D750F8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v22 = [mainBundle3 localizedStringForKey:@"OK" value:&stru_282757698 table:0];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __106__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_closeAuxiliaryWindowFromBarButtonItem___block_invoke;
    v31 = &unk_2781AD478;
    objc_copyWeak(&v32, &location);
    v23 = [v20 actionWithTitle:v22 style:0 handler:&v28];
    [v19 addAction:{v23, v28, v29, v30, v31}];

    v24 = MEMORY[0x277D750F8];
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
    v27 = [v24 actionWithTitle:v26 style:1 handler:&__block_literal_global_1224];
    [v19 addAction:v27];

    [(ICNoteEditorViewController *)self presentViewController:v19 animated:1 completion:0];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  else
  {
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    [viewControllerManager closeAuxiliaryWindow];
  }
}

void __106__ICNoteEditorViewController_noteEditorNavigationItemConfiguration_closeAuxiliaryWindowFromBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewControllerManager];
  [v1 closeAuxiliaryWindow];
}

- (void)noteEditorNavigationItemConfiguration:(id)configuration toggleSidebarFromBarButtonItem:(id)item
{
  v4 = [(ICNoteEditorViewController *)self viewControllerManager:configuration];
  [v4 toggleSidebar];
}

- (void)acceleratorOriginNeedsUpdate
{
  textView = [(ICNoteEditorViewController *)self textView];
  selectedTextRange = [textView selectedTextRange];

  textView2 = [(ICNoteEditorViewController *)self textView];
  v5 = [selectedTextRange end];
  [textView2 caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController updateAcceleratorOriginWith:{v7, v9, v11, v13}];
}

- (BOOL)languageHasSpaces
{
  textView = [(ICNoteEditorViewController *)self textView];
  languageHasSpaces = [textView languageHasSpaces];

  return languageHasSpaces;
}

- (int64_t)writingDirection
{
  textView = [(ICNoteEditorViewController *)self textView];
  ic_currentWritingDirection = [textView ic_currentWritingDirection];

  return ic_currentWritingDirection;
}

- (_NSRange)lastSelectedRangeForAccelerator
{
  textView = [(ICNoteEditorViewController *)self textView];
  selectedRange = [textView selectedRange];
  v5 = v4;

  v6 = selectedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)splitViewModeChangeDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];

  v7 = ICDynamicCast();

  if ([v7 displayMode] != 3 && objc_msgSend(v7, "displayMode") != 5)
  {
    linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
    [linkAcceleratorController presentLinkAcceleratorIfNecessaryWithCompletionHandler:&__block_literal_global_1227];
  }
}

- (id)contextMenuInteraction:(id)interaction atLocation:(CGPoint)location inTableTextView:(id)view
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  viewCopy = view;
  v11 = viewCopy;
  if (viewCopy)
  {
    note = [(ICNoteEditorViewController *)viewCopy characterRangeAtPoint:x, y];
    v13 = [(ICNoteEditorViewController *)v11 ic_characterRangeFromTextRange:note];
    v55 = v14;
    v56 = v13;
    selfCopy = v11;
  }

  else
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    v16 = [note rangeForAttachment:interactionCopy];
    v55 = v17;
    v56 = v16;
    selfCopy = self;
  }

  v58 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle localizedStringForKey:@"Open Note" value:&stru_282757698 table:0];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke;
  v72[3] = &unk_2781AD2F0;
  v22 = interactionCopy;
  v73 = v22;
  selfCopy2 = self;
  v23 = [v19 ic_actionWithTitle:v21 imageName:@"note.text" handler:v72];

  v57 = v23;
  [array addObject:v23];
  if (objc_opt_respondsToSelector())
  {
    v24 = MEMORY[0x277D750C8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [mainBundle2 localizedStringForKey:@"Copy Link" value:&stru_282757698 table:0];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_2;
    v70[3] = &unk_2781AD2F0;
    v70[4] = self;
    v71 = v22;
    v27 = [v24 ic_actionWithTitle:v26 imageName:@"doc.on.doc" handler:v70];

    [array addObject:v27];
  }

  if (objc_opt_respondsToSelector())
  {
    note2 = [(ICNoteEditorBaseViewController *)self note];
    if ([note2 isSharedReadOnly])
    {
    }

    else
    {
      isEditingOnSecureScreen = [(ICNoteEditorBaseViewController *)self isEditingOnSecureScreen];

      if (!isEditingOnSecureScreen)
      {
        v30 = MEMORY[0x277D750C8];
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        v32 = [mainBundle3 localizedStringForKey:@"Edit Link" value:&stru_282757698 table:0];
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

        [array addObject:v33];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    note3 = [(ICNoteEditorBaseViewController *)self note];
    isSharedReadOnly = [note3 isSharedReadOnly];

    if ((isSharedReadOnly & 1) == 0)
    {
      v36 = MEMORY[0x277D750C8];
      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v38 = [mainBundle4 localizedStringForKey:@"Remove Link" value:&stru_282757698 table:0];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __80__ICNoteEditorViewController_contextMenuInteraction_atLocation_inTableTextView___block_invoke_4;
      v63[3] = &unk_2781AD2F0;
      v63[4] = self;
      v64 = v22;
      v39 = [v36 ic_actionWithTitle:v38 imageName:@"xmark.circle" attributes:2 handler:v63];

      [array addObject:v39];
    }
  }

  tokenContentIdentifier = [v22 tokenContentIdentifier];
  v41 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

  v42 = [MEMORY[0x277D35DF0] predicateForNotesMentionedInURL:v41];
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  v44 = mEMORY[0x277D35F30];
  v45 = 0;
  if (v42 && mEMORY[0x277D35F30])
  {
    v46 = MEMORY[0x277D35F28];
    managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];
    v48 = [v46 notesMatchingPredicate:v42 context:managedObjectContext];

    firstObject = [v48 firstObject];
    if (firstObject)
    {
      v50 = firstObject;
      v51 = [(ICNoteEditorViewController *)self notePreviewView:firstObject];
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
      v60 = array;
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

- (id)notePreviewView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ICNoteEditorViewController *)self notePreview:viewCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_audioEventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_audioEventReporter];
  }

  v9 = self->_audioEventReporter;

  return v9;
}

- (void)audioEventReporterLostSession:(id)session
{
  sessionCopy = session;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteEditorViewController audioEventReporterLostSession:];
  }

  audioEventReporter = self->_audioEventReporter;
  self->_audioEventReporter = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v8 object:object];
}

- (ICNAFindResultExposureReporter)findResultReporter
{
  findResultReporter = self->_findResultReporter;
  if (!findResultReporter)
  {
    v4 = objc_alloc(MEMORY[0x277D35980]);
    viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
    window = [viewControllerManager window];
    v7 = [v4 initWithWindow:window];
    v8 = self->_findResultReporter;
    self->_findResultReporter = v7;

    findResultReporter = self->_findResultReporter;
  }

  return findResultReporter;
}

- (id)icaxDateView
{
  textView = [(ICNoteEditorViewController *)self textView];
  dateView = [textView dateView];

  return dateView;
}

- (id)icaxUserTitleView
{
  textView = [(ICNoteEditorViewController *)self textView];
  userTitleView = [textView userTitleView];

  return userTitleView;
}

- (id)icaxMiniPlayerView
{
  if ([(ICNoteEditorViewController *)self isShowingMiniPlayer])
  {
    audioAttachmentEditorCoordinator = [(ICNoteEditorViewController *)self audioAttachmentEditorCoordinator];
    icaxMiniPlayerView = [audioAttachmentEditorCoordinator icaxMiniPlayerView];
  }

  else
  {
    icaxMiniPlayerView = 0;
  }

  return icaxMiniPlayerView;
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

- (void)updateSelectionOnUndo:(id)undo
{
  rangeValue = [undo rangeValue];

  [(ICNoteEditorViewController *)self setSelectedRange:rangeValue, 0];
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