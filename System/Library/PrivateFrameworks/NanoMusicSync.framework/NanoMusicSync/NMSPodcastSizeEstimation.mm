@interface NMSPodcastSizeEstimation
- (BOOL)incrementSize:(unint64_t)a3 duration:(double)a4 forFeedURL:(id)a5;
- (NMSPodcastSizeEstimation)init;
- (double)_adjustedSizeDurationRatio:(double)a3;
- (double)_totalSizeDurationRatio;
- (id)_cachedPodcastSizeInfoDict;
- (unint64_t)_totalAverageSize;
- (unint64_t)sizeForFeedURL:(id)a3 duration:(double)a4 feedProvidedSize:(unint64_t)a5;
- (void)_cachedPodcastSizeInfoDict;
- (void)_setupFromCache;
- (void)synchronize;
@end

@implementation NMSPodcastSizeEstimation

- (NMSPodcastSizeEstimation)init
{
  v5.receiver = self;
  v5.super_class = NMSPodcastSizeEstimation;
  v2 = [(NMSPodcastSizeEstimation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NMSPodcastSizeEstimation *)v2 _setupFromCache];
  }

  return v3;
}

- (BOOL)incrementSize:(unint64_t)a3 duration:(double)a4 forFeedURL:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (a3 && fabs(a4) >= 2.22044605e-16 && [v8 length])
  {
    v10 = [(NMSPodcastSizeEstimation *)self sizeInfoDict];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;

    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_DEFAULT, "[PodcastSize] Updating podcastSizeInfo. Before: %@", &v22, 0xCu);
    }

    [v14 setTotalSize:[v14 totalSize]+ a3];
    [v14 totalDuration];
    [v14 setTotalDuration:v17 + a4];
    [v14 setCount:[v14 count]+ 1];
    v18 = [(NMSPodcastSizeEstimation *)self sizeInfoDict];
    [v18 setObject:v14 forKeyedSubscript:v9];

    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[PodcastSize] Updating podcastSizeInfo. After: %@", &v22, 0xCu);
    }

    v15 = 1;
  }

  else
  {
    v14 = NMLogForCategory(5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218498;
      v23 = a3;
      v24 = 2048;
      v25 = a4;
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&dword_25B27B000, v14, OS_LOG_TYPE_ERROR, "[PodcastSize] Failed to update podcast size estimation cache with size: %llu, duration: %f, feedURL: %@", &v22, 0x20u);
    }

    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)synchronize
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[PodcastSize] Failed to archive podcasts size info due to: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (unint64_t)sizeForFeedURL:(id)a3 duration:(double)a4 feedProvidedSize:(unint64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 length])
  {
    v9 = [(NMSPodcastSizeEstimation *)self sizeInfoDict];
    v10 = [v9 objectForKeyedSubscript:v8];
  }

  else
  {
    v10 = 0;
  }

  if ([objc_opt_class() _minimumSizeThreshold] < a5)
  {
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [NMSPodcastSizeEstimation sizeForFeedURL:v8 duration:a5 feedProvidedSize:v11];
    }

    totalAverageSize = a5;
    goto LABEL_23;
  }

  v13 = fabs(a4);
  if (v10)
  {
    if (v13 <= 2.22044605e-16)
    {
      totalAverageSize = [v10 averageSize];
      v11 = NMLogForCategory(5);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      v26 = 138413058;
      v27 = v8;
      v28 = 2048;
      v29 = a5;
      v30 = 2048;
      v31 = a4;
      v32 = 2048;
      v33 = totalAverageSize;
      v16 = "[PodcastSize] Podcast %@ provided size is %llu, duration is %f, estimated size %llu based on podcast average.";
      v19 = v11;
      v20 = 42;
      goto LABEL_22;
    }

    [v10 sizeDurationRatio];
    [(NMSPodcastSizeEstimation *)self _adjustedSizeDurationRatio:?];
    v15 = v14;
    totalAverageSize = (v14 * a4);
    v11 = NMLogForCategory(5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v26 = 138413314;
    v27 = v8;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a4;
    v32 = 2048;
    v33 = totalAverageSize;
    v34 = 2048;
    v35 = *&v15;
    v16 = "[PodcastSize] Podcast %@ provided size is %llu, duration is %f, estimated size %llu based on podcast ratio %f.";
LABEL_21:
    v19 = v11;
    v20 = 52;
LABEL_22:
    _os_log_debug_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEBUG, v16, &v26, v20);
    goto LABEL_23;
  }

  if (v13 > 2.22044605e-16)
  {
    [(NMSPodcastSizeEstimation *)self _adjustedSizeDurationRatio:self->_totalSizeDurationRatio];
    v18 = v17;
    totalAverageSize = (v17 * a4);
    v11 = NMLogForCategory(5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v26 = 138413314;
    v27 = v8;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a4;
    v32 = 2048;
    v33 = totalAverageSize;
    v34 = 2048;
    v35 = *&v18;
    v16 = "[PodcastSize] Podcast %@ provided size is %llu, duration is %f, estimated size %llu based on total average ratio %f.";
    goto LABEL_21;
  }

  totalAverageSize = self->_totalAverageSize;
  v21 = [objc_opt_class() _defaultEstimatedSize];
  if (totalAverageSize <= v21)
  {
    totalAverageSize = v21;
  }

  v11 = NMLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = self->_totalAverageSize;
    v26 = 138413314;
    v27 = v8;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a4;
    v32 = 2048;
    v33 = v22;
    v34 = 2048;
    v35 = totalAverageSize;
    v16 = "[PodcastSize] Podcast %@ provided size is %llu, duration is %f, total average is %llu, estimated size %llu based on total average.";
    goto LABEL_21;
  }

LABEL_23:

  if (totalAverageSize < [objc_opt_class() _minimumSizeThreshold])
  {
    v23 = NMLogForCategory(5);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138413058;
      v27 = v8;
      v28 = 2048;
      v29 = a5;
      v30 = 2048;
      v31 = a4;
      v32 = 2048;
      v33 = totalAverageSize;
      _os_log_impl(&dword_25B27B000, v23, OS_LOG_TYPE_DEFAULT, "[PodcastSize] Podcast %@ provided size is %llu, duration is %f, estimated size is %llu. Using static estimate instead.", &v26, 0x2Au);
    }

    totalAverageSize = [objc_opt_class() _defaultEstimatedSize];
  }

  v24 = *MEMORY[0x277D85DE8];
  return totalAverageSize;
}

- (double)_adjustedSizeDurationRatio:(double)a3
{
  if (fabs(a3) <= 2.22044605e-16)
  {
    return 16000.0;
  }

  v3 = 8000.0;
  if (a3 >= 8000.0)
  {
    v3 = a3;
    if (a3 > 40000.0)
    {
      return 40000.0;
    }
  }

  return v3;
}

- (void)_setupFromCache
{
  v6 = [(NMSPodcastSizeEstimation *)self _cachedPodcastSizeInfoDict];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
  sizeInfoDict = self->_sizeInfoDict;
  self->_sizeInfoDict = v3;

  self->_empty = v6 == 0;
  [(NMSPodcastSizeEstimation *)self _totalSizeDurationRatio];
  self->_totalSizeDurationRatio = v5;
  self->_totalAverageSize = [(NMSPodcastSizeEstimation *)self _totalAverageSize];
}

- (id)_cachedPodcastSizeInfoDict
{
  v2 = +[NMSyncDefaults sharedDefaults];
  v3 = [v2 podcastSizeEstimationData];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v13 = 0;
    v9 = [v4 unarchivedObjectOfClasses:v8 fromData:v3 error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(NMSPodcastSizeEstimation *)v10 _cachedPodcastSizeInfoDict];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)_totalSizeDurationRatio
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [(NMSPodcastSizeEstimation *)self sizeInfoDict];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NMSPodcastSizeEstimation__totalSizeDurationRatio__block_invoke;
  v7[3] = &unk_27993DB58;
  v7[4] = &v12;
  v7[5] = &v8;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];

  v3 = v9[3];
  if (fabs(v3) <= 2.22044605e-16)
  {
    +[NMSPodcastSizeEstimation _defaultSizeDurationRatio];
    v4 = v5;
  }

  else
  {
    v4 = v13[3] / v3;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

double __51__NMSPodcastSizeEstimation__totalSizeDurationRatio__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v4 totalSize];
  [v4 totalDuration];
  v6 = v5;

  v7 = *(*(a1 + 40) + 8);
  result = v6 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

- (unint64_t)_totalAverageSize
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(NMSPodcastSizeEstimation *)self sizeInfoDict];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__NMSPodcastSizeEstimation__totalAverageSize__block_invoke;
  v6[3] = &unk_27993DB58;
  v6[4] = &v11;
  v6[5] = &v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  v3 = v12[3];
  v4 = v8[3];
  if (v3)
  {
    v4 /= v3;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __45__NMSPodcastSizeEstimation__totalAverageSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v4 count];
  v5 = [v4 totalSize];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (void)sizeForFeedURL:(uint64_t)a1 duration:(uint64_t)a2 feedProvidedSize:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_25B27B000, log, OS_LOG_TYPE_DEBUG, "[PodcastSize] Podcast %@ provided size %llu is larger than threshold.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_cachedPodcastSizeInfoDict
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[PodcastSize] Failed to uarchive podcasts size info due to: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end