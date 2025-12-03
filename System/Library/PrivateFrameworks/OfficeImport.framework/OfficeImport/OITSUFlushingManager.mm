@interface OITSUFlushingManager
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedManager;
- (OITSUFlushingManager)init;
- (TSUFlushableObjectInfo)eraseInfoForObject:(id)object;
- (void)_backgroundThread:(id)thread;
- (void)_bgTaskFinished;
- (void)_bgTaskStarted;
- (void)_bgThreadActive;
- (void)_bgThreadInactive;
- (void)_didUseObject:(id)object;
- (void)_flushAllEligible;
- (void)_startFlushingObjects;
- (void)_stopFlushingObjects;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)doneWithObject:(id)object;
- (void)insertObjectInfo:(TSUFlushableObjectInfo *)info;
- (void)removeObject:(id)object;
- (void)safeToFlush:(id)flush wasAccessed:(BOOL)accessed;
- (void)transferNewObjects;
- (void)unsafeToFlush:(id)flush;
@end

@implementation OITSUFlushingManager

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___OITSUFlushingManager;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__OITSUFlushingManager_sharedManager__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  if (+[OITSUFlushingManager sharedManager]::sOnceToken != -1)
  {
    dispatch_once(&+[OITSUFlushingManager sharedManager]::sOnceToken, block);
  }

  return +[OITSUFlushingManager sharedManager]::sSingletonInstance;
}

uint64_t __37__OITSUFlushingManager_sharedManager__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_singletonAlloc")];
  +[OITSUFlushingManager sharedManager]::sSingletonInstance = result;
  if (!result)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUFlushingManager sharedManager]_block_invoke"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 144, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    return +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUFlushingManager allocWithZone:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 144, 0, "Don't alloc a singleton");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (OITSUFlushingManager)init
{
  v4.receiver = self;
  v4.super_class = OITSUFlushingManager;
  v2 = [(OITSUFlushingManager *)&v4 init];
  if (v2)
  {
    v2->_objects = objc_alloc_init(OITSURetainedPointerKeyDictionary);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_isFlushing)
  {
    [(OITSUFlushingManager *)self _stopFlushingObjects];
  }

  [(NSCondition *)self->_cond lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  objects = self->_objects;
  v4 = [(OITSUNoCopyDictionary *)objects countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(objects);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 setFlushingManager:0];
        }

        v9 = [-[OITSUNoCopyDictionary objectForKey:](self->_objects objectForKey:{v8), "pointerValue"}];
        if (v9)
        {
          MEMORY[0x25F897000](v9, 0x1080C40DCAC275BLL);
        }
      }

      v5 = [(OITSUNoCopyDictionary *)objects countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  inactiveObjects = self->_inactiveObjects;
  v11 = [(OITSUNoCopyDictionary *)inactiveObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(inactiveObjects);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v15 setFlushingManager:0];
        }

        v16 = [-[OITSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{v15), "pointerValue"}];
        if (v16)
        {
          MEMORY[0x25F897000](v16, 0x1080C40DCAC275BLL);
        }
      }

      v12 = [(OITSUNoCopyDictionary *)inactiveObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  sortedObjects = self->_sortedObjects;
  if (sortedObjects)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(self->_sortedObjects, sortedObjects[1]);
    MEMORY[0x25F897000](sortedObjects, 0x1020C4062D53EE8);
  }

  sortedNewObjects = self->_sortedNewObjects;
  if (sortedNewObjects)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(self->_sortedNewObjects, sortedNewObjects[1]);
    MEMORY[0x25F897000](sortedNewObjects, 0x1020C4062D53EE8);
  }

  [(NSCondition *)self->_cond unlock];
  v19.receiver = self;
  v19.super_class = OITSUFlushingManager;
  [(OITSUFlushingManager *)&v19 dealloc];
}

- (void)addObject:(id)object
{
  [(NSCondition *)self->_cond lock];
  if (![(OITSUNoCopyDictionary *)self->_objects objectForKey:object])
  {
    [(OITSUFlushingManager *)self advanceClock];
    operator new();
  }

  [(OITSUFlushingManager *)self _didUseObject:object];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
}

- (void)removeObject:(id)object
{
  [(NSCondition *)self->_cond lock];
  flushingObject = self->_flushingObject;
  if (flushingObject != object)
  {
    goto LABEL_6;
  }

  bgThread = self->_bgThread;
  if (bgThread == [MEMORY[0x277CCACC8] currentThread])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager removeObject:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 261, 0, "Flushing manager encountered a circular reference in removeObject:, returning");
    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_14;
  }

  while (1)
  {
    flushingObject = self->_flushingObject;
LABEL_6:
    if (flushingObject != object)
    {
      break;
    }

    [(NSCondition *)self->_cond wait];
  }

  if (objc_opt_respondsToSelector())
  {
    [object setFlushingManager:0];
  }

  v8 = [(OITSUFlushingManager *)self eraseInfoForObject:object];
  if (v8)
  {
    v9 = v8;
    p_objects = &self->_objects;
  }

  else
  {
    p_objects = &self->_inactiveObjects;
    v11 = [-[OITSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{object), "pointerValue"}];
    if (!v11)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  [*p_objects removeObjectForKey:object];
  MEMORY[0x25F897000](v9, 0x1080C40DCAC275BLL);
LABEL_14:
  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)doneWithObject:(id)object
{
  [(NSCondition *)self->_cond lock];
  v5 = [(OITSUFlushingManager *)self eraseInfoForObject:object];
  if (v5)
  {
    v5->var3 = 2;
    [(OITSUFlushingManager *)self insertObjectInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager doneWithObject:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 312, 0, "Object not under the flushing manager's control");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)unsafeToFlush:(id)flush
{
  [(NSCondition *)self->_cond lock];
  if (self->_flushingObject != flush)
  {
    if (![(OITSUNoCopyDictionary *)self->_inactiveObjects objectForKey:flush])
    {
      v10 = [(OITSUFlushingManager *)self eraseInfoForObject:flush];
      if (!v10)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager unsafeToFlush:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 347, 0, "Object not under the flushing manager's control");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v6 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v10 objCType:"^v"];
      [(OITSUNoCopyDictionary *)self->_inactiveObjects setObject:v6 forUncopiedKey:flush];

      [(OITSUNoCopyDictionary *)self->_objects removeObjectForKey:flush];
    }

    goto LABEL_12;
  }

  bgThread = self->_bgThread;
  if (bgThread != [MEMORY[0x277CCACC8] currentThread])
  {
    while (self->_flushingObject == flush)
    {
      [(NSCondition *)self->_cond wait];
    }

LABEL_12:
    [(NSCondition *)self->_cond unlock];
    return;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager unsafeToFlush:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 337, 0, "Flushing manager encountered a circular reference in unsafeToFlush:, returning");
  +[OITSUAssertionHandler logBacktraceThrottled];
  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)safeToFlush:(id)flush wasAccessed:(BOOL)accessed
{
  accessedCopy = accessed;
  [(NSCondition *)self->_cond lock];
  if ([(OITSUNoCopyDictionary *)self->_objects objectForKey:flush])
  {
    if (accessedCopy)
    {
LABEL_3:
      [(OITSUFlushingManager *)self _didUseObject:flush];
    }
  }

  else
  {
    v9 = [-[OITSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{flush), "pointerValue"}];
    if (!v9)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager safeToFlush:wasAccessed:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 373, 0, "Object not among the flushing manager's cached objects");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v8 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v9 objCType:"^v"];
    [(OITSUNoCopyDictionary *)self->_objects setObject:v8 forUncopiedKey:flush];

    [(OITSUNoCopyDictionary *)self->_inactiveObjects removeObjectForKey:flush];
    [(OITSUFlushingManager *)self insertObjectInfo:v9];
    if (accessedCopy)
    {
      goto LABEL_3;
    }
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)didReceiveMemoryWarning
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__OITSUFlushingManager_didReceiveMemoryWarning__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)_flushAllEligible
{
  [(NSCondition *)self->_isFlushingCond lock];
  if (!self->_isFlushing)
  {
    self->_isFlushing = 1;
    [(NSCondition *)self->_isFlushingCond unlock];
    [(OITSUFlushingManager *)self _bgTaskStarted];
    *&self->_stopFlushing = 256;
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__backgroundThread_ toTarget:self withObject:self];
    [(NSCondition *)self->_isFlushingCond lock];
    while (self->_isFlushing)
    {
      [(NSCondition *)self->_isFlushingCond wait];
    }

    self->_stopFlushingWhenQueueEmpty = 0;
  }

  isFlushingCond = self->_isFlushingCond;

  [(NSCondition *)isFlushingCond unlock];
}

- (void)_startFlushingObjects
{
  if (!self->_alwaysFlushing)
  {
    [(NSCondition *)self->_isFlushingCond lock];
    while (self->_isFlushing)
    {
      [(NSCondition *)self->_isFlushingCond wait];
    }

    self->_isFlushing = 1;
    [(NSCondition *)self->_isFlushingCond unlock];
    self->_stopFlushing = 0;
    v4 = MEMORY[0x277CCACC8];

    [v4 detachNewThreadSelector:sel__backgroundThread_ toTarget:self withObject:self];
  }
}

- (void)_stopFlushingObjects
{
  if (!self->_alwaysFlushing)
  {
    [(NSCondition *)self->_isFlushingCond lock];
    if (self->_isFlushing || (v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager _stopFlushingObjects]"], +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"), 469, 0, "-stopFlushingObjects called when not flushing."), +[OITSUAssertionHandler logBacktraceThrottled](OITSUAssertionHandler, "logBacktraceThrottled"), self->_isFlushing))
    {
      [(NSCondition *)self->_cond lock];
      self->_stopFlushing = 1;
      [(NSCondition *)self->_cond broadcast];
      [(NSCondition *)self->_cond unlock];
      while (self->_isFlushing)
      {
        [(NSCondition *)self->_isFlushingCond wait];
      }
    }

    isFlushingCond = self->_isFlushingCond;

    [(NSCondition *)isFlushingCond unlock];
  }
}

- (void)_backgroundThread:(id)thread
{
  self->_bgThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  [(OITSUFlushingManager *)self _bgThreadActive];
  [(NSCondition *)self->_cond lock];
  for (i = objc_autoreleasePoolPush(); !self->_stopFlushing; i = objc_autoreleasePoolPush())
  {
    while (1)
    {
      sortedObjects = self->_sortedObjects;
      if (sortedObjects[2])
      {
        break;
      }

      if (!self->_stopFlushingWhenQueueEmpty)
      {
        [(OITSUFlushingManager *)self advanceClock];
        [(OITSUFlushingManager *)self _bgThreadInactive];
        [(NSCondition *)self->_cond wait];
        [(OITSUFlushingManager *)self _bgThreadActive];
        if (!self->_stopFlushing)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v8 = *(*sortedObjects + 32);
    self->_flushingObject = v8->var0;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedObjects, &v8);
    if (v8)
    {
      MEMORY[0x25F897000](v8, 0x1080C40DCAC275BLL);
    }

    v8 = 0;
    [(OITSUNoCopyDictionary *)self->_objects removeObjectForKey:self->_flushingObject];
    [(NSCondition *)self->_cond unlock];
    [(TSUiOSMemoryWarningFlushable *)self->_flushingObject flush];
    if (objc_opt_respondsToSelector())
    {
      [(TSUiOSMemoryWarningFlushable *)self->_flushingObject setFlushingManager:0];
    }

    [(NSCondition *)self->_cond lock];
    self->_flushingObject = 0;
    [(NSCondition *)self->_cond broadcast];
    objc_autoreleasePoolPop(i);
  }

LABEL_2:
  objc_autoreleasePoolPop(i);
  [(OITSUFlushingManager *)self _bgThreadInactive];
  [(OITSUFlushingManager *)self _bgTaskFinished];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
  [(NSCondition *)self->_isFlushingCond lock];
  self->_isFlushing = 0;
  [(NSCondition *)self->_isFlushingCond signal];
  [(NSCondition *)self->_isFlushingCond unlock];
  objc_autoreleasePoolPop(v4);
  self->_bgThread = 0;
}

- (TSUFlushableObjectInfo)eraseInfoForObject:(id)object
{
  v4 = [-[OITSUNoCopyDictionary objectForKey:](self->_objects objectForKey:{object), "pointerValue"}];
  v6 = v4;
  if (v4)
  {
    if ([(OITSUFlushingManager *)self isNewObject:v4])
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedNewObjects, &v6);
    }

    else
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedObjects, &v6);
    }
  }

  return v6;
}

- (void)insertObjectInfo:(TSUFlushableObjectInfo *)info
{
  infoCopy = info;
  if (info)
  {
    if ([(OITSUFlushingManager *)self isNewObject:?])
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedNewObjects, &infoCopy);
    }

    else
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedObjects, &infoCopy);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager insertObjectInfo:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 598, 0, "Expecting info to be non-NULL");

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

- (void)transferNewObjects
{
  sortedNewObjects = self->_sortedNewObjects;
  v3 = *sortedNewObjects;
  if (*sortedNewObjects != sortedNewObjects + 1)
  {
    do
    {
      v6 = v3[4];
      if (!v6)
      {
        break;
      }

      if ([(OITSUFlushingManager *)self isNewObject:?])
      {
        break;
      }

      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedNewObjects, &v6);
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedObjects, &v6);
      v5 = self->_sortedNewObjects;
      v3 = *v5;
    }

    while (*v5 != v5 + 1);
  }
}

- (void)_didUseObject:(id)object
{
  [(OITSUFlushingManager *)self advanceClock];
  v5 = [(OITSUFlushingManager *)self eraseInfoForObject:object];
  if (v5)
  {
    var3 = v5->var3;
    v5->var4[1] = v5->var4[0];
    v5->var4[0] = self->_clock;
    if (var3 == 2)
    {
      v5->var3 = 1;
    }

    [(OITSUFlushingManager *)self insertObjectInfo:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager _didUseObject:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 639, 0, "Object not under the flushing manager's control");

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

- (void)_bgTaskStarted
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  if (self->_backgroundTransitionTaskId != *MEMORY[0x277D767B0])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager _bgTaskStarted]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 666, 0, "Should only be one bg task at a time");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__OITSUFlushingManager__bgTaskStarted__block_invoke;
  v5[3] = &unk_2799C60B0;
  v5[4] = self;
  self->_backgroundTransitionTaskId = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v5];
  objc_sync_exit(self);
}

- (void)_bgTaskFinished
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  v4 = *MEMORY[0x277D767B0];
  if (self->_backgroundTransitionTaskId != *MEMORY[0x277D767B0])
  {
    [mEMORY[0x277D75128] endBackgroundTask:?];
    self->_backgroundTransitionTaskId = v4;
  }

  objc_sync_exit(self);
}

- (void)_bgThreadActive
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  if (self->_activeBgThreadTask != *MEMORY[0x277D767B0])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFlushingManager _bgThreadActive]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFlushingManager.mm"], 695, 0, "Should only be one bg thread active at a time");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__OITSUFlushingManager__bgThreadActive__block_invoke;
  v5[3] = &unk_2799C60B0;
  v5[4] = self;
  self->_activeBgThreadTask = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v5];
  objc_sync_exit(self);
}

- (void)_bgThreadInactive
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  v4 = *MEMORY[0x277D767B0];
  if (self->_activeBgThreadTask != *MEMORY[0x277D767B0])
  {
    [mEMORY[0x277D75128] endBackgroundTask:?];
    self->_activeBgThreadTask = v4;
  }

  objc_sync_exit(self);
}

@end