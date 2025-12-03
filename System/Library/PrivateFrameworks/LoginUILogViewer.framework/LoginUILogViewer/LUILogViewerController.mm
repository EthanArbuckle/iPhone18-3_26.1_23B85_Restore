@interface LUILogViewerController
- (BOOL)_performSearch:(id)search;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (LUILogContentViewController)logContentViewController;
- (LUILogFilterViewController)logFilterViewController;
- (LUILogViewerAssistiveTouch)assistiveTouch;
- (LUILogViewerController)init;
- (LUILogViewerControllerDelegate)delegate;
- (LUILogViewerView)logViewerView;
- (UIPageViewController)pageViewController;
- (UIPanGestureRecognizer)panGesture;
- (UIView)baseView;
- (_NSRange)_searchRangeForDate:(id)date inText:(id)text;
- (id)_attributedLogStringFrom:(id)from fontSize:(double)size;
- (id)_getLogsFromDate:(id)date predicate:(id)predicate duplicateHandler:(id)handler;
- (id)orderedViewControllers;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)_cleanupHighlight;
- (void)_cleanupLogs;
- (void)_decreaseCurrentHighlightIndex;
- (void)_dismissLogViewerView;
- (void)_grabLogAndUpdateTextView;
- (void)_increaseCurrentHighlightIndex;
- (void)_moveElementsToView:(id)view;
- (void)_presentLogViewerView;
- (void)_setupInitialHighlight;
- (void)_startStreamLog;
- (void)_stopStreaming;
- (void)_updateHighlight;
- (void)_updateLogFromLastTime;
- (void)dealloc;
- (void)handlePan:(id)pan;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)logContentViewController:(id)controller didSelectDateForLog:(id)log;
- (void)logContentViewController:(id)controller didSelectLogOptionWithTimeInterval:(double)interval;
- (void)logFilterViewController:(id)controller didAddPredicates:(id)predicates;
- (void)logFilterViewController:(id)controller didDeletePredicate:(id)predicate;
- (void)logFilterViewControllerApplyButtonTapped:(id)tapped;
- (void)logViewerLeftCaretButtonTapped:(id)tapped;
- (void)logViewerRightCaretButtonTapped:(id)tapped;
- (void)logViewerViewClearButtontapped:(id)buttontapped;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setup;
- (void)showLogContentPage;
- (void)showLogFilterPage;
@end

@implementation LUILogViewerController

- (void)setup
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];
  window = [delegate window];
  [(LUILogViewerController *)self setBaseView:window];

  baseView = [(LUILogViewerController *)self baseView];
  [(LUILogViewerController *)self _moveElementsToView:baseView];

  CGAffineTransformMakeScale(&v10, 0.0, 0.0);
  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  v9 = v10;
  [assistiveTouch setTransform:&v9];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
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
    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    textView = [logContentViewController textView];
    [textView setText:0];

    logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
    [logContentViewController2 showSpinner:1];

    logContentViewController3 = [(LUILogViewerController *)self logContentViewController];
    view = [logContentViewController3 view];
    [view setUserInteractionEnabled:0];

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

- (id)_getLogsFromDate:(id)date predicate:(id)predicate duplicateHandler:(id)handler
{
  dateCopy = date;
  predicateCopy = predicate;
  handlerCopy = handler;
  [(LUILogViewerController *)self setIsFetchingLogs:1];
  v11 = objc_opt_new();
  localStore = [MEMORY[0x277D24438] localStore];
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
  [localStore prepareWithCompletionHandler:v29];
  v13 = dispatch_semaphore_create(0);
  v14 = objc_alloc(MEMORY[0x277D24440]);
  v15 = [v14 initWithSource:v31[5]];
  v16 = _getLogsFromDate_predicate_duplicateHandler__stream;
  _getLogsFromDate_predicate_duplicateHandler__stream = v15;

  [_getLogsFromDate_predicate_duplicateHandler__stream setFlags:21];
  [_getLogsFromDate_predicate_duplicateHandler__stream setFilterPredicate:predicateCopy];
  v17 = _getLogsFromDate_predicate_duplicateHandler__stream;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__LUILogViewerController__getLogsFromDate_predicate_duplicateHandler___block_invoke_2;
  v26[3] = &unk_279828538;
  v26[4] = self;
  v18 = handlerCopy;
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
  [_getLogsFromDate_predicate_duplicateHandler__stream activateStreamFromDate:dateCopy];
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

- (id)_attributedLogStringFrom:(id)from fontSize:(double)size
{
  v58[2] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = objc_opt_new();
  v56 = *MEMORY[0x277D740C0];
  v7 = v56;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v58[0] = whiteColor;
  v57 = *MEMORY[0x277D740A8];
  v9 = v57;
  v10 = [MEMORY[0x277D74300] systemFontOfSize:size];
  v58[1] = v10;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v56 count:2];

  logCyanColor = [MEMORY[0x277D75348] logCyanColor];
  v54[1] = v9;
  v55[0] = logCyanColor;
  v54[0] = v7;
  v11 = [MEMORY[0x277D74300] systemFontOfSize:size];
  v55[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = MEMORY[0x277CCACA8];
  date = [fromCopy date];
  v16 = secondStringWithDate(date);
  v17 = [v14 stringWithFormat:@"%@.%06d   ", v16, *(objc_msgSend(fromCopy, "unixDate") + 8)];
  v18 = [v13 initWithString:v17 attributes:v12];

  v48 = v18;
  [v6 appendAttributedString:v18];
  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = fromCopy;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d   ", objc_msgSend(fromCopy, "processIdentifier")];
  v22 = [v19 initWithString:v21 attributes:v49];

  v47 = v22;
  [v6 appendAttributedString:v22];
  logPurpleColor = [MEMORY[0x277D75348] logPurpleColor];

  v52[1] = v9;
  v53[0] = logPurpleColor;
  v52[0] = v7;
  v24 = [MEMORY[0x277D74300] systemFontOfSize:size];
  v53[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

  v26 = objc_alloc(MEMORY[0x277CCA898]);
  process = [v20 process];
  v28 = [v26 initWithString:process attributes:v25];

  [v6 appendAttributedString:v28];
  v29 = objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:attributes:", @": ("), v49;
  v30 = v6;
  [v6 appendAttributedString:v29];
  sender = [v20 sender];

  if (sender)
  {
    logYellowColor = [MEMORY[0x277D75348] logYellowColor];

    v50[1] = v9;
    v51[0] = logYellowColor;
    v50[0] = v7;
    v33 = [MEMORY[0x277D74300] systemFontOfSize:size];
    v51[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

    v35 = objc_alloc(MEMORY[0x277CCA898]);
    sender2 = [v20 sender];
    v37 = [v35 initWithString:sender2 attributes:v34];

    [v30 appendAttributedString:v37];
    v25 = v34;
    logPurpleColor = logYellowColor;
  }

  v38 = v30;
  v39 = objc_alloc(MEMORY[0x277CCA898]);
  v40 = MEMORY[0x277CCACA8];
  composedMessage = [v20 composedMessage];
  v42 = [v40 stringWithFormat:@" %@\n\n"], composedMessage);
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
  logViewerView = [(LUILogViewerController *)self logViewerView];
  [logViewerView switchClearButtonTitle:0];

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
  logViewerView = [(LUILogViewerController *)self logViewerView];
  [logViewerView switchClearButtonTitle:1];
}

- (void)_updateLogFromLastTime
{
  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  textView = [logContentViewController textView];
  [textView contentOffset];
  v6 = v5;
  logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
  textView2 = [logContentViewController2 textView];
  [textView2 contentSize];
  v10 = v9;
  logContentViewController3 = [(LUILogViewerController *)self logContentViewController];
  textView3 = [logContentViewController3 textView];
  [textView3 frame];
  v14 = v6 >= v10 - v13 + -50.0;

  logContentViewController4 = [(LUILogViewerController *)self logContentViewController];
  textView4 = [logContentViewController4 textView];
  text = [textView4 text];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v18 = dispatch_get_global_queue(0, 0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__LUILogViewerController__updateLogFromLastTime__block_invoke;
  v20[3] = &unk_279828600;
  v21 = text;
  v22 = v24;
  v20[4] = self;
  v23 = v14;
  v19 = text;
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
  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  textView = [logContentViewController textView];
  [textView setText:0];

  logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
  [logContentViewController2 clearScreenshots];

  logViewerView = [(LUILogViewerController *)self logViewerView];
  [logViewerView resetSearchResultLabel];

  [(LUILogViewerController *)self setHighlightRanges:MEMORY[0x277CBEBF8]];
  [(LUILogViewerController *)self setCurrentHighlightIndex:-1];
  [(LUILogViewerController *)self setFirstLogDate:0];
  [(LUILogViewerController *)self setLastLogDate:0];
  logMinutesSet = [(LUILogViewerController *)self logMinutesSet];
  [logMinutesSet removeAllObjects];

  logMinutesArray = [(LUILogViewerController *)self logMinutesArray];
  [logMinutesArray removeAllObjects];
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch alpha];
  v6 = v5;

  if (v6 != 0.0)
  {
    [(LUILogViewerController *)self setOutsideKeyboardIsShowing:1];
    userInfo = [showCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
    v9 = v8;
    if (v8)
    {
      [v8 CGRectValue];
      v11 = v10;
      assistiveTouch2 = [(LUILogViewerController *)self assistiveTouch];
      [assistiveTouch2 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      v21 = v11 + CGRectGetMaxY(v31);
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v24 = v23;

      if (v21 > v24)
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        v27 = v26 - v11 - v20;

        assistiveTouch3 = [(LUILogViewerController *)self assistiveTouch];
        [assistiveTouch3 setFrame:{v14, v27, v18, v20}];
      }
    }
  }
}

- (void)keyboardWillHide:(id)hide
{
  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch alpha];
  if (v5 == 0.0)
  {
    outsideKeyboardIsShowing = [(LUILogViewerController *)self outsideKeyboardIsShowing];

    if (!outsideKeyboardIsShowing)
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
  outsideKeyboardIsShowing = [(LUILogViewerController *)self outsideKeyboardIsShowing];
  logViewerView = [(LUILogViewerController *)self logViewerView];
  searchBar = [logViewerView searchBar];
  [searchBar setUserInteractionEnabled:!outsideKeyboardIsShowing];

  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch setAlpha:0.0];

  logViewerView2 = [(LUILogViewerController *)self logViewerView];
  [logViewerView2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  assistiveTouch2 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch2 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  logViewerView3 = [(LUILogViewerController *)self logViewerView];
  [logViewerView3 setFrame:{v18, v20, v22, v24}];

  logViewerView4 = [(LUILogViewerController *)self logViewerView];
  superview = [logViewerView4 superview];

  if (!superview)
  {
    baseView = [(LUILogViewerController *)self baseView];
    logViewerView5 = [(LUILogViewerController *)self logViewerView];
    [baseView addSubview:logViewerView5];
  }

  logViewerView6 = [(LUILogViewerController *)self logViewerView];
  [logViewerView6 setAlpha:1.0];

  v31 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
  v32 = MEMORY[0x277CCABB0];
  assistiveTouch3 = [(LUILogViewerController *)self assistiveTouch];
  layer = [assistiveTouch3 layer];
  [layer cornerRadius];
  v35 = [v32 numberWithDouble:?];
  [v31 setFromValue:v35];

  [v31 setToValue:&unk_286841AC8];
  [v31 setDuration:0.200000003];
  logViewerView7 = [(LUILogViewerController *)self logViewerView];
  layer2 = [logViewerView7 layer];
  [layer2 addAnimation:v31 forKey:0];

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
  logViewerView = [(LUILogViewerController *)self logViewerView];
  [logViewerView setAlpha:0.0];

  v4 = objc_opt_new();
  blackColor = [MEMORY[0x277D75348] blackColor];
  v6 = [blackColor colorWithAlphaComponent:0.8];
  [v4 setBackgroundColor:v6];

  logViewerView2 = [(LUILogViewerController *)self logViewerView];
  [logViewerView2 frame];
  [v4 setFrame:?];

  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  layer = [assistiveTouch layer];
  [layer cornerRadius];
  v11 = v10;
  layer2 = [v4 layer];
  [layer2 setCornerRadius:v11];

  baseView = [(LUILogViewerController *)self baseView];
  [baseView addSubview:v4];

  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
  [v14 setFromValue:&unk_286841AC8];
  v15 = MEMORY[0x277CCABB0];
  assistiveTouch2 = [(LUILogViewerController *)self assistiveTouch];
  layer3 = [assistiveTouch2 layer];
  [layer3 cornerRadius];
  v18 = [v15 numberWithDouble:?];
  [v14 setToValue:v18];

  [v14 setDuration:0.200000003];
  layer4 = [v4 layer];
  [layer4 addAnimation:v14 forKey:0];

  v20 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__LUILogViewerController__dismissLogViewerView__block_invoke;
  v24[3] = &unk_2798284E8;
  v25 = v4;
  selfCopy = self;
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
  pageViewController = [(LUILogViewerController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  v5 = [viewControllers objectAtIndexedSubscript:0];
  logFilterViewController = [(LUILogViewerController *)self logFilterViewController];

  if (v5 != logFilterViewController)
  {
    pageViewController2 = [(LUILogViewerController *)self pageViewController];
    view = [pageViewController2 view];
    [view setUserInteractionEnabled:0];

    objc_initWeak(&location, self);
    pageViewController3 = [(LUILogViewerController *)self pageViewController];
    logFilterViewController2 = [(LUILogViewerController *)self logFilterViewController];
    v15[0] = logFilterViewController2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__LUILogViewerController_showLogFilterPage__block_invoke;
    v12[3] = &unk_2798286A0;
    objc_copyWeak(&v13, &location);
    [pageViewController3 setViewControllers:v11 direction:0 animated:1 completion:v12];

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
  pageViewController = [(LUILogViewerController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  v5 = [viewControllers objectAtIndexedSubscript:0];
  logContentViewController = [(LUILogViewerController *)self logContentViewController];

  if (v5 != logContentViewController)
  {
    pageViewController2 = [(LUILogViewerController *)self pageViewController];
    view = [pageViewController2 view];
    [view setUserInteractionEnabled:0];

    objc_initWeak(&location, self);
    pageViewController3 = [(LUILogViewerController *)self pageViewController];
    logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
    v15[0] = logContentViewController2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__LUILogViewerController_showLogContentPage__block_invoke;
    v12[3] = &unk_2798286A0;
    objc_copyWeak(&v13, &location);
    [pageViewController3 setViewControllers:v11 direction:1 animated:1 completion:v12];

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

- (void)_moveElementsToView:(id)view
{
  viewCopy = view;
  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  superview = [assistiveTouch superview];
  panGesture = [(LUILogViewerController *)self panGesture];
  [superview removeGestureRecognizer:panGesture];

  assistiveTouch2 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch2 removeFromSuperview];

  superview2 = [(LUILogViewerView *)self->_logViewerView superview];

  if (superview2)
  {
    logViewerView = [(LUILogViewerController *)self logViewerView];
    [logViewerView removeFromSuperview];

    assistiveTouch3 = [(LUILogViewerController *)self assistiveTouch];
    [viewCopy addSubview:assistiveTouch3];

    panGesture2 = [(LUILogViewerController *)self panGesture];
    [viewCopy addGestureRecognizer:panGesture2];

    logViewerView2 = [(LUILogViewerController *)self logViewerView];
    [viewCopy addSubview:?];
  }

  else
  {
    assistiveTouch4 = [(LUILogViewerController *)self assistiveTouch];
    [viewCopy addSubview:assistiveTouch4];

    logViewerView2 = [(LUILogViewerController *)self panGesture];
    [viewCopy addGestureRecognizer:?];
  }
}

- (void)_increaseCurrentHighlightIndex
{
  v3 = [(LUILogViewerController *)self currentHighlightIndex]+ 1;
  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  -[LUILogViewerController setCurrentHighlightIndex:](self, "setCurrentHighlightIndex:", v3 % [highlightRanges count]);

  logViewerView = [(LUILogViewerController *)self logViewerView];
  highlightRanges2 = [(LUILogViewerController *)self highlightRanges];
  [logViewerView updateSearchResultLabelWithTotalResult:objc_msgSend(highlightRanges2 currentIndex:{"count"), -[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex") + 1}];
}

- (void)_decreaseCurrentHighlightIndex
{
  currentHighlightIndex = [(LUILogViewerController *)self currentHighlightIndex];
  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  v5 = currentHighlightIndex + [highlightRanges count] - 1;
  highlightRanges2 = [(LUILogViewerController *)self highlightRanges];
  -[LUILogViewerController setCurrentHighlightIndex:](self, "setCurrentHighlightIndex:", v5 % [highlightRanges2 count]);

  logViewerView = [(LUILogViewerController *)self logViewerView];
  highlightRanges3 = [(LUILogViewerController *)self highlightRanges];
  [logViewerView updateSearchResultLabelWithTotalResult:objc_msgSend(highlightRanges3 currentIndex:{"count"), -[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex") + 1}];
}

- (BOOL)_performSearch:(id)search
{
  searchCopy = search;
  [(LUILogViewerController *)self _cleanupHighlight];
  v5 = objc_opt_new();
  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  textView = [logContentViewController textView];
  text = [textView text];
  lowercaseString = [text lowercaseString];

  lowercaseString2 = [searchCopy lowercaseString];

  v11 = [lowercaseString rangeOfString:lowercaseString2];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      v15 = [MEMORY[0x277CCAE60] valueWithRange:{v13, v14}];
      [v5 addObject:v15];

      v13 = [lowercaseString rangeOfString:lowercaseString2 options:0 range:v13 + v14 locale:{objc_msgSend(lowercaseString, "length") - (v13 + v14), 0}];
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
  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  textView = [logContentViewController textView];
  textStorage = [textView textStorage];
  [textStorage beginEditing];

  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__LUILogViewerController__setupInitialHighlight__block_invoke;
  v21[3] = &unk_2798286C8;
  v21[4] = self;
  [highlightRanges enumerateObjectsUsingBlock:v21];

  logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
  textView2 = [logContentViewController2 textView];
  textStorage2 = [textView2 textStorage];
  [textStorage2 endEditing];

  logContentViewController3 = [(LUILogViewerController *)self logContentViewController];
  textView3 = [logContentViewController3 textView];
  [textView3 becomeFirstResponder];

  highlightRanges2 = [(LUILogViewerController *)self highlightRanges];
  v13 = [highlightRanges2 objectAtIndexedSubscript:{-[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex")}];
  rangeValue = [v13 rangeValue];
  v16 = v15;

  logContentViewController4 = [(LUILogViewerController *)self logContentViewController];
  textView4 = [logContentViewController4 textView];
  [textView4 setSelectedRange:{rangeValue, v16}];

  logContentViewController5 = [(LUILogViewerController *)self logContentViewController];
  textView5 = [logContentViewController5 textView];
  [textView5 scrollRangeToVisible:{rangeValue, v16}];
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
  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  v4 = [highlightRanges objectAtIndexedSubscript:{-[LUILogViewerController currentHighlightIndex](self, "currentHighlightIndex")}];
  rangeValue = [v4 rangeValue];
  v7 = v6;

  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  textView = [logContentViewController textView];
  [textView becomeFirstResponder];

  logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
  textView2 = [logContentViewController2 textView];
  [textView2 setSelectedRange:{rangeValue, v7}];

  logContentViewController3 = [(LUILogViewerController *)self logContentViewController];
  textView3 = [logContentViewController3 textView];
  [textView3 scrollRangeToVisible:{rangeValue, v7}];
}

- (void)_cleanupHighlight
{
  v28 = *MEMORY[0x277D85DE8];
  highlightRanges = [(LUILogViewerController *)self highlightRanges];

  if (highlightRanges)
  {
    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    textView = [logContentViewController textView];
    textStorage = [textView textStorage];
    [textStorage beginEditing];

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

          rangeValue = [*(*(&v23 + 1) + 8 * v11) rangeValue];
          v14 = v13;
          logContentViewController2 = [(LUILogViewerController *)self logContentViewController];
          textView2 = [logContentViewController2 textView];
          textStorage2 = [textView2 textStorage];
          [textStorage2 removeAttribute:v10 range:{rangeValue, v14}];

          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    logContentViewController3 = [(LUILogViewerController *)self logContentViewController];
    textView3 = [logContentViewController3 textView];
    textStorage3 = [textView3 textStorage];
    [textStorage3 endEditing];

    [(LUILogViewerController *)self setHighlightRanges:0];
    [(LUILogViewerController *)self setCurrentHighlightIndex:-1];
    logViewerView = [(LUILogViewerController *)self logViewerView];
    [logViewerView resetSearchResultLabel];
  }
}

- (_NSRange)_searchRangeForDate:(id)date inText:(id)text
{
  dateCopy = date;
  textCopy = text;
  v8 = secondStringWithDate(dateCopy);
  v9 = [textCopy rangeOfString:v8];
  v11 = v10;

  if (!v11)
  {
    logMinutesArray = [(LUILogViewerController *)self logMinutesArray];
    v13 = [logMinutesArray count];

    if (v13 >= 2)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v15 = v14;
      logMinutesArray2 = [(LUILogViewerController *)self logMinutesArray];
      v17 = [logMinutesArray2 count] - 1;

      if (v17 < 2)
      {
        v18 = 0;
LABEL_13:
        logMinutesArray3 = [(LUILogViewerController *)self logMinutesArray];
        v24 = [logMinutesArray3 objectAtIndexedSubscript:v18];
        [v24 doubleValue];
        v26 = v25;

        if (v26 >= v15)
        {
          v31 = MEMORY[0x277CBEAA8];
          logMinutesArray4 = [(LUILogViewerController *)self logMinutesArray];
          v33 = [logMinutesArray4 objectAtIndexedSubscript:v18];
          [v33 doubleValue];
          v34 = v31;
        }

        else
        {
          logMinutesArray5 = [(LUILogViewerController *)self logMinutesArray];
          v28 = [logMinutesArray5 objectAtIndexedSubscript:v17];
          [v28 doubleValue];
          v30 = v29;

          if (v30 < v15)
          {
            v9 = [textCopy length] - 1;
            v11 = 1;
            goto LABEL_21;
          }

          v36 = MEMORY[0x277CBEAA8];
          logMinutesArray4 = [(LUILogViewerController *)self logMinutesArray];
          v33 = [logMinutesArray4 objectAtIndexedSubscript:v17];
          [v33 doubleValue];
          v34 = v36;
        }

        v37 = [v34 dateWithTimeIntervalSinceReferenceDate:?];
        v38 = secondStringWithDate(v37);
        v9 = [textCopy rangeOfString:v38];
        v11 = v39;
      }

      else
      {
        v18 = 0;
        while (1)
        {
          logMinutesArray6 = [(LUILogViewerController *)self logMinutesArray];
          v20 = [logMinutesArray6 objectAtIndexedSubscript:v18 + ((v17 - v18) >> 1)];
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

        logMinutesArray4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15];
        v33 = secondStringWithDate(logMinutesArray4);
        v9 = [textCopy rangeOfString:v33];
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = CGRectGetWidth(v13) + -70.0;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v8 = [(LUILogViewerAssistiveTouch *)v4 initWithFrame:v6, CGRectGetHeight(v14) + -70.0, 70.0, 70.0];
    v9 = self->_assistiveTouch;
    self->_assistiveTouch = v8;

    layer = [(LUILogViewerAssistiveTouch *)self->_assistiveTouch layer];
    [layer setZPosition:3.40282347e38];

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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    Height = CGRectGetHeight(v20);

    if (Height > 650.0)
    {
      Height = 650.0;
    }

    v6 = [LUILogViewerView alloc];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v8 = CGRectGetHeight(v21) - Height;
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 bounds];
    height = [(LUILogViewerView *)v6 initWithFrame:0.0, v8, CGRectGetWidth(v22), Height];
    v11 = self->_logViewerView;
    self->_logViewerView = height;

    layer = [(LUILogViewerView *)self->_logViewerView layer];
    [layer setZPosition:3.40282347e38];

    [(LUILogViewerView *)self->_logViewerView setAutoresizingMask:10];
    [(LUILogViewerView *)self->_logViewerView setDelegate:self];
    pageViewController = [(LUILogViewerController *)self pageViewController];
    view = [pageViewController view];

    contentHolderView = [(LUILogViewerView *)self->_logViewerView contentHolderView];
    [contentHolderView frame];
    [view setFrame:?];

    contentHolderView2 = [(LUILogViewerView *)self->_logViewerView contentHolderView];
    [contentHolderView2 addSubview:view];

    [view setAutoresizingMask:18];
    searchBar = [(LUILogViewerView *)self->_logViewerView searchBar];
    [searchBar setDelegate:self];

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
    orderedViewControllers = [(LUILogViewerController *)self orderedViewControllers];
    v8 = [orderedViewControllers objectAtIndexedSubscript:0];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"predicates", object, change, context}])
  {
    predicates = [(LUILogViewerController *)self predicates];
    v8 = [predicates count];

    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    [logContentViewController enableTimeConsumingOptions:v8 != 0];
  }
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  view = [panCopy view];
  [panCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  state = [panCopy state];
  if (state == 2)
  {
    v13 = v7 + *&handlePan__originCenter_0;
    v14 = v9 + *&handlePan__originCenter_1;
    assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
    [assistiveTouch setCenter:{v13, v14}];
    goto LABEL_5;
  }

  if (state == 1)
  {
    assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
    [assistiveTouch center];
    handlePan__originCenter_0 = v11;
    handlePan__originCenter_1 = v12;
LABEL_5:

    return;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  Width = CGRectGetWidth(v36);

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  Height = CGRectGetHeight(v37);

  assistiveTouch2 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch2 center];
  v21 = v20;

  assistiveTouch3 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch3 center];
  v24 = v23;

  assistiveTouch4 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch4 frame];
  v26 = CGRectGetWidth(v38) * 0.5;
  if (v24 >= Width * 0.5)
  {
    v27 = Width - v26;
  }

  else
  {
    v27 = v26;
  }

  assistiveTouch5 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch5 frame];
  v29 = CGRectGetHeight(v39) * 0.5;

  if (v29 >= v21)
  {
    v21 = v29;
  }

  assistiveTouch6 = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch6 frame];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  [beginCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  assistiveTouch = [(LUILogViewerController *)self assistiveTouch];
  [assistiveTouch frame];
  v12.x = v7;
  v12.y = v9;
  LOBYTE(beginCopy) = CGRectContainsPoint(v13, v12);

  return beginCopy;
}

- (void)logViewerViewClearButtontapped:(id)buttontapped
{
  if ([(LUILogViewerController *)self isStreaming])
  {

    [(LUILogViewerController *)self _stopStreaming];
  }

  else if (![(LUILogViewerController *)self isFetchingLogs])
  {
    [(LUILogViewerController *)self _cleanupLogs];
    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    [logContentViewController showLogOptionsView];
  }
}

- (void)logViewerLeftCaretButtonTapped:(id)tapped
{
  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  v5 = [highlightRanges count];

  if (v5)
  {
    [(LUILogViewerController *)self _decreaseCurrentHighlightIndex];

    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (void)logViewerRightCaretButtonTapped:(id)tapped
{
  highlightRanges = [(LUILogViewerController *)self highlightRanges];
  v5 = [highlightRanges count];

  if (v5)
  {
    [(LUILogViewerController *)self _increaseCurrentHighlightIndex];

    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  if (animating && completed)
  {
    viewControllers = [controller viewControllers];
    v8 = [viewControllers objectAtIndexedSubscript:0];
    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    v10 = v8 == logContentViewController;
    v11 = v8 != logContentViewController;

    logViewerView = [(LUILogViewerController *)self logViewerView];
    [logViewerView highlightFilterButton:v11];

    logViewerView2 = [(LUILogViewerController *)self logViewerView];
    [logViewerView2 highlightLogButton:v10];
  }
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  viewControllerCopy = viewController;
  orderedViewControllers = [(LUILogViewerController *)self orderedViewControllers];
  v7 = [orderedViewControllers indexOfObject:viewControllerCopy];

  orderedViewControllers2 = [(LUILogViewerController *)self orderedViewControllers];
  v9 = [orderedViewControllers2 count] - 1;

  if (v7 >= v9)
  {
    v11 = 0;
  }

  else
  {
    orderedViewControllers3 = [(LUILogViewerController *)self orderedViewControllers];
    v11 = [orderedViewControllers3 objectAtIndexedSubscript:v7 + 1];
  }

  return v11;
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  orderedViewControllers = [(LUILogViewerController *)self orderedViewControllers];
  v7 = [orderedViewControllers indexOfObject:viewControllerCopy];

  if (v7)
  {
    orderedViewControllers2 = [(LUILogViewerController *)self orderedViewControllers];
    v9 = [orderedViewControllers2 objectAtIndexedSubscript:v7 - 1];
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

- (void)logFilterViewController:(id)controller didAddPredicates:(id)predicates
{
  predicatesCopy = predicates;
  controllerCopy = controller;
  predicates = [(LUILogViewerController *)self predicates];
  v9 = [predicates arrayByAddingObjectsFromArray:predicatesCopy];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global];

  [(LUILogViewerController *)self setPredicates:v10];
  [controllerCopy predicateDataUpdated];
}

uint64_t __67__LUILogViewerController_logFilterViewController_didAddPredicates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 predicateFormat];
  v6 = [v4 predicateFormat];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)logFilterViewController:(id)controller didDeletePredicate:(id)predicate
{
  predicateCopy = predicate;
  controllerCopy = controller;
  predicates = [(LUILogViewerController *)self predicates];
  v10 = [predicates mutableCopy];

  [v10 removeObject:predicateCopy];
  v9 = [v10 copy];
  [(LUILogViewerController *)self setPredicates:v9];

  [controllerCopy predicateDataUpdated];
}

- (void)logFilterViewControllerApplyButtonTapped:(id)tapped
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
    logContentViewController = [(LUILogViewerController *)self logContentViewController];
    [logContentViewController showLogOptionsView];
  }
}

- (void)logContentViewController:(id)controller didSelectLogOptionWithTimeInterval:(double)interval
{
  [(LUILogViewerController *)self setLogInterval:controller];
  logContentViewController = [(LUILogViewerController *)self logContentViewController];
  [logContentViewController showLogTextView];

  if (interval <= 0.0)
  {

    [(LUILogViewerController *)self _startStreamLog];
  }

  else
  {

    [(LUILogViewerController *)self _grabLogAndUpdateTextView];
  }
}

- (void)logContentViewController:(id)controller didSelectDateForLog:(id)log
{
  controllerCopy = controller;
  logCopy = log;
  firstLogDate = [(LUILogViewerController *)self firstLogDate];
  if (firstLogDate)
  {
    v8 = firstLogDate;
    lastLogDate = [(LUILogViewerController *)self lastLogDate];

    if (lastLogDate)
    {
      textView = [controllerCopy textView];
      text = [textView text];
      v12 = [(LUILogViewerController *)self _searchRangeForDate:logCopy inText:text];
      v14 = v13;

      if (v14)
      {
        textView2 = [controllerCopy textView];
        [textView2 scrollRangeToVisible:{v12, v14}];
      }
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  if ([(LUILogViewerController *)self currentHighlightIndex]== -1)
  {
    text = [clickedCopy text];
    v5 = [(LUILogViewerController *)self _performSearch:text];

    if (v5)
    {
      [clickedCopy endEditing:1];
    }
  }

  else
  {
    [(LUILogViewerController *)self setCurrentHighlightIndex:[(LUILogViewerController *)self currentHighlightIndex]+ 1];
    [(LUILogViewerController *)self _updateHighlight];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  selfCopy = self;
  pageViewController = [(LUILogViewerController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  firstObject = [viewControllers firstObject];
  logContentViewController = [(LUILogViewerController *)selfCopy logContentViewController];
  LOBYTE(selfCopy) = firstObject == logContentViewController;

  return selfCopy;
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