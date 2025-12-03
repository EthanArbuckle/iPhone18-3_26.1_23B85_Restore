@interface ICAttributionSidebarView
- (BOOL)accessibilityElementsHidden;
- (ICAttributionSidebarView)init;
- (ICAuthorHighlightsUpdater)authorHighlightsUpdater;
- (ICTextView)textView;
- (double)fullContentWidth;
- (void)analyticsSessionWillEnd:(id)end;
- (void)focusAttributionView:(id)view;
- (void)handleTapGesture:(id)gesture;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reload;
- (void)reloadAttributionsWithCompletion:(id)completion;
- (void)removeAllAttributionViews;
- (void)renderAttributionView:(id)view;
- (void)renderAttributions;
- (void)scrollToRangeIfNeeded:(_NSRange)needed;
- (void)setFilter:(id)filter animated:(BOOL)animated;
- (void)setTextView:(id)view;
- (void)setVisibleContentWidth:(double)width isGestureActive:(BOOL)active;
- (void)textViewLayoutDidChange:(id)change;
- (void)unfocusAttributionDetails;
- (void)willEnterForeground:(id)foreground;
@end

@implementation ICAttributionSidebarView

- (ICAttributionSidebarView)init
{
  v11.receiver = self;
  v11.super_class = ICAttributionSidebarView;
  v2 = [(ICAttributionSidebarView *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    attributionViewMap = v2->_attributionViewMap;
    v2->_attributionViewMap = v3;

    v5 = objc_alloc(MEMORY[0x277D36258]);
    +[ICAttributionsUpdater sidebarClosedRenderDelay];
    v6 = [v5 initWithTarget:v2 selector:sel_reloadAttributions delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:?];
    reloadAttributionsDelayer = v2->_reloadAttributionsDelayer;
    v2->_reloadAttributionsDelayer = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_analyticsSessionWillEnd_ name:*MEMORY[0x277D35960] object:0];
  }

  return v2;
}

- (double)fullContentWidth
{
  traitCollection = [(ICAttributionSidebarView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return 160.0;
  }

  textView = [(ICAttributionSidebarView *)self textView];
  [textView bounds];
  v9 = v8 * 0.38;

  v10 = floor(fmin(v9, 160.0));
  ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  v12 = *MEMORY[0x277D36A20];
  if (!ic_isVision)
  {
    v12 = 0.0;
  }

  return v10 - v12;
}

- (ICTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = ICAttributionSidebarView;
  [(ICAttributionSidebarView *)&v12 layoutSubviews];
  [(ICAttributionSidebarView *)self fullContentWidth];
  v4 = v3;
  attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager setPanelWidth:v4];

  [(ICAttributionSidebarView *)self previewContentWidth];
  v7 = v6;
  attributionLayoutManager2 = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager2 setPreviewPanelWidth:v7];

  [(ICAttributionSidebarView *)self visibleContentWidth];
  v10 = v9;
  attributionLayoutManager3 = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager3 setVisiblePanelWidth:v10];
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  focusedAttributionViewConfiguration = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];

  if (focusedAttributionViewConfiguration)
  {
    [(ICAttributionSidebarView *)self unfocusAttributionDetails];
LABEL_3:
    textView = [(ICAttributionSidebarView *)self textView];
    editorController = [textView editorController];
    eventReporter = [editorController eventReporter];

    textView2 = [(ICAttributionSidebarView *)self textView];
    editorController2 = [textView2 editorController];
    note = [editorController2 note];

    if (note)
    {
      [eventReporter submitAttributionSideBarViewEventForNote:note contextPath:0 startState:3 endState:3];
      [eventReporter startAttributionSideBarViewEventForNote:note];
    }

    goto LABEL_6;
  }

  [gestureCopy locationInView:self];
  if (v12 < 0.0 || (v13 = v12, [(ICAttributionSidebarView *)self bounds], v13 > v14))
  {
    textView3 = [(ICAttributionSidebarView *)self textView];
    editorController3 = [textView3 editorController];
    attributionSidebarController = [editorController3 attributionSidebarController];
    [attributionSidebarController hideSidebarAnimated:1 contextPath:3];

    goto LABEL_10;
  }

  attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
  objectEnumerator = [attributionViewMap objectEnumerator];
  eventReporter = [objectEnumerator allObjects];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__ICAttributionSidebarView_handleTapGesture___block_invoke;
  v22[3] = &unk_2781AF780;
  v23 = gestureCopy;
  v20 = [eventReporter ic_objectPassingTest:v22];
  if (v20)
  {
    v21 = v20;
    [(ICAttributionSidebarView *)self focusAttributionView:v20];

    goto LABEL_3;
  }

LABEL_6:
LABEL_10:
}

BOOL __45__ICAttributionSidebarView_handleTapGesture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) locationInView:v3];
  v13 = v12;
  v15 = v14;

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  v20 = v13;
  v21 = v15;

  return CGRectContainsPoint(*&v16, *&v20);
}

- (void)setTextView:(id)view
{
  v4 = MEMORY[0x277CCAB98];
  viewCopy = view;
  defaultCenter = [v4 defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [defaultCenter removeObserver:self name:@"ICTextViewLayoutDidChangeNotification" object:WeakRetained];

  v8 = objc_loadWeakRetained(&self->_textView);
  [v8 ic_removeObserver:self forKeyPath:@"contentOffset" context:&compoundliteral_6];

  v9 = objc_storeWeak(&self->_textView, viewCopy);
  [viewCopy ic_addObserver:self forKeyPath:@"contentOffset" context:&compoundliteral_6];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = objc_loadWeakRetained(&self->_textView);
  [defaultCenter2 addObserver:self selector:sel_textViewLayoutDidChange_ name:@"ICTextViewLayoutDidChangeNotification" object:v11];

  [(ICAttributionSidebarView *)self setHidden:1];
  v12 = [ICAttributionLayoutManager alloc];
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  workerManagedObjectContext = [mEMORY[0x277D35F30] workerManagedObjectContext];
  [(ICAttributionSidebarView *)self fullContentWidth];
  v16 = v15;
  [(ICAttributionSidebarView *)self previewContentWidth];
  v18 = [(ICAttributionLayoutManager *)v12 initWithTextView:viewCopy managedObjectContext:workerManagedObjectContext panelWidth:v16 previewPanelWidth:v17];
  [(ICAttributionSidebarView *)self setAttributionLayoutManager:v18];

  objc_initWeak(&location, self);
  v23 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v24, &location);
  v19 = [(ICAttributionSidebarView *)self attributionLayoutManager:v23];
  [v19 setUpdatedConfigurationHandler:&v23];

  editorController = [viewCopy editorController];
  note = [editorController note];
  LODWORD(workerManagedObjectContext) = [note isSharedViaICloud];

  if (workerManagedObjectContext)
  {
    reloadAttributionsDelayer = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer fireImmediately];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __40__ICAttributionSidebarView_setTextView___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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

        v8 = *(*(&v12 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v10 = [WeakRetained attributionViewMap];
        v11 = [v10 objectForKey:v8];

        [v11 updatePositionAndVisibility];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)setVisibleContentWidth:(double)width isGestureActive:(BOOL)active
{
  activeCopy = active;
  v46 = *MEMORY[0x277D85DE8];
  [(ICAttributionSidebarView *)self setHidden:width == 0.0];
  [(ICAttributionSidebarView *)self visibleContentWidth];
  v8 = v7;
  attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager previewPanelWidth];
  v11 = v10;

  attributionLayoutManager2 = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager2 previewPanelWidth];
  v14 = v13;

  [(ICAttributionSidebarView *)self visibleContentWidth];
  if (width > 0.0 && v15 <= 0.0)
  {
    reloadAttributionsDelayer = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer cancelPreviousFireRequests];

    reloadAttributionsDelayer2 = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer2 fireImmediately];
  }

  [(ICAttributionSidebarView *)self setVisibleContentWidth:width];
  attributionLayoutManager3 = [(ICAttributionSidebarView *)self attributionLayoutManager];
  [attributionLayoutManager3 setVisiblePanelWidth:width];

  if (v8 <= v11 && v14 <= width)
  {
    [(ICAttributionSidebarView *)self setDidExpandSidebar:1];
    +[ICAttributionsUpdater sidebarOpenedRenderDelay];
    v20 = v19;
    reloadAttributionsDelayer3 = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer3 setDelay:v20];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
    objectEnumerator = [attributionViewMap objectEnumerator];

    v24 = [objectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          configuration = [v28 configuration];
          [configuration setPreview:0];

          [v28 updateContentAnimated:1];
        }

        v25 = [objectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v25);
    }
  }

  if (width == 0.0 && !activeCopy)
  {
    +[ICAttributionsUpdater sidebarClosedRenderDelay];
    v31 = v30;
    reloadAttributionsDelayer4 = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer4 setDelay:v31];

    [(ICAttributionSidebarView *)self setDidExpandSidebar:0];
    [(ICAttributionSidebarView *)self renderAttributions];
  }

  if (!activeCopy || (-[ICAttributionSidebarView authorHighlightsUpdater](self, "authorHighlightsUpdater"), v33 = objc_claimAutoreleasedReturnValue(), [v33 highlightedValue], v35 = v34, v33, v35 < 1.0))
  {
    attributionLayoutManager4 = [(ICAttributionSidebarView *)self attributionLayoutManager];
    [attributionLayoutManager4 preferredHighlightValue];
    v38 = v37;
    authorHighlightsUpdater = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
    [authorHighlightsUpdater setHighlightedValue:v38];

    authorHighlightsUpdater2 = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
    [authorHighlightsUpdater2 scheduleUpdateAnimated:!activeCopy];
  }

  dispatchMainAfterDelay();
}

void __67__ICAttributionSidebarView_setVisibleContentWidth_isGestureActive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) authorHighlightsUpdater];
  [v2 setUpdatesVisibleRangesOnly:v1];
}

- (void)reload
{
  reloadAttributionsDelayer = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
  [reloadAttributionsDelayer requestFire];
}

- (void)unfocusAttributionDetails
{
  v31 = *MEMORY[0x277D85DE8];
  focusedAttributionViewConfiguration = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];

  if (focusedAttributionViewConfiguration)
  {
    [(ICAttributionSidebarView *)self setFocusedAttributionViewConfiguration:0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
    objectEnumerator = [attributionViewMap objectEnumerator];

    v6 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          configuration = [v10 configuration];
          [configuration setBlurred:0];

          configuration2 = [v10 configuration];
          [configuration2 setFocused:0];
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    attributionViewMap2 = [(ICAttributionSidebarView *)self attributionViewMap];
    objectEnumerator2 = [attributionViewMap2 objectEnumerator];

    v15 = [objectEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          [*(*(&v21 + 1) + 8 * j) updateContentAnimated:1];
        }

        v16 = [objectEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    authorHighlightsUpdater = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
    [authorHighlightsUpdater setFocusedRangeValue:0];

    authorHighlightsUpdater2 = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
    [authorHighlightsUpdater2 scheduleUpdateAnimated:1];
  }
}

- (void)setFilter:(id)filter animated:(BOOL)animated
{
  filterCopy = filter;
  v7 = filterCopy;
  filter = self->_filter;
  v9 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == filterCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = filterCopy;
  }

  v11 = v10;
  if (v9 == filter)
  {
    filterCopy2 = 0;
  }

  else
  {
    filterCopy2 = filter;
  }

  v13 = filterCopy2;
  if (v11 | v13)
  {
    v14 = v13;
    if (v11)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {

LABEL_15:
      objc_storeStrong(&self->_filter, filter);
      authorHighlightsUpdater = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
      [authorHighlightsUpdater setFilter:v7];

      authorHighlightsUpdater2 = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
      [authorHighlightsUpdater2 scheduleUpdateAnimated:1];

      attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
      [attributionLayoutManager setFilter:v7];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__ICAttributionSidebarView_setFilter_animated___block_invoke;
      v20[3] = &unk_2781ABEB8;
      v20[4] = self;
      v21 = v7;
      [(ICAttributionSidebarView *)self reloadAttributionsWithCompletion:v20];

      goto LABEL_16;
    }

    v16 = [v11 isEqual:v13];

    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

void __47__ICAttributionSidebarView_setFilter_animated___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__ICAttributionSidebarView_setFilter_animated___block_invoke_2;
  v2[3] = &unk_2781ABEB8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __47__ICAttributionSidebarView_setFilter_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) authorHighlightsUpdater];
  v8 = [v2 highlightedRangeValue];

  v3 = v8;
  if (*(a1 + 40))
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 rangeValue];
    [v5 scrollToRangeIfNeeded:{v6, v7}];
    v3 = v8;
  }
}

- (void)willEnterForeground:(id)foreground
{
  [(ICAttributionSidebarView *)self visibleContentWidth];
  v5 = v4;
  [(ICAttributionSidebarView *)self fullContentWidth];
  if (v5 == v6)
  {
    textView = [(ICAttributionSidebarView *)self textView];
    editorController = [textView editorController];
    eventReporter = [editorController eventReporter];

    textView2 = [(ICAttributionSidebarView *)self textView];
    editorController2 = [textView2 editorController];
    note = [editorController2 note];

    if (note)
    {
      [eventReporter startAttributionSideBarViewEventForNote:note];
    }
  }
}

- (void)analyticsSessionWillEnd:(id)end
{
  textView = [(ICAttributionSidebarView *)self textView];
  editorController = [textView editorController];
  eventReporter = [editorController eventReporter];

  textView2 = [(ICAttributionSidebarView *)self textView];
  editorController2 = [textView2 editorController];
  note = [editorController2 note];

  if (note)
  {
    [eventReporter submitAttributionSideBarViewEventForNote:note contextPath:0 startState:3 endState:3];
  }
}

- (void)textViewLayoutDidChange:(id)change
{
  textView = [(ICAttributionSidebarView *)self textView];
  editorController = [textView editorController];
  note = [editorController note];

  if ((-[ICAttributionSidebarView isHidden](self, "isHidden") & 1) == 0 && [note isSharedViaICloud])
  {
    textView2 = [(ICAttributionSidebarView *)self textView];
    tTTextStorage = [textView2 TTTextStorage];
    if ([tTTextStorage isEditingTemporaryAttributes])
    {
      textView3 = [(ICAttributionSidebarView *)self textView];
      tTTextStorage2 = [textView3 TTTextStorage];
      changeInLength = [tTTextStorage2 changeInLength];

      if (changeInLength < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    reloadAttributionsDelayer = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
    [reloadAttributionsDelayer requestFire];
  }

LABEL_8:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(ICAttributionSidebarView *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/Attributions/ICAttributionSidebarView.m"]& 1) != 0)
  {
    v13 = [(ICAttributionSidebarView *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_6 && (v13 & 1) == 0)
    {
      textView = [(ICAttributionSidebarView *)self textView];
      if (textView != objectCopy)
      {
        goto LABEL_5;
      }

      v15 = [pathCopy isEqualToString:@"contentOffset"];

      if (!v15)
      {
        goto LABEL_7;
      }

      textView = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
      if ([textView isScheduledToFire])
      {
        [(ICAttributionSidebarView *)self visibleContentWidth];
        v17 = v16;

        if (v17 == 0.0)
        {
          reloadAttributionsDelayer = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
          [reloadAttributionsDelayer cancelPreviousFireRequests];

          reloadAttributionsDelayer2 = [(ICAttributionSidebarView *)self reloadAttributionsDelayer];
          [reloadAttributionsDelayer2 requestFire];
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICAttributionSidebarView;
    [(ICAttributionSidebarView *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_7:
}

- (BOOL)accessibilityElementsHidden
{
  [(ICAttributionSidebarView *)self visibleContentWidth];
  v4 = v3;
  [(ICAttributionSidebarView *)self fullContentWidth];
  return v4 < v5;
}

- (void)reloadAttributionsWithCompletion:(id)completion
{
  completionCopy = completion;
  attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ICAttributionSidebarView_reloadAttributionsWithCompletion___block_invoke;
  v7[3] = &unk_2781AF7D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [attributionLayoutManager reloadConfigurationsWithCompletion:v7];
}

void __61__ICAttributionSidebarView_reloadAttributionsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  performBlockOnMainThread();
}

uint64_t __61__ICAttributionSidebarView_reloadAttributionsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) renderAttributions];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)renderAttributions
{
  v34 = *MEMORY[0x277D85DE8];
  [(ICAttributionSidebarView *)self removeAllAttributionViews];
  textView = [(ICAttributionSidebarView *)self textView];
  editorController = [textView editorController];
  note = [editorController note];
  isSharedViaICloud = [note isSharedViaICloud];

  if (isSharedViaICloud)
  {
    attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
    viewConfigurations = [attributionLayoutManager viewConfigurations];

    focusedAttributionViewConfiguration = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
    if (focusedAttributionViewConfiguration)
    {
      v10 = focusedAttributionViewConfiguration;
      focusedAttributionViewConfiguration2 = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
      v12 = [viewConfigurations containsObject:focusedAttributionViewConfiguration2];

      if ((v12 & 1) == 0)
      {
        [(ICAttributionSidebarView *)self setFocusedAttributionViewConfiguration:0];
        authorHighlightsUpdater = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
        [authorHighlightsUpdater setFocusedRangeValue:0];

        authorHighlightsUpdater2 = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
        [authorHighlightsUpdater2 scheduleUpdateAnimated:0];
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = viewConfigurations;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * v19);
          focusedAttributionViewConfiguration3 = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
          v22 = [focusedAttributionViewConfiguration3 isEqualToAttributionViewConfiguration:v20];

          [v20 setFocused:v22];
          focusedAttributionViewConfiguration4 = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
          [v20 setBlurred:(focusedAttributionViewConfiguration4 != 0) & (v22 ^ 1)];

          [(ICAttributionSidebarView *)self visibleContentWidth];
          v25 = v24;
          attributionLayoutManager2 = [(ICAttributionSidebarView *)self attributionLayoutManager];
          [attributionLayoutManager2 previewPanelWidth];
          [v20 setPreview:v25 < v27];

          v28 = [[ICAttributionView alloc] initWithConfiguration:v20];
          [(ICAttributionSidebarView *)self renderAttributionView:v28];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }
  }
}

- (void)removeAllAttributionViews
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(ICAttributionSidebarView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
  [attributionViewMap removeAllObjects];
}

- (void)focusAttributionView:(id)view
{
  v27 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  configuration = [viewCopy configuration];
  [(ICAttributionSidebarView *)self setFocusedAttributionViewConfiguration:configuration];

  focusedAttributionViewConfiguration = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
  [focusedAttributionViewConfiguration setFocused:1];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
  objectEnumerator = [attributionViewMap objectEnumerator];

  v9 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        if (v13 != viewCopy)
        {
          configuration2 = [*(*(&v22 + 1) + 8 * v12) configuration];
          [configuration2 setBlurred:1];
        }

        [v13 updateContentAnimated:1];
        ++v12;
      }

      while (v10 != v12);
      v10 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x277CCAE60];
  focusedAttributionViewConfiguration2 = [(ICAttributionSidebarView *)self focusedAttributionViewConfiguration];
  range = [focusedAttributionViewConfiguration2 range];
  v19 = [v15 valueWithRange:{range, v18}];
  authorHighlightsUpdater = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
  [authorHighlightsUpdater setFocusedRangeValue:v19];

  authorHighlightsUpdater2 = [(ICAttributionSidebarView *)self authorHighlightsUpdater];
  [authorHighlightsUpdater2 scheduleUpdateAnimated:1];
}

- (void)renderAttributionView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (superview != self)
  {
    [(ICAttributionSidebarView *)self addSubview:viewCopy];
  }

  attributionViewMap = [(ICAttributionSidebarView *)self attributionViewMap];
  configuration = [viewCopy configuration];
  [attributionViewMap setObject:viewCopy forKey:configuration];

  [viewCopy updateContentAnimated:0];
  configuration2 = [viewCopy configuration];
  [configuration2 adjustedFrame];
  [viewCopy setFrame:?];
}

- (void)scrollToRangeIfNeeded:(_NSRange)needed
{
  length = needed.length;
  location = needed.location;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __50__ICAttributionSidebarView_scrollToRangeIfNeeded___block_invoke;
    v72[3] = &unk_2781AD318;
    v72[4] = self;
    v72[5] = location;
    v72[6] = length;
    [MEMORY[0x277D75D18] performWithoutAnimation:v72];
    return;
  }

  textView = [(ICAttributionSidebarView *)self textView];
  textStorage = [textView textStorage];
  ic_range = [textStorage ic_range];
  v10 = v9;

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v74.location = ic_range;
    v74.length = v10;
    v75.location = location;
    v75.length = length;
    v11 = NSUnionRange(v74, v75);
    if (v11.location == ic_range && v11.length == v10)
    {
      textView2 = [(ICAttributionSidebarView *)self textView];
      layoutManager = [textView2 layoutManager];
      [layoutManager ensureLayoutForCharacterRange:{location, length}];

      textView3 = [(ICAttributionSidebarView *)self textView];
      layoutManager2 = [textView3 layoutManager];
      [layoutManager2 ensureGlyphsForCharacterRange:{location, length}];

      textView4 = [(ICAttributionSidebarView *)self textView];
      [textView4 ic_rectForRange:{location, length}];
      v70 = v17;

      textView5 = [(ICAttributionSidebarView *)self textView];
      [textView5 bounds];
      v20 = v19;
      v22 = v21;
      v69 = v23;
      v25 = v24;
      textView6 = [(ICAttributionSidebarView *)self textView];
      [textView6 contentInset];
      v28 = v27;
      v30 = v29;
      v32 = v29 + v31;
      v34 = v27 + v33;

      textView7 = [(ICAttributionSidebarView *)self textView];
      editorController = [textView7 editorController];
      presentedViewController = [editorController presentedViewController];

      textView8 = [(ICAttributionSidebarView *)self textView];
      v38 = 0.0;
      if ([textView8 ic_hasCompactWidth])
      {
        view = [presentedViewController view];
        window = [view window];

        if (!window)
        {
LABEL_11:
          v42 = v20 + v30;
          v43 = v25 - v34;
          textView9 = [(ICAttributionSidebarView *)self textView];
          editorController2 = [textView9 editorController];
          activityStreamToolbar = [editorController2 activityStreamToolbar];

          if (activityStreamToolbar)
          {
            textView10 = [(ICAttributionSidebarView *)self textView];
            editorController3 = [textView10 editorController];
            activityStreamToolbar2 = [editorController3 activityStreamToolbar];
            [activityStreamToolbar2 frame];
            v38 = v38 + v50;
          }

          v51 = v43 - v38;
          v77.origin.x = 0.0;
          v77.size.width = 0.0;
          v77.size.height = 0.0;
          v76.origin.x = v42;
          v76.origin.y = v22 + v28;
          v76.size.width = v69 - v32;
          v76.size.height = v51;
          v52 = v70;
          v77.origin.y = v70;
          if (!CGRectContainsRect(v76, v77))
          {
            if (v70 <= v22 + v28 + v51)
            {
              v63 = -44.0;
            }

            else
            {
              attributionLayoutManager = [(ICAttributionSidebarView *)self attributionLayoutManager];
              viewConfigurations = [attributionLayoutManager viewConfigurations];
              lastObject = [viewConfigurations lastObject];
              [lastObject associatedTextFrame];
              v57 = v56;
              v59 = v58;

              v60 = v57 + v59 - v70;
              v61 = v70 - (v51 + v60);
              v62 = v60 < v51;
              v63 = -44.0;
              if (v62)
              {
                v63 = 44.0;
                v52 = v61;
              }
            }

            v64 = v63 + v52;
            textView11 = [(ICAttributionSidebarView *)self textView];
            [textView11 safeAreaInsets];
            v67 = v64 - v66;

            textView12 = [(ICAttributionSidebarView *)self textView];
            [textView12 setContentOffset:{0.0, v67}];
          }

          return;
        }

        textView8 = [presentedViewController view];
        [textView8 frame];
        v38 = v41 + 0.0;
      }

      goto LABEL_11;
    }
  }
}

void __50__ICAttributionSidebarView_scrollToRangeIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];
  [v2 scrollRangeToVisible:{*(a1 + 40), *(a1 + 48)}];
}

- (ICAuthorHighlightsUpdater)authorHighlightsUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_authorHighlightsUpdater);

  return WeakRetained;
}

@end