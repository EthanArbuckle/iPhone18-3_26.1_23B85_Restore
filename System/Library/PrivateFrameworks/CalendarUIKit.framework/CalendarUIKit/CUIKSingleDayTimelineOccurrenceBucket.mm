@interface CUIKSingleDayTimelineOccurrenceBucket
+ (CGRect)roundRectToScreenScaleForRect:(CGRect)rect screenUtilsDelegate:(id)delegate;
- (CUIKSingleDayTimelineGeometryDelegate)geometryDelegate;
- (CUIKSingleDayTimelineOccurrenceBucket)initWithOccurrences:(id)occurrences correspondingPartition:(id)partition screenUtilsDelegate:(id)delegate geometryDelegate:(id)geometryDelegate;
- (NSArray)occurrences;
- (id)_occurrencesForFitnessLevel;
- (id)earliestOccurrence;
- (void)addOccurrenceTemporarilyToBeginning:(id)beginning;
- (void)addOccurrenceTemporarilyToEnd:(id)end;
- (void)makeTemporaryChangesPermanent;
- (void)revertTemporaryChanges;
- (void)stampFramesOntoOccurrences;
@end

@implementation CUIKSingleDayTimelineOccurrenceBucket

- (NSArray)occurrences
{
  v2 = [(NSMutableArray *)self->_currentOccurrences copy];

  return v2;
}

- (void)stampFramesOntoOccurrences
{
  correspondingPartition = [(CUIKSingleDayTimelineOccurrenceBucket *)self correspondingPartition];
  [correspondingPartition freeSpaceWidth];
  v5 = v4;
  _occurrencesForFitnessLevel = [(CUIKSingleDayTimelineOccurrenceBucket *)self _occurrencesForFitnessLevel];
  v7 = [_occurrencesForFitnessLevel count];
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_geometryDelegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_geometryDelegate);
      LOBYTE(WeakRetained) = [v11 shouldReverseLayoutDirection];
    }

    else
    {
      LOBYTE(WeakRetained) = 0;
    }
  }

  v12 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
  [v12 RoundToScreenScale:v5 / v7];
  v14 = v13;

  [correspondingPartition freeSpaceStartBoundary];
  v16 = v15;
  isOnlyBucket = [(CUIKSingleDayTimelineOccurrenceBucket *)self isOnlyBucket];
  isOnlyBucket2 = [(CUIKSingleDayTimelineOccurrenceBucket *)self isOnlyBucket];
  if (WeakRetained)
  {
    if (isOnlyBucket2)
    {
      v19 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
      [correspondingPartition initialStartBoundary];
      v21 = v20;
      [correspondingPartition totalWidth];
      v23 = -0.5;
LABEL_10:
      [v19 RoundToScreenScale:v21 + v22 * v23];
      v5 = v25;
    }
  }

  else
  {
    v5 = 0.0;
    if (isOnlyBucket2)
    {
      v19 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
      [correspondingPartition initialStartBoundary];
      v21 = v24;
      [correspondingPartition totalWidth];
      v23 = 0.5;
      goto LABEL_10;
    }
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__6;
  v39[4] = __Block_byref_object_dispose__6;
  v40 = 0;
  currentOccurrences = self->_currentOccurrences;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__CUIKSingleDayTimelineOccurrenceBucket_stampFramesOntoOccurrences__block_invoke;
  v28[3] = &unk_1E839A698;
  v31 = v39;
  v32 = v16;
  v37 = isOnlyBucket;
  v33 = v7;
  v34 = v5;
  v35 = v7 - 1;
  v27 = correspondingPartition;
  v29 = v27;
  selfCopy = self;
  v36 = v14;
  v38 = WeakRetained & 1;
  [(NSMutableArray *)currentOccurrences enumerateObjectsUsingBlock:v28];

  _Block_object_dispose(v39, 8);
}

- (id)_occurrencesForFitnessLevel
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_temporaryOccurrenceAtBeginning)
  {
    [v3 addObject:?];
  }

  v5 = [(NSMutableArray *)self->_currentOccurrences count];
  v6 = v5 - 1;
  currentOccurrences = self->_currentOccurrences;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CUIKSingleDayTimelineOccurrenceBucket__occurrencesForFitnessLevel__block_invoke;
  v12[3] = &unk_1E839A648;
  if (!v5)
  {
    v6 = 0;
  }

  v12[4] = self;
  v14 = v6;
  v8 = v4;
  v13 = v8;
  [(NSMutableArray *)currentOccurrences enumerateObjectsUsingBlock:v12];
  if (self->_temporaryOccurrenceAtEnd)
  {
    [v8 addObject:?];
  }

  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __68__CUIKSingleDayTimelineOccurrenceBucket__occurrencesForFitnessLevel__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if ((a3 || (*(v7 + 64) & 1) == 0) && (*(v7 + 65) != 1 || *(a1 + 48) != a3))
  {
    v9 = v5;
    v5 = [*(a1 + 40) addObject:v5];
    v6 = v9;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __67__CUIKSingleDayTimelineOccurrenceBucket_stampFramesOntoOccurrences__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  [v30 stagedFrame];
  v6 = v5;
  v8 = v7;
  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (v9)
  {
    [v9 floatValue];
    v11 = v10;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *(a1 + 56);
    if (a3)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + 96) == 1 && *(a1 + 64) == 2)
  {
    v12 = *(a1 + 72);
    goto LABEL_10;
  }

LABEL_8:
  if (*(a1 + 80) == a3)
  {
    [*(a1 + 32) endBoundary];
LABEL_10:
    v13 = v12 - v11;
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained RoundToScreenScale:*(a1 + 88)];
  v14 = v16;

LABEL_14:
  v17 = *(a1 + 97);
  v18 = objc_loadWeakRetained((*(a1 + 40) + 24));
  v19 = v18;
  if (v17 == 1)
  {
    [v18 RoundToScreenScale:v11 - v14];
    v21 = v20;

    v22 = MEMORY[0x1E696AD98];
    v32.origin.x = v21;
    v32.origin.y = v6;
    v32.size.width = v14;
    v32.size.height = v8;
    MinX = CGRectGetMinX(v32);
  }

  else
  {
    [v18 RoundToScreenScale:v11];
    v21 = v24;

    v22 = MEMORY[0x1E696AD98];
    v33.origin.x = v21;
    v33.origin.y = v6;
    v33.size.width = v14;
    v33.size.height = v8;
    MinX = CGRectGetMaxX(v33);
  }

  v25 = [v22 numberWithDouble:MinX];
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = objc_opt_class();
  v29 = objc_loadWeakRetained((*(a1 + 40) + 24));
  [v28 roundRectToScreenScaleForRect:v29 screenUtilsDelegate:{v21, v6, v14, v8}];
  [v30 setStagedFrame:?];

  [v30 stagedFrame];
  [v30 setUnPinnedViewFrame:?];
}

- (id)earliestOccurrence
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  _occurrencesForFitnessLevel = [(CUIKSingleDayTimelineOccurrenceBucket *)self _occurrencesForFitnessLevel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CUIKSingleDayTimelineOccurrenceBucket_earliestOccurrence__block_invoke;
  v5[3] = &unk_1E839A670;
  v5[4] = &v6;
  [_occurrencesForFitnessLevel enumerateObjectsUsingBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__CUIKSingleDayTimelineOccurrenceBucket_earliestOccurrence__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  v11 = v4;
  if (v7)
  {
    v8 = [v4 start];
    v9 = [*(*(*(a1 + 32) + 8) + 40) start];
    v10 = [v8 compare:v9];

    if (v10 != -1)
    {
      goto LABEL_5;
    }

    v6 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v6, a2);
LABEL_5:
}

+ (CGRect)roundRectToScreenScaleForRect:(CGRect)rect screenUtilsDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  [delegateCopy RoundToScreenScale:x];
  v10 = v9;
  [delegateCopy RoundToScreenScale:y];
  v12 = v11;
  [delegateCopy RoundToScreenScale:width];
  v14 = v13;
  [delegateCopy RoundToScreenScale:height];
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CUIKSingleDayTimelineOccurrenceBucket)initWithOccurrences:(id)occurrences correspondingPartition:(id)partition screenUtilsDelegate:(id)delegate geometryDelegate:(id)geometryDelegate
{
  occurrencesCopy = occurrences;
  partitionCopy = partition;
  delegateCopy = delegate;
  geometryDelegateCopy = geometryDelegate;
  v18.receiver = self;
  v18.super_class = CUIKSingleDayTimelineOccurrenceBucket;
  v14 = [(CUIKSingleDayTimelineOccurrenceBucket *)&v18 init];
  if (v14)
  {
    v15 = [occurrencesCopy mutableCopy];
    currentOccurrences = v14->_currentOccurrences;
    v14->_currentOccurrences = v15;

    objc_storeStrong(&v14->_correspondingPartition, partition);
    v14->_temporaryFitnessLevelRequiresCalculation = 1;
    v14->_originalFitnessLevelRequiresCalculation = 1;
    objc_storeWeak(&v14->_screenUtilsDelegate, delegateCopy);
    objc_storeWeak(&v14->_geometryDelegate, geometryDelegateCopy);
  }

  return v14;
}

- (void)addOccurrenceTemporarilyToBeginning:(id)beginning
{
  beginningCopy = beginning;
  p_temporaryOccurrenceAtBeginning = &self->_temporaryOccurrenceAtBeginning;
  if (!self->_temporaryOccurrenceAtBeginning)
  {
    *&self->_useTemporaryFitnessLevel = 257;
    v7 = beginningCopy;
    objc_storeStrong(p_temporaryOccurrenceAtBeginning, beginning);
    beginningCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_temporaryOccurrenceAtBeginning, beginningCopy);
}

- (void)addOccurrenceTemporarilyToEnd:(id)end
{
  endCopy = end;
  if (!self->_temporaryOccurrenceAtBeginning)
  {
    *&self->_useTemporaryFitnessLevel = 257;
    v6 = endCopy;
    objc_storeStrong(&self->_temporaryOccurrenceAtEnd, end);
    endCopy = v6;
  }
}

- (void)revertTemporaryChanges
{
  self->_useTemporaryFitnessLevel = 0;
  temporaryOccurrenceAtBeginning = self->_temporaryOccurrenceAtBeginning;
  self->_temporaryOccurrenceAtBeginning = 0;

  temporaryOccurrenceAtEnd = self->_temporaryOccurrenceAtEnd;
  self->_temporaryOccurrenceAtEnd = 0;

  *&self->_ignoreFirstOccurrenceInFitnessCalculations = 0;
}

- (void)makeTemporaryChangesPermanent
{
  self->_useTemporaryFitnessLevel = 0;
  temporaryOccurrenceAtBeginning = self->_temporaryOccurrenceAtBeginning;
  if (temporaryOccurrenceAtBeginning)
  {
    [(NSMutableArray *)self->_currentOccurrences insertObject:temporaryOccurrenceAtBeginning atIndex:0];
    v4 = self->_temporaryOccurrenceAtBeginning;
    self->_temporaryOccurrenceAtBeginning = 0;
  }

  if (self->_temporaryOccurrenceAtEnd)
  {
    [(NSMutableArray *)self->_currentOccurrences addObject:?];
    temporaryOccurrenceAtEnd = self->_temporaryOccurrenceAtEnd;
    self->_temporaryOccurrenceAtEnd = 0;
  }

  if (self->_ignoreFirstOccurrenceInFitnessCalculations)
  {
    if ([(NSMutableArray *)self->_currentOccurrences count])
    {
      [(NSMutableArray *)self->_currentOccurrences removeObjectAtIndex:0];
    }

    self->_ignoreFirstOccurrenceInFitnessCalculations = 0;
  }

  if (self->_ignoreLastOccurrenceInFitnessCalculations)
  {
    if ([(NSMutableArray *)self->_currentOccurrences count])
    {
      [(NSMutableArray *)self->_currentOccurrences removeLastObject];
    }

    self->_ignoreLastOccurrenceInFitnessCalculations = 0;
  }
}

- (CUIKSingleDayTimelineGeometryDelegate)geometryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);

  return WeakRetained;
}

@end