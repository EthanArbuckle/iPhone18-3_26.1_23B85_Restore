@interface HUScrollGestureRecognitionResolver
- (HUScrollGestureRecognitionResolver)init;
- (NSSet)conflictingGestureRecognizers;
- (id)_stateForConflictingGestureRecognizer:(id)recognizer;
- (void)_activeTimerDidFireForOtherGesture:(id)gesture;
- (void)_cancelConflictingGestures;
- (void)_clearSimultaenouslyRecognizedGestures;
- (void)_handleConflictingGesture:(id)gesture;
- (void)_handlePanGesture:(id)gesture;
- (void)_removeConflictingGestureState:(id)state;
- (void)addConflictingGestureRecognizer:(id)recognizer;
- (void)addPanGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)removeConflictingGestureRecognizer:(id)recognizer;
- (void)removePanGestureRecognizer:(id)recognizer;
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
  mutablePanGestureReocgnizers = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v4 = [mutablePanGestureReocgnizers copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HUScrollGestureRecognitionResolver_dealloc__block_invoke;
  v9[3] = &unk_277DBA7A8;
  v9[4] = self;
  [v4 na_each:v9];

  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v6 = [conflictingGestureStates copy];
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
  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v3 = [conflictingGestureStates na_map:&__block_literal_global_58];

  return v3;
}

- (void)addPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  mutablePanGestureReocgnizers = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v5 = [mutablePanGestureReocgnizers containsObject:recognizerCopy];

  if ((v5 & 1) == 0)
  {
    mutablePanGestureReocgnizers2 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [mutablePanGestureReocgnizers2 addObject:recognizerCopy];

    [recognizerCopy addTarget:self action:sel__handlePanGesture_];
  }
}

- (void)removePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  mutablePanGestureReocgnizers = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
  v5 = [mutablePanGestureReocgnizers containsObject:recognizerCopy];

  if (v5)
  {
    mutablePanGestureReocgnizers2 = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [mutablePanGestureReocgnizers2 removeObject:recognizerCopy];

    [recognizerCopy removeTarget:self action:sel__handlePanGesture_];
  }
}

- (void)addConflictingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:?];
  if (!v4)
  {
    v4 = [[_HUScrollGestureRecognitionState alloc] initWithGestureRecognizer:recognizerCopy];
    conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
    [conflictingGestureStates addObject:v4];

    [recognizerCopy addTarget:self action:sel__handleConflictingGesture_];
  }
}

- (void)removeConflictingGestureRecognizer:(id)recognizer
{
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:recognizer];
  if (v4)
  {
    v5 = v4;
    [(HUScrollGestureRecognitionResolver *)self _removeConflictingGestureState:v4];
    v4 = v5;
  }
}

- (void)_removeConflictingGestureState:(id)state
{
  stateCopy = state;
  activationTimer = [stateCopy activationTimer];
  [activationTimer cancel];

  gestureRecognizer = [stateCopy gestureRecognizer];
  [gestureRecognizer removeTarget:self action:sel__handleConflictingGesture_];

  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  [conflictingGestureStates removeObject:stateCopy];
}

- (id)_stateForConflictingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUScrollGestureRecognitionResolver__stateForConflictingGestureRecognizer___block_invoke;
  v9[3] = &unk_277DBA818;
  v10 = recognizerCopy;
  v6 = recognizerCopy;
  v7 = [conflictingGestureStates na_firstObjectPassingTest:v9];

  return v7;
}

BOOL __76__HUScrollGestureRecognitionResolver__stateForConflictingGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 gestureRecognizer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_handlePanGesture:(id)gesture
{
  state = [gesture state];
  if ((state - 3) >= 3)
  {
    if (state == 1)
    {

      [(HUScrollGestureRecognitionResolver *)self _cancelConflictingGestures];
    }
  }

  else
  {

    [(HUScrollGestureRecognitionResolver *)self _clearSimultaenouslyRecognizedGestures];
  }
}

- (void)_activeTimerDidFireForOtherGesture:(id)gesture
{
  v4 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:gesture];
  if (v4)
  {
    v6 = v4;
    [v4 setActivationTimer:0];
    mutablePanGestureReocgnizers = [(HUScrollGestureRecognitionResolver *)self mutablePanGestureReocgnizers];
    [mutablePanGestureReocgnizers na_each:&__block_literal_global_30];

    v4 = v6;
  }
}

void __73__HUScrollGestureRecognitionResolver__activeTimerDidFireForOtherGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEnabled:0];
  [v2 setEnabled:1];
}

- (void)_handleConflictingGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [(HUScrollGestureRecognitionResolver *)self _stateForConflictingGestureRecognizer:gestureCopy];
  if (!v5)
  {
    NSLog(&cfstr_UnexpectedEven.isa, gestureCopy);
  }

  state = [gestureCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 1)
    {
      activationTimer = [v5 activationTimer];
      [activationTimer cancel];

      objc_initWeak(&location, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      [(HUScrollGestureRecognitionResolver *)self conflictingGestureActivationDelay];
      v11 = v10;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__HUScrollGestureRecognitionResolver__handleConflictingGesture___block_invoke;
      v13[3] = &unk_277DBA860;
      objc_copyWeak(&v15, &location);
      v14 = gestureCopy;
      v12 = [mainThreadScheduler afterDelay:v13 performBlock:v11];
      [v5 setActivationTimer:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    activationTimer2 = [v5 activationTimer];
    [activationTimer2 cancel];

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
  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v4 = [conflictingGestureStates countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(conflictingGestureStates);
        }

        gestureRecognizer = [*(*(&v10 + 1) + 8 * v7) gestureRecognizer];
        isEnabled = [gestureRecognizer isEnabled];
        [gestureRecognizer setEnabled:0];
        [gestureRecognizer setEnabled:isEnabled];

        ++v7;
      }

      while (v5 != v7);
      v5 = [conflictingGestureStates countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  conflictingGestureStates = [(HUScrollGestureRecognitionResolver *)self conflictingGestureStates];
  v3 = [conflictingGestureStates countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(conflictingGestureStates);
        }

        activationTimer = [*(*(&v8 + 1) + 8 * v6) activationTimer];
        [activationTimer cancel];

        ++v6;
      }

      while (v4 != v6);
      v4 = [conflictingGestureStates countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end