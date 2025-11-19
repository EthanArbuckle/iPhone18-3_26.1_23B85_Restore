@interface ICSharedScrollClampingController
- (BOOL)isClamped;
- (BOOL)notificationObjectMatchesTextViewNote:(id)a3;
- (ICSharedScrollClampingController)initWithTextView:(id)a3 listensToMergeNotifications:(BOOL)a4;
- (ICSharedScrollClampingController)initWithTextView:(id)a3 listensToMergeNotifications:(BOOL)a4 clampingTurnOffDelay:(double)a5;
- (ICTextView)textView;
- (id)clampedYValue;
- (void)clamp;
- (void)contextDidSaveUserInitiatedChange:(id)a3;
- (void)contextWillSaveUserInitiatedChange:(id)a3;
- (void)dealloc;
- (void)mergeRelatedOperationsDidEnd:(id)a3;
- (void)mergeRelatedOperationsWillBegin:(id)a3;
- (void)textStorageWillEndEditingNotification:(id)a3;
- (void)topTextIndex:(unint64_t *)a3 topTextOffset:(double *)a4 topTextFragmentHeight:(double *)a5;
- (void)unclampWithMergeUpdates:(BOOL)a3;
@end

@implementation ICSharedScrollClampingController

- (id)clampedYValue
{
  if ([(ICSharedScrollClampingController *)self scrollClampingTopTextIndex]< 0)
  {
    goto LABEL_8;
  }

  v3 = [(ICSharedScrollClampingController *)self scrollClampingTopTextIndex];
  v4 = [(ICSharedScrollClampingController *)self textView];
  v5 = [v4 textStorage];
  v6 = [v5 length];

  if (v3 >= v6)
  {
    goto LABEL_8;
  }

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v8 = [(ICSharedScrollClampingController *)self textView];
  v9 = v8;
  if (IsTextKit2Enabled)
  {
    v10 = [v8 textLayoutManager];

    v11 = [v10 documentRange];
    v12 = [v11 location];
    v13 = [v10 locationFromLocation:v12 withOffset:{-[ICSharedScrollClampingController scrollClampingTopTextIndex](self, "scrollClampingTopTextIndex")}];

    v14 = [v10 textLayoutFragmentForLocation:v13];
    [v14 layoutFragmentFrame];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v19 = [v8 layoutManager];
    v20 = [v19 glyphIndexForCharacterAtIndex:{-[ICSharedScrollClampingController scrollClampingTopTextIndex](self, "scrollClampingTopTextIndex")}];

    v10 = [(ICSharedScrollClampingController *)self textView];
    v13 = [v10 layoutManager];
    [v13 lineFragmentRectForGlyphAtIndex:v20 effectiveRange:0];
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

  v3 = [(ICSharedScrollClampingController *)self scrollClampingTopTextIndex];
  v4 = [(ICSharedScrollClampingController *)self textView];
  v5 = [v4 textStorage];
  v6 = v3 < [v5 length];

  return v6;
}

- (ICSharedScrollClampingController)initWithTextView:(id)a3 listensToMergeNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
    objc_storeWeak(&v8->_textView, v6);
    if (v4)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v8 selector:sel_mergeRelatedOperationsWillBegin_ name:*MEMORY[0x277D35D00] object:0];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:v8 selector:sel_mergeRelatedOperationsDidEnd_ name:*MEMORY[0x277D35CF8] object:0];

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 addObserver:v8 selector:sel_contextWillSaveUserInitiatedChange_ name:*MEMORY[0x277D35CD0] object:0];

      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 addObserver:v8 selector:sel_contextDidSaveUserInitiatedChange_ name:*MEMORY[0x277D35CC8] object:0];
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v8 selector:sel_textStorageWillEndEditingNotification_ name:*MEMORY[0x277D36660] object:0];
  }

  return v8;
}

- (ICSharedScrollClampingController)initWithTextView:(id)a3 listensToMergeNotifications:(BOOL)a4 clampingTurnOffDelay:(double)a5
{
  result = [(ICSharedScrollClampingController *)self initWithTextView:a3 listensToMergeNotifications:a4];
  if (a5 > 0.0 && result != 0)
  {
    result->_scrollClampingTurnOffDelay = a5;
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSharedScrollClampingController;
  [(ICSharedScrollClampingController *)&v4 dealloc];
}

- (void)topTextIndex:(unint64_t *)a3 topTextOffset:(double *)a4 topTextFragmentHeight:(double *)a5
{
  v9 = [(ICSharedScrollClampingController *)self textView];
  [v9 visibleTextRect];
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
  v22 = [(ICSharedScrollClampingController *)self textView];
  v51 = [v22 closestPositionToPoint:{MinX, MinY}];

  v23 = [(ICSharedScrollClampingController *)self textView];
  v24 = [v23 closestPositionToPoint:{MaxX, v21}];

  v25 = [(ICSharedScrollClampingController *)self textView];
  v26 = [(ICSharedScrollClampingController *)self textView];
  v27 = [v26 beginningOfDocument];
  v28 = [v25 offsetFromPosition:v27 toPosition:v51];

  v29 = [(ICSharedScrollClampingController *)self textView];
  v30 = [(ICSharedScrollClampingController *)self textView];
  v31 = [v30 beginningOfDocument];
  v32 = [v29 offsetFromPosition:v31 toPosition:v24];

  v33 = [(ICSharedScrollClampingController *)self textView];
  v34 = [v33 textStorage];
  v35 = [v34 length];

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

    *a3 = v36;
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v37 = *a3;
    }

    else
    {
      v38 = [(ICSharedScrollClampingController *)self textView];
      v39 = [v38 layoutManager];
      v37 = [v39 glyphIndexForCharacterAtIndex:*a3];
    }

    IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
    v41 = [(ICSharedScrollClampingController *)self textView];
    v42 = v41;
    if (IsTextKit2Enabled)
    {
      [v41 ic_rectForRange:{v37, 0}];
      v44 = v43;
      v46 = v45;
    }

    else
    {
      v47 = [v41 layoutManager];
      [v47 lineFragmentRectForGlyphAtIndex:v37 effectiveRange:0];
      v44 = v48;
      v46 = v49;
    }

    v50 = 1.0;
    if (v46 >= 1.0)
    {
      v50 = v46;
    }

    *a4 = (v13 - v44) / v50;
    *a5 = v46;
  }
}

- (void)mergeRelatedOperationsWillBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v10 = ICDynamicCast();

  v6 = [(ICSharedScrollClampingController *)self textView];
  v7 = [v6 editorContainer];
  v8 = [v7 note];

  if (v10 == v8)
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

- (void)mergeRelatedOperationsDidEnd:(id)a3
{
  v13 = a3;
  objc_opt_class();
  v4 = [v13 object];
  v5 = ICDynamicCast();

  v6 = [(ICSharedScrollClampingController *)self textView];
  v7 = [v6 editorContainer];
  v8 = [v7 note];

  if (v5 == v8)
  {
    objc_opt_class();
    v9 = [v13 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D35C78]];
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

- (void)contextWillSaveUserInitiatedChange:(id)a3
{
  if ([(ICSharedScrollClampingController *)self notificationObjectMatchesTextViewNote:a3])
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

- (void)contextDidSaveUserInitiatedChange:(id)a3
{
  if ([(ICSharedScrollClampingController *)self notificationObjectMatchesTextViewNote:a3])
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

- (BOOL)notificationObjectMatchesTextViewNote:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICCheckedDynamicCast();

  v7 = [(ICSharedScrollClampingController *)self textView];
  v8 = [v7 editorContainer];
  v9 = [v8 note];
  v10 = [v9 objectID];

  LOBYTE(v7) = [v6 isEqual:v10];
  return v7;
}

- (void)textStorageWillEndEditingNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)unclampWithMergeUpdates:(BOOL)a3
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ICSharedScrollClampingController_unclampWithMergeUpdates___block_invoke;
  aBlock[3] = &unk_2781ABCF8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  [(ICSharedScrollClampingController *)self scrollClampingTurnOffDelay];
  if (v6 > 0.0 && a3)
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