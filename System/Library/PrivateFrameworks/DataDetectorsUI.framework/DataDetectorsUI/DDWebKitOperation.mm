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
- (void)dispatchContainerModificationBlock:(id)a3;
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
  v2 = [(DDOperation *)self container];
  v3 = [v2 needsLayout];

  return v3 ^ 1;
}

- (void)_applyContainerRestrictionsToTypes
{
  v3 = [(DDOperation *)self container];
  v4 = [v3 isTelephoneNumberParsingAllowed];

  if ((v4 & 1) == 0)
  {
    [(DDOperation *)self setDetectionTypes:[(DDOperation *)self detectionTypes]& 0x7FFFFFFE];
  }

  v5.receiver = self;
  v5.super_class = DDWebKitOperation;
  [(DDOperation *)&v5 _applyContainerRestrictionsToTypes];
}

- (BOOL)_rangeValidForContainer
{
  v3 = [(DDOperation *)self container];
  v4 = [v3 DOMDocument];

  v5 = [(DDWebKitOperation *)self startNode];
  v6 = [v5 ownerDocument];

  if (v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(DDWebKitOperation *)v6 _rangeValidForContainer];
  }

  return v8;
}

- (void)_updateGenerationNumber
{
  v3 = [(DDOperation *)self container];
  -[DDOperation setGenerationNumber:](self, "setGenerationNumber:", [v3 layoutCount]);
}

- (__DDScanQuery)_createScanQueryForBackend
{
  v3 = [(DDOperation *)self container];
  v4 = [v3 DOMDocument];

  v5 = [v4 body];
  if (!v5)
  {
    v6 = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v6 = [v4 createRange];
  [v6 selectNode:v5];
  v7 = [(DDWebKitOperation *)self startNode];

  if (v7)
  {
    v8 = [(DDWebKitOperation *)self startNode];
    [v6 setStart:v8 offset:{-[DDWebKitOperation startOffset](self, "startOffset")}];
  }

  if (!v6 || ([v6 collapsed] & 1) != 0)
  {
    goto LABEL_10;
  }

  v9 = [objc_alloc(MEMORY[0x277D7B808]) initWithRange:v6];
  v16 = 0;
  v10 = [(WebTextIterator *)v9 dd_newQueryStopRange:?];
  v11 = v16;
  v12 = [v6 startContainer];
  [(DDWebKitOperation *)self setStartNode:v12];

  -[DDWebKitOperation setStartOffset:](self, "setStartOffset:", [v6 startOffset]);
  if (v11)
  {
    v13 = [v11 endContainer];
    [(DDWebKitOperation *)self setEndNode:v13];

    -[DDWebKitOperation setEndOffset:](self, "setEndOffset:", [v11 endOffset]);
    [(DDOperation *)self setNeedContinuation:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [(DDWebKitOperation *)self _createScanQueryForBackend];
    }
  }

  else
  {
    v15 = [v6 endContainer];
    [(DDWebKitOperation *)self setEndNode:v15];

    -[DDWebKitOperation setEndOffset:](self, "setEndOffset:", [v6 endOffset]);
    [(DDOperation *)self setNeedContinuation:0];
  }

LABEL_11:
  return v10;
}

- (BOOL)doURLificationOnDocument
{
  v14 = 0;
  v3 = [(DDOperation *)self container];
  v4 = [v3 DOMDocument];

  v5 = [v4 createRange];
  [v5 setStart:self->_startNode offset:self->_startOffset];
  [v5 setEnd:self->_endNode offset:self->_endOffset];
  v6 = [objc_alloc(MEMORY[0x277D7B808]) initWithRange:v5];
  v7 = [(DDOperation *)self context];

  if (v7)
  {
    v8 = [(DDOperation *)self context];
    v7 = [v8 objectForKey:@"ReferenceDate"];
  }

  v9 = [(DDOperation *)self scanQuery];
  v10 = [(DDOperation *)self results];
  v11 = [objc_opt_class() urlificationBlockForTypes:{-[DDOperation detectionTypes](self, "detectionTypes")}];
  v12 = [(WebTextIterator *)v6 dd_doUrlificationForQuery:v9 forResults:v10 referenceDate:v7 document:v4 DOMWasModified:&v14 relevantResults:0 URLificationBlock:v11];

  LOBYTE(v11) = v14;
  return v11;
}

- (BOOL)containerIsReady
{
  v2 = [(DDOperation *)self container];
  v3 = [v2 layoutCount] > 0;

  return v3;
}

- (BOOL)needsToStartOver
{
  v3 = [(DDOperation *)self container];
  v4 = [v3 layoutCount];
  if (v4 == [(DDOperation *)self generationNumber])
  {
    v5 = [(DDOperation *)self container];
    v6 = [v5 needsLayout];

    return v6;
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
  v2 = [(DDOperation *)&v4 newOperationForStartingOver];
  [v2 setStartNode:0];
  [v2 setStartOffset:0];
  return v2;
}

- (id)newOperationForContinuation
{
  v6.receiver = self;
  v6.super_class = DDWebKitOperation;
  v3 = [(DDOperation *)&v6 newOperationForContinuation];
  v4 = [(DDWebKitOperation *)self endNode];
  [v3 setStartNode:v4];

  [v3 setStartOffset:{-[DDWebKitOperation endOffset](self, "endOffset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDWebKitOperation *)v3 newOperationForContinuation];
  }

  return v3;
}

- (void)dispatchContainerModificationBlock:(id)a3
{
  block = a3;
  if (WebThreadIsEnabled())
  {
    WebThreadRun();
    v3 = block;
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
    v3 = block;
  }
}

- (void)_rangeValidForContainer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The DOMDocument changed under our feet: %p != %p", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createScanQueryForBackend
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 container];
  v3 = [a1 endNode];
  OUTLINED_FUNCTION_0_7();
  v8 = a1;
  v9 = v4;
  v10 = v5;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Will need to register a continuation for frame %@ (once I, %@, am done; I'll stop at %@)", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)newOperationForContinuation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 endNode];
  [a2 endOffset];
  OUTLINED_FUNCTION_0_7();
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Creating continuation %@. The new start node is %@, the start offset is %d", v6, 0x1Cu);

  v5 = *MEMORY[0x277D85DE8];
}

@end