@interface CRKOrderedOneToManyKVOAccumulator
- (BOOL)_integrateChange:(id)a3 toArray:(id)a4;
- (CRKOrderedOneToManyKVOAccumulator)initWithObject:(id)a3 keyPath:(id)a4;
- (CRKOrderedOneToManyKVOAccumulatorDelegate)delegate;
- (NSObject)observedObject;
- (id)_resultsToArriveAtArray:(id)a3;
- (unint64_t)_prestateIndexForImmediateIndex:(unint64_t)a3;
- (void)_drain;
- (void)_reset;
- (void)_validateArrayChangeToFinalCount:(int64_t)a3 accumulatedResults:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDelegate:(id)a3;
@end

@implementation CRKOrderedOneToManyKVOAccumulator

- (CRKOrderedOneToManyKVOAccumulator)initWithObject:(id)a3 keyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CRKOrderedOneToManyKVOAccumulator;
  v8 = [(CRKOrderedOneToManyKVOAccumulator *)&v20 init];
  if (v8)
  {
    v9 = objc_opt_new();
    mReplacementObjects = v8->mReplacementObjects;
    v8->mReplacementObjects = v9;

    v11 = objc_opt_new();
    mInsertedObjects = v8->mInsertedObjects;
    v8->mInsertedObjects = v11;

    v13 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    mIndexForDeletedObject = v8->mIndexForDeletedObject;
    v8->mIndexForDeletedObject = v13;

    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    mOriginalIndexOfMovedObject = v8->mOriginalIndexOfMovedObject;
    v8->mOriginalIndexOfMovedObject = v15;

    [v6 addObserver:v8 forKeyPath:v7 options:11 context:@"CRKOrderedOneToManyKVOAccumulatorObservationContext"];
    v17 = [v7 copy];
    observedKeyPath = v8->_observedKeyPath;
    v8->_observedKeyPath = v17;

    objc_storeWeak(&v8->_observedObject, v6);
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(CRKOrderedOneToManyKVOAccumulator *)self observedObject];
  v4 = [(CRKOrderedOneToManyKVOAccumulator *)self observedKeyPath];
  [v3 removeObserver:self forKeyPath:v4 context:@"CRKOrderedOneToManyKVOAccumulatorObservationContext"];

  v5.receiver = self;
  v5.super_class = CRKOrderedOneToManyKVOAccumulator;
  [(CRKOrderedOneToManyKVOAccumulator *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CRKOrderedOneToManyKVOAccumulator *)self _reset];
    v5 = obj;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a6 == @"CRKOrderedOneToManyKVOAccumulatorObservationContext")
  {
    v14 = [v12 valueForKey:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      [CRKOrderedOneToManyKVOAccumulator observeValueForKeyPath:v12 ofObject:v11 change:a2 context:self];
    }

    if ([(CRKOrderedOneToManyKVOAccumulator *)self _integrateChange:v13 toArray:v16])
    {
      self->mInitialArrayCount = [v16 count];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x277CBEB88];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __84__CRKOrderedOneToManyKVOAccumulator_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v18[3] = &unk_278DC1870;
      objc_copyWeak(&v19, &location);
      [v17 cat_performBlockOnMainRunLoop:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = CRKOrderedOneToManyKVOAccumulator;
    [(CRKOrderedOneToManyKVOAccumulator *)&v21 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
  }
}

void __84__CRKOrderedOneToManyKVOAccumulator_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _drain];
}

- (BOOL)_integrateChange:(id)a3 toArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA2F8]];

  v10 = [(CRKOrderedOneToManyKVOAccumulator *)self hasChanges];
  if (!self->mObservedShadow)
  {
    if (!v9)
    {
      [CRKOrderedOneToManyKVOAccumulator _integrateChange:a2 toArray:self];
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    mObservedShadow = self->mObservedShadow;
    self->mObservedShadow = v11;

    if ([v8 count])
    {
      v13 = 0;
      do
      {
        v14 = self->mObservedShadow;
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        [(NSMutableArray *)v14 addObject:v15];

        ++v13;
      }

      while (v13 < [v8 count]);
    }
  }

  if (!v9)
  {
    v16 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA2E8]];
    v17 = [v16 unsignedIntegerValue];

    v18 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA2E0]];
    v19 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v20 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v21 = v20;
    v34 = v10;
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __62__CRKOrderedOneToManyKVOAccumulator__integrateChange_toArray___block_invoke_20;
        v35[3] = &unk_278DC1898;
        v37 = self;
        v38 = &v43;
        v36 = v19;
        [v18 enumerateIndexesUsingBlock:v35];
        [(NSMutableArray *)self->mObservedShadow removeObjectsAtIndexes:v18];
        v22 = v36;
        goto LABEL_29;
      }

      if (v17 == 4)
      {
        [(CRKPointerSet *)self->mReplacementObjects addObjectsFromArray:v20];
LABEL_30:

        v10 = v34;
        goto LABEL_31;
      }
    }

    else
    {
      if (v17 == 1)
      {
        if ([v19 count])
        {
          v25 = 0;
          do
          {
            v26 = [v19 objectAtIndexedSubscript:v25];
            v27 = [(CRKOrderedOneToManyKVOAccumulator *)self _prestateIndexForImmediateIndex:v25];
            if (v27 != 0x7FFFFFFFFFFFFFFFLL)
            {
              mIndexForDeletedObject = self->mIndexForDeletedObject;
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
              [(NSMapTable *)mIndexForDeletedObject setObject:v29 forKey:v26];
            }

            [(CRKPointerSet *)self->mReplacementObjects removeObject:v26];

            ++v25;
          }

          while (v25 < [v19 count]);
        }

        [(NSMutableArray *)self->mObservedShadow removeAllObjects];
        if ([v21 count])
        {
          v30 = 0;
          do
          {
            v31 = [v21 objectAtIndexedSubscript:v30];
            v32 = [(NSMapTable *)self->mIndexForDeletedObject objectForKey:v31];
            if (v32)
            {
              [(NSMapTable *)self->mIndexForDeletedObject removeObjectForKey:v31];
              [(NSMapTable *)self->mOriginalIndexOfMovedObject setObject:v32 forKey:v31];
            }

            else
            {
              [(CRKPointerSet *)self->mInsertedObjects addObject:v31];
            }

            [(NSMutableArray *)self->mObservedShadow insertObject:&unk_285672670 atIndex:v30];

            ++v30;
          }

          while (v30 < [v21 count]);
        }

        goto LABEL_30;
      }

      if (v17 == 2)
      {
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __62__CRKOrderedOneToManyKVOAccumulator__integrateChange_toArray___block_invoke;
        v39[3] = &unk_278DC1898;
        v41 = self;
        v42 = &v43;
        v40 = v20;
        [v18 enumerateIndexesUsingBlock:v39];
        v22 = v40;
LABEL_29:

        _Block_object_dispose(&v43, 8);
        goto LABEL_30;
      }
    }

    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [v23 handleFailureInMethod:a2 object:self file:@"CRKOrderedOneToManyKVOAccumulator.m" lineNumber:212 description:{@"unexpected change kind: %@", v24}];

    goto LABEL_30;
  }

LABEL_31:

  return !v10;
}

void __62__CRKOrderedOneToManyKVOAccumulator__integrateChange_toArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
  v4 = [*(*(a1 + 40) + 24) objectForKey:?];
  v5 = *(a1 + 40);
  if (v4)
  {
    [*(v5 + 24) removeObjectForKey:v6];
    [*(*(a1 + 40) + 32) setObject:v4 forKey:v6];
  }

  else
  {
    [*(v5 + 8) addObject:v6];
  }

  [*(*(a1 + 40) + 40) insertObject:&unk_285672670 atIndex:a2];
  ++*(*(*(a1 + 48) + 8) + 24);
}

void __62__CRKOrderedOneToManyKVOAccumulator__integrateChange_toArray___block_invoke_20(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
  v4 = [*(a1 + 40) _prestateIndexForImmediateIndex:a2];
  v5 = *(a1 + 40);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(v5 + 8) removeObject:v9];
    v6 = [*(*(a1 + 40) + 32) objectForKey:v9];
    if (!v6)
    {
      goto LABEL_6;
    }

    [*(*(a1 + 40) + 32) removeObjectForKey:v9];
    v7 = *(*(a1 + 40) + 24);
  }

  else
  {
    v8 = *(v5 + 24);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v7 = v8;
  }

  [v7 setObject:v6 forKey:v9];
LABEL_6:

  [*(*(a1 + 40) + 16) removeObject:v9];
  ++*(*(*(a1 + 48) + 8) + 24);
}

- (void)_validateArrayChangeToFinalCount:(int64_t)a3 accumulatedResults:(id)a4
{
  v7 = a4;
  mInitialArrayCount = self->mInitialArrayCount;
  v20 = v7;
  v9 = [v7 netCountChange] + mInitialArrayCount;
  if (v9 != a3)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->mInitialArrayCount];
    v12 = MEMORY[0x277CCABB0];
    v13 = [v20 insertions];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v15 = MEMORY[0x277CCABB0];
    v16 = [v20 deletions];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v19 handleFailureInMethod:a2 object:self file:@"CRKOrderedOneToManyKVOAccumulator.m" lineNumber:220 description:{@"Expected final array to have %@ elements (%@ original elements + %@ insertions - %@ deletions), but it has %@ elements", v10, v11, v14, v17, v18}];
  }
}

- (void)_drain
{
  v3 = [(CRKOrderedOneToManyKVOAccumulator *)self delegate];
  if (v3)
  {
    v11 = v3;
    v4 = [(CRKOrderedOneToManyKVOAccumulator *)self observedObject];
    v5 = [(CRKOrderedOneToManyKVOAccumulator *)self observedKeyPath];
    v6 = [v4 valueForKeyPath:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [v8 count];
      if ([(CRKOrderedOneToManyKVOAccumulator *)self hasChanges])
      {
        v10 = [(CRKOrderedOneToManyKVOAccumulator *)self _resultsToArriveAtArray:v8];
        [(CRKOrderedOneToManyKVOAccumulator *)self _validateArrayChangeToFinalCount:v9 accumulatedResults:v10];
        if (([v10 isEmpty] & 1) == 0)
        {
          [v11 kvoAccumulator:self didCoelesceResults:v10];
        }

        [(CRKOrderedOneToManyKVOAccumulator *)self _reset];
      }

      else
      {
        [(CRKOrderedOneToManyKVOAccumulator *)self _validateArrayChangeToFinalCount:v9 accumulatedResults:0];
      }
    }

    v3 = v11;
  }
}

- (void)_reset
{
  [(CRKPointerSet *)self->mReplacementObjects removeAllObjects];
  [(CRKPointerSet *)self->mInsertedObjects removeAllObjects];
  [(NSMapTable *)self->mIndexForDeletedObject removeAllObjects];
  [(NSMapTable *)self->mOriginalIndexOfMovedObject removeAllObjects];
  mObservedShadow = self->mObservedShadow;
  self->mObservedShadow = 0;
}

- (id)_resultsToArriveAtArray:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(NSMapTable *)self->mIndexForDeletedObject objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addIndex:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "unsignedIntegerValue")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v20 = v5;
  [v5 setDeletions:v6];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v21 = objc_opt_new();
  if ([v4 count])
  {
    v14 = 0;
    do
    {
      v15 = [v4 objectAtIndexedSubscript:v14];
      if ([(CRKPointerSet *)self->mInsertedObjects containsObject:v15])
      {
        [v12 addIndex:v14];
      }

      if ([(CRKPointerSet *)self->mReplacementObjects containsObject:v15])
      {
        [v13 addIndex:v14];
      }

      v16 = [(NSMapTable *)self->mOriginalIndexOfMovedObject objectForKey:v15];
      if (v16)
      {
        v17 = objc_opt_new();
        [v17 setSourceIndex:{objc_msgSend(v16, "integerValue")}];
        [v17 setDestinationIndex:v14];
        v18 = [v17 sourceIndex];
        if (v18 != [v17 destinationIndex])
        {
          [v21 addObject:v17];
        }
      }

      ++v14;
    }

    while (v14 < [v4 count]);
  }

  [v20 setInsertions:v12];
  [v20 setReplacements:v13];
  [v20 setMoves:v21];

  return v20;
}

- (unint64_t)_prestateIndexForImmediateIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mObservedShadow count]<= a3)
  {
    [(CRKOrderedOneToManyKVOAccumulator *)a2 _prestateIndexForImmediateIndex:?];
  }

  v6 = [(NSMutableArray *)self->mObservedShadow objectAtIndexedSubscript:a3];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (CRKOrderedOneToManyKVOAccumulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSObject)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(uint64_t)a2 change:(uint64_t)a3 context:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [a1 valueForKey:a2];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v11 handleFailureInMethod:a3 object:a4 file:@"CRKOrderedOneToManyKVOAccumulator.m" lineNumber:96 description:{@"expected array, got %@", v10}];
}

- (void)_integrateChange:(uint64_t)a1 toArray:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKOrderedOneToManyKVOAccumulator.m" lineNumber:127 description:@"expected to initialize shadow with original array size; observer must include NSKeyValueObservingOptionPrior option"];
}

- (void)_prestateIndexForImmediateIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKOrderedOneToManyKVOAccumulator.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"number < mObservedShadow.count"}];
}

@end