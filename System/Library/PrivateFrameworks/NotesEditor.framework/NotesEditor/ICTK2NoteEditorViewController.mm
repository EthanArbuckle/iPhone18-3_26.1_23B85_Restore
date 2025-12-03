@interface ICTK2NoteEditorViewController
- (BOOL)languageHasSpaces;
- (BOOL)shouldRenderAuthorHighlights;
- (BOOL)textView:(id)view isEndOfDocument:(id)document;
- (ICTTTextStorage)textStorage;
- (_NSRange)lastSelectedRangeForAccelerator;
- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment;
- (id)attributionSidebarView;
- (id)textController;
- (int64_t)uniqueCollapsibleSectionAffordanceExposures;
- (int64_t)uniqueCollapsibleSectionAffordanceUsages;
- (int64_t)writingDirection;
- (void)acceleratorOriginNeedsUpdate;
- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)updates;
- (void)recreateTextView;
- (void)removeTextView;
- (void)renderAuthorHighlights;
- (void)resetCollapsibleSectionAffordanceUsageData;
- (void)setAuthorHighlightsController:(id)controller;
- (void)textStorageDidUpdateDataDetectionResults:(id)results;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICTK2NoteEditorViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_textStorageDidUpdateDataDetectionResults_ name:*MEMORY[0x277D36658] object:0];
}

- (void)recreateTextView
{
  v242[1] = *MEMORY[0x277D85DE8];
  textView = [(ICTK2NoteEditorViewController *)self textView];

  if (textView)
  {
    [(ICTK2NoteEditorViewController *)self removeTextView];
  }

  note = [(ICNoteEditorBaseViewController *)self note];
  if ([note isPasswordProtectedAndLocked])
  {
    goto LABEL_6;
  }

  invitation = [(ICNoteEditorViewController *)self invitation];
  if (invitation)
  {

LABEL_6:

    return;
  }

  note2 = [(ICNoteEditorBaseViewController *)self note];
  isUnsupported = [note2 isUnsupported];

  if (isUnsupported)
  {
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICTK2NoteEditorViewController *)self ppt_willLoadNoteIntoEditor];
  }

  note3 = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note3 textStorage];
  [textStorage setIsPausingUndoActions:0];

  note4 = [(ICNoteEditorBaseViewController *)self note];
  textStorage2 = [note4 textStorage];
  if ([textStorage2 alwaysEnumerateTrailingParagraph])
  {
    note5 = [(ICNoteEditorBaseViewController *)self note];
    textStorage3 = [note5 textStorage];
    v13 = [textStorage3 length];

    if (v13)
    {
      note6 = [(ICNoteEditorBaseViewController *)self note];
      textStorage4 = [note6 textStorage];
      v16 = *MEMORY[0x277D35DA8];
      note7 = [(ICNoteEditorBaseViewController *)self note];
      textStorage5 = [note7 textStorage];
      v19 = [textStorage4 attribute:v16 atIndex:objc_msgSend(textStorage5 effectiveRange:{"length") - 1, 0}];

      uuid = [v19 uuid];

      if (uuid)
      {
        note8 = [(ICNoteEditorBaseViewController *)self note];
        textStorage6 = [note8 textStorage];
        outlineController = [textStorage6 outlineController];

        uuid2 = [v19 uuid];
        v25 = [outlineController closestVisibleAncestorForUUID:uuid2];

        if (v25)
        {
          v26 = MEMORY[0x277CBEB98];
          v242[0] = v25;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:1];
          v28 = [v26 setWithArray:v27];
          [outlineController expandUUIDs:v28];
        }
      }
    }
  }

  else
  {
  }

  note9 = [(ICNoteEditorBaseViewController *)self note];
  textStorage7 = [note9 textStorage];
  [textStorage7 setAlwaysEnumerateTrailingParagraph:0];

  v31 = [ICTK2TextView alloc];
  note10 = [(ICNoteEditorBaseViewController *)self note];
  view = [(ICTK2NoteEditorViewController *)self view];
  [view bounds];
  v36 = [(ICTK2TextView *)v31 initWithNote:note10 size:[(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper] insideSystemPaper:0 insideSiriSnippet:v34, v35];
  [(ICTK2NoteEditorViewController *)self setTk2TextView:v36];

  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [tk2TextView setTranslatesAutoresizingMaskIntoConstraints:0];

  tk2TextView2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [tk2TextView2 setClipsToBounds:0];

  tk2TextView3 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [tk2TextView3 setEditorController:self];

  note11 = [(ICNoteEditorBaseViewController *)self note];
  documentMergeController = [note11 documentMergeController];
  tk2TextView4 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [documentMergeController addTextView:tk2TextView4];

  v224 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v224 setTranslatesAutoresizingMaskIntoConstraints:0];
  tk2TextView5 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v224 addSubview:tk2TextView5];

  traitCollection = [(ICTK2NoteEditorViewController *)self traitCollection];
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
  v49 = [viewControllerManager3 noteContainerViewMode] == 0;

  viewControllerManager4 = [(ICNoteEditorViewController *)self viewControllerManager];
  v51 = [viewControllerManager4 noteContainerViewMode] == 1;

  backgroundView = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView setContentView:v224 useSafeAreaLayoutGuide:objc_msgSend(MEMORY[0x277D75418] standalone:"ic_isVision") needsAdditionalBottomMargin:isMainSplitViewDisplayModeSecondaryOnly needsAdditionalLeadingMargin:v49 force:{(v51 | isMainSplitViewDisplayModeSecondaryOnly) & 1, 0}];

  v213 = MEMORY[0x277CCAAD0];
  tk2TextView6 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  leadingAnchor = [tk2TextView6 leadingAnchor];
  leadingAnchor2 = [v224 leadingAnchor];
  v221 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(ICTK2NoteEditorViewController *)self setTextViewLeadingConstraint:v221];
  v241[0] = v221;
  tk2TextView7 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  topAnchor = [tk2TextView7 topAnchor];
  topAnchor2 = [v224 topAnchor];
  v214 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v241[1] = v214;
  tk2TextView8 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  bottomAnchor = [tk2TextView8 bottomAnchor];
  bottomAnchor2 = [v224 bottomAnchor];
  v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v241[2] = v56;
  tk2TextView9 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  widthAnchor = [tk2TextView9 widthAnchor];
  widthAnchor2 = [v224 widthAnchor];
  v60 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v241[3] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:4];
  [v213 activateConstraints:v61];

  textView2 = [(ICTK2NoteEditorViewController *)self textView];
  [textView2 setContentInsetAdjustmentBehavior:0];

  v222 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v222 setDelegate:self];
  textView3 = [(ICTK2NoteEditorViewController *)self textView];
  [textView3 addInteraction:v222];

  textView4 = [(ICTK2NoteEditorViewController *)self textView];
  [textView4 setDelegate:self];

  textView5 = [(ICTK2NoteEditorViewController *)self textView];
  [textView5 setIcDelegate:self];

  textView6 = [(ICTK2NoteEditorViewController *)self textView];
  [textView6 setAttachmentViewDelegate:self];

  textView7 = [(ICTK2NoteEditorViewController *)self textView];
  ic_pkTiledView = [textView7 ic_pkTiledView];
  [ic_pkTiledView setRulerHostingDelegate:self];

  textView8 = [(ICTK2NoteEditorViewController *)self textView];
  [textView8 setDataDetectorTypes:-1];

  textView9 = [(ICTK2NoteEditorViewController *)self textView];
  undoManager = [textView9 undoManager];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA7F8] object:undoManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA810] object:undoManager];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA808] object:undoManager];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_hideInkPicker name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  v76 = [ICAttributionSidebarController alloc];
  tk2TextView10 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v78 = [(ICAttributionSidebarController *)v76 initWithTextView:tk2TextView10];
  [(ICTK2NoteEditorViewController *)self setTk2AttributionSidebarController:v78];

  tk2AttributionSidebarController = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  panGestureRecognizer = [tk2AttributionSidebarController panGestureRecognizer];
  [panGestureRecognizer setDelegate:self];

  objc_initWeak(&location, self);
  v237[0] = MEMORY[0x277D85DD0];
  v237[1] = 3221225472;
  v237[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke;
  v237[3] = &unk_2781AF068;
  objc_copyWeak(&v238, &location);
  v237[4] = self;
  tk2AttributionSidebarController2 = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  [tk2AttributionSidebarController2 setSidebarWidthDidChangeHandler:v237];

  textView10 = [(ICTK2NoteEditorViewController *)self textView];
  [textView10 updateLayoutMargins];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
    paperLinkBarViewController = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [paperLinkBarViewController refresh];
  }

  v84 = [ICPaperTextAttachmentManager alloc];
  note12 = [(ICNoteEditorBaseViewController *)self note];
  textView11 = [(ICTK2NoteEditorViewController *)self textView];
  v87 = [(ICPaperTextAttachmentManager *)v84 initWithNote:note12 textView:textView11 delegate:self];
  [(ICNoteEditorViewController *)self setPaperTextAttachmentManager:v87];

  shouldAllowAttributionSidebar = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
  tk2AttributionSidebarController3 = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  [tk2AttributionSidebarController3 setEnabled:shouldAllowAttributionSidebar];

  userWantsToSeeDateLabel = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
  if (userWantsToSeeDateLabel)
  {
    isSharedAndEmpty = 1;
  }

  else
  {
    tk2AttributionSidebarController3 = [(ICNoteEditorBaseViewController *)self note];
    isSharedAndEmpty = [tk2AttributionSidebarController3 isSharedAndEmpty];
  }

  [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:isSharedAndEmpty];
  if (!userWantsToSeeDateLabel)
  {
  }

  note13 = [(ICNoteEditorBaseViewController *)self note];
  textView12 = [(ICTK2NoteEditorViewController *)self textView];
  dateView = [textView12 dateView];
  [dateView setNote:note13];

  textView13 = [(ICTK2NoteEditorViewController *)self textView];
  note14 = [(ICNoteEditorBaseViewController *)self note];
  [textView13 createUserTitleViewIfNecessaryForNote:note14];

  textView14 = [(ICTK2NoteEditorViewController *)self textView];
  note15 = [(ICNoteEditorBaseViewController *)self note];
  [textView14 updateCompatibilityBannerForNote:note15 parentViewController:self updateTextViewContentInsets:0];

  [(ICNoteEditorViewController *)self rebuildInputAccessoryView];
  [(ICNoteEditorViewController *)self updateBarButtons];
  [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
  backgroundView2 = [(ICNoteEditorViewController *)self backgroundView];
  textView15 = [(ICTK2NoteEditorViewController *)self textView];
  [backgroundView2 reparentAccessibilityChildrenOfElement:textView15];

  backgroundView3 = [(ICNoteEditorViewController *)self backgroundView];
  [backgroundView3 setAxChildReparentingController:self];

  note16 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(textView15) = [note16 isNewNoteWithHashtagsInsertedIntoBody];

  if (textView15)
  {
    -[ICNoteEditorViewController setCurrentTextStyle:](self, "setCurrentTextStyle:", [MEMORY[0x277D36978] noteDefaultNamedStyle]);
    note17 = [(ICNoteEditorBaseViewController *)self note];
    [note17 setIsNewNoteWithHashtagsInsertedIntoBody:0];
  }

  note18 = [(ICNoteEditorBaseViewController *)self note];
  isEditable = [note18 isEditable];
  textView16 = [(ICTK2NoteEditorViewController *)self textView];
  [textView16 setDisplayingEditableContent:isEditable];

  v107 = objc_alloc(MEMORY[0x277D366A8]);
  note19 = [(ICNoteEditorBaseViewController *)self note];
  v109 = [v107 initWithNote:note19];
  [(ICNoteEditorViewController *)self setAttachmentInsertionController:v109];

  attachmentInsertionController = [(ICNoteEditorViewController *)self attachmentInsertionController];
  [attachmentInsertionController setAttachmentDelegate:self];

  attachmentInsertionController2 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  textController = [(ICTK2NoteEditorViewController *)self textController];
  [textController setAttachmentInsertionController:attachmentInsertionController2];

  v113 = [ICVisualAssetImportController alloc];
  note20 = [(ICNoteEditorBaseViewController *)self note];
  textView17 = [(ICTK2NoteEditorViewController *)self textView];
  v116 = [(ICVisualAssetImportController *)v113 initWithNote:note20 textView:textView17];
  [(ICNoteEditorViewController *)self setVisualAssetImportController:v116];

  v117 = objc_alloc(MEMORY[0x277D35F20]);
  note21 = [(ICNoteEditorBaseViewController *)self note];
  v119 = [v117 initWithNote:note21];
  [(ICNoteEditorViewController *)self setMentionsController:v119];

  mentionsController = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController setAnalyticsDelegate:self];

  attachmentInsertionController3 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  mentionsController2 = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController2 setAttachmentInsertionController:attachmentInsertionController3];

  mentionsController3 = [(ICNoteEditorViewController *)self mentionsController];
  textController2 = [(ICTK2NoteEditorViewController *)self textController];
  [textController2 setMentionsController:mentionsController3];

  textView18 = [(ICTK2NoteEditorViewController *)self textView];
  mentionsController4 = [(ICNoteEditorViewController *)self mentionsController];
  [mentionsController4 setTextView:textView18];

  v127 = objc_alloc(MEMORY[0x277D35EE8]);
  note22 = [(ICNoteEditorBaseViewController *)self note];
  v129 = [v127 initWithNote:note22];
  [(ICNoteEditorViewController *)self setHashtagController:v129];

  hashtagController = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController setAnalyticsDelegate:self];

  textView19 = [(ICTK2NoteEditorViewController *)self textView];
  hashtagController2 = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController2 setTextView:textView19];

  attachmentInsertionController4 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  hashtagController3 = [(ICNoteEditorViewController *)self hashtagController];
  [hashtagController3 setAttachmentInsertionController:attachmentInsertionController4];

  hashtagController4 = [(ICNoteEditorViewController *)self hashtagController];
  textController3 = [(ICTK2NoteEditorViewController *)self textController];
  [textController3 setHashtagController:hashtagController4];

  v137 = [ICLinkAcceleratorController alloc];
  mEMORY[0x277D35E70] = [MEMORY[0x277D35E70] sharedConfiguration];
  v139 = [(ICLinkAcceleratorController *)v137 initWithCloudConfiguration:mEMORY[0x277D35E70] mode:0];
  [(ICNoteEditorViewController *)self setLinkAcceleratorController:v139];

  linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController setDelegate:self];

  linkAcceleratorController2 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController2 setLinkDelegate:self];

  if (ICInternalSettingsIsNotesMathEnabled())
  {
    v142 = objc_alloc(MEMORY[0x277D36738]);
    note23 = [(ICNoteEditorBaseViewController *)self note];
    v144 = [v142 initWithNote:note23];
    [(ICNoteEditorViewController *)self setCalculateRecognitionController:v144];

    textView20 = [(ICTK2NoteEditorViewController *)self textView];
    calculateRecognitionController = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController setTextView:textView20];

    attachmentInsertionController5 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    calculateRecognitionController2 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController2 setAttachmentInsertionController:attachmentInsertionController5];

    textView21 = [(ICTK2NoteEditorViewController *)self textView];
    calculateRecognitionController3 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController3 setSuggestionsDelegate:textView21];

    note24 = [(ICNoteEditorBaseViewController *)self note];
    calculatePreviewBehavior = [note24 calculatePreviewBehavior];
    calculateRecognitionController4 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController4 setInsertsResults:calculatePreviewBehavior != 1];

    note25 = [(ICNoteEditorBaseViewController *)self note];
    calculatePreviewBehavior2 = [note25 calculatePreviewBehavior];
    calculateRecognitionController5 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController5 setPreviewBehavior:calculatePreviewBehavior2];

    calculateRecognitionController6 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [calculateRecognitionController6 addErrorInteraction];
  }

  if (ICInternalSettingsIsScrubbingEnabled())
  {
    v158 = objc_alloc(MEMORY[0x277D36750]);
    textView22 = [(ICTK2NoteEditorViewController *)self textView];
    v160 = [v158 initWithTextView:textView22];
    [(ICNoteEditorViewController *)self setCalculateScrubberController:v160];

    note26 = [(ICNoteEditorBaseViewController *)self note];
    calculateScrubberController = [(ICNoteEditorViewController *)self calculateScrubberController];
    [calculateScrubberController setNote:note26];
  }

  if (ICInternalSettingsIsGraphingEnabled())
  {
    v163 = objc_alloc(MEMORY[0x277D36728]);
    note27 = [(ICNoteEditorBaseViewController *)self note];
    v165 = [v163 initWithNote:note27];
    [(ICNoteEditorViewController *)self setCalculateGraphingController:v165];

    textView23 = [(ICTK2NoteEditorViewController *)self textView];
    calculateGraphingController = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController setTextView:textView23];

    attachmentInsertionController6 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    calculateGraphingController2 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController2 setAttachmentInsertionController:attachmentInsertionController6];

    calculateScrubberController2 = [(ICNoteEditorViewController *)self calculateScrubberController];
    calculateGraphingController3 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [calculateGraphingController3 setScrubberController:calculateScrubberController2];
  }

  v172 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v172 setDirection:1];
  [v172 setDelegate:self];
  textView24 = [(ICTK2NoteEditorViewController *)self textView];
  [textView24 addGestureRecognizer:v172];

  v174 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v174 setDirection:2];
  [v174 setDelegate:self];
  textView25 = [(ICTK2NoteEditorViewController *)self textView];
  [textView25 addGestureRecognizer:v174];

  v240[0] = v172;
  v240[1] = v174;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:2];
  [(ICNoteEditorViewController *)self setSwipeGestureRecognizers:v176];

  objc_opt_class();
  textView26 = [(ICTK2NoteEditorViewController *)self textView];
  textLayoutManager = [textView26 textLayoutManager];
  v179 = ICCheckedDynamicCast();

  v180 = objc_alloc(MEMORY[0x277D366F8]);
  note28 = [(ICNoteEditorBaseViewController *)self note];
  v182 = [v180 initWithNote:note28 textLayoutManager:v179];
  [(ICTK2NoteEditorViewController *)self setAuthorHighlightsController:v182];

  authorHighlightsController = [(ICNoteEditorViewController *)self authorHighlightsController];
  textController4 = [(ICTK2NoteEditorViewController *)self textController];
  [textController4 setAuthorHighlightsController:authorHighlightsController];

  v185 = [ICAuthorHighlightsUpdater alloc];
  authorHighlightsController2 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v187 = [(ICAuthorHighlightsUpdater *)v185 initWithAuthorHighlightsController:authorHighlightsController2 textLayoutManager:v179];
  [(ICNoteEditorViewController *)self setAuthorHighlightsUpdater:v187];

  highlightPatternRegexFinder = [v179 highlightPatternRegexFinder];
  authorHighlightsUpdater = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [authorHighlightsUpdater setSearchHighlightRegexFinder:highlightPatternRegexFinder];

  textView27 = [(ICTK2NoteEditorViewController *)self textView];
  tTTextStorage = [textView27 TTTextStorage];
  [tTTextStorage resetHighlightsAttributedString];

  authorHighlightsUpdater2 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  LODWORD(tTTextStorage) = [authorHighlightsUpdater2 hasHighlights];

  if (tTTextStorage)
  {
    authorHighlightsUpdater3 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [authorHighlightsUpdater3 updateAnimated:0];
  }

  v235[0] = MEMORY[0x277D85DD0];
  v235[1] = 3221225472;
  v235[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_4;
  v235[3] = &unk_2781AF090;
  objc_copyWeak(&v236, &location);
  tk2TextView11 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [tk2TextView11 setRenderingAttributesProvider:v235];

  authorHighlightsUpdater4 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  attributionSidebarView = [(ICTK2NoteEditorViewController *)self attributionSidebarView];
  [attributionSidebarView setAuthorHighlightsUpdater:authorHighlightsUpdater4];

  v231 = 0;
  v232 = &v231;
  v233 = 0x2020000000;
  v234 = 0;
  v227 = 0;
  v228 = &v227;
  v229 = 0x2020000000;
  v230 = 0;
  note29 = [(ICNoteEditorBaseViewController *)self note];
  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_5;
  v226[3] = &unk_2781AF0B8;
  v226[4] = &v231;
  v226[5] = &v227;
  [note29 enumerateAttachmentsInOrderUsingBlock:v226];

  if (![MEMORY[0x277D368E8] isEnabled] || (v228[3] & 1) == 0 && ((v232[3] & 1) != 0 || !ICInternalSettingsDefaultToPaperKitAttachments()) || (-[ICNoteEditorBaseViewController note](self, "note"), v198 = objc_claimAutoreleasedReturnValue(), v199 = objc_msgSend(v198, "isUnsupported"), v198, (v199 & 1) != 0))
  {
    textView28 = [(ICTK2NoteEditorViewController *)self textView];
    [textView28 setStylusDrawingEnabled:1];
LABEL_55:

    goto LABEL_56;
  }

  textView29 = [(ICTK2NoteEditorViewController *)self textView];
  [textView29 setPaperEnabled:1];

  if (*(v232 + 24) == 1)
  {
    note30 = [(ICNoteEditorBaseViewController *)self note];
    textView28 = [note30 managedObjectContext];

    if (textView28)
    {
      v203 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
      note31 = [(ICNoteEditorBaseViewController *)self note];
      textView30 = [(ICTK2NoteEditorViewController *)self textView];
      v206 = [(ICInlineDrawingUpgradeHelper *)v203 initWithNote:note31 managedObjectContext:textView28 textView:textView30];

      [(ICInlineDrawingUpgradeHelper *)v206 upgradeAllAttachmentsInNote];
    }

    goto LABEL_55;
  }

LABEL_56:
  textView31 = [(ICTK2NoteEditorViewController *)self textView];
  [textView31 setDrawingDelegate:self];

  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    textView32 = [(ICTK2NoteEditorViewController *)self textView];
    ic_pkTiledView2 = [textView32 ic_pkTiledView];
    [ic_pkTiledView2 setOverrideUserInterfaceStyle:1];
  }

  note32 = [(ICNoteEditorBaseViewController *)self note];
  calculateDocumentController = [note32 calculateDocumentController];
  [calculateDocumentController updateHighlights];

  v212 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_6;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_after(v212, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(&v227, 8);
  _Block_object_dispose(&v231, 8);
  objc_destroyWeak(&v236);

  objc_destroyWeak(&v238);
  objc_destroyWeak(&location);
}

- (id)textController
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  tk2TextController = [tk2TextView tk2TextController];

  return tk2TextController;
}

- (id)attributionSidebarView
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  attributionSidebarView = [tk2TextView attributionSidebarView];

  return attributionSidebarView;
}

void __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 attachmentType] == 10)
  {
    v3 = 32;
    v4 = v6;
LABEL_6:
    *(*(*(a1 + v3) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v5 = [v6 attachmentType] == 13;
  v4 = v6;
  if (v5)
  {
    v3 = 40;
    goto LABEL_6;
  }

LABEL_7:
}

- (ICTTTextStorage)textStorage
{
  objc_opt_class();
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  textContentStorage = [tk2TextView textContentStorage];
  textStorage = [textContentStorage textStorage];
  v6 = ICCheckedDynamicCast();

  return v6;
}

id __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained shouldRenderAuthorHighlights];

  if (v14)
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 authorHighlightsController];
    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 tk2TextView];
    v19 = [v16 attributesForHighlightingTextLineFragment:v11 characterRange:a3 defaultRenderingAttributes:a4 effectiveRange:v12 textView:{a6, v18}];
  }

  else
  {
    v19 = v12;
  }

  return v19;
}

- (BOOL)shouldRenderAuthorHighlights
{
  authorHighlightsUpdater = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  if ([authorHighlightsUpdater hasHighlights])
  {
    hasExpressions = 1;
  }

  else
  {
    note = [(ICNoteEditorBaseViewController *)self note];
    calculateDocumentController = [note calculateDocumentController];
    hasExpressions = [calculateDocumentController hasExpressions];
  }

  return hasExpressions;
}

- (_NSRange)lastSelectedRangeForAccelerator
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  selectedRange = [tk2TextView selectedRange];
  v5 = v4;

  v6 = selectedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

void __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 calculateDocumentController];
  [v3 scheduleUpdateAffectingChangeCounts:0 isHighPriority:1];

  v5 = [*(a1 + 32) note];
  v4 = [v5 calculateAccessibilityController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v7 viewWillDisappear:disappear];
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  attributionSidebarView = [tk2TextView attributionSidebarView];
  [attributionSidebarView unfocusAttributionDetails];

  attributionSidebarController = [(ICTK2NoteEditorViewController *)self attributionSidebarController];
  [attributionSidebarController hideSidebarAnimated:0];
}

void __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained tk2TextView];
  v12 = [v11 attributionSidebarView];

  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 attributionSidebarOpenedDate];
  [v14 timeIntervalSinceNow];
  v16 = v15;

  v17 = [*(a1 + 32) attributionSidebarView];
  [v17 visibleContentWidth];
  if (a4 != 0.0 || v18 <= 0.0)
  {
    goto LABEL_7;
  }

  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  if (v16 > 2.0)
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    v19 = objc_loadWeakRetained((a1 + 40));
    v20 = [v19 note];
    [v20 setLastAttributionsViewedDate:v17];

LABEL_7:
  }

  [v12 fullContentWidth];
  v22 = v21 == a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_2;
  aBlock[3] = &unk_2781AF018;
  objc_copyWeak(v34, (a1 + 40));
  v35 = v22;
  v34[1] = *&a4;
  v23 = v12;
  v33 = v23;
  v36 = a2;
  v24 = _Block_copy(aBlock);
  [v23 setVisibleContentWidth:a2 isGestureActive:a4];
  if (a3)
  {
    v25 = 1.0;
    if (a5 > 0.0)
    {
      [v23 visibleContentWidth];
      v25 = (a4 - v26) / a5;
    }

    v27 = MEMORY[0x277D75D18];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_3;
    v30[3] = &unk_2781AF040;
    objc_copyWeak(v31, (a1 + 40));
    v31[1] = *&a4;
    [v27 animateWithDuration:0 delay:v30 usingSpringWithDamping:v24 initialSpringVelocity:0.3 options:0.0 animations:0.65 completion:v25];
    objc_destroyWeak(v31);
  }

  else
  {
    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 textViewLeadingConstraint];
    [v29 setConstant:a4];

    v24[2](v24, 1);
  }

  objc_destroyWeak(v34);
}

void __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained textView];
  [v3 unclampTextView];

  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setAttributionSidebarOpenedDate:v5];
  }

  else
  {
    if (*(a1 + 48) != 0.0)
    {
      goto LABEL_6;
    }

    [*(a1 + 32) reload];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setIgnoresTaps:v4];

LABEL_6:
  v8 = *(a1 + 57);
  v10 = objc_loadWeakRetained((a1 + 40));
  v9 = [v10 tk2TextView];
  [v9 setShowsVerticalScrollIndicator:(v8 & 1) == 0];
}

void __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained textViewLeadingConstraint];
  [v4 setConstant:v2];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 view];
  [v5 layoutIfNeeded];
}

- (void)removeTextView
{
  v24 = *MEMORY[0x277D85DE8];
  textView = [(ICTK2NoteEditorViewController *)self textView];
  undoManager = [textView undoManager];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA7F8] object:undoManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CCA810] object:undoManager];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277CCA808] object:undoManager];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  previousNote = [(ICNoteEditorViewController *)self previousNote];
  allDocumentMergeControllers = [previousNote allDocumentMergeControllers];

  v11 = [allDocumentMergeControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(allDocumentMergeControllers);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        textView2 = [(ICTK2NoteEditorViewController *)self textView];
        [v15 removeTextView:textView2];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allDocumentMergeControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  textView3 = [(ICTK2NoteEditorViewController *)self textView];
  [textView3 setDelegate:0];

  textView4 = [(ICTK2NoteEditorViewController *)self textView];
  [textView4 removeFromSuperview];
}

- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  icTextLayoutManager = [tk2TextView icTextLayoutManager];
  identifier = [attachmentCopy identifier];

  v9 = [icTextLayoutManager existingAttachmentViewForIdentifier:identifier];

  superview = [v9 superview];
  if (superview)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)textView:(id)view isEndOfDocument:(id)document
{
  viewCopy = view;
  documentCopy = document;
  beginningOfDocument = [viewCopy beginningOfDocument];
  v9 = [viewCopy offsetFromPosition:beginningOfDocument toPosition:documentCopy];

  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  textContentStorage = [tk2TextView textContentStorage];
  outlineController = [textContentStorage outlineController];
  visibleRange = [outlineController visibleRange];
  v15 = v14;

  if (v9 >= v15 + visibleRange - 1)
  {
    v17 = 1;
  }

  else
  {
    endOfDocument = [viewCopy endOfDocument];
    v17 = [documentCopy isEqual:endOfDocument];
  }

  return v17;
}

- (void)acceleratorOriginNeedsUpdate
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  selectedTextRange = [tk2TextView selectedTextRange];

  tk2TextView2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v5 = [selectedTextRange end];
  [tk2TextView2 caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  tk2TextView3 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  view = [(ICTK2NoteEditorViewController *)self view];
  window = [view window];
  [tk2TextView3 convertRect:window toView:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  linkAcceleratorController = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [linkAcceleratorController updateAcceleratorOriginWith:{v18, v20, v22, v24}];
}

- (BOOL)languageHasSpaces
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  languageHasSpaces = [tk2TextView languageHasSpaces];

  return languageHasSpaces;
}

- (int64_t)writingDirection
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  ic_currentWritingDirection = [tk2TextView ic_currentWritingDirection];

  return ic_currentWritingDirection;
}

- (void)setAuthorHighlightsController:(id)controller
{
  controllerCopy = controller;
  authorHighlightsController = [(ICNoteEditorViewController *)self authorHighlightsController];

  v6 = MEMORY[0x277D364A8];
  if (authorHighlightsController)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *v6;
    authorHighlightsController2 = [(ICNoteEditorViewController *)self authorHighlightsController];
    [defaultCenter removeObserver:self name:v8 object:authorHighlightsController2];
  }

  v14.receiver = self;
  v14.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v14 setAuthorHighlightsController:controllerCopy];
  authorHighlightsController3 = [(ICNoteEditorViewController *)self authorHighlightsController];

  if (authorHighlightsController3)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *v6;
    authorHighlightsController4 = [(ICNoteEditorViewController *)self authorHighlightsController];
    [defaultCenter2 addObserver:self selector:sel_authorHighlightsControllerDidPerformHighlightUpdates_ name:v12 object:authorHighlightsController4];
  }
}

- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)updates
{
  updatesCopy = updates;
  objc_opt_class();
  userInfo = [updatesCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v11 = ICCheckedDynamicCast();

  document = [v11 document];
  note = [(ICNoteEditorBaseViewController *)self note];
  textStorage = [note textStorage];
  document2 = [textStorage document];

  if (document == document2)
  {
    [(ICTK2NoteEditorViewController *)self renderAuthorHighlights];
  }
}

- (void)renderAuthorHighlights
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = NSClassFromString(&cfstr_Uitextcontaine.isa);
  v4 = NSClassFromString(&cfstr_Uitextlayoutca.isa);
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  subviews = [tk2TextView subviews];
  v7 = [subviews ic_firstObjectOfClass:v3];

  subviews2 = [v7 subviews];
  v9 = [subviews2 ic_firstObjectOfClass:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews3 = [v9 subviews];
  v11 = [subviews3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(subviews3);
        }

        [*(*(&v15 + 1) + 8 * v14++) setNeedsDisplay];
      }

      while (v12 != v14);
      v12 = [subviews3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)textStorageDidUpdateDataDetectionResults:(id)results
{
  object = [results object];
  textStorage = [(ICTK2NoteEditorViewController *)self textStorage];

  if (object == textStorage)
  {
    dispatchMainAfterDelay();
  }
}

void __74__ICTK2NoteEditorViewController_textStorageDidUpdateDataDetectionResults___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) authorHighlightsController];
  v2 = [*(a1 + 32) textStorage];
  v3 = [v2 ic_range];
  v5 = v4;
  v6 = [*(a1 + 32) textStorage];
  [v7 performHighlightUpdatesForRange:v3 inTextStorage:v5 updates:{v6, 0}];
}

- (int64_t)uniqueCollapsibleSectionAffordanceExposures
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  outlineRenderer = [tk2TextView outlineRenderer];
  collapsibleSectionAffordanceExposures = [outlineRenderer collapsibleSectionAffordanceExposures];

  return collapsibleSectionAffordanceExposures;
}

- (int64_t)uniqueCollapsibleSectionAffordanceUsages
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  outlineRenderer = [tk2TextView outlineRenderer];
  collapsibleSectionAffordanceUsages = [outlineRenderer collapsibleSectionAffordanceUsages];

  return collapsibleSectionAffordanceUsages;
}

- (void)resetCollapsibleSectionAffordanceUsageData
{
  tk2TextView = [(ICTK2NoteEditorViewController *)self tk2TextView];
  outlineRenderer = [tk2TextView outlineRenderer];
  [outlineRenderer resetCollapsibleSectionsAffordanceUsageData];
}

@end