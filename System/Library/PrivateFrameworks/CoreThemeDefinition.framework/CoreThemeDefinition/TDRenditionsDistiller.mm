@interface TDRenditionsDistiller
- (TDRenditionsDistiller)initWithDocument:(id)a3 shouldCompressCSIDataFlag:(BOOL)a4;
- (id)_nextObjectFromInQueue;
- (id)nextCSIDataInfoFromQueue;
- (void)_distill:(id)a3;
- (void)_enqueueDistillingAbortedInfo;
- (void)_enqueueLastCSIDataInfoFlag;
- (void)_enqueueOnQueue:(id)a3 withQueueLock:(id)a4 object:(id)a5;
- (void)dealloc;
- (void)enqueueAbortFlag;
- (void)enqueueLastRenditionFlag;
- (void)enqueueRenditionSpec:(id)a3;
@end

@implementation TDRenditionsDistiller

- (TDRenditionsDistiller)initWithDocument:(id)a3 shouldCompressCSIDataFlag:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = TDRenditionsDistiller;
  v6 = [(TDRenditionsDistiller *)&v8 init];
  if (v6)
  {
    v6->document = a3;
    v6->shouldCompressCSIDataFlag = a4;
    v6->renditionInQueue = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6->csiDataInfoOutQueue = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6->inQueueLock = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v6->outQueueLock = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v6->_group = dispatch_group_create();
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_group);
  [(TDRenditionsDistiller *)self setLogger:0];
  v3.receiver = self;
  v3.super_class = TDRenditionsDistiller;
  [(TDRenditionsDistiller *)&v3 dealloc];
}

- (void)_enqueueOnQueue:(id)a3 withQueueLock:(id)a4 object:(id)a5
{
  [a4 lock];
  [a3 addObject:a5];

  [a4 unlockWithCondition:1];
}

- (void)_enqueueLastCSIDataInfoFlag
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:0];

  [(TDRenditionsDistiller *)self _enqueueOnOutQueueTheObject:v3];
}

- (void)_enqueueDistillingAbortedInfo
{
  [(NSConditionLock *)self->outQueueLock lock];
  -[NSMutableArray insertObject:atIndex:](self->csiDataInfoOutQueue, "insertObject:atIndex:", [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"DistillingAborted"}], 0);
  outQueueLock = self->outQueueLock;

  [(NSConditionLock *)outQueueLock unlockWithCondition:1];
}

- (id)_nextObjectFromInQueue
{
  if (self->noMoreRenditions)
  {
    return 0;
  }

  [(NSConditionLock *)self->inQueueLock lockWhenCondition:1];
  v3 = [(NSMutableArray *)self->renditionInQueue count];
  if (!v3)
  {
    [(NSConditionLock *)self->inQueueLock unlockWithCondition:0];
    return 0;
  }

  v4 = v3;
  v5 = [(NSMutableArray *)self->renditionInQueue objectAtIndex:0];
  [(NSMutableArray *)self->renditionInQueue removeObjectAtIndex:0];
  [(NSConditionLock *)self->inQueueLock unlockWithCondition:v4 != 1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v5 integerValue])
    {
      v5 = 0;
LABEL_11:
      self->noMoreRenditions = 1;
      return v5;
    }

    if ([v5 integerValue] == 1)
    {
      goto LABEL_11;
    }
  }

  return v5;
}

- (void)_distill:(id)a3
{
  context = objc_autoreleasePoolPush();
  v4 = [(TDRenditionsDistiller *)self logger];
  *&self->noMoreCSIDataInfo = 0;
  v5 = 5;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  do
  {
    v7 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [v7 setPersistentStoreCoordinator:{objc_msgSend(objc_msgSend(-[CoreThemeDocument mocOrganizer](self->document, "mocOrganizer"), "mainMOC"), "persistentStoreCoordinator")}];
    [v7 setUndoManager:0];
    [v6 addObject:v7];

    --v5;
  }

  while (v5);
  v8 = [(TDRenditionsDistiller *)self _nextObjectFromInQueue];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v9 integerValue] == 1)
        {
          [(TDRenditionsDistiller *)self _enqueueDistillingAbortedInfo];
          objc_autoreleasePoolPop(v11);
          break;
        }

        [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
      }

      v12 = [v6 objectAtIndex:v10 % 5];
      dispatch_group_enter(self->_group);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__TDRenditionsDistiller__distill___block_invoke;
      v15[3] = &unk_278EBB6C0;
      v15[4] = v12;
      v15[5] = v9;
      v15[6] = self;
      v15[7] = v4;
      [v12 performBlock:v15];
      objc_autoreleasePoolPop(v11);
      v9 = [(TDRenditionsDistiller *)self _nextObjectFromInQueue];
      ++v10;
    }

    while (v9);
  }

  [(TDRenditionsDistiller *)self waitUntilFinished];
  [(TDRenditionsDistiller *)self _enqueueLastCSIDataInfoFlag];

  objc_autoreleasePoolPop(context);
}

void __34__TDRenditionsDistiller__distill___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  [*(*(a1 + 48) + 8) updateRenditionSpec:v2];
  v3 = [v2 createCSIRepresentationWithCompression:*(*(a1 + 48) + 48) colorSpaceID:objc_msgSend(*(*(a1 + 48) + 8) document:{"colorSpaceID"), *(*(a1 + 48) + 8)}];
  if (v3)
  {
    [*(a1 + 48) _enqueueCSIDataInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v3, @"CSIData", *(a1 + 40), @"RenditionSpec", 0)}];
    [*(a1 + 32) reset];
  }

  else
  {
    [*(a1 + 56) logErrorWithFormat:@"ERROR: CSI Data was nil for rendition spec %@", v2];
    [*(a1 + 48) _enqueueDistillingAbortedInfo];
  }

  v4 = *(*(a1 + 48) + 56);

  dispatch_group_leave(v4);
}

- (void)enqueueLastRenditionFlag
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:0];

  [(TDRenditionsDistiller *)self _enqueueOnInQueueTheObject:v3];
}

- (void)enqueueAbortFlag
{
  [(NSConditionLock *)self->inQueueLock lock];
  -[NSMutableArray insertObject:atIndex:](self->renditionInQueue, "insertObject:atIndex:", [MEMORY[0x277CCABB0] numberWithInteger:1], 0);
  inQueueLock = self->inQueueLock;

  [(NSConditionLock *)inQueueLock unlockWithCondition:1];
}

- (void)enqueueRenditionSpec:(id)a3
{
  v4 = [a3 objectID];

  [(TDRenditionsDistiller *)self _enqueueOnInQueueTheObject:v4];
}

- (id)nextCSIDataInfoFromQueue
{
  if (self->noMoreCSIDataInfo)
  {
    return 0;
  }

  [(NSConditionLock *)self->outQueueLock lockWhenCondition:1];
  v4 = [(NSMutableArray *)self->csiDataInfoOutQueue count];
  if (!v4)
  {
    [(NSConditionLock *)self->outQueueLock unlockWithCondition:0];
    return 0;
  }

  v5 = v4;
  v6 = [(NSMutableArray *)self->csiDataInfoOutQueue objectAtIndex:0];
  [(NSMutableArray *)self->csiDataInfoOutQueue removeObjectAtIndex:0];
  [(NSConditionLock *)self->outQueueLock unlockWithCondition:v5 != 1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 integerValue])
    {
      v6 = 0;
      self->noMoreCSIDataInfo = 1;
      return v6;
    }

    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    return 0;
  }

  return v6;
}

@end