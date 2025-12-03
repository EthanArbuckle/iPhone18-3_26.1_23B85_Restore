@interface GKObserverTrampoline
- (id)initObservingObject:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block;
- (void)cancelObservation;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GKObserverTrampoline

- (id)initObservingObject:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block
{
  objectCopy = object;
  pathCopy = path;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = GKObserverTrampoline;
  v14 = [(GKObserverTrampoline *)&v21 init];
  if (v14)
  {
    v15 = [blockCopy copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v17;

    v14->_options = options;
    objc_storeStrong(&v14->_observee, object);
    v19 = v14;
  }

  return v14;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"GKObserverTrampolineContext" && !self->_cancellationPredicate)
  {
    block = self->_block;
    token = [(GKObserverTrampoline *)self token];
    block[2](block, objectCopy, changeCopy, token);
  }
}

- (void)cancelObservation
{
  if (GKAtomicCompareAndSwap32(0, 1u, &self->_cancellationPredicate))
  {
    if ((self->_options & 4) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__GKObserverTrampoline_cancelObservation__block_invoke;
      block[3] = &unk_2785DD760;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      [self->_observee removeObserver:self forKeyPath:self->_keyPath];
      observee = self->_observee;
      self->_observee = 0;
    }
  }
}

void __41__GKObserverTrampoline_cancelObservation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)dealloc
{
  [(GKObserverTrampoline *)self cancelObservation];
  v3.receiver = self;
  v3.super_class = GKObserverTrampoline;
  [(GKObserverTrampoline *)&v3 dealloc];
}

@end