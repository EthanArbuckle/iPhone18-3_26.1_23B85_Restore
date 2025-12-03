@interface ICAttributionLayoutManager
+ (OS_dispatch_queue)reloadQueue;
- (ICAttributionLayoutManager)initWithTextView:(id)view managedObjectContext:(id)context panelWidth:(double)width previewPanelWidth:(double)panelWidth;
- (ICBaseTextView)textView;
- (NSArray)visibleConfigurations;
- (double)currentTextViewOffset;
- (void)addObservers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadConfigurationsWithCompletion:(id)completion;
- (void)reloadViewConfigurationsSynchronously;
- (void)removeObservers;
- (void)setVisiblePanelWidth:(double)width;
- (void)updateViewConfigurationsForTextViewOffset;
@end

@implementation ICAttributionLayoutManager

- (ICBaseTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (void)addObservers
{
  textView = [(ICAttributionLayoutManager *)self textView];
  [textView ic_addObserver:self forKeyPath:@"contentOffset" context:&compoundliteral_9];
}

- (void)updateViewConfigurationsForTextViewOffset
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  visibleConfigurations = [(ICAttributionLayoutManager *)self visibleConfigurations];
  [(ICAttributionLayoutManager *)self currentTextViewOffset];
  v6 = v5;
  firstObject = [visibleConfigurations firstObject];
  if (firstObject)
  {
    if ([visibleConfigurations count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [visibleConfigurations objectAtIndexedSubscript:1];
    }

    v47 = visibleConfigurations;
    [firstObject adjustedFrame];
    v9 = v8;
    [firstObject associatedTextFrame];
    v11 = v10;
    v13 = v12;
    [firstObject frame];
    if (v6 >= v14)
    {
      v15 = v6 + v9;
      if (v15 < v11 + v13)
      {
        if (!v7 || ([v7 frame], v15 < v16))
        {
          [firstObject adjustedFrame];
          [firstObject setAdjustedFrame:?];
          [v3 addObject:firstObject];
        }
      }
    }

    v46 = v7;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [(ICAttributionLayoutManager *)self viewConfigurations];
    v17 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v49 = *v56;
      do
      {
        v19 = 0;
        do
        {
          if (*v56 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v55 + 1) + 8 * v19);
          [(ICAttributionLayoutManager *)self preferredHighlightValue];
          [v20 setPreferredHighlightValue:?];
          [v20 frame];
          v22 = v21;
          if ([v20 isEqualToAttributionViewConfiguration:firstObject])
          {
            [v20 adjustedFrame];
          }

          else
          {
            [v20 frame];
          }

          v24 = v23;
          [v20 frame];
          v26 = v25;
          [v20 frame];
          v28 = v27;
          [(ICAttributionLayoutManager *)self appliedHorizontalAdjustment];
          v30 = v22 + v29;
          [v20 adjustedFrame];
          if (v30 != v32 || v24 != v31)
          {
            [v20 setAdjustedFrame:{v30, v24, v26, v28}];
            [(ICAttributionLayoutManager *)self appliedHorizontalAdjustmentRatio];
            [v20 setAppliedHorizontalAdjustmentRatio:?];
            [v3 addObject:v20];
          }

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          highlightConfigurations = [v20 highlightConfigurations];
          v35 = [highlightConfigurations countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v52;
            do
            {
              v38 = 0;
              do
              {
                if (*v52 != v37)
                {
                  objc_enumerationMutation(highlightConfigurations);
                }

                v39 = *(*(&v51 + 1) + 8 * v38);
                v40 = 0.0;
                if (([v20 isBlurred] & 1) == 0)
                {
                  [(ICAttributionLayoutManager *)self preferredHighlightValue];
                  v40 = v41;
                }

                [v39 alpha];
                if (v42 != v40)
                {
                  [v39 setAlpha:v40];
                  [v3 addObject:v20];
                }

                ++v38;
              }

              while (v36 != v38);
              v36 = [highlightConfigurations countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v36);
          }

          if (([v20 isStatusImageHidden] & 1) == 0)
          {
            [v3 addObject:v20];
          }

          ++v19;
        }

        while (v19 != v18);
        v18 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v18);
    }

    visibleConfigurations = v47;
  }

  updatedConfigurationHandler = [(ICAttributionLayoutManager *)self updatedConfigurationHandler];

  if (updatedConfigurationHandler)
  {
    updatedConfigurationHandler2 = [(ICAttributionLayoutManager *)self updatedConfigurationHandler];
    allObjects = [v3 allObjects];
    (updatedConfigurationHandler2)[2](updatedConfigurationHandler2, allObjects);
  }
}

- (NSArray)visibleConfigurations
{
  array = [MEMORY[0x277CBEB18] array];
  [(ICAttributionLayoutManager *)self currentTextViewOffset];
  v5 = v4;
  viewConfigurations = [(ICAttributionLayoutManager *)self viewConfigurations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ICAttributionLayoutManager_visibleConfigurations__block_invoke;
  v10[3] = &unk_2781AF9B0;
  v12 = v5;
  v10[4] = self;
  v11 = array;
  v7 = array;
  [viewConfigurations enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

- (double)currentTextViewOffset
{
  textView = [(ICAttributionLayoutManager *)self textView];
  [textView contentOffset];
  v5 = v4;
  textView2 = [(ICAttributionLayoutManager *)self textView];
  editorContainer = [textView2 editorContainer];
  [editorContainer ic_safeAreaDistanceFromTop];
  v9 = v5 + v8 + 0.0;

  return v9;
}

+ (OS_dispatch_queue)reloadQueue
{
  if (reloadQueue_token != -1)
  {
    +[ICAttributionLayoutManager reloadQueue];
  }

  v3 = reloadQueue_reloadQueue;

  return v3;
}

void __41__ICAttributionLayoutManager_reloadQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.notes.attribution.layout.manager.reload-queue", attr);
  v2 = reloadQueue_reloadQueue;
  reloadQueue_reloadQueue = v1;
}

- (void)setVisiblePanelWidth:(double)width
{
  if (vabdd_f64(width, self->_visiblePanelWidth) >= 0.00999999978)
  {
    self->_visiblePanelWidth = width;
    [(ICAttributionLayoutManager *)self visiblePanelWidth];
    v6 = v5;
    [(ICAttributionLayoutManager *)self previewPanelWidth];
    v8 = v6 / v7;
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    self->_preferredHighlightValue = v8;
    textView = [(ICAttributionLayoutManager *)self textView];
    ic_isRTL = [textView ic_isRTL];
    if (width >= 16.0)
    {
      widthCopy = 16.0;
    }

    else
    {
      widthCopy = width;
    }

    if (ic_isRTL)
    {
      widthCopy = -widthCopy;
    }

    self->_appliedHorizontalAdjustment = widthCopy;

    self->_appliedHorizontalAdjustmentRatio = self->_appliedHorizontalAdjustment / 16.0;

    [(ICAttributionLayoutManager *)self updateViewConfigurationsForTextViewOffset];
  }
}

- (ICAttributionLayoutManager)initWithTextView:(id)view managedObjectContext:(id)context panelWidth:(double)width previewPanelWidth:(double)panelWidth
{
  viewCopy = view;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = ICAttributionLayoutManager;
  v12 = [(ICAttributionLayoutManager *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_textView, viewCopy);
    objc_storeStrong(&v13->_managedObjectContext, context);
    v13->_panelWidth = width;
    v13->_previewPanelWidth = panelWidth;
    viewConfigurations = v13->_viewConfigurations;
    v13->_viewConfigurations = MEMORY[0x277CBEBF8];

    editorContainer = [viewCopy editorContainer];
    note = [editorContainer note];
    lastOpenedDate = [note lastOpenedDate];
    noteLastOpenedDate = v13->_noteLastOpenedDate;
    v13->_noteLastOpenedDate = lastOpenedDate;

    [(ICAttributionLayoutManager *)v13 addObservers];
  }

  return v13;
}

- (void)dealloc
{
  [(ICAttributionLayoutManager *)self removeObservers];
  v3.receiver = self;
  v3.super_class = ICAttributionLayoutManager;
  [(ICAttributionLayoutManager *)&v3 dealloc];
}

- (void)reloadViewConfigurationsSynchronously
{
  v116 = *MEMORY[0x277D85DE8];
  textView = [(ICAttributionLayoutManager *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];
  objectID = [note objectID];

  v5 = objectID;
  if (!objectID)
  {
    [(ICAttributionLayoutManager *)self setViewConfigurations:MEMORY[0x277CBEBF8]];
    goto LABEL_42;
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__24;
  v111 = __Block_byref_object_dispose__24;
  v112 = 0;
  managedObjectContext = [(ICAttributionLayoutManager *)self managedObjectContext];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke;
  v104[3] = &unk_2781ACE30;
  v106 = &v107;
  v104[4] = self;
  v105 = objectID;
  [managedObjectContext performBlockAndWait:v104];

  if (!v108[5])
  {
    goto LABEL_40;
  }

  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__24;
  v102 = __Block_byref_object_dispose__24;
  v103 = 0;
  managedObjectContext2 = [(ICAttributionLayoutManager *)self managedObjectContext];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_2;
  v97[3] = &unk_2781AF940;
  v97[4] = self;
  v97[5] = &v107;
  v97[6] = &v98;
  [managedObjectContext2 performBlockAndWait:v97];

  v8 = [ICAttributionViewConfigurationSharedState alloc];
  textView2 = [(ICAttributionLayoutManager *)self textView];
  v10 = [(ICAttributionViewConfigurationSharedState *)v8 initWithTextView:textView2 note:v108[5]];

  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__24;
  v95 = __Block_byref_object_dispose__24;
  v96 = 0;
  v84 = MEMORY[0x277D85DD0];
  v85 = 3221225472;
  v86 = __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_3;
  v87 = &unk_2781AF968;
  v88 = v10;
  selfCopy = self;
  v90 = &v91;
  performBlockOnMainThreadAndWait();
  [(ICAttributionViewConfigurationSharedState *)v88 synchronouslyLoadDataForEditGroups:v99[5]];
  v73 = v88;
  array = [MEMORY[0x277CBEB18] array];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v99[5];
  v12 = [obj countByEnumeratingWithState:&v80 objects:v115 count:16];
  v71 = array;
  v13 = 0;
  if (!v12)
  {
    goto LABEL_32;
  }

  v72 = *v81;
  do
  {
    v14 = 0;
    do
    {
      if (*v81 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v80 + 1) + 8 * v14);
      v16 = [ICAttributionViewConfiguration alloc];
      v114 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
      v18 = [(ICAttributionViewConfiguration *)v16 initWithSharedState:v73 editGroups:v17 parentConfiguration:0];

      v19 = [v92[5] attribute:*MEMORY[0x277D35DA8] atIndex:-[ICAttributionViewConfiguration range](v18 effectiveRange:{"range"), 0}];
      uuid = [v19 uuid];
      if (uuid && ([v92[5] outlineController], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "uuid"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isUUIDHidden:", v22), v22, v21, uuid, v23))
      {
        [(ICAttributionViewConfiguration *)v13 frame];
        [(ICAttributionViewConfiguration *)v18 setFrame:?];
        v24 = 1;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v24 = 0;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      [(ICAttributionViewConfiguration *)v13 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [(ICAttributionViewConfiguration *)v18 frame];
      v119.origin.x = v33;
      v119.origin.y = v34;
      v119.size.width = v35;
      v119.size.height = v36;
      v117.origin.x = v26;
      v117.origin.y = v28;
      v117.size.width = v30;
      v117.size.height = v32;
      v118 = CGRectIntersection(v117, v119);
      if (CGRectIsNull(v118))
      {
        goto LABEL_14;
      }

      [(ICAttributionViewConfiguration *)v13 frame];
      v39 = v38;
      [(ICAttributionViewConfiguration *)v13 formattedTimestampFrame];
      v41 = v40;
      [(ICAttributionViewConfiguration *)v13 formattedTimestampFrame];
      v43 = v42;
      [(ICAttributionViewConfiguration *)v18 frame];
      v44 = v39 + v41;
      if (v45 > v44)
      {
        [(ICAttributionViewConfiguration *)v18 frame];
        if (v46 < v44 + v43 && ![(ICAttributionViewConfiguration *)v13 isTimestampHidden])
        {
          [(ICAttributionViewConfiguration *)v13 setForcesTimestampHidden:1];
          goto LABEL_14;
        }
      }

      range = [(ICAttributionViewConfiguration *)v13 range];
      v49 = v48;
      if (range == [(ICAttributionViewConfiguration *)v18 range]&& v49 == v50)
      {
        v52 = 1;
      }

      else
      {
        v52 = v24;
      }

      [(ICAttributionViewConfiguration *)v13 frame];
      v54 = v53;
      v56 = v55;
      [(ICAttributionViewConfiguration *)v18 associatedTextFrame];
      v58 = v57;
      v60 = v59;
      [(ICAttributionViewConfiguration *)v18 frame];
      if ((v52 & 1) == 0)
      {
        v62 = v54 + v56 + v61;
        if (v62 <= v58 + v60)
        {
          [(ICAttributionViewConfiguration *)v18 frame:v58 + v60];
          [(ICAttributionViewConfiguration *)v18 setFrame:?];
LABEL_14:
          [(ICAttributionLayoutManager *)self appliedHorizontalAdjustmentRatio];
          [(ICAttributionViewConfiguration *)v18 setAppliedHorizontalAdjustmentRatio:?];
          [(ICAttributionLayoutManager *)self preferredHighlightValue];
          [(ICAttributionViewConfiguration *)v18 setPreferredHighlightValue:?];
          [v71 addObject:v18];
          v37 = v18;

          v13 = v37;
          goto LABEL_27;
        }
      }

      [(ICAttributionViewConfiguration *)v13 addEditGroup:v15];
LABEL_27:

      ++v14;
    }

    while (v12 != v14);
    v63 = [obj countByEnumeratingWithState:&v80 objects:v115 count:16];
    v12 = v63;
  }

  while (v63);
LABEL_32:

  [v71 sortUsingComparator:&__block_literal_global_23];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v64 = v71;
  v65 = [v64 countByEnumeratingWithState:&v76 objects:v113 count:16];
  if (v65)
  {
    v66 = *v77;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v77 != v66)
        {
          objc_enumerationMutation(v64);
        }

        [*(*(&v76 + 1) + 8 * i) synchronouslyLoadData];
      }

      v65 = [v64 countByEnumeratingWithState:&v76 objects:v113 count:16];
    }

    while (v65);
  }

  v68 = [v64 copy];
  [(ICAttributionLayoutManager *)self setViewConfigurations:v68];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_5;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v98, 8);

LABEL_40:
  _Block_object_dispose(&v107, 8);

  v5 = objectID;
LABEL_42:
}

void __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [v5 ic_existingObjectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) editGrouper];
  if (v2)
  {
    [*(a1 + 32) setEditGrouper:v2];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277D35FB8]) initWithNote:*(*(*(a1 + 40) + 8) + 40)];
    [*(a1 + 32) setEditGrouper:v3];
  }

  v4 = [*(a1 + 32) filter];
  v5 = v4;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D35FA8]);
  }

  v6 = [*(a1 + 32) editGrouper];
  [v6 setFilter:v5];

  if (!v4)
  {
  }

  v7 = [*(a1 + 32) editGrouper];
  v8 = [v7 filter];
  [v8 setAllowsMissingUsers:0];

  v9 = [*(a1 + 32) editGrouper];
  [v9 setIncludesTableEdits:1];

  v10 = [*(a1 + 32) editGrouper];
  [v10 setIncludesCheckmarkEdits:1];

  v11 = [*(a1 + 32) editGrouper];
  [v11 setJoinsTextGaps:1];

  v12 = [*(a1 + 32) editGrouper];
  [v12 setJoinsWhitespaceAndNewlineGaps:1];

  v16 = [*(a1 + 32) editGrouper];
  v13 = [v16 groupedEdits];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) panelWidth];
  [*(a1 + 32) setPanelWidth:?];
  v2 = [*(a1 + 40) textView];
  [*(a1 + 32) setIsRTL:{objc_msgSend(v2, "ic_isRTL")}];

  v3 = [*(a1 + 40) noteLastOpenedDate];
  [*(a1 + 32) setNoteLastOpenedDate:v3];

  [*(a1 + 32) setTopTextViewInset:7.0];
  objc_opt_class();
  v4 = [*(a1 + 40) textView];
  v5 = [v4 textLayoutManager];
  v6 = [v5 textContentManager];
  v11 = ICDynamicCast();

  objc_opt_class();
  v7 = [v11 textStorage];
  v8 = ICDynamicCast();
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t __67__ICAttributionLayoutManager_reloadViewConfigurationsSynchronously__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 frame];
  v7 = [v4 numberWithDouble:v6];
  v8 = MEMORY[0x277CCABB0];
  [v5 frame];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  v12 = [v7 compare:v11];

  return v12;
}

- (void)reloadConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  reloadQueue = [objc_opt_class() reloadQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICAttributionLayoutManager_reloadConfigurationsWithCompletion___block_invoke;
  v7[3] = &unk_2781AE4F0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(reloadQueue, v7);
}

void __65__ICAttributionLayoutManager_reloadConfigurationsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadViewConfigurationsSynchronously];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) viewConfigurations];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)removeObservers
{
  textView = [(ICAttributionLayoutManager *)self textView];
  [textView ic_removeObserver:self forKeyPath:@"contentOffset" context:&compoundliteral_9];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICAttributionLayoutManager *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/Author Attributions/Layout/ICAttributionLayoutManager.m"]& 1) != 0)
  {
    v13 = [(ICAttributionLayoutManager *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_9 && (v13 & 1) == 0)
    {

      [(ICAttributionLayoutManager *)self updateViewConfigurationsForTextViewOffset];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICAttributionLayoutManager;
    [(ICAttributionLayoutManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __51__ICAttributionLayoutManager_visibleConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 associatedTextFrame];
  v4 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  [v17 frame];
  v10 = v8 + v9;
  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) textView];
  [v12 frame];
  v14 = v11 + v13;

  v15 = v4 + v6;
  if (v10 < v14 && v15 > v7)
  {
    [*(a1 + 40) addObject:{v17, v15}];
  }
}

@end