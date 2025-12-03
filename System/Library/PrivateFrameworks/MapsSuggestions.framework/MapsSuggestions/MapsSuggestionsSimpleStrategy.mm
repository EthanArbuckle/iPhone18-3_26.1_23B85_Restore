@interface MapsSuggestionsSimpleStrategy
- (BOOL)postFiltersKept:(id)kept;
- (BOOL)preFiltersKept:(id)kept;
- (MapsSuggestionsManager)manager;
- (MapsSuggestionsSimpleStrategy)init;
- (NSObject)_filteredPreviousResultsCrosscheckingStorage:(id *)storage;
- (NSString)uniqueName;
- (id)topSuggestionsWithSourceEntries:(id)entries error:(id *)error;
- (uint64_t)_dedupeByEnrichingEntries:(void *)entries withEntry:;
- (uint64_t)_entry:(void *)_entry existsInStorage:;
- (uint64_t)_improveEntry:(id *)entry;
- (void)_addFilter:(uint64_t)filter processingType:;
- (void)_filtersForprocessingType:(void *)type;
- (void)addDeduper:(id)deduper;
- (void)addImprover:(id)improver;
- (void)clearData;
- (void)removeAllDedupers;
- (void)removeAllFilters;
- (void)removeAllImprovers;
- (void)removeFilter:(id)filter;
@end

@implementation MapsSuggestionsSimpleStrategy

- (MapsSuggestionsSimpleStrategy)init
{
  v8.receiver = self;
  v8.super_class = MapsSuggestionsSimpleStrategy;
  v2 = [(MapsSuggestionsSimpleStrategy *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    preFilters = v2->_preFilters;
    v2->_preFilters = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    postFilters = v2->_postFilters;
    v2->_postFilters = v5;
  }

  return v2;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)clearData
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "CLEAR data", v5, 2u);
  }

  previousResults = self->_previousResults;
  self->_previousResults = 0;
}

- (BOOL)preFiltersKept:(id)kept
{
  v38 = *MEMORY[0x1E69E9840];
  keptCopy = kept;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v30 = uniqueName;
    v31 = 2080;
    v32 = "pre-filtering";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "pre-filtering", "", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_preFilters;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if (([v13 shouldKeepEntry:{keptCopy, v25}] & 1) == 0)
        {
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            uniqueName2 = [v13 uniqueName];
            IsVerbose = MapsSuggestionsLoggingIsVerbose();
            if (IsVerbose)
            {
              serializedBase64String = [keptCopy serializedBase64String];
            }

            else
            {
              serializedBase64String = &stru_1F444C108;
            }

            *buf = 138413058;
            v30 = uniqueName2;
            v31 = 2048;
            v32 = keptCopy;
            v33 = 2112;
            v34 = serializedBase64String;
            v35 = 2112;
            v36 = keptCopy;
            _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} FILTERED by FILTER{%@} {%p:%@}:\n%@", buf, 0x2Au);
            if (IsVerbose)
            {
            }
          }

          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            uniqueName3 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
            *buf = 138412546;
            v30 = uniqueName3;
            v31 = 2080;
            v32 = "pre-filtering";
            _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
          }

          v23 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5126000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "pre-filtering", "", buf, 2u);
          }

          v16 = 0;
          goto LABEL_30;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    uniqueName4 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v30 = uniqueName4;
    v31 = 2080;
    v32 = "pre-filtering";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v8 = GEOFindOrCreateLog();
  if (os_signpost_enabled(&v8->super.super))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, &v8->super.super, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "pre-filtering", "", buf, 2u);
  }

  v16 = 1;
LABEL_30:

  return v16;
}

- (BOOL)postFiltersKept:(id)kept
{
  v38 = *MEMORY[0x1E69E9840];
  keptCopy = kept;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v30 = uniqueName;
    v31 = 2080;
    v32 = "post-filtering";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "post-filtering", "", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_postFilters;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if (([v13 shouldKeepEntry:{keptCopy, v25}] & 1) == 0)
        {
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            uniqueName2 = [v13 uniqueName];
            IsVerbose = MapsSuggestionsLoggingIsVerbose();
            if (IsVerbose)
            {
              serializedBase64String = [keptCopy serializedBase64String];
            }

            else
            {
              serializedBase64String = &stru_1F444C108;
            }

            *buf = 138413058;
            v30 = uniqueName2;
            v31 = 2048;
            v32 = keptCopy;
            v33 = 2112;
            v34 = serializedBase64String;
            v35 = 2112;
            v36 = keptCopy;
            _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} FILTERED by FILTER{%@} {%p:%@}:\n%@", buf, 0x2Au);
            if (IsVerbose)
            {
            }
          }

          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            uniqueName3 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
            *buf = 138412546;
            v30 = uniqueName3;
            v31 = 2080;
            v32 = "post-filtering";
            _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
          }

          v23 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5126000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "post-filtering", "", buf, 2u);
          }

          v16 = 0;
          goto LABEL_30;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    uniqueName4 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v30 = uniqueName4;
    v31 = 2080;
    v32 = "post-filtering";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v8 = GEOFindOrCreateLog();
  if (os_signpost_enabled(&v8->super.super))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, &v8->super.super, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "post-filtering", "", buf, 2u);
  }

  v16 = 1;
LABEL_30:

  return v16;
}

- (id)topSuggestionsWithSourceEntries:(id)entries error:(id *)error
{
  v85 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  if (!entriesCopy)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"Requires sourceEntries."];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_5;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v74 = uniqueName;
    v75 = 2080;
    v76 = "topSuggestionsWithSourceEntries";
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v11 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsWithSourceEntries", "", buf, 2u);
  }

  v12 = [(MapsSuggestionsSimpleStrategy *)&self->super.isa _filteredPreviousResultsCrosscheckingStorage:entriesCopy];
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v50 = entriesCopy;
  obj = entriesCopy;
  v54 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v54)
  {
    v53 = *v69;
    do
    {
      v14 = 0;
      do
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v14;
        v15 = *(*(&v68 + 1) + 8 * v14);
        v16 = [obj objectForKeyedSubscript:{v15, v50}];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v64 objects:v83 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v65;
          do
          {
            v20 = 0;
            do
            {
              if (*v65 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v64 + 1) + 8 * v20);
              if (([v12 containsObject:v21] & 1) == 0)
              {
                if ([(MapsSuggestionsSimpleStrategy *)self preFiltersKept:v21])
                {
                  [(MapsSuggestionsSimpleStrategy *)&self->super.isa _improveEntry:v21];
                  if (([v12 containsObject:v21] & 1) == 0)
                  {
                    v22 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      logb = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
                      *buf = 138412546;
                      v74 = logb;
                      v75 = 2080;
                      v76 = "deduping";
                      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
                    }

                    v23 = GEOFindOrCreateLog();
                    if (os_signpost_enabled(v23))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C5126000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "deduping", "", buf, 2u);
                    }

                    v24 = [(MapsSuggestionsSimpleStrategy *)self _dedupeByEnrichingEntries:v12 withEntry:v21];
                    log = GEOFindOrCreateLog();
                    v25 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
                    if (v24)
                    {
                      if (v25)
                      {
                        uniqueName2 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
                        *buf = 138412546;
                        v74 = uniqueName2;
                        v75 = 2080;
                        v76 = "deduping";
                        _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
                      }

                      v27 = GEOFindOrCreateLog();
                      if (os_signpost_enabled(v27))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_1C5126000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "deduping", "", buf, 2u);
                      }
                    }

                    else
                    {
                      if (v25)
                      {
                        uniqueName3 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
                        *buf = 138412546;
                        v74 = uniqueName3;
                        v75 = 2080;
                        v76 = "deduping";
                        _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
                      }

                      v29 = GEOFindOrCreateLog();
                      if (os_signpost_enabled(v29))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_1C5126000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "deduping", "", buf, 2u);
                      }

                      v30 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                      {
                        loga = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
                        IsVerbose = MapsSuggestionsLoggingIsVerbose();
                        v32 = &stru_1F444C108;
                        v52 = IsVerbose;
                        if (IsVerbose)
                        {
                          serializedBase64String = [v21 serializedBase64String];
                          v32 = serializedBase64String;
                        }

                        *buf = 136316162;
                        v74 = "KEPT";
                        v75 = 2112;
                        v76 = loga;
                        v77 = 2048;
                        v78 = v21;
                        v79 = 2112;
                        v80 = v32;
                        v81 = 2112;
                        v82 = v21;
                        _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_DEBUG, "{MSgDebug} %s by OBJECT{%@} {%p:%@}:\n%@", buf, 0x34u);
                        if (v52)
                        {
                        }
                      }

                      [v12 addObject:v21];
                    }
                  }
                }

                else
                {
                  [(MapsSuggestionsManager *)WeakRetained removeEntry:v21 sourceName:v15];
                }
              }

              ++v20;
            }

            while (v18 != v20);
            v33 = [v16 countByEnumeratingWithState:&v64 objects:v83 count:16];
            v18 = v33;
          }

          while (v33);
        }

        v14 = v56 + 1;
      }

      while (v56 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v54);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v12;
  v35 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v61;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v61 != v37)
        {
          objc_enumerationMutation(v7);
        }

        v39 = *(*(&v60 + 1) + 8 * i);
        if (([v39 deleted] & 1) == 0)
        {
          if ([(MapsSuggestionsSimpleStrategy *)self postFiltersKept:v39])
          {
            continue;
          }

          originatingSourceName = [v39 originatingSourceName];
          [(MapsSuggestionsManager *)WeakRetained removeEntry:v39 sourceName:originatingSourceName];
        }

        [v34 addObject:v39];
      }

      v36 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v36);
  }

  [v7 removeObjectsInArray:v34];
  v41 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    uniqueName4 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v74 = uniqueName4;
    v75 = 2080;
    v76 = "sorting";
    _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v43 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v43, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "sorting", "", buf, 2u);
  }

  [v7 sortUsingComparator:&__block_literal_global_28];
  v44 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    uniqueName5 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v74 = uniqueName5;
    v75 = 2080;
    v76 = "sorting";
    _os_log_impl(&dword_1C5126000, v44, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v46 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "sorting", "", buf, 2u);
  }

  objc_storeStrong(&self->_previousResults, v12);
  v47 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    uniqueName6 = [(MapsSuggestionsSimpleStrategy *)self uniqueName];
    *buf = 138412546;
    v74 = uniqueName6;
    v75 = 2080;
    v76 = "topSuggestionsWithSourceEntries";
    _os_log_impl(&dword_1C5126000, v47, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v49 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v49))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsWithSourceEntries", "", buf, 2u);
  }

  entriesCopy = v50;
LABEL_5:

  return v7;
}

uint64_t __71__MapsSuggestionsSimpleStrategy_topSuggestionsWithSourceEntries_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 weight];
  v7 = v6;
  [v5 weight];
  if (v7 >= v8)
  {
    [v4 weight];
    v11 = v10;
    [v5 weight];
    if (v11 <= v12)
    {
      v13 = [v4 numberForKey:@"MapsSuggestionsOriginalPositionKey"];
      v14 = [v5 numberForKey:@"MapsSuggestionsOriginalPositionKey"];
      v15 = v14;
      if (v13 && v14)
      {
        v9 = [v13 compare:v14];
      }

      else
      {
        v16 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        v17 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        v18 = v17;
        v9 = 0;
        if (v16 && v17)
        {
          v9 = [v16 compare:v17];
        }
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)removeFilter:(id)filter
{
  v44 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (!filterCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
      v38 = 1024;
      v39 = 358;
      v40 = 2082;
      v41 = "[MapsSuggestionsSimpleStrategy removeFilter:]";
      v42 = 2082;
      v43 = "nil == (filter)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a filter", buf, 0x26u);
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [objc_opt_class() description];
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Going to remove filter: %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_preFilters;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v6 = 0;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;

          v6 = v14;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);

    if (!v6)
    {
      goto LABEL_20;
    }

    [(NSMutableSet *)self->_preFilters removeObject:v6];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_DEBUG))
    {
      v15 = [objc_opt_class() description];
      *buf = 138412290;
      v37 = v15;
      _os_log_impl(&dword_1C5126000, &v8->super.super, OS_LOG_TYPE_DEBUG, "Removed filter %@ from preFilters", buf, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_20:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_postFilters;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v17)
  {
    v19 = v16;
LABEL_34:

    goto LABEL_35;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v27;
  do
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v26 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;

        v19 = v23;
      }
    }

    v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v18);

  if (v19)
  {
    [(NSMutableSet *)self->_postFilters removeObject:v19, v26];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [objc_opt_class() description];
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "Removed filter %@ from postFilters", buf, 0xCu);
    }

    goto LABEL_34;
  }

LABEL_35:
}

- (void)removeAllFilters
{
  [(NSMutableSet *)self->_preFilters removeAllObjects];
  postFilters = self->_postFilters;

  [(NSMutableSet *)postFilters removeAllObjects];
}

- (void)addImprover:(id)improver
{
  v22 = *MEMORY[0x1E69E9840];
  improverCopy = improver;
  v5 = improverCopy;
  if (!improverCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v16 = 1024;
    v17 = 393;
    v18 = 2082;
    v19 = "[MapsSuggestionsSimpleStrategy addImprover:]";
    v20 = 2082;
    v21 = "nil == (improver)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an improver";
LABEL_12:
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 38;
LABEL_18:
    _os_log_impl(&dword_1C5126000, v11, v12, v10, &v14, v13);
    goto LABEL_19;
  }

  if (([improverCopy conformsToProtocol:&unk_1F44729D8] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v16 = 1024;
    v17 = 394;
    v18 = 2082;
    v19 = "[MapsSuggestionsSimpleStrategy addImprover:]";
    v20 = 2082;
    v21 = "![improver conformsToProtocol:@protocol(MapsSuggestionsImprover)]";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Improver should conform to MapsSuggestionsImprover protocol";
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v5;
      v10 = "Improver:%@ does not respond to isEnabled. This SHOULD NOT happen. Please file a radar.";
LABEL_17:
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
      v13 = 12;
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (([objc_opt_class() isEnabled] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v5;
      v10 = "Improver:%@ is not enabled. Returning.";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  improvers = self->_improvers;
  if (!improvers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = self->_improvers;
    self->_improvers = v7;

    improvers = self->_improvers;
  }

  [(NSMutableArray *)improvers addObject:v5];
LABEL_20:
}

- (void)removeAllImprovers
{
  [(NSMutableArray *)self->_improvers removeAllObjects];
  improvers = self->_improvers;
  self->_improvers = 0;
}

- (void)addDeduper:(id)deduper
{
  v22 = *MEMORY[0x1E69E9840];
  deduperCopy = deduper;
  v5 = deduperCopy;
  if (!deduperCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v16 = 1024;
    v17 = 422;
    v18 = 2082;
    v19 = "[MapsSuggestionsSimpleStrategy addDeduper:]";
    v20 = 2082;
    v21 = "nil == (deduper)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an deduper";
LABEL_12:
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 38;
LABEL_18:
    _os_log_impl(&dword_1C5126000, v11, v12, v10, &v14, v13);
    goto LABEL_19;
  }

  if (([deduperCopy conformsToProtocol:&unk_1F4472FC8] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v16 = 1024;
    v17 = 423;
    v18 = 2082;
    v19 = "[MapsSuggestionsSimpleStrategy addDeduper:]";
    v20 = 2082;
    v21 = "![deduper conformsToProtocol:@protocol(MapsSuggestionsDeduper)]";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Deduper should conform to MapsSuggestionsDeduper protocol";
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v5;
      v10 = "Deduper:%@ does not respond to isEnabled. This SHOULD NOT happen. Please file a radar.";
LABEL_17:
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
      v13 = 12;
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (([objc_opt_class() isEnabled] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v5;
      v10 = "Deduper:%@ is not enabled. Returning.";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  dedupers = self->_dedupers;
  if (!dedupers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = self->_dedupers;
    self->_dedupers = v7;

    dedupers = self->_dedupers;
  }

  [(NSMutableArray *)dedupers addObject:v5];
LABEL_20:
}

- (void)removeAllDedupers
{
  [(NSMutableArray *)self->_dedupers removeAllObjects];
  dedupers = self->_dedupers;
  self->_dedupers = 0;
}

- (MapsSuggestionsManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)_filtersForprocessingType:(void *)type
{
  v7 = *MEMORY[0x1E69E9840];
  if (type)
  {
    if (a2 == 2)
    {
      v2 = type[4];
      goto LABEL_6;
    }

    if (a2 == 1)
    {
      v2 = type[1];
LABEL_6:
      type = v2;
      goto LABEL_10;
    }

    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 136446978;
      OUTLINED_FUNCTION_4();
      *(&v5[3] + 2) = 73;
      OUTLINED_FUNCTION_3();
      v6 = "YES";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported _ProcessingType!", v5, 0x26u);
    }

    type = 0;
  }

LABEL_10:

  return type;
}

- (uint64_t)_improveEntry:(id *)entry
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (entry)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [entry uniqueName];
      OUTLINED_FUNCTION_9_3();
      v56 = "improving";
      OUTLINED_FUNCTION_12_1(&dword_1C5126000, v7, v8, "{MSgDebug} OBJECT{%@} %s BEGIN", v9, v10, v11, v12, v45, v46, v48, *(&v48 + 1), v49[0], v49[1], v50, *(&v50 + 1), v51[0], v51[1], v52, *(&v52 + 1), buf[0]);
    }

    v13 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2();
      _os_signpost_emit_with_name_impl(v14, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, v16, v17, buf, 2u);
    }

    *v51 = 0u;
    v52 = 0u;
    *v49 = 0u;
    v50 = 0u;
    entryCopy = entry;
    v18 = entry[2];
    v19 = [v18 countByEnumeratingWithState:v49 objects:v61 count:16];
    if (v19)
    {
      v21 = v19;
      v22 = 0;
      v23 = *v50;
      *&v20 = 138413058;
      v48 = v20;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          OUTLINED_FUNCTION_8_2();
          if (v25 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(v49[1] + 8 * i);
          if ([v26 improveEntry:v4])
          {
            v27 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              uniqueName2 = [v26 uniqueName];
              IsVerbose = MapsSuggestionsLoggingIsVerbose();
              v30 = &stru_1F444C108;
              if (IsVerbose)
              {
                serializedBase64String = [v4 serializedBase64String];
                v30 = serializedBase64String;
              }

              *buf = v48;
              v54 = uniqueName2;
              v55 = 2048;
              v56 = v4;
              v57 = 2112;
              v58 = v30;
              v59 = 2112;
              v60 = v4;
              _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "{MSgDebug} IMPROVED by IMPROVER{%@} {%p:%@}:\n%@", buf, 0x2Au);
              if (IsVerbose)
              {
              }
            }

            v22 = 1;
          }
        }

        v21 = [v18 countByEnumeratingWithState:v49 objects:v61 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      uniqueName3 = [entryCopy uniqueName];
      OUTLINED_FUNCTION_9_3();
      v56 = "improving";
      OUTLINED_FUNCTION_12_1(&dword_1C5126000, v33, v34, "{MSgDebug} OBJECT{%@} %s END", v35, v36, v37, v38, v45, entryCopy, v48, *(&v48 + 1), v49[0], v49[1], v50, *(&v50 + 1), v51[0], v51[1], v52, *(&v52 + 1), buf[0]);
    }

    v39 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v39))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2();
      _os_signpost_emit_with_name_impl(v40, v39, OS_SIGNPOST_INTERVAL_END, v41, v42, v43, buf, 2u);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (uint64_t)_dedupeByEnrichingEntries:(void *)entries withEntry:
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a2;
  entriesCopy = entries;
  if (self)
  {
    *v77 = 0u;
    v78 = 0u;
    *v79 = 0u;
    v80 = 0u;
    v7 = [v5 copy];
    v8 = [v7 countByEnumeratingWithState:v77 objects:v86 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v78;
      v70 = v5;
      v71 = v7;
      selfCopy = self;
      do
      {
        v12 = 0;
        do
        {
          if (*v78 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(v77[1] + 8 * v12);
          if (v13 != entriesCopy)
          {
            *v75 = 0u;
            v76 = 0u;
            *v73 = 0u;
            v74 = 0u;
            v14 = *(self + 24);
            v15 = [v14 countByEnumeratingWithState:v73 objects:v85 count:16];
            if (v15)
            {
              entries = v15;
              v16 = *v74;
              while (2)
              {
                v17 = 0;
                do
                {
                  OUTLINED_FUNCTION_8_2();
                  if (v18 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(v73[1] + 8 * v17);
                  v20 = [v19 dedupeByEnrichingEntry:v13 withEntry:entriesCopy];
                  if (v20)
                  {
                    v30 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                    {
                      uniqueName = [v19 uniqueName];
                      IsVerbose = MapsSuggestionsLoggingIsVerbose();
                      if (IsVerbose)
                      {
                        serializedBase64String = [entriesCopy serializedBase64String];
                      }

                      else
                      {
                        serializedBase64String = &stru_1F444C108;
                      }

                      *buf = 138413058;
                      v82 = uniqueName;
                      v83 = 2048;
                      v84 = entriesCopy;
                      OUTLINED_FUNCTION_7_3();
                      *(v34 + 34) = entriesCopy;
                      OUTLINED_FUNCTION_11_3(&dword_1C5126000, v35, v36, "{MSgDebug} DUPED by DEDUPER{%@} {%p:%@}:\n%@", v37, v38, v39, v40, v69, v70, v71, selfCopy, v73[0], v73[1], v74, *(&v74 + 1), v75[0], v75[1], v76, *(&v76 + 1), v77[0], v77[1], v78, *(&v78 + 1), v79[0], v79[1], v80, *(&v80 + 1), buf[0]);
                      if (IsVerbose)
                      {
                      }
                    }

                    v41 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                    {
                      uniqueName2 = [v19 uniqueName];
                      v43 = MapsSuggestionsLoggingIsVerbose();
                      if (v43)
                      {
                        serializedBase64String2 = [v13 serializedBase64String];
                      }

                      else
                      {
                        serializedBase64String2 = &stru_1F444C108;
                      }

                      *buf = 138413058;
                      v82 = uniqueName2;
                      v83 = 2048;
                      v84 = v13;
                      OUTLINED_FUNCTION_7_3();
                      *(v45 + 34) = v13;
                      OUTLINED_FUNCTION_11_3(&dword_1C5126000, v46, v47, "{MSgDebug} ENRICHED by DEDUPER{%@} {%p:%@}:\n%@", v48, v49, v50, v51, v69, v70, v71, selfCopy, v73[0], v73[1], v74, *(&v74 + 1), v75[0], v75[1], v76, *(&v76 + 1), v77[0], v77[1], v78, *(&v78 + 1), v79[0], v79[1], v80, *(&v80 + 1), buf[0]);
                      if (v43)
                      {
                      }
                    }

                    v52 = selfCopy;
                    WeakRetained = objc_loadWeakRetained((selfCopy + 48));
                    [WeakRetained removeEntry:entriesCopy];

                    v5 = v70;
                    [v70 removeObjectIdenticalTo:entriesCopy];
                    if ([v70 count] >= 2)
                    {
                      v62 = GEOFindOrCreateLog();
                      if (OUTLINED_FUNCTION_6_4(v62))
                      {
                        OUTLINED_FUNCTION_2_6(&dword_1C5126000, v63, v64, "Calling recursive _dedupeByEnrichingEntries", v65, v66, v67, v68, v69, v70, v71, selfCopy, v73[0], v73[1], v74, *(&v74 + 1), v75[0], v75[1], v76, *(&v76 + 1), v77[0], v77[1], v78, *(&v78 + 1), v79[0], v79[1], v80, *(&v80 + 1), 0);
                      }

                      [(MapsSuggestionsSimpleStrategy *)v52 _dedupeByEnrichingEntries:v5 withEntry:v13];
                    }

                    v54 = GEOFindOrCreateLog();
                    if (OUTLINED_FUNCTION_6_4(v54))
                    {
                      OUTLINED_FUNCTION_2_6(&dword_1C5126000, v55, v56, "Returning YES from Deduping", v57, v58, v59, v60, v69, v70, v71, selfCopy, v73[0], v73[1], v74, *(&v74 + 1), v75[0], v75[1], v76, *(&v76 + 1), v77[0], v77[1], v78, *(&v78 + 1), v79[0], v79[1], v80, *(&v80 + 1), 0);
                    }

                    v29 = 1;
                    v7 = v71;
                    entries = v71;
                    goto LABEL_40;
                  }

                  v17 = v17 + 1;
                }

                while (entries != v17);
                entries = OUTLINED_FUNCTION_13_1(v20, v21, v73, v85);
                if (entries)
                {
                  continue;
                }

                break;
              }
            }

            v7 = v71;
            self = selfCopy;
          }

          ++v12;
        }

        while (v12 != v10);
        v8 = OUTLINED_FUNCTION_13_1(v8, v9, v77, v86);
        v10 = v8;
        v5 = v70;
      }

      while (v8);
    }

    v22 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_6_4(v22))
    {
      OUTLINED_FUNCTION_2_6(&dword_1C5126000, v23, v24, "Returning NO from Deduping", v25, v26, v27, v28, v69, v70, v71, selfCopy, v73[0], v73[1], v74, *(&v74 + 1), v75[0], v75[1], v76, *(&v76 + 1), v77[0], v77[1], v78, *(&v78 + 1), v79[0], v79[1], v80, *(&v80 + 1), 0);
    }

    v29 = 0;
LABEL_40:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (uint64_t)_entry:(void *)_entry existsInStorage:
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  _entryCopy = _entry;
  v7 = _entryCopy;
  if (!self)
  {
    v24 = 0;
    goto LABEL_29;
  }

  if (!v5)
  {
    v8 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446978;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v42 = 1024;
    v43 = 170;
    v44 = 2082;
    v45 = "[MapsSuggestionsSimpleStrategy _entry:existsInStorage:]";
    v46 = 2082;
    v47 = "nil == (entry)";
    v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestions entry";
LABEL_26:
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v25, buf, 0x26u);
    goto LABEL_27;
  }

  if (!_entryCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136446978;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSimpleStrategy.m";
    v42 = 1024;
    v43 = 171;
    v44 = 2082;
    v45 = "[MapsSuggestionsSimpleStrategy _entry:existsInStorage:]";
    v46 = 2082;
    v47 = "nil == (storage)";
    v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires storage";
    goto LABEL_26;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = _entryCopy;
  v29 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v29)
  {
    v28 = v7;
    v9 = *v35;
    v27 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [v8 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              OUTLINED_FUNCTION_8_2();
              if (v17 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v30 + 1) + 8 * j);
              uniqueIdentifier = [v5 uniqueIdentifier];
              uniqueIdentifier2 = [v18 uniqueIdentifier];
              v21 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

              if (v21)
              {

                v24 = 1;
                goto LABEL_23;
              }
            }

            v14 = OUTLINED_FUNCTION_13_1(v22, v23, &v30, v38);
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v27;
      }

      v29 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
    v24 = 0;
LABEL_23:
    v7 = v28;
    goto LABEL_28;
  }

LABEL_27:
  v24 = 0;
LABEL_28:

LABEL_29:
  return v24;
}

- (NSObject)_filteredPreviousResultsCrosscheckingStorage:(id *)storage
{
  v76 = *MEMORY[0x1E69E9840];
  v69 = a2;
  if (storage)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [storage uniqueName];
      OUTLINED_FUNCTION_5_5(uniqueName, 5.778e-34);
      *(v5 + 14) = "_filteredPreviousResults";
      OUTLINED_FUNCTION_10_2(&dword_1C5126000, v6, v7, "{MSgDebug} OBJECT{%@} %s BEGIN");
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2();
      _os_signpost_emit_with_name_impl(v9, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, v11, v12, buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v68 = -[NSObject initWithCapacity:](v13, "initWithCapacity:", [storage[5] count]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v14 = storage[5];
    v15 = [v14 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v71;
      do
      {
        v18 = 0;
        do
        {
          OUTLINED_FUNCTION_8_2();
          if (v19 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v70 + 1) + 8 * v18);
          if (([storage preFiltersKept:{v20, v68}] & 1) == 0)
          {
            v34 = GEOFindOrCreateLog();
            v35 = OUTLINED_FUNCTION_6_4(v34);
            if (v35)
            {
              OUTLINED_FUNCTION_0_7(v35, v36, v37, v38, v39, v40, v41, v42, v68, v69, v43);
              v32 = v13;
              v33 = "DROPPED pre-filtered previous result: %@";
              goto LABEL_17;
            }

LABEL_18:

            goto LABEL_19;
          }

          if (([storage postFiltersKept:v20] & 1) == 0)
          {
            v21 = GEOFindOrCreateLog();
            v22 = OUTLINED_FUNCTION_6_4(v21);
            if (v22)
            {
              OUTLINED_FUNCTION_0_7(v22, v23, v24, v25, v26, v27, v28, v29, v68, v69, v30);
              v32 = v13;
              v33 = "DROPPED post-filtered previous result: %@";
              goto LABEL_17;
            }

            goto LABEL_18;
          }

          if (([(MapsSuggestionsSimpleStrategy *)storage _entry:v20 existsInStorage:v69]& 1) == 0)
          {
            v46 = GEOFindOrCreateLog();
            v47 = OUTLINED_FUNCTION_6_4(v46);
            if (v47)
            {
              OUTLINED_FUNCTION_0_7(v47, v48, v49, v50, v51, v52, v53, v54, v68, v69, v55);
              v32 = v13;
              v33 = "DROPPED unaccounted previous result: %@";
LABEL_17:
              _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, v33, v31, 0xCu);
            }

            goto LABEL_18;
          }

          v44 = [v68 addObject:v20];
LABEL_19:
          ++v18;
        }

        while (v16 != v18);
        v56 = OUTLINED_FUNCTION_13_1(v44, v45, &v70, v74);
        v16 = v56;
      }

      while (v56);
    }

    v57 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [storage uniqueName];
      OUTLINED_FUNCTION_5_5(uniqueName2, 5.778e-34);
      *(v59 + 14) = "_filteredPreviousResults";
      OUTLINED_FUNCTION_10_2(&dword_1C5126000, v60, v61, "{MSgDebug} OBJECT{%@} %s END");
    }

    v62 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v62))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2();
      _os_signpost_emit_with_name_impl(v63, v62, OS_SIGNPOST_INTERVAL_END, v64, v65, v66, buf, 2u);
    }
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

- (void)_addFilter:(uint64_t)filter processingType:
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      if ([v5 conformsToProtocol:&unk_1F4473640])
      {
        objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          if ([objc_opt_class() isEnabled])
          {
            v7 = [(MapsSuggestionsSimpleStrategy *)self _filtersForprocessingType:filter];
            [v7 addObject:v6];
            goto LABEL_17;
          }

          v7 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v12 = 138412290;
            v13 = v6;
            v8 = "Filter:%@ is not enabled. Returning.";
LABEL_15:
            v9 = v7;
            v10 = OS_LOG_TYPE_DEBUG;
            v11 = 12;
            goto LABEL_16;
          }
        }

        else
        {
          v7 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v12 = 138412290;
            v13 = v6;
            v8 = "Filter:%@ does not respond to isEnabled. This SHOULD NOT happen. Please file a radar.";
            goto LABEL_15;
          }
        }

LABEL_17:

        goto LABEL_18;
      }

      v7 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v12 = 136446978;
      OUTLINED_FUNCTION_4();
      v14 = 329;
      OUTLINED_FUNCTION_3();
      v15 = "![filter conformsToProtocol:@protocol(MapsSuggestionsFilter)]";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Filter should conform to MapsSuggestionsFilter protocol";
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v12 = 136446978;
      OUTLINED_FUNCTION_4();
      v14 = 328;
      OUTLINED_FUNCTION_3();
      v15 = "nil == (filter)";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a filter";
    }

    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 38;
LABEL_16:
    _os_log_impl(&dword_1C5126000, v9, v10, v8, &v12, v11);
    goto LABEL_17;
  }

LABEL_18:
}

@end