@interface ICSharedScrollClampingController
- (BOOL)isClamped;
- (BOOL)notificationObjectMatchesTextViewNote:(id)note;
- (ICSharedScrollClampingController)initWithTextView:(id)view listensToMergeNotifications:(BOOL)notifications;
- (ICSharedScrollClampingController)initWithTextView:(id)view listensToMergeNotifications:(BOOL)notifications clampingTurnOffDelay:(double)delay;
- (ICTextView)textView;
- (id)clampedYValue;
- (void)clamp;
- (void)contextDidSaveUserInitiatedChange:(id)change;
- (void)contextWillSaveUserInitiatedChange:(id)change;
- (void)dealloc;
- (void)mergeRelatedOperationsDidEnd:(id)end;
- (void)mergeRelatedOperationsWillBegin:(id)begin;
- (void)textStorageWillEndEditingNotification:(id)notification;
- (void)topTextIndex:(unint64_t *)index topTextOffset:(double *)offset topTextFragmentHeight:(double *)height;
- (void)unclampWithMergeUpdates:(BOOL)updates;
@end

@implementation ICSharedScrollClampingController

- (id)clampedYValue
{
  if ([(ICSharedScrollClampingController *)self scrollClampingTopTextIndex]< 0)
  {
    goto LABEL_8;
  }

  scrollClampingTopTextIndex = [(ICSharedScrollClampingController *)self scrollClampingTopTextIndex];
  textView = [(ICSharedScrollClampingController *)self textView];
  textStorage = [textView textStorage];
  v6 = [textStorage length];

  if (scrollClampingTopTextIndex >= v6)
  {
    goto LABEL_8;
  }

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  textView2 = [(ICSharedScrollClampingController *)self textView];
  v9 = textView2;
  if (IsTextKit2Enabled)
  {
    textLayoutManager = [textView2 textLayoutManager];

    documentRange = [textLayoutManager documentRange];
    location = [documentRange location];
    layoutManager2 = [textLayoutManager locationFromLocation:location withOffset:{-[ICSharedScrollClampingController scrollClampingTopTextIndex](self, "scrollClampingTopTextIndex")}];

    v14 = [textLayoutManager textLayoutFragmentForLocation:layoutManager2];
    [v14 layoutFragmentFrame];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    layoutManager = [textView2 layoutManager];
    v20 = [layoutManager glyphIndexForCharacterAtIndex:{-[ICSharedScrollClampingController scrollClampingTopTextIndex](self, "scrollClampingTopTextIndex")}];

    textLayoutManager = [(ICSharedScrollClampingController *)self textView];
    layoutManager2 = [textLayoutManager layoutManager];
    [layoutManager2 lineFragmentRectForGlyphAtIndex:v20 effectiveRange:0];
    v16 = v21;
    v18 = v22;
  }

  [(ICSharedScrollClampingController *)self scrollClampingTopOffsetLineFragmentHeight];
  if (v18 != v23)
  {
LABEL_8:
    v25 = 0;
  }

  else
  {
    [(ICSharedScrollClampingController *)self scrollClampingTopOffsetFactor];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v16 + v24 * v18];
  }

  return v25;
}

- (BOOL)isClamped
{
  if ([(ICSharedScrollClampingController *)self scrollClampingTopTextIndex]< 0)
  {
    return 0;
  }

  scrollClampingTopTextIndex = [(ICSharedScrollClampingController *)self scrollClampingTopTextIndex];
  textView = [(ICSharedScrollClampingController *)self textView];
  textStorage = [textView textStorage];
  v6 = scrollClampingTopTextIndex < [textStorage length];

  return v6;
}

- (ICSharedScrollClampingController)initWithTextView:(id)view listensToMergeNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = ICSharedScrollClampingController;
  v7 = [(ICSharedScrollClampingController *)&v15 init];
  v8 = v7;
  if (v7)
  {
    [(ICSharedScrollClampingController *)v7 setScrollClampingTopTextIndex:-1];
    [(ICSharedScrollClampingController *)v8 setScrollClampingTopOffsetFactor:0.0];
    [(ICSharedScrollClampingController *)v8 setScrollClampingTopOffsetLineFragmentHeight:0.0];
    [(ICSharedScrollClampingController *)v8 setScrollClampingStack:0];
    objc_storeWeak(&v8->_textView, viewCopy);
    if (notificationsCopy)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel_mergeRelatedOperationsWillBegin_ name:*MEMORY[0x277D35D00] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v8 selector:sel_mergeRelatedOperationsDidEnd_ name:*MEMORY[0x277D35CF8] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:v8 selector:sel_contextWillSaveUserInitiatedChange_ name:*MEMORY[0x277D35CD0] object:0];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter4 addObserver:v8 selector:sel_contextDidSaveUserInitiatedChange_ name:*MEMORY[0x277D35CC8] object:0];
    }

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v8 selector:sel_textStorageWillEndEditingNotification_ name:*MEMORY[0x277D36660] object:0];
  }

  return v8;
}

- (ICSharedScrollClampingController)initWithTextView:(id)view listensToMergeNotifications:(BOOL)notifications clampingTurnOffDelay:(double)delay
{
  result = [(ICSharedScrollClampingController *)self initWithTextView:view listensToMergeNotifications:notifications];
  if (delay > 0.0 && result != 0)
  {
    result->_scrollClampingTurnOffDelay = delay;
  }

  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSharedScrollClampingController;
  [(ICSharedScrollClampingController *)&v4 dealloc];
}

- (void)topTextIndex:(unint64_t *)index topTextOffset:(double *)offset topTextFragmentHeight:(double *)height
{
  textView = [(ICSharedScrollClampingController *)self textView];
  [textView visibleTextRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v53.origin.x = v11;
  v53.origin.y = v13;
  v53.size.width = v15;
  v53.size.height = v17;
  MinX = CGRectGetMinX(v53);
  v54.origin.x = v11;
  v54.origin.y = v13;
  v54.size.width = v15;
  v54.size.height = v17;
  MinY = CGRectGetMinY(v54);
  v55.origin.x = v11;
  v55.origin.y = v13;
  v55.size.width = v15;
  v55.size.height = v17;
  MaxX = CGRectGetMaxX(v55);
  v56.origin.x = v11;
  v56.origin.y = v13;
  v56.size.width = v15;
  v56.size.height = v17;
  v21 = CGRectGetMinY(v56);
  textView2 = [(ICSharedScrollClampingController *)self textView];
  v51 = [textView2 closestPositionToPoint:{MinX, MinY}];

  textView3 = [(ICSharedScrollClampingController *)self textView];
  v24 = [textView3 closestPositionToPoint:{MaxX, v21}];

  textView4 = [(ICSharedScrollClampingController *)self textView];
  textView5 = [(ICSharedScrollClampingController *)self textView];
  beginningOfDocument = [textView5 beginningOfDocument];
  v28 = [textView4 offsetFromPosition:beginningOfDocument toPosition:v51];

  textView6 = [(ICSharedScrollClampingController *)self textView];
  textView7 = [(ICSharedScrollClampingController *)self textView];
  beginningOfDocument2 = [textView7 beginningOfDocument];
  v32 = [textView6 offsetFromPosition:beginningOfDocument2 toPosition:v24];

  textView8 = [(ICSharedScrollClampingController *)self textView];
  textStorage = [textView8 textStorage];
  v35 = [textStorage length];

  if (v28 < v35 && v32 < v35)
  {
    if (v28 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v28;
    }

    *index = v36;
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v37 = *index;
    }

    else
    {
      textView9 = [(ICSharedScrollClampingController *)self textView];
      layoutManager = [textView9 layoutManager];
      v37 = [layoutManager glyphIndexForCharacterAtIndex:*index];
    }

    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    textView10 = [(ICSharedScrollClampingController *)self textView];
    v42 = textView10;
    if (IsTextKit2Enabled)
    {
      [textView10 ic_rectForRange:{v37, 0}];
      v44 = v43;
      v46 = v45;
    }

    else
    {
      layoutManager2 = [textView10 layoutManager];
      [layoutManager2 lineFragmentRectForGlyphAtIndex:v37 effectiveRange:0];
      v44 = v48;
      v46 = v49;
    }

    v50 = 1.0;
    if (v46 >= 1.0)
    {
      v50 = v46;
    }

    *offset = (v13 - v44) / v50;
    *height = v46;
  }
}

- (void)mergeRelatedOperationsWillBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  object = [beginCopy object];

  v10 = ICDynamicCast();

  textView = [(ICSharedScrollClampingController *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];

  if (v10 == note)
  {
    userInitiatedSaveCount = self->_userInitiatedSaveCount;
    if (userInitiatedSaveCount <= 0)
    {
      if (userInitiatedSaveCount)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"_userInitiatedSaveCount == 0" functionName:"-[ICSharedScrollClampingController mergeRelatedOperationsWillBegin:]" simulateCrash:1 showAlert:0 format:@"userInitiatedSaveCount should not be negative"];
      }

      [(ICSharedScrollClampingController *)self clamp];
    }
  }
}

- (void)mergeRelatedOperationsDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];
  v5 = ICDynamicCast();

  textView = [(ICSharedScrollClampingController *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];

  if (v5 == note)
  {
    objc_opt_class();
    userInfo = [endCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35C78]];
    v11 = ICDynamicCast();

    if (v11)
    {
      v12 = [v11 unsignedIntegerValue] == 2;
    }

    else
    {
      v12 = 1;
    }

    [(ICSharedScrollClampingController *)self unclampWithMergeUpdates:v12];
  }
}

- (void)contextWillSaveUserInitiatedChange:(id)change
{
  if ([(ICSharedScrollClampingController *)self notificationObjectMatchesTextViewNote:change])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__ICSharedScrollClampingController_contextWillSaveUserInitiatedChange___block_invoke;
    v4[3] = &unk_2781AC0B8;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __71__ICSharedScrollClampingController_contextWillSaveUserInitiatedChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserInitiatedSaveCount:{objc_msgSend(WeakRetained, "userInitiatedSaveCount") + 1}];
}

- (void)contextDidSaveUserInitiatedChange:(id)change
{
  if ([(ICSharedScrollClampingController *)self notificationObjectMatchesTextViewNote:change])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__ICSharedScrollClampingController_contextDidSaveUserInitiatedChange___block_invoke;
    v4[3] = &unk_2781AC0B8;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __70__ICSharedScrollClampingController_contextDidSaveUserInitiatedChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserInitiatedSaveCount:{objc_msgSend(WeakRetained, "userInitiatedSaveCount") - 1}];
}

- (BOOL)notificationObjectMatchesTextViewNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  object = [noteCopy object];

  v6 = ICCheckedDynamicCast();

  textView = [(ICSharedScrollClampingController *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];
  objectID = [note objectID];

  LOBYTE(textView) = [v6 isEqual:objectID];
  return textView;
}

- (void)textStorageWillEndEditingNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  performBlockOnMainThread();
}

void __74__ICSharedScrollClampingController_textStorageWillEndEditingNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) textView];
  v4 = [v3 textStorage];

  if (v2 != v4 || [*(a1 + 40) scrollClampingTopTextIndex] < 1)
  {
    return;
  }

  v18 = [*(a1 + 32) userInfo];
  v5 = [v18 objectForKeyedSubscript:*MEMORY[0x277D36A18]];
  v6 = [v5 rangeValue];

  v7 = [v18 objectForKeyedSubscript:*MEMORY[0x277D36A08]];
  v8 = [v7 integerValue];

  v9 = [v18 objectForKeyedSubscript:*MEMORY[0x277D36A10]];
  v10 = [v9 unsignedIntegerValue];

  if ((v10 & 2) != 0 && v6 < [*(a1 + 40) scrollClampingTopTextIndex])
  {
    [*(a1 + 40) setScrollClampingTopTextIndex:{objc_msgSend(*(a1 + 40), "scrollClampingTopTextIndex") + v8}];
    if (v8 < 1)
    {
      if (v8 < 0 && [*(a1 + 40) scrollClampingTopTextIndex] < -v8)
      {
        v15 = MEMORY[0x277D36198];
        v16 = "self.scrollClampingTopTextIndex >= ({ __typeof__(changeInLength) __a9 = (changeInLength); (__a9 < 0) ? - __a9 : __a9; })";
        v17 = @"scroll-clamping text index reduced to negative";
        goto LABEL_9;
      }
    }

    else
    {
      v11 = [*(a1 + 40) scrollClampingTopTextIndex];
      v12 = [*(a1 + 40) textView];
      v13 = [v12 textStorage];
      v14 = [v13 length];

      if (v11 > v14)
      {
        v15 = MEMORY[0x277D36198];
        v16 = "self.scrollClampingTopTextIndex <= self.textView.textStorage.length";
        v17 = @"scroll-clamping text index out of bounds";
LABEL_9:
        [v15 handleFailedAssertWithCondition:v16 functionName:"-[ICSharedScrollClampingController textStorageWillEndEditingNotification:]_block_invoke" simulateCrash:1 showAlert:0 format:v17];
      }
    }
  }
}

- (void)clamp
{
  if (![(ICSharedScrollClampingController *)self scrollClampingStack])
  {
    v4 = 0.0;
    v5 = 0;
    v3 = 0.0;
    [(ICSharedScrollClampingController *)self topTextIndex:&v5 topTextOffset:&v4 topTextFragmentHeight:&v3];
    [(ICSharedScrollClampingController *)self setScrollClampingTopTextIndex:v5];
    [(ICSharedScrollClampingController *)self setScrollClampingTopOffsetFactor:v4];
    [(ICSharedScrollClampingController *)self setScrollClampingTopOffsetLineFragmentHeight:v3];
  }

  [(ICSharedScrollClampingController *)self setScrollClampingStack:[(ICSharedScrollClampingController *)self scrollClampingStack]+ 1];
}

- (void)unclampWithMergeUpdates:(BOOL)updates
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ICSharedScrollClampingController_unclampWithMergeUpdates___block_invoke;
  aBlock[3] = &unk_2781ABCF8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  [(ICSharedScrollClampingController *)self scrollClampingTurnOffDelay];
  if (v6 > 0.0 && updates)
  {
    [(ICSharedScrollClampingController *)self scrollClampingTurnOffDelay];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    dispatch_after(v8, MEMORY[0x277D85CD0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

void __60__ICSharedScrollClampingController_unclampWithMergeUpdates___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) setScrollClampingStack:{objc_msgSend(*(a1 + 32), "scrollClampingStack") - 1}];
  if (![*(a1 + 32) scrollClampingStack])
  {
    [*(a1 + 32) setScrollClampingTopTextIndex:-1];
    [*(a1 + 32) setScrollClampingTopOffsetFactor:0.0];
  }

  objc_sync_exit(obj);
}

- (ICTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end