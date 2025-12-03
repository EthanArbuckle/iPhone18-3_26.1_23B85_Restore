@interface DDDetectionController
+ (BOOL)_shouldConsiderResultForCoreRecents:(__DDResult *)recents;
+ (BOOL)largeScreenIdiom;
+ (id)barcodeContext:(id)context preview:(BOOL)preview contact:(id)contact ics:(id)ics;
+ (id)filterResults:(id)results forTypes:(unint64_t)types referenceDate:(id)date referenceTimeZone:(id)zone;
+ (id)lightUnderlineColorFromTextColor:(id)color;
+ (id)messagesActionHandler;
+ (id)sharedController;
+ (id)tapAndHoldSchemes;
+ (id)updateContext:(id)context forResult:(__DDResult *)result atIndex:(unint64_t)index ofStorage:(id)storage;
+ (void)setMessagesActionHandler:(id)handler;
- (BCSBusinessQueryService)_bizService;
- (BOOL)_checkIfBusinessWithResult:(__DDResult *)result messageable:(BOOL *)messageable;
- (BOOL)_checkIfBusinessWithURL:(id)l messageable:(BOOL *)messageable;
- (BOOL)_phoneNumberIsABusinessNumber:(id)number messageable:(BOOL *)messageable;
- (BOOL)_shouldImmediatelyLaunchDefaultActionForURL:(id)l result:(__DDResult *)result;
- (BOOL)_shouldImmediatelyShowActionSheetForCoreResult:(__DDResult *)result;
- (BOOL)_shouldImmediatelyShowActionSheetForURL:(id)l;
- (BOOL)shouldIgnoreMessageActionForURL:(id)l;
- (BOOL)shouldImmediatelyLaunchDefaultActionForTapAndHoldAtIndex:(unint64_t)index ofStorage:(id)storage;
- (BOOL)shouldImmediatelyShowActionSheetForTapAtIndex:(unint64_t)index ofStorage:(id)storage;
- (BOOL)shouldImmediatelyShowActionSheetForURL:(id)l forFrame:(id)frame;
- (BOOL)shouldUseLightStyleAtIndex:(unint64_t)index ofStorage:(id)storage moreHighlight:(BOOL *)highlight;
- (BOOL)tryDismissActionInView:(id)view;
- (DDDetectionController)init;
- (DDDetectionControllerDelegate)delegate;
- (__DDResult)_resultForAnchor:(id)anchor forFrame:(id)frame context:(id *)context;
- (__DDResult)_resultForIdentifier:(id)identifier forContainer:(id)container context:(id *)context;
- (__DDResult)_resultForIdentifier:(id)identifier withResults:(id)results context:(id *)context;
- (__DDResult)_resultForURL:(id)l forContainer:(id)container context:(id *)context;
- (__DDResult)_resultForURL:(id)l withResults:(id)results context:(id *)context;
- (__DDResult)resultForDOMNode:(id)node forFrame:(id)frame;
- (__DDResult)resultForLinkAtIndex:(unint64_t)index inTextStorage:(id)storage;
- (__DDResult)resultForNode:(id)node url:(id)url frame:(id)frame contextRef:(id *)ref;
- (__DDResult)resultForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results context:(id)context extendedContext:(id *)extendedContext;
- (id)_URLForLinkAttributeValue:(id)value;
- (id)_applyBlock:(id)block withResultsAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context;
- (id)_businessItemForNumber:(id)number messageable:(BOOL *)messageable brand:(id *)brand;
- (id)_ensureURLIsURL:(id)l;
- (id)_newOperationForContainer:(id)container;
- (id)_phoneNumberFromResult:(__DDResult *)result;
- (id)_plainTextAugmentedContext:(id)context withFrame:(id)frame;
- (id)_resultForLinkAtIndex:(unint64_t)index inTextStorage:(id)storage subResult:(id *)result url:(id *)url effectiveRange:(_NSRange *)range;
- (id)_subResultAtIndex:(unint64_t)index ofResult:(id)result;
- (id)actionsAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context;
- (id)actionsForAnchor:(id)anchor url:(id)url forFrame:(id)frame;
- (id)actionsForDOMNode:(id)node forFrame:(id)frame;
- (id)actionsForResult:(__DDResult *)result context:(id)context;
- (id)actionsForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results context:(id)context;
- (id)attributedTitleForResult:(__DDResult *)result updaterBlock:(id)block;
- (id)attributedTitleForResultAtIndex:(unint64_t)index ofStorage:(id)storage updaterBlock:(id)block;
- (id)attributedTitleForURL:(id)l updaterBlock:(id)block;
- (id)barcodeActionsForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics;
- (id)barcodeDefaultActionForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics;
- (id)barcodePreviewActionForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics;
- (id)copyContextForContainer:(id)container;
- (id)defaultActionAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context;
- (id)defaultActionForAnchor:(id)anchor url:(id)url forFrame:(id)frame;
- (id)defaultActionForDOMNode:(id)node forFrame:(id)frame;
- (id)defaultActionForURL:(id)l results:(id)results context:(id)context;
- (id)linkAtIndex:(unint64_t)index inTextStorage:(id)storage;
- (id)preferredTextAttributesForLinkAtCharacterIndex:(unint64_t)index ofStorage:(id)storage;
- (id)titleForResult:(__DDResult *)result subResult:(__DDResult *)subResult withURL:(id)l context:(id)context;
- (id)titleForResultAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context;
- (id)titleForURL:(id)l results:(id)results context:(id)context;
- (void)_cacheBusinessPhoneNumber:(id)number;
- (void)_commonResetResultsForContainer:(id)container;
- (void)_doURLification:(id)lification;
- (void)_enqueueOperation:(id)operation;
- (void)_interactionDidStartForResult:(__DDResult *)result;
- (void)_interactionDidStartForURL:(id)l;
- (void)_resetStoredResultsForContainer:(id)container;
- (void)_startCoalescedURLification:(id)lification clearPreviousResults:(BOOL)results;
- (void)cancelURLificationForContainer:(id)container;
- (void)containerWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)interactionDidStartAtIndex:(unint64_t)index ofStorage:(id)storage;
- (void)performAction:(id)action fromAlertController:(id)controller interactionDelegate:(id)delegate;
- (void)performAction:(id)action fromView:(id)view alertController:(id)controller interactionDelegate:(id)delegate;
- (void)performAction:(id)action inView:(id)view completion:(id)completion;
- (void)performAction:(id)action inView:(id)view interactionDelegate:(id)delegate;
- (void)resetResultsForContainer:(id)container;
- (void)resetResultsForFrame:(id)frame;
- (void)resetResultsForTextView:(id)view;
- (void)setContext:(id)context forContainer:(id)container;
- (void)setResults:(__CFArray *)results forContainer:(id)container;
- (void)startURLificationForContainer:(id)container detectedTypes:(unint64_t)types;
- (void)startURLificationForContainer:(id)container detectedTypes:(unint64_t)types options:(int)options;
- (void)urlifyTextView:(id)view withExternalResults:(id)results context:(id)context;
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

+ (void)setMessagesActionHandler:(id)handler
{
  if (_messagesActionHandler != handler)
  {
    _messagesActionHandler = _Block_copy(handler);

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

- (void)setResults:(__CFArray *)results forContainer:(id)container
{
  containerCopy = container;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DDDetectionController_setResults_forContainer___block_invoke;
  block[3] = &unk_278290E40;
  v10 = containerCopy;
  resultsCopy = results;
  block[4] = self;
  v8 = containerCopy;
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

- (void)setContext:(id)context forContainer:(id)container
{
  contextCopy = context;
  containerCopy = container;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DDDetectionController_setContext_forContainer___block_invoke;
  block[3] = &unk_278290E68;
  v12 = contextCopy;
  selfCopy = self;
  v14 = containerCopy;
  v9 = containerCopy;
  v10 = contextCopy;
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

- (id)copyContextForContainer:(id)container
{
  containerCopy = container;
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
  v10 = containerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = containerCopy;
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

- (void)_resetStoredResultsForContainer:(id)container
{
  containerCopy = container;
  protectQueue = self->_protectQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__DDDetectionController__resetStoredResultsForContainer___block_invoke;
  v7[3] = &unk_278290BC8;
  v7[4] = self;
  v8 = containerCopy;
  v6 = containerCopy;
  dispatch_sync(protectQueue, v7);
}

- (void)_commonResetResultsForContainer:(id)container
{
  containerCopy = container;
  [(DDDetectionController *)self cancelURLificationForContainer:containerCopy];
  [(DDDetectionController *)self _resetStoredResultsForContainer:containerCopy];
}

- (void)resetResultsForContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DDDetectionController *)self resetResultsForFrame:containerCopy];
    v4 = containerCopy;
  }

  else
  {
    [(DDDetectionController *)self resetResultsForTextView:containerCopy];
    v4 = containerCopy;
  }
}

- (id)_newOperationForContainer:(id)container
{
  containerCopy = container;
  protectQueue = self->_protectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DDDetectionController__newOperationForContainer___block_invoke;
  block[3] = &unk_278290BC8;
  block[4] = self;
  v7 = containerCopy;
  v21 = v7;
  dispatch_sync(protectQueue, block);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DDDetectionController.m" lineNumber:203 description:@"Unknown container type"];
  }

  dd_newOperation = [v7 dd_newOperation];
  if (!dd_newOperation)
  {
    [(DDDetectionController *)a2 _newOperationForContainer:?];
    dd_newOperation = 0;
  }

  v10 = self->_protectQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__DDDetectionController__newOperationForContainer___block_invoke_2;
  v16[3] = &unk_278290E68;
  v11 = dd_newOperation;
  v17 = v11;
  selfCopy = self;
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

- (void)_startCoalescedURLification:(id)lification clearPreviousResults:(BOOL)results
{
  resultsCopy = results;
  lificationCopy = lification;
  v7 = lificationCopy;
  if (resultsCopy)
  {
    container = [lificationCopy container];
    [(DDDetectionController *)self _resetStoredResultsForContainer:container];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__DDDetectionController__startCoalescedURLification_clearPreviousResults___block_invoke;
  v10[3] = &unk_278290BC8;
  v11 = v7;
  selfCopy = self;
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

- (void)startURLificationForContainer:(id)container detectedTypes:(unint64_t)types options:(int)options
{
  optionsCopy = options;
  containerCopy = container;
  if (!containerCopy || !types)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    [DDDetectionController startURLificationForContainer:detectedTypes:options:];

    return;
  }

  if (types - 0x80000000 > 0xFFFFFFFF7FFFFFFELL)
  {
    [(DDDetectionController *)self cancelURLificationForContainer:containerCopy];
    v9 = [(DDDetectionController *)self _newOperationForContainer:containerCopy];
    [v9 setDetectionTypes:types];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDDetectionController startURLificationForContainer:detectedTypes:options:];
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((optionsCopy & 2) == 0)
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

- (void)startURLificationForContainer:(id)container detectedTypes:(unint64_t)types
{
  if (types == 127)
  {
    types = 511;
  }

  [(DDDetectionController *)self startURLificationForContainer:container detectedTypes:types options:0];
}

- (void)_enqueueOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, operationCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__DDDetectionController__enqueueOperation___block_invoke;
  v11[3] = &unk_278290EE0;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [operationCopy setCompletionBlock:v11];
  if ([operationCopy needsFullScanner])
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

  [v5 addOperation:operationCopy];
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

- (void)cancelURLificationForContainer:(id)container
{
  containerCopy = container;
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
  v6 = containerCopy;
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

- (void)containerWillBeRemoved:(id)removed
{
  removedCopy = removed;
  [(DDDetectionController *)self cancelURLificationForContainer:removedCopy];
  protectQueue = self->_protectQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DDDetectionController_containerWillBeRemoved___block_invoke;
  v7[3] = &unk_278290BC8;
  v7[4] = self;
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_sync(protectQueue, v7);
}

uint64_t __48__DDDetectionController_containerWillBeRemoved___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);

  return [v3 removeObjectForKey:v2];
}

+ (BOOL)_shouldConsiderResultForCoreRecents:(__DDResult *)recents
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

- (void)_doURLification:(id)lification
{
  v68 = *MEMORY[0x277D85DE8];
  lificationCopy = lification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDDetectionController _doURLification:];
  }

  if (!lificationCopy)
  {
    [(DDDetectionController *)a2 _doURLification:?];
  }

  container = [lificationCopy container];
  results = [lificationCopy results];
  tryCount = [lificationCopy tryCount];
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
  v10 = container;
  v57 = v10;
  dispatch_sync(protectQueue, block);
  if (v60[5] == lificationCopy && ([lificationCopy containerIsReady] & 1) != 0)
  {
    isDiscarded = [lificationCopy isDiscarded];
    if (results)
    {
      v12 = isDiscarded;
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
      if (tryCount != -1 && [lificationCopy needsToStartOver])
      {
        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          -[DDDetectionController _doURLification:].cold.4(lificationCopy, buf, [results count]);
        }

        v18 = 1;
        goto LABEL_33;
      }

      if ([results count])
      {
        v19 = self->_protectQueue;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __41__DDDetectionController__doURLification___block_invoke_38;
        v53[3] = &unk_278290E68;
        v53[4] = self;
        v38 = v10;
        v54 = v38;
        v20 = results;
        v55 = v20;
        dispatch_sync(v19, v53);
        doURLificationOnDocument = [lificationCopy doURLificationOnDocument];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (WeakRetained)
        {
          v22 = objc_loadWeakRetained(&self->_delegate);
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            context = [lificationCopy context];
            if ([lificationCopy needContinuation])
            {
              v25 = 0;
            }

            else
            {
              v25 = CFRetain([lificationCopy scanQuery]);
            }

            v27 = dispatch_get_global_queue(-2, 0);
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __41__DDDetectionController__doURLification___block_invoke_2;
            v47[3] = &unk_278290F08;
            v48 = v20;
            selfCopy = self;
            v50 = context;
            v52 = v25;
            v51 = v38;
            v28 = context;
            dispatch_async(v27, v47);
          }
        }

        v26 = doURLificationOnDocument;
      }

      else
      {
        v26 = 0;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v65 = @"kDataDetectorsUIURLificationHadDOMModification";
      v30 = [MEMORY[0x277CCABB0] numberWithBool:v26];
      v66 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      [defaultCenter postNotificationName:@"DataDetectorsUIDidFinishURLificationNotification" object:v10 userInfo:v31];
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
    if (v18 && tryCount >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [DDDetectionController _doURLification:];
      }
    }

    else if ((v18 | [lificationCopy needContinuation]) == 1)
    {
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [DDDetectionController _doURLification:];
        }

        newOperationForStartingOver = [lificationCopy newOperationForStartingOver];
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
        newOperationForStartingOver = [lificationCopy newOperationForContinuation];
      }

      v36 = self->_protectQueue;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __41__DDDetectionController__doURLification___block_invoke_2_54;
      v40[3] = &unk_278290E68;
      v40[4] = self;
      v37 = newOperationForStartingOver;
      v41 = v37;
      v42 = v33;
      dispatch_sync(v36, v40);
      [(DDDetectionController *)self _startCoalescedURLification:v37 clearPreviousResults:0];
    }

    [lificationCopy cleanup];

    goto LABEL_16;
  }

  v13 = MEMORY[0x277D86220];
  v14 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    -[DDDetectionController _doURLification:].cold.3(lificationCopy, v60[5], buf, [results count]);
  }

  [lificationCopy cleanup];
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

- (id)actionsForResult:(__DDResult *)result context:(id)context
{
  if (result)
  {
    v5 = [(DDActionController *)self->_actionController actionsForURL:0 result:result context:context];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performAction:(id)action inView:(id)view interactionDelegate:(id)delegate
{
  actionController = self->_actionController;
  viewCopy = view;
  actionCopy = action;
  [(DDActionController *)actionController setInteractionDelegate:delegate];
  [(DDActionController *)self->_actionController setBaseView:viewCopy];

  [(DDActionController *)self->_actionController setCompletion:0];
  [(DDActionController *)self->_actionController performAction:actionCopy];
}

- (void)performAction:(id)action inView:(id)view completion:(id)completion
{
  actionController = self->_actionController;
  completionCopy = completion;
  viewCopy = view;
  actionCopy = action;
  [(DDActionController *)actionController setInteractionDelegate:0];
  [(DDActionController *)self->_actionController setBaseView:viewCopy];

  [(DDActionController *)self->_actionController setCompletion:completionCopy];
  [(DDActionController *)self->_actionController performAction:actionCopy];
}

- (void)performAction:(id)action fromAlertController:(id)controller interactionDelegate:(id)delegate
{
  actionController = self->_actionController;
  controllerCopy = controller;
  actionCopy = action;
  [(DDActionController *)actionController setInteractionDelegate:delegate];
  [(DDActionController *)self->_actionController setAlertController:controllerCopy];

  [(DDActionController *)self->_actionController setCompletion:0];
  [(DDActionController *)self->_actionController performAction:actionCopy];
}

- (void)performAction:(id)action fromView:(id)view alertController:(id)controller interactionDelegate:(id)delegate
{
  actionController = self->_actionController;
  controllerCopy = controller;
  viewCopy = view;
  actionCopy = action;
  [(DDActionController *)actionController setInteractionDelegate:delegate];
  [(DDActionController *)self->_actionController setBaseView:viewCopy];

  [(DDActionController *)self->_actionController setAlertController:controllerCopy];
  [(DDActionController *)self->_actionController performAction:actionCopy];
}

- (BOOL)tryDismissActionInView:(id)view
{
  viewCopy = view;
  baseView = [(DDActionController *)self->_actionController baseView];
  if (!baseView)
  {
    goto LABEL_6;
  }

  v6 = baseView;
  if (viewCopy)
  {
    baseView2 = [(DDActionController *)self->_actionController baseView];

    if (baseView2 != viewCopy)
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

- (BOOL)_shouldImmediatelyLaunchDefaultActionForURL:(id)l result:(__DDResult *)result
{
  lCopy = l;
  if (+[DDDetectionController largeScreenIdiom])
  {

    return 0;
  }

  else
  {
    if (result)
    {
      [(DDDetectionController *)self _interactionDidStartForResult:result];
    }

    else if (lCopy)
    {
      [(DDDetectionController *)self _interactionDidStartForURL:lCopy];
    }

    v8 = dd_callsRequireExternalPrompt();

    return v8;
  }
}

- (BOOL)shouldIgnoreMessageActionForURL:(id)l
{
  v5 = 0;
  if (!l)
  {
    return 1;
  }

  v3 = [(DDDetectionController *)self _checkIfBusinessWithURL:l messageable:&v5];
  return v3 & (v5 ^ 1);
}

+ (BOOL)largeScreenIdiom
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 6 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (__DDResult)_resultForIdentifier:(id)identifier forContainer:(id)container context:(id *)context
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  containerCopy = container;
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
  v12 = containerCopy;
  v34 = v12;
  v36 = &v37;
  dispatch_sync(protectQueue, block);
  v13 = v44[5];
  if (v13)
  {
    v14 = v13;
    v15 = [identifierCopy componentsSeparatedByString:@"/"];
    if ([v15 count])
    {
      contextCopy = context;
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

            integerValue = [*(*(&v29 + 1) + 8 * v19) integerValue];
            if (integerValue < 0 || integerValue >= [v20 count])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [DDDetectionController _resultForIdentifier:forContainer:context:];
              }

              v22 = 0;
              goto LABEL_30;
            }

            v22 = [v20 objectAtIndex:integerValue];
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

      if (contextCopy)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v24 = v23;
        if (v38[5])
        {
          [v23 addEntriesFromDictionary:?];
        }

        [v24 setObject:v44[5] forKey:@"AllResults"];
        v25 = v24;
        *contextCopy = v24;
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

- (__DDResult)_resultForURL:(id)l forContainer:(id)container context:(id *)context
{
  lCopy = l;
  containerCopy = container;
  scheme = [lCopy scheme];
  v11 = [scheme isEqualToString:*MEMORY[0x277D04208]];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _resultForURL:lCopy forContainer:? context:?];
    }

    goto LABEL_8;
  }

  resourceSpecifier = [lCopy resourceSpecifier];
  v13 = [resourceSpecifier hasPrefix:@"//"];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _resultForURL:lCopy forContainer:? context:?];
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  resourceSpecifier2 = [lCopy resourceSpecifier];
  v15 = [resourceSpecifier2 substringFromIndex:2];

  v16 = [(DDDetectionController *)self _resultForIdentifier:v15 forContainer:containerCopy context:context];
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

- (void)_interactionDidStartForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v9 = lCopy;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    lCopy = v9;
    if (userInterfaceIdiom <= 6 && ((1 << userInterfaceIdiom) & 0x43) != 0)
    {
      v8 = dd_phoneNumberFromTelScheme(v9);
      [(DDDetectionController *)self _cacheBusinessPhoneNumber:v8];

      lCopy = v9;
    }
  }
}

- (void)_interactionDidStartForResult:(__DDResult *)result
{
  if (result && DDResultGetCategory() == 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom <= 6 && ((1 << userInterfaceIdiom) & 0x43) != 0)
    {
      v8 = [(DDDetectionController *)self _phoneNumberFromResult:result];
      [(DDDetectionController *)self _cacheBusinessPhoneNumber:v8];
    }
  }
}

- (void)_cacheBusinessPhoneNumber:(id)number
{
  v9[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = numberCopy;
  if (numberCopy && ([numberCopy containsString:@"@"] & 1) == 0)
  {
    _bizService = [(DDDetectionController *)self _bizService];
    if (_bizService)
    {
      v9[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [_bizService warmCacheIfNecessaryForPhoneNumbers:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldImmediatelyShowActionSheetForCoreResult:(__DDResult *)result
{
  Category = DDResultGetCategory();
  v6 = DDShouldImmediatelyShowActionSheetForResult();
  if (Category == 2)
  {
    v7 = v6;
    if (dd_phoneNumberResultCanBeRdarLink(result))
    {
      LOBYTE(v6) = 1;
    }

    else if (v7 && +[(DDCallAction *)DDCallKitAction])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = ![(DDDetectionController *)self shouldImmediatelyLaunchDefaultActionForResult:result];
    }
  }

  return v6;
}

- (id)_ensureURLIsURL:(id)l
{
  lCopy = l;
  if (!lCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = lCopy;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
LABEL_4:
    v5 = v4;

    v6 = v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (BOOL)_shouldImmediatelyShowActionSheetForURL:(id)l
{
  v3 = dd_ensureUrlIsUrl(l);
  v4 = DDShouldImmediatelyShowActionSheetForURL();

  return v4;
}

- (BOOL)_checkIfBusinessWithURL:(id)l messageable:(BOOL *)messageable
{
  v6 = dd_ensureUrlIsUrl(l);
  if (dd_isAnySimpleTelephonyScheme(v6) && (dd_phoneNumberFromTelScheme(v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [(DDDetectionController *)self _phoneNumberIsABusinessNumber:v7 messageable:messageable];

    return v9;
  }

  else
  {

    return 0;
  }
}

- (BOOL)_checkIfBusinessWithResult:(__DDResult *)result messageable:(BOOL *)messageable
{
  if (result)
  {
    Category = DDResultGetCategory();
    if (Category == 1)
    {
      v14 = DDResultCopyExtractedURL();
      if (v14)
      {
        v8 = v14;
        v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
        v13 = [(DDDetectionController *)self _checkIfBusinessWithURL:v15 messageable:messageable];

LABEL_13:
        LOBYTE(v14) = v13;
      }
    }

    else
    {
      if (Category == 2)
      {
        v8 = [(DDDetectionController *)self _phoneNumberFromResult:result];
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

        v13 = [(DDDetectionController *)self _phoneNumberIsABusinessNumber:v8 messageable:messageable];
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

- (id)_phoneNumberFromResult:(__DDResult *)result
{
  DDResultCopyPhoneValue();

  return 0;
}

- (BOOL)_phoneNumberIsABusinessNumber:(id)number messageable:(BOOL *)messageable
{
  v4 = [(DDDetectionController *)self _businessItemForNumber:number messageable:messageable brand:0];
  v5 = v4 != 0;

  return v5;
}

- (id)_businessItemForNumber:(id)number messageable:(BOOL *)messageable brand:(id *)brand
{
  v56 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (![numberCopy length] || (dd_handleIsChatBot(numberCopy) & 1) != 0 || ((objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 <= 6) ? (v12 = ((1 << v11) & 0x43) == 0) : (v12 = 1), v12))
  {
    v9 = 0;
  }

  else
  {
    _bizService = [(DDDetectionController *)self _bizService];
    if (_bizService)
    {
      date = [MEMORY[0x277CBEAA8] date];
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
      v28 = _bizService;
      v29 = numberCopy;
      v30 = &v44;
      v33 = brand != 0;
      v31 = &v40;
      v32 = &v34;
      [v28 isBusinessRegisteredForPhoneNumber:v29 completion:v26];
      v16 = dispatch_time(0, 1000000000);
      if (dispatch_group_wait(v15, v16))
      {
        v17 = date;
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
        v17 = date;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v45[5];
          v21 = *(v41 + 24);
          [date timeIntervalSinceNow];
          *buf = 67109632;
          v51 = v20 != 0;
          v52 = 1024;
          v53 = v21;
          v54 = 2048;
          v55 = -v22;
          _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Phone number properties business:%d messageable:%d duration:%f (BCS)", buf, 0x18u);
        }

        if (messageable)
        {
          *messageable = *(v41 + 24);
        }

        v9 = v45[5];
        if (brand)
        {
          *brand = v35[5];
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

+ (id)barcodeContext:(id)context preview:(BOOL)preview contact:(id)contact ics:(id)ics
{
  contextCopy = context;
  contactCopy = contact;
  icsCopy = ics;
  if (preview || ([MEMORY[0x277CCA8D8] mainBundle], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bundleIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"com.apple.BarcodeSupport.BarcodeNotificationService"), v13, v12, v14))
  {
    v15 = [DDAction contextByAddingValue:MEMORY[0x277CBEC38] toKey:@"NotificationStyle" inContext:contextCopy];

    contextCopy = v15;
  }

  v16 = [DDAction contextByAddingValue:MEMORY[0x277CBEC38] toKey:@"HeyBarcodeSheet" inContext:contextCopy];

  if (contactCopy)
  {
    v17 = [DDAction contextByAddingValue:contactCopy toKey:@"Contact" inContext:v16];

    v16 = v17;
  }

  if (icsCopy)
  {
    v18 = [DDAction contextByAddingValue:icsCopy toKey:@"ICS" inContext:v16];

    v16 = v18;
  }

  return v16;
}

- (id)barcodeActionsForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics
{
  lCopy = l;
  v13 = [DDDetectionController barcodeContext:context preview:0 contact:contact ics:ics];
  v14 = [(DDActionController *)self->_actionController actionsForURL:lCopy result:result context:v13];

  return v14;
}

- (id)barcodeDefaultActionForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics
{
  lCopy = l;
  v13 = [DDDetectionController barcodeContext:context preview:0 contact:contact ics:ics];
  v14 = [(DDActionController *)self->_actionController defaultActionForURL:lCopy result:result context:v13];

  return v14;
}

- (id)barcodePreviewActionForContext:(id)context URL:(id)l result:(__DDResult *)result contact:(id)contact ics:(id)ics
{
  lCopy = l;
  v12 = [DDDetectionController barcodeContext:context preview:1 contact:contact ics:ics];
  v13 = [DDPreviewAction previewActionForURL:lCopy result:result context:v12];

  return v13;
}

+ (id)filterResults:(id)results forTypes:(unint64_t)types referenceDate:(id)date referenceTimeZone:(id)zone
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  dateCopy = date;
  zoneCopy = zone;
  v12 = [resultsCopy count];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    v14 = [DDOperation shouldUrlifyBlockForTypes:types];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = resultsCopy;
    v15 = resultsCopy;
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
          if ((v14)[2](v14, [v20 coreResult], dateCopy, zoneCopy))
          {
            [v13 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    resultsCopy = v23;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)lightUnderlineColorFromTextColor:(id)color
{
  v8 = 0.0;
  v9 = 0;
  v7 = 0.0;
  colorCopy = color;
  [colorCopy getHue:&v9 saturation:&v8 brightness:&v7 alpha:0];
  v4 = 0.26;
  if (v8 < 0.02 && v7 > 0.98)
  {
    v4 = 0.46;
  }

  v5 = [colorCopy colorWithAlphaComponent:v4];

  return v5;
}

- (DDDetectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetResultsForFrame:(id)frame
{
  frameCopy = frame;
  [(DDDetectionController *)self _commonResetResultsForContainer:frameCopy];
  if (WebThreadIsEnabled())
  {
    v7 = frameCopy;
    WebThreadRun();
  }

  else
  {
    Main = CFRunLoopGetMain();
    if (Main != CFRunLoopGetCurrent())
    {
      [DDDetectionController(WebKitBackEnd) resetResultsForFrame:];
    }

    dOMDocument = [frameCopy DOMDocument];
    [dOMDocument dd_resetResults];
  }
}

void __61__DDDetectionController_WebKitBackEnd__resetResultsForFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) DOMDocument];
  [v1 dd_resetResults];
}

- (BOOL)shouldImmediatelyShowActionSheetForURL:(id)l forFrame:(id)frame
{
  lCopy = l;
  frameCopy = frame;
  scheme = [lCopy scheme];
  v9 = [scheme isEqualToString:*MEMORY[0x277D04208]];

  if (v9 && (v10 = [(DDDetectionController *)self _resultForURL:lCopy forContainer:frameCopy context:0]) != 0)
  {
    v11 = [(DDDetectionController *)self _shouldImmediatelyShowActionSheetForCoreResult:v10];
  }

  else
  {
    v11 = [(DDDetectionController *)self _shouldImmediatelyShowActionSheetForURL:lCopy];
  }

  v12 = v11;

  return v12;
}

- (id)_plainTextAugmentedContext:(id)context withFrame:(id)frame
{
  v4 = [context mutableCopy];
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

- (__DDResult)_resultForAnchor:(id)anchor forFrame:(id)frame context:(id *)context
{
  frameCopy = frame;
  anchorCopy = anchor;
  absoluteLinkURL = [anchorCopy absoluteLinkURL];
  v11 = [anchorCopy getAttribute:@"x-apple-data-detectors-result"];

  if (!v11 || ![v11 length] || (v12 = -[DDDetectionController _resultForIdentifier:forContainer:context:](self, "_resultForIdentifier:forContainer:context:", v11, frameCopy, context)) == 0)
  {
    scheme = [absoluteLinkURL scheme];
    v14 = *MEMORY[0x277D04208];
    v15 = [scheme isEqualToString:*MEMORY[0x277D04208]];

    if (!v15 || (v12 = [(DDDetectionController *)self _resultForURL:absoluteLinkURL forContainer:frameCopy context:context]) == 0)
    {
      tapAndHoldSchemes = [objc_opt_class() tapAndHoldSchemes];
      scheme2 = [absoluteLinkURL scheme];
      lowercaseString = [scheme2 lowercaseString];
      if ([tapAndHoldSchemes containsObject:lowercaseString])
      {
        scheme3 = [absoluteLinkURL scheme];
        v25 = [scheme3 isEqualToString:v14];

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
        [DDDetectionController(WebKitBackEnd) _resultForAnchor:absoluteLinkURL forFrame:? context:?];
        v16 = 0;
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v16 = v12;
  if (frameCopy && context)
  {
    frameView = [frameCopy frameView];
    documentView = [frameView documentView];
    selectedString = [documentView selectedString];

    v20 = *context;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*context setObject:selectedString forKey:@"SelectedText"];
    }

    else
    {
      v26 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*context];
      [v26 setObject:selectedString forKey:@"SelectedText"];
      v27 = v26;
      *context = v26;
    }
  }

LABEL_18:

  return v16;
}

- (__DDResult)resultForDOMNode:(id)node forFrame:(id)frame
{
  nodeCopy = node;
  frameCopy = frame;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(DDDetectionController *)self _resultForAnchor:nodeCopy forFrame:frameCopy context:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionsForAnchor:(id)anchor url:(id)url forFrame:(id)frame
{
  v15 = 0;
  frameCopy = frame;
  urlCopy = url;
  v10 = [(DDDetectionController *)self resultForNode:anchor url:urlCopy frame:frameCopy contextRef:&v15];
  v11 = v15;
  v12 = [(DDDetectionController *)self _plainTextAugmentedContext:v11 withFrame:frameCopy];

  v13 = [(DDActionController *)self->_actionController actionsForURL:urlCopy result:v10 context:v12];

  return v13;
}

- (__DDResult)_resultForIdentifier:(id)identifier withResults:(id)results context:(id *)context
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  resultsCopy = results;
  v9 = resultsCopy;
  if (resultsCopy)
  {
    v10 = resultsCopy;
    v11 = [identifierCopy componentsSeparatedByString:@"/"];
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
        contextCopy = context;
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

            integerValue = [*(*(&v26 + 1) + 8 * v17) integerValue];
            if (integerValue < 0 || integerValue >= [v10 count])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [DDDetectionController(WebKitBackEnd) _resultForIdentifier:withResults:context:];
              }

              v19 = 0;
              goto LABEL_26;
            }

            v19 = [v10 objectAtIndex:integerValue];
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
        context = contextCopy;
      }

      else
      {
        v19 = 0;
        v16 = v10;
      }

      if (context)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v20 setObject:v10 forKey:@"AllResults"];
        v21 = v20;
        *context = v20;
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

- (__DDResult)_resultForURL:(id)l withResults:(id)results context:(id *)context
{
  lCopy = l;
  resultsCopy = results;
  scheme = [lCopy scheme];
  v11 = [scheme isEqualToString:*MEMORY[0x277D04208]];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController(WebKitBackEnd) _resultForURL:lCopy withResults:? context:?];
    }

    goto LABEL_8;
  }

  resourceSpecifier = [lCopy resourceSpecifier];
  v13 = [resourceSpecifier hasPrefix:@"//"];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController(WebKitBackEnd) _resultForURL:lCopy withResults:? context:?];
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  resourceSpecifier2 = [lCopy resourceSpecifier];
  v15 = [resourceSpecifier2 substringFromIndex:2];
  v16 = [(DDDetectionController *)self _resultForIdentifier:v15 withResults:resultsCopy context:context];

LABEL_9:
  return v16;
}

- (__DDResult)resultForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results context:(id)context extendedContext:(id *)extendedContext
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  textCopy = text;
  resultsCopy = results;
  contextCopy = context;
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = resultsCopy;
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

        [v17 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * v22++), "coreResult", textCopy)}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v20);
  }

  if (identifierCopy && [identifierCopy length])
  {
    v40 = 0;
    v23 = [(DDDetectionController *)self _resultForIdentifier:identifierCopy withResults:v17 context:&v40];
    v24 = v40;
    v25 = contextCopy;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
    v25 = contextCopy;
  }

  scheme = [lCopy scheme];
  v27 = [scheme isEqualToString:*MEMORY[0x277D04208]];

  if (!v27)
  {
    v23 = 0;
    if (!extendedContext)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v39 = v24;
  v23 = [(DDDetectionController *)self _resultForURL:lCopy withResults:v17 context:&v39];
  v28 = v39;

  v24 = v28;
LABEL_15:
  if (!extendedContext)
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

  *extendedContext = v29;
LABEL_20:
  if (v23)
  {
    v30 = textCopy;
    if (v24)
    {
      [v24 setObject:textCopy forKey:@"SelectedText"];
      if (v25)
      {
        [v24 addEntriesFromDictionary:v25];
      }
    }
  }

  else
  {
    tapAndHoldSchemes = [objc_opt_class() tapAndHoldSchemes];
    scheme2 = [lCopy scheme];
    lowercaseString = [scheme2 lowercaseString];
    if ([tapAndHoldSchemes containsObject:lowercaseString])
    {
      scheme3 = [lCopy scheme];
      [scheme3 isEqualToString:*MEMORY[0x277D04208]];

      v25 = contextCopy;
    }

    v30 = textCopy;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)actionsForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results context:(id)context
{
  v17 = 0;
  lCopy = l;
  v13 = [(DDDetectionController *)self resultForURL:lCopy identifier:identifier selectedText:text results:results context:context extendedContext:&v17];
  v14 = v17;
  v15 = [(DDActionController *)self->_actionController actionsForURL:lCopy result:v13 context:v14];

  return v15;
}

- (id)defaultActionForURL:(id)l results:(id)results context:(id)context
{
  v13 = 0;
  lCopy = l;
  v9 = [(DDDetectionController *)self resultForURL:lCopy identifier:0 selectedText:&stru_282C1E0A8 results:results context:context extendedContext:&v13];
  v10 = v13;
  v11 = [(DDActionController *)self->_actionController defaultActionForURL:lCopy result:v9 context:v10];

  return v11;
}

- (id)titleForURL:(id)l results:(id)results context:(id)context
{
  lCopy = l;
  resultsCopy = results;
  contextCopy = context;
  if (lCopy)
  {
    v11 = [(DDDetectionController *)self resultForURL:lCopy identifier:0 selectedText:&stru_282C1E0A8 results:resultsCopy context:contextCopy extendedContext:0];
    if (v11)
    {
      actionSheetTitleForResult(v11);
    }

    else
    {
      actionSheetTitleForURL(lCopy);
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)attributedTitleForURL:(id)l updaterBlock:(id)block
{
  if (l)
  {
    v4 = [(DDDetectionController *)self titleForURL:l results:0 context:0];
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

- (id)attributedTitleForResult:(__DDResult *)result updaterBlock:(id)block
{
  if (result)
  {
    v4 = [(DDDetectionController *)self titleForResult:result subResult:0 withURL:0 context:0];
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

- (id)actionsForDOMNode:(id)node forFrame:(id)frame
{
  nodeCopy = node;
  frameCopy = frame;
  v8 = nodeCopy;
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

      parentNode = [v10 parentNode];

      v10 = parentNode;
      if (!parentNode)
      {
        goto LABEL_5;
      }
    }

    absoluteLinkURL = [v10 absoluteLinkURL];
    v12 = [(DDDetectionController *)self actionsForAnchor:v10 url:absoluteLinkURL forFrame:frameCopy];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (__DDResult)resultForNode:(id)node url:(id)url frame:(id)frame contextRef:(id *)ref
{
  nodeCopy = node;
  urlCopy = url;
  frameCopy = frame;
  if (!nodeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v13 = [(DDDetectionController *)self _resultForAnchor:nodeCopy forFrame:frameCopy context:ref]) == 0)
  {
    scheme = [urlCopy scheme];
    v15 = [scheme isEqualToString:*MEMORY[0x277D04208]];

    if (v15)
    {
      v13 = [(DDDetectionController *)self _resultForURL:urlCopy forContainer:frameCopy context:ref];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)defaultActionForAnchor:(id)anchor url:(id)url forFrame:(id)frame
{
  v15 = 0;
  frameCopy = frame;
  urlCopy = url;
  v10 = [(DDDetectionController *)self resultForNode:anchor url:urlCopy frame:frameCopy contextRef:&v15];
  v11 = v15;
  v12 = [(DDDetectionController *)self _plainTextAugmentedContext:v11 withFrame:frameCopy];

  v13 = [(DDActionController *)self->_actionController defaultActionForURL:urlCopy result:v10 context:v12];

  return v13;
}

- (id)defaultActionForDOMNode:(id)node forFrame:(id)frame
{
  nodeCopy = node;
  frameCopy = frame;
  v8 = nodeCopy;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        absoluteLinkURL = [v10 absoluteLinkURL];
        selfCopy2 = self;
        v16 = v10;
        goto LABEL_11;
      }

      parentNode = [v10 parentNode];

      v10 = parentNode;
    }

    while (parentNode);
    v10 = v9;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentNode2 = [v10 parentNode];

      v10 = parentNode2;
      if (!parentNode2)
      {
        goto LABEL_8;
      }
    }

    v17 = MEMORY[0x277CBEBC0];
    action = [v10 action];
    absoluteLinkURL = [v17 URLWithString:action];

    selfCopy2 = self;
    v16 = 0;
LABEL_11:
    v13 = [(DDDetectionController *)selfCopy2 defaultActionForAnchor:v16 url:absoluteLinkURL forFrame:frameCopy];
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

+ (id)updateContext:(id)context forResult:(__DDResult *)result atIndex:(unint64_t)index ofStorage:(id)storage
{
  storageCopy = storage;
  contextCopy = context;
  v11 = [storageCopy attribute:@"DDContext" atIndex:index effectiveRange:0];
  v12 = [DDAction contextByAddingValue:storageCopy toKey:@"TextStorage" inContext:contextCopy];

  if (v11)
  {
    [v12 addEntriesFromDictionary:v11];
  }

  v20 = xmmword_21ABCD900;
  if (result)
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
    v14 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:&v20];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }
  }

  string = [storageCopy string];
  v16 = [string dd_leadingTextWithNumberOfCharacters:350 beforeRange:v20];
  v17 = [string dd_trailingTextWithNumberOfCharacters:350 afterRange:v20];
  if (*(&v20 + 1))
  {
    v18 = [string dd_trailingTextWithNumberOfCharacters:*(&v20 + 1) afterRange:{v20, 0}];
    [v12 setObject:v18 forKey:@"MiddleText"];
  }

  [v12 setObject:v16 forKey:@"LeadingText"];
  [v12 setObject:v17 forKey:@"TrailingText"];

LABEL_10:

  return v12;
}

- (void)resetResultsForTextView:(id)view
{
  viewCopy = view;
  [(DDDetectionController *)self _commonResetResultsForContainer:viewCopy];
  textStorage = [viewCopy textStorage];

  [textStorage dd_resetResults];
}

- (id)_subResultAtIndex:(unint64_t)index ofResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subResults = [result subResults];
  v6 = [subResults countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subResults);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        range = [v10 range];
        if (index >= range && index - range < v12)
        {
          v14 = v10;
          goto LABEL_14;
        }
      }

      v7 = [subResults countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (__DDResult)resultForLinkAtIndex:(unint64_t)index inTextStorage:(id)storage
{
  v6 = [storage attribute:*MEMORY[0x277D041D8] atIndex:index effectiveRange:0];
  type = [v6 type];
  v8 = [type isEqualToString:*MEMORY[0x277D04170]];

  if (v8)
  {
    v9 = [(DDDetectionController *)self _subResultAtIndex:index ofResult:v6];
    coreResult = [v9 coreResult];
  }

  else
  {
    coreResult = [v6 coreResult];
  }

  return coreResult;
}

- (id)linkAtIndex:(unint64_t)index inTextStorage:(id)storage
{
  v7 = 0;
  v4 = [(DDDetectionController *)self _resultForLinkAtIndex:index inTextStorage:storage subResult:0 url:&v7 effectiveRange:0];
  v5 = v7;

  return v5;
}

- (id)_resultForLinkAtIndex:(unint64_t)index inTextStorage:(id)storage subResult:(id *)result url:(id *)url effectiveRange:(_NSRange *)range
{
  storageCopy = storage;
  v13 = [storageCopy attribute:*MEMORY[0x277D041D8] atIndex:index effectiveRange:range];
  v14 = v13;
  if (v13)
  {
    type = [v13 type];
    v16 = [type isEqualToString:*MEMORY[0x277D04170]];

    if (result)
    {
      if (v16)
      {
        *result = [(DDDetectionController *)self _subResultAtIndex:index ofResult:v14];
      }
    }
  }

  if (url)
  {
    v17 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:range];
    v18 = [(DDDetectionController *)self _URLForLinkAttributeValue:v17];
    scheme = [v18 scheme];
    lowercaseString = [scheme lowercaseString];
    if ([lowercaseString hasPrefix:@"x-apple-data-detectors"])
    {
      v21 = +[DDAction clientActionsDelegate];
      if (!v21)
      {

        goto LABEL_13;
      }

      v22 = v21;
      scheme2 = [v18 scheme];
      v24 = [scheme2 isEqualToString:@"x-apple-data-detectors-clientdefined"];

      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v25 = v18;
    *url = v18;
LABEL_13:
  }

  return v14;
}

- (BOOL)shouldImmediatelyShowActionSheetForTapAtIndex:(unint64_t)index ofStorage:(id)storage
{
  storageCopy = storage;
  v14 = 0;
  v7 = [(DDDetectionController *)self _resultForLinkAtIndex:index inTextStorage:storageCopy subResult:&v14 url:0 effectiveRange:0];
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
    v11 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:0];
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

- (BOOL)shouldImmediatelyLaunchDefaultActionForTapAndHoldAtIndex:(unint64_t)index ofStorage:(id)storage
{
  storageCopy = storage;
  v7 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:0];
  v8 = [(DDDetectionController *)self _URLForLinkAttributeValue:v7];
  if (v8)
  {
    v9 = [(DDDetectionController *)self shouldImmediatelyLaunchDefaultActionForURL:v8];
  }

  else
  {
    v10 = [(DDDetectionController *)self _resultForLinkAtIndex:index inTextStorage:storageCopy subResult:0 url:0 effectiveRange:0];
    v11 = v10;
    v9 = v10 && (v12 = [v10 coreResult]) != 0 && -[DDDetectionController shouldImmediatelyLaunchDefaultActionForResult:](self, "shouldImmediatelyLaunchDefaultActionForResult:", v12);
  }

  return v9;
}

- (id)_applyBlock:(id)block withResultsAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context
{
  blockCopy = block;
  storageCopy = storage;
  contextCopy = context;
  v21 = 0;
  v22 = 0;
  v13 = [(DDDetectionController *)self _resultForLinkAtIndex:index inTextStorage:storageCopy subResult:&v22 url:&v21 effectiveRange:0];
  v14 = v22;
  v15 = v21;
  if (v13 || ([storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:0], v16 = objc_claimAutoreleasedReturnValue(), -[DDDetectionController _URLForLinkAttributeValue:](self, "_URLForLinkAttributeValue:", v16), v17 = objc_claimAutoreleasedReturnValue(), v15, v16, (v15 = v17) != 0))
  {
    v18 = +[DDDetectionController updateContext:forResult:atIndex:ofStorage:](DDDetectionController, "updateContext:forResult:atIndex:ofStorage:", contextCopy, [v13 coreResult], index, storageCopy);
    v19 = blockCopy[2](blockCopy, v14, v13, v15, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)actionsAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__DDDetectionController_TextKitBackEnd__actionsAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:index ofStorage:storage context:context];

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

- (id)titleForResultAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__DDDetectionController_TextKitBackEnd__titleForResultAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:index ofStorage:storage context:context];

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

- (id)defaultActionAtIndex:(unint64_t)index ofStorage:(id)storage context:(id)context
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__DDDetectionController_TextKitBackEnd__defaultActionAtIndex_ofStorage_context___block_invoke;
  v7[3] = &unk_278291798;
  v7[4] = self;
  v5 = [(DDDetectionController *)self _applyBlock:v7 withResultsAtIndex:index ofStorage:storage context:context];

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

- (id)titleForResult:(__DDResult *)result subResult:(__DDResult *)subResult withURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (subResult)
  {
    resultCopy = subResult;
  }

  else
  {
    resultCopy = result;
  }

  if (resultCopy)
  {
    v12 = actionSheetTitleForResult(resultCopy);
    if ([v12 length] < 0xC9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (lCopy && ([lCopy scheme], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"x-apple-data-detectors-clientdefined"), v16, (v17 & 1) == 0))
  {
    v12 = dd_urlUserVisibleString(lCopy);
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

- (id)attributedTitleForResultAtIndex:(unint64_t)index ofStorage:(id)storage updaterBlock:(id)block
{
  v5 = [(DDDetectionController *)self titleForResultAtIndex:index ofStorage:storage context:0];
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

- (id)_URLForLinkAttributeValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:valueCopy];
LABEL_5:
    v5 = v4;

    v6 = v5;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (void)interactionDidStartAtIndex:(unint64_t)index ofStorage:(id)storage
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__DDDetectionController_TextKitBackEnd__interactionDidStartAtIndex_ofStorage___block_invoke;
  v5[3] = &unk_278291798;
  v5[4] = self;
  v4 = [(DDDetectionController *)self _applyBlock:v5 withResultsAtIndex:index ofStorage:storage context:0];
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

- (BOOL)shouldUseLightStyleAtIndex:(unint64_t)index ofStorage:(id)storage moreHighlight:(BOOL *)highlight
{
  storageCopy = storage;
  v19 = 0;
  v9 = [(DDDetectionController *)self _resultForLinkAtIndex:index inTextStorage:storageCopy subResult:&v19 url:0 effectiveRange:0];
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
    if (highlight && v13)
    {
      [v9 coreResult];
      *highlight = DDShouldUseDebugHighlightForResult();
      v14 = 1;
    }
  }

  else
  {
    v15 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:0];
    v16 = dd_ensureUrlIsUrl(v15);

    scheme = [v16 scheme];
    v14 = [scheme isEqualToString:@"x-apple-data-detectors-clientdefined"];

    v9 = 0;
  }

  return v14;
}

- (id)preferredTextAttributesForLinkAtCharacterIndex:(unint64_t)index ofStorage:(id)storage
{
  v18[2] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v16 = 0;
  if ([(DDDetectionController *)self shouldUseLightStyleAtIndex:index ofStorage:storageCopy moreHighlight:&v16])
  {
    if (v16 == 1)
    {
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    }

    else
    {
      v9 = [storageCopy attribute:*MEMORY[0x277D740C0] atIndex:index effectiveRange:0];
      v10 = v9;
      if (v9)
      {
        labelColor = v9;
      }

      else
      {
        labelColor = [MEMORY[0x277D75348] labelColor];
      }

      v12 = labelColor;

      systemOrangeColor = [objc_opt_class() lightUnderlineColorFromTextColor:v12];
    }

    v13 = *MEMORY[0x277D741E8];
    v17[0] = *MEMORY[0x277D741F0];
    v17[1] = v13;
    v18[0] = &unk_282C2BDE8;
    v18[1] = systemOrangeColor;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)urlifyTextView:(id)view withExternalResults:(id)results context:(id)context
{
  viewCopy = view;
  resultsCopy = results;
  v10 = MEMORY[0x277CCACC8];
  contextCopy = context;
  if (([v10 isMainThread] & 1) == 0)
  {
    [DDDetectionController(TextKitBackEnd) urlifyTextView:a2 withExternalResults:self context:?];
  }

  v12 = [resultsCopy valueForKey:@"coreResult"];

  [(DDDetectionController *)self setResults:v12 forContainer:viewCopy];
  if (v12)
  {
    CFRelease(v12);
  }

  [(DDDetectionController *)self setContext:contextCopy forContainer:viewCopy];
  v13 = [[DDTextKitOperation alloc] initWithContainer:viewCopy];
  [(DDOperation *)v13 setDetectionTypes:0x7FFFFFFFLL];
  [(DDOperation *)v13 setContext:contextCopy];

  [(DDOperation *)v13 setScannerResults:resultsCopy];
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