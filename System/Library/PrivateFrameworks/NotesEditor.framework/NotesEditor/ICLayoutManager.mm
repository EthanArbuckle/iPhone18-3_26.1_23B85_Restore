@interface ICLayoutManager
- (BOOL)selectedRangesIntersectWithRange:(_NSRange)range;
- (BOOL)unhideSupplementalView:(id)view forIdentifier:(id)identifier;
- (CGPoint)cachedOrigin;
- (CGRect)boundingRectForGlyphRange:(_NSRange)range inTextContainer:(id)container;
- (CGRect)layoutEnsuredBounds;
- (CGRect)lineFragmentRectForGlyphAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (CGRect)lineRectForRange:(_NSRange)range;
- (CGRect)usedLineRectForRange:(_NSRange)range;
- (CGSize)cachedTextContainerSize;
- (ICAttachmentViewDelegate)attachmentViewDelegate;
- (ICNAEventReporter)eventReporter;
- (NSDictionary)trackedToDoParagraphs;
- (_NSRange)rangeForAttachment:(id)attachment withTextAttachment:(id *)textAttachment;
- (_NSRange)rangeForBaseAttachment:(id)attachment withTextAttachment:(id *)textAttachment;
- (id)drawTodoViewForListRange:(_NSRange)range paragraphStyle:(id)style checkmarkHighlightValue:(id)value atPoint:(CGPoint)point;
- (id)editingTextView;
- (id)glyphIndexesForMatchesInTextStorage:(id)storage regexFinder:(id)finder glyphRange:(_NSRange)range;
- (id)icaxTodoButtonForParagraphStyle:(id)style;
- (id)initForTemporaryProcessing:(BOOL)processing;
- (id)linkAttributesForLink:(id)link forCharacterAtIndex:(unint64_t)index;
- (id)paragraphStyleForCharacterIndex:(unint64_t)index;
- (id)supplementalViewForIdentifier:(id)identifier allowHiddenViews:(BOOL)views;
- (id)textContainerForGlyphAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)todoButtonForTrackedParagraphIfExists:(id)exists;
- (id)todoButtonsForCharacterRange:(_NSRange)range;
- (id)trackedTodoParagraphAtIndexIfExists:(unint64_t)exists;
- (id)viewControllerForTextAttachment:(id)attachment createIfNeeded:(BOOL)needed;
- (id)viewForBaseTextAttachmentNoCreate:(id)create;
- (id)viewForTextAttachment:(id)attachment initialCharacterIndex:(unint64_t)index;
- (id)viewForTextAttachmentNoCreate:(id)create;
- (id)viewProviderForTextAttachment:(id)attachment parentView:(id)view characterIndex:(unint64_t)index;
- (unint64_t)lineCountForCharacterRange:(_NSRange)range;
- (void)_clearRemovedAttachments;
- (void)attachmentDidLoad:(id)load;
- (void)attachmentInlineDrawingMergeableDataDidChange:(id)change;
- (void)cleanUpAfterScreenshot;
- (void)cleanupStaleTodoButtons;
- (void)cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:(id)dictionary;
- (void)clearAllSupplementalViews;
- (void)clearAllTodoSupplementalViews;
- (void)clearAllTodos;
- (void)clearRemovedAttachmentsIfNeeded;
- (void)clearSupplementalViewForIdentifier:(id)identifier;
- (void)clearViewForTextAttachment:(id)attachment;
- (void)clearViewsForAllTextAttachmentsThatSupportThumbnailMode;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)didAddViewForTextAttachment:(id)attachment;
- (void)didPressTodoButton:(id)button;
- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point updateAttachments:(BOOL)attachments;
- (void)ensureLayoutForSurroundingPages;
- (void)ensureLayoutForTextContainer:(id)container;
- (void)ensureViewIsAddedForAttachment:(id)attachment inCharacterRange:(_NSRange)range;
- (void)enumerateAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block;
- (void)eventReporterLostSession:(id)session;
- (void)fillBackgroundRectArray:(const CGRect *)array count:(unint64_t)count forCharacterRange:(_NSRange)range color:(id)color;
- (void)filterAttachmentsInTextStorage:(id)storage range:(_NSRange)range targetAttachment:(id)attachment;
- (void)handleTodoButtonPress:(id)press;
- (void)hideSupplementalView:(id)view forIdentifier:(id)identifier;
- (void)hideVisibleTodoButtons;
- (void)icReplaceTextStorage:(id)storage;
- (void)invalidateLayoutAfterAttachmentViewTypeChange;
- (void)invalidateLayoutAfterAttachmentViewTypeChangeIfNecessary;
- (void)invalidateLayoutForAttachment:(id)attachment;
- (void)invalidateLayoutForCharacterRange:(_NSRange)range actualCharacterRange:(_NSRange *)characterRange;
- (void)layoutViewForInlineTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index;
- (void)manuallyRenderSubviewsForCharacterRange:(_NSRange)range;
- (void)mediaDidLoad:(id)load;
- (void)prepareForScreenshotWithVisibleRange:(_NSRange)range;
- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange;
- (void)receivedMemoryWarning:(id)warning;
- (void)removeClearingControllerForView:(id)view;
- (void)removeClearingControllerForView:(id)view viewIdentifier:(id)identifier;
- (void)setCachedOrigin:(CGPoint)origin;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setNeedsClearRemovedAttachments:(BOOL)attachments;
- (void)textContainerChangedGeometry:(id)geometry;
- (void)textController:(id)controller removedTrackedAttribute:(id)attribute;
- (void)textStorageDidEndEditingNotification:(id)notification;
- (void)unHideVisibleTodoButtons;
- (void)updateHiddenSupplementalViews;
- (void)updateInlineDrawingViews;
- (void)updateSubviewsForCharacterRange:(_NSRange)range;
- (void)updateSubviewsForCharacterRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)updateVisibleSupplementalViews;
- (void)willPlaceView:(id)view forTextAttachment:(id)attachment;
- (void)zoomFactorOrInsetsDidChange;
@end

@implementation ICLayoutManager

- (id)initForTemporaryProcessing:(BOOL)processing
{
  v21.receiver = self;
  v21.super_class = ICLayoutManager;
  v4 = [(ICLayoutManager *)&v21 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ICLayoutManager *)v4 setTodoButtonsByTrackingUUID:v5];

    if (!processing)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel_attachmentDidLoad_ name:*MEMORY[0x277D35B88] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v4 selector:sel_mediaDidLoad_ name:*MEMORY[0x277D35C70] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = *MEMORY[0x277D36650];
      textStorage = [(ICLayoutManager *)v4 textStorage];
      [defaultCenter3 addObserver:v4 selector:sel_textStorageDidEndEditingNotification_ name:v9 object:textStorage];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter4 addObserver:v4 selector:sel_attachmentInlineDrawingMergeableDataDidChange_ name:*MEMORY[0x277D36450] object:0];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter5 addObserver:v4 selector:sel_receivedMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setActiveSupplementalViews:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setHiddenSupplementalViews:dictionary2];

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setSupplementalViewControllers:dictionary3];

    v16 = [[ICTextAttachmentLocationCache alloc] initWithLayoutManager:v4 cachedTextAttachmentType:objc_opt_class()];
    [(ICLayoutManager *)v4 setInlineAttachmentLocationCache:v16];

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setSupplementalViewProviders:dictionary4];

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    [(ICLayoutManager *)v4 setDelayedScrollOutViewDictionary:dictionary5];

    v19 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:v4 selector:sel_updateHiddenSupplementalViews delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
    [(ICLayoutManager *)v4 setUpdateHiddenViewsSelectorDelayer:v19];
  }

  return v4;
}

- (void)dealloc
{
  updateHiddenViewsSelectorDelayer = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  [updateHiddenViewsSelectorDelayer cancelPreviousFireRequests];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(ICLayoutManager *)self clearAllSupplementalViews];
  v5.receiver = self;
  v5.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v5 dealloc];
}

- (NSDictionary)trackedToDoParagraphs
{
  textController = [(ICBaseLayoutManager *)self textController];
  v4 = textController;
  if (textController)
  {
    trackedToDoParagraphs = [textController trackedToDoParagraphs];
  }

  else
  {
    trackedToDoParagraphs = self->_trackedToDoParagraphs;
  }

  v6 = trackedToDoParagraphs;

  return v6;
}

- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  [(ICLayoutManager *)self setLineHeightIncludeParagraphSpacing:1];
  [(ICLayoutManager *)self drawGlyphsForGlyphRange:location atPoint:length updateAttachments:1, x, y];

  [(ICLayoutManager *)self setLineHeightIncludeParagraphSpacing:0];
}

- (id)textContainerForGlyphAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = [(ICLayoutManager *)self characterIndexForGlyphAtIndex:?];
  textStorage = [(ICLayoutManager *)self textStorage];
  v9 = [textStorage length];

  if (v7 <= v9)
  {
    v13.receiver = self;
    v13.super_class = ICLayoutManager;
    v11 = [(ICLayoutManager *)&v13 textContainerForGlyphAtIndex:index effectiveRange:range];
  }

  else
  {
    if (range)
    {
      range->location = 0x7FFFFFFFFFFFFFFFLL;
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

- (void)setHighlightPatternRegexFinder:(id)finder
{
  finderCopy = finder;
  v6 = [(ICSearchResultRegexMatchFinder *)self->_highlightPatternRegexFinder isEqual:finderCopy];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_highlightPatternRegexFinder, finder);
  }

  supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke;
  v22 = &unk_2781ACB48;
  v8 = finderCopy;
  v23 = v8;
  [supplementalViewControllers enumerateKeysAndObjectsUsingBlock:&v19];

  activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ICLayoutManager_setHighlightPatternRegexFinder___block_invoke_2;
  v17 = &unk_2781ACB70;
  v18 = v8;
  v10 = v8;
  [activeSupplementalViews enumerateKeysAndObjectsUsingBlock:&v14];

  if ((v6 & 1) == 0)
  {
    v11 = [(ICLayoutManager *)self textStorage:v14];
    ic_range = [v11 ic_range];
    [(ICLayoutManager *)self invalidateDisplayForCharacterRange:ic_range, v13];
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

- (void)setCachedOrigin:(CGPoint)origin
{
  if (!self->_shouldIgnoreCachedOriginUpdates)
  {
    self->_cachedOrigin = origin;
  }
}

- (id)glyphIndexesForMatchesInTextStorage:(id)storage regexFinder:(id)finder glyphRange:(_NSRange)range
{
  storageCopy = storage;
  finderCopy = finder;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  string = [storageCopy string];
  v10 = [finderCopy matchesInDocumentWithPerTokenFallback:string];

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

- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point updateAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  v11 = [(ICLayoutManager *)self characterRangeForGlyphRange:range.location actualGlyphRange:range.length, 0];
  v13 = v12;
  [(ICLayoutManager *)self cachedOrigin];
  v15 = v14;
  v17 = v16;
  if (attachmentsCopy)
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

- (void)icReplaceTextStorage:(id)storage
{
  storageCopy = storage;
  textStorage = [(ICLayoutManager *)self textStorage];
  [textStorage removeLayoutManager:self];

  [storageCopy addLayoutManager:self];
}

- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [(ICLayoutManager *)self setNeedsClearRemovedAttachments:1];
  textStorage = [(ICLayoutManager *)self textStorage];
  v14 = *MEMORY[0x277D74060];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__ICLayoutManager_processEditingForTextStorage_edited_range_changeInLength_invalidatedRange___block_invoke;
  v20[3] = &unk_2781ACBC0;
  v20[4] = self;
  [textStorage enumerateAttribute:v14 inRange:location options:length usingBlock:{0, v20}];

  icTextView = [(ICLayoutManager *)self icTextView];
  isInProcessEditingForTextStorage = [icTextView isInProcessEditingForTextStorage];

  icTextView2 = [(ICLayoutManager *)self icTextView];
  [icTextView2 setIsInProcessEditingForTextStorage:1];

  v19.receiver = self;
  v19.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v19 processEditingForTextStorage:storageCopy edited:edited range:location changeInLength:length invalidatedRange:length, invalidatedRange.location, invalidatedRange.length];

  icTextView3 = [(ICLayoutManager *)self icTextView];
  [icTextView3 setIsInProcessEditingForTextStorage:isInProcessEditingForTextStorage];
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

- (void)textContainerChangedGeometry:(id)geometry
{
  geometryCopy = geometry;
  [geometryCopy size];
  v6 = v5;
  v8 = v7;
  [(ICLayoutManager *)self cachedTextContainerSize];
  if (v6 != v10 || v8 != v9)
  {
    [geometryCopy size];
    [(ICLayoutManager *)self setCachedTextContainerSize:?];
    v12.receiver = self;
    v12.super_class = ICLayoutManager;
    [(ICLayoutManager *)&v12 textContainerChangedGeometry:geometryCopy];
  }
}

- (CGRect)lineFragmentRectForGlyphAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v104.receiver = self;
  v104.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v104 lineFragmentRectForGlyphAtIndex:index effectiveRange:range];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (![(ICLayoutManager *)self lineHeightIncludeParagraphSpacing])
  {
    v14 = [(ICLayoutManager *)self characterIndexForGlyphAtIndex:index];
    textStorage = [(ICLayoutManager *)self textStorage];
    v16 = [textStorage length];

    if (v14 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    textStorage2 = [(ICLayoutManager *)self textStorage];
    v19 = [textStorage2 length] - 1;

    if (v17 >= v19)
    {
      textView = [(ICBaseLayoutManager *)self textView];
      typingAttributes = [textView typingAttributes];
      v21 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D74118]];
    }

    else
    {
      textView = [(ICLayoutManager *)self textStorage];
      v21 = [textView attribute:*MEMORY[0x277D74118] atIndex:v17 effectiveRange:0];
    }

    if (v21)
    {
      v97 = v9;
      v98 = v11;
      v99 = v7;
      textView2 = [(ICBaseLayoutManager *)self textView];
      selectedRange = [textView2 selectedRange];
      v26 = v25;

      v27 = [(ICLayoutManager *)self glyphRangeForCharacterRange:selectedRange actualCharacterRange:v26, 0];
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

      textStorage3 = [(ICLayoutManager *)self textStorage];
      string = [textStorage3 string];
      v48 = [string paragraphRangeForRange:{v17, 0}];
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
        textStorage4 = [(ICLayoutManager *)self textStorage];
        string2 = [textStorage4 string];
        v79 = [string2 paragraphRangeForRange:{v48 + v50, 0}];
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

- (CGRect)lineRectForRange:(_NSRange)range
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_21552D17E;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v20 = *MEMORY[0x277CBF398];
  v21 = v4;
  v5 = [(ICLayoutManager *)self glyphRangeForCharacterRange:range.location actualCharacterRange:range.length, 0];
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

- (CGRect)usedLineRectForRange:(_NSRange)range
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_21552D17E;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v20 = *MEMORY[0x277CBF398];
  v21 = v4;
  v5 = [(ICLayoutManager *)self glyphRangeForCharacterRange:range.location actualCharacterRange:range.length, 0];
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

- (void)textController:(id)controller removedTrackedAttribute:(id)attribute
{
  paragraph = [attribute paragraph];
  todoTrackingUUID = [paragraph todoTrackingUUID];

  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v7 = [todoButtonsByTrackingUUID objectForKeyedSubscript:todoTrackingUUID];

  [v7 removeFromSuperview];
  todoButtonsByTrackingUUID2 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [todoButtonsByTrackingUUID2 removeObjectForKey:todoTrackingUUID];

  uUIDString = [todoTrackingUUID UUIDString];
  [(ICLayoutManager *)self clearSupplementalViewForIdentifier:uUIDString];
}

- (void)contentSizeCategoryDidChange
{
  textStorage = [(ICLayoutManager *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  textStorage2 = [(ICLayoutManager *)self textStorage];
  v6 = [textStorage2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ICLayoutManager_contentSizeCategoryDidChange__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [textStorage enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
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
  textStorage = [(ICLayoutManager *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  textStorage2 = [(ICLayoutManager *)self textStorage];
  v6 = [textStorage2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ICLayoutManager_zoomFactorOrInsetsDidChange__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [textStorage enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
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

- (id)drawTodoViewForListRange:(_NSRange)range paragraphStyle:(id)style checkmarkHighlightValue:(id)value atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  styleCopy = style;
  valueCopy = value;
  trackedToDoParagraphs = [(ICLayoutManager *)self trackedToDoParagraphs];
  todoTrackingUUID = [styleCopy todoTrackingUUID];
  v16 = [trackedToDoParagraphs objectForKeyedSubscript:todoTrackingUUID];

  if (!v16)
  {
    if (![(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews])
    {
      v20 = 0;
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  paragraph = [v16 paragraph];
  todoTrackingUUID2 = [paragraph todoTrackingUUID];
  v20 = [todoButtonsByTrackingUUID objectForKeyedSubscript:todoTrackingUUID2];

  if (!v20)
  {
LABEL_5:
    v21 = objc_alloc(MEMORY[0x277D36990]);
    icTextView = [(ICLayoutManager *)self icTextView];
    textDragInteraction = [icTextView textDragInteraction];
    delegate = [textDragInteraction delegate];
    v20 = [v21 initWithDragDelegate:delegate];

    overrideTraitCollection = [(ICLayoutManager *)self overrideTraitCollection];

    if (overrideTraitCollection)
    {
      v26 = MEMORY[0x277D75348];
      overrideTraitCollection2 = [(ICLayoutManager *)self overrideTraitCollection];
      v28 = [v26 ic_tintColorWithTraitCollection:overrideTraitCollection2];
      [v20 setOverrideTintColor:v28];
    }

    [v20 setTrackedParagraph:v16];
    todoButtonsByTrackingUUID2 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
    todoTrackingUUID3 = [styleCopy todoTrackingUUID];
    [todoButtonsByTrackingUUID2 setObject:v20 forKeyedSubscript:todoTrackingUUID3];

    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    todoTrackingUUID4 = [styleCopy todoTrackingUUID];
    uUIDString = [todoTrackingUUID4 UUIDString];
    [activeSupplementalViews setObject:v20 forKeyedSubscript:uUIDString];

    [v20 addTarget:self action:sel_didPressTodoButton_ forControlEvents:64];
  }

  superview = [v20 superview];

  if (!superview)
  {
    icTextView2 = [(ICLayoutManager *)self icTextView];
    containerViewForAttachments = [icTextView2 containerViewForAttachments];
    [containerViewForAttachments addSubview:v20];
  }

  todo = [styleCopy todo];
  [v20 setDone:objc_msgSend(todo animated:{"done"), 0}];

  [valueCopy foregroundAlpha];
  if (v38 == 0.0)
  {
    v38 = 1.0;
  }

  [v20 ic_setAlpha:v38];
  highlightColor = [valueCopy highlightColor];
  [v20 setHighlightColor:highlightColor];

  [(ICLayoutManager *)self lineFragmentUsedRectForGlyphAtIndex:[(ICLayoutManager *)self glyphRangeForCharacterRange:location actualCharacterRange:length effectiveRange:0], 0];
  v41 = v40;
  v43 = v42;
  v45 = x + v44;
  v47 = y + v46;
  textContainer = [(ICBaseLayoutManager *)self textContainer];
  [textContainer lineFragmentPadding];
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
    layoutWritingDirection = [styleCopy layoutWritingDirection];
    v60 = v51;
    v61 = v52;
    v62 = width;
    v63 = height;
    if (layoutWritingDirection)
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
    v73 = styleCopy;
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

- (void)didPressTodoButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  icTextView = [(ICLayoutManager *)self icTextView];
  v5 = ICDynamicCast();

  if (([v5 isDraggingChecklistItem] & 1) == 0)
  {
    [(ICLayoutManager *)self handleTodoButtonPress:buttonCopy];
  }
}

- (void)handleTodoButtonPress:(id)press
{
  pressCopy = press;
  icTextView = [(ICLayoutManager *)self icTextView];
  delegate = [icTextView delegate];
  textView = [(ICBaseLayoutManager *)self textView];
  v8 = [delegate textViewShouldBeginEditing:textView];

  trackedParagraph = [pressCopy trackedParagraph];
  characterRange = [trackedParagraph characterRange];
  if (!v8)
  {
    goto LABEL_19;
  }

  v12 = characterRange;
  v13 = v11;
  isDone = [pressCopy isDone];
  textController = [(ICBaseLayoutManager *)self textController];
  textStorage = [(ICLayoutManager *)self textStorage];
  v17 = [textController setDone:isDone ^ 1u range:v12 inTextStorage:{v13, textStorage}];

  if (v17)
  {
    [pressCopy setDone:isDone ^ 1u];
    [pressCopy wasPressed];
    icTextView2 = [(ICLayoutManager *)self icTextView];
    icDelegate = [icTextView2 icDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      icTextView3 = [(ICLayoutManager *)self icTextView];
      icDelegate2 = [icTextView3 icDelegate];
      [icDelegate2 didInvokeAnalyticsChecklistActionChecked:isDone ^ 1u];
    }
  }

  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

  if (isMenuVisible)
  {
    mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
    [mEMORY[0x277D75718]2 setMenuVisible:0 animated:1];
  }

  textView2 = [(ICBaseLayoutManager *)self textView];
  if ([textView2 isFirstResponder])
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

    textView2 = [(ICBaseLayoutManager *)self textView];
    [textView2 setSelectedRange:{v12, 0}];
  }

LABEL_13:
  if (v17)
  {
    textView3 = [(ICBaseLayoutManager *)self textView];
    delegate2 = [textView3 delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      textView4 = [(ICBaseLayoutManager *)self textView];
      delegate3 = [textView4 delegate];
      textView5 = [(ICBaseLayoutManager *)self textView];
      [delegate3 textViewDidChange:textView5];
    }

    objc_opt_class();
    icTextView4 = [(ICLayoutManager *)self icTextView];
    v35 = ICDynamicCast();

    if (v35)
    {
      objc_initWeak(&location, self);
      textController2 = [(ICBaseLayoutManager *)self textController];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __41__ICLayoutManager_handleTodoButtonPress___block_invoke;
      v37[3] = &unk_2781ACC10;
      objc_copyWeak(&v38, &location);
      [textController2 autoSortChecklistIfNecessaryForTrackedParagraph:trackedParagraph textView:v35 analyticsHandler:v37];

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
    textView = [(ICBaseLayoutManager *)self textView];
    v7 = [v3 initWithSubTrackerName:v5 view:textView];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
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

- (BOOL)selectedRangesIntersectWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  textView = [(ICBaseLayoutManager *)self textView];
  ic_selectedRanges = [textView ic_selectedRanges];

  v7 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(ic_selectedRanges);
        }

        rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v13.location = rangeValue;
        v13.length = v12;
        if (v12 || (rangeValue >= location ? (v14 = rangeValue - location >= length) : (v14 = 1), v14))
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

      v8 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v4 = [todoButtonsByTrackingUUID countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(todoButtonsByTrackingUUID);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        todoButtonsByTrackingUUID2 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
        v10 = [todoButtonsByTrackingUUID2 objectForKeyedSubscript:v8];

        [v10 removeFromSuperview];
        uUIDString = [v8 UUIDString];
        [(ICLayoutManager *)self clearSupplementalViewForIdentifier:uUIDString];

        ++v7;
      }

      while (v5 != v7);
      v5 = [todoButtonsByTrackingUUID countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  todoButtonsByTrackingUUID3 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [todoButtonsByTrackingUUID3 removeAllObjects];
}

- (void)prepareForScreenshotWithVisibleRange:(_NSRange)range
{
  [(ICLayoutManager *)self setShouldManuallyRenderSeparateSubviews:1, range.length];

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
  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v5 = [todoButtonsByTrackingUUID countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(todoButtonsByTrackingUUID);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        todoButtonsByTrackingUUID2 = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
        v11 = [todoButtonsByTrackingUUID2 objectForKeyedSubscript:v9];

        if (([v11 isHidden] & 1) == 0)
        {
          [v11 setHidden:1];
          [v3 ic_addNonNilObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [todoButtonsByTrackingUUID countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  hiddenTodosForManualLayout = [(ICLayoutManager *)self hiddenTodosForManualLayout];
  v4 = [hiddenTodosForManualLayout copy];

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

- (void)layoutViewForInlineTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index
{
  attachmentCopy = attachment;
  inlineAttachmentLocationCache = [(ICLayoutManager *)self inlineAttachmentLocationCache];
  viewIdentifier = [attachmentCopy viewIdentifier];
  [inlineAttachmentLocationCache setLocation:index forTextAttachmentOfViewIdentifier:viewIdentifier];

  objc_opt_class();
  supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
  viewIdentifier2 = [attachmentCopy viewIdentifier];

  v11 = [supplementalViewControllers objectForKeyedSubscript:viewIdentifier2];
  v13 = ICDynamicCast();

  v12 = v13;
  if (v13)
  {
    [v13 layoutWithStyleAttributesOfCharacterIndex:index];
    v12 = v13;
  }
}

- (void)manuallyRenderSubviewsForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke;
  aBlock[3] = &__block_descriptor_40_e22_v24__0__UIView_8B16B20l;
  aBlock[4] = CurrentContext;
  v7 = _Block_copy(aBlock);
  textStorage = [(ICLayoutManager *)self textStorage];
  v9 = *MEMORY[0x277D74060];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__ICLayoutManager_manuallyRenderSubviewsForCharacterRange___block_invoke_2;
  v20[3] = &unk_2781ACC58;
  v20[4] = self;
  v10 = v7;
  v21 = v10;
  [textStorage enumerateAttribute:v9 inRange:location options:length usingBlock:{0, v20}];

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

- (id)todoButtonsForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x277CBEB18] array];
  textStorage = [(ICLayoutManager *)self textStorage];
  v8 = *MEMORY[0x277D35DA8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__ICLayoutManager_todoButtonsForCharacterRange___block_invoke;
  v15 = &unk_2781ACAF8;
  selfCopy = self;
  v17 = array;
  v9 = array;
  [textStorage ic_enumerateUnclampedAttribute:v8 inRange:location options:length usingBlock:{0, &v12}];

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

- (id)trackedTodoParagraphAtIndexIfExists:(unint64_t)exists
{
  v4 = [(ICLayoutManager *)self paragraphStyleForCharacterIndex:exists];
  trackedToDoParagraphs = [(ICLayoutManager *)self trackedToDoParagraphs];
  todoTrackingUUID = [v4 todoTrackingUUID];
  v7 = [trackedToDoParagraphs ic_objectForNonNilKey:todoTrackingUUID];

  return v7;
}

- (id)todoButtonForTrackedParagraphIfExists:(id)exists
{
  paragraph = [exists paragraph];
  todoTrackingUUID = [paragraph todoTrackingUUID];

  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  v7 = [todoButtonsByTrackingUUID ic_objectForNonNilKey:todoTrackingUUID];

  return v7;
}

- (unint64_t)lineCountForCharacterRange:(_NSRange)range
{
  v3 = range.location + range.length;
  if (__CFADD__(range.location, range.length))
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

- (void)cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          viewIdentifier = [v10 viewIdentifier];

          if (!viewIdentifier)
          {
            [v10 removeFromSuperview];
            [dictionaryCopy removeObjectForKey:v9];
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)cleanupStaleTodoButtons
{
  v24 = *MEMORY[0x277D85DE8];
  activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
  [(ICLayoutManager *)self cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:activeSupplementalViews];

  hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
  [(ICLayoutManager *)self cleanupStaleTodoButtonsAndUpdateSupplementalViewsForDictionary:hiddenSupplementalViews];

  icTextView = [(ICLayoutManager *)self icTextView];
  containerViewForAttachments = [icTextView containerViewForAttachments];
  subviews = [containerViewForAttachments subviews];
  v8 = [subviews copy];

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
        viewIdentifier = [v15 viewIdentifier];
        v17 = viewIdentifier;
        if (v15)
        {
          v18 = viewIdentifier == 0;
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

- (void)updateSubviewsForCharacterRange:(_NSRange)range atPoint:(CGPoint)point
{
  length = range.length;
  location = range.location;
  [(ICLayoutManager *)self setCachedOrigin:point.x, point.y];

  [(ICLayoutManager *)self updateSubviewsForCharacterRange:location, length];
}

- (void)updateSubviewsForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textStorage = [(ICLayoutManager *)self textStorage];
  v7 = *MEMORY[0x277D35DA8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ICLayoutManager_updateSubviewsForCharacterRange___block_invoke;
  v8[3] = &unk_2781ACC80;
  v8[4] = self;
  [textStorage ic_enumerateUnclampedAttribute:v7 inRange:location options:length usingBlock:{0, v8}];
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
  supplementalViewControllers = [self supplementalViewControllers];
  allKeys = [supplementalViewControllers allKeys];
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v3, v4, "Cleaning up remaining view controllers after clearing supplemental views: %@", v5, v6, v7, v8, 2u);
}

- (void)clearAllTodoSupplementalViews
{
  v20 = *MEMORY[0x277D85DE8];
  activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
  allValues = [activeSupplementalViews allValues];
  hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
  allValues2 = [hiddenSupplementalViews allValues];
  v7 = [allValues arrayByAddingObjectsFromArray:allValues2];

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

  todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
  [todoButtonsByTrackingUUID removeAllObjects];
}

- (void)textStorageDidEndEditingNotification:(id)notification
{
  object = [notification object];
  textStorage = [(ICLayoutManager *)self textStorage];

  if (object == textStorage)
  {

    [(ICLayoutManager *)self clearRemovedAttachmentsIfNeeded];
  }
}

- (void)removeClearingControllerForView:(id)view
{
  viewCopy = view;
  viewIdentifier = [viewCopy viewIdentifier];
  if (!viewIdentifier)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICLayoutManager removeClearingControllerForView:viewCopy];
    }
  }

  [(ICLayoutManager *)self removeClearingControllerForView:viewCopy viewIdentifier:viewIdentifier];
}

- (void)removeClearingControllerForView:(id)view viewIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    supplementalViewProviders = [(ICLayoutManager *)self supplementalViewProviders];
    v8 = [supplementalViewProviders objectForKeyedSubscript:identifierCopy];

    objc_opt_class();
    supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
    v10 = [supplementalViewControllers objectForKeyedSubscript:identifierCopy];
    v11 = ICDynamicCast();
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  [v11 willMoveToParentViewController:0];
  textAttachment = [v8 textAttachment];

  if (textAttachment)
  {
    textAttachment2 = [v8 textAttachment];
    superview = [viewCopy superview];
    [textAttachment2 detachView:viewCopy fromParentView:superview];

    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [viewCopy removeFromSuperview];
  if (v11)
  {
LABEL_6:
    supplementalViewControllers2 = [(ICLayoutManager *)self supplementalViewControllers];
    [supplementalViewControllers2 removeObjectForKey:identifierCopy];
  }

LABEL_7:
  if (identifierCopy)
  {
    supplementalViewProviders2 = [(ICLayoutManager *)self supplementalViewProviders];
    [supplementalViewProviders2 removeObjectForKey:identifierCopy];

    inlineAttachmentLocationCache = [(ICLayoutManager *)self inlineAttachmentLocationCache];
    [inlineAttachmentLocationCache forgetLocationForViewIdentifier:identifierCopy];
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
  textStorage = [(ICLayoutManager *)self textStorage];
  v5 = *MEMORY[0x277D74060];
  textStorage2 = [(ICLayoutManager *)self textStorage];
  v7 = [textStorage2 length];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__ICLayoutManager__clearRemovedAttachments__block_invoke;
  v36[3] = &unk_2781AC5D8;
  v8 = v3;
  v37 = v8;
  [textStorage enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v36}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
  v39[0] = hiddenSupplementalViews;
  activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
  v39[1] = activeSupplementalViews;
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
        allKeys = [v13 allKeys];
        v15 = [allKeys copy];

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
                  delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
                  [delayedScrollOutViewDictionary removeObjectForKey:v20];
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

- (void)setNeedsClearRemovedAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  if (attachments)
  {
    objc_opt_class();
    textStorage = [(ICLayoutManager *)self textStorage];
    v6 = ICDynamicCast();
    isEditing = [v6 isEditing];

    if ((isEditing & 1) == 0)
    {
      [(ICLayoutManager *)self _clearRemovedAttachments];
      attachmentsCopy = 0;
    }
  }

  self->_needsClearRemovedAttachments = attachmentsCopy;
}

- (void)ensureViewIsAddedForAttachment:(id)attachment inCharacterRange:(_NSRange)range
{
  attachmentCopy = attachment;
  v5 = [(ICLayoutManager *)self viewForTextAttachment:?];
  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = v6;
  if (v6)
  {
    attachment = [v6 attachment];
    attachment2 = [attachmentCopy attachment];

    if (attachment != attachment2)
    {
      [(ICLayoutManager *)self clearViewForTextAttachment:attachmentCopy];
      v10 = [(ICLayoutManager *)self viewForTextAttachment:attachmentCopy];

      v5 = v10;
    }
  }

  viewIdentifier = [attachmentCopy viewIdentifier];
  [(ICLayoutManager *)self unhideSupplementalView:v5 forIdentifier:viewIdentifier];
}

- (_NSRange)rangeForAttachment:(id)attachment withTextAttachment:(id *)textAttachment
{
  attachmentCopy = attachment;
  textStorage = [(ICLayoutManager *)self textStorage];
  v8 = [textStorage ic_rangeForAttachment:attachmentCopy withTextAttachment:textAttachment];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)rangeForBaseAttachment:(id)attachment withTextAttachment:(id *)textAttachment
{
  attachmentCopy = attachment;
  textStorage = [(ICLayoutManager *)self textStorage];
  v8 = [textStorage ic_rangeForBaseAttachment:attachmentCopy withTextAttachment:textAttachment];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)enumerateAttachmentViewsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  textStorage = [(ICLayoutManager *)self textStorage];
  v9 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ICLayoutManager_enumerateAttachmentViewsInRange_usingBlock___block_invoke;
  v11[3] = &unk_2781ACCA8;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [textStorage enumerateAttribute:v9 inRange:location options:length usingBlock:{0, v11}];
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

- (id)viewProviderForTextAttachment:(id)attachment parentView:(id)view characterIndex:(unint64_t)index
{
  attachmentCopy = attachment;
  viewCopy = view;
  viewIdentifier = [attachmentCopy viewIdentifier];
  supplementalViewProviders = [(ICLayoutManager *)self supplementalViewProviders];
  v12 = [supplementalViewProviders objectForKeyedSubscript:viewIdentifier];

  if (!v12)
  {
    v13 = MEMORY[0x277D74270];
    fileType = [attachmentCopy fileType];
    v15 = [v13 textAttachmentViewProviderClassForFileType:fileType];

    if ((([v15 isSubclassOfClass:objc_opt_class()] & 1) == 0 && v15 || objc_msgSend(attachmentCopy, "isUnsupported") && (v17 = MEMORY[0x277D35F70], objc_msgSend(attachmentCopy, "fileType"), v18 = objc_claimAutoreleasedReturnValue(), LODWORD(v17) = objc_msgSend(v17, "typeUTIIsInlineAttachment:", v18), v18, v17) && (v15 = objc_msgSend(MEMORY[0x277D74270], "textAttachmentViewProviderClassForFileType:", *MEMORY[0x277D35D48])) != 0) && !objc_msgSend(attachmentCopy, "isUnsupported"))
    {
      v16 = 0;
    }

    else
    {
      v15 = objc_opt_class();
      v16 = 1;
    }

    v12 = [[v15 alloc] initWithTextAttachment:attachmentCopy parentView:viewCopy characterIndex:index layoutManager:self];
    if (v16 && viewIdentifier)
    {
      supplementalViewProviders2 = [(ICLayoutManager *)self supplementalViewProviders];
      [supplementalViewProviders2 setObject:v12 forKeyedSubscript:viewIdentifier];
    }
  }

  return v12;
}

- (void)willPlaceView:(id)view forTextAttachment:(id)attachment
{
  viewCopy = view;
  attachmentCopy = attachment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    textContainer = [(ICBaseLayoutManager *)self textContainer];
    [attachmentCopy attachmentSizeForTextContainer:textContainer];
    [v7 setAttachmentContentSize:?];
  }
}

- (void)didAddViewForTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  icTextView = [(ICLayoutManager *)self icTextView];

  if (!icTextView)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.icTextView) != nil)" functionName:"-[ICLayoutManager didAddViewForTextAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.icTextView"}];
  }

  supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
  viewIdentifier = [attachmentCopy viewIdentifier];

  v16 = [supplementalViewControllers objectForKeyedSubscript:viewIdentifier];

  if (v16)
  {
    editingTextView = [(ICLayoutManager *)self editingTextView];
    editorController = [editingTextView editorController];
    textViewController = [editorController textViewController];
    [textViewController addChildViewController:v16];

    editingTextView2 = [(ICLayoutManager *)self editingTextView];
    editorController2 = [editingTextView2 editorController];
    textViewController2 = [editorController2 textViewController];
    [v16 didMoveToParentViewController:textViewController2];

    highlightPatternRegexFinder = [(ICLayoutManager *)self highlightPatternRegexFinder];
    objc_opt_class();
    v15 = ICDynamicCast();
    [v15 setHighlightPatternRegexFinder:highlightPatternRegexFinder];
  }
}

- (id)paragraphStyleForCharacterIndex:(unint64_t)index
{
  textStorage = [(ICLayoutManager *)self textStorage];
  v5 = [textStorage attribute:*MEMORY[0x277D35DA8] atIndex:index effectiveRange:0];

  return v5;
}

- (void)receivedMemoryWarning:(id)warning
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(ICLayoutManager *)self delayedScrollOutViewDictionary:warning];
  allKeys = [v4 allKeys];
  v6 = [allKeys copy];

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

        delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        [delayedScrollOutViewDictionary removeObjectForKey:v11];

        [v13 didScrollOutOfVisibleRange];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  delayedScrollOutViewDictionary2 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  [delayedScrollOutViewDictionary2 removeAllObjects];

  updateHiddenViewsSelectorDelayer = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  [updateHiddenViewsSelectorDelayer cancelPreviousFireRequests];
}

- (void)updateHiddenSupplementalViews
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  allKeys = [delayedScrollOutViewDictionary allKeys];
  v5 = [allKeys copy];

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
        delayedScrollOutViewDictionary2 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        v12 = [delayedScrollOutViewDictionary2 objectForKeyedSubscript:v10];

        [v12 timeIntervalSinceNow];
        if (v13 <= -0.1)
        {
          objc_opt_class();
          v14 = [(ICLayoutManager *)self supplementalViewForIdentifier:v10 allowHiddenViews:1];
          v15 = ICDynamicCast();

          delayedScrollOutViewDictionary3 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
          [delayedScrollOutViewDictionary3 removeObjectForKey:v10];

          [v15 didScrollOutOfVisibleRange];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  delayedScrollOutViewDictionary4 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  v18 = [delayedScrollOutViewDictionary4 count];

  updateHiddenViewsSelectorDelayer = [(ICLayoutManager *)self updateHiddenViewsSelectorDelayer];
  v20 = updateHiddenViewsSelectorDelayer;
  if (v18)
  {
    [updateHiddenViewsSelectorDelayer requestFire];
  }

  else
  {
    [updateHiddenViewsSelectorDelayer cancelPreviousFireRequests];
  }
}

- (BOOL)unhideSupplementalView:(id)view forIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v19 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_2151A1000, v19, OS_LOG_TYPE_DEFAULT, "Asked to unhide a view with a nil identifier", v21, 2u);
    }

    goto LABEL_9;
  }

  delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  v9 = [delayedScrollOutViewDictionary objectForKey:identifierCopy];

  delayedScrollOutViewDictionary2 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
  [delayedScrollOutViewDictionary2 removeObjectForKey:identifierCopy];

  hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
  v12 = [hiddenSupplementalViews objectForKey:identifierCopy];

  if (!v12)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  hiddenSupplementalViews2 = [(ICLayoutManager *)self hiddenSupplementalViews];
  [hiddenSupplementalViews2 removeObjectForKey:identifierCopy];

  activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
  [activeSupplementalViews setObject:viewCopy forKeyedSubscript:identifierCopy];

  highlightPatternRegexFinder = [(ICLayoutManager *)self highlightPatternRegexFinder];
  objc_opt_class();
  v16 = ICDynamicCast();
  [v16 setHighlightPatternRegexFinder:highlightPatternRegexFinder];

  [viewCopy setHidden:0];
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

- (void)hideSupplementalView:(id)view forIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    v9 = [activeSupplementalViews objectForKey:identifierCopy];

    if (!v9)
    {
LABEL_16:
      [(ICLayoutManager *)self updateHiddenSupplementalViews];
      goto LABEL_17;
    }

    objc_opt_class();
    supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
    v11 = [supplementalViewControllers objectForKeyedSubscript:identifierCopy];
    v12 = ICDynamicCast();

    if (!v12 || ([v12 isInResponderChain] & 1) == 0)
    {
      activeSupplementalViews2 = [(ICLayoutManager *)self activeSupplementalViews];
      [activeSupplementalViews2 removeObjectForKey:identifierCopy];

      hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
      [hiddenSupplementalViews setObject:viewCopy forKeyedSubscript:identifierCopy];

      [viewCopy setHidden:1];
    }

    objc_opt_class();
    v15 = ICDynamicCast();
    v16 = v15;
    if (v15)
    {
      cancelDidScrollIntoVisibleRange = [v15 cancelDidScrollIntoVisibleRange];
      delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
      date = delayedScrollOutViewDictionary;
      if (cancelDidScrollIntoVisibleRange)
      {
        [delayedScrollOutViewDictionary removeObjectForKey:identifierCopy];
LABEL_14:

        goto LABEL_15;
      }

      v21 = [delayedScrollOutViewDictionary objectForKeyedSubscript:identifierCopy];

      if (!v21)
      {
        date = [MEMORY[0x277CBEAA8] date];
        delayedScrollOutViewDictionary2 = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
        [delayedScrollOutViewDictionary2 setObject:date forKeyedSubscript:identifierCopy];

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
  textView = [(ICBaseLayoutManager *)self textView];
  [textView bounds];
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
      textContainer = [(ICBaseLayoutManager *)self textContainer];
      [(ICLayoutManager *)self ensureLayoutForBoundingRect:textContainer inTextContainer:v24, v26, v28, v30];
    }
  }
}

- (void)invalidateLayoutForCharacterRange:(_NSRange)range actualCharacterRange:(_NSRange *)characterRange
{
  length = range.length;
  location = range.location;
  if (![(ICLayoutManager *)self isSettingLinkTextAttributes])
  {
    [(ICLayoutManager *)self clearLayoutEnsuredBounds];
    v8.receiver = self;
    v8.super_class = ICLayoutManager;
    [(ICLayoutManager *)&v8 invalidateLayoutForCharacterRange:location actualCharacterRange:length, characterRange];
  }
}

- (void)ensureLayoutForTextContainer:(id)container
{
  v4 = *MEMORY[0x277CBF390];
  v5 = *(MEMORY[0x277CBF390] + 8);
  v6 = *(MEMORY[0x277CBF390] + 16);
  v7 = *(MEMORY[0x277CBF390] + 24);
  containerCopy = container;
  [(ICLayoutManager *)self setLayoutEnsuredBounds:v4, v5, v6, v7];
  v9.receiver = self;
  v9.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v9 ensureLayoutForTextContainer:containerCopy];
}

- (CGRect)boundingRectForGlyphRange:(_NSRange)range inTextContainer:(id)container
{
  length = range.length;
  location = range.location;
  v43 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v41.receiver = self;
  v41.super_class = ICLayoutManager;
  [(ICLayoutManager *)&v41 boundingRectForGlyphRange:location inTextContainer:length, containerCopy];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  if ([(ICLayoutManager *)self isDraggingChecklistItem])
  {
    v16 = [(ICLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v18 = v17;
    v19 = [(ICLayoutManager *)self paragraphStyleForCharacterIndex:v16];
    writingDirection = [v19 writingDirection];
    v21 = [(ICLayoutManager *)self todoButtonsForCharacterRange:v16, v18];
    [containerCopy textContainerOrigin];
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

    if (writingDirection != 1)
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
  textStorage = [(ICLayoutManager *)self textStorage];

  if (textStorage)
  {
    textView = [(ICBaseLayoutManager *)self textView];
    [textView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    textContainer = [(ICBaseLayoutManager *)self textContainer];
    [(ICLayoutManager *)self ensureLayoutForBoundingRect:textContainer inTextContainer:v6, v8, v10, v12];

    textContainer2 = [(ICBaseLayoutManager *)self textContainer];
    v15 = [(ICLayoutManager *)self glyphRangeForBoundingRect:textContainer2 inTextContainer:v6, v8, v10, v12];
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
    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    allValues = [activeSupplementalViews allValues];
    v28 = [v25 setWithArray:allValues];

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
          viewIdentifier = [v34 viewIdentifier];
          [(ICLayoutManager *)self hideSupplementalView:v34 forIdentifier:viewIdentifier];
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
  textView = [(ICBaseLayoutManager *)self textView];
  textStorage = [textView textStorage];

  v5 = *MEMORY[0x277D74060];
  v6 = [textStorage length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ICLayoutManager_updateInlineDrawingViews__block_invoke;
  v7[3] = &unk_2781AC5D8;
  v7[4] = self;
  [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v7}];
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
  textView = [(ICBaseLayoutManager *)self textView];
  v4 = ICDynamicCast();

  return v4;
}

- (void)attachmentDidLoad:(id)load
{
  loadCopy = load;
  v5 = MEMORY[0x277D35E00];
  v29 = loadCopy;
  object = [loadCopy object];
  textController = [(ICBaseLayoutManager *)self textController];
  note = [textController note];
  managedObjectContext = [note managedObjectContext];
  v10 = [v5 ic_existingObjectWithID:object context:managedObjectContext];

  if (v10)
  {
    v11 = 0;
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x277D35EF8];
    object2 = [v29 object];
    textController2 = [(ICBaseLayoutManager *)self textController];
    note2 = [textController2 note];
    managedObjectContext2 = [note2 managedObjectContext];
    v12 = [v13 ic_existingObjectWithID:object2 context:managedObjectContext2];

    v11 = v12;
  }

  v18 = v12;
  note3 = [v18 note];
  textController3 = [(ICBaseLayoutManager *)self textController];
  note4 = [textController3 note];
  v22 = [note3 isEqual:note4];

  if (v22)
  {
    v23 = [(ICLayoutManager *)self rangeForBaseAttachment:v18 withTextAttachment:0];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v23;
      v26 = v24;
      objc_opt_class();
      textStorage = [(ICLayoutManager *)self textStorage];
      v28 = ICDynamicCast();

      [(ICLayoutManager *)self filterAttachmentsInTextStorage:v28 range:v25 targetAttachment:v26, v18];
      [(ICLayoutManager *)self invalidateLayoutForCharacterRange:v25 actualCharacterRange:v26, 0];
    }
  }
}

- (void)filterAttachmentsInTextStorage:(id)storage range:(_NSRange)range targetAttachment:(id)attachment
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  note = [attachment note];
  [note filterAttachmentsInTextStorage:storageCopy range:{location, length}];
}

- (void)mediaDidLoad:(id)load
{
  v4 = MEMORY[0x277D35F18];
  object = [load object];
  textController = [(ICBaseLayoutManager *)self textController];
  note = [textController note];
  managedObjectContext = [note managedObjectContext];
  v13 = [v4 ic_existingObjectWithID:object context:managedObjectContext];

  attachment = [v13 attachment];
  note2 = [attachment note];
  textController2 = [(ICBaseLayoutManager *)self textController];
  note3 = [textController2 note];

  if (note2 == note3)
  {
    [(ICLayoutManager *)self invalidateLayoutForAttachment:attachment];
  }
}

- (void)invalidateLayoutForAttachment:(id)attachment
{
  v4 = [(ICLayoutManager *)self rangeForAttachment:attachment withTextAttachment:0];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(ICLayoutManager *)self invalidateLayoutForCharacterRange:v4 actualCharacterRange:v5, 0];
  }
}

- (void)attachmentInlineDrawingMergeableDataDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  object = [changeCopy object];

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

- (id)supplementalViewForIdentifier:(id)identifier allowHiddenViews:(BOOL)views
{
  viewsCopy = views;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    v8 = [activeSupplementalViews objectForKeyedSubscript:identifierCopy];

    if (!v8 && viewsCopy)
    {
      hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
      v8 = [hiddenSupplementalViews objectForKeyedSubscript:identifierCopy];
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

- (void)clearSupplementalViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    [activeSupplementalViews removeObjectForKey:identifierCopy];

    hiddenSupplementalViews = [(ICLayoutManager *)self hiddenSupplementalViews];
    [hiddenSupplementalViews removeObjectForKey:identifierCopy];

    delayedScrollOutViewDictionary = [(ICLayoutManager *)self delayedScrollOutViewDictionary];
    [delayedScrollOutViewDictionary removeObjectForKey:identifierCopy];
  }

  else
  {
    delayedScrollOutViewDictionary = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(delayedScrollOutViewDictionary, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2151A1000, delayedScrollOutViewDictionary, OS_LOG_TYPE_DEFAULT, "Asked to clear a supplemental view for a nil-identifier", v8, 2u);
    }
  }
}

- (id)viewForTextAttachment:(id)attachment initialCharacterIndex:(unint64_t)index
{
  v55 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v7 = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:attachmentCopy];
  if (v7)
  {
    viewIdentifier = v7;
    textContainer = [(ICBaseLayoutManager *)self textContainer];
    [attachmentCopy attachmentViewClassForTextContainer:textContainer];
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

    [(ICLayoutManager *)self clearViewForTextAttachment:attachmentCopy];
  }

  viewIdentifier = [attachmentCopy viewIdentifier];

  if (viewIdentifier)
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
      inlineAttachmentLocationCache = [(ICLayoutManager *)self inlineAttachmentLocationCache];
      viewIdentifier2 = [attachmentCopy viewIdentifier];
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        index = [inlineAttachmentLocationCache locationForTextAttachmentOfViewIdentifier:viewIdentifier2];
      }

      else
      {
        [inlineAttachmentLocationCache setLocation:index forTextAttachmentOfViewIdentifier:viewIdentifier2];
      }
    }

    v15 = [attachmentCopy newlyCreatedViewControllerForManualRendering:v12 layoutManager:self initialCharacterIndex:index];
    if (v15)
    {
      highlightPatternRegexFinder = [(ICLayoutManager *)self highlightPatternRegexFinder];
      objc_opt_class();
      v17 = ICDynamicCast();
      [v17 setHighlightPatternRegexFinder:highlightPatternRegexFinder];

      supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
      viewIdentifier3 = [attachmentCopy viewIdentifier];
      [supplementalViewControllers setObject:v15 forKeyedSubscript:viewIdentifier3];

      viewIdentifier = [v15 view];
    }

    else
    {
      if ([(ICLayoutManager *)self shouldManuallyRenderSeparateSubviews]&& ![(ICLayoutManager *)self isRenderingPreviewForDragAndDrop])
      {
        textContainer2 = [(ICBaseLayoutManager *)self textContainer];
        v21 = [attachmentCopy newlyCreatedViewForManualRenderingInTextContainer:textContainer2];
      }

      else
      {
        textContainer2 = [(ICBaseLayoutManager *)self textContainer];
        v21 = [attachmentCopy newlyCreatedViewForTextContainer:textContainer2];
      }

      viewIdentifier = v21;
    }

    activeSupplementalViews = [(ICLayoutManager *)self activeSupplementalViews];
    viewIdentifier4 = [attachmentCopy viewIdentifier];
    [activeSupplementalViews setObject:viewIdentifier forKeyedSubscript:viewIdentifier4];

    objc_opt_class();
    v24 = ICDynamicCast();
    highlightPatternRegexFinder2 = [(ICLayoutManager *)self highlightPatternRegexFinder];
    [v24 setHighlightPatternRegexFinder:highlightPatternRegexFinder2];

    textController = [(ICBaseLayoutManager *)self textController];
    authorHighlightsController = [textController authorHighlightsController];

    if (authorHighlightsController)
    {
      [attachmentCopy foregroundAlpha];
      [v24 setForegroundAlpha:?];
      highlightColor = [attachmentCopy highlightColor];
      [v24 setHighlightColor:highlightColor];
    }

    attachment = [attachmentCopy attachment];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = attachment;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        managedObjectContext = [v30 managedObjectContext];
        ic_isMainThreadContext = [managedObjectContext ic_isMainThreadContext];

        if (ic_isMainThreadContext)
        {
          v33 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            shortLoggingDescription = [v30 shortLoggingDescription];
            v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v30, "markedForDeletion")}];
            v34 = MEMORY[0x277CCABB0];
            mergeableData = [v30 mergeableData];
            v40 = [v34 numberWithUnsignedInteger:{objc_msgSend(mergeableData, "length")}];
            media = [v30 media];
            shortLoggingDescription2 = [media shortLoggingDescription];
            *buf = 138413314;
            v46 = shortLoggingDescription;
            v47 = 2112;
            v48 = v43;
            v49 = 2112;
            v50 = v40;
            v51 = 2112;
            v52 = attachmentCopy;
            v53 = 2112;
            v54 = shortLoggingDescription2;
            v36 = shortLoggingDescription2;
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
    v37 = viewIdentifier;
    attachmentViewDelegate = [(ICLayoutManager *)self attachmentViewDelegate];
    [v37 setDelegate:attachmentViewDelegate];
  }

  return viewIdentifier;
}

- (id)viewForTextAttachmentNoCreate:(id)create
{
  attachmentIdentifier = [create attachmentIdentifier];
  v5 = [(ICLayoutManager *)self supplementalViewForIdentifier:attachmentIdentifier allowHiddenViews:1];

  return v5;
}

- (id)viewForBaseTextAttachmentNoCreate:(id)create
{
  createCopy = create;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:createCopy];
  }

  else
  {
    attachment = [createCopy attachment];
    v7 = [(ICLayoutManager *)self viewProviderForTextAttachment:createCopy characterIndex:[(ICLayoutManager *)self rangeForAttachment:attachment withTextAttachment:0]];
    view = [v7 view];
  }

  return view;
}

- (id)viewControllerForTextAttachment:(id)attachment createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  attachmentCopy = attachment;
  supplementalViewControllers = [(ICLayoutManager *)self supplementalViewControllers];
  viewIdentifier = [attachmentCopy viewIdentifier];
  v9 = [supplementalViewControllers objectForKeyedSubscript:viewIdentifier];

  if (!v9 && neededCopy)
  {
    v10 = [(ICLayoutManager *)self viewForTextAttachment:attachmentCopy];
    supplementalViewControllers2 = [(ICLayoutManager *)self supplementalViewControllers];
    viewIdentifier2 = [attachmentCopy viewIdentifier];
    v9 = [supplementalViewControllers2 objectForKeyedSubscript:viewIdentifier2];

    highlightPatternRegexFinder = [(ICLayoutManager *)self highlightPatternRegexFinder];
    objc_opt_class();
    v14 = ICDynamicCast();
    [v14 setHighlightPatternRegexFinder:highlightPatternRegexFinder];
  }

  return v9;
}

- (void)clearViewsForAllTextAttachmentsThatSupportThumbnailMode
{
  textStorage = [(ICLayoutManager *)self textStorage];
  v4 = [textStorage length];

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

- (void)clearViewForTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = [(ICLayoutManager *)self viewForTextAttachmentNoCreate:?];
  if (v4)
  {
    viewIdentifier = [attachmentCopy viewIdentifier];
    [(ICLayoutManager *)self clearSupplementalViewForIdentifier:viewIdentifier];

    viewIdentifier2 = [attachmentCopy viewIdentifier];
    [(ICLayoutManager *)self removeClearingControllerForView:v4 viewIdentifier:viewIdentifier2];
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
  textStorage = [(ICLayoutManager *)self textStorage];
  v4 = [textStorage length];

  textStorage2 = [(ICLayoutManager *)self textStorage];
  v6 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__ICLayoutManager_invalidateLayoutAfterAttachmentViewTypeChange__block_invoke;
  v9[3] = &unk_2781AC5D8;
  v9[4] = self;
  [textStorage2 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v9}];

  textView = [(ICBaseLayoutManager *)self textView];
  textContainer = [textView textContainer];
  [(ICLayoutManager *)self ensureLayoutForTextContainer:textContainer];
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

- (void)fillBackgroundRectArray:(const CGRect *)array count:(unint64_t)count forCharacterRange:(_NSRange)range color:(id)color
{
  countCopy = count;
  [color set];
  if (countCopy)
  {
    p_size = &array->size;
    do
    {
      width = p_size[-1].width;
      height = p_size[-1].height;
      v11 = p_size->width;
      v12 = p_size->height;
      p_size += 2;
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:width cornerRadius:{height, v11, v12, 3.0}];
      [v13 fill];

      --countCopy;
    }

    while (countCopy);
  }
}

- (id)linkAttributesForLink:(id)link forCharacterAtIndex:(unint64_t)index
{
  defaultLinkTextAttributes = [MEMORY[0x277D36708] defaultLinkTextAttributes];
  v7 = [defaultLinkTextAttributes mutableCopy];

  mEMORY[0x277D04328] = [MEMORY[0x277D04328] sharedController];
  textStorage = [(ICLayoutManager *)self textStorage];
  v10 = [mEMORY[0x277D04328] preferredTextAttributesForLinkAtCharacterIndex:index ofStorage:textStorage];

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

  textStorage2 = [(ICLayoutManager *)self textStorage];
  v16 = [textStorage2 attribute:*MEMORY[0x277D36008] atIndex:index effectiveRange:0];
  [v16 floatValue];
  v18 = v17;

  objc_opt_class();
  v19 = *MEMORY[0x277D740C0];
  v20 = [v14 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
  v21 = ICDynamicCast();

  v22 = fabs(v18);
  if (v22 >= 0.00999999978)
  {
    preferredDefaultFontColor = [MEMORY[0x277D75348] preferredDefaultFontColor];
    v24 = [v21 ic_colorBlendedWithColor:preferredDefaultFontColor fraction:v22];

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

- (id)icaxTodoButtonForParagraphStyle:(id)style
{
  styleCopy = style;
  trackedToDoParagraphs = [(ICLayoutManager *)self trackedToDoParagraphs];
  todoTrackingUUID = [styleCopy todoTrackingUUID];

  v7 = [trackedToDoParagraphs objectForKeyedSubscript:todoTrackingUUID];

  if (v7)
  {
    todoButtonsByTrackingUUID = [(ICLayoutManager *)self todoButtonsByTrackingUUID];
    paragraph = [v7 paragraph];
    todoTrackingUUID2 = [paragraph todoTrackingUUID];
    v11 = [todoButtonsByTrackingUUID objectForKeyedSubscript:todoTrackingUUID2];
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