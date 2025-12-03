@interface CDMAsrUtils
+ (id)createAsrUuidCharIndexTimingMaps:(id)maps;
+ (id)createCharIndexTimingMap:(id)map;
@end

@implementation CDMAsrUtils

+ (id)createAsrUuidCharIndexTimingMaps:(id)maps
{
  v34 = *MEMORY[0x1E69E9840];
  mapsCopy = maps;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v28 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Building maps of {char_index: asr_timing} for each ASR alternative", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mapsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = mapsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    *&v8 = 136315650;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [CDMAsrUtils createCharIndexTimingMap:v12, v22, v23];
        v14 = [v12 idA];
        [v5 setObject:v13 forKey:v14];

        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = MEMORY[0x1E69D1428];
          v17 = [v12 idA];
          v18 = [v16 convertUUID:v17];
          *buf = v22;
          v28 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
          v29 = 2112;
          v30 = v18;
          v31 = 2112;
          v32 = v13;
          _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Added asrUuid: %@ {char_index->asr_timing} asrMap: %@", buf, 0x20u);
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
    v29 = 2112;
    v30 = v5;
    _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Created asrMaps: %@", buf, 0x16u);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)createCharIndexTimingMap:(id)map
{
  v27 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  asrTokens = [mapCopy asrTokens];
  v6 = [asrTokens countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(asrTokens);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "startMilliSeconds")}];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "beginIndex")}];
        [v4 setObject:v11 forKey:v12];

        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "endMilliSeconds")}];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "endIndex")}];
        [v4 setObject:v13 forKey:v14];
      }

      v7 = [asrTokens countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "+[CDMAsrUtils createCharIndexTimingMap:]";
    v24 = 2112;
    v25 = v4;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Created {char_index: asr_timing} dict: %@", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end