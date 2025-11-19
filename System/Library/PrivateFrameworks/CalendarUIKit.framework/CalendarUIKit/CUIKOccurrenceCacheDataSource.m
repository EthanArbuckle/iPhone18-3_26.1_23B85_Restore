@interface CUIKOccurrenceCacheDataSource
- (BOOL)cachedOccurrencesAreLoaded;
- (CUIKOccurrenceCacheDataSource)initWithEventStore:(id)a3 calendars:(id)a4;
- (id)_cachedDays;
- (id)_cachedOccurrenceAtIndexPath:(id)a3;
- (id)_createCachedDays;
- (id)_mutableDayDictionaryAtIndex:(unint64_t)a3;
- (id)cachedOccurrenceAtIndexPath:(id)a3;
- (id)dateAtDayIndex:(int64_t)a3;
- (id)faultOccurrencesForDay:(id)a3 inOccurrencesArray:(id)a4 index:(int64_t)a5 limit:(int64_t *)a6 cacheSeed:(int)a7;
- (id)indexPathsForOccurrence:(id)a3;
- (int64_t)cachedDayCount;
- (int64_t)countOfOccurrencesAtDayIndex:(int64_t)a3;
- (int64_t)sectionForCachedOccurrencesOnDate:(id)a3;
- (void)_fetchDaysStartingFromSection:(int64_t)a3 sectionsToLoadInBothDirections:(int64_t)a4 background:(BOOL)a5 includeGivenSection:(BOOL)a6;
- (void)invalidateCachedOccurrences;
- (void)setCachedDays:(id)a3;
@end

@implementation CUIKOccurrenceCacheDataSource

- (void)invalidateCachedOccurrences
{
  os_unfair_lock_lock(&self->_dataLock);
  cachedDays = self->_cachedDays;
  self->_cachedDays = 0;

  ++self->_cachedDaysSeed;

  os_unfair_lock_unlock(&self->_dataLock);
}

- (BOOL)cachedOccurrencesAreLoaded
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = self->_cachedDays != 0;
  os_unfair_lock_unlock(&self->_dataLock);
  return v3;
}

- (int64_t)cachedDayCount
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_dataLock);
  return v4;
}

- (id)_cachedDays
{
  os_unfair_lock_assert_owner(&self->_dataLock);
  os_unfair_lock_assert_not_owner(&self->_fetchLock);
  p_cachedDays = &self->_cachedDays;
  cachedDays = self->_cachedDays;
  if (!cachedDays)
  {
    os_unfair_lock_unlock(&self->_dataLock);
    os_unfair_lock_lock(&self->_fetchLock);
    os_unfair_lock_lock(&self->_dataLock);
    if (!*p_cachedDays)
    {
      os_unfair_lock_unlock(&self->_dataLock);
      v5 = [(CUIKOccurrenceCacheDataSource *)self _createCachedDays];
      os_unfair_lock_lock(&self->_dataLock);
      if (!self->_cachedDays)
      {
        objc_storeStrong(&self->_cachedDays, v5);
      }
    }

    os_unfair_lock_unlock(&self->_fetchLock);
    cachedDays = *p_cachedDays;
  }

  return cachedDays;
}

- (id)_createCachedDays
{
  v2 = [(EKEventStore *)self->_eventStore occurrenceCacheGetOccurrenceCountsForCalendars:self->_calendars];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
  }

  return v3;
}

- (CUIKOccurrenceCacheDataSource)initWithEventStore:(id)a3 calendars:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CUIKOccurrenceCacheDataSource;
  v9 = [(CUIKOccurrenceCacheDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, a3);
    objc_storeStrong(&v10->_calendars, a4);
    *&v10->_dataLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)setCachedDays:(id)a3
{
  v4 = [a3 mutableCopy];
  os_unfair_lock_lock(&self->_dataLock);
  cachedDays = self->_cachedDays;
  self->_cachedDays = v4;

  ++self->_cachedDaysSeed;

  os_unfair_lock_unlock(&self->_dataLock);
}

- (int64_t)countOfOccurrencesAtDayIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  if ([v5 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
    v7 = [v6 objectForKey:CUIKOccurrenceCacheOccurrenceCountKey];
    v8 = [v7 intValue];
  }

  os_unfair_lock_unlock(&self->_dataLock);

  return v8;
}

- (id)dateAtDayIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v6 = v5;
  if (a3 < 0 || [v5 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:a3];
    v8 = [v7 objectForKey:CUIKOccurrenceCacheDayKey];
  }

  os_unfair_lock_unlock(&self->_dataLock);

  return v8;
}

- (id)cachedOccurrenceAtIndexPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(CUIKOccurrenceCacheDataSource *)self _cachedOccurrenceAtIndexPath:v4];

  os_unfair_lock_unlock(&self->_dataLock);

  return v5;
}

- (id)_mutableDayDictionaryAtIndex:(unint64_t)a3
{
  v4 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = [v5 mutableCopy];
      [v4 setObject:v6 atIndexedSubscript:a3];
    }
  }

  return v6;
}

- (id)_cachedOccurrenceAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 length] != 2)
  {
    [(CUIKOccurrenceCacheDataSource *)a2 _cachedOccurrenceAtIndexPath:?];
  }

  v6 = [v5 indexAtPosition:0];
  v7 = [v5 indexAtPosition:1];
  v8 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v9 = [v8 count];

  if (v6 >= v9)
  {
    v10 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CUIKOccurrenceCacheDataSource *)v5 _cachedOccurrenceAtIndexPath:?];
    }

    v15 = 0;
  }

  else
  {
    v10 = [(CUIKOccurrenceCacheDataSource *)self _mutableDayDictionaryAtIndex:v6];
    v11 = [v10 objectForKey:CUIKOccurrenceCacheOccurrencesKey];
    v12 = [v10 objectForKey:CUIKOccurrenceCacheDayKey];
    v13 = [(CUIKOccurrenceCacheDataSource *)self faultOccurrencesForDay:v12 inOccurrencesArray:v11 index:v7 limit:0 cacheSeed:self->_cachedDaysSeed];

    [v10 setObject:v13 forKeyedSubscript:CUIKOccurrenceCacheOccurrencesKey];
    if (v7 >= [v13 count])
    {
      v14 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(CUIKOccurrenceCacheDataSource *)v5 _cachedOccurrenceAtIndexPath:v13];
      }

      v15 = 0;
    }

    else
    {
      v14 = [v13 objectAtIndex:v7];
      v15 = [v14 objectForKey:CUIKOccurrenceInfoEventKey];
    }
  }

  return v15;
}

- (id)faultOccurrencesForDay:(id)a3 inOccurrencesArray:(id)a4 index:(int64_t)a5 limit:(int64_t *)a6 cacheSeed:(int)a7
{
  v11 = a3;
  v12 = a4;
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = [(EKEventStore *)self->_eventStore occurrenceCacheGetOccurrencesForCalendars:self->_calendars onDay:v11];
  v12 = v13;
  if (a6)
  {
    *a6 -= [v13 count];
  }

  if (v12)
  {
LABEL_5:
    if (a5 < 0)
    {
      v15 = [v12 count];
      v14 = v15;
      a5 = 0;
      if (a6)
      {
        if (*a6 < v15)
        {
          v14 = *a6 & ~(*a6 >> 63);
        }

        *a6 -= v14;
      }
    }

    else
    {
      if ([v12 count] > a5)
      {
        v14 = a5 + 1;
LABEL_14:
        objc_opt_class();
        v25 = v12;
        v26 = v11;
        if (objc_opt_isKindOfClass())
        {
          v16 = v12;
        }

        else
        {
          v16 = [v12 mutableCopy];
        }

        v12 = v16;
        v17 = self;
        if (a5 < v14)
        {
          v27 = a7;
          do
          {
            if (v17->_cachedDaysSeed != a7)
            {
              break;
            }

            v18 = [v12 objectAtIndex:a5];
            v19 = [v18 objectForKey:CUIKOccurrenceInfoEventKey];
            if (!v19)
            {
              v20 = [v18 objectForKey:CUIKOccurrenceInfoObjectIDKey];
              v21 = [v18 objectForKey:CUIKOccurrenceInfoDateKey];
              v19 = [(EKEventStore *)v17->_eventStore eventForObjectID:v20 occurrenceDate:v21 checkValid:0];
              if (v19)
              {
                v22 = [v18 objectForKeyedSubscript:CUIKOccurrenceInfoNextReminderDateKey];
                if (v22)
                {
                  [v19 _setNextCachedReminderOccurrenceDate:v22];
                }

                v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v18, v25}];
                [v23 setObject:v19 forKey:CUIKOccurrenceInfoEventKey];
                [v12 replaceObjectAtIndex:a5 withObject:v23];

                v17 = self;
              }

              a7 = v27;
            }

            ++a5;
          }

          while (v14 != a5);
        }

        v11 = v26;
        goto LABEL_28;
      }

      v14 = [v12 count];
    }

    if (a5 >= v14)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_28:

  return v12;
}

- (int64_t)sectionForCachedOccurrencesOnDate:(id)a3
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:CUIKOccurrenceCacheDayKey];
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v11.length = [v5 count];
  v11.location = 0;
  v6 = CFArrayBSearchValues(v5, v11, v4, __CompareCachedDays, 0);
  v7 = [v5 count];
  os_unfair_lock_unlock(&self->_dataLock);
  v8 = v7 - 1;
  if (v6 < v7)
  {
    v8 = v6;
  }

  if (v6 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)indexPathsForOccurrence:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = [MEMORY[0x1E695DF70] array];
  v5 = [v4 startDate];
  v6 = [(EKEventStore *)self->_eventStore timeZone];
  v7 = [v5 dateForDayInTimeZone:v6];

  v8 = [v4 endDateUnadjustedForLegacyClients];
  v9 = [(EKEventStore *)self->_eventStore timeZone];
  v10 = [v8 dateForDayInTimeZone:v9];

  os_unfair_lock_lock(&self->_dataLock);
  v11 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 firstObject];
    v14 = [v13 objectForKey:CUIKOccurrenceCacheDayKey];
    v35 = v7;
    v15 = [v7 laterDate:v14];

    v16 = [v12 lastObject];
    v17 = [v16 objectForKey:CUIKOccurrenceCacheDayKey];
    v34 = v10;
    v18 = [v10 earlierDate:v17];

    v39 = CalCopyCalendar();
    v40 = v18;
    if ([v15 compare:v18] == 1)
    {
      v19 = v15;
    }

    else
    {
      v37 = v12;
      v38 = self;
      do
      {
        v20 = [MEMORY[0x1E695DF90] dictionaryWithObject:v15 forKey:CUIKOccurrenceCacheDayKey];
        v51.length = [v12 count];
        v51.location = 0;
        v41 = CFArrayBSearchValues(v12, v51, v20, __CompareCachedDays, 0);
        v21 = [(CUIKOccurrenceCacheDataSource *)self _mutableDayDictionaryAtIndex:?];

        v22 = [v21 objectForKey:CUIKOccurrenceCacheOccurrencesKey];
        v23 = [(CUIKOccurrenceCacheDataSource *)self faultOccurrencesForDay:v15 inOccurrencesArray:v22 index:-1 limit:0 cacheSeed:self->_cachedDaysSeed];

        v42 = v21;
        [v21 setObject:v23 forKeyedSubscript:CUIKOccurrenceCacheOccurrencesKey];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          v28 = *v44;
          while (2)
          {
            v29 = 0;
            v30 = v27;
            v27 += v26;
            do
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v24);
              }

              v31 = [*(*(&v43 + 1) + 8 * v29) objectForKeyedSubscript:CUIKOccurrenceInfoEventKey];
              if ([v4 isEqual:v31])
              {
                v47[0] = v41;
                v47[1] = v30;
                v32 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v47 length:2];
                [v36 addObject:v32];

                goto LABEL_16;
              }

              ++v30;

              ++v29;
            }

            while (v26 != v29);
            v26 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v19 = [v39 dateByAddingUnit:16 value:1 toDate:v15 options:0];

        v15 = v19;
        v12 = v37;
        self = v38;
      }

      while ([v19 compare:v40] != 1);
    }

    os_unfair_lock_unlock(&self->_dataLock);

    v10 = v34;
    v7 = v35;
  }

  else
  {
    os_unfair_lock_unlock(&self->_dataLock);
  }

  return v36;
}

- (void)_fetchDaysStartingFromSection:(int64_t)a3 sectionsToLoadInBothDirections:(int64_t)a4 background:(BOOL)a5 includeGivenSection:(BOOL)a6
{
  v7 = a5;
  os_unfair_lock_lock(&self->_dataLock);
  cachedDaysSeed = self->_cachedDaysSeed;
  v12 = [(CUIKOccurrenceCacheDataSource *)self _cachedDays];
  v13 = [v12 count];
  os_unfair_lock_unlock(&self->_dataLock);
  if (v13 >= a3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__CUIKOccurrenceCacheDataSource__fetchDaysStartingFromSection_sectionsToLoadInBothDirections_background_includeGivenSection___block_invoke;
    aBlock[3] = &unk_1E839AF58;
    v18 = cachedDaysSeed;
    aBlock[4] = self;
    aBlock[5] = a3;
    aBlock[6] = a4;
    aBlock[7] = v13;
    v19 = a6;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v7)
    {
      v16 = dispatch_get_global_queue(0, 0);
      dispatch_async(v16, v15);
    }

    else
    {
      (*(v14 + 2))(v14);
    }
  }
}

void __125__CUIKOccurrenceCacheDataSource__fetchDaysStartingFromSection_sectionsToLoadInBothDirections_background_includeGivenSection___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == *(*(a1 + 32) + 40))
  {
    v19 = 100;
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (v3 <= 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v2 - v3) & ~((v2 - v3) >> 63);
    }

    if (v3 < 1)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v5 = v2 + v3;
      if (v5 + 1 < *(a1 + 56))
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = *(a1 + 56);
      }
    }

    v7 = 0;
    v8 = v2 - *(a1 + 68);
    v9 = &qword_1EC462000;
LABEL_11:
    v10 = v2;
    while (1)
    {
      v11 = v7;
      if (v10 < v4 && v8 >= v6)
      {
        break;
      }

      v12 = *(a1 + 32);
      if (*(a1 + 64) != v12[10]._os_unfair_lock_opaque)
      {
        return;
      }

      if ((v7 & 1) == 0)
      {
        ++v8;
        v7 = 1;
        v2 = v10;
        v13 = v8;
        if (v8 >= *(a1 + 56))
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      v7 = 0;
      --v10;
      if (v2 >= 1)
      {
        v13 = v10;
LABEL_19:
        os_unfair_lock_lock(v12 + 6);
        v14 = [*(a1 + 32) _mutableDayDictionaryAtIndex:v13];
        v15 = [v14 objectForKey:v9[336]];
        if (!v15)
        {
          v18 = [v14 objectForKey:CUIKOccurrenceCacheDayKey];
          os_unfair_lock_unlock((*(a1 + 32) + 24));
          [*(a1 + 32) faultOccurrencesForDay:v18 inOccurrencesArray:0 index:-1 limit:&v19 cacheSeed:*(a1 + 64)];
          v17 = v16 = v9;
          os_unfair_lock_lock((*(a1 + 32) + 24));
          [v14 setObject:v17 forKeyedSubscript:v16[336]];

          v9 = v16;
        }

        v7 = v11 ^ 1;
        os_unfair_lock_unlock((*(a1 + 32) + 24));

        v2 = v10;
        goto LABEL_11;
      }
    }

    ++*(*(a1 + 32) + 40);
  }
}

- (void)_cachedOccurrenceAtIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUIKOccurrenceCacheDataSource.m" lineNumber:178 description:@"Invalid index path for use with CUIKOccurrenceCacheDataSource"];
}

- (void)_cachedOccurrenceAtIndexPath:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 _cachedDays];
  [v2 count];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1CAB19000, v3, v4, "Asked for cached occurrence at indexPath [%@] but there are only %lu cached days.", v5, v6, v7, v8, v9);
}

- (void)_cachedOccurrenceAtIndexPath:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1CAB19000, v2, v3, "Asked for cached occurrence at indexPath [%@] but there are only %lu cached events on that day.", v4, v5, v6, v7, v8);
}

@end