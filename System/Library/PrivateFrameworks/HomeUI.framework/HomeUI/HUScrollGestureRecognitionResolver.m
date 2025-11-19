@interface HUScrollGestureRecognitionResolver
- (HUScrollGestureRecognitionResolver)init;
- (NSSet)conflictingGestureRecognizers;
- (id)_stateForConflictingGestureRecognizer:(id)a3;
- (void)_activeTimerDidFireForOtherGesture:(id)a3;
- (void)_cancelConflictingGestures;
- (void)_clearSimultaenouslyRecognizedGestures;
- (void)_handleConflictingGesture:(id)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_removeConflictingGestureState:(id)a3;
- (void)addConflictingGestureRecognizer:(id)a3;
- (void)addPanGestureRecognizer:(id)a3;
- (void)dealloc;
- (void)removeConflictingGestureRecognizer:(id)a3;
- (void)removePanGestureRecognizer:(id)a3;
@end

@implementation HUScrollGestureRecognitionResolver

- (HUScrollGestureRecognitionResolver)init
{
  v8.receiver = self;
  v8.super_class = HUScrollGestureRecognitionResolver;
  v2 = [(HUScrollGestureRecognitionResolver *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    mutablePanGestureReocgnizers = v2->_mutablePanGestureReocgnizers;
    v2->_mutablePanGestureReocgnizers = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    conflictingGestureStates = v2->_conflictingGestureStates;
    v2->_conflictingGestureStates = v5;

    v2->_conflictingGestureActivationDelay = 0.15;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v4 = [v3 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HUScrollGestureRecognitionResolver_dealloc__block_invoke;
  v9[3] = &unk_277DBA7A8;
  v9[4] = self;
  [v4 na_each:v9];

  v5 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v6 = [v5 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HUScrollGestureRecognitionResolver_dealloc__block_invoke_2;
  v8[3] = &unk_277DBA7D0;
  v8[4] = self;
  [v6 na_each:v8];

  v7.receiver = self;
  v7.super_class = HUScrollGestureRecognitionResolver;
  [(HUScrollGestureRecognitionResolver *)&v7 dealloc];
}

- (NSSet)conflictingGestureRecognizers
{
  v2 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v3 = [v2 na_map:&__block_literal_global_58];

  return v3;
}

- (void)addPanGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [v6 addObject:v7];

    [v7 addTarget:self action:sel__handlePanGesture_];
  }
}

- (void)removePanGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [v6 removeObject:v7];

    [v7 removeTarget:self action:sel__handlePanGesture_];
  }
}

- (void)addConflictingGestureRecognizer:(id)a3
{
  v6 = a3;
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:?];
  if (!v4)
  {
    v4 = [[_HUScrollGestureRecognitionState alloc] initWithGestureRecognizer:v6];
    v5 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
    [v5 addObject:v4];

    [v6 addTarget:self action:sel__handleConflictingGesture_];
  }
}

- (void)removeConflictingGestureRecognizer:(id)a3
{
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:a3];
  if (v4)
  {
    v5 = v4;
    [(HUScrollGestureRecognitionResolver *)self _removeConflictingGestureState:v4];
    v4 = v5;
  }
}

- (void)_removeConflictingGestureState:(id)a3
{
  v4 = a3;
  v5 = [v4 activationTimer];
  [v5 cancel];

  v6 = [v4 gestureRecognizer];
  [v6 removeTarget:self action:sel__handleConflictingGesture_];

  v7 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  [v7 removeObject:v4];
}

- (id)_stateForConflictingGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUScrollGestureRecognitionResolver__stateForConflictingGestureRecognizer___block_invoke;
  v9[3] = &unk_277DBA818;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

BOOL __76__HUScrollGestureRecognitionResolver__stateForConflictingGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 gestureRecognizer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_handlePanGesture:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 1)
    {

      [(HUScrollGestureRecognitionResolver *)self _cancelConflictingGestures];
    }
  }

  else
  {

    [(HUScrollGestureRecognitionResolver *)self _clearSimultaenouslyRecognizedGestures];
  }
}

- (void)_activeTimerDidFireForOtherGesture:(id)a3
{
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:a3];
  if (v4)
  {
    v6 = v4;
    [v4 setActivationTimer:0];
    v5 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [v5 na_each:&__block_literal_global_30];

    v4 = v6;
  }
}

void __73__HUScrollGestureRecognitionResolver__activeTimerDidFireForOtherGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEnabled:0];
  [v2 setEnabled:1];
}

- (void)_handleConflictingGesture:(id)a3
{
  v4 = a3;
  v5 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:v4];
  if (!v5)
  {
    NSLog(&cfstr_UnexpectedEven.isa, v4);
  }

  v6 = [v4 state];
  if ((v6 - 3) >= 3)
  {
    if (v6 == 1)
    {
      v8 = [v5 activationTimer];
      [v8 cancel];

      objc_initWeak(&location, self);
      v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
      [(HUScrollGestureRecognitionResolver *)self conflictingGestureActivationDelay];
      v11 = v10;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__HUScrollGestureRecognitionResolver__handleConflictingGesture___block_invoke;
      v13[3] = &unk_277DBA860;
      objc_copyWeak(&v15, &location);
      v14 = v4;
      v12 = [v9 afterDelay:v13 performBlock:v11];
      [v5 setActivationTimer:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v7 = [v5 activationTimer];
    [v7 cancel];

    [v5 setActivationTimer:0];
  }
}

void __64__HUScrollGestureRecognitionResolver__handleConflictingGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activeTimerDidFireForOtherGesture:*(a1 + 32)];
}

- (void)_cancelConflictingGestures
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) gestureRecognizer];
        v9 = [v8 isEnabled];
        [v8 setEnabled:0];
        [v8 setEnabled:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(HUScrollGestureRecognitionResolver *)self _clearSimultaenouslyRecognizedGestures];
}

- (void)_clearSimultaenouslyRecognizedGestures
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) activationTimer];
        [v7 cancel];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end