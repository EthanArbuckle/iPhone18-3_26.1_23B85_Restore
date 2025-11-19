@interface ICLayoutManager
- (BOOL)selectedRangesIntersectWithRange:(_NSRange)a3;
- (BOOL)unhideSupplementalView:(id)a3 forIdentifier:(id)a4;
- (CGPoint)cachedOrigin;
- (CGRect)boundingRectForGlyphRange:(_NSRange)a3 inTextContainer:(id)a4;
- (CGRect)layoutEnsuredBounds;
- (CGRect)lineFragmentRectForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (CGRect)lineRectForRange:(_NSRange)a3;
- (CGRect)usedLineRectForRange:(_NSRange)a3;
- (CGSize)cachedTextContainerSize;
- (ICAttachmentViewDelegate)attachmentViewDelegate;
- (ICNAEventReporter)eventReporter;
- (NSDictionary)trackedToDoParagraphs;
- (_NSRange)rangeForAttachment:(id)a3 withTextAttachment:(id *)a4;
- (_NSRange)rangeForBaseAttachment:(id)a3 withTextAttachment:(id *)a4;
- (id)drawTodoViewForListRange:(_NSRange)a3 paragraphStyle:(id)a4 checkmarkHighlightValue:(id)a5 atPoint:(CGPoint)a6;
- (id)editingTextView;
- (id)glyphIndexesForMatchesInTextStorage:(id)a3 regexFinder:(id)a4 glyphRange:(_NSRange)a5;
- (id)icaxTodoButtonForParagraphStyle:(id)a3;
- (id)initForTemporaryProcessing:(BOOL)a3;
- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4;
- (id)paragraphStyleForCharacterIndex:(unint64_t)a3;
- (id)supplementalViewForIdentifier:(id)a3 allowHiddenViews:(BOOL)a4;
- (id)textContainerForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)todoButtonForTrackedParagraphIfExists:(id)a3;
- (id)todoButtonsForCharacterRange:(_NSRange)a3;
- (id)trackedTodoParagraphAtIndexIfExists:(unint64_t)a3;
- (id)viewControllerForTextAttachment:(id)a3 createIfNeeded:(BOOL)a4;
- (id)viewForBaseTextAttachmentNoCreate:(id)a3;
- (id)viewForTextAttachment:(id)a3 initialCharacterIndex:(unint64_t)a4;
- (id)viewForTextAttachmentNoCreate:(id)a3;
- (id)viewProviderForTextAttachment:(id)a3 parentView:(id)a4 characterIndex:(unint64_t)a5;
- (unint64_t)lineCountForCharacterRange:(_NSRange)a3;
- (void)_clearRemovedAttachments;
- (void)attachmentDidLoad:(id)a3;
- (void)attachmentInlineDrawingMergeableDataDidChange:(id)a3;
- (void)cleanUpAfterScreenshot;
- (void)cleanupStaleTodoButtons;
- (void)cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:(id)a3;
- (void)clearAllSupplementalViews;
- (void)clearAllTodoSupplementalViews;
- (void)clearAllTodos;
- (void)clearRemovedAttachmentsIfNeeded;
- (void)clearSupplementalViewForIdentifier:(id)a3;
- (void)clearViewForTextAttachment:(id)a3;
- (void)clearViewsForAllTextAttachmentsThatSupportThumbnailMode;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)didAddViewForTextAttachment:(id)a3;
- (void)didPressTodoButton:(id)a3;
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4 updateAttachments:(BOOL)a5;
- (void)ensureLayoutForSurroundingPages;
- (void)ensureLayoutForTextContainer:(id)a3;
- (void)ensureViewIsAddedForAttachment:(id)a3 inCharacterRange:(_NSRange)a4;
- (void)enumerateAttachmentViewsInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)eventReporterLostSession:(id)a3;
- (void)fillBackgroundRectArray:(const CGRect *)a3 count:(unint64_t)a4 forCharacterRange:(_NSRange)a5 color:(id)a6;
- (void)filterAttachmentsInTextStorage:(id)a3 range:(_NSRange)a4 targetAttachment:(id)a5;
- (void)handleTodoButtonPress:(id)a3;
- (void)hideSupplementalView:(id)a3 forIdentifier:(id)a4;
- (void)hideVisibleTodoButtons;
- (void)icReplaceTextStorage:(id)a3;
- (void)invalidateLayoutAfterAttachmentViewTypeChange;
- (void)invalidateLayoutAfterAttachmentViewTypeChangeIfNecessary;
- (void)invalidateLayoutForAttachment:(id)a3;
- (void)invalidateLayoutForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4;
- (void)layoutViewForInlineTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4;
- (void)manuallyRenderSubviewsForCharacterRange:(_NSRange)a3;
- (void)mediaDidLoad:(id)a3;
- (void)prepareForScreenshotWithVisibleRange:(_NSRange)a3;
- (void)processEditingForTextStorage:(id)a3 edited:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 invalidatedRange:(_NSRange)a7;
- (void)receivedMemoryWarning:(id)a3;
- (void)removeClearingControllerForView:(id)a3;
- (void)removeClearingControllerForView:(id)a3 viewIdentifier:(id)a4;
- (void)setCachedOrigin:(CGPoint)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setNeedsClearRemovedAttachments:(BOOL)a3;
- (void)textContainerChangedGeometry:(id)a3;
- (void)textController:(id)a3 removedTrackedAttribute:(id)a4;
- (void)textStorageDidEndEditingNotification:(id)a3;
- (void)unHideVisibleTodoButtons;
- (void)updateHiddenSupplementalViews;
- (void)updateInlineDrawingViews;
- (void)updateSubviewsForCharacterRange:(_NSRange)a3;
- (void)updateSubviewsForCharacterRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)updateVisibleSupplementalViews;
- (void)willPlaceView:(id)a3 forTextAttachment:(id)a4;
- (void)zoomFactorOrInsetsDidChange;
@end

@implementation ICLayoutManager

- (id)initForTemporaryProcessing:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = ICLayoutManager;
  v4 = [(ICLayoutManager *)&v21 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ICLayoutManager *)v4 setTodoButtonsByTrackingUUID:v5];

    if (!a3)
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      [v6 addObserver:v4 selector:sel_attachmentDidLoad_ name:*MEMORY[0x277D35B88] object:0];

      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 addObserver:v4 selector:sel_mediaDidLoad_ name:*MEMORY[0x277D35C70] object:0];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = *MEMORY[0x277D36650];
      v10 = [(ICLayoutManager *)v4 textStorage];
      [v8 addObserver:v4 selector:sel_textStorageDidEndEditingNotification_ name:v9 object:v10];

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 addObserver:v4 selector:sel_attachmentInlineDrawingMergeableDataDidChange_ name:*MEMORY[0x277D36450] object:0];

      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 addObserver:v4 selector:sel_receivedMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
    }

    v13 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setActiveSupplementalViews:v13];

    v14 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setHiddenSupplementalViews:v14];

    v15 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setSupplementalViewControllers:v15];

    v16 = [[ICTextAttachmentLocationCache alloc] initWithLayoutManager:v4 cachedTextAttachmentType:objc_opt_class()];
    [(ICLayoutManager *)v4 setInlineAttachmentLocationCache:v16];

    v17 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setSupplementalViewProviders:v17];

    v18 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setDelayedScrollOutViewDictionary:v18];

    v19 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:v4 selector:sel_updateHiddenSupplementalViews delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
    [(ICLayoutManager *)v4 setUpdateHiddenViewsSelectorDelayer:v19];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(ICLayoutManager *)self clearAllSupplementalViews];
  v5.receiver = self;
  v5.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v5 dealloc];
}

- (NSDictionary)trackedToDoParagraphs
{
  v3 = [(ICBaseLayoutManager *)self textController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 trackedToDoParagraphs];
  }

  else
  {
    v5 = self->_trackedToDoParagraphs;
  }

  v6 = v5;

  return v6;
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  [(ICLayoutManager *)self setLineHeightIncludeParagraphSpacing:1];
  [(ICLayoutManager *)self drawGlyphsForGlyphRange:location atPoint:length updateAttachments:1, x, y];

  [(ICLayoutManager *)self setLineHeightIncludeParagraphSpacing:0];
}

- (id)textContainerForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = [(ICLayoutManager *)self characterIndexForGlyphAtIndex:?];
  v8 = [(ICLayoutManager *)self textStorage];
  v9 = [v8 length];

  if (v7 <= v9)
  {
    v13.receiver = self;
    v13.super_class = ICLayoutManager;
    v11 = [(ICLayoutManager *)&v13 textContainerForGlyphAtIndex:a3 effectiveRange:a4];
  }

  else
  {
    if (a4)
    {
      a4->location = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICLayoutManager textContainerForGlyphAtIndex:v10 effectiveRange:?];
    }

    v11 = 0;
  }

  return v11;
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v5 = a3;
  v6 = [(ICSearchResultRegexMatchFinder *)self->_highlightPatternRegexFinder isEqual:v5];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_highlightPatternRegexFinder, a3);
  }

  v7 = [(ICLayoutManager *)self supplementalViewControllers];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke;
  v22 = &unk_2781ACB48;
  v8 = v5;
  v23 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:&v19];

  v9 = [(ICLayoutManager *)self activeSupplementalViews];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke_2;
  v17 = &unk_2781ACB70;
  v18 = v8;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:&v14];

  if ((v6 & 1) == 0)
  {
    v11 = [(ICLayoutManager *)self textStorage:v14];
    v12 = [v11 ic_range];
    [(ICLayoutManager *)self invalidateDisplayForCharacterRange:v12, v13];
  }
}

void __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  [v5 setHighlightPatternRegexFinder:v3];
}

void __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  [v5 setHighlightPatternRegexFinder:*(a1 + 32)];
}

- (void)setCachedOrigin:(CGPoint)a3
{
  if (!self->_shouldIgnoreCachedOriginUpdates)
  {
    self->_cachedOrigin = a3;
  }
}

- (id)glyphIndexesForMatchesInTextStorage:(id)a3 regexFinder:(id)a4 glyphRange:(_NSRange)a5
{
  v7 = a3;
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = [v7 string];
  v10 = [v8 matchesInDocumentWithPerTokenFallback:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ICLayoutManager_glyphIndexesForMatchesInTextStorage_regexFinder_glyphRange___block_invoke;
  v13[3] = &unk_2781ACB98;
  v13[4] = self;
  v13[5] = &v14;
  [v10 enumerateObjectsUsingBlock:v13];
  v11 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v11;
}

void __78__ICLayoutManager_glyphIndexesForMatchesInTextStorage_regexFinder_glyphRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v11;
  }

  v7 = [v3 range];
  v9 = [*(a1 + 32) glyphRangeForCharacterRange:v7 actualCharacterRange:{v8, 0}];
  [*(*(*(a1 + 40) + 8) + 40) addIndexesInRange:{v9, v10}];
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4 updateAttachments:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
  v11 = [(ICLayoutManager *)self characterRangeForGlyphRange:a3.location actualGlyphRange:a3.length, 0];
  v13 = v12;
  [(ICLayoutManager *)self cachedOrigin];
  v15 = v14;
  v17 = v16;
  if (v5)
  {
    [(ICLayoutManager *)self updateSubviewsForCharacterRange:v11 atPoint:v13, x, y];
  }

  [(ICBaseLayoutManager *)self drawListStylesForCharacterRange:v11 atPoint:v13, x, y];
  v18.receiver = self;
  v18.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v18 drawGlyphsForGlyphRange:location atPoint:length, x, y];
  if ([(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews])
  {
    [(ICLayoutManager *)self manuallyRenderSubviewsForCharacterRange:v11, v13];
    [(ICLayoutManager *)self updateSubviewsForCharacterRange:v11 atPoint:v13, v15, v17];
  }
}

- (void)icReplaceTextStorage:(id)a3
{
  v5 = a3;
  v4 = [(ICLayoutManager *)self textStorage];
  [v4 removeLayoutManager:self];

  [v5 addLayoutManager:self];
}

- (void)processEditingForTextStorage:(id)a3 edited:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 invalidatedRange:(_NSRange)a7
{
  length = a5.length;
  location = a5.location;
  v12 = a3;
  [(ICLayoutManager *)self setNeedsClearRemovedAttachments:1];
  v13 = [(ICLayoutManager *)self textStorage];
  v14 = *MEMORY[0x277D74060];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__ICLayoutManager_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke;
  v20[3] = &unk_2781ACBC0;
  v20[4] = self;
  [v13 enumerateAttribute:v14 inRange:location options:length usingBlock:{0, v20}];

  v15 = [(ICLayoutManager *)self icTextView];
  v16 = [v15 isInProcessEditingForTextStorage];

  v17 = [(ICLayoutManager *)self icTextView];
  [v17 setIsInProcessEditingForTextStorage:1];

  v19.receiver = self;
  v19.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v19 processEditingForTextStorage:v12 edited:a4 range:location changeInLength:length invalidatedRange:a6, a7.location, a7.length];

  v18 = [(ICLayoutManager *)self icTextView];
  [v18 setIsInProcessEditingForTextStorage:v16];
}

void __93__ICLayoutManager_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) layoutViewForInlineTextAttachment:v5 atCharacterIndex:a3];
  }
}

- (void)textContainerChangedGeometry:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [(ICLayoutManager *)self cachedTextContainerSize];
  if (v6 != v10 || v8 != v9)
  {
    [v4 size];
    [(ICLayoutManager *)self setCachedTextContainerSize:?];
    v12.receiver = self;
    v12.super_class = ICLayoutManager;
    [(ICLayoutManager *)&v12 textContainerChangedGeometry:v4];
  }
}

- (CGRect)lineFragmentRectForGlyphAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v104.receiver = self;
  v104.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v104 lineFragmentRectForGlyphAtIndex:a3 effectiveRange:a4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (![(ICLayoutManager *)self lineHeightIncludeParagraphSpacing])
  {
    v14 = [(ICLayoutManager *)self characterIndexForGlyphAtIndex:a3];
    v15 = [(ICLayoutManager *)self textStorage];
    v16 = [v15 length];

    if (v14 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v18 = [(ICLayoutManager *)self textStorage];
    v19 = [v18 length] - 1;

    if (v17 >= v19)
    {
      v20 = [(ICBaseLayoutManager *)self textView];
      v22 = [v20 typingAttributes];
      v21 = [v22 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    }

    else
    {
      v20 = [(ICLayoutManager *)self textStorage];
      v21 = [v20 attribute:*MEMORY[0x277D74118] atIndex:v17 effectiveRange:0];
    }

    if (v21)
    {
      v97 = v9;
      v98 = v11;
      v99 = v7;
      v23 = [(ICBaseLayoutManager *)self textView];
      v24 = [v23 selectedRange];
      v26 = v25;

      v27 = [(ICLayoutManager *)self glyphRangeForCharacterRange:v24 actualCharacterRange:v26, 0];
      if (v26)
      {
        v29 = v27;
        v30 = v28;
        v103.receiver = self;
        v103.super_class = ICLayoutManager;
        [(ICLayoutManager *)&v103 lineFragmentRectForGlyphAtIndex:v27 effectiveRange:0];
        rect_24a = v32;
        v95 = v31;
        rect_8 = v34;
        rect_16 = v33;
        v102.receiver = self;
        v102.super_class = ICLayoutManager;
        [(ICLayoutManager *)&v102 lineFragmentRectForGlyphAtIndex:v30 + v29 - 1 effectiveRange:0];
        rect = v35;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v105.origin.x = v7;
        v105.origin.y = v97;
        v105.size.width = v11;
        v105.size.height = v13;
        MinY = CGRectGetMinY(v105);
        v106.origin.y = rect_24a;
        v106.origin.x = v95;
        v106.size.height = rect_8;
        v106.size.width = rect_16;
        v43 = MinY != CGRectGetMinY(v106);
        v107.origin.x = v7;
        v107.origin.y = v97;
        v107.size.width = v11;
        v107.size.height = v13;
        v44 = CGRectGetMinY(v107);
        v108.origin.x = rect;
        v108.origin.y = v37;
        v108.size.width = v39;
        v108.size.height = v41;
        v45 = v44 != CGRectGetMinY(v108);
      }

      else
      {
        v45 = 0;
        v43 = 0;
      }

      v46 = [(ICLayoutManager *)self textStorage];
      v47 = [v46 string];
      v48 = [v47 paragraphRangeForRange:{v17, 0}];
      v50 = v49;

      v51 = [(ICLayoutManager *)self glyphRangeForCharacterRange:v48 actualCharacterRange:v50, 0];
      v53 = v52;
      v101.receiver = self;
      v101.super_class = ICLayoutManager;
      [(ICLayoutManager *)&v101 lineFragmentRectForGlyphAtIndex:v51 effectiveRange:0];
      rect_24 = v54;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v100.receiver = self;
      v100.super_class = ICLayoutManager;
      [(ICLayoutManager *)&v100 lineFragmentRectForGlyphAtIndex:v53 + v51 - 1 effectiveRange:0];
      v64 = v61;
      v96 = v65;
      v66 = v62;
      v67 = v63;
      if (v48)
      {
        rect_8a = v60;
        rect_16a = v63;
        v68 = v62;
        v69 = v61;
        v70 = v56;
        v7 = v99;
        v109.origin.x = v99;
        v9 = v97;
        v109.origin.y = v97;
        v71 = v58;
        v11 = v98;
        v109.size.width = v98;
        v109.size.height = v13;
        recta = CGRectGetMinY(v109);
        v110.origin.y = v70;
        v64 = v69;
        v66 = v68;
        v67 = rect_16a;
        v110.origin.x = rect_24;
        v110.size.width = v71;
        v110.size.height = rect_8a;
        v72 = recta != CGRectGetMinY(v110) || v43;
      }

      else
      {
        v72 = 1;
        v11 = v98;
        v7 = v99;
        v9 = v97;
      }

      v111.origin.x = v7;
      v111.origin.y = v9;
      v111.size.width = v11;
      v111.size.height = v13;
      v73 = CGRectGetMinY(v111);
      v112.origin.x = v64;
      v112.origin.y = v96;
      v112.size.width = v66;
      v112.size.height = v67;
      v74 = CGRectGetMinY(v112);
      if ((v72 & 1) == 0)
      {
        [v21 paragraphSpacingBefore];
        v9 = v9 + v75;
        [v21 paragraphSpacingBefore];
        v13 = v13 - v76;
      }

      if (v73 == v74 && !v45)
      {
        v77 = [(ICLayoutManager *)self textStorage];
        v78 = [v77 string];
        v79 = [v78 paragraphRangeForRange:{v48 + v50, 0}];
        v81 = v80;

        if (v48 != v79 || v50 != v81)
        {
          [v21 paragraphSpacing];
          v13 = v13 - v82;
        }
      }
    }
  }

  v83 = v7;
  v84 = v9;
  v85 = v11;
  v86 = v13;
  result.size.height = v86;
  result.size.width = v85;
  result.origin.y = v84;
  result.origin.x = v83;
  return result;
}

- (CGRect)lineRectForRange:(_NSRange)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_21552D17E;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v20 = *MEMORY[0x277CBF398];
  v21 = v4;
  v5 = [(ICLayoutManager *)self glyphRangeForCharacterRange:a3.location actualCharacterRange:a3.length, 0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__ICLayoutManager_lineRectForRange___block_invoke;
  v15[3] = &unk_2781ACBE8;
  v15[4] = &v16;
  [(ICLayoutManager *)self enumerateLineFragmentsForGlyphRange:v5 usingBlock:v6, v15];
  v7 = v17[4];
  v8 = v17[5];
  v9 = v17[6];
  v10 = v17[7];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void __36__ICLayoutManager_lineRectForRange___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5.size.height = a5;
  v5.size.width = a4;
  v5.origin.y = a3;
  v5.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v5);
}

- (CGRect)usedLineRectForRange:(_NSRange)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_21552D17E;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v20 = *MEMORY[0x277CBF398];
  v21 = v4;
  v5 = [(ICLayoutManager *)self glyphRangeForCharacterRange:a3.location actualCharacterRange:a3.length, 0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__ICLayoutManager_usedLineRectForRange___block_invoke;
  v15[3] = &unk_2781ACBE8;
  v15[4] = &v16;
  [(ICLayoutManager *)self enumerateLineFragmentsForGlyphRange:v5 usingBlock:v6, v15];
  v7 = v17[4];
  v8 = v17[5];
  v9 = v17[6];
  v10 = v17[7];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)textController:(id)a3 removedTrackedAttribute:(id)a4
{
  v5 = [a4 paragraph];
  v10 = [v5 todoTrackingUUID];

  v6 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v7 = [v6 objectForKeyedSubscript:v10];

  [v7 removeFromSuperview];
  v8 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [v8 removeObjectForKey:v10];

  v9 = [v10 UUIDString];
  [(ICLayoutManager *)self clearSupplementalViewForIdentifier:v9];
}

- (void)contentSizeCategoryDidChange
{
  v3 = [(ICLayoutManager *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  v5 = [(ICLayoutManager *)self textStorage];
  v6 = [v5 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ICLayoutManager_contentSizeCategoryDidChange__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [v3 enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
}

void __47__ICLayoutManager_contentSizeCategoryDidChange__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v8;
  if (isKindOfClass)
  {
    v5 = v8;
    v6 = [*(a1 + 32) viewForTextAttachment:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 contentSizeCategoryDidChange];
    }

    v7 = [*(a1 + 32) viewControllerForTextAttachmentNoCreate:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 contentSizeCategoryDidChange];
    }

    v4 = v8;
  }
}

- (void)zoomFactorOrInsetsDidChange
{
  v3 = [(ICLayoutManager *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  v5 = [(ICLayoutManager *)self textStorage];
  v6 = [v5 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ICLayoutManager_zoomFactorOrInsetsDidChange__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [v3 enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
}

uint64_t __46__ICLayoutManager_zoomFactorOrInsetsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) viewControllerForTextAttachmentNoCreate:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 zoomFactorOrInsetsDidChange];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)drawTodoViewForListRange:(_NSRange)a3 paragraphStyle:(id)a4 checkmarkHighlightValue:(id)a5 atPoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  length = a3.length;
  location = a3.location;
  v12 = a4;
  v13 = a5;
  v14 = [(ICLayoutManager *)self trackedToDoParagraphs];
  v15 = [v12 todoTrackingUUID];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    if (![(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews])
    {
      v20 = 0;
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  v17 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v18 = [v16 paragraph];
  v19 = [v18 todoTrackingUUID];
  v20 = [v17 objectForKeyedSubscript:v19];

  if (!v20)
  {
LABEL_5:
    v21 = objc_alloc(MEMORY[0x277D36990]);
    v22 = [(ICLayoutManager *)self icTextView];
    v23 = [v22 textDragInteraction];
    v24 = [v23 delegate];
    v20 = [v21 initWithDragDelegate:v24];

    v25 = [(ICLayoutManager *)self overrideTraitCollection];

    if (v25)
    {
      v26 = MEMORY[0x277D75348];
      v27 = [(ICLayoutManager *)self overrideTraitCollection];
      v28 = [v26 ic_tintColorWithTraitCollection:v27];
      [v20 setOverrideTintColor:v28];
    }

    [v20 setTrackedParagraph:v16];
    v29 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
    v30 = [v12 todoTrackingUUID];
    [v29 setObject:v20 forKeyedSubscript:v30];

    v31 = [(ICLayoutManager *)self activeSupplementalViews];
    v32 = [v12 todoTrackingUUID];
    v33 = [v32 UUIDString];
    [v31 setObject:v20 forKeyedSubscript:v33];

    [v20 addTarget:self action:sel_didPressTodoButton_ forControlEvents:64];
  }

  v34 = [v20 superview];

  if (!v34)
  {
    v35 = [(ICLayoutManager *)self icTextView];
    v36 = [v35 containerViewForAttachments];
    [v36 addSubview:v20];
  }

  v37 = [v12 todo];
  [v20 setDone:objc_msgSend(v37 animated:{"done"), 0}];

  [v13 foregroundAlpha];
  if (v38 == 0.0)
  {
    v38 = 1.0;
  }

  [v20 ic_setAlpha:v38];
  v39 = [v13 highlightColor];
  [v20 setHighlightColor:v39];

  [(ICLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:[(ICLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:length effectiveRange:0], 0];
  v41 = v40;
  v43 = v42;
  v45 = x + v44;
  v47 = y + v46;
  v48 = [(ICBaseLayoutManager *)self textContainer];
  [v48 lineFragmentPadding];
  v50 = v49;
  v79.origin.x = v45;
  v79.origin.y = v47;
  v79.size.width = v41;
  v79.size.height = v43;
  v80 = CGRectInset(v79, v50, 0.0);
  v51 = v80.origin.x;
  v52 = v80.origin.y;
  width = v80.size.width;
  height = v80.size.height;

  v81.origin.x = v51;
  v81.origin.y = v52;
  v81.size.width = width;
  v81.size.height = height;
  if (!CGRectIsNull(v81))
  {
    [v20 frame];
    v56 = v55;
    v58 = v57;
    v59 = [v12 layoutWritingDirection];
    v60 = v51;
    v61 = v52;
    v62 = width;
    v63 = height;
    if (v59)
    {
      MaxX = CGRectGetMaxX(*&v60);
      v65 = 4.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v60) - v56;
      v65 = -4.0;
    }

    v66 = MaxX + v65;
    v82.origin.x = v51;
    v82.origin.y = v52;
    v82.size.width = width;
    v82.size.height = height;
    MidY = CGRectGetMidY(v82);
    [v20 frame];
    v68 = round(MidY + CGRectGetHeight(v83) * -0.5);
    v69 = MEMORY[0x277D75D18];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __91__ICLayoutManager_drawTodoViewForListRange_paragraphStyle_checkmarkHighlightValue_atPoint___block_invoke;
    v71[3] = &unk_2781AC7B0;
    v20 = v20;
    v72 = v20;
    v74 = v66;
    v75 = v68;
    v76 = v56;
    v77 = v58;
    v73 = v12;
    [v69 ic_performWithoutAnimation:v71];
  }

LABEL_18:

  return v20;
}

uint64_t __91__ICLayoutManager_drawTodoViewForListRange_paragraphStyle_checkmarkHighlightValue_atPoint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) layoutWritingDirection] == 0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v2 setFrame:v3 leftToRight:{v4, v5, v6, v7}];
}

- (void)didPressTodoButton:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v4 = [(ICLayoutManager *)self icTextView];
  v5 = ICDynamicCast();

  if (([v5 isDraggingChecklistItem] & 1) == 0)
  {
    [(ICLayoutManager *)self handleTodoButtonPress:v6];
  }
}

- (void)handleTodoButtonPress:(id)a3
{
  v4 = a3;
  v5 = [(ICLayoutManager *)self icTextView];
  v6 = [v5 delegate];
  v7 = [(ICBaseLayoutManager *)self textView];
  v8 = [v6 textViewShouldBeginEditing:v7];

  v9 = [v4 trackedParagraph];
  v10 = [v9 characterRange];
  if (!v8)
  {
    goto LABEL_19;
  }

  v12 = v10;
  v13 = v11;
  v14 = [v4 isDone];
  v15 = [(ICBaseLayoutManager *)self textController];
  v16 = [(ICLayoutManager *)self textStorage];
  v17 = [v15 setDone:v14 ^ 1u range:v12 inTextStorage:{v13, v16}];

  if (v17)
  {
    [v4 setDone:v14 ^ 1u];
    [v4 wasPressed];
    v18 = [(ICLayoutManager *)self icTextView];
    v19 = [v18 icDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(ICLayoutManager *)self icTextView];
      v22 = [v21 icDelegate];
      [v22 didInvokeAnalyticsChecklistActionChecked:v14 ^ 1u];
    }
  }

  v23 = [MEMORY[0x277D75718] sharedMenuController];
  v24 = [v23 isMenuVisible];

  if (v24)
  {
    v25 = [MEMORY[0x277D75718] sharedMenuController];
    [v25 setMenuVisible:0 animated:1];
  }

  v26 = [(ICBaseLayoutManager *)self textView];
  if ([v26 isFirstResponder])
  {
    v27 = [(ICLayoutManager *)self selectedRangesIntersectWithRange:v12, v13];

    if (v27)
    {
      goto LABEL_13;
    }

    if (v12 <= v13 + v12 - 1)
    {
      v12 = v13 + v12 - 1;
    }

    v26 = [(ICBaseLayoutManager *)self textView];
    [v26 setSelectedRange:{v12, 0}];
  }

LABEL_13:
  if (v17)
  {
    v28 = [(ICBaseLayoutManager *)self textView];
    v29 = [v28 delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = [(ICBaseLayoutManager *)self textView];
      v32 = [v31 delegate];
      v33 = [(ICBaseLayoutManager *)self textView];
      [v32 textViewDidChange:v33];
    }

    objc_opt_class();
    v34 = [(ICLayoutManager *)self icTextView];
    v35 = ICDynamicCast();

    if (v35)
    {
      objc_initWeak(&location, self);
      v36 = [(ICBaseLayoutManager *)self textController];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __41__ICLayoutManager_handleTodoButtonPress___block_invoke;
      v37[3] = &unk_2781ACC10;
      objc_copyWeak(&v38, &location);
      [v36 autoSortChecklistIfNecessaryForTrackedParagraph:v9 textView:v35 analyticsHandler:v37];

      dispatchMainAfterDelay();
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }
  }

LABEL_19:
}

void __41__ICLayoutManager_handleTodoButtonPress___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventReporter];
  [v3 submitMoveCheckedItemsToBottomSwitchEventWithNewState:a2 isInApp:1];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICBaseLayoutManager *)self textView];
    v7 = [v3 initWithSubTrackerName:v5 view:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
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

- (BOOL)selectedRangesIntersectWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ICBaseLayoutManager *)self textView];
  v6 = [v5 ic_selectedRanges];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v13.location = v11;
        v13.length = v12;
        if (v12 || (v11 >= location ? (v14 = v11 - location >= length) : (v14 = 1), v14))
        {
          v23.location = location;
          v23.length = length;
          if (!NSIntersectionRange(v23, v13).length)
          {
            continue;
          }
        }

        v15 = 1;
        goto LABEL_17;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)clearAllTodos
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
        v10 = [v9 objectForKeyedSubscript:v8];

        [v10 removeFromSuperview];
        v11 = [v8 UUIDString];
        [(ICLayoutManager *)self clearSupplementalViewForIdentifier:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [v12 removeAllObjects];
}

- (void)prepareForScreenshotWithVisibleRange:(_NSRange)a3
{
  [(ICLayoutManager *)self setShouldManuallyRenderSeparateSubviews:1, a3.length];

  [(ICLayoutManager *)self hideVisibleTodoButtons];
}

- (void)cleanUpAfterScreenshot
{
  [(ICLayoutManager *)self setShouldManuallyRenderSeparateSubviews:0];
  [(ICLayoutManager *)self cleanupStaleTodoButtons];
  [(ICLayoutManager *)self clearAllSupplementalViews];

  [(ICLayoutManager *)self updateVisibleSupplementalViews];
}

- (void)hideVisibleTodoButtons
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (([v11 isHidden] & 1) == 0)
        {
          [v11 setHidden:1];
          [v3 ic_addNonNilObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(ICLayoutManager *)self setHiddenTodosForManualLayout:v3];
}

- (void)unHideVisibleTodoButtons
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ICLayoutManager *)self hiddenTodosForManualLayout];
  v4 = [v3 copy];

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

        [*(*(&v9 + 1) + 8 * v8++) setHidden:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(ICLayoutManager *)self setHiddenTodosForManualLayout:0];
}

- (void)layoutViewForInlineTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICLayoutManager *)self inlineAttachmentLocationCache];
  v8 = [v6 viewIdentifier];
  [v7 setLocation:a4 forTextAttachmentOfViewIdentifier:v8];

  objc_opt_class();
  v9 = [(ICLayoutManager *)self supplementalViewControllers];
  v10 = [v6 viewIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v13 = ICDynamicCast();

  v12 = v13;
  if (v13)
  {
    [v13 layoutWithStyleAttributesOfCharacterIndex:a4];
    v12 = v13;
  }
}

- (void)manuallyRenderSubviewsForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v24 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke;
  aBlock[3] = &__block_descriptor_40_e22_v24__0__UIView_8B16B20l;
  aBlock[4] = CurrentContext;
  v7 = _Block_copy(aBlock);
  v8 = [(ICLayoutManager *)self textStorage];
  v9 = *MEMORY[0x277D74060];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke_2;
  v20[3] = &unk_2781ACC58;
  v20[4] = self;
  v10 = v7;
  v21 = v10;
  [v8 enumerateAttribute:v9 inRange:location options:length usingBlock:{0, v20}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(ICLayoutManager *)self todoButtonsForCharacterRange:location, length, 0];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(v10 + 2))(v10, *(*(&v16 + 1) + 8 * v15++), [(ICLayoutManager *)self shouldAdjustTodoButtonFramesForPrinting], 0);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v13);
  }
}

void __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke(uint64_t a1, void *a2, int a3, int a4)
{
  v13 = a2;
  v7 = [v13 isHidden];
  [v13 setHidden:0];
  [v13 layoutIfNeeded];
  CGContextSaveGState(*(a1 + 32));
  v8 = [v13 layer];
  if (!v8)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"layer" functionName:"-[ICLayoutManager manuallyRenderSubviewsForCharacterRange:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Subview does not have any layer for rendering %@", v13}];
  }

  [v13 frame];
  v10 = v9;
  CGContextTranslateCTM(*(a1 + 32), v11, v12);
  if (a3)
  {
    CGContextScaleCTM(*(a1 + 32), v10 / (v10 + 3.0), v10 / (v10 + 3.0));
    CGContextTranslateCTM(*(a1 + 32), 0.0, 3.0);
  }

  if (a4)
  {
    [v13 bounds];
    [v13 drawViewHierarchyInRect:0 afterScreenUpdates:?];
  }

  else
  {
    [v8 renderInContext:*(a1 + 32)];
  }

  CGContextRestoreGState(*(a1 + 32));
  [v13 setHidden:v7];
}

void __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v21 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) isRenderingPreviewForDragAndDrop];
      v5 = v21;
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v21;
      v8 = [*(a1 + 32) viewForTextAttachment:v7];
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = [v7 viewIdentifier];
        [v9 unhideSupplementalView:v8 forIdentifier:v10];

        objc_opt_class();
        v11 = [*(a1 + 32) viewControllerForTextAttachment:v7];
        v12 = ICDynamicCast();
        [v12 prepareForPrinting];

        objc_opt_class();
        v13 = ICDynamicCast();
        [v13 prepareForPrinting];

        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v21;
      v15 = [*(a1 + 32) textView];
      v8 = [v14 viewProviderForParentView:v15 characterIndex:a3 layoutManager:*(a1 + 32)];

      v16 = [v8 view];
      if (!v16)
      {
LABEL_13:

LABEL_14:
        v5 = v21;
        goto LABEL_15;
      }

      v17 = *(*(a1 + 40) + 16);
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v21;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_15;
      }

      v19 = v21;
      v20 = [*(a1 + 32) textView];
      v8 = [v19 viewProviderForParentView:v20 characterIndex:a3 layoutManager:*(a1 + 32)];

      v16 = [v8 view];
      if (!v16)
      {
        goto LABEL_13;
      }

      v17 = *(*(a1 + 40) + 16);
    }

    v17();
    goto LABEL_13;
  }

LABEL_15:
}

- (id)todoButtonsForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(ICLayoutManager *)self textStorage];
  v8 = *MEMORY[0x277D35DA8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__ICLayoutManager_todoButtonsForCharacterRange___block_invoke;
  v15 = &unk_2781ACAF8;
  v16 = self;
  v17 = v6;
  v9 = v6;
  [v7 ic_enumerateUnclampedAttribute:v8 inRange:location options:length usingBlock:{0, &v12}];

  v10 = [v9 copy];

  return v10;
}

void __48__ICLayoutManager_todoButtonsForCharacterRange___block_invoke(uint64_t a1, void *a2)
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
      v5 = [v10 isList];
      v3 = v10;
      if (v5)
      {
        v6 = [v10 style];
        v3 = v10;
        if (v6 == 103)
        {
          v7 = [*(a1 + 32) todoButtonsByTrackingUUID];
          v8 = [v10 todoTrackingUUID];
          v9 = [v7 objectForKeyedSubscript:v8];

          if (v9)
          {
            [*(a1 + 40) addObject:v9];
          }

          v3 = v10;
        }
      }
    }
  }
}

- (id)trackedTodoParagraphAtIndexIfExists:(unint64_t)a3
{
  v4 = [(ICLayoutManager *)self paragraphStyleForCharacterIndex:a3];
  v5 = [(ICLayoutManager *)self trackedToDoParagraphs];
  v6 = [v4 todoTrackingUUID];
  v7 = [v5 ic_objectForNonNilKey:v6];

  return v7;
}

- (id)todoButtonForTrackedParagraphIfExists:(id)a3
{
  v4 = [a3 paragraph];
  v5 = [v4 todoTrackingUUID];

  v6 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v7 = [v6 ic_objectForNonNilKey:v5];

  return v7;
}

- (unint64_t)lineCountForCharacterRange:(_NSRange)a3
{
  v3 = a3.location + a3.length;
  if (__CFADD__(a3.location, a3.length))
  {
    return 0;
  }

  v5 = 0;
  do
  {
    [(ICLayoutManager *)self lineFragmentRectForGlyphAtIndex:0 effectiveRange:0];
    ++v5;
  }

  while (v8 + v7 <= v3);
  return v5;
}

- (void)cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 viewIdentifier];

          if (!v11)
          {
            [v10 removeFromSuperview];
            [v3 removeObjectForKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)cleanupStaleTodoButtons
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(ICLayoutManager *)self activeSupplementalViews];
  [(ICLayoutManager *)self cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:v3];

  v4 = [(ICLayoutManager *)self hiddenSupplementalViews];
  [(ICLayoutManager *)self cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:v4];

  v5 = [(ICLayoutManager *)self icTextView];
  v6 = [v5 containerViewForAttachments];
  v7 = [v6 subviews];
  v8 = [v7 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        objc_opt_class();
        v15 = ICDynamicCast();
        v16 = [v15 viewIdentifier];
        v17 = v16;
        if (v15)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          [v14 removeFromSuperview];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)updateSubviewsForCharacterRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  length = a3.length;
  location = a3.location;
  [(ICLayoutManager *)self setCachedOrigin:a4.x, a4.y];

  [(ICLayoutManager *)self updateSubviewsForCharacterRange:location, length];
}

- (void)updateSubviewsForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICLayoutManager *)self textStorage];
  v7 = *MEMORY[0x277D35DA8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ICLayoutManager_updateSubviewsForCharacterRange___block_invoke;
  v8[3] = &unk_2781ACC80;
  v8[4] = self;
  [v6 ic_enumerateUnclampedAttribute:v7 inRange:location options:length usingBlock:{0, v8}];
}

void __51__ICLayoutManager_updateSubviewsForCharacterRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isList] && objc_msgSend(v11, "style") == 103)
    {
      v7 = [*(a1 + 32) textStorage];
      v8 = [v7 attribute:*MEMORY[0x277D36000] atIndex:a3 effectiveRange:0];

      v9 = *(a1 + 32);
      [v9 cachedOrigin];
      v10 = [v9 drawTodoViewForListRange:a3 paragraphStyle:a4 checkmarkHighlightValue:v11 atPoint:v8];
    }
  }
}

- (void)clearAllSupplementalViews
{
  v1 = [a1 supplementalViewControllers];
  v2 = [v1 allKeys];
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v3, v4, "Cleaning up remaining view controllers after clearing supplemental views: %@", v5, v6, v7, v8, 2u);
}

- (void)clearAllTodoSupplementalViews
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICLayoutManager *)self activeSupplementalViews];
  v4 = [v3 allValues];
  v5 = [(ICLayoutManager *)self hiddenSupplementalViews];
  v6 = [v5 allValues];
  v7 = [v4 arrayByAddingObjectsFromArray:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v13 = ICDynamicCast();
        if (v13)
        {
          [(ICLayoutManager *)self removeClearingControllerForView:v13, v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [v14 removeAllObjects];
}

- (void)textStorageDidEndEditingNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICLayoutManager *)self textStorage];

  if (v4 == v5)
  {

    [(ICLayoutManager *)self clearRemovedAttachmentsIfNeeded];
  }
}

- (void)removeClearingControllerForView:(id)a3
{
  v4 = a3;
  v5 = [v4 viewIdentifier];
  if (!v5)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICLayoutManager removeClearingControllerForView:v4];
    }
  }

  [(ICLayoutManager *)self removeClearingControllerForView:v4 viewIdentifier:v5];
}

- (void)removeClearingControllerForView:(id)a3 viewIdentifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(ICLayoutManager *)self supplementalViewProviders];
    v8 = [v7 objectForKeyedSubscript:v6];

    objc_opt_class();
    v9 = [(ICLayoutManager *)self supplementalViewControllers];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = ICDynamicCast();
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  [v11 willMoveToParentViewController:0];
  v12 = [v8 textAttachment];

  if (v12)
  {
    v13 = [v8 textAttachment];
    v14 = [v18 superview];
    [v13 detachView:v18 fromParentView:v14];

    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v18 removeFromSuperview];
  if (v11)
  {
LABEL_6:
    v15 = [(ICLayoutManager *)self supplementalViewControllers];
    [v15 removeObjectForKey:v6];
  }

LABEL_7:
  if (v6)
  {
    v16 = [(ICLayoutManager *)self supplementalViewProviders];
    [v16 removeObjectForKey:v6];

    v17 = [(ICLayoutManager *)self inlineAttachmentLocationCache];
    [v17 forgetLocationForViewIdentifier:v6];
  }

  [v11 removeFromParentViewController];
}

- (void)clearRemovedAttachmentsIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if ([(ICLayoutManager *)obj needsClearRemovedAttachments])
  {
    [(ICLayoutManager *)obj _clearRemovedAttachments];
    [(ICLayoutManager *)obj setNeedsClearRemovedAttachments:0];
  }

  objc_sync_exit(obj);
}

- (void)_clearRemovedAttachments
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(ICLayoutManager *)self textStorage];
  v5 = *MEMORY[0x277D74060];
  v6 = [(ICLayoutManager *)self textStorage];
  v7 = [v6 length];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__ICLayoutManager__clearRemovedAttachments__block_invoke;
  v36[3] = &unk_2781AC5D8;
  v8 = v3;
  v37 = v8;
  [v4 enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v36}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [(ICLayoutManager *)self hiddenSupplementalViews];
  v39[0] = v9;
  v10 = [(ICLayoutManager *)self activeSupplementalViews];
  v39[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

  obj = v11;
  v26 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v12;
        v13 = *(*(&v32 + 1) + 8 * v12);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v13 allKeys];
        v15 = [v14 copy];

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v28 + 1) + 8 * i);
              v21 = [v13 objectForKeyedSubscript:v20];
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                if (![v8 containsObject:v20] || (objc_msgSend(v21, "viewIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
                {
                  [(ICLayoutManager *)self removeClearingControllerForView:v21 viewIdentifier:v20];
                  [v13 removeObjectForKey:v20];
                  v23 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
                  [v23 removeObjectForKey:v20];
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
          }

          while (v17);
        }

        v12 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v26);
  }
}

void __43__ICLayoutManager__clearRemovedAttachments__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v4 viewIdentifier];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) ic_addNonNilObject:v3];
}

- (void)setNeedsClearRemovedAttachments:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    objc_opt_class();
    v5 = [(ICLayoutManager *)self textStorage];
    v6 = ICDynamicCast();
    v7 = [v6 isEditing];

    if ((v7 & 1) == 0)
    {
      [(ICLayoutManager *)self _clearRemovedAttachments];
      v3 = 0;
    }
  }

  self->_needsClearRemovedAttachments = v3;
}

- (void)ensureViewIsAddedForAttachment:(id)a3 inCharacterRange:(_NSRange)a4
{
  v12 = a3;
  v5 = [(ICLayoutManager *)self viewForTextAttachment:?];
  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 attachment];
    v9 = [v12 attachment];

    if (v8 != v9)
    {
      [(ICLayoutManager *)self clearViewForTextAttachment:v12];
      v10 = [(ICLayoutManager *)self viewForTextAttachment:v12];

      v5 = v10;
    }
  }

  v11 = [v12 viewIdentifier];
  [(ICLayoutManager *)self unhideSupplementalView:v5 forIdentifier:v11];
}

- (_NSRange)rangeForAttachment:(id)a3 withTextAttachment:(id *)a4
{
  v6 = a3;
  v7 = [(ICLayoutManager *)self textStorage];
  v8 = [v7 ic_rangeForAttachment:v6 withTextAttachment:a4];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)rangeForBaseAttachment:(id)a3 withTextAttachment:(id *)a4
{
  v6 = a3;
  v7 = [(ICLayoutManager *)self textStorage];
  v8 = [v7 ic_rangeForBaseAttachment:v6 withTextAttachment:a4];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)enumerateAttachmentViewsInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICLayoutManager *)self textStorage];
  v9 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ICLayoutManager_enumerateAttachmentViewsInRange_usingBlock___block_invoke;
  v11[3] = &unk_2781ACCA8;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 enumerateAttribute:v9 inRange:location options:length usingBlock:{0, v11}];
}

void __62__ICLayoutManager_enumerateAttachmentViewsInRange_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v8;
  if (isKindOfClass)
  {
    v5 = v8;
    objc_opt_class();
    v6 = [*(a1 + 32) viewForTextAttachmentNoCreate:v5];
    v7 = ICDynamicCast();

    if (v7)
    {
      (*(*(a1 + 40) + 16))();
    }

    v4 = v8;
  }
}

- (id)viewProviderForTextAttachment:(id)a3 parentView:(id)a4 characterIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 viewIdentifier];
  v11 = [(ICLayoutManager *)self supplementalViewProviders];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (!v12)
  {
    v13 = MEMORY[0x277D74270];
    v14 = [v8 fileType];
    v15 = [v13 textAttachmentViewProviderClassForFileType:v14];

    if ((([v15 isSubclassOfClass:objc_opt_class()] & 1) == 0 && v15 || objc_msgSend(v8, "isUnsupported") && (v17 = MEMORY[0x277D35F70], objc_msgSend(v8, "fileType"), v18 = objc_claimAutoreleasedReturnValue(), LODWORD(v17) = objc_msgSend(v17, "typeUTIIsInlineAttachment:", v18), v18, v17) && (v15 = objc_msgSend(MEMORY[0x277D74270], "textAttachmentViewProviderClassForFileType:", *MEMORY[0x277D35D48])) != 0) && !objc_msgSend(v8, "isUnsupported"))
    {
      v16 = 0;
    }

    else
    {
      v15 = objc_opt_class();
      v16 = 1;
    }

    v12 = [[v15 alloc] initWithTextAttachment:v8 parentView:v9 characterIndex:a5 layoutManager:self];
    if (v16 && v10)
    {
      v19 = [(ICLayoutManager *)self supplementalViewProviders];
      [v19 setObject:v12 forKeyedSubscript:v10];
    }
  }

  return v12;
}

- (void)willPlaceView:(id)a3 forTextAttachment:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
    v8 = [(ICBaseLayoutManager *)self textContainer];
    [v6 attachmentSizeForTextContainer:v8];
    [v7 setAttachmentContentSize:?];
  }
}

- (void)didAddViewForTextAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICLayoutManager *)self icTextView];

  if (!v5)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.icTextView) != nil)" functionName:"-[ICLayoutManager didAddViewForTextAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.icTextView"}];
  }

  v6 = [(ICLayoutManager *)self supplementalViewControllers];
  v7 = [v4 viewIdentifier];

  v16 = [v6 objectForKeyedSubscript:v7];

  if (v16)
  {
    v8 = [(ICLayoutManager *)self editingTextView];
    v9 = [v8 editorController];
    v10 = [v9 textViewController];
    [v10 addChildViewController:v16];

    v11 = [(ICLayoutManager *)self editingTextView];
    v12 = [v11 editorController];
    v13 = [v12 textViewController];
    [v16 didMoveToParentViewController:v13];

    v14 = [(ICLayoutManager *)self highlightPatternRegexFinder];
    objc_opt_class();
    v15 = ICDynamicCast();
    [v15 setHighlightPatternRegexFinder:v14];
  }
}

- (id)paragraphStyleForCharacterIndex:(unint64_t)a3
{
  v4 = [(ICLayoutManager *)self textStorage];
  v5 = [v4 attribute:*MEMORY[0x277D35DA8] atIndex:a3 effectiveRange:0];

  return v5;
}

- (void)receivedMemoryWarning:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(ICLayoutManager *)self delayedScrollOutViewDictionary:a3];
  v5 = [v4 allKeys];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        v12 = [(ICLayoutManager *)self supplementalViewForIdentifier:v11 allowHiddenViews:1];
        v13 = ICDynamicCast();

        v14 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        [v14 removeObjectForKey:v11];

        [v13 didScrollOutOfVisibleRange];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  [v15 removeAllObjects];

  v16 = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  [v16 cancelPreviousFireRequests];
}

- (void)updateHiddenSupplementalViews
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        v12 = [v11 objectForKeyedSubscript:v10];

        [v12 timeIntervalSinceNow];
        if (v13 <= -0.1)
        {
          objc_opt_class();
          v14 = [(ICLayoutManager *)self supplementalViewForIdentifier:v10 allowHiddenViews:1];
          v15 = ICDynamicCast();

          v16 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
          [v16 removeObjectForKey:v10];

          [v15 didScrollOutOfVisibleRange];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  v18 = [v17 count];

  v19 = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  v20 = v19;
  if (v18)
  {
    [v19 requestFire];
  }

  else
  {
    [v19 cancelPreviousFireRequests];
  }
}

- (BOOL)unhideSupplementalView:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v19 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_2151A1000, v19, OS_LOG_TYPE_DEFAULT, "Asked to unhide a view with a nil identifier", v21, 2u);
    }

    goto LABEL_9;
  }

  v8 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  v9 = [v8 objectForKey:v7];

  v10 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  [v10 removeObjectForKey:v7];

  v11 = [(ICLayoutManager *)self hiddenSupplementalViews];
  v12 = [v11 objectForKey:v7];

  if (!v12)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v13 = [(ICLayoutManager *)self hiddenSupplementalViews];
  [v13 removeObjectForKey:v7];

  v14 = [(ICLayoutManager *)self activeSupplementalViews];
  [v14 setObject:v6 forKeyedSubscript:v7];

  v15 = [(ICLayoutManager *)self highlightPatternRegexFinder];
  objc_opt_class();
  v16 = ICDynamicCast();
  [v16 setHighlightPatternRegexFinder:v15];

  [v6 setHidden:0];
  if (!v9)
  {
    objc_opt_class();
    v17 = ICDynamicCast();
    [v17 didScrollIntoVisibleRange];
  }

  v18 = 1;
LABEL_10:

  return v18;
}

- (void)hideSupplementalView:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ICLayoutManager *)self activeSupplementalViews];
    v9 = [v8 objectForKey:v7];

    if (!v9)
    {
LABEL_16:
      [(ICLayoutManager *)self updateHiddenSupplementalViews];
      goto LABEL_17;
    }

    objc_opt_class();
    v10 = [(ICLayoutManager *)self supplementalViewControllers];
    v11 = [v10 objectForKeyedSubscript:v7];
    v12 = ICDynamicCast();

    if (!v12 || ([v12 isInResponderChain] & 1) == 0)
    {
      v13 = [(ICLayoutManager *)self activeSupplementalViews];
      [v13 removeObjectForKey:v7];

      v14 = [(ICLayoutManager *)self hiddenSupplementalViews];
      [v14 setObject:v6 forKeyedSubscript:v7];

      [v6 setHidden:1];
    }

    objc_opt_class();
    v15 = ICDynamicCast();
    v16 = v15;
    if (v15)
    {
      v17 = [v15 cancelDidScrollIntoVisibleRange];
      v18 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
      v19 = v18;
      if (v17)
      {
        [v18 removeObjectForKey:v7];
LABEL_14:

        goto LABEL_15;
      }

      v21 = [v18 objectForKeyedSubscript:v7];

      if (!v21)
      {
        v19 = [MEMORY[0x277CBEAA8] date];
        v22 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        [v22 setObject:v19 forKeyedSubscript:v7];

        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v20 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_2151A1000, v20, OS_LOG_TYPE_DEFAULT, "Asked to hide a view with a nil identifier", v23, 2u);
  }

LABEL_17:
}

- (void)ensureLayoutForSurroundingPages
{
  v3 = [(ICBaseLayoutManager *)self textView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(ICLayoutManager *)self layoutEnsuredBounds];
  if (!CGRectIsInfinite(v34))
  {
    [(ICLayoutManager *)self layoutEnsuredBounds];
    if (CGRectIsNull(v35) || (v36.origin.x = v5, v36.origin.y = v7, v36.size.width = v9, v36.size.height = v11, MinY = CGRectGetMinY(v36), [(ICLayoutManager *)self layoutEnsuredBounds], MinY < v11 * 0.125 + CGRectGetMinY(v37)))
    {
      v38.origin.x = v5;
      v38.origin.y = v7;
      v38.size.width = v9;
      v38.size.height = v11;
      v39 = CGRectOffset(v38, 0.0, v11 * -2.0);
      v50.origin.x = v5;
      v50.origin.y = v7;
      v50.size.width = v9;
      v50.size.height = v11;
      v40 = CGRectUnion(v39, v50);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      v17 = 1;
    }

    else
    {
      v17 = 0;
      height = v11;
      width = v9;
      y = v7;
      x = v5;
    }

    [(ICLayoutManager *)self layoutEnsuredBounds];
    if (!CGRectIsNull(v41) && (v42.origin.x = v5, v42.origin.y = v7, v42.size.width = v9, v42.size.height = v11, v31 = x, v18 = y, v19 = width, v20 = height, MaxY = CGRectGetMaxY(v42), [(ICLayoutManager *)self layoutEnsuredBounds], v22 = MaxY <= CGRectGetMaxY(v43) + v11 * -0.125, height = v20, width = v19, y = v18, x = v31, v22))
    {
      if (!v17)
      {
        return;
      }
    }

    else
    {
      v44.origin.x = v5;
      v44.origin.y = v7;
      v44.size.width = v9;
      v44.size.height = v11;
      v45 = CGRectOffset(v44, 0.0, v11 + v11);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v46 = CGRectUnion(v45, v51);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
    }

    [(ICLayoutManager *)self layoutEnsuredBounds];
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v48 = CGRectUnion(v47, v52);
    [(ICLayoutManager *)self setLayoutEnsuredBounds:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
    [(ICLayoutManager *)self layoutEnsuredBounds];
    if (!CGRectIsNull(v49))
    {
      [(ICLayoutManager *)self layoutEnsuredBounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = [(ICBaseLayoutManager *)self textContainer];
      [(ICLayoutManager *)self ensureLayoutForBoundingRect:v32 inTextContainer:v24, v26, v28, v30];
    }
  }
}

- (void)invalidateLayoutForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
  if (![(ICLayoutManager *)self isSettingLinkTextAttributes])
  {
    [(ICLayoutManager *)self clearLayoutEnsuredBounds];
    v8.receiver = self;
    v8.super_class = ICLayoutManager;
    [(ICLayoutManager *)&v8 invalidateLayoutForCharacterRange:location actualCharacterRange:length, a4];
  }
}

- (void)ensureLayoutForTextContainer:(id)a3
{
  v4 = *MEMORY[0x277CBF390];
  v5 = *(MEMORY[0x277CBF390] + 8);
  v6 = *(MEMORY[0x277CBF390] + 16);
  v7 = *(MEMORY[0x277CBF390] + 24);
  v8 = a3;
  [(ICLayoutManager *)self setLayoutEnsuredBounds:v4, v5, v6, v7];
  v9.receiver = self;
  v9.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v9 ensureLayoutForTextContainer:v8];
}

- (CGRect)boundingRectForGlyphRange:(_NSRange)a3 inTextContainer:(id)a4
{
  length = a3.length;
  location = a3.location;
  v43 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v41.receiver = self;
  v41.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v41 boundingRectForGlyphRange:location inTextContainer:length, v7];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  if ([(ICLayoutManager *)self isDraggingChecklistItem])
  {
    v16 = [(ICLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v18 = v17;
    v19 = [(ICLayoutManager *)self paragraphStyleForCharacterIndex:v16];
    v20 = [v19 writingDirection];
    v21 = [(ICLayoutManager *)self todoButtonsForCharacterRange:v16, v18];
    [v7 textContainerOrigin];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      TSDMultiplyPointScalar();
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v37 + 1) + 8 * i) frame];
          v28 = v27;
          v30 = v29;
          TSDAddPoints();
          v48.origin.x = v31;
          v48.origin.y = v32;
          v44.origin.x = x;
          v44.origin.y = y;
          v44.size.width = width;
          v44.size.height = height;
          v48.size.width = v28;
          v48.size.height = v30;
          v45 = CGRectUnion(v44, v48);
          v46 = CGRectIntegral(v45);
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
        }

        v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v24);
    }

    if (v20 != 1)
    {
      width = width + x;
      x = 0.0;
    }
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)updateVisibleSupplementalViews
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [(ICLayoutManager *)self textStorage];

  if (v3)
  {
    v4 = [(ICBaseLayoutManager *)self textView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(ICBaseLayoutManager *)self textContainer];
    [(ICLayoutManager *)self ensureLayoutForBoundingRect:v13 inTextContainer:v6, v8, v10, v12];

    v14 = [(ICBaseLayoutManager *)self textContainer];
    v15 = [(ICLayoutManager *)self glyphRangeForBoundingRect:v14 inTextContainer:v6, v8, v10, v12];
    v17 = v16;

    v18 = [(ICLayoutManager *)self characterRangeForGlyphRange:v15 actualGlyphRange:v17, 0];
    v20 = v19;
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = v21;
    if (v20 && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke;
      v44[3] = &unk_2781ACCD0;
      v44[4] = self;
      v23 = v21;
      v45 = v23;
      [(ICLayoutManager *)self enumerateAttachmentViewsInRange:v18 usingBlock:v20, v44];
      v24 = MEMORY[0x277D75D18];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke_2;
      v40[3] = &unk_2781AC678;
      v40[4] = self;
      v42 = v18;
      v43 = v20;
      v41 = v23;
      [v24 ic_performWithoutAnimation:v40];
    }

    v25 = MEMORY[0x277CBEB58];
    v26 = [(ICLayoutManager *)self activeSupplementalViews];
    v27 = [v26 allValues];
    v28 = [v25 setWithArray:v27];

    [v28 minusSet:v22];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v36 + 1) + 8 * i);
          v35 = [v34 viewIdentifier];
          [(ICLayoutManager *)self hideSupplementalView:v34 forIdentifier:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v31);
    }

    [(ICLayoutManager *)self updateHiddenSupplementalViews];
  }
}

void __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = [a3 viewIdentifier];
  [v5 unhideSupplementalView:v7 forIdentifier:v6];

  [*(a1 + 40) addObject:v7];
}

void __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  v3 = *MEMORY[0x277D35DA8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke_3;
  v5[3] = &unk_2781ACAF8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 ic_enumerateUnclampedAttribute:v3 inRange:*(a1 + 48) options:*(a1 + 56) usingBlock:{0, v5}];
}

void __49__ICLayoutManager_updateVisibleSupplementalViews__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v17 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v17;
    if (isKindOfClass)
    {
      v9 = [v17 isList];
      v7 = v17;
      if (v9)
      {
        v10 = [v17 style];
        v7 = v17;
        if (v10 == 103)
        {
          v11 = [*(a1 + 32) textStorage];
          v12 = [v11 attribute:*MEMORY[0x277D36000] atIndex:a3 effectiveRange:0];

          v13 = *(a1 + 32);
          [v13 cachedOrigin];
          v14 = [v13 drawTodoViewForListRange:a3 paragraphStyle:a4 checkmarkHighlightValue:v17 atPoint:v12];
          if (v14)
          {
            [*(a1 + 40) addObject:v14];
            v15 = *(a1 + 32);
            v16 = [v14 viewIdentifier];
            [v15 unhideSupplementalView:v14 forIdentifier:v16];
          }

          v7 = v17;
        }
      }
    }
  }
}

- (void)updateInlineDrawingViews
{
  v3 = [(ICBaseLayoutManager *)self textView];
  v4 = [v3 textStorage];

  v5 = *MEMORY[0x277D74060];
  v6 = [v4 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ICLayoutManager_updateInlineDrawingViews__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v7}];
}

uint64_t __43__ICLayoutManager_updateInlineDrawingViews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v13 = ICDynamicCast();

  if (v13)
  {
    v6 = [*(a1 + 32) viewProviderForTextAttachment:v13 characterIndex:a3];
    v7 = [v6 view];
    if ([v7 conformsToProtocol:&unk_28282EE70] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [v13 attachment];
      v9 = [v8 managedObjectContext];
      [v9 ic_refreshObject:v8 mergeChanges:1];

      v10 = [v8 inlineDrawingModel];
      v11 = [v10 newDrawingFromMergeableData];

      [v7 drawingDataDidChange:v11];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)editingTextView
{
  objc_opt_class();
  v3 = [(ICBaseLayoutManager *)self textView];
  v4 = ICDynamicCast();

  return v4;
}

- (void)attachmentDidLoad:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D35E00];
  v29 = v4;
  v6 = [v4 object];
  v7 = [(ICBaseLayoutManager *)self textController];
  v8 = [v7 note];
  v9 = [v8 managedObjectContext];
  v10 = [v5 ic_existingObjectWithID:v6 context:v9];

  if (v10)
  {
    v11 = 0;
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x277D35EF8];
    v14 = [v29 object];
    v15 = [(ICBaseLayoutManager *)self textController];
    v16 = [v15 note];
    v17 = [v16 managedObjectContext];
    v12 = [v13 ic_existingObjectWithID:v14 context:v17];

    v11 = v12;
  }

  v18 = v12;
  v19 = [v18 note];
  v20 = [(ICBaseLayoutManager *)self textController];
  v21 = [v20 note];
  v22 = [v19 isEqual:v21];

  if (v22)
  {
    v23 = [(ICLayoutManager *)self rangeForBaseAttachment:v18 withTextAttachment:0];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v23;
      v26 = v24;
      objc_opt_class();
      v27 = [(ICLayoutManager *)self textStorage];
      v28 = ICDynamicCast();

      [(ICLayoutManager *)self filterAttachmentsInTextStorage:v28 range:v25 targetAttachment:v26, v18];
      [(ICLayoutManager *)self invalidateLayoutForCharacterRange:v25 actualCharacterRange:v26, 0];
    }
  }
}

- (void)filterAttachmentsInTextStorage:(id)a3 range:(_NSRange)a4 targetAttachment:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = [a5 note];
  [v9 filterAttachmentsInTextStorage:v8 range:{location, length}];
}

- (void)mediaDidLoad:(id)a3
{
  v4 = MEMORY[0x277D35F18];
  v5 = [a3 object];
  v6 = [(ICBaseLayoutManager *)self textController];
  v7 = [v6 note];
  v8 = [v7 managedObjectContext];
  v13 = [v4 ic_existingObjectWithID:v5 context:v8];

  v9 = [v13 attachment];
  v10 = [v9 note];
  v11 = [(ICBaseLayoutManager *)self textController];
  v12 = [v11 note];

  if (v10 == v12)
  {
    [(ICLayoutManager *)self invalidateLayoutForAttachment:v9];
  }
}

- (void)invalidateLayoutForAttachment:(id)a3
{
  v4 = [(ICLayoutManager *)self rangeForAttachment:a3 withTextAttachment:0];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(ICLayoutManager *)self invalidateLayoutForCharacterRange:v4 actualCharacterRange:v5, 0];
  }
}

- (void)attachmentInlineDrawingMergeableDataDidChange:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 object];

  v5 = ICCheckedDynamicCast();

  if (v5)
  {
    v6 = v5;
    performBlockOnMainThreadAndWait();
  }
}

void __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D35F30] sharedContext];
  v3 = [v2 managedObjectContext];

  objc_opt_class();
  v4 = *(a1 + 32);
  v24 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v24];
  v6 = v24;
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    v8 = *(a1 + 40);
    v23 = 0;
    v9 = [v8 rangeForAttachment:v7 withTextAttachment:&v23];
    v10 = v23;
    if (v10)
    {
      v11 = [*(a1 + 40) viewProviderForTextAttachment:v10 characterIndex:v9];
      v12 = [v11 view];
      if ([v12 conformsToProtocol:&unk_28282EE70] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v13 = [*(a1 + 40) workerContext];

        if (!v13)
        {
          v14 = [MEMORY[0x277D35F30] sharedContext];
          v15 = [v14 workerManagedObjectContext];
          [*(a1 + 40) setWorkerContext:v15];
        }

        v16 = [*(a1 + 40) workerContext];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke_2;
        v19[3] = &unk_2781AC5B0;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v20 = v17;
        v21 = v18;
        v22 = v12;
        [v16 performBlockAndWait:v19];
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke_cold_1(v6, v10);
    }
  }
}

void __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D35E00];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) workerContext];
  v5 = [v2 ic_existingObjectWithID:v3 context:v4];

  if (v5)
  {
    v6 = [v5 inlineDrawingModel];
    v7 = [v6 newDrawingFromMergeableData];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke_3;
    v9[3] = &unk_2781ABEB8;
    v10 = *(a1 + 48);
    v11 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (id)supplementalViewForIdentifier:(id)a3 allowHiddenViews:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(ICLayoutManager *)self activeSupplementalViews];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8 && v4)
    {
      v9 = [(ICLayoutManager *)self hiddenSupplementalViews];
      v8 = [v9 objectForKeyedSubscript:v6];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2151A1000, v10, OS_LOG_TYPE_DEFAULT, "Asked for a supplemental view for a nil-identifier", v12, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)clearSupplementalViewForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ICLayoutManager *)self activeSupplementalViews];
    [v5 removeObjectForKey:v4];

    v6 = [(ICLayoutManager *)self hiddenSupplementalViews];
    [v6 removeObjectForKey:v4];

    v7 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
    [v7 removeObjectForKey:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_DEFAULT, "Asked to clear a supplemental view for a nil-identifier", v8, 2u);
    }
  }
}

- (id)viewForTextAttachment:(id)a3 initialCharacterIndex:(unint64_t)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(ICBaseLayoutManager *)self textContainer];
    [v6 attachmentViewClassForTextContainer:v9];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_32;
    }

    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_DEFAULT, "Found view of wrong type. Recreating.", buf, 2u);
    }

    [(ICLayoutManager *)self clearViewForTextAttachment:v6];
  }

  v8 = [v6 viewIdentifier];

  if (v8)
  {
    if ([(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews])
    {
      v12 = [(ICLayoutManager *)self isRenderingPreviewForDragAndDrop]^ 1;
    }

    else
    {
      v12 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(ICLayoutManager *)self inlineAttachmentLocationCache];
      v14 = [v6 viewIdentifier];
      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a4 = [v13 locationForTextAttachmentOfViewIdentifier:v14];
      }

      else
      {
        [v13 setLocation:a4 forTextAttachmentOfViewIdentifier:v14];
      }
    }

    v15 = [v6 newlyCreatedViewControllerForManualRendering:v12 layoutManager:self initialCharacterIndex:a4];
    if (v15)
    {
      v16 = [(ICLayoutManager *)self highlightPatternRegexFinder];
      objc_opt_class();
      v17 = ICDynamicCast();
      [v17 setHighlightPatternRegexFinder:v16];

      v18 = [(ICLayoutManager *)self supplementalViewControllers];
      v19 = [v6 viewIdentifier];
      [v18 setObject:v15 forKeyedSubscript:v19];

      v8 = [v15 view];
    }

    else
    {
      if ([(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews]&& ![(ICLayoutManager *)self isRenderingPreviewForDragAndDrop])
      {
        v20 = [(ICBaseLayoutManager *)self textContainer];
        v21 = [v6 newlyCreatedViewForManualRenderingInTextContainer:v20];
      }

      else
      {
        v20 = [(ICBaseLayoutManager *)self textContainer];
        v21 = [v6 newlyCreatedViewForTextContainer:v20];
      }

      v8 = v21;
    }

    v22 = [(ICLayoutManager *)self activeSupplementalViews];
    v23 = [v6 viewIdentifier];
    [v22 setObject:v8 forKeyedSubscript:v23];

    objc_opt_class();
    v24 = ICDynamicCast();
    v25 = [(ICLayoutManager *)self highlightPatternRegexFinder];
    [v24 setHighlightPatternRegexFinder:v25];

    v26 = [(ICBaseLayoutManager *)self textController];
    v27 = [v26 authorHighlightsController];

    if (v27)
    {
      [v6 foregroundAlpha];
      [v24 setForegroundAlpha:?];
      v28 = [v6 highlightColor];
      [v24 setHighlightColor:v28];
    }

    v29 = [v6 attachment];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v31 = [v30 managedObjectContext];
        v32 = [v31 ic_isMainThreadContext];

        if (v32)
        {
          v33 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v44 = [v30 shortLoggingDescription];
            v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v30, "markedForDeletion")}];
            v34 = MEMORY[0x277CCABB0];
            v42 = [v30 mergeableData];
            v40 = [v34 numberWithUnsignedInteger:{objc_msgSend(v42, "length")}];
            v41 = [v30 media];
            v35 = [v41 shortLoggingDescription];
            *buf = 138413314;
            v46 = v44;
            v47 = 2112;
            v48 = v43;
            v49 = 2112;
            v50 = v40;
            v51 = 2112;
            v52 = v6;
            v53 = 2112;
            v54 = v35;
            v36 = v35;
            _os_log_impl(&dword_2151A1000, v33, OS_LOG_TYPE_INFO, "Created view for attachment %@ markedForDeletion=%@ mergeableDataLength=%@ textAttachment=%@ media=%@", buf, 0x34u);
          }
        }
      }
    }
  }

LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v8;
    v38 = [(ICLayoutManager *)self attachmentViewDelegate];
    [v37 setDelegate:v38];
  }

  return v8;
}

- (id)viewForTextAttachmentNoCreate:(id)a3
{
  v4 = [a3 attachmentIdentifier];
  v5 = [(ICLayoutManager *)self supplementalViewForIdentifier:v4 allowHiddenViews:1];

  return v5;
}

- (id)viewForBaseTextAttachmentNoCreate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:v4];
  }

  else
  {
    v6 = [v4 attachment];
    v7 = [(ICLayoutManager *)self viewProviderForTextAttachment:v4 characterIndex:[(ICLayoutManager *)self rangeForAttachment:v6 withTextAttachment:0]];
    v5 = [v7 view];
  }

  return v5;
}

- (id)viewControllerForTextAttachment:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICLayoutManager *)self supplementalViewControllers];
  v8 = [v6 viewIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9 && v4)
  {
    v10 = [(ICLayoutManager *)self viewForTextAttachment:v6];
    v11 = [(ICLayoutManager *)self supplementalViewControllers];
    v12 = [v6 viewIdentifier];
    v9 = [v11 objectForKeyedSubscript:v12];

    v13 = [(ICLayoutManager *)self highlightPatternRegexFinder];
    objc_opt_class();
    v14 = ICDynamicCast();
    [v14 setHighlightPatternRegexFinder:v13];
  }

  return v9;
}

- (void)clearViewsForAllTextAttachmentsThatSupportThumbnailMode
{
  v3 = [(ICLayoutManager *)self textStorage];
  v4 = [v3 length];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__ICLayoutManager_clearViewsForAllTextAttachmentsThatSupportThumbnailMode__block_invoke;
  v5[3] = &unk_2781ACCF8;
  v5[4] = self;
  [(ICLayoutManager *)self enumerateAttachmentViewsInRange:0 usingBlock:v4, v5];
}

void __74__ICLayoutManager_clearViewsForAllTextAttachmentsThatSupportThumbnailMode__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 supportsMultiplePresentationSizes])
  {
    [*(a1 + 32) clearViewForTextAttachment:v4];
  }
}

- (void)clearViewForTextAttachment:(id)a3
{
  v7 = a3;
  v4 = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:?];
  if (v4)
  {
    v5 = [v7 viewIdentifier];
    [(ICLayoutManager *)self clearSupplementalViewForIdentifier:v5];

    v6 = [v7 viewIdentifier];
    [(ICLayoutManager *)self removeClearingControllerForView:v4 viewIdentifier:v6];
  }
}

- (void)invalidateLayoutAfterAttachmentViewTypeChangeIfNecessary
{
  if (![(ICLayoutManager *)self isUpdatingForAttachmentViewTypeChange])
  {
    [(ICLayoutManager *)self clearViewsForAllTextAttachmentsThatSupportThumbnailMode];

    [(ICLayoutManager *)self invalidateLayoutAfterAttachmentViewTypeChange];
  }
}

- (void)invalidateLayoutAfterAttachmentViewTypeChange
{
  v3 = [(ICLayoutManager *)self textStorage];
  v4 = [v3 length];

  v5 = [(ICLayoutManager *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__ICLayoutManager_invalidateLayoutAfterAttachmentViewTypeChange__block_invoke;
  v9[3] = &unk_2781AC5D8;
  v9[4] = self;
  [v5 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v9}];

  v7 = [(ICBaseLayoutManager *)self textView];
  v8 = [v7 textContainer];
  [(ICLayoutManager *)self ensureLayoutForTextContainer:v8];
}

void __64__ICLayoutManager_invalidateLayoutAfterAttachmentViewTypeChange__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 supportsMultiplePresentationSizes])
  {
    [*(a1 + 32) invalidateLayoutForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    [*(a1 + 32) invalidateDisplayForCharacterRange:{a3, a4}];
  }
}

- (void)fillBackgroundRectArray:(const CGRect *)a3 count:(unint64_t)a4 forCharacterRange:(_NSRange)a5 color:(id)a6
{
  v6 = a4;
  [a6 set];
  if (v6)
  {
    p_size = &a3->size;
    do
    {
      width = p_size[-1].width;
      height = p_size[-1].height;
      v11 = p_size->width;
      v12 = p_size->height;
      p_size += 2;
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:width cornerRadius:{height, v11, v12, 3.0}];
      [v13 fill];

      --v6;
    }

    while (v6);
  }
}

- (id)linkAttributesForLink:(id)a3 forCharacterAtIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x277D36708] defaultLinkTextAttributes];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x277D04328] sharedController];
  v9 = [(ICLayoutManager *)self textStorage];
  v10 = [v8 preferredTextAttributesForLinkAtCharacterIndex:a4 ofStorage:v9];

  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  v15 = [(ICLayoutManager *)self textStorage];
  v16 = [v15 attribute:*MEMORY[0x277D36008] atIndex:a4 effectiveRange:0];
  [v16 floatValue];
  v18 = v17;

  objc_opt_class();
  v19 = *MEMORY[0x277D740C0];
  v20 = [v14 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  v21 = ICDynamicCast();

  v22 = fabs(v18);
  if (v22 >= 0.00999999978)
  {
    v23 = [MEMORY[0x277D75348] preferredDefaultFontColor];
    v24 = [v21 ic_colorBlendedWithColor:v23 fraction:v22];

    v25 = v18 * 0.6 + 1.0;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v21 = [v24 colorWithAlphaComponent:{fmin(v25, 1.0)}];
  }

  [v14 ic_setNonNilObject:v21 forKey:v19];
  if (v18 <= -0.1)
  {
    v26 = &unk_28277E2F8;
  }

  else
  {
    v26 = &unk_28277E2E0;
  }

  [v14 ic_setNonNilObject:v26 forKey:*MEMORY[0x277D741F0]];
  v27 = [v14 copy];

  return v27;
}

- (id)icaxTodoButtonForParagraphStyle:(id)a3
{
  v4 = a3;
  v5 = [(ICLayoutManager *)self trackedToDoParagraphs];
  v6 = [v4 todoTrackingUUID];

  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
    v9 = [v7 paragraph];
    v10 = [v9 todoTrackingUUID];
    v11 = [v8 objectForKeyedSubscript:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ICAttachmentViewDelegate)attachmentViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentViewDelegate);

  return WeakRetained;
}

- (CGPoint)cachedOrigin
{
  x = self->_cachedOrigin.x;
  y = self->_cachedOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)cachedTextContainerSize
{
  width = self->_cachedTextContainerSize.width;
  height = self->_cachedTextContainerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)layoutEnsuredBounds
{
  x = self->_layoutEnsuredBounds.origin.x;
  y = self->_layoutEnsuredBounds.origin.y;
  width = self->_layoutEnsuredBounds.size.width;
  height = self->_layoutEnsuredBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)removeClearingControllerForView:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 className];
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v2, v3, "View identifier was nil when clearing view of type: %@", v4, v5, v6, v7, 2u);
}

void __65__ICLayoutManager_attachmentInlineDrawingMergeableDataDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Unable to find attachment in attachmentInlineDrawingMergeableDataDidChange: %@", &v2, 0xCu);
}

@end