@interface LUILogViewerController
- (BOOL)_performSearch:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (LUILogContentViewController)logContentViewController;
- (LUILogFilterViewController)logFilterViewController;
- (LUILogViewerAssistiveTouch)assistiveTouch;
- (LUILogViewerController)init;
- (LUILogViewerControllerDelegate)delegate;
- (LUILogViewerView)logViewerView;
- (UIPageViewController)pageViewController;
- (UIPanGestureRecognizer)panGesture;
- (UIView)baseView;
- (_NSRange)_searchRangeForDate:(id)a3 inText:(id)a4;
- (id)_attributedLogStringFrom:(id)a3 fontSize:(double)a4;
- (id)_getLogsFromDate:(id)a3 predicate:(id)a4 duplicateHandler:(id)a5;
- (id)orderedViewControllers;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)_cleanupHighlight;
- (void)_cleanupLogs;
- (void)_decreaseCurrentHighlightIndex;
- (void)_dismissLogViewerView;
- (void)_grabLogAndUpdateTextView;
- (void)_increaseCurrentHighlightIndex;
- (void)_moveElementsToView:(id)a3;
- (void)_presentLogViewerView;
- (void)_setupInitialHighlight;
- (void)_startStreamLog;
- (void)_stopStreaming;
- (void)_updateHighlight;
- (void)_updateLogFromLastTime;
- (void)dealloc;
- (void)handlePan:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)logContentViewController:(id)a3 didSelectDateForLog:(id)a4;
- (void)logContentViewController:(id)a3 didSelectLogOptionWithTimeInterval:(double)a4;
- (void)logFilterViewController:(id)a3 didAddPredicates:(id)a4;
- (void)logFilterViewController:(id)a3 didDeletePredicate:(id)a4;
- (void)logFilterViewControllerApplyButtonTapped:(id)a3;
- (void)logViewerLeftCaretButtonTapped:(id)a3;
- (void)logViewerRightCaretButtonTapped:(id)a3;
- (void)logViewerViewClearButtontapped:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setup;
- (void)showLogContentPage;
- (void)showLogFilterPage;
@end

@implementation LUILogViewerController

- (void)setup
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 window];
  [(LUILogViewerController *)self setBaseView:v5];

  v6 = [(LUILogViewerController *)self baseView];
  [(LUILogViewerController *)self _moveElementsToView:v6];

  CGAffineTransformMakeScale(&v10, 0.0, 0.0);
  v7 = [(LUILogViewerController *)self assistiveTouch];
  v9 = v10;
  [v7 setTransform:&v9];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__LUILogViewerController_setup__block_invoke;
  v8[3] = &unk_2798284C0;
  v8[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:0.6 completion:1.0];
}

void __31__LUILogViewerController_setup__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) assistiveTouch];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

- (LUILogViewerController)init
{
  v12.receiver = self;
  v12.super_class = LUILogViewerController;
  v2 = [(LUILogViewerController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    predicates = v2->_predicates;
    v2->_predicates = v3;

    v5 = objc_opt_new();
    logMinutesSet = v2->_logMinutesSet;
    v2->_logMinutesSet = v5;

    v7 = objc_opt_new();
    logMinutesArray = v2->_logMinutesArray;
    v2->_logMinutesArray = v7;

    [(LUILogViewerController *)v2 addObserver:v2 forKeyPath:@"predicates" options:1 context:0];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(LUILogViewerController *)self removeObserver:self forKeyPath:@"predicates"];
  v3.receiver = self;
  v3.super_class = LUILogViewerController;
  [(LUILogViewerController *)&v3 dealloc];
}

- (void)_grabLogAndUpdateTextView
{
  [(LUILogViewerController *)self logInterval];
  if (v3 > 0.0)
  {
    v4 = [(LUILogViewerController *)self logContentViewController];
    v5 = [v4 textView];
    [v5 setText:0];

    v6 = [(LUILogViewerController *)self logContentViewController];
    [v6 showSpinner:1];

    v7 = [(LUILogViewerController *)self logContentViewController];
    v8 = [v7 view];
    [v8 setUserInteractionEnabled:0];

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__LUILogViewerController__grabLogAndUpdateTextView__block_invoke;
    block[3] = &unk_2798284C0;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

void __51__LUILogViewerController__grabLogAndUpdateTextView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEAA8];
  [v2 logInterval];
  v5 = [v3 dateWithTimeIntervalSinceNow:-v4];
  v6 = [*(a1 + 32) predicates];
  if ([v6 count])
  {
    v7 = MEMORY[0x277CCA920];
    v8 = [*(a1 + 32) predicates];
    v9 = [v7 orPredicateWithSubpredicates:v8];
    v10 = [v2 _getLogsFromDate:v5 predicate:v9 duplicateHandler:0];
  }

  else
  {
    v10 = [v2 _getLogsFromDate:v5 predicate:0 duplicateHandler:0];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__LUILogViewerController__grabLogAndUpdateTextView__block_invoke_2;
  v12[3] = &unk_2798284E8;
  v12[4] = *(a1 + 32);
  v13 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __51__LUILogViewerController__grabLogAndUpdateTextView__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) logContentViewController];
  v4 = [v3 textView];
  [v4 setAttributedText:v2];

  v5 = [*(a1 + 32) logContentViewController];
  [v5 showSpinner:0];

  v7 = [*(a1 + 32) logContentViewController];
  v6 = [v7 view];
  [v6 setUserInteractionEnabled:1];
}

- (id)_getLogsFromDate:(id)a3 predicate:(id)a4 duplicateHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(LUILogViewerController *)self setIsFetchingLogs:1];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277D24438] localStore];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __70__LUILogViewerController__getLogsFromDate_predicate_duplicateHandler___block_invoke;
  v29[3] = &unk_279828510;
  v29[4] = &v30;
  [v12 prepareWithCompletionHandler:v29];
  v13 = dispatch_semaphore_create(0);
  v14 = objc_alloc(MEMORY[0x277D24440]);
  v15 = [v14 initWithSource:v31[5]];
  v16 = _getLogsFromDate_predicate_duplicateHandler__stream;
  _getLogsFromDate_predicate_duplicateHandler__stream = v15;

  [_getLogsFromDate_predicate_duplicateHandler__stream setFlags:21];
  [_getLogsFromDate_predicate_duplicateHandler__stream setFilterPredicate:v9];
  v17 = _getLogsFromDate_predicate_duplicateHandler__stream;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__LUILogViewerController__getLogsFromDate_predicate_duplicateHandler___block_invoke_2;
  v26[3] = &unk_279828538;
  v26[4] = self;
  v18 = v10;
  v28 = v18;
  v19 = v11;
  v27 = v19;
  [v17 setEventHandler:v26];
  v20 = _getLogsFromDate_predicate_duplicateHandler__stream;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__LUILogViewerController__getLogsFromDate_predicate_duplicateHandler___block_invoke_3;
  v24[3] = &unk_279828560;
  v21 = v13;
  v25 = v21;
  [v20 setInvalidationHandler:v24];
  [_getLogsFromDate_predicate_duplicateHandler__stream activateStreamFromDate:v8];
  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  [(LUILogViewerController *)self setIsFetchingLogs:0];
  v22 = [v19 copy];

  _Block_object_dispose(&v30, 8);

  return v22;
}

void __70__LUILogViewerController__getLogsFromDate_predicate_duplicateHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = a2;
  if ([v27 type] == 1024)
  {
    v3 = [*(a1 + 32) firstLogDate];

    if (!v3)
    {
      v4 = [v27 date];
      [*(a1 + 32) setFirstLogDate:v4];
    }

    v5 = [*(a1 + 32) _attributedLogStringFrom:v27 fontSize:16.0];
    v6 = v5;
    v7 = *(a1 + 48);
    if (!v7 || ([v5 string], v8 = objc_claimAutoreleasedReturnValue(), v9 = (*(v7 + 16))(v7, v8), v8, (v9 & 1) == 0))
    {
      [*(a1 + 40) appendAttributedString:v6];
      v10 = [v27 date];
      [*(a1 + 32) setLastLogDate:v10];

      v11 = [*(a1 + 32) logMinutesSet];
      v12 = MEMORY[0x277CCABB0];
      v13 = [v27 date];
      [v13 timeIntervalSinceReferenceDate];
      v15 = [v12 numberWithDouble:floor(v14)];
      v16 = [v11 containsObject:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [*(a1 + 32) logMinutesSet];
        v18 = MEMORY[0x277CCABB0];
        v19 = [v27 date];
        [v19 timeIntervalSinceReferenceDate];
        v21 = [v18 numberWithDouble:floor(v20)];
        [v17 addObject:v21];

        v22 = [*(a1 + 32) logMinutesArray];
        v23 = MEMORY[0x277CCABB0];
        v24 = [v27 date];
        [v24 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:floor(v25)];
        [v22 addObject:v26];
      }
    }
  }
}

- (id)_attributedLogStringFrom:(id)a3 fontSize:(double)a4
{
  v58[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v56 = *MEMORY[0x277D740C0];
  v7 = v56;
  v8 = [MEMORY[0x277D75348] whiteColor];
  v58[0] = v8;
  v57 = *MEMORY[0x277D740A8];
  v9 = v57;
  v10 = [MEMORY[0x277D74300] systemFontOfSize:a4];
  v58[1] = v10;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v56 count:2];

  v46 = [MEMORY[0x277D75348] logCyanColor];
  v54[1] = v9;
  v55[0] = v46;
  v54[0] = v7;
  v11 = [MEMORY[0x277D74300] systemFontOfSize:a4];
  v55[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = MEMORY[0x277CCACA8];
  v15 = [v5 date];
  v16 = secondStringWithDate(v15);
  v17 = [v14 stringWithFormat:@"%@.%06d   ", v16, *(objc_msgSend(v5, "unixDate") + 8)];
  v18 = [v13 initWithString:v17 attributes:v12];

  v48 = v18;
  [v6 appendAttributedString:v18];
  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = v5;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d   ", objc_msgSend(v5, "processIdentifier")];
  v22 = [v19 initWithString:v21 attributes:v49];

  v47 = v22;
  [v6 appendAttributedString:v22];
  v23 = [MEMORY[0x277D75348] logPurpleColor];

  v52[1] = v9;
  v53[0] = v23;
  v52[0] = v7;
  v24 = [MEMORY[0x277D74300] systemFontOfSize:a4];
  v53[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

  v26 = objc_alloc(MEMORY[0x277CCA898]);
  v27 = [v20 process];
  v28 = [v26 initWithString:v27 attributes:v25];

  [v6 appendAttributedString:v28];
  v29 = objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:attributes:", @": ("), v49;
  v30 = v6;
  [v6 appendAttributedString:v29];
  v31 = [v20 sender];

  if (v31)
  {
    v32 = [MEMORY[0x277D75348] logYellowColor];

    v50[1] = v9;
    v51[0] = v32;
    v50[0] = v7;
    v33 = [MEMORY[0x277D74300] systemFontOfSize:a4];
    v51[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

    v35 = objc_alloc(MEMORY[0x277CCA898]);
    v36 = [v20 sender];
    v37 = [v35 initWithString:v36 attributes:v34];

    [v30 appendAttributedString:v37];
    v25 = v34;
    v23 = v32;
  }

  v38 = v30;
  v39 = objc_alloc(MEMORY[0x277CCA898]);
  v40 = MEMORY[0x277CCACA8];
  v41 = [v20 composedMessage];
  v42 = [v40 stringWithFormat:@" %@\n\n"], v41);
  v43 = [v39 initWithString:v42 attributes:v49];

  [v38 appendAttributedString:v43];
  v44 = [v38 copy];

  return v44;
}

- (void)_startStreamLog
{
  v3 = objc_opt_new();
  [(LUILogViewerController *)self setLastLogDate:v3];

  [(LUILogViewerController *)self setIsStreaming:1];
  v4 = [(LUILogViewerController *)self logViewerView];
  [v4 switchClearButtonTitle:0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__LUILogViewerController__startStreamLog__block_invoke;
  v6[3] = &unk_279828588;
  v6[4] = self;
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v6 block:2.0];
  [v5 fire];
}

void __41__LUILogViewerController__startStreamLog__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isStreaming])
  {
    [*(a1 + 32) _updateLogFromLastTime];
  }

  else
  {
    [v3 invalidate];
  }
}

- (void)_stopStreaming
{
  [(LUILogViewerController *)self setIsStreaming:0];
  v3 = [(LUILogViewerController *)self logViewerView];
  [v3 switchClearButtonTitle:1];
}

- (void)_updateLogFromLastTime
{
  v3 = [(LUILogViewerController *)self logContentViewController];
  v4 = [v3 textView];
  [v4 contentOffset];
  v6 = v5;
  v7 = [(LUILogViewerController *)self logContentViewController];
  v8 = [v7 textView];
  [v8 contentSize];
  v10 = v9;
  v11 = [(LUILogViewerController *)self logContentViewController];
  v12 = [v11 textView];
  [v12 frame];
  v14 = v6 >= v10 - v13 + -50.0;

  v15 = [(LUILogViewerController *)self logContentViewController];
  v16 = [v15 textView];
  v17 = [v16 text];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v18 = dispatch_get_global_queue(0, 0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__LUILogViewerController__updateLogFromLastTime__block_invoke;
  v20[3] = &unk_279828600;
  v21 = v17;
  v22 = v24;
  v20[4] = self;
  v23 = v14;
  v19 = v17;
  dispatch_async(v18, v20);

  _Block_object_dispose(v24, 8);
}

void __48__LUILogViewerController__updateLogFromLastTime__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [v3 lastLogDate];
  v5 = [*(a1 + 32) predicates];
  v6 = [v5 count];
  if (v6)
  {
    v7 = MEMORY[0x277CCA920];
    v1 = [*(a1 + 32) predicates];
    v8 = [v7 orPredicateWithSubpredicates:v1];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__LUILogViewerController__updateLogFromLastTime__block_invoke_2;
  v16[3] = &unk_2798285B0;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = [v3 _getLogsFromDate:v4 predicate:v8 duplicateHandler:v16];
  if (v6)
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__LUILogViewerController__updateLogFromLastTime__block_invoke_3;
  block[3] = &unk_2798285D8;
  block[4] = *(a1 + 32);
  v14 = v10;
  v15 = *(a1 + 56);
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__LUILogViewerController__updateLogFromLastTime__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    goto LABEL_4;
  }

  v4 = 1;
  if (([*(a1 + 32) containsString:v3] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_4:
    v4 = 0;
  }

  return v4;
}

void __48__LUILogViewerController__updateLogFromLastTime__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) logContentViewController];
  v3 = [v2 textView];
  v4 = [v3 textStorage];
  [v4 appendAttributedString:*(a1 + 40)];

  if (*(a1 + 48) == 1)
  {
    v9 = [*(a1 + 32) logContentViewController];
    v5 = [v9 textView];
    v6 = [*(a1 + 32) logContentViewController];
    v7 = [v6 textView];
    v8 = [v7 text];
    [v5 scrollRangeToVisible:{objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4) - 1, 0}];
  }
}

- (void)_cleanupLogs
{
  [(LUILogViewerController *)self setLogInterval:0.0];
  v3 = [(LUILogViewerController *)self logContentViewController];
  v4 = [v3 textView];
  [v4 setText:0];

  v5 = [(LUILogViewerController *)self logContentViewController];
  [v5 clearScreenshots];

  v6 = [(LUILogViewerController *)self logViewerView];
  [v6 resetSearchResultLabel];

  [(LUILogViewerController *)self setHighlightRanges:MEMORY[0x277CBEBF8]];
  [(LUILogViewerController *)self setCurrentHighlightIndex:-1];
  [(LUILogViewerController *)self setFirstLogDate:0];
  [(LUILogViewerController *)self setLastLogDate:0];
  v7 = [(LUILogViewerController *)self logMinutesSet];
  [v7 removeAllObjects];

  v8 = [(LUILogViewerController *)self logMinutesArray];
  [v8 removeAllObjects];
}

- (void)keyboardWillShow:(id)a3
{
  v29 = a3;
  v4 = [(LUILogViewerController *)self assistiveTouch];
  [v4 alpha];
  v6 = v5;

  if (v6 != 0.0)
  {
    [(LUILogViewerController *)self setOutsideKeyboardIsShowing:1];
    v7 = [v29 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
    v9 = v8;
    if (v8)
    {
      [v8 CGRectValue];
      v11 = v10;
      v12 = [(LUILogViewerController *)self assistiveTouch];
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      v21 = v11 + CGRectGetMaxY(v31);
      v22 = [MEMORY[0x277D759A0] mainScreen];
      [v22 bounds];
      v24 = v23;

      if (v21 > v24)
      {
        v25 = [MEMORY[0x277D759A0] mainScreen];
        [v25 bounds];
        v27 = v26 - v11 - v20;

        v28 = [(LUILogViewerController *)self assistiveTouch];
        [v28 setFrame:{v14, v27, v18, v20}];
      }
    }
  }
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(LUILogViewerController *)self assistiveTouch];
  [v4 alpha];
  if (v5 == 0.0)
  {
    v6 = [(LUILogViewerController *)self outsideKeyboardIsShowing];

    if (!v6)
    {
      return;
    }
  }

  else
  {
  }

  [(LUILogViewerController *)self setOutsideKeyboardIsShowing:0];
}

- (void)_presentLogViewerView
{
  v3 = [(LUILogViewerController *)self outsideKeyboardIsShowing];
  v4 = [(LUILogViewerController *)self logViewerView];
  v5 = [v4 searchBar];
  [v5 setUserInteractionEnabled:!v3];

  v6 = [(LUILogViewerController *)self assistiveTouch];
  [v6 setAlpha:0.0];

  v7 = [(LUILogViewerController *)self logViewerView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(LUILogViewerController *)self assistiveTouch];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(LUILogViewerController *)self logViewerView];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [(LUILogViewerController *)self logViewerView];
  v27 = [v26 superview];

  if (!v27)
  {
    v28 = [(LUILogViewerController *)self baseView];
    v29 = [(LUILogViewerController *)self logViewerView];
    [v28 addSubview:v29];
  }

  v30 = [(LUILogViewerController *)self logViewerView];
  [v30 setAlpha:1.0];

  v31 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
  v32 = MEMORY[0x277CCABB0];
  v33 = [(LUILogViewerController *)self assistiveTouch];
  v34 = [v33 layer];
  [v34 cornerRadius];
  v35 = [v32 numberWithDouble:?];
  [v31 setFromValue:v35];

  [v31 setToValue:&unk_286841AC8];
  [v31 setDuration:0.200000003];
  v36 = [(LUILogViewerController *)self logViewerView];
  v37 = [v36 layer];
  [v37 addAnimation:v31 forKey:0];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __47__LUILogViewerController__presentLogViewerView__block_invoke;
  v39[3] = &unk_279828628;
  v39[4] = self;
  v39[5] = v9;
  v39[6] = v11;
  v39[7] = v13;
  v39[8] = v15;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __47__LUILogViewerController__presentLogViewerView__block_invoke_2;
  v38[3] = &unk_279828650;
  v38[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v39 usingSpringWithDamping:v38 initialSpringVelocity:0.200000003 options:0.0 animations:0.8 completion:1.0];
}

void __47__LUILogViewerController__presentLogViewerView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) logViewerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __47__LUILogViewerController__presentLogViewerView__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 logViewerControllerDidOpenLogViewer:*(a1 + 32)];
    }
  }
}

- (void)_dismissLogViewerView
{
  v3 = [(LUILogViewerController *)self logViewerView];
  [v3 setAlpha:0.0];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D75348] blackColor];
  v6 = [v5 colorWithAlphaComponent:0.8];
  [v4 setBackgroundColor:v6];

  v7 = [(LUILogViewerController *)self logViewerView];
  [v7 frame];
  [v4 setFrame:?];

  v8 = [(LUILogViewerController *)self assistiveTouch];
  v9 = [v8 layer];
  [v9 cornerRadius];
  v11 = v10;
  v12 = [v4 layer];
  [v12 setCornerRadius:v11];

  v13 = [(LUILogViewerController *)self baseView];
  [v13 addSubview:v4];

  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
  [v14 setFromValue:&unk_286841AC8];
  v15 = MEMORY[0x277CCABB0];
  v16 = [(LUILogViewerController *)self assistiveTouch];
  v17 = [v16 layer];
  [v17 cornerRadius];
  v18 = [v15 numberWithDouble:?];
  [v14 setToValue:v18];

  [v14 setDuration:0.200000003];
  v19 = [v4 layer];
  [v19 addAnimation:v14 forKey:0];

  v20 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__LUILogViewerController__dismissLogViewerView__block_invoke;
  v24[3] = &unk_2798284E8;
  v25 = v4;
  v26 = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __47__LUILogViewerController__dismissLogViewerView__block_invoke_2;
  v22[3] = &unk_279828678;
  v22[4] = self;
  v23 = v25;
  v21 = v25;
  [v20 animateWithDuration:0x10000 delay:v24 usingSpringWithDamping:v22 initialSpringVelocity:0.200000003 options:0.0 animations:0.8 completion:1.0];
}

void __47__LUILogViewerController__dismissLogViewerView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) assistiveTouch];
  [v2 frame];
  [*(a1 + 32) setFrame:?];
}

void __47__LUILogViewerController__dismissLogViewerView__block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) assistiveTouch];
  [v4 setAlpha:1.0];

  [*(a1 + 40) removeFromSuperview];
  if (a2)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 logViewerControllerDidCloseLogViewer:*(a1 + 32)];
    }
  }
}

- (void)showLogFilterPage
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(LUILogViewerController *)self pageViewController];
  v4 = [v3 viewControllers];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [(LUILogViewerController *)self logFilterViewController];

  if (v5 != v6)
  {
    v7 = [(LUILogViewerController *)self pageViewController];
    v8 = [v7 view];
    [v8 setUserInteractionEnabled:0];

    objc_initWeak(&location, self);
    v9 = [(LUILogViewerController *)self pageViewController];
    v10 = [(LUILogViewerController *)self logFilterViewController];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__LUILogViewerController_showLogFilterPage__block_invoke;
    v12[3] = &unk_2798286A0;
    objc_copyWeak(&v13, &location);
    [v9 setViewControllers:v11 direction:0 animated:1 completion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __43__LUILogViewerController_showLogFilterPage__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pageViewController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:1];

  if (a2)
  {
    v5 = [WeakRetained logViewerView];
    [v5 highlightFilterButton:1];

    v6 = [WeakRetained logViewerView];
    [v6 highlightLogButton:0];
  }
}

- (void)showLogContentPage
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(LUILogViewerController *)self pageViewController];
  v4 = [v3 viewControllers];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [(LUILogViewerController *)self logContentViewController];

  if (v5 != v6)
  {
    v7 = [(LUILogViewerController *)self pageViewController];
    v8 = [v7 view];
    [v8 setUserInteractionEnabled:0];

    objc_initWeak(&location, self);
    v9 = [(LUILogViewerController *)self pageViewController];
    v10 = [(LUILogViewerController *)self logContentViewController];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__LUILogViewerController_showLogContentPage__block_invoke;
    v12[3] = &unk_2798286A0;
    objc_copyWeak(&v13, &location);
    [v9 setViewControllers:v11 direction:1 animated:1 completion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __44__LUILogViewerController_showLogContentPage__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pageViewController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:1];

  if (a2)
  {
    v5 = [WeakRetained logViewerView];
    [v5 highlightFilterButton:0];

    v6 = [WeakRetained logViewerView];
    [v6 highlightLogButton:1];
  }
}

- (void)_moveElementsToView:(id)a3
{
  v4 = a3;
  v5 = [(LUILogViewerController *)self assistiveTouch];
  v6 = [v5 superview];
  v7 = [(LUILogViewerController *)self panGesture];
  [v6 removeGestureRecognizer:v7];

  v8 = [(LUILogViewerController *)self assistiveTouch];
  [v8 removeFromSuperview];

  v9 = [(LUILogViewerView *)self->_logViewerView superview];

  if (v9)
  {
    v10 = [(LUILogViewerController *)self logViewerView];
    [v10 removeFromSuperview];

    v11 = [(LUILogViewerController *)self assistiveTouch];
    [v4 addSubview:v11];

    v12 = [(LUILogViewerController *)self panGesture];
    [v4 addGestureRecognizer:v12];

    v14 = [(LUILogViewerController *)self logViewerView];
    [v4 addSubview:?];
  }

  else
  {
    v13 = [(LUILogViewerController *)self assistiveTouch];
    [v4 addSubview:v13];

    v14 = [(LUILogViewerController *)self panGesture];
    [v4 addGestureRecognizer:?];
  }
}

- (void)_increaseCurrentHighlightIndex
{
  v3 = [(LUILogViewerController *)self currentHighlightIndex]+ 1;
  v4 = [(LUILogViewerController *)self highlightRanges];
  -[LUILogViewerController setCurrentHighlightIndex:](self, "setCurrentHighlightIndex:", v3 % [v4 count]);

  v6 = [(LUILogViewerController *)self logViewerView];
  v5 = [(LUILogViewerController *)self highlightRanges];
  [v6 updateSearchResultLabelWithTotalResult:objc_msgSend(v5 currentIndex:{"count"), -[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex") + 1}];
}

- (void)_decreaseCurrentHighlightIndex
{
  v3 = [(LUILogViewerController *)self currentHighlightIndex];
  v4 = [(LUILogViewerController *)self highlightRanges];
  v5 = v3 + [v4 count] - 1;
  v6 = [(LUILogViewerController *)self highlightRanges];
  -[LUILogViewerController setCurrentHighlightIndex:](self, "setCurrentHighlightIndex:", v5 % [v6 count]);

  v8 = [(LUILogViewerController *)self logViewerView];
  v7 = [(LUILogViewerController *)self highlightRanges];
  [v8 updateSearchResultLabelWithTotalResult:objc_msgSend(v7 currentIndex:{"count"), -[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex") + 1}];
}

- (BOOL)_performSearch:(id)a3
{
  v4 = a3;
  [(LUILogViewerController *)self _cleanupHighlight];
  v5 = objc_opt_new();
  v6 = [(LUILogViewerController *)self logContentViewController];
  v7 = [v6 textView];
  v8 = [v7 text];
  v9 = [v8 lowercaseString];

  v10 = [v4 lowercaseString];

  v11 = [v9 rangeOfString:v10];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      v15 = [MEMORY[0x277CCAE60] valueWithRange:{v13, v14}];
      [v5 addObject:v15];

      v13 = [v9 rangeOfString:v10 options:0 range:v13 + v14 locale:{objc_msgSend(v9, "length") - (v13 + v14), 0}];
      v14 = v16;
    }

    while (v16);
  }

  v17 = [v5 count];
  if (v17)
  {
    v18 = [v5 copy];
    [(LUILogViewerController *)self setHighlightRanges:v18];

    [(LUILogViewerController *)self _increaseCurrentHighlightIndex];
    [(LUILogViewerController *)self _setupInitialHighlight];
  }

  return v17 != 0;
}

- (void)_setupInitialHighlight
{
  v3 = [(LUILogViewerController *)self logContentViewController];
  v4 = [v3 textView];
  v5 = [v4 textStorage];
  [v5 beginEditing];

  v6 = [(LUILogViewerController *)self highlightRanges];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__LUILogViewerController__setupInitialHighlight__block_invoke;
  v21[3] = &unk_2798286C8;
  v21[4] = self;
  [v6 enumerateObjectsUsingBlock:v21];

  v7 = [(LUILogViewerController *)self logContentViewController];
  v8 = [v7 textView];
  v9 = [v8 textStorage];
  [v9 endEditing];

  v10 = [(LUILogViewerController *)self logContentViewController];
  v11 = [v10 textView];
  [v11 becomeFirstResponder];

  v12 = [(LUILogViewerController *)self highlightRanges];
  v13 = [v12 objectAtIndexedSubscript:{-[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex")}];
  v14 = [v13 rangeValue];
  v16 = v15;

  v17 = [(LUILogViewerController *)self logContentViewController];
  v18 = [v17 textView];
  [v18 setSelectedRange:{v14, v16}];

  v19 = [(LUILogViewerController *)self logContentViewController];
  v20 = [v19 textView];
  [v20 scrollRangeToVisible:{v14, v16}];
}

void __48__LUILogViewerController__setupInitialHighlight__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];
  v5 = v4;
  v11 = [*(a1 + 32) logContentViewController];
  v6 = [v11 textView];
  v7 = [v6 textStorage];
  v8 = *MEMORY[0x277D74068];
  v9 = [MEMORY[0x277D75348] grayColor];
  v10 = [v9 colorWithAlphaComponent:0.5];
  [v7 addAttribute:v8 value:v10 range:{v3, v5}];
}

- (void)_updateHighlight
{
  v3 = [(LUILogViewerController *)self highlightRanges];
  v4 = [v3 objectAtIndexedSubscript:{-[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex")}];
  v5 = [v4 rangeValue];
  v7 = v6;

  v8 = [(LUILogViewerController *)self logContentViewController];
  v9 = [v8 textView];
  [v9 becomeFirstResponder];

  v10 = [(LUILogViewerController *)self logContentViewController];
  v11 = [v10 textView];
  [v11 setSelectedRange:{v5, v7}];

  v13 = [(LUILogViewerController *)self logContentViewController];
  v12 = [v13 textView];
  [v12 scrollRangeToVisible:{v5, v7}];
}

- (void)_cleanupHighlight
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(LUILogViewerController *)self highlightRanges];

  if (v3)
  {
    v4 = [(LUILogViewerController *)self logContentViewController];
    v5 = [v4 textView];
    v6 = [v5 textStorage];
    [v6 beginEditing];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(LUILogViewerController *)self highlightRanges];
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = *MEMORY[0x277D74068];
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v23 + 1) + 8 * v11) rangeValue];
          v14 = v13;
          v15 = [(LUILogViewerController *)self logContentViewController];
          v16 = [v15 textView];
          v17 = [v16 textStorage];
          [v17 removeAttribute:v10 range:{v12, v14}];

          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v18 = [(LUILogViewerController *)self logContentViewController];
    v19 = [v18 textView];
    v20 = [v19 textStorage];
    [v20 endEditing];

    [(LUILogViewerController *)self setHighlightRanges:0];
    [(LUILogViewerController *)self setCurrentHighlightIndex:-1];
    v21 = [(LUILogViewerController *)self logViewerView];
    [v21 resetSearchResultLabel];
  }
}

- (_NSRange)_searchRangeForDate:(id)a3 inText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = secondStringWithDate(v6);
  v9 = [v7 rangeOfString:v8];
  v11 = v10;

  if (!v11)
  {
    v12 = [(LUILogViewerController *)self logMinutesArray];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      [v6 timeIntervalSinceReferenceDate];
      v15 = v14;
      v16 = [(LUILogViewerController *)self logMinutesArray];
      v17 = [v16 count] - 1;

      if (v17 < 2)
      {
        v18 = 0;
LABEL_13:
        v23 = [(LUILogViewerController *)self logMinutesArray];
        v24 = [v23 objectAtIndexedSubscript:v18];
        [v24 doubleValue];
        v26 = v25;

        if (v26 >= v15)
        {
          v31 = MEMORY[0x277CBEAA8];
          v32 = [(LUILogViewerController *)self logMinutesArray];
          v33 = [v32 objectAtIndexedSubscript:v18];
          [v33 doubleValue];
          v34 = v31;
        }

        else
        {
          v27 = [(LUILogViewerController *)self logMinutesArray];
          v28 = [v27 objectAtIndexedSubscript:v17];
          [v28 doubleValue];
          v30 = v29;

          if (v30 < v15)
          {
            v9 = [v7 length] - 1;
            v11 = 1;
            goto LABEL_21;
          }

          v36 = MEMORY[0x277CBEAA8];
          v32 = [(LUILogViewerController *)self logMinutesArray];
          v33 = [v32 objectAtIndexedSubscript:v17];
          [v33 doubleValue];
          v34 = v36;
        }

        v37 = [v34 dateWithTimeIntervalSinceReferenceDate:?];
        v38 = secondStringWithDate(v37);
        v9 = [v7 rangeOfString:v38];
        v11 = v39;
      }

      else
      {
        v18 = 0;
        while (1)
        {
          v19 = [(LUILogViewerController *)self logMinutesArray];
          v20 = [v19 objectAtIndexedSubscript:v18 + ((v17 - v18) >> 1)];
          [v20 doubleValue];
          v22 = v21;

          if (v15 == v22)
          {
            break;
          }

          if (v22 > v15)
          {
            v17 = v18 + ((v17 - v18) >> 1);
          }

          else
          {
            v18 += (v17 - v18) >> 1;
          }

          if (v18 + 1 >= v17)
          {
            goto LABEL_13;
          }
        }

        v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15];
        v33 = secondStringWithDate(v32);
        v9 = [v7 rangeOfString:v33];
        v11 = v35;
      }

      goto LABEL_21;
    }

    v9 = 0;
    v11 = 0;
  }

LABEL_21:

  v40 = v9;
  v41 = v11;
  result.length = v41;
  result.location = v40;
  return result;
}

- (LUILogViewerAssistiveTouch)assistiveTouch
{
  assistiveTouch = self->_assistiveTouch;
  if (!assistiveTouch)
  {
    v4 = [LUILogViewerAssistiveTouch alloc];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v6 = CGRectGetWidth(v13) + -70.0;
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v8 = [(LUILogViewerAssistiveTouch *)v4 initWithFrame:v6, CGRectGetHeight(v14) + -70.0, 70.0, 70.0];
    v9 = self->_assistiveTouch;
    self->_assistiveTouch = v8;

    v10 = [(LUILogViewerAssistiveTouch *)self->_assistiveTouch layer];
    [v10 setZPosition:3.40282347e38];

    [(LUILogViewerAssistiveTouch *)self->_assistiveTouch setAutoresizingMask:9];
    [(LUILogViewerAssistiveTouch *)self->_assistiveTouch addTarget:self action:sel_assistiveTouchButtonTapped_ forControlEvents:64];
    assistiveTouch = self->_assistiveTouch;
  }

  return assistiveTouch;
}

- (LUILogViewerView)logViewerView
{
  logViewerView = self->_logViewerView;
  if (!logViewerView)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    Height = CGRectGetHeight(v20);

    if (Height > 650.0)
    {
      Height = 650.0;
    }

    v6 = [LUILogViewerView alloc];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v8 = CGRectGetHeight(v21) - Height;
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 bounds];
    v10 = [(LUILogViewerView *)v6 initWithFrame:0.0, v8, CGRectGetWidth(v22), Height];
    v11 = self->_logViewerView;
    self->_logViewerView = v10;

    v12 = [(LUILogViewerView *)self->_logViewerView layer];
    [v12 setZPosition:3.40282347e38];

    [(LUILogViewerView *)self->_logViewerView setAutoresizingMask:10];
    [(LUILogViewerView *)self->_logViewerView setDelegate:self];
    v13 = [(LUILogViewerController *)self pageViewController];
    v14 = [v13 view];

    v15 = [(LUILogViewerView *)self->_logViewerView contentHolderView];
    [v15 frame];
    [v14 setFrame:?];

    v16 = [(LUILogViewerView *)self->_logViewerView contentHolderView];
    [v16 addSubview:v14];

    [v14 setAutoresizingMask:18];
    v17 = [(LUILogViewerView *)self->_logViewerView searchBar];
    [v17 setDelegate:self];

    [(LUILogViewerView *)self->_logViewerView highlightLogButton:1];
    logViewerView = self->_logViewerView;
  }

  return logViewerView;
}

- (UIPageViewController)pageViewController
{
  v11[1] = *MEMORY[0x277D85DE8];
  pageViewController = self->_pageViewController;
  if (!pageViewController)
  {
    v4 = [[LUILogViewerPageViewController alloc] initWithTransitionStyle:1 navigationOrientation:0 options:0];
    v5 = self->_pageViewController;
    self->_pageViewController = &v4->super;

    [(UIPageViewController *)self->_pageViewController setDataSource:self];
    [(UIPageViewController *)self->_pageViewController setDelegate:self];
    v6 = self->_pageViewController;
    v7 = [(LUILogViewerController *)self orderedViewControllers];
    v8 = [v7 objectAtIndexedSubscript:0];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(UIPageViewController *)v6 setViewControllers:v9 direction:0 animated:0 completion:0];

    pageViewController = self->_pageViewController;
  }

  return pageViewController;
}

- (LUILogContentViewController)logContentViewController
{
  logContentViewController = self->_logContentViewController;
  if (!logContentViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_logContentViewController;
    self->_logContentViewController = v4;

    [(LUILogContentViewController *)self->_logContentViewController setDelegate:self];
    logContentViewController = self->_logContentViewController;
  }

  return logContentViewController;
}

- (LUILogFilterViewController)logFilterViewController
{
  logFilterViewController = self->_logFilterViewController;
  if (!logFilterViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_logFilterViewController;
    self->_logFilterViewController = v4;

    [(LUILogFilterViewController *)self->_logFilterViewController setDelegate:self];
    logFilterViewController = self->_logFilterViewController;
  }

  return logFilterViewController;
}

- (UIPanGestureRecognizer)panGesture
{
  panGesture = self->_panGesture;
  if (!panGesture)
  {
    v4 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
    v5 = self->_panGesture;
    self->_panGesture = v4;

    [(UIPanGestureRecognizer *)self->_panGesture setDelegate:self];
    panGesture = self->_panGesture;
  }

  return panGesture;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"predicates", a4, a5, a6}])
  {
    v7 = [(LUILogViewerController *)self predicates];
    v8 = [v7 count];

    v9 = [(LUILogViewerController *)self logContentViewController];
    [v9 enableTimeConsumingOptions:v8 != 0];
  }
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  if (v10 == 2)
  {
    v13 = v7 + *&handlePan__originCenter_0;
    v14 = v9 + *&handlePan__originCenter_1;
    v33 = [(LUILogViewerController *)self assistiveTouch];
    [v33 setCenter:{v13, v14}];
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    v33 = [(LUILogViewerController *)self assistiveTouch];
    [v33 center];
    handlePan__originCenter_0 = v11;
    handlePan__originCenter_1 = v12;
LABEL_5:

    return;
  }

  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 bounds];
  Width = CGRectGetWidth(v36);

  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 bounds];
  Height = CGRectGetHeight(v37);

  v19 = [(LUILogViewerController *)self assistiveTouch];
  [v19 center];
  v21 = v20;

  v22 = [(LUILogViewerController *)self assistiveTouch];
  [v22 center];
  v24 = v23;

  v25 = [(LUILogViewerController *)self assistiveTouch];
  [v25 frame];
  v26 = CGRectGetWidth(v38) * 0.5;
  if (v24 >= Width * 0.5)
  {
    v27 = Width - v26;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(LUILogViewerController *)self assistiveTouch];
  [v28 frame];
  v29 = CGRectGetHeight(v39) * 0.5;

  if (v29 >= v21)
  {
    v21 = v29;
  }

  v30 = [(LUILogViewerController *)self assistiveTouch];
  [v30 frame];
  v31 = Height - CGRectGetHeight(v40) * 0.5;

  v34[1] = 3221225472;
  v34[0] = MEMORY[0x277D85DD0];
  v34[2] = __36__LUILogViewerController_handlePan___block_invoke;
  v34[3] = &unk_2798286F0;
  if (v31 >= v21)
  {
    v32 = v21;
  }

  else
  {
    v32 = v31;
  }

  v34[4] = self;
  *&v34[5] = v27;
  *&v34[6] = v32;
  [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v34 usingSpringWithDamping:0 initialSpringVelocity:0.200000003 options:0.0 animations:0.8 completion:1.0];
}

void __36__LUILogViewerController_handlePan___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) assistiveTouch];
  [v3 setCenter:{v1, v2}];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(LUILogViewerController *)self assistiveTouch];
  [v10 frame];
  v12.x = v7;
  v12.y = v9;
  LOBYTE(v4) = CGRectContainsPoint(v13, v12);

  return v4;
}

- (void)logViewerViewClearButtontapped:(id)a3
{
  if ([(LUILogViewerController *)self isStreaming])
  {

    [(LUILogViewerController *)self _stopStreaming];
  }

  else if (![(LUILogViewerController *)self isFetchingLogs])
  {
    [(LUILogViewerController *)self _cleanupLogs];
    v4 = [(LUILogViewerController *)self logContentViewController];
    [v4 showLogOptionsView];
  }
}

- (void)logViewerLeftCaretButtonTapped:(id)a3
{
  v4 = [(LUILogViewerController *)self highlightRanges];
  v5 = [v4 count];

  if (v5)
  {
    [(LUILogViewerController *)self _decreaseCurrentHighlightIndex];

    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (void)logViewerRightCaretButtonTapped:(id)a3
{
  v4 = [(LUILogViewerController *)self highlightRanges];
  v5 = [v4 count];

  if (v5)
  {
    [(LUILogViewerController *)self _increaseCurrentHighlightIndex];

    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  if (a4 && a6)
  {
    v7 = [a3 viewControllers];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [(LUILogViewerController *)self logContentViewController];
    v10 = v8 == v9;
    v11 = v8 != v9;

    v12 = [(LUILogViewerController *)self logViewerView];
    [v12 highlightFilterButton:v11];

    v13 = [(LUILogViewerController *)self logViewerView];
    [v13 highlightLogButton:v10];
  }
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = a4;
  v6 = [(LUILogViewerController *)self orderedViewControllers];
  v7 = [v6 indexOfObject:v5];

  v8 = [(LUILogViewerController *)self orderedViewControllers];
  v9 = [v8 count] - 1;

  if (v7 >= v9)
  {
    v11 = 0;
  }

  else
  {
    v10 = [(LUILogViewerController *)self orderedViewControllers];
    v11 = [v10 objectAtIndexedSubscript:v7 + 1];
  }

  return v11;
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = a4;
  v6 = [(LUILogViewerController *)self orderedViewControllers];
  v7 = [v6 indexOfObject:v5];

  if (v7)
  {
    v8 = [(LUILogViewerController *)self orderedViewControllers];
    v9 = [v8 objectAtIndexedSubscript:v7 - 1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)orderedViewControllers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__LUILogViewerController_orderedViewControllers__block_invoke;
  block[3] = &unk_2798284C0;
  block[4] = self;
  if (orderedViewControllers_onceToken != -1)
  {
    dispatch_once(&orderedViewControllers_onceToken, block);
  }

  return orderedViewControllers_result;
}

void __48__LUILogViewerController_orderedViewControllers__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) logContentViewController];
  v6[0] = v2;
  v3 = [*(a1 + 32) logFilterViewController];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v5 = orderedViewControllers_result;
  orderedViewControllers_result = v4;
}

- (void)logFilterViewController:(id)a3 didAddPredicates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LUILogViewerController *)self predicates];
  v9 = [v8 arrayByAddingObjectsFromArray:v6];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global];

  [(LUILogViewerController *)self setPredicates:v10];
  [v7 predicateDataUpdated];
}

uint64_t __67__LUILogViewerController_logFilterViewController_didAddPredicates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 predicateFormat];
  v6 = [v4 predicateFormat];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)logFilterViewController:(id)a3 didDeletePredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LUILogViewerController *)self predicates];
  v10 = [v8 mutableCopy];

  [v10 removeObject:v6];
  v9 = [v10 copy];
  [(LUILogViewerController *)self setPredicates:v9];

  [v7 predicateDataUpdated];
}

- (void)logFilterViewControllerApplyButtonTapped:(id)a3
{
  [(LUILogViewerController *)self showLogContentPage];
  [(LUILogViewerController *)self _stopStreaming];
  [(LUILogViewerController *)self logInterval];
  v5 = v4;
  [(LUILogViewerController *)self _cleanupLogs];
  if (v5)
  {
    [(LUILogViewerController *)self setLogInterval:v5];

    [(LUILogViewerController *)self _grabLogAndUpdateTextView];
  }

  else
  {
    v6 = [(LUILogViewerController *)self logContentViewController];
    [v6 showLogOptionsView];
  }
}

- (void)logContentViewController:(id)a3 didSelectLogOptionWithTimeInterval:(double)a4
{
  [(LUILogViewerController *)self setLogInterval:a3];
  v6 = [(LUILogViewerController *)self logContentViewController];
  [v6 showLogTextView];

  if (a4 <= 0.0)
  {

    [(LUILogViewerController *)self _startStreamLog];
  }

  else
  {

    [(LUILogViewerController *)self _grabLogAndUpdateTextView];
  }
}

- (void)logContentViewController:(id)a3 didSelectDateForLog:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(LUILogViewerController *)self firstLogDate];
  if (v7)
  {
    v8 = v7;
    v9 = [(LUILogViewerController *)self lastLogDate];

    if (v9)
    {
      v10 = [v16 textView];
      v11 = [v10 text];
      v12 = [(LUILogViewerController *)self _searchRangeForDate:v6 inText:v11];
      v14 = v13;

      if (v14)
      {
        v15 = [v16 textView];
        [v15 scrollRangeToVisible:{v12, v14}];
      }
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v6 = a3;
  if ([(LUILogViewerController *)self currentHighlightIndex]== -1)
  {
    v4 = [v6 text];
    v5 = [(LUILogViewerController *)self _performSearch:v4];

    if (v5)
    {
      [v6 endEditing:1];
    }
  }

  else
  {
    [(LUILogViewerController *)self setCurrentHighlightIndex:[(LUILogViewerController *)self currentHighlightIndex]+ 1];
    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v3 = self;
  v4 = [(LUILogViewerController *)self pageViewController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];
  v7 = [(LUILogViewerController *)v3 logContentViewController];
  LOBYTE(v3) = v6 == v7;

  return v3;
}

- (LUILogViewerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)baseView
{
  WeakRetained = objc_loadWeakRetained(&self->_baseView);

  return WeakRetained;
}

@end