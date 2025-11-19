@interface ICTK2NoteEditorViewController
- (BOOL)languageHasSpaces;
- (BOOL)shouldRenderAuthorHighlights;
- (BOOL)textView:(id)a3 isEndOfDocument:(id)a4;
- (ICTTTextStorage)textStorage;
- (_NSRange)lastSelectedRangeForAccelerator;
- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4;
- (id)attributionSidebarView;
- (id)textController;
- (int64_t)uniqueCollapsibleSectionAffordanceExposures;
- (int64_t)uniqueCollapsibleSectionAffordanceUsages;
- (int64_t)writingDirection;
- (void)acceleratorOriginNeedsUpdate;
- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)a3;
- (void)recreateTextView;
- (void)removeTextView;
- (void)renderAuthorHighlights;
- (void)resetCollapsibleSectionAffordanceUsageData;
- (void)setAuthorHighlightsController:(id)a3;
- (void)textStorageDidUpdateDataDetectionResults:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICTK2NoteEditorViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_textStorageDidUpdateDataDetectionResults_ name:*MEMORY[0x277D36658] object:0];
}

- (void)recreateTextView
{
  v242[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICTK2NoteEditorViewController *)self textView];

  if (v3)
  {
    [(ICTK2NoteEditorViewController *)self removeTextView];
  }

  v223 = [(ICNoteEditorBaseViewController *)self note];
  if ([v223 isPasswordProtectedAndLocked])
  {
    goto LABEL_6;
  }

  v4 = [(ICNoteEditorViewController *)self invitation];
  if (v4)
  {

LABEL_6:

    return;
  }

  v5 = [(ICNoteEditorBaseViewController *)self note];
  v6 = [v5 isUnsupported];

  if (v6)
  {
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICTK2NoteEditorViewController *)self ppt_willLoadNoteIntoEditor];
  }

  v7 = [(ICNoteEditorBaseViewController *)self note];
  v8 = [v7 textStorage];
  [v8 setIsPausingUndoActions:0];

  v9 = [(ICNoteEditorBaseViewController *)self note];
  v10 = [v9 textStorage];
  if ([v10 alwaysEnumerateTrailingParagraph])
  {
    v11 = [(ICNoteEditorBaseViewController *)self note];
    v12 = [v11 textStorage];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(ICNoteEditorBaseViewController *)self note];
      v15 = [v14 textStorage];
      v16 = *MEMORY[0x277D35DA8];
      v17 = [(ICNoteEditorBaseViewController *)self note];
      v18 = [v17 textStorage];
      v19 = [v15 attribute:v16 atIndex:objc_msgSend(v18 effectiveRange:{"length") - 1, 0}];

      v20 = [v19 uuid];

      if (v20)
      {
        v21 = [(ICNoteEditorBaseViewController *)self note];
        v22 = [v21 textStorage];
        v23 = [v22 outlineController];

        v24 = [v19 uuid];
        v25 = [v23 closestVisibleAncestorForUUID:v24];

        if (v25)
        {
          v26 = MEMORY[0x277CBEB98];
          v242[0] = v25;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:1];
          v28 = [v26 setWithArray:v27];
          [v23 expandUUIDs:v28];
        }
      }
    }
  }

  else
  {
  }

  v29 = [(ICNoteEditorBaseViewController *)self note];
  v30 = [v29 textStorage];
  [v30 setAlwaysEnumerateTrailingParagraph:0];

  v31 = [ICTK2TextView alloc];
  v32 = [(ICNoteEditorBaseViewController *)self note];
  v33 = [(ICTK2NoteEditorViewController *)self view];
  [v33 bounds];
  v36 = [(ICTK2TextView *)v31 initWithNote:v32 size:[(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper] insideSystemPaper:0 insideSiriSnippet:v34, v35];
  [(ICTK2NoteEditorViewController *)self setTk2TextView:v36];

  v37 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v38 setClipsToBounds:0];

  v39 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v39 setEditorController:self];

  v40 = [(ICNoteEditorBaseViewController *)self note];
  v41 = [v40 documentMergeController];
  v42 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v41 addTextView:v42];

  v224 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v224 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v224 addSubview:v43];

  v44 = [(ICTK2NoteEditorViewController *)self traitCollection];
  if ([v44 ic_hasCompactWidth])
  {
    v45 = 1;
  }

  else
  {
    v46 = [(ICNoteEditorViewController *)self viewControllerManager];
    if ([v46 isAuxiliary])
    {
      v45 = 1;
    }

    else if ([MEMORY[0x277D75418] ic_isVision])
    {
      v47 = [(ICNoteEditorViewController *)self viewControllerManager];
      v45 = [v47 isMainSplitViewDisplayModeSecondaryOnly];
    }

    else
    {
      v45 = 0;
    }
  }

  v48 = [(ICNoteEditorViewController *)self viewControllerManager];
  v49 = [v48 noteContainerViewMode] == 0;

  v50 = [(ICNoteEditorViewController *)self viewControllerManager];
  v51 = [v50 noteContainerViewMode] == 1;

  v52 = [(ICNoteEditorViewController *)self backgroundView];
  [v52 setContentView:v224 useSafeAreaLayoutGuide:objc_msgSend(MEMORY[0x277D75418] standalone:"ic_isVision") needsAdditionalBottomMargin:v45 needsAdditionalLeadingMargin:v49 force:{(v51 | v45) & 1, 0}];

  v213 = MEMORY[0x277CCAAD0];
  v220 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v219 = [v220 leadingAnchor];
  v218 = [v224 leadingAnchor];
  v221 = [v219 constraintEqualToAnchor:v218];
  [(ICTK2NoteEditorViewController *)self setTextViewLeadingConstraint:v221];
  v241[0] = v221;
  v217 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v216 = [v217 topAnchor];
  v215 = [v224 topAnchor];
  v214 = [v216 constraintEqualToAnchor:v215];
  v241[1] = v214;
  v53 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v54 = [v53 bottomAnchor];
  v55 = [v224 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v241[2] = v56;
  v57 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v58 = [v57 widthAnchor];
  v59 = [v224 widthAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  v241[3] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:4];
  [v213 activateConstraints:v61];

  v62 = [(ICTK2NoteEditorViewController *)self textView];
  [v62 setContentInsetAdjustmentBehavior:0];

  v222 = objc_alloc_init(MEMORY[0x277CD9660]);
  [v222 setDelegate:self];
  v63 = [(ICTK2NoteEditorViewController *)self textView];
  [v63 addInteraction:v222];

  v64 = [(ICTK2NoteEditorViewController *)self textView];
  [v64 setDelegate:self];

  v65 = [(ICTK2NoteEditorViewController *)self textView];
  [v65 setIcDelegate:self];

  v66 = [(ICTK2NoteEditorViewController *)self textView];
  [v66 setAttachmentViewDelegate:self];

  v67 = [(ICTK2NoteEditorViewController *)self textView];
  v68 = [v67 ic_pkTiledView];
  [v68 setRulerHostingDelegate:self];

  v69 = [(ICTK2NoteEditorViewController *)self textView];
  [v69 setDataDetectorTypes:-1];

  v70 = [(ICTK2NoteEditorViewController *)self textView];
  v71 = [v70 undoManager];

  v72 = [MEMORY[0x277CCAB98] defaultCenter];
  [v72 addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA7F8] object:v71];

  v73 = [MEMORY[0x277CCAB98] defaultCenter];
  [v73 addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA810] object:v71];

  v74 = [MEMORY[0x277CCAB98] defaultCenter];
  [v74 addObserver:self selector:sel_updateBarButtons name:*MEMORY[0x277CCA808] object:v71];

  v75 = [MEMORY[0x277CCAB98] defaultCenter];
  [v75 addObserver:self selector:sel_hideInkPicker name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  v76 = [ICAttributionSidebarController alloc];
  v77 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v78 = [(ICAttributionSidebarController *)v76 initWithTextView:v77];
  [(ICTK2NoteEditorViewController *)self setTk2AttributionSidebarController:v78];

  v79 = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  v80 = [v79 panGestureRecognizer];
  [v80 setDelegate:self];

  objc_initWeak(&location, self);
  v237[0] = MEMORY[0x277D85DD0];
  v237[1] = 3221225472;
  v237[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke;
  v237[3] = &unk_2781AF068;
  objc_copyWeak(&v238, &location);
  v237[4] = self;
  v81 = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  [v81 setSidebarWidthDidChangeHandler:v237];

  v82 = [(ICTK2NoteEditorViewController *)self textView];
  [v82 updateLayoutMargins];

  if ([(ICNoteEditorBaseViewController *)self isEditingOnSystemPaper]&& +[ICPaperCommonUtilities shouldShowLinksWhenComposingQuickNote])
  {
    [(ICNoteEditorViewController *)self createSystemPaperLinkBarIfNecessary];
    v83 = [(ICNoteEditorViewController *)self paperLinkBarViewController];
    [v83 refresh];
  }

  v84 = [ICPaperTextAttachmentManager alloc];
  v85 = [(ICNoteEditorBaseViewController *)self note];
  v86 = [(ICTK2NoteEditorViewController *)self textView];
  v87 = [(ICPaperTextAttachmentManager *)v84 initWithNote:v85 textView:v86 delegate:self];
  [(ICNoteEditorViewController *)self setPaperTextAttachmentManager:v87];

  v88 = [(ICNoteEditorViewController *)self shouldAllowAttributionSidebar];
  v89 = [(ICTK2NoteEditorViewController *)self tk2AttributionSidebarController];
  [v89 setEnabled:v88];

  v90 = [(ICNoteEditorViewController *)self userWantsToSeeDateLabel];
  if (v90)
  {
    v91 = 1;
  }

  else
  {
    v89 = [(ICNoteEditorBaseViewController *)self note];
    v91 = [v89 isSharedAndEmpty];
  }

  [(ICNoteEditorViewController *)self setUserWantsToSeeDateLabel:v91];
  if (!v90)
  {
  }

  v92 = [(ICNoteEditorBaseViewController *)self note];
  v93 = [(ICTK2NoteEditorViewController *)self textView];
  v94 = [v93 dateView];
  [v94 setNote:v92];

  v95 = [(ICTK2NoteEditorViewController *)self textView];
  v96 = [(ICNoteEditorBaseViewController *)self note];
  [v95 createUserTitleViewIfNecessaryForNote:v96];

  v97 = [(ICTK2NoteEditorViewController *)self textView];
  v98 = [(ICNoteEditorBaseViewController *)self note];
  [v97 updateCompatibilityBannerForNote:v98 parentViewController:self updateTextViewContentInsets:0];

  [(ICNoteEditorViewController *)self rebuildInputAccessoryView];
  [(ICNoteEditorViewController *)self updateBarButtons];
  [(ICNoteEditorViewController *)self updateForceLightContentIfNecessary];
  v99 = [(ICNoteEditorViewController *)self backgroundView];
  v100 = [(ICTK2NoteEditorViewController *)self textView];
  [v99 reparentAccessibilityChildrenOfElement:v100];

  v101 = [(ICNoteEditorViewController *)self backgroundView];
  [v101 setAxChildReparentingController:self];

  v102 = [(ICNoteEditorBaseViewController *)self note];
  LODWORD(v100) = [v102 isNewNoteWithHashtagsInsertedIntoBody];

  if (v100)
  {
    -[ICNoteEditorViewController setCurrentTextStyle:](self, "setCurrentTextStyle:", [MEMORY[0x277D36978] noteDefaultNamedStyle]);
    v103 = [(ICNoteEditorBaseViewController *)self note];
    [v103 setIsNewNoteWithHashtagsInsertedIntoBody:0];
  }

  v104 = [(ICNoteEditorBaseViewController *)self note];
  v105 = [v104 isEditable];
  v106 = [(ICTK2NoteEditorViewController *)self textView];
  [v106 setDisplayingEditableContent:v105];

  v107 = objc_alloc(MEMORY[0x277D366A8]);
  v108 = [(ICNoteEditorBaseViewController *)self note];
  v109 = [v107 initWithNote:v108];
  [(ICNoteEditorViewController *)self setAttachmentInsertionController:v109];

  v110 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  [v110 setAttachmentDelegate:self];

  v111 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v112 = [(ICTK2NoteEditorViewController *)self textController];
  [v112 setAttachmentInsertionController:v111];

  v113 = [ICVisualAssetImportController alloc];
  v114 = [(ICNoteEditorBaseViewController *)self note];
  v115 = [(ICTK2NoteEditorViewController *)self textView];
  v116 = [(ICVisualAssetImportController *)v113 initWithNote:v114 textView:v115];
  [(ICNoteEditorViewController *)self setVisualAssetImportController:v116];

  v117 = objc_alloc(MEMORY[0x277D35F20]);
  v118 = [(ICNoteEditorBaseViewController *)self note];
  v119 = [v117 initWithNote:v118];
  [(ICNoteEditorViewController *)self setMentionsController:v119];

  v120 = [(ICNoteEditorViewController *)self mentionsController];
  [v120 setAnalyticsDelegate:self];

  v121 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v122 = [(ICNoteEditorViewController *)self mentionsController];
  [v122 setAttachmentInsertionController:v121];

  v123 = [(ICNoteEditorViewController *)self mentionsController];
  v124 = [(ICTK2NoteEditorViewController *)self textController];
  [v124 setMentionsController:v123];

  v125 = [(ICTK2NoteEditorViewController *)self textView];
  v126 = [(ICNoteEditorViewController *)self mentionsController];
  [v126 setTextView:v125];

  v127 = objc_alloc(MEMORY[0x277D35EE8]);
  v128 = [(ICNoteEditorBaseViewController *)self note];
  v129 = [v127 initWithNote:v128];
  [(ICNoteEditorViewController *)self setHashtagController:v129];

  v130 = [(ICNoteEditorViewController *)self hashtagController];
  [v130 setAnalyticsDelegate:self];

  v131 = [(ICTK2NoteEditorViewController *)self textView];
  v132 = [(ICNoteEditorViewController *)self hashtagController];
  [v132 setTextView:v131];

  v133 = [(ICNoteEditorViewController *)self attachmentInsertionController];
  v134 = [(ICNoteEditorViewController *)self hashtagController];
  [v134 setAttachmentInsertionController:v133];

  v135 = [(ICNoteEditorViewController *)self hashtagController];
  v136 = [(ICTK2NoteEditorViewController *)self textController];
  [v136 setHashtagController:v135];

  v137 = [ICLinkAcceleratorController alloc];
  v138 = [MEMORY[0x277D35E70] sharedConfiguration];
  v139 = [(ICLinkAcceleratorController *)v137 initWithCloudConfiguration:v138 mode:0];
  [(ICNoteEditorViewController *)self setLinkAcceleratorController:v139];

  v140 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v140 setDelegate:self];

  v141 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v141 setLinkDelegate:self];

  if (ICInternalSettingsIsNotesMathEnabled())
  {
    v142 = objc_alloc(MEMORY[0x277D36738]);
    v143 = [(ICNoteEditorBaseViewController *)self note];
    v144 = [v142 initWithNote:v143];
    [(ICNoteEditorViewController *)self setCalculateRecognitionController:v144];

    v145 = [(ICTK2NoteEditorViewController *)self textView];
    v146 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v146 setTextView:v145];

    v147 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v148 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v148 setAttachmentInsertionController:v147];

    v149 = [(ICTK2NoteEditorViewController *)self textView];
    v150 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v150 setSuggestionsDelegate:v149];

    v151 = [(ICNoteEditorBaseViewController *)self note];
    v152 = [v151 calculatePreviewBehavior];
    v153 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v153 setInsertsResults:v152 != 1];

    v154 = [(ICNoteEditorBaseViewController *)self note];
    v155 = [v154 calculatePreviewBehavior];
    v156 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v156 setPreviewBehavior:v155];

    v157 = [(ICNoteEditorViewController *)self calculateRecognitionController];
    [v157 addErrorInteraction];
  }

  if (ICInternalSettingsIsScrubbingEnabled())
  {
    v158 = objc_alloc(MEMORY[0x277D36750]);
    v159 = [(ICTK2NoteEditorViewController *)self textView];
    v160 = [v158 initWithTextView:v159];
    [(ICNoteEditorViewController *)self setCalculateScrubberController:v160];

    v161 = [(ICNoteEditorBaseViewController *)self note];
    v162 = [(ICNoteEditorViewController *)self calculateScrubberController];
    [v162 setNote:v161];
  }

  if (ICInternalSettingsIsGraphingEnabled())
  {
    v163 = objc_alloc(MEMORY[0x277D36728]);
    v164 = [(ICNoteEditorBaseViewController *)self note];
    v165 = [v163 initWithNote:v164];
    [(ICNoteEditorViewController *)self setCalculateGraphingController:v165];

    v166 = [(ICTK2NoteEditorViewController *)self textView];
    v167 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v167 setTextView:v166];

    v168 = [(ICNoteEditorViewController *)self attachmentInsertionController];
    v169 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v169 setAttachmentInsertionController:v168];

    v170 = [(ICNoteEditorViewController *)self calculateScrubberController];
    v171 = [(ICNoteEditorViewController *)self calculateGraphingController];
    [v171 setScrubberController:v170];
  }

  v172 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v172 setDirection:1];
  [v172 setDelegate:self];
  v173 = [(ICTK2NoteEditorViewController *)self textView];
  [v173 addGestureRecognizer:v172];

  v174 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleLeftOrRightSwipe_];
  [v174 setDirection:2];
  [v174 setDelegate:self];
  v175 = [(ICTK2NoteEditorViewController *)self textView];
  [v175 addGestureRecognizer:v174];

  v240[0] = v172;
  v240[1] = v174;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:2];
  [(ICNoteEditorViewController *)self setSwipeGestureRecognizers:v176];

  objc_opt_class();
  v177 = [(ICTK2NoteEditorViewController *)self textView];
  v178 = [v177 textLayoutManager];
  v179 = ICCheckedDynamicCast();

  v180 = objc_alloc(MEMORY[0x277D366F8]);
  v181 = [(ICNoteEditorBaseViewController *)self note];
  v182 = [v180 initWithNote:v181 textLayoutManager:v179];
  [(ICTK2NoteEditorViewController *)self setAuthorHighlightsController:v182];

  v183 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v184 = [(ICTK2NoteEditorViewController *)self textController];
  [v184 setAuthorHighlightsController:v183];

  v185 = [ICAuthorHighlightsUpdater alloc];
  v186 = [(ICNoteEditorViewController *)self authorHighlightsController];
  v187 = [(ICAuthorHighlightsUpdater *)v185 initWithAuthorHighlightsController:v186 textLayoutManager:v179];
  [(ICNoteEditorViewController *)self setAuthorHighlightsUpdater:v187];

  v188 = [v179 highlightPatternRegexFinder];
  v189 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  [v189 setSearchHighlightRegexFinder:v188];

  v190 = [(ICTK2NoteEditorViewController *)self textView];
  v191 = [v190 TTTextStorage];
  [v191 resetHighlightsAttributedString];

  v192 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  LODWORD(v191) = [v192 hasHighlights];

  if (v191)
  {
    v193 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
    [v193 updateAnimated:0];
  }

  v235[0] = MEMORY[0x277D85DD0];
  v235[1] = 3221225472;
  v235[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_4;
  v235[3] = &unk_2781AF090;
  objc_copyWeak(&v236, &location);
  v194 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  [v194 setRenderingAttributesProvider:v235];

  v195 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  v196 = [(ICTK2NoteEditorViewController *)self attributionSidebarView];
  [v196 setAuthorHighlightsUpdater:v195];

  v231 = 0;
  v232 = &v231;
  v233 = 0x2020000000;
  v234 = 0;
  v227 = 0;
  v228 = &v227;
  v229 = 0x2020000000;
  v230 = 0;
  v197 = [(ICNoteEditorBaseViewController *)self note];
  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = __49__ICTK2NoteEditorViewController_recreateTextView__block_invoke_5;
  v226[3] = &unk_2781AF0B8;
  v226[4] = &v231;
  v226[5] = &v227;
  [v197 enumerateAttachmentsInOrderUsingBlock:v226];

  if (![MEMORY[0x277D368E8] isEnabled] || (v228[3] & 1) == 0 && ((v232[3] & 1) != 0 || !ICInternalSettingsDefaultToPaperKitAttachments()) || (-[ICNoteEditorBaseViewController note](self, "note"), v198 = objc_claimAutoreleasedReturnValue(), v199 = objc_msgSend(v198, "isUnsupported"), v198, (v199 & 1) != 0))
  {
    v202 = [(ICTK2NoteEditorViewController *)self textView];
    [v202 setStylusDrawingEnabled:1];
LABEL_55:

    goto LABEL_56;
  }

  v200 = [(ICTK2NoteEditorViewController *)self textView];
  [v200 setPaperEnabled:1];

  if (*(v232 + 24) == 1)
  {
    v201 = [(ICNoteEditorBaseViewController *)self note];
    v202 = [v201 managedObjectContext];

    if (v202)
    {
      v203 = [_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc];
      v204 = [(ICNoteEditorBaseViewController *)self note];
      v205 = [(ICTK2NoteEditorViewController *)self textView];
      v206 = [(ICInlineDrawingUpgradeHelper *)v203 initWithNote:v204 managedObjectContext:v202 textView:v205];

      [(ICInlineDrawingUpgradeHelper *)v206 upgradeAllAttachmentsInNote];
    }

    goto LABEL_55;
  }

LABEL_56:
  v207 = [(ICTK2NoteEditorViewController *)self textView];
  [v207 setDrawingDelegate:self];

  [(ICNoteEditorViewController *)self updatePencilKitPaperStyleType];
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v208 = [(ICTK2NoteEditorViewController *)self textView];
    v209 = [v208 ic_pkTiledView];
    [v209 setOverrideUserInterfaceStyle:1];
  }

  v210 = [(ICNoteEditorBaseViewController *)self note];
  v211 = [v210 calculateDocumentController];
  [v211 updateHighlights];

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
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 tk2TextController];

  return v3;
}

- (id)attributionSidebarView
{
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 attributionSidebarView];

  return v3;
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
  v3 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v4 = [v3 textContentStorage];
  v5 = [v4 textStorage];
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
  v3 = [(ICNoteEditorViewController *)self authorHighlightsUpdater];
  if ([v3 hasHighlights])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICNoteEditorBaseViewController *)self note];
    v6 = [v5 calculateDocumentController];
    v4 = [v6 hasExpressions];
  }

  return v4;
}

- (_NSRange)lastSelectedRangeForAccelerator
{
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 selectedRange];
  v5 = v4;

  v6 = v3;
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v7 viewWillDisappear:a3];
  v4 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v5 = [v4 attributionSidebarView];
  [v5 unfocusAttributionDetails];

  v6 = [(ICTK2NoteEditorViewController *)self attributionSidebarController];
  [v6 hideSidebarAnimated:0];
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
  v3 = [(ICTK2NoteEditorViewController *)self textView];
  v4 = [v3 undoManager];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277CCA7F8] object:v4];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277CCA810] object:v4];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277CCA808] object:v4];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:@"ICNoteEditorTitleEditingViewDidShowNotification" object:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(ICNoteEditorViewController *)self previousNote];
  v10 = [v9 allDocumentMergeControllers];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [(ICTK2NoteEditorViewController *)self textView];
        [v15 removeTextView:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [(ICTK2NoteEditorViewController *)self textView];
  [v17 setDelegate:0];

  v18 = [(ICTK2NoteEditorViewController *)self textView];
  [v18 removeFromSuperview];
}

- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4
{
  v5 = a4;
  v6 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v7 = [v6 icTextLayoutManager];
  v8 = [v5 identifier];

  v9 = [v7 existingAttachmentViewForIdentifier:v8];

  v10 = [v9 superview];
  if (v10)
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

- (BOOL)textView:(id)a3 isEndOfDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 beginningOfDocument];
  v9 = [v6 offsetFromPosition:v8 toPosition:v7];

  v10 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v11 = [v10 textContentStorage];
  v12 = [v11 outlineController];
  v13 = [v12 visibleRange];
  v15 = v14;

  if (v9 >= v15 + v13 - 1)
  {
    v17 = 1;
  }

  else
  {
    v16 = [v6 endOfDocument];
    v17 = [v7 isEqual:v16];
  }

  return v17;
}

- (void)acceleratorOriginNeedsUpdate
{
  v3 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v26 = [v3 selectedTextRange];

  v4 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v5 = [v26 end];
  [v4 caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v15 = [(ICTK2NoteEditorViewController *)self view];
  v16 = [v15 window];
  [v14 convertRect:v16 toView:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(ICNoteEditorViewController *)self linkAcceleratorController];
  [v25 updateAcceleratorOriginWith:{v18, v20, v22, v24}];
}

- (BOOL)languageHasSpaces
{
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 languageHasSpaces];

  return v3;
}

- (int64_t)writingDirection
{
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 ic_currentWritingDirection];

  return v3;
}

- (void)setAuthorHighlightsController:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self authorHighlightsController];

  v6 = MEMORY[0x277D364A8];
  if (v5)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *v6;
    v9 = [(ICNoteEditorViewController *)self authorHighlightsController];
    [v7 removeObserver:self name:v8 object:v9];
  }

  v14.receiver = self;
  v14.super_class = ICTK2NoteEditorViewController;
  [(ICNoteEditorViewController *)&v14 setAuthorHighlightsController:v4];
  v10 = [(ICNoteEditorViewController *)self authorHighlightsController];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *v6;
    v13 = [(ICNoteEditorViewController *)self authorHighlightsController];
    [v11 addObserver:self selector:sel_authorHighlightsControllerDidPerformHighlightUpdates_ name:v12 object:v13];
  }
}

- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v11 = ICCheckedDynamicCast();

  v7 = [v11 document];
  v8 = [(ICNoteEditorBaseViewController *)self note];
  v9 = [v8 textStorage];
  v10 = [v9 document];

  if (v7 == v10)
  {
    [(ICTK2NoteEditorViewController *)self renderAuthorHighlights];
  }
}

- (void)renderAuthorHighlights
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = NSClassFromString(&cfstr_Uitextcontaine.isa);
  v4 = NSClassFromString(&cfstr_Uitextlayoutca.isa);
  v5 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v6 = [v5 subviews];
  v7 = [v6 ic_firstObjectOfClass:v3];

  v8 = [v7 subviews];
  v9 = [v8 ic_firstObjectOfClass:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [v9 subviews];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setNeedsDisplay];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)textStorageDidUpdateDataDetectionResults:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICTK2NoteEditorViewController *)self textStorage];

  if (v4 == v5)
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
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 outlineRenderer];
  v4 = [v3 collapsibleSectionAffordanceExposures];

  return v4;
}

- (int64_t)uniqueCollapsibleSectionAffordanceUsages
{
  v2 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v3 = [v2 outlineRenderer];
  v4 = [v3 collapsibleSectionAffordanceUsages];

  return v4;
}

- (void)resetCollapsibleSectionAffordanceUsageData
{
  v3 = [(ICTK2NoteEditorViewController *)self tk2TextView];
  v2 = [v3 outlineRenderer];
  [v2 resetCollapsibleSectionsAffordanceUsageData];
}

@end