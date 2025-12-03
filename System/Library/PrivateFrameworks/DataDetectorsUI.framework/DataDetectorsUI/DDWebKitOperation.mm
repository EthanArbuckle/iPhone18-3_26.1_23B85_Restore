@interface DDWebKitOperation
- (BOOL)_containerReadyForDetection;
- (BOOL)_rangeValidForContainer;
- (BOOL)containerIsReady;
- (BOOL)doURLificationOnDocument;
- (BOOL)needsToStartOver;
- (__DDScanQuery)_createScanQueryForBackend;
- (id)newOperationForContinuation;
- (id)newOperationForStartingOver;
- (void)_applyContainerRestrictionsToTypes;
- (void)_createScanQueryForBackend;
- (void)_rangeValidForContainer;
- (void)_updateGenerationNumber;
- (void)dispatchContainerModificationBlock:(id)block;
- (void)newOperationForContinuation;
@end

@implementation DDWebKitOperation

uint64_t __28__DDWebKitOperation_cleanup__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = DDWebKitOperation;
  objc_msgSendSuper2(&v3, sel_cleanup);
  [*(a1 + 32) setStartNode:0];
  [*(a1 + 32) setEndNode:0];
  return [*(a1 + 32) setResults:0];
}

- (BOOL)_containerReadyForDetection
{
  container = [(DDOperation *)self container];
  needsLayout = [container needsLayout];

  return needsLayout ^ 1;
}

- (void)_applyContainerRestrictionsToTypes
{
  container = [(DDOperation *)self container];
  isTelephoneNumberParsingAllowed = [container isTelephoneNumberParsingAllowed];

  if ((isTelephoneNumberParsingAllowed & 1) == 0)
  {
    [(DDOperation *)self setDetectionTypes:[(DDOperation *)self detectionTypes]& 0x7FFFFFFE];
  }

  v5.receiver = self;
  v5.super_class = DDWebKitOperation;
  [(DDOperation *)&v5 _applyContainerRestrictionsToTypes];
}

- (BOOL)_rangeValidForContainer
{
  container = [(DDOperation *)self container];
  dOMDocument = [container DOMDocument];

  startNode = [(DDWebKitOperation *)self startNode];
  ownerDocument = [startNode ownerDocument];

  if (ownerDocument)
  {
    v7 = ownerDocument == dOMDocument;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(DDWebKitOperation *)ownerDocument _rangeValidForContainer];
  }

  return v8;
}

- (void)_updateGenerationNumber
{
  container = [(DDOperation *)self container];
  -[DDOperation setGenerationNumber:](self, "setGenerationNumber:", [container layoutCount]);
}

- (__DDScanQuery)_createScanQueryForBackend
{
  container = [(DDOperation *)self container];
  dOMDocument = [container DOMDocument];

  body = [dOMDocument body];
  if (!body)
  {
    createRange = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  createRange = [dOMDocument createRange];
  [createRange selectNode:body];
  startNode = [(DDWebKitOperation *)self startNode];

  if (startNode)
  {
    startNode2 = [(DDWebKitOperation *)self startNode];
    [createRange setStart:startNode2 offset:{-[DDWebKitOperation startOffset](self, "startOffset")}];
  }

  if (!createRange || ([createRange collapsed] & 1) != 0)
  {
    goto LABEL_10;
  }

  v9 = [objc_alloc(MEMORY[0x277D7B808]) initWithRange:createRange];
  v16 = 0;
  v10 = [(WebTextIterator *)v9 dd_newQueryStopRange:?];
  v11 = v16;
  startContainer = [createRange startContainer];
  [(DDWebKitOperation *)self setStartNode:startContainer];

  -[DDWebKitOperation setStartOffset:](self, "setStartOffset:", [createRange startOffset]);
  if (v11)
  {
    endContainer = [v11 endContainer];
    [(DDWebKitOperation *)self setEndNode:endContainer];

    -[DDWebKitOperation setEndOffset:](self, "setEndOffset:", [v11 endOffset]);
    [(DDOperation *)self setNeedContinuation:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [(DDWebKitOperation *)self _createScanQueryForBackend];
    }
  }

  else
  {
    endContainer2 = [createRange endContainer];
    [(DDWebKitOperation *)self setEndNode:endContainer2];

    -[DDWebKitOperation setEndOffset:](self, "setEndOffset:", [createRange endOffset]);
    [(DDOperation *)self setNeedContinuation:0];
  }

LABEL_11:
  return v10;
}

- (BOOL)doURLificationOnDocument
{
  v14 = 0;
  container = [(DDOperation *)self container];
  dOMDocument = [container DOMDocument];

  createRange = [dOMDocument createRange];
  [createRange setStart:self->_startNode offset:self->_startOffset];
  [createRange setEnd:self->_endNode offset:self->_endOffset];
  v6 = [objc_alloc(MEMORY[0x277D7B808]) initWithRange:createRange];
  context = [(DDOperation *)self context];

  if (context)
  {
    context2 = [(DDOperation *)self context];
    context = [context2 objectForKey:@"ReferenceDate"];
  }

  scanQuery = [(DDOperation *)self scanQuery];
  results = [(DDOperation *)self results];
  v11 = [objc_opt_class() urlificationBlockForTypes:{-[DDOperation detectionTypes](self, "detectionTypes")}];
  v12 = [(WebTextIterator *)v6 dd_doUrlificationForQuery:scanQuery forResults:results referenceDate:context document:dOMDocument DOMWasModified:&v14 relevantResults:0 URLificationBlock:v11];

  LOBYTE(v11) = v14;
  return v11;
}

- (BOOL)containerIsReady
{
  container = [(DDOperation *)self container];
  v3 = [container layoutCount] > 0;

  return v3;
}

- (BOOL)needsToStartOver
{
  container = [(DDOperation *)self container];
  layoutCount = [container layoutCount];
  if (layoutCount == [(DDOperation *)self generationNumber])
  {
    container2 = [(DDOperation *)self container];
    needsLayout = [container2 needsLayout];

    return needsLayout;
  }

  else
  {

    return 1;
  }
}

- (id)newOperationForStartingOver
{
  v4.receiver = self;
  v4.super_class = DDWebKitOperation;
  newOperationForStartingOver = [(DDOperation *)&v4 newOperationForStartingOver];
  [newOperationForStartingOver setStartNode:0];
  [newOperationForStartingOver setStartOffset:0];
  return newOperationForStartingOver;
}

- (id)newOperationForContinuation
{
  v6.receiver = self;
  v6.super_class = DDWebKitOperation;
  newOperationForContinuation = [(DDOperation *)&v6 newOperationForContinuation];
  endNode = [(DDWebKitOperation *)self endNode];
  [newOperationForContinuation setStartNode:endNode];

  [newOperationForContinuation setStartOffset:{-[DDWebKitOperation endOffset](self, "endOffset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDWebKitOperation *)newOperationForContinuation newOperationForContinuation];
  }

  return newOperationForContinuation;
}

- (void)dispatchContainerModificationBlock:(id)block
{
  block = block;
  if (WebThreadIsEnabled())
  {
    WebThreadRun();
    blockCopy2 = block;
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
    blockCopy2 = block;
  }
}

- (void)_rangeValidForContainer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  selfCopy = self;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The DOMDocument changed under our feet: %p != %p", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createScanQueryForBackend
{
  v11 = *MEMORY[0x277D85DE8];
  container = [self container];
  endNode = [self endNode];
  OUTLINED_FUNCTION_0_7();
  selfCopy = self;
  v9 = v4;
  v10 = v5;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Will need to register a continuation for frame %@ (once I, %@, am done; I'll stop at %@)", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)newOperationForContinuation
{
  v10 = *MEMORY[0x277D85DE8];
  endNode = [a2 endNode];
  [a2 endOffset];
  OUTLINED_FUNCTION_0_7();
  v7 = endNode;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Creating continuation %@. The new start node is %@, the start offset is %d", v6, 0x1Cu);

  v5 = *MEMORY[0x277D85DE8];
}

@end