@interface CUIKSingleDayTimelineLayout
- (BOOL)_inputIsInvalid;
- (BOOL)isRightToLeftLayout;
- (CGRect)_rectForStartSeconds:(int64_t)a3 endSeconds:(int64_t)a4;
- (CUIKSingleDayTimelineLayout)initWithOccurrences:(id)a3 startOfDay:(id)a4 endOfDay:(id)a5 geometryDelegate:(id)a6 screenUtilsDelegate:(id)a7 calendar:(id)a8;
- (double)_adjustedEndTimeForOccurrence:(id)a3;
- (double)_adjustedStartTimeForOccurrence:(id)a3;
- (double)_combinedWidthOfPartitions;
- (double)_effectiveEndTimeForOccurrence:(id)a3;
- (double)_endOfCollisionZoneForY:(double)a3 occurrence:(id)a4;
- (double)_topOfOccurrence:(id)a3;
- (id)groupOccurrences:(id)a3;
- (void)_calculateVerticalFrameAspectsForOccurrence:(id)a3;
- (void)_capVisibleTextForBucket:(id)a3;
- (void)_findCollidingOccurrences;
- (void)_generateNewPartitions;
- (void)_initializeFirstGridStripe;
- (void)_mergePartitions;
- (void)_popOccurrencesInPartition:(id)a3 endingBeforeTime:(double)a4;
- (void)_putCollidingOccurrencesIntoBucketsInResize:(BOOL)a3;
- (void)_reclaimSpaceFromStackedOccurrences;
- (void)_stampOccurrenceFrames;
- (void)applyLayoutToOccurrencesInResize:(BOOL)a3;
@end

@implementation CUIKSingleDayTimelineLayout

- (void)_findCollidingOccurrences
{
  v22 = self->_currentOccurrence;
  [(NSMutableArray *)self->_collidingOccurrences removeAllObjects];
  [(NSMutableArray *)self->_collidingOccurrences addObject:v22];
  [(CUIKSingleDayTimelineLayout *)self _adjustedStartTimeForOccurrence:v22];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  [WeakRetained pointForDate:v4];
  v7 = v6;

  [(CUIKSingleDayTimelineLayout *)self _endOfCollisionZoneForY:v22 occurrence:v7];
  v9 = v8;
  v10 = [(NSArray *)self->_occurrences count];
  if (self->_currentOccurrenceIndex + 1 < v10)
  {
    v11 = v10;
    v12 = 1;
    while (1)
    {
      v13 = [(NSArray *)self->_occurrences objectAtIndex:?];
      [(CUIKSingleDayTimelineLayout *)self _adjustedStartTimeForOccurrence:v13];
      v15 = v14;
      v16 = objc_loadWeakRetained(&self->_geometryDelegate);
      [v16 pointForDate:v15];
      v18 = v17;

      v19 = objc_loadWeakRetained(&self->_geometryDelegate);
      if ([v19 originIsUpperLeft])
      {
        if (v18 > v9)
        {
          break;
        }
      }

      v20 = objc_loadWeakRetained(&self->_geometryDelegate);
      v21 = [v20 originIsUpperLeft];

      if ((v21 & 1) == 0 && v18 < v9)
      {
        goto LABEL_10;
      }

      [(NSMutableArray *)self->_collidingOccurrences insertObject:v13 atIndex:[(NSMutableArray *)self->_collidingOccurrences indexOfObject:v13 inSortedRange:0 options:v12++ usingComparator:1280, &__block_literal_global_12_0]];
      ++self->_currentOccurrenceIndex;

      if (self->_currentOccurrenceIndex + 1 >= v11)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
  }

LABEL_11:
}

- (double)_combinedWidthOfPartitions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_partitions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) freeSpaceWidth];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)isRightToLeftLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_geometryDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_geometryDelegate);
  v8 = [v7 shouldReverseLayoutDirection];

  return v8;
}

- (void)_reclaimSpaceFromStackedOccurrences
{
  if ([(NSMutableArray *)self->_occurrenceBuckets count])
  {
    occurrenceBuckets = self->_occurrenceBuckets;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__CUIKSingleDayTimelineLayout__reclaimSpaceFromStackedOccurrences__block_invoke;
    v4[3] = &unk_1E83999B0;
    v4[4] = self;
    [(NSMutableArray *)occurrenceBuckets enumerateObjectsUsingBlock:v4];
  }
}

void __66__CUIKSingleDayTimelineLayout__reclaimSpaceFromStackedOccurrences__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 occurrences];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    [*(a1 + 32) _adjustedStartTimeForOccurrence:v4];
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [v9 correspondingPartition];
    [v7 _popOccurrencesInPartition:v8 endingBeforeTime:v6];
  }
}

- (void)_stampOccurrenceFrames
{
  if ([(NSMutableArray *)self->_occurrenceBuckets count]== 1)
  {
    v3 = [(NSMutableArray *)self->_occurrenceBuckets objectAtIndex:0];
    [v3 setIsOnlyBucket:1];
  }

  occurrenceBuckets = self->_occurrenceBuckets;

  [(NSMutableArray *)occurrenceBuckets enumerateObjectsUsingBlock:&__block_literal_global_10];
}

void __53__CUIKSingleDayTimelineLayout__generateNewPartitions__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = a2;
  [v39 stagedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  [CUIKSingleDayTimelineOccurrenceBucket roundRectToScreenScaleForRect:WeakRetained screenUtilsDelegate:v6, v8, v10, v12];
  [v39 setStagedFrame:?];

  [v39 stagedFrame];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinY = CGRectGetMinY(v41);
  v19 = objc_loadWeakRetained((*(a1 + 32) + 136));
  LOBYTE(WeakRetained) = [v19 originIsUpperLeft];

  if ((WeakRetained & 1) == 0)
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    MinY = CGRectGetMaxY(v42);
  }

  [*(a1 + 32) _endOfCollisionZoneForY:v39 occurrence:MinY];
  v21 = v20;
  v22 = objc_loadWeakRetained((*(a1 + 32) + 136));
  [v22 displayedRect];
  MidX = CGRectGetMidX(v43);

  v24 = objc_loadWeakRetained((*(a1 + 32) + 136));
  [v24 dateForPoint:{MidX, v21}];
  v26 = v25;

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  if (*(a1 + 64) == 1)
  {
    MinX = CGRectGetMinX(*&v27);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v27);
  }

  v32 = MinX;
  if (a3)
  {
    v33 = objc_alloc_init(CUIKSingleDayTimelineLayoutPartition);
    [(CUIKSingleDayTimelineLayoutPartition *)v33 setTopBoundaryTime:v26];
    v34 = x;
    v35 = y;
    v36 = width;
    v37 = height;
    if (*(a1 + 64) == 1)
    {
      MaxX = CGRectGetMaxX(*&v34);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v34);
    }

    [(CUIKSingleDayTimelineLayoutPartition *)v33 setInitialStartBoundary:MaxX];
    [(CUIKSingleDayTimelineLayoutPartition *)v33 setEndBoundary:v32];
    [(CUIKSingleDayTimelineLayoutPartition *)v33 pushOccurrence:v39];
    [*(*(a1 + 32) + 40) insertObject:v33 atIndex:*(*(*(a1 + 48) + 8) + 24) + a3 + *(a1 + 56)];
  }

  else
  {
    [*(a1 + 32) _adjustedStartTimeForOccurrence:v39];
    [*(a1 + 32) _popOccurrencesInPartition:*(a1 + 40) endingBeforeTime:?];
    [*(a1 + 40) setTopBoundaryTime:v26];
    [*(a1 + 40) setEndBoundary:v32];
    [*(a1 + 40) pushOccurrence:v39];
  }
}

- (void)_mergePartitions
{
  [(CUIKSingleDayTimelineLayout *)self _adjustedStartTimeForOccurrence:self->_currentOccurrence];
  v4 = v3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__2;
  v7[4] = __Block_byref_object_dispose__2;
  v8 = 0;
  v5 = [(NSMutableArray *)self->_partitions copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CUIKSingleDayTimelineLayout__mergePartitions__block_invoke;
  v6[3] = &unk_1E8399A28;
  v6[6] = v4;
  v6[4] = self;
  v6[5] = v7;
  [v5 enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(v7, 8);
}

void __47__CUIKSingleDayTimelineLayout__mergePartitions__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) _popOccurrencesInPartition:v10 endingBeforeTime:*(a1 + 48)];
  v4 = v10;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [v10 stackedOccurrences];
    if ([v5 count])
    {

      v4 = v10;
    }

    else
    {
      [*(*(*(a1 + 40) + 8) + 40) topBoundaryTime];
      v7 = v6;
      v8 = *(a1 + 48);

      v4 = v10;
      if (v7 <= v8)
      {
        [*(*(a1 + 32) + 40) removeObject:v10];
        [v10 endBoundary];
        [*(*(*(a1 + 40) + 8) + 40) setEndBoundary:?];
        goto LABEL_8;
      }
    }
  }

  [v4 topBoundaryTime];
  if (*(a1 + 48) > v9)
  {
    [v10 setTopBoundaryTime:?];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_8:
}

- (void)_generateNewPartitions
{
  v3 = [(NSMutableArray *)self->_occurrenceBuckets count];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  occurrenceBuckets = self->_occurrenceBuckets;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CUIKSingleDayTimelineLayout__generateNewPartitions__block_invoke;
  v5[3] = &unk_1E8399A00;
  v5[5] = v6;
  v5[6] = v3;
  v5[4] = self;
  [(NSMutableArray *)occurrenceBuckets enumerateObjectsUsingBlock:v5];
  _Block_object_dispose(v6, 8);
}

void __53__CUIKSingleDayTimelineLayout__generateNewPartitions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 occurrences];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    [*(a1 + 32) _capVisibleTextForBucket:v5];
    v9 = [*(a1 + 32) isRightToLeftLayout];
    v10 = [v5 correspondingPartition];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__CUIKSingleDayTimelineLayout__generateNewPartitions__block_invoke_2;
    v13[3] = &unk_1E83999D8;
    v17 = v9;
    v11 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    v16 = a3;
    v12 = v10;
    [v6 enumerateObjectsUsingBlock:v13];
    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24) - 1;
  }
}

- (CUIKSingleDayTimelineLayout)initWithOccurrences:(id)a3 startOfDay:(id)a4 endOfDay:(id)a5 geometryDelegate:(id)a6 screenUtilsDelegate:(id)a7 calendar:(id)a8
{
  v33 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = CUIKSingleDayTimelineLayout;
  v20 = [(CUIKSingleDayTimelineLayout *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_ungroupedOccurrences, a3);
    objc_storeStrong(&v21->_calendar, a8);
    objc_storeStrong(&v21->_startOfDay, a4);
    [v15 timeIntervalSinceReferenceDate];
    v21->_startOfDayAbsoluteTime = v22;
    objc_storeStrong(&v21->_endOfDay, a5);
    [v16 timeIntervalSinceReferenceDate];
    v21->_endOfDayAbsoluteTime = v23;
    [v17 displayedRect];
    v21->_frame.origin.x = v24;
    v21->_frame.origin.y = v25;
    v21->_frame.size.width = v26;
    v21->_frame.size.height = v27;
    objc_storeWeak(&v21->_geometryDelegate, v17);
    objc_storeWeak(&v21->_screenUtilsDelegate, v18);
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    occurrenceBuckets = v21->_occurrenceBuckets;
    v21->_occurrenceBuckets = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collidingOccurrences = v21->_collidingOccurrences;
    v21->_collidingOccurrences = v30;
  }

  return v21;
}

- (id)groupOccurrences:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v43 = self;
  v7 = self->_ungroupedOccurrences;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([v4 itemIsEligibleForGrouping:v12])
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v9);
  }

  [v5 sortUsingComparator:&__block_literal_global_3];
  WeakRetained = objc_loadWeakRetained(&v43->_geometryDelegate);
  v15 = [WeakRetained originIsUpperLeft];

  if ([v5 count])
  {
    v16 = 0;
    do
    {
      v17 = [v5 objectAtIndexedSubscript:{v16, v42}];
      v18 = objc_loadWeakRetained(&v43->_geometryDelegate);
      v19 = [v17 start];
      [v19 timeIntervalSinceReferenceDate];
      [v18 pointForDate:?];
      v21 = v20;

      [v17 enoughHeightForOneLine];
      v23 = v22;
      v24 = v16 + 1;
      v42 = v16 + 1;
      if (v16 + 1 < [v5 count])
      {
        v25 = -v23;
        if (v15)
        {
          v25 = v23;
        }

        v26 = v21 + v25;
        while (1)
        {
          v27 = [v5 objectAtIndexedSubscript:{v24, v42}];
          v28 = objc_loadWeakRetained(&v43->_geometryDelegate);
          v29 = [v27 start];
          [v29 timeIntervalSinceReferenceDate];
          [v28 pointForDate:?];
          v31 = v30;

          if (v15 ? v31 > v26 : v31 < v26)
          {
            break;
          }

          v33 = [v4 groupItem:v17 withItem:v27];
          v34 = v33;
          if (v33)
          {
            if (v33 != v17)
            {
              v35 = v33;

              [v5 setObject:v35 atIndexedSubscript:v16];
              v17 = v35;
            }

            [v5 removeObjectAtIndex:v24];
            [v17 enoughHeightForOneLine];
            if (!v15)
            {
              v36 = -v36;
            }

            v26 = v21 + v36;
            --v24;
          }

          ++v24;
          if (v24 >= [v5 count])
          {
            goto LABEL_30;
          }
        }
      }

LABEL_30:

      v16 = v42;
    }

    while (v42 < [v5 count]);
  }

  [v6 addObjectsFromArray:{v5, v42}];
  [v6 sortUsingComparator:&__block_literal_global_3];
  v37 = [v6 copy];
  occurrences = v43->_occurrences;
  v43->_occurrences = v37;

  v39 = v43->_occurrences;
  v40 = v39;

  return v39;
}

uint64_t __48__CUIKSingleDayTimelineLayout_groupOccurrences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if ([v5 hideTravelTime])
  {
    [v5 start];
  }

  else
  {
    [v5 startWithTravelTime];
  }
  v6 = ;

  if ([v4 hideTravelTime])
  {
    [v4 start];
  }

  else
  {
    [v4 startWithTravelTime];
  }
  v7 = ;
  v8 = [v6 compare:v7];

  return v8;
}

- (void)applyLayoutToOccurrencesInResize:(BOOL)a3
{
  p_occurrences = &self->_occurrences;
  if (!self->_occurrences)
  {
    objc_storeStrong(&self->_occurrences, self->_ungroupedOccurrences);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (*p_occurrences && [*p_occurrences count])
  {
    if ([(CUIKSingleDayTimelineLayout *)self _inputIsInvalid])
    {
      v7 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CUIKSingleDayTimelineLayout *)v7 applyLayoutToOccurrencesInResize:v8, v9, v10, v11, v12, v13, v14];
      }
    }

    else
    {
      [(CUIKSingleDayTimelineLayout *)self _initializeFirstGridStripe];
      v15 = [(NSArray *)self->_occurrences count];
      occurrences = self->_occurrences;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __64__CUIKSingleDayTimelineLayout_applyLayoutToOccurrencesInResize___block_invoke;
      v22[3] = &unk_1E8399988;
      v22[4] = self;
      [(NSArray *)occurrences enumerateObjectsUsingBlock:v22];
      if (self->_currentOccurrenceIndex < v15)
      {
        do
        {
          v17 = [(NSArray *)self->_occurrences objectAtIndex:?];
          currentOccurrence = self->_currentOccurrence;
          self->_currentOccurrence = v17;

          if (a3)
          {
            [(CUIKSingleDayTimelineLayout *)self _findCollidingOccurrences];
            [(CUIKSingleDayTimelineLayout *)self _putCollidingOccurrencesIntoBucketsInResize:1];
          }

          else
          {
            [(CUIKSingleDayTimelineLayout *)self _generateNewPartitions];
            [(CUIKSingleDayTimelineLayout *)self _mergePartitions];
            [(CUIKSingleDayTimelineLayout *)self _findCollidingOccurrences];
            [(CUIKSingleDayTimelineLayout *)self _putCollidingOccurrencesIntoBucketsInResize:0];
            [(CUIKSingleDayTimelineLayout *)self _reclaimSpaceFromStackedOccurrences];
          }

          [(CUIKSingleDayTimelineLayout *)self _stampOccurrenceFrames];
          currentOccurrenceIndex = self->_currentOccurrenceIndex + 1;
          self->_currentOccurrenceIndex = currentOccurrenceIndex;
          if (currentOccurrenceIndex == v15)
          {
            occurrenceBuckets = self->_occurrenceBuckets;
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __64__CUIKSingleDayTimelineLayout_applyLayoutToOccurrencesInResize___block_invoke_2;
            v21[3] = &unk_1E83999B0;
            v21[4] = self;
            [(NSMutableArray *)occurrenceBuckets enumerateObjectsUsingBlock:v21];
            currentOccurrenceIndex = self->_currentOccurrenceIndex;
          }
        }

        while (currentOccurrenceIndex < v15);
      }
    }
  }
}

- (void)_calculateVerticalFrameAspectsForOccurrence:(id)a3
{
  v55 = a3;
  v4 = [v55 startWithTravelTime];
  v5 = 0.0;
  v6 = 0.0;
  if ([v4 isAfterDate:self->_startOfDay])
  {
    v7 = [(NSCalendar *)self->_calendar components:224 fromDate:v4];
    v8 = [v7 second];
    v9 = v8 + 60 * [v7 minute];
    v6 = (v9 + 3600 * [v7 hour]);
  }

  v10 = [v55 start];
  if ([v10 isAfterDate:self->_startOfDay])
  {
    v11 = [(NSCalendar *)self->_calendar components:224 fromDate:v10];
    v12 = [v11 second];
    v13 = v12 + 60 * [v11 minute];
    v5 = (v13 + 3600 * [v11 hour]);
  }

  v14 = [v55 end];
  if ([v14 isBeforeDate:self->_endOfDay])
  {
    v15 = [(NSCalendar *)self->_calendar components:224 fromDate:v14];
    v16 = [v15 second];
    v17 = v16 + 60 * [v15 minute];
    v18 = (v17 + 3600 * [v15 hour]);

    v19 = v18;
  }

  else
  {
    v19 = 86400;
  }

  [(CUIKSingleDayTimelineLayout *)self _rectForStartSeconds:v6 endSeconds:v19];
  v53 = v21;
  v54 = v20;
  v51 = v22;
  v24 = v23;
  [(CUIKSingleDayTimelineLayout *)self _rectForStartSeconds:v5 endSeconds:v19];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v55 enoughHeightForOneLine];
  v34 = v33;
  v52 = v26;
  v57.origin.x = v26;
  v57.origin.y = v28;
  v57.size.width = v30;
  v57.size.height = v32;
  Height = CGRectGetHeight(v57);
  if (Height >= v34)
  {
    v34 = v32;
    v43 = v51;
  }

  else
  {
    v36 = Height;
    v37 = 0.0;
    if (v5 - v6 > 0.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
      [WeakRetained hourHeight];
      v37 = (v5 - v6) / 3600.0 * v39;
    }

    v24 = v34 + v37;
    v40 = objc_loadWeakRetained(&self->_geometryDelegate);
    v41 = [v40 originIsUpperLeft];

    v42 = v34 - v36;
    v43 = v51;
    v44 = v51 - v42;
    v45 = v28 - v42;
    if (!v41)
    {
      v43 = v44;
      v28 = v45;
    }
  }

  [v55 setTravelTimeHeight:v24 - v34];
  v46 = [v55 hideTravelTime];
  v48 = v53;
  v47 = v54;
  if (v46)
  {
    v47 = v52;
    v49 = v28;
  }

  else
  {
    v49 = v43;
  }

  if (v46)
  {
    v48 = v30;
    v50 = v34;
  }

  else
  {
    v50 = v24;
  }

  [v55 setStagedFrame:{v47, v49, v48, v50}];
}

- (void)_popOccurrencesInPartition:(id)a3 endingBeforeTime:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v10 = v6;
    v7 = [v6 peekOccurrence];
    v6 = v10;
    if (v7)
    {
      do
      {
        [(CUIKSingleDayTimelineLayout *)self _effectiveEndTimeForOccurrence:v7];
        if (v8 > a4)
        {
          break;
        }

        [v10 popOccurrence];
        v9 = [v10 peekOccurrence];

        v7 = v9;
      }

      while (v9);

      v6 = v10;
    }
  }
}

- (double)_topOfOccurrence:(id)a3
{
  [(CUIKSingleDayTimelineLayout *)self _adjustedStartTimeForOccurrence:a3];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  [WeakRetained pointForDate:v5];
  v8 = v7;

  return v8;
}

- (double)_endOfCollisionZoneForY:(double)a3 occurrence:(id)a4
{
  v6 = a4;
  [v6 viewMaxNaturalTextHeight];
  v8 = v7;
  [v6 stagedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  Height = CGRectGetHeight(v23);
  if (Height < v8)
  {
    v8 = Height;
  }

  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  v19 = [WeakRetained originIsUpperLeft];
  v20 = -1.0;
  if (v19)
  {
    v20 = 1.0;
  }

  v21 = a3 + v8 * v20;

  return v21;
}

- (void)_putCollidingOccurrencesIntoBucketsInResize:(BOOL)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_partitions count];
  v6 = [(NSMutableArray *)self->_collidingOccurrences count];
  [(NSMutableArray *)self->_occurrenceBuckets removeAllObjects];
  [(CUIKSingleDayTimelineLayout *)self _combinedWidthOfPartitions];
  v8 = v7;
  if ([(CUIKSingleDayTimelineLayout *)self isRightToLeftLayout])
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 - 1;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  partitions = self->_partitions;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__CUIKSingleDayTimelineLayout__putCollidingOccurrencesIntoBucketsInResize___block_invoke;
  v21[3] = &unk_1E8399A50;
  v23 = v35;
  v21[4] = self;
  v25 = v9;
  v26 = v6;
  v27 = v8;
  v28 = a3;
  v12 = v10;
  v22 = v12;
  v24 = &v29;
  [(NSMutableArray *)partitions enumerateObjectsWithOptions:0 usingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v36 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v30[5] addOccurrenceTemporarilyToEnd:{*(*(&v17 + 1) + 8 * v16), v17}];
        [v30[5] makeTemporaryChangesPermanent];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v36 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);
}

void __75__CUIKSingleDayTimelineLayout__putCollidingOccurrencesIntoBucketsInResize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 64) == a3)
  {
    v7 = [*(*(a1 + 32) + 56) subarrayWithRange:{*(*(*(a1 + 48) + 8) + 24), objc_msgSend(*(*(a1 + 32) + 56), "count") - *(*(*(a1 + 48) + 8) + 24)}];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v9 = *(a1 + 72);
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v8 = (v9 - v10);
    if (v9 != v10)
    {
      [v5 freeSpaceWidth];
      v12 = vcvtad_u64_f64(v11 / *(a1 + 80) * *(a1 + 72));
      if (v8 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      v14 = [*(*(a1 + 32) + 56) subarrayWithRange:{*(*(*(a1 + 48) + 8) + 24), v13}];
      v8 = [v14 mutableCopy];

      *(*(*(a1 + 48) + 8) + 24) += v13;
    }
  }

  [v6 topBoundaryTime];
  v16 = v15;
  if ((*(a1 + 88) & 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v8 mutableCopy];
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          [*(a1 + 32) _adjustedStartTimeForOccurrence:v22];
          if (v23 < v16)
          {
            [*(a1 + 40) addObject:v22];
            [v8 removeObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v19);
    }
  }

  v24 = [CUIKSingleDayTimelineOccurrenceBucket alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v26 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v27 = [(CUIKSingleDayTimelineOccurrenceBucket *)v24 initWithOccurrences:v8 correspondingPartition:v6 screenUtilsDelegate:WeakRetained geometryDelegate:v26];

  [*(*(a1 + 32) + 48) addObject:v27];
  v28 = *(*(a1 + 56) + 8);
  v31 = *(v28 + 40);
  v29 = (v28 + 40);
  v30 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  v32 = [v30 correspondingPartition];
  [v32 topBoundaryTime];
  v34 = v33;

  if (v16 < v34)
  {
    v29 = (*(*(a1 + 56) + 8) + 40);
LABEL_22:
    objc_storeStrong(v29, v27);
  }
}

- (void)_initializeFirstGridStripe
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  partitions = self->_partitions;
  self->_partitions = v3;

  v11 = objc_alloc_init(CUIKSingleDayTimelineLayoutPartition);
  MEMORY[0x1CCAA7F10](self->_startOfDay);
  [(CUIKSingleDayTimelineLayoutPartition *)v11 setTopBoundaryTime:?];
  v5 = [(CUIKSingleDayTimelineLayout *)self isRightToLeftLayout];
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  if (v5)
  {
    [(CUIKSingleDayTimelineLayoutPartition *)v11 setInitialStartBoundary:CGRectGetMaxX(*&x)];
    MinX = CGRectGetMinX(self->_frame);
  }

  else
  {
    [(CUIKSingleDayTimelineLayoutPartition *)v11 setInitialStartBoundary:CGRectGetMinX(*&x)];
    MinX = CGRectGetMaxX(self->_frame);
  }

  [(CUIKSingleDayTimelineLayoutPartition *)v11 setEndBoundary:MinX];
  [(NSMutableArray *)self->_partitions addObject:v11];
}

- (BOOL)_inputIsInvalid
{
  width = self->_frame.size.width;
  v4 = width <= 0.0;
  if (width <= 0.0)
  {
    v5 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CUIKSingleDayTimelineLayout *)v5 _inputIsInvalid:v6];
    }
  }

  [(NSDate *)self->_endOfDay timeIntervalSinceDate:self->_startOfDay];
  if (v13 < 0.0)
  {
    v14 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CUIKSingleDayTimelineLayout *)v14 _inputIsInvalid:v15];
    }

    return 1;
  }

  return v4;
}

- (void)_capVisibleTextForBucket:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = v4;
    v5 = [v4 earliestOccurrence];
    if (v5)
    {
      v6 = [v17 correspondingPartition];
      v7 = [v6 peekOccurrence];

      if (v7 && ([v7 visibleHeightLocked] & 1) == 0)
      {
        [(CUIKSingleDayTimelineLayout *)self _adjustedStartTimeForOccurrence:v5];
        v9 = v8;
        WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
        [WeakRetained pointForDate:v9];
        v12 = v11;

        [v7 stagedFrame];
        v14 = v12 - v13;
        v15 = objc_loadWeakRetained(&self->_geometryDelegate);
        LOBYTE(WeakRetained) = [v15 originIsUpperLeft];

        if ((WeakRetained & 1) == 0)
        {
          [v7 stagedFrame];
          v14 = v14 - v16;
        }

        [v7 setVisibleHeight:fabs(v14)];
      }
    }

    v4 = v17;
  }
}

- (double)_adjustedStartTimeForOccurrence:(id)a3
{
  v4 = a3;
  if ([v4 hideTravelTime])
  {
    [v4 start];
  }

  else
  {
    [v4 startWithTravelTime];
  }
  v5 = ;

  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  result = self->_startOfDayAbsoluteTime;
  if (result < v7)
  {
    return v7;
  }

  return result;
}

- (double)_adjustedEndTimeForOccurrence:(id)a3
{
  v4 = [a3 end];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  result = self->_endOfDayAbsoluteTime;
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

- (double)_effectiveEndTimeForOccurrence:(id)a3
{
  v4 = a3;
  [(CUIKSingleDayTimelineLayout *)self _adjustedEndTimeForOccurrence:v4];
  v6 = v5;
  [v4 stagedFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  MaxY = CGRectGetMaxY(v20);
  v16 = objc_loadWeakRetained(&self->_geometryDelegate);
  [v16 displayedRect];
  [v16 dateForPoint:{CGRectGetMidX(v21), MaxY}];
  v18 = v17;

  if (v18 <= v6)
  {
    return v6;
  }

  if (v18 - v6 < 90.0)
  {
    return v6;
  }

  return v18;
}

- (CGRect)_rectForStartSeconds:(int64_t)a3 endSeconds:(int64_t)a4
{
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = a4 - a3;
  v7 = (a4 + 100) % 3600;
  v8 = a4 - a3 - 1679;
  if (a3 / 86400.0 >= 0.0)
  {
    v9 = a3 / 86400.0;
  }

  else
  {
    v9 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);
  [WeakRetained hourHeight];
  v12 = v11;

  v13 = v12 * 24.0;
  v14 = objc_loadWeakRetained(&self->_geometryDelegate);
  [v14 topPadding];
  v16 = v15;

  v17 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
  [v17 RoundToScreenScale:v9 * v13];
  v19 = v16 + v18;

  v20 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
  [v20 RoundToScreenScale:v6 / 86400.0 * v13];
  v22 = v21;

  v23 = v22 + -0.5 + -0.5;
  if (v7 >= 200)
  {
    v23 = v22 + -0.5;
  }

  if (v8 < 0xF3)
  {
    v22 = v23;
  }

  v24 = objc_loadWeakRetained(&self->_screenUtilsDelegate);
  v25 = objc_loadWeakRetained(&self->_geometryDelegate);
  [v25 timeWidth];
  [v24 RoundToScreenScale:?];
  v27 = v26;

  v28 = objc_loadWeakRetained(&self->_geometryDelegate);
  LOBYTE(v25) = [v28 originIsUpperLeft];

  if ((v25 & 1) == 0)
  {
    v29 = objc_loadWeakRetained(&self->_geometryDelegate);
    [v29 displayedRect];
    v19 = v30 - v19 - v22;
  }

  v31 = v27;
  v32 = v19;
  v33 = v5;
  v34 = v22;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

@end