@interface GKObserverTrampoline
- (id)initObservingObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 block:(id)a6;
- (void)cancelObservation;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GKObserverTrampoline

- (id)initObservingObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = GKObserverTrampoline;
  v14 = [(GKObserverTrampoline *)&v21 init];
  if (v14)
  {
    v15 = [v13 copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = [v12 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v17;

    v14->_options = a5;
    objc_storeStrong(&v14->_observee, a3);
    v19 = v14;
  }

  return v14;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  if (a6 == @"GKObserverTrampolineContext" && !self->_cancellationPredicate)
  {
    block = self->_block;
    v13 = [(GKObserverTrampoline *)self token];
    block[2](block, v10, v11, v13);
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