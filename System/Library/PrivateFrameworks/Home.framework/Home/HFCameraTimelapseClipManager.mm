@interface HFCameraTimelapseClipManager
+ (id)sharedManager;
- (HFCameraTimelapseClipManager)init;
- (HMCameraClipManager)clipManager;
- (NSArray)timelapseClips;
- (NSDictionary)timelapseClipsByID;
- (id)timelapseClipPositionForDate:(id)a3 inHighQualityClip:(id)a4;
- (id)timelapseClipPositionForDate:(id)a3 inHighQualityClip:(id)a4 scrubbingType:(unint64_t)a5;
- (void)_fetchClipsFromStartDate:(id)a3 toEndDate:(id)a4 limit:(unint64_t)a5;
- (void)_fetchTimelapseClips;
- (void)addTimelapseClips:(id)a3;
- (void)clipManager:(id)a3 didUpdateClips:(id)a4;
- (void)removeAllTimelapseClips;
- (void)setClipManager:(id)a3;
- (void)setTimelapseClips:(id)a3;
- (void)setTimelapseClipsByID:(id)a3;
@end

@implementation HFCameraTimelapseClipManager

+ (id)sharedManager
{
  if (qword_280E02FD8 != -1)
  {
    dispatch_once(&qword_280E02FD8, &__block_literal_global_104);
  }

  v3 = _MergedGlobals_255;

  return v3;
}

void __45__HFCameraTimelapseClipManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HFCameraTimelapseClipManager);
  v1 = _MergedGlobals_255;
  _MergedGlobals_255 = v0;
}

- (HFCameraTimelapseClipManager)init
{
  v8.receiver = self;
  v8.super_class = HFCameraTimelapseClipManager;
  v2 = [(HFCameraTimelapseClipManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    timelapseClips = v2->_timelapseClips;
    v2->_timelapseClips = v3;

    v5 = dispatch_queue_create("com.apple.home.HFCameraTimelapseClipManager.updateQueue", 0);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v5;
  }

  return v2;
}

- (void)setTimelapseClips:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  timelapseClips = self->_timelapseClips;
  self->_timelapseClips = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)timelapseClips
{
  os_unfair_lock_lock_with_options();
  v3 = self->_timelapseClips;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTimelapseClipsByID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  timelapseClipsByID = self->_timelapseClipsByID;
  self->_timelapseClipsByID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)timelapseClipsByID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_timelapseClipsByID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)timelapseClipPositionForDate:(id)a3 inHighQualityClip:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HFCameraTimelapseClipManager *)self timelapseClips];
  v9 = [HFCameraPlaybackEngine findClipPositionForDate:v7 inEvents:v8 options:0];

  v10 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEBUG, "Found clipPosition:%@ for highQualityClip:%@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)timelapseClipPositionForDate:(id)a3 inHighQualityClip:(id)a4 scrubbingType:(unint64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFCameraTimelapseClipManager *)self timelapseClips];
  v10 = [HFCameraPlaybackEngine findClipPositionForDate:v8 inEvents:v9 options:0];

  v11 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEBUG, "Found clipPosition:%@ for highQualityClip:%@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setClipManager:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_clipManager);
    [v5 removeObserver:self];
  }

  [(HFCameraTimelapseClipManager *)self removeAllTimelapseClips];
  v6 = objc_storeWeak(&self->_clipManager, obj);

  v7 = v6;
  if (obj)
  {
    v8 = objc_loadWeakRetained(&self->_clipManager);
    v9 = [(HFCameraTimelapseClipManager *)self updateQueue];
    [v8 addObserver:self queue:v9];

    [(HFCameraTimelapseClipManager *)self _fetchTimelapseClips];
  }
}

- (void)addTimelapseClips:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSArray *)self->_timelapseClips mutableCopy];
    v6 = [(NSDictionary *)self->_timelapseClipsByID mutableCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HFCameraTimelapseClipManager_addTimelapseClips___block_invoke;
    v13[3] = &unk_277DFAC90;
    v7 = v6;
    v14 = v7;
    v8 = v5;
    v15 = v8;
    [v4 na_each:v13];
    timelapseClips = self->_timelapseClips;
    self->_timelapseClips = v8;
    v10 = v8;

    timelapseClipsByID = self->_timelapseClipsByID;
    self->_timelapseClipsByID = v7;
    v12 = v7;

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __50__HFCameraTimelapseClipManager_addTimelapseClips___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 quality] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v3 uniqueIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = *(a1 + 40);
    if (v6)
    {
      v8 = [*(a1 + 40) count];
      v9 = +[HFCameraUtilities cameraRecordingEventDateOfOccurenceComparator];
      v10 = [v7 indexOfObject:v3 inSortedRange:0 options:v8 usingComparator:{256, v9}];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = *(a1 + 32);
        v16 = [v3 uniqueIdentifier];
        [v15 setObject:v3 forKeyedSubscript:v16];

        [*(a1 + 40) replaceObjectAtIndex:v10 withObject:v3];
        goto LABEL_11;
      }

      v11 = HFLogForCategory(0x17uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

LABEL_11:
        goto LABEL_12;
      }

      v20 = 138412290;
      v21 = v3;
      v12 = "Could not locate existing event using indexOfObject: %@";
    }

    else
    {
      v13 = +[HFCameraUtilities cameraRecordingEventDateOfOccurenceComparator];
      v14 = [v7 hf_insertObject:v3 intoSortedArrayWithOptions:1024 comparator:v13];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = *(a1 + 32);
        v18 = [v3 uniqueIdentifier];
        [v17 setObject:v3 forKeyedSubscript:v18];

        goto LABEL_11;
      }

      v11 = HFLogForCategory(0x17uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v20 = 138412290;
      v21 = v3;
      v12 = "Invalid insertion index: %@";
    }

    _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, v12, &v20, 0xCu);
    goto LABEL_8;
  }

LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeAllTimelapseClips
{
  os_unfair_lock_lock_with_options();
  timelapseClips = self->_timelapseClips;
  self->_timelapseClips = MEMORY[0x277CBEBF8];

  timelapseClipsByID = self->_timelapseClipsByID;
  self->_timelapseClipsByID = MEMORY[0x277CBEC10];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_fetchTimelapseClips
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFCameraTimelapseClipManager *)self timelapseClips];
    v9 = 134217984;
    v10 = [v4 count];
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Begin timelapse clip fetching with cached count:%ld", &v9, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:-864000.0];
  [(HFCameraTimelapseClipManager *)self setOldestValidDateForTimeline:v6];

  v7 = [(HFCameraTimelapseClipManager *)self oldestValidDateForTimeline];
  [(HFCameraTimelapseClipManager *)self _fetchClipsFromStartDate:v7 toEndDate:v5 limit:0x7FFFFFFFFFFFFFFFLL];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fetchClipsFromStartDate:(id)a3 toEndDate:(id)a4 limit:(unint64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
  v11 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HFCameraTimelapseClipManager *)self oldestFetchedClip];
    *buf = 138412802;
    v20 = v10;
    v21 = 2048;
    v22 = a5;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Fetching timelapse clips with date interval:%@ limit:%ld oldestClip:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v13 = [(HFCameraTimelapseClipManager *)self clipManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HFCameraTimelapseClipManager__fetchClipsFromStartDate_toEndDate_limit___block_invoke;
  v16[3] = &unk_277DFACD8;
  objc_copyWeak(v18, buf);
  v14 = v8;
  v17 = v14;
  v18[1] = a5;
  [v13 fetchClipsWithDateInterval:v10 quality:1 limit:a5 shouldOrderAscending:1 completion:v16];

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __73__HFCameraTimelapseClipManager__fetchClipsFromStartDate_toEndDate_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory(0x1DuLL);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Timelapse clip fetch error:%@", &v28, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = [v5 count];
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Returned timelapse clips count %ld", &v28, 0xCu);
    }

    if (v5)
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
      v11 = [WeakRetained timelapseClips];
      [v10 addObjectsFromArray:v11];

      [WeakRetained setTimelapseClips:v10];
      v12 = [v5 na_dictionaryWithKeyGenerator:&__block_literal_global_12_3];
      v13 = [WeakRetained timelapseClipsByID];
      v14 = [v13 mutableCopy];

      [v14 addEntriesFromDictionary:v12];
      [WeakRetained setTimelapseClipsByID:v14];
    }

    v9 = [v5 firstObject];
    [WeakRetained setOldestFetchedClip:v9];
  }

  v15 = [WeakRetained oldestValidDateForTimeline];
  [v15 timeIntervalSinceDate:*(a1 + 32)];
  v17 = v16;

  if (v17 >= 0.0)
  {
    v22 = HFLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [WeakRetained timelapseClips];
      v26 = [v25 count];
      v28 = 134217984;
      v29 = v26;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Finished fetching timelapse clips with count:%ld", &v28, 0xCu);
    }
  }

  else
  {
    v18 = [WeakRetained oldestFetchedClip];

    v19 = MEMORY[0x277CBEAA8];
    if (v18)
    {
      v20 = [WeakRetained oldestFetchedClip];
      v21 = [v20 startDate];
      v22 = [v19 dateWithTimeInterval:v21 sinceDate:-86400.0];

      v23 = [WeakRetained oldestFetchedClip];
      v24 = [v23 startDate];
      [WeakRetained _fetchClipsFromStartDate:v22 toEndDate:v24 limit:*(a1 + 48)];
    }

    else
    {
      v22 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(a1 + 32) sinceDate:-86400.0];
      [WeakRetained _fetchClipsFromStartDate:v22 toEndDate:*(a1 + 32) limit:*(a1 + 48)];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)clipManager:(id)a3 didUpdateClips:(id)a4
{
  v7 = a4;
  if (!+[HFUtilities isInternalTest])
  {
    v5 = [(HFCameraTimelapseClipManager *)self updateQueue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [v7 allObjects];
  [(HFCameraTimelapseClipManager *)self addTimelapseClips:v6];
}

- (HMCameraClipManager)clipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  return WeakRetained;
}

@end