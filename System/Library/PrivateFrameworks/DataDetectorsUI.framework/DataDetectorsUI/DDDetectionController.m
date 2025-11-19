@interface DDDetectionController
+ (BOOL)_shouldConsiderResultForCoreRecents:(__DDResult *)a3;
+ (BOOL)largeScreenIdiom;
+ (id)barcodeContext:(id)a3 preview:(BOOL)a4 contact:(id)a5 ics:(id)a6;
+ (id)filterResults:(id)a3 forTypes:(unint64_t)a4 referenceDate:(id)a5 referenceTimeZone:(id)a6;
+ (id)lightUnderlineColorFromTextColor:(id)a3;
+ (id)messagesActionHandler;
+ (id)sharedController;
+ (id)tapAndHoldSchemes;
+ (id)updateContext:(id)a3 forResult:(__DDResult *)a4 atIndex:(unint64_t)a5 ofStorage:(id)a6;
+ (void)setMessagesActionHandler:(id)a3;
- (BCSBusinessQueryService)_bizService;
- (BOOL)_checkIfBusinessWithResult:(__DDResult *)a3 messageable:(BOOL *)a4;
- (BOOL)_checkIfBusinessWithURL:(id)a3 messageable:(BOOL *)a4;
- (BOOL)_phoneNumberIsABusinessNumber:(id)a3 messageable:(BOOL *)a4;
- (BOOL)_shouldImmediatelyLaunchDefaultActionForURL:(id)a3 result:(__DDResult *)a4;
- (BOOL)_shouldImmediatelyShowActionSheetForCoreResult:(__DDResult *)a3;
- (BOOL)_shouldImmediatelyShowActionSheetForURL:(id)a3;
- (BOOL)shouldIgnoreMessageActionForURL:(id)a3;
- (BOOL)shouldImmediatelyLaunchDefaultActionForTapAndHoldAtIndex:(unint64_t)a3 ofStorage:(id)a4;
- (BOOL)shouldImmediatelyShowActionSheetForTapAtIndex:(unint64_t)a3 ofStorage:(id)a4;
- (BOOL)shouldImmediatelyShowActionSheetForURL:(id)a3 forFrame:(id)a4;
- (BOOL)shouldUseLightStyleAtIndex:(unint64_t)a3 ofStorage:(id)a4 moreHighlight:(BOOL *)a5;
- (BOOL)tryDismissActionInView:(id)a3;
- (DDDetectionController)init;
- (DDDetectionControllerDelegate)delegate;
- (__DDResult)_resultForAnchor:(id)a3 forFrame:(id)a4 context:(id *)a5;
- (__DDResult)_resultForIdentifier:(id)a3 forContainer:(id)a4 context:(id *)a5;
- (__DDResult)_resultForIdentifier:(id)a3 withResults:(id)a4 context:(id *)a5;
- (__DDResult)_resultForURL:(id)a3 forContainer:(id)a4 context:(id *)a5;
- (__DDResult)_resultForURL:(id)a3 withResults:(id)a4 context:(id *)a5;
- (__DDResult)resultForDOMNode:(id)a3 forFrame:(id)a4;
- (__DDResult)resultForLinkAtIndex:(unint64_t)a3 inTextStorage:(id)a4;
- (__DDResult)resultForNode:(id)a3 url:(id)a4 frame:(id)a5 contextRef:(id *)a6;
- (__DDResult)resultForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 context:(id)a7 extendedContext:(id *)a8;
- (id)_URLForLinkAttributeValue:(id)a3;
- (id)_applyBlock:(id)a3 withResultsAtIndex:(unint64_t)a4 ofStorage:(id)a5 context:(id)a6;
- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4 brand:(id *)a5;
- (id)_ensureURLIsURL:(id)a3;
- (id)_newOperationForContainer:(id)a3;
- (id)_phoneNumberFromResult:(__DDResult *)a3;
- (id)_plainTextAugmentedContext:(id)a3 withFrame:(id)a4;
- (id)_resultForLinkAtIndex:(unint64_t)a3 inTextStorage:(id)a4 subResult:(id *)a5 url:(id *)a6 effectiveRange:(_NSRange *)a7;
- (id)_subResultAtIndex:(unint64_t)a3 ofResult:(id)a4;
- (id)actionsAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5;
- (id)actionsForAnchor:(id)a3 url:(id)a4 forFrame:(id)a5;
- (id)actionsForDOMNode:(id)a3 forFrame:(id)a4;
- (id)actionsForResult:(__DDResult *)a3 context:(id)a4;
- (id)actionsForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 context:(id)a7;
- (id)attributedTitleForResult:(__DDResult *)a3 updaterBlock:(id)a4;
- (id)attributedTitleForResultAtIndex:(unint64_t)a3 ofStorage:(id)a4 updaterBlock:(id)a5;
- (id)attributedTitleForURL:(id)a3 updaterBlock:(id)a4;
- (id)barcodeActionsForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7;
- (id)barcodeDefaultActionForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7;
- (id)barcodePreviewActionForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7;
- (id)copyContextForContainer:(id)a3;
- (id)defaultActionAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5;
- (id)defaultActionForAnchor:(id)a3 url:(id)a4 forFrame:(id)a5;
- (id)defaultActionForDOMNode:(id)a3 forFrame:(id)a4;
- (id)defaultActionForURL:(id)a3 results:(id)a4 context:(id)a5;
- (id)linkAtIndex:(unint64_t)a3 inTextStorage:(id)a4;
- (id)preferredTextAttributesForLinkAtCharacterIndex:(unint64_t)a3 ofStorage:(id)a4;
- (id)titleForResult:(__DDResult *)a3 subResult:(__DDResult *)a4 withURL:(id)a5 context:(id)a6;
- (id)titleForResultAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5;
- (id)titleForURL:(id)a3 results:(id)a4 context:(id)a5;
- (void)_cacheBusinessPhoneNumber:(id)a3;
- (void)_commonResetResultsForContainer:(id)a3;
- (void)_doURLification:(id)a3;
- (void)_enqueueOperation:(id)a3;
- (void)_interactionDidStartForResult:(__DDResult *)a3;
- (void)_interactionDidStartForURL:(id)a3;
- (void)_resetStoredResultsForContainer:(id)a3;
- (void)_startCoalescedURLification:(id)a3 clearPreviousResults:(BOOL)a4;
- (void)cancelURLificationForContainer:(id)a3;
- (void)containerWillBeRemoved:(id)a3;
- (void)dealloc;
- (void)interactionDidStartAtIndex:(unint64_t)a3 ofStorage:(id)a4;
- (void)performAction:(id)a3 fromAlertController:(id)a4 interactionDelegate:(id)a5;
- (void)performAction:(id)a3 fromView:(id)a4 alertController:(id)a5 interactionDelegate:(id)a6;
- (void)performAction:(id)a3 inView:(id)a4 completion:(id)a5;
- (void)performAction:(id)a3 inView:(id)a4 interactionDelegate:(id)a5;
- (void)resetResultsForContainer:(id)a3;
- (void)resetResultsForFrame:(id)a3;
- (void)resetResultsForTextView:(id)a3;
- (void)setContext:(id)a3 forContainer:(id)a4;
- (void)setResults:(__CFArray *)a3 forContainer:(id)a4;
- (void)startURLificationForContainer:(id)a3 detectedTypes:(unint64_t)a4;
- (void)startURLificationForContainer:(id)a3 detectedTypes:(unint64_t)a4 options:(int)a5;
- (void)urlifyTextView:(id)a3 withExternalResults:(id)a4 context:(id)a5;
@end

@implementation DDDetectionController

uint64_t __41__DDDetectionController_sharedController__block_invoke()
{
  _MergedGlobals_1 = objc_alloc_init(DDDetectionController);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedController
{
  if (qword_280B12238 == -1)
  {
    v3 = _MergedGlobals_1;
  }

  else
  {
    +[DDDetectionController sharedController];
    v3 = _MergedGlobals_1;
  }

  return v3;
}

- (DDDetectionController)init
{
  v16.receiver = self;
  v16.super_class = DDDetectionController;
  v2 = [(DDDetectionController *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:4];
    containerToContextsTable = v2->_containerToContextsTable;
    v2->_containerToContextsTable = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:4];
    containerToResultsTable = v2->_containerToResultsTable;
    v2->_containerToResultsTable = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:4];
    containerToOperationsTable = v2->_containerToOperationsTable;
    v2->_containerToOperationsTable = v7;

    v9 = dispatch_queue_create("com.apple.DataDetectorsUI", 0);
    protectQueue = v2->_protectQueue;
    v2->_protectQueue = v9;

    fullScannerQueue = v2->_fullScannerQueue;
    v2->_fullScannerQueue = 0;

    urlScannerQueue = v2->_urlScannerQueue;
    v2->_urlScannerQueue = 0;

    v13 = objc_alloc_init(DDActionController);
    actionController = v2->_actionController;
    v2->_actionController = v13;
  }

  return v2;
}

+ (id)tapAndHoldSchemes
{
  v2 = DDURLTapAndHoldSchemes();
  v3 = [v2 arrayByAddingObject:@"x-apple-data-detectors-clientdefined"];

  return v3;
}

+ (void)setMessagesActionHandler:(id)a3
{
  if (_messagesActionHandler != a3)
  {
    _messagesActionHandler = _Block_copy(a3);

    MEMORY[0x2821F96F8]();
  }
}

+ (id)messagesActionHandler
{
  v2 = _Block_copy(_messagesActionHandler);

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_fullScannerQueue cancelAllOperations];
  [(NSOperationQueue *)self->_urlScannerQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = DDDetectionController;
  [(DDDetectionController *)&v3 dealloc];
}

- (void)setResults:(__CFArray *)a3 forContainer:(id)a4
{
  v6 = a4;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DDDetectionController_setResults_forContainer___block_invoke;
  block[3] = &unk_278290E40;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(protectQueue, block);
}

uint64_t __49__DDDetectionController_setResults_forContainer___block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = *(a1[4] + 40);
  if (v1)
  {
    return [v3 setObject:v1 forKey:v2];
  }

  else
  {
    return [v3 removeObjectForKey:v2];
  }
}

- (void)setContext:(id)a3 forContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DDDetectionController_setContext_forContainer___block_invoke;
  block[3] = &unk_278290E68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(protectQueue, block);
}

uint64_t __49__DDDetectionController_setContext_forContainer___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 48);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (id)copyContextForContainer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DDDetectionController_copyContextForContainer___block_invoke;
  block[3] = &unk_278290E90;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(protectQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __49__DDDetectionController_copyContextForContainer___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 48) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_resetStoredResultsForContainer:(id)a3
{
  v4 = a3;
  protectQueue = self->_protectQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__DDDetectionController__resetStoredResultsForContainer___block_invoke;
  v7[3] = &unk_278290BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(protectQueue, v7);
}

- (void)_commonResetResultsForContainer:(id)a3
{
  v4 = a3;
  [(DDDetectionController *)self cancelURLificationForContainer:v4];
  [(DDDetectionController *)self _resetStoredResultsForContainer:v4];
}

- (void)resetResultsForContainer:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DDDetectionController *)self resetResultsForFrame:v5];
    v4 = v5;
  }

  else
  {
    [(DDDetectionController *)self resetResultsForTextView:v5];
    v4 = v5;
  }
}

- (id)_newOperationForContainer:(id)a3
{
  v5 = a3;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DDDetectionController__newOperationForContainer___block_invoke;
  block[3] = &unk_278290BC8;
  block[4] = self;
  v7 = v5;
  v21 = v7;
  dispatch_sync(protectQueue, block);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"DDDetectionController.m" lineNumber:203 description:@"Unknown container type"];
  }

  v9 = [v7 dd_newOperation];
  if (!v9)
  {
    [(DDDetectionController *)a2 _newOperationForContainer:?];
    v9 = 0;
  }

  v10 = self->_protectQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__DDDetectionController__newOperationForContainer___block_invoke_2;
  v16[3] = &unk_278290E68;
  v11 = v9;
  v17 = v11;
  v18 = self;
  v19 = v7;
  v12 = v7;
  dispatch_sync(v10, v16);
  v13 = v19;
  v14 = v11;

  return v14;
}

uint64_t __51__DDDetectionController__newOperationForContainer___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 48) objectForKey:*(a1 + 48)];
  [*(a1 + 32) setContext:v2];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 32);
  v5 = *(a1 + 48);

  return [v4 setObject:v3 forKey:v5];
}

- (void)_startCoalescedURLification:(id)a3 clearPreviousResults:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 container];
    [(DDDetectionController *)self _resetStoredResultsForContainer:v8];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke;
  v10[3] = &unk_278290BC8;
  v11 = v7;
  v12 = self;
  v9 = v7;
  _os_activity_initiate(&dword_21AB70000, "Data Detectors URLification", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke_2;
  v5[3] = &unk_278290EB8;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v3 dispatchScanQueryCreationWithCompletionBlock:v5];
}

uint64_t __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke_2(uint64_t a1, int a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke_2_cold_1(a1);
    if (!a2)
    {
      return [*(a1 + 32) cleanup];
    }
  }

  else if (!a2)
  {
    return [*(a1 + 32) cleanup];
  }

  if ([*(a1 + 32) isDiscarded])
  {
    return [*(a1 + 32) cleanup];
  }

  return [*(a1 + 40) _enqueueOperation:*(a1 + 32)];
}

- (void)startURLificationForContainer:(id)a3 detectedTypes:(unint64_t)a4 options:(int)a5
{
  v5 = a5;
  v8 = a3;
  if (!v8 || !a4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    [DDDetectionController startURLificationForContainer:detectedTypes:options:];

    return;
  }

  if (a4 - 0x80000000 > 0xFFFFFFFF7FFFFFFELL)
  {
    [(DDDetectionController *)self cancelURLificationForContainer:v8];
    v9 = [(DDDetectionController *)self _newOperationForContainer:v8];
    [v9 setDetectionTypes:a4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDDetectionController startURLificationForContainer:detectedTypes:options:];
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v5 & 2) == 0)
    {
LABEL_10:
      [(DDDetectionController *)self _startCoalescedURLification:v9];
LABEL_14:

      return;
    }

    [(DDDetectionController *)self performSelector:sel__startCoalescedURLification_ withObject:v9 afterDelay:2.0];
    goto LABEL_14;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_5:

    return;
  }

  [DDDetectionController startURLificationForContainer:detectedTypes:options:];
}

- (void)startURLificationForContainer:(id)a3 detectedTypes:(unint64_t)a4
{
  if (a4 == 127)
  {
    a4 = 511;
  }

  [(DDDetectionController *)self startURLificationForContainer:a3 detectedTypes:a4 options:0];
}

- (void)_enqueueOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__DDDetectionController__enqueueOperation___block_invoke;
  v11[3] = &unk_278290EE0;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [v4 setCompletionBlock:v11];
  if ([v4 needsFullScanner])
  {
    fullScannerQueue = self->_fullScannerQueue;
    p_fullScannerQueue = &self->_fullScannerQueue;
    v5 = fullScannerQueue;
    if (!fullScannerQueue)
    {
      goto LABEL_5;
    }
  }

  else
  {
    urlScannerQueue = self->_urlScannerQueue;
    p_fullScannerQueue = &self->_urlScannerQueue;
    v5 = urlScannerQueue;
    if (!urlScannerQueue)
    {
LABEL_5:
      v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
      v10 = *p_fullScannerQueue;
      *p_fullScannerQueue = v9;

      [*p_fullScannerQueue setMaxConcurrentOperationCount:1];
      v5 = *p_fullScannerQueue;
    }
  }

  [v5 addOperation:v4];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __43__DDDetectionController__enqueueOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __43__DDDetectionController__enqueueOperation___block_invoke_cold_1((a1 + 40));
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__DDDetectionController__enqueueOperation___block_invoke_32;
  v5[3] = &unk_278290BC8;
  v5[4] = *(a1 + 32);
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v3 dispatchContainerModificationBlock:v5];
}

- (void)cancelURLificationForContainer:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DDDetectionController_cancelURLificationForContainer___block_invoke;
  block[3] = &unk_278290E90;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(protectQueue, block);
  if (v14[5])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDDetectionController cancelURLificationForContainer:];
    }

    [v14[5] cancel];
    v7 = self->_protectQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__DDDetectionController_cancelURLificationForContainer___block_invoke_34;
    v8[3] = &unk_278290BC8;
    v8[4] = self;
    v9 = v6;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __56__DDDetectionController_cancelURLificationForContainer___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)containerWillBeRemoved:(id)a3
{
  v4 = a3;
  [(DDDetectionController *)self cancelURLificationForContainer:v4];
  protectQueue = self->_protectQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DDDetectionController_containerWillBeRemoved___block_invoke;
  v7[3] = &unk_278290BC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(protectQueue, v7);
}

uint64_t __48__DDDetectionController_containerWillBeRemoved___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);

  return [v3 removeObjectForKey:v2];
}

+ (BOOL)_shouldConsiderResultForCoreRecents:(__DDResult *)a3
{
  Type = DDResultGetType();
  if (CFStringCompare(Type, *MEMORY[0x277D040E0], 0))
  {
    LOBYTE(SubresultWithType) = 0;
  }

  else
  {
    v5 = *MEMORY[0x277D04180];
    SubresultWithType = DDResultGetSubresultWithType();
    if (SubresultWithType)
    {
      DDResultGetRange();
      v7 = v6;
      if (v6 >= 1 && (SubResults = DDResultGetSubResults()) != 0 && (v9 = SubResults, Count = CFArrayGetCount(SubResults), Count >= 1))
      {
        v11 = Count;
        v12 = 0;
        v13 = 0;
        v14 = *MEMORY[0x277D04150];
        do
        {
          CFArrayGetValueAtIndex(v9, v13);
          v15 = DDResultGetType();
          if (CFStringCompare(v15, v14, 0) == kCFCompareEqualTo)
          {
            DDResultGetRange();
            v12 += v16;
          }

          ++v13;
        }

        while (v11 != v13);
        v17 = v12 + 5;
      }

      else
      {
        v17 = 5;
      }

      LOBYTE(SubresultWithType) = v7 > 0 && v17 < v7;
    }
  }

  return SubresultWithType;
}

- (void)_doURLification:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDDetectionController _doURLification:];
  }

  if (!v5)
  {
    [(DDDetectionController *)a2 _doURLification:?];
  }

  v6 = [v5 container];
  v7 = [v5 results];
  v8 = [v5 tryCount];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = 0;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DDDetectionController__doURLification___block_invoke;
  block[3] = &unk_278290E90;
  v58 = &v59;
  block[4] = self;
  v10 = v6;
  v57 = v10;
  dispatch_sync(protectQueue, block);
  if (v60[5] == v5 && ([v5 containerIsReady] & 1) != 0)
  {
    v11 = [v5 isDiscarded];
    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (v12 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [DDDetectionController _doURLification:];
      }
    }

    else
    {
      if (v8 != -1 && [v5 needsToStartOver])
      {
        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          -[DDDetectionController _doURLification:].cold.4(v5, buf, [v7 count]);
        }

        v18 = 1;
        goto LABEL_33;
      }

      if ([v7 count])
      {
        v19 = self->_protectQueue;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __41__DDDetectionController__doURLification___block_invoke_38;
        v53[3] = &unk_278290E68;
        v53[4] = self;
        v38 = v10;
        v54 = v38;
        v20 = v7;
        v55 = v20;
        dispatch_sync(v19, v53);
        v39 = [v5 doURLificationOnDocument];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (WeakRetained)
        {
          v22 = objc_loadWeakRetained(&self->_delegate);
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = [v5 context];
            if ([v5 needContinuation])
            {
              v25 = 0;
            }

            else
            {
              v25 = CFRetain([v5 scanQuery]);
            }

            v27 = dispatch_get_global_queue(-2, 0);
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __41__DDDetectionController__doURLification___block_invoke_2;
            v47[3] = &unk_278290F08;
            v48 = v20;
            v49 = self;
            v50 = v24;
            v52 = v25;
            v51 = v38;
            v28 = v24;
            dispatch_async(v27, v47);
          }
        }

        v26 = v39;
      }

      else
      {
        v26 = 0;
      }

      v29 = [MEMORY[0x277CCAB98] defaultCenter];
      v65 = @"kDataDetectorsUIURLificationHadDOMModification";
      v30 = [MEMORY[0x277CCABB0] numberWithBool:v26];
      v66 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      [v29 postNotificationName:@"DataDetectorsUIDidFinishURLificationNotification" object:v10 userInfo:v31];
    }

    v18 = 0;
LABEL_33:
    v32 = self->_protectQueue;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __41__DDDetectionController__doURLification___block_invoke_52;
    v45[3] = &unk_278290BC8;
    v45[4] = self;
    v33 = v10;
    v46 = v33;
    dispatch_sync(v32, v45);
    if (v18 && v8 >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDDetectionController _doURLification:];
      }
    }

    else if ((v18 | [v5 needContinuation]) == 1)
    {
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [DDDetectionController _doURLification:];
        }

        v34 = [v5 newOperationForStartingOver];
        v35 = self->_protectQueue;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __41__DDDetectionController__doURLification___block_invoke_53;
        v43[3] = &unk_278290BC8;
        v43[4] = self;
        v44 = v33;
        dispatch_sync(v35, v43);
      }

      else
      {
        v34 = [v5 newOperationForContinuation];
      }

      v36 = self->_protectQueue;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __41__DDDetectionController__doURLification___block_invoke_2_54;
      v40[3] = &unk_278290E68;
      v40[4] = self;
      v37 = v34;
      v41 = v37;
      v42 = v33;
      dispatch_sync(v36, v40);
      [(DDDetectionController *)self _startCoalescedURLification:v37 clearPreviousResults:0];
    }

    [v5 cleanup];

    goto LABEL_16;
  }

  v13 = MEMORY[0x277D86220];
  v14 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    -[DDDetectionController _doURLification:].cold.3(v5, v60[5], buf, [v7 count]);
  }

  [v5 cleanup];
LABEL_16:

  _Block_object_dispose(&v59, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __41__DDDetectionController__doURLification___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __41__DDDetectionController__doURLification___block_invoke_38(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  v3 = *(a1[4] + 40);
  v4 = a1[6];
  v6 = v2;
  if (v2)
  {
    v5 = [v2 arrayByAddingObjectsFromArray:v4];
    [v3 setObject:v5 forKey:a1[5]];
  }

  else
  {
    [v3 setObject:v4 forKey:a1[5]];
  }
}

void __41__DDDetectionController__doURLification___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    v4 = *MEMORY[0x277D04170];
    v5 = *MEMORY[0x277D040E0];
    v6 = MEMORY[0x277D86220];
    for (i = [*(a1 + 32) objectAtIndex:{0, 138412546, v2}]; ; i = objc_msgSend(*(a1 + 32), "objectAtIndex:", v3, v21, v22))
    {
      SubresultWithType = i;
      Type = DDResultGetType();
      v10 = CFStringCompare(Type, v4, 0);
      if (v10)
      {
        SubResults = 0;
        if (!SubresultWithType)
        {
          goto LABEL_6;
        }
      }

      else
      {
        SubResults = DDResultGetSubResults();
        SubresultWithType = DDResultGetSubresultWithType();
        if (!SubresultWithType)
        {
          goto LABEL_6;
        }
      }

      v12 = *(a1 + 40);
      if ([objc_opt_class() _shouldConsiderResultForCoreRecents:SubresultWithType])
      {
        if (!SubResults)
        {
          v13 = *(a1 + 32);
          v14 = [*(a1 + 48) objectForKeyedSubscript:@"ReferenceDate"];
          SubResults = findNearbyResultsInArray(v13, v3, 50, 200, v14);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
        v16 = [WeakRetained detectionController:*(a1 + 40) coreRecentsWeightForResult:SubresultWithType fromScanQuery:*(a1 + 64) inContainer:*(a1 + 56) partOfSignature:v10 == kCFCompareEqualTo];

        v17 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (v16)
        {
          if (v17)
          {
            *buf = v21;
            v26 = SubresultWithType;
            v27 = 2112;
            v28 = v16;
            _os_log_debug_impl(&dword_21AB70000, v6, OS_LOG_TYPE_DEBUG, "Magically adding result %@ to recents with score %@", buf, 0x16u);
          }

          v18 = [MEMORY[0x277D04218] resultFromCoreResult:SubresultWithType];
          [DDCoreRecents addResultToRecents:v18 associatedResults:SubResults weight:v16 context:*(a1 + 48) userInitiated:0];
        }

        else if (v17)
        {
          __41__DDDetectionController__doURLification___block_invoke_2_cold_1(v23, SubresultWithType, &v24);
        }
      }

LABEL_6:
      if (++v3 >= [*(a1 + 32) count])
      {
        break;
      }
    }
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)actionsForResult:(__DDResult *)a3 context:(id)a4
{
  if (a3)
  {
    v5 = [(DDActionController *)self->_actionController actionsForURL:0 result:a3 context:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performAction:(id)a3 inView:(id)a4 interactionDelegate:(id)a5
{
  actionController = self->_actionController;
  v9 = a4;
  v10 = a3;
  [(DDActionController *)actionController setInteractionDelegate:a5];
  [(DDActionController *)self->_actionController setBaseView:v9];

  [(DDActionController *)self->_actionController setCompletion:0];
  [(DDActionController *)self->_actionController performAction:v10];
}

- (void)performAction:(id)a3 inView:(id)a4 completion:(id)a5
{
  actionController = self->_actionController;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [(DDActionController *)actionController setInteractionDelegate:0];
  [(DDActionController *)self->_actionController setBaseView:v10];

  [(DDActionController *)self->_actionController setCompletion:v9];
  [(DDActionController *)self->_actionController performAction:v11];
}

- (void)performAction:(id)a3 fromAlertController:(id)a4 interactionDelegate:(id)a5
{
  actionController = self->_actionController;
  v9 = a4;
  v10 = a3;
  [(DDActionController *)actionController setInteractionDelegate:a5];
  [(DDActionController *)self->_actionController setAlertController:v9];

  [(DDActionController *)self->_actionController setCompletion:0];
  [(DDActionController *)self->_actionController performAction:v10];
}

- (void)performAction:(id)a3 fromView:(id)a4 alertController:(id)a5 interactionDelegate:(id)a6
{
  actionController = self->_actionController;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(DDActionController *)actionController setInteractionDelegate:a6];
  [(DDActionController *)self->_actionController setBaseView:v12];

  [(DDActionController *)self->_actionController setAlertController:v11];
  [(DDActionController *)self->_actionController performAction:v13];
}

- (BOOL)tryDismissActionInView:(id)a3
{
  v4 = a3;
  v5 = [(DDActionController *)self->_actionController baseView];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if (v4)
  {
    v7 = [(DDActionController *)self->_actionController baseView];

    if (v7 != v4)
    {
LABEL_6:

      return 1;
    }

    if ([(DDActionController *)self->_actionController actionIsCancellable])
    {
LABEL_5:
      [(DDActionController *)self->_actionController cancelAction];
      goto LABEL_6;
    }
  }

  else
  {

    if ([(DDActionController *)self->_actionController actionIsCancellable])
    {
      goto LABEL_5;
    }
  }

  return 0;
}

- (BOOL)_shouldImmediatelyLaunchDefaultActionForURL:(id)a3 result:(__DDResult *)a4
{
  v6 = a3;
  if (+[DDDetectionController largeScreenIdiom])
  {

    return 0;
  }

  else
  {
    if (a4)
    {
      [(DDDetectionController *)self _interactionDidStartForResult:a4];
    }

    else if (v6)
    {
      [(DDDetectionController *)self _interactionDidStartForURL:v6];
    }

    v8 = dd_callsRequireExternalPrompt();

    return v8;
  }
}

- (BOOL)shouldIgnoreMessageActionForURL:(id)a3
{
  v5 = 0;
  if (!a3)
  {
    return 1;
  }

  v3 = [(DDDetectionController *)self _checkIfBusinessWithURL:a3 messageable:&v5];
  return v3 & (v5 ^ 1);
}

+ (BOOL)largeScreenIdiom
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 6 || (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (__DDResult)_resultForIdentifier:(id)a3 forContainer:(id)a4 context:(id *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  Main = CFRunLoopGetMain();
  if (Main != CFRunLoopGetCurrent())
  {
    [DDDetectionController _resultForIdentifier:forContainer:context:];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DDDetectionController__resultForIdentifier_forContainer_context___block_invoke;
  block[3] = &unk_278290F30;
  v35 = &v43;
  block[4] = self;
  v12 = v9;
  v34 = v12;
  v36 = &v37;
  dispatch_sync(protectQueue, block);
  v13 = v44[5];
  if (v13)
  {
    v14 = v13;
    v15 = [v8 componentsSeparatedByString:@"/"];
    if ([v15 count])
    {
      v28 = a5;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v49 count:16];
      if (v17)
      {
        v18 = *v30;
        while (2)
        {
          v19 = 0;
          v20 = v14;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v29 + 1) + 8 * v19) integerValue];
            if (v21 < 0 || v21 >= [v20 count])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [DDDetectionController _resultForIdentifier:forContainer:context:];
              }

              v22 = 0;
              goto LABEL_30;
            }

            v22 = [v20 objectAtIndex:v21];
            v14 = DDResultGetSubResults();

            ++v19;
            v20 = v14;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v49 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v22 = 0;
      }

      if (v28)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v24 = v23;
        if (v38[5])
        {
          [v23 addEntriesFromDictionary:?];
        }

        [v24 setObject:v44[5] forKey:@"AllResults"];
        v25 = v24;
        *v28 = v24;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDDetectionController _resultForIdentifier:forContainer:context:];
      }

      v22 = 0;
    }

    v20 = v14;
LABEL_30:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _resultForIdentifier:forContainer:context:];
    }

    v22 = 0;
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __67__DDDetectionController__resultForIdentifier_forContainer_context___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 48) objectForKey:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (__DDResult)_resultForURL:(id)a3 forContainer:(id)a4 context:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 scheme];
  v11 = [v10 isEqualToString:*MEMORY[0x277D04208]];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _resultForURL:v8 forContainer:? context:?];
    }

    goto LABEL_8;
  }

  v12 = [v8 resourceSpecifier];
  v13 = [v12 hasPrefix:@"//"];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _resultForURL:v8 forContainer:? context:?];
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v14 = [v8 resourceSpecifier];
  v15 = [v14 substringFromIndex:2];

  v16 = [(DDDetectionController *)self _resultForIdentifier:v15 forContainer:v9 context:a5];
LABEL_9:

  return v16;
}

- (BCSBusinessQueryService)_bizService
{
  bizService = self->_bizService;
  if (bizService)
  {
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___BCSBusinessQueryService(v2);
    v7 = objc_alloc_init(*(v6 + 1560));
    v8 = self->_bizService;
    self->_bizService = v7;

    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_set_bizService_ object:0];
    [(DDDetectionController *)self performSelector:sel_set_bizService_ withObject:0 afterDelay:5.0];
    bizService = self->_bizService;
  }

  return bizService;
}

- (void)_interactionDidStartForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v4 = v9;
    if (v6 <= 6 && ((1 << v6) & 0x43) != 0)
    {
      v8 = dd_phoneNumberFromTelScheme(v9);
      [(DDDetectionController *)self _cacheBusinessPhoneNumber:v8];

      v4 = v9;
    }
  }
}

- (void)_interactionDidStartForResult:(__DDResult *)a3
{
  if (a3 && DDResultGetCategory() == 2)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 <= 6 && ((1 << v6) & 0x43) != 0)
    {
      v8 = [(DDDetectionController *)self _phoneNumberFromResult:a3];
      [(DDDetectionController *)self _cacheBusinessPhoneNumber:v8];
    }
  }
}

- (void)_cacheBusinessPhoneNumber:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 containsString:@"@"] & 1) == 0)
  {
    v6 = [(DDDetectionController *)self _bizService];
    if (v6)
    {
      v9[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [v6 warmCacheIfNecessaryForPhoneNumbers:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldImmediatelyShowActionSheetForCoreResult:(__DDResult *)a3
{
  Category = DDResultGetCategory();
  v6 = DDShouldImmediatelyShowActionSheetForResult();
  if (Category == 2)
  {
    v7 = v6;
    if (dd_phoneNumberResultCanBeRdarLink(a3))
    {
      LOBYTE(v6) = 1;
    }

    else if (v7 && +[(DDCallAction *)DDCallKitAction])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = ![(DDDetectionController *)self shouldImmediatelyLaunchDefaultActionForResult:a3];
    }
  }

  return v6;
}

- (id)_ensureURLIsURL:(id)a3
{
  v3 = a3;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
LABEL_4:
    v5 = v4;

    v6 = v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (BOOL)_shouldImmediatelyShowActionSheetForURL:(id)a3
{
  v3 = dd_ensureUrlIsUrl(a3);
  v4 = DDShouldImmediatelyShowActionSheetForURL();

  return v4;
}

- (BOOL)_checkIfBusinessWithURL:(id)a3 messageable:(BOOL *)a4
{
  v6 = dd_ensureUrlIsUrl(a3);
  if (dd_isAnySimpleTelephonyScheme(v6) && (dd_phoneNumberFromTelScheme(v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [(DDDetectionController *)self _phoneNumberIsABusinessNumber:v7 messageable:a4];

    return v9;
  }

  else
  {

    return 0;
  }
}

- (BOOL)_checkIfBusinessWithResult:(__DDResult *)a3 messageable:(BOOL *)a4
{
  if (a3)
  {
    Category = DDResultGetCategory();
    if (Category == 1)
    {
      v14 = DDResultCopyExtractedURL();
      if (v14)
      {
        v8 = v14;
        v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
        v13 = [(DDDetectionController *)self _checkIfBusinessWithURL:v15 messageable:a4];

LABEL_13:
        LOBYTE(v14) = v13;
      }
    }

    else
    {
      if (Category == 2)
      {
        v8 = [(DDDetectionController *)self _phoneNumberFromResult:a3];
        if ([v8 length])
        {
          v9 = TUUnformattedPhoneNumber();
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v8;
          }

          v12 = v11;

          v8 = v12;
        }

        v13 = [(DDDetectionController *)self _phoneNumberIsABusinessNumber:v8 messageable:a4];
        goto LABEL_13;
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)_phoneNumberFromResult:(__DDResult *)a3
{
  DDResultCopyPhoneValue();

  return 0;
}

- (BOOL)_phoneNumberIsABusinessNumber:(id)a3 messageable:(BOOL *)a4
{
  v4 = [(DDDetectionController *)self _businessItemForNumber:a3 messageable:a4 brand:0];
  v5 = v4 != 0;

  return v5;
}

- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4 brand:(id *)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (![v8 length] || (dd_handleIsChatBot(v8) & 1) != 0 || ((objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 <= 6) ? (v12 = ((1 << v11) & 0x43) == 0) : (v12 = 1), v12))
  {
    v9 = 0;
  }

  else
  {
    v13 = [(DDDetectionController *)self _bizService];
    if (v13)
    {
      v25 = [MEMORY[0x277CBEAA8] date];
      v14 = dispatch_group_create();
      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy_;
      v48 = __Block_byref_object_dispose_;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy_;
      v38 = __Block_byref_object_dispose_;
      v39 = 0;
      dispatch_group_enter(v14);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke;
      v26[3] = &unk_278290FD0;
      v15 = v14;
      v27 = v15;
      v28 = v13;
      v29 = v8;
      v30 = &v44;
      v33 = a5 != 0;
      v31 = &v40;
      v32 = &v34;
      [v28 isBusinessRegisteredForPhoneNumber:v29 completion:v26];
      v16 = dispatch_time(0, 1000000000);
      if (dispatch_group_wait(v15, v16))
      {
        v17 = v25;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BCS query timed out", buf, 2u);
        }

        v9 = 0;
      }

      else
      {
        v18 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
        v17 = v25;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v45[5];
          v21 = *(v41 + 24);
          [v25 timeIntervalSinceNow];
          *buf = 67109632;
          v51 = v20 != 0;
          v52 = 1024;
          v53 = v21;
          v54 = 2048;
          v55 = -v22;
          _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Phone number properties business:%d messageable:%d duration:%f (BCS)", buf, 0x18u);
        }

        if (a4)
        {
          *a4 = *(v41 + 24);
        }

        v9 = v45[5];
        if (a5)
        {
          *a5 = v35[5];
        }
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

void __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = v5;
  if (v5 || !a2)
  {
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable determine phone business status BCS: %@", buf, 0xCu);
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_2;
    v24[3] = &unk_278290F58;
    v26 = *(a1 + 56);
    v25 = *(a1 + 32);
    [v8 fetchBusinessItemForPhoneNumber:v9 completion:v24];
  }

  if (*(a1 + 80) == 1)
  {
    gotLoadHelper_x8__OBJC_CLASS___BSBrandManager(v6);
    v11 = [objc_alloc(*(v10 + 1672)) initWithBrandType:3 cachingEnabled:1];
    if (v11)
    {
      dispatch_group_enter(*(a1 + 32));
      v12 = *(a1 + 48);
      gotLoadHelper_x8__BSBrandServiceTypeOnDeviceSupport(v13);
      v15 = **(v14 + 1664);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_79;
      v19[3] = &unk_278290FA8;
      v20 = v11;
      v16 = *(a1 + 48);
      v17 = *(a1 + 72);
      v21 = v16;
      v23 = v17;
      v22 = *(a1 + 32);
      [v20 isBrandRegisteredWithIdentifier:v12 forService:v15 completion:v19];
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v18 = *MEMORY[0x277D85DE8];
}

void __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to fetch business details BCS: %@", &v12, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (v8)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v10;
  }

  dispatch_group_leave(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

void __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_79(uint64_t a1, int a2, uint64_t a3, double a4)
{
  if (a3 || !a2)
  {
    v11 = *(a1 + 48);

    dispatch_group_leave(v11);
  }

  else
  {
    gotLoadHelper_x8__BSBrandServiceTypeOnDeviceSupport(a4);
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    v9 = **(v5 + 1664);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_2_80;
    v13[3] = &unk_278290F80;
    v12 = *(v6 + 48);
    v10 = v12;
    v14 = v12;
    [v7 brandWithIdentifier:v8 forService:v9 completion:v13];
  }
}

void __66__DDDetectionController__businessItemForNumber_messageable_brand___block_invoke_2_80(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

+ (id)barcodeContext:(id)a3 preview:(BOOL)a4 contact:(id)a5 ics:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 || ([MEMORY[0x277CCA8D8] mainBundle], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bundleIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"com.apple.BarcodeSupport.BarcodeNotificationService"), v13, v12, v14))
  {
    v15 = [DDAction contextByAddingValue:MEMORY[0x277CBEC38] toKey:@"NotificationStyle" inContext:v9];

    v9 = v15;
  }

  v16 = [DDAction contextByAddingValue:MEMORY[0x277CBEC38] toKey:@"HeyBarcodeSheet" inContext:v9];

  if (v10)
  {
    v17 = [DDAction contextByAddingValue:v10 toKey:@"Contact" inContext:v16];

    v16 = v17;
  }

  if (v11)
  {
    v18 = [DDAction contextByAddingValue:v11 toKey:@"ICS" inContext:v16];

    v16 = v18;
  }

  return v16;
}

- (id)barcodeActionsForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7
{
  v12 = a4;
  v13 = [DDDetectionController barcodeContext:a3 preview:0 contact:a6 ics:a7];
  v14 = [(DDActionController *)self->_actionController actionsForURL:v12 result:a5 context:v13];

  return v14;
}

- (id)barcodeDefaultActionForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7
{
  v12 = a4;
  v13 = [DDDetectionController barcodeContext:a3 preview:0 contact:a6 ics:a7];
  v14 = [(DDActionController *)self->_actionController defaultActionForURL:v12 result:a5 context:v13];

  return v14;
}

- (id)barcodePreviewActionForContext:(id)a3 URL:(id)a4 result:(__DDResult *)a5 contact:(id)a6 ics:(id)a7
{
  v11 = a4;
  v12 = [DDDetectionController barcodeContext:a3 preview:1 contact:a6 ics:a7];
  v13 = [DDPreviewAction previewActionForURL:v11 result:a5 context:v12];

  return v13;
}

+ (id)filterResults:(id)a3 forTypes:(unint64_t)a4 referenceDate:(id)a5 referenceTimeZone:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 count];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    v14 = [DDOperation shouldUrlifyBlockForTypes:a4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          if ((v14)[2](v14, [v20 coreResult], v10, v11))
          {
            [v13 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v9 = v23;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)lightUnderlineColorFromTextColor:(id)a3
{
  v8 = 0.0;
  v9 = 0;
  v7 = 0.0;
  v3 = a3;
  [v3 getHue:&v9 saturation:&v8 brightness:&v7 alpha:0];
  v4 = 0.26;
  if (v8 < 0.02 && v7 > 0.98)
  {
    v4 = 0.46;
  }

  v5 = [v3 colorWithAlphaComponent:v4];

  return v5;
}

- (DDDetectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetResultsForFrame:(id)a3
{
  v4 = a3;
  [(DDDetectionController *)self _commonResetResultsForContainer:v4];
  if (WebThreadIsEnabled())
  {
    v7 = v4;
    WebThreadRun();
  }

  else
  {
    Main = CFRunLoopGetMain();
    if (Main != CFRunLoopGetCurrent())
    {
      [DDDetectionController(WebKitBackEnd) resetResultsForFrame:];
    }

    v6 = [v4 DOMDocument];
    [v6 dd_resetResults];
  }
}

void __61__DDDetectionController_WebKitBackEnd__resetResultsForFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) DOMDocument];
  [v1 dd_resetResults];
}

- (BOOL)shouldImmediatelyShowActionSheetForURL:(id)a3 forFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [v8 isEqualToString:*MEMORY[0x277D04208]];

  if (v9 && (v10 = [(DDDetectionController *)self _resultForURL:v6 forContainer:v7 context:0]) != 0)
  {
    v11 = [(DDDetectionController *)self _shouldImmediatelyShowActionSheetForCoreResult:v10];
  }

  else
  {
    v11 = [(DDDetectionController *)self _shouldImmediatelyShowActionSheetForURL:v6];
  }

  v12 = v11;

  return v12;
}

- (id)_plainTextAugmentedContext:(id)a3 withFrame:(id)a4
{
  v4 = [a3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v7 = v6;

  [v7 setObject:&stru_282C1E0A8 forKey:@"LeadingText"];
  [v7 setObject:&stru_282C1E0A8 forKey:@"TrailingText"];
  v8 = [v7 copy];

  return v8;
}

- (__DDResult)_resultForAnchor:(id)a3 forFrame:(id)a4 context:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 absoluteLinkURL];
  v11 = [v9 getAttribute:@"x-apple-data-detectors-result"];

  if (!v11 || ![v11 length] || (v12 = -[DDDetectionController _resultForIdentifier:forContainer:context:](self, "_resultForIdentifier:forContainer:context:", v11, v8, a5)) == 0)
  {
    v13 = [v10 scheme];
    v14 = *MEMORY[0x277D04208];
    v15 = [v13 isEqualToString:*MEMORY[0x277D04208]];

    if (!v15 || (v12 = [(DDDetectionController *)self _resultForURL:v10 forContainer:v8 context:a5]) == 0)
    {
      v21 = [objc_opt_class() tapAndHoldSchemes];
      v22 = [v10 scheme];
      v23 = [v22 lowercaseString];
      if ([v21 containsObject:v23])
      {
        v24 = [v10 scheme];
        v25 = [v24 isEqualToString:v14];

        if (!v25)
        {
LABEL_15:
          v16 = 0;
          goto LABEL_18;
        }
      }

      else
      {
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDDetectionController(WebKitBackEnd) _resultForAnchor:v10 forFrame:? context:?];
        v16 = 0;
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v16 = v12;
  if (v8 && a5)
  {
    v17 = [v8 frameView];
    v18 = [v17 documentView];
    v19 = [v18 selectedString];

    v20 = *a5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*a5 setObject:v19 forKey:@"SelectedText"];
    }

    else
    {
      v26 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*a5];
      [v26 setObject:v19 forKey:@"SelectedText"];
      v27 = v26;
      *a5 = v26;
    }
  }

LABEL_18:

  return v16;
}

- (__DDResult)resultForDOMNode:(id)a3 forFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(DDDetectionController *)self _resultForAnchor:v6 forFrame:v7 context:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionsForAnchor:(id)a3 url:(id)a4 forFrame:(id)a5
{
  v15 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [(DDDetectionController *)self resultForNode:a3 url:v9 frame:v8 contextRef:&v15];
  v11 = v15;
  v12 = [(DDDetectionController *)self _plainTextAugmentedContext:v11 withFrame:v8];

  v13 = [(DDActionController *)self->_actionController actionsForURL:v9 result:v10 context:v12];

  return v13;
}

- (__DDResult)_resultForIdentifier:(id)a3 withResults:(id)a4 context:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [v7 componentsSeparatedByString:@"/"];
    if ([v11 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v24 = v10;
        v25 = a5;
        v15 = *v27;
        v16 = v10;
        while (2)
        {
          v17 = 0;
          v10 = v16;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [*(*(&v26 + 1) + 8 * v17) integerValue];
            if (v18 < 0 || v18 >= [v10 count])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [DDDetectionController(WebKitBackEnd) _resultForIdentifier:withResults:context:];
              }

              v19 = 0;
              goto LABEL_26;
            }

            v19 = [v10 objectAtIndex:v18];
            v16 = DDResultGetSubResults();

            ++v17;
            v10 = v16;
          }

          while (v14 != v17);
          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v10 = v24;
        a5 = v25;
      }

      else
      {
        v19 = 0;
        v16 = v10;
      }

      if (a5)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v20 setObject:v10 forKey:@"AllResults"];
        v21 = v20;
        *a5 = v20;
      }

      v10 = v16;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDDetectionController(WebKitBackEnd) _resultForIdentifier:withResults:context:];
      }

      v19 = 0;
    }

LABEL_26:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController(WebKitBackEnd) _resultForIdentifier:withResults:context:];
    }

    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (__DDResult)_resultForURL:(id)a3 withResults:(id)a4 context:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 scheme];
  v11 = [v10 isEqualToString:*MEMORY[0x277D04208]];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController(WebKitBackEnd) _resultForURL:v8 withResults:? context:?];
    }

    goto LABEL_8;
  }

  v12 = [v8 resourceSpecifier];
  v13 = [v12 hasPrefix:@"//"];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController(WebKitBackEnd) _resultForURL:v8 withResults:? context:?];
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v14 = [v8 resourceSpecifier];
  v15 = [v14 substringFromIndex:2];
  v16 = [(DDDetectionController *)self _resultForIdentifier:v15 withResults:v9 context:a5];

LABEL_9:
  return v16;
}

- (__DDResult)resultForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 context:(id)a7 extendedContext:(id *)a8
{
  v46 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v37 = a5;
  v16 = a6;
  v38 = a7;
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      v22 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * v22++), "coreResult", v37)}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v20);
  }

  if (v15 && [v15 length])
  {
    v40 = 0;
    v23 = [(DDDetectionController *)self _resultForIdentifier:v15 withResults:v17 context:&v40];
    v24 = v40;
    v25 = v38;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
    v25 = v38;
  }

  v26 = [v14 scheme];
  v27 = [v26 isEqualToString:*MEMORY[0x277D04208]];

  if (!v27)
  {
    v23 = 0;
    if (!a8)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v39 = v24;
  v23 = [(DDDetectionController *)self _resultForURL:v14 withResults:v17 context:&v39];
  v28 = v39;

  v24 = v28;
LABEL_15:
  if (!a8)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  *a8 = v29;
LABEL_20:
  if (v23)
  {
    v30 = v37;
    if (v24)
    {
      [v24 setObject:v37 forKey:@"SelectedText"];
      if (v25)
      {
        [v24 addEntriesFromDictionary:v25];
      }
    }
  }

  else
  {
    v31 = [objc_opt_class() tapAndHoldSchemes];
    v32 = [v14 scheme];
    v33 = [v32 lowercaseString];
    if ([v31 containsObject:v33])
    {
      v34 = [v14 scheme];
      [v34 isEqualToString:*MEMORY[0x277D04208]];

      v25 = v38;
    }

    v30 = v37;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)actionsForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 context:(id)a7
{
  v17 = 0;
  v12 = a3;
  v13 = [(DDDetectionController *)self resultForURL:v12 identifier:a4 selectedText:a5 results:a6 context:a7 extendedContext:&v17];
  v14 = v17;
  v15 = [(DDActionController *)self->_actionController actionsForURL:v12 result:v13 context:v14];

  return v15;
}

- (id)defaultActionForURL:(id)a3 results:(id)a4 context:(id)a5
{
  v13 = 0;
  v8 = a3;
  v9 = [(DDDetectionController *)self resultForURL:v8 identifier:0 selectedText:&stru_282C1E0A8 results:a4 context:a5 extendedContext:&v13];
  v10 = v13;
  v11 = [(DDActionController *)self->_actionController defaultActionForURL:v8 result:v9 context:v10];

  return v11;
}

- (id)titleForURL:(id)a3 results:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(DDDetectionController *)self resultForURL:v8 identifier:0 selectedText:&stru_282C1E0A8 results:v9 context:v10 extendedContext:0];
    if (v11)
    {
      actionSheetTitleForResult(v11);
    }

    else
    {
      actionSheetTitleForURL(v8);
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)attributedTitleForURL:(id)a3 updaterBlock:(id)a4
{
  if (a3)
  {
    v4 = [(DDDetectionController *)self titleForURL:a3 results:0 context:0];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v4];

      v6 = v5;
    }

    else
    {

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attributedTitleForResult:(__DDResult *)a3 updaterBlock:(id)a4
{
  if (a3)
  {
    v4 = [(DDDetectionController *)self titleForResult:a3 subResult:0 withURL:0 context:0];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v4];

      v6 = v5;
    }

    else
    {

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)actionsForDOMNode:(id)a3 forFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v11 = [v10 parentNode];

      v10 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v13 = [v10 absoluteLinkURL];
    v12 = [(DDDetectionController *)self actionsForAnchor:v10 url:v13 forFrame:v7];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (__DDResult)resultForNode:(id)a3 url:(id)a4 frame:(id)a5 contextRef:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v13 = [(DDDetectionController *)self _resultForAnchor:v10 forFrame:v12 context:a6]) == 0)
  {
    v14 = [v11 scheme];
    v15 = [v14 isEqualToString:*MEMORY[0x277D04208]];

    if (v15)
    {
      v13 = [(DDDetectionController *)self _resultForURL:v11 forContainer:v12 context:a6];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)defaultActionForAnchor:(id)a3 url:(id)a4 forFrame:(id)a5
{
  v15 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [(DDDetectionController *)self resultForNode:a3 url:v9 frame:v8 contextRef:&v15];
  v11 = v15;
  v12 = [(DDDetectionController *)self _plainTextAugmentedContext:v11 withFrame:v8];

  v13 = [(DDActionController *)self->_actionController defaultActionForURL:v9 result:v10 context:v12];

  return v13;
}

- (id)defaultActionForDOMNode:(id)a3 forFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v10 absoluteLinkURL];
        v15 = self;
        v16 = v10;
        goto LABEL_11;
      }

      v11 = [v10 parentNode];

      v10 = v11;
    }

    while (v11);
    v10 = v9;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v12 = [v10 parentNode];

      v10 = v12;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    v17 = MEMORY[0x277CBEBC0];
    v18 = [v10 action];
    v14 = [v17 URLWithString:v18];

    v15 = self;
    v16 = 0;
LABEL_11:
    v13 = [(DDDetectionController *)v15 defaultActionForAnchor:v16 url:v14 forFrame:v7];
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

+ (id)updateContext:(id)a3 forResult:(__DDResult *)a4 atIndex:(unint64_t)a5 ofStorage:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [v9 attribute:@"DDContext" atIndex:a5 effectiveRange:0];
  v12 = [DDAction contextByAddingValue:v9 toKey:@"TextStorage" inContext:v10];

  if (v11)
  {
    [v12 addEntriesFromDictionary:v11];
  }

  v20 = xmmword_21ABCD900;
  if (a4)
  {
    *&v20 = DDResultGetRange();
    *(&v20 + 1) = v13;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = [v9 attribute:*MEMORY[0x277D740E8] atIndex:a5 effectiveRange:&v20];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }
  }

  v15 = [v9 string];
  v16 = [v15 dd_leadingTextWithNumberOfCharacters:350 beforeRange:v20];
  v17 = [v15 dd_trailingTextWithNumberOfCharacters:350 afterRange:v20];
  if (*(&v20 + 1))
  {
    v18 = [v15 dd_trailingTextWithNumberOfCharacters:*(&v20 + 1) afterRange:{v20, 0}];
    [v12 setObject:v18 forKey:@"MiddleText"];
  }

  [v12 setObject:v16 forKey:@"LeadingText"];
  [v12 setObject:v17 forKey:@"TrailingText"];

LABEL_10:

  return v12;
}

- (void)resetResultsForTextView:(id)a3
{
  v4 = a3;
  [(DDDetectionController *)self _commonResetResultsForContainer:v4];
  v5 = [v4 textStorage];

  [v5 dd_resetResults];
}

- (id)_subResultAtIndex:(unint64_t)a3 ofResult:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a4 subResults];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 range];
        if (a3 >= v11 && a3 - v11 < v12)
        {
          v14 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (__DDResult)resultForLinkAtIndex:(unint64_t)a3 inTextStorage:(id)a4
{
  v6 = [a4 attribute:*MEMORY[0x277D041D8] atIndex:a3 effectiveRange:0];
  v7 = [v6 type];
  v8 = [v7 isEqualToString:*MEMORY[0x277D04170]];

  if (v8)
  {
    v9 = [(DDDetectionController *)self _subResultAtIndex:a3 ofResult:v6];
    v10 = [v9 coreResult];
  }

  else
  {
    v10 = [v6 coreResult];
  }

  return v10;
}

- (id)linkAtIndex:(unint64_t)a3 inTextStorage:(id)a4
{
  v7 = 0;
  v4 = [(DDDetectionController *)self _resultForLinkAtIndex:a3 inTextStorage:a4 subResult:0 url:&v7 effectiveRange:0];
  v5 = v7;

  return v5;
}

- (id)_resultForLinkAtIndex:(unint64_t)a3 inTextStorage:(id)a4 subResult:(id *)a5 url:(id *)a6 effectiveRange:(_NSRange *)a7
{
  v12 = a4;
  v13 = [v12 attribute:*MEMORY[0x277D041D8] atIndex:a3 effectiveRange:a7];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 type];
    v16 = [v15 isEqualToString:*MEMORY[0x277D04170]];

    if (a5)
    {
      if (v16)
      {
        *a5 = [(DDDetectionController *)self _subResultAtIndex:a3 ofResult:v14];
      }
    }
  }

  if (a6)
  {
    v17 = [v12 attribute:*MEMORY[0x277D740E8] atIndex:a3 effectiveRange:a7];
    v18 = [(DDDetectionController *)self _URLForLinkAttributeValue:v17];
    v19 = [v18 scheme];
    v20 = [v19 lowercaseString];
    if ([v20 hasPrefix:@"x-apple-data-detectors"])
    {
      v21 = +[DDAction clientActionsDelegate];
      if (!v21)
      {

        goto LABEL_13;
      }

      v22 = v21;
      v23 = [v18 scheme];
      v24 = [v23 isEqualToString:@"x-apple-data-detectors-clientdefined"];

      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v25 = v18;
    *a6 = v18;
LABEL_13:
  }

  return v14;
}

- (BOOL)shouldImmediatelyShowActionSheetForTapAtIndex:(unint64_t)a3 ofStorage:(id)a4
{
  v6 = a4;
  v14 = 0;
  v7 = [(DDDetectionController *)self _resultForLinkAtIndex:a3 inTextStorage:v6 subResult:&v14 url:0 effectiveRange:0];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v8 = v7;
    }

    v10 = -[DDDetectionController _shouldImmediatelyShowActionSheetForCoreResult:](self, "_shouldImmediatelyShowActionSheetForCoreResult:", [v8 coreResult]);
  }

  else
  {
    v11 = [v6 attribute:*MEMORY[0x277D740E8] atIndex:a3 effectiveRange:0];
    v12 = [(DDDetectionController *)self _URLForLinkAttributeValue:v11];
    if (v12)
    {
      v10 = [(DDDetectionController *)self _shouldImmediatelyShowActionSheetForURL:v12];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)shouldImmediatelyLaunchDefaultActionForTapAndHoldAtIndex:(unint64_t)a3 ofStorage:(id)a4
{
  v6 = a4;
  v7 = [v6 attribute:*MEMORY[0x277D740E8] atIndex:a3 effectiveRange:0];
  v8 = [(DDDetectionController *)self _URLForLinkAttributeValue:v7];
  if (v8)
  {
    v9 = [(DDDetectionController *)self shouldImmediatelyLaunchDefaultActionForURL:v8];
  }

  else
  {
    v10 = [(DDDetectionController *)self _resultForLinkAtIndex:a3 inTextStorage:v6 subResult:0 url:0 effectiveRange:0];
    v11 = v10;
    v9 = v10 && (v12 = [v10 coreResult]) != 0 && -[DDDetectionController shouldImmediatelyLaunchDefaultActionForResult:](self, "shouldImmediatelyLaunchDefaultActionForResult:", v12);
  }

  return v9;
}

- (id)_applyBlock:(id)a3 withResultsAtIndex:(unint64_t)a4 ofStorage:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21 = 0;
  v22 = 0;
  v13 = [(DDDetectionController *)self _resultForLinkAtIndex:a4 inTextStorage:v11 subResult:&v22 url:&v21 effectiveRange:0];
  v14 = v22;
  v15 = v21;
  if (v13 || ([v11 attribute:*MEMORY[0x277D740E8] atIndex:a4 effectiveRange:0], v16 = objc_claimAutoreleasedReturnValue(), -[DDDetectionController _URLForLinkAttributeValue:](self, "_URLForLinkAttributeValue:", v16), v17 = objc_claimAutoreleasedReturnValue(), v15, v16, (v15 = v17) != 0))
  {
    v18 = +[DDDetectionController updateContext:forResult:atIndex:ofStorage:](DDDetectionController, "updateContext:forResult:atIndex:ofStorage:", v12, [v13 coreResult], a4, v11);
    v19 = v10[2](v10, v14, v13, v15, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)actionsAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__DDDetectionController_TextKitBackEnd__actionsAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:a3 ofStorage:a4 context:a5];

  return v5;
}

id __74__DDDetectionController_TextKitBackEnd__actionsAtIndex_ofStorage_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(*(a1 + 32) + 56);
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  if (a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 coreResult];
  v15 = [v13 coreResult];

  v16 = [v8 actionsForURL:v10 result:v14 enclosingResult:v15 context:v9];

  return v16;
}

- (id)titleForResultAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__DDDetectionController_TextKitBackEnd__titleForResultAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:a3 ofStorage:a4 context:a5];

  return v5;
}

id __81__DDDetectionController_TextKitBackEnd__titleForResultAtIndex_ofStorage_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = [a3 coreResult];
  v13 = [v11 coreResult];

  v14 = [v8 titleForResult:v12 subResult:v13 withURL:v10 context:v9];

  return v14;
}

- (id)defaultActionAtIndex:(unint64_t)a3 ofStorage:(id)a4 context:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__DDDetectionController_TextKitBackEnd__defaultActionAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:a3 ofStorage:a4 context:a5];

  return v5;
}

id __80__DDDetectionController_TextKitBackEnd__defaultActionAtIndex_ofStorage_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = *(*(a1 + 32) + 56);
  if (a2)
  {
    a3 = a2;
  }

  v8 = a5;
  v9 = a4;
  v10 = [v6 defaultActionForURL:v9 result:objc_msgSend(a3 context:{"coreResult"), v8}];

  return v10;
}

- (id)titleForResult:(__DDResult *)a3 subResult:(__DDResult *)a4 withURL:(id)a5 context:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  if (v11)
  {
    v12 = actionSheetTitleForResult(v11);
    if ([v12 length] < 0xC9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 && ([v9 scheme], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"x-apple-data-detectors-clientdefined"), v16, (v17 & 1) == 0))
  {
    v12 = dd_urlUserVisibleString(v9);
    if ([v12 length] >= 0xC9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if ([0 length] >= 0xC9)
    {
LABEL_6:
      v13 = [v12 substringToIndex:200];
      v14 = [v13 stringByAppendingString:@"…"];

      v12 = v14;
    }
  }

LABEL_7:

  return v12;
}

- (id)attributedTitleForResultAtIndex:(unint64_t)a3 ofStorage:(id)a4 updaterBlock:(id)a5
{
  v5 = [(DDDetectionController *)self titleForResultAtIndex:a3 ofStorage:a4 context:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)_URLForLinkAttributeValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
LABEL_5:
    v5 = v4;

    v6 = v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (void)interactionDidStartAtIndex:(unint64_t)a3 ofStorage:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__DDDetectionController_TextKitBackEnd__interactionDidStartAtIndex_ofStorage___block_invoke;
  v5[3] = &unk_278291798;
  v5[4] = self;
  v4 = [(DDDetectionController *)self _applyBlock:v5 withResultsAtIndex:a3 ofStorage:a4 context:0];
}

uint64_t __78__DDDetectionController_TextKitBackEnd__interactionDidStartAtIndex_ofStorage___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    [*(a1 + 32) _interactionDidStartForURL:a4];
  }

  else
  {
    [*(a1 + 32) _interactionDidStartForResult:{objc_msgSend(a3, "coreResult")}];
  }

  return 0;
}

- (BOOL)shouldUseLightStyleAtIndex:(unint64_t)a3 ofStorage:(id)a4 moreHighlight:(BOOL *)a5
{
  v8 = a4;
  v19 = 0;
  v9 = [(DDDetectionController *)self _resultForLinkAtIndex:a3 inTextStorage:v8 subResult:&v19 url:0 effectiveRange:0];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = v10;

      v9 = v12;
    }

    [v9 coreResult];
    v13 = DDShouldUseLightLinksForResult();
    v14 = v13;
    if (a5 && v13)
    {
      [v9 coreResult];
      *a5 = DDShouldUseDebugHighlightForResult();
      v14 = 1;
    }
  }

  else
  {
    v15 = [v8 attribute:*MEMORY[0x277D740E8] atIndex:a3 effectiveRange:0];
    v16 = dd_ensureUrlIsUrl(v15);

    v17 = [v16 scheme];
    v14 = [v17 isEqualToString:@"x-apple-data-detectors-clientdefined"];

    v9 = 0;
  }

  return v14;
}

- (id)preferredTextAttributesForLinkAtCharacterIndex:(unint64_t)a3 ofStorage:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16 = 0;
  if ([(DDDetectionController *)self shouldUseLightStyleAtIndex:a3 ofStorage:v6 moreHighlight:&v16])
  {
    if (v16 == 1)
    {
      v7 = [MEMORY[0x277D75348] systemOrangeColor];
    }

    else
    {
      v9 = [v6 attribute:*MEMORY[0x277D740C0] atIndex:a3 effectiveRange:0];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x277D75348] labelColor];
      }

      v12 = v11;

      v7 = [objc_opt_class() lightUnderlineColorFromTextColor:v12];
    }

    v13 = *MEMORY[0x277D741E8];
    v17[0] = *MEMORY[0x277D741F0];
    v17[1] = v13;
    v18[0] = &unk_282C2BDE8;
    v18[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)urlifyTextView:(id)a3 withExternalResults:(id)a4 context:(id)a5
{
  v14 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCACC8];
  v11 = a5;
  if (([v10 isMainThread] & 1) == 0)
  {
    [DDDetectionController(TextKitBackEnd) urlifyTextView:a2 withExternalResults:self context:?];
  }

  v12 = [v9 valueForKey:@"coreResult"];

  [(DDDetectionController *)self setResults:v12 forContainer:v14];
  if (v12)
  {
    CFRelease(v12);
  }

  [(DDDetectionController *)self setContext:v11 forContainer:v14];
  v13 = [[DDTextKitOperation alloc] initWithContainer:v14];
  [(DDOperation *)v13 setDetectionTypes:0x7FFFFFFFLL];
  [(DDOperation *)v13 setContext:v11];

  [(DDOperation *)v13 setScannerResults:v9];
  [(DDTextKitOperation *)v13 doURLificationOnDocument];
  [(DDTextKitOperation *)v13 cleanup];
}

- (void)_newOperationForContainer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DDDetectionController.m" lineNumber:208 description:@"DDOperation creation failed"];
}

void __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startURLificationForContainer:detectedTypes:options:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startURLificationForContainer:detectedTypes:options:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startURLificationForContainer:detectedTypes:options:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__DDDetectionController__enqueueOperation___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelURLificationForContainer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doURLification:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doURLification:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DDDetectionController.m" lineNumber:399 description:@"Operation should not be nil"];
}

- (void)_doURLification:(uint8_t *)buf .cold.3(uint64_t a1, uint64_t a2, uint8_t *buf, uint64_t a4)
{
  *buf = 138412802;
  *(buf + 4) = a2;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2048;
  *(buf + 3) = a4;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "scan for operation %@ replaced by another operation %@ (%ld results)", buf, 0x20u);
}

- (void)_doURLification:(uint64_t)a3 .cold.4(uint64_t a1, uint8_t *buf, uint64_t a3)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "scan for operation %@ need to start over (%ld results)", buf, 0x16u);
}

- (void)_doURLification:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doURLification:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doURLification:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doURLification:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__DDDetectionController__doURLification___block_invoke_2_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not adding result %@ to the recents because we got back a null weight", buf, 0xCu);
}

- (void)_resultForIdentifier:forContainer:context:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[DDDetectionController _resultForIdentifier:forContainer:context:]"];
  [v1 handleFailureInFunction:v0 file:@"DDDetectionController.m" lineNumber:680 description:@"Main thread violation"];
}

- (void)_resultForIdentifier:forContainer:context:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resultForIdentifier:forContainer:context:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resultForIdentifier:forContainer:context:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resultForURL:(void *)a1 forContainer:context:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resultForURL:(void *)a1 forContainer:context:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end