@interface CDMDateTimeProtoSpanMatcher
+ (id)buildMatchingSpan:(id)a3 tokenChain:(id)a4;
+ (id)getCDMServiceAssetConfig;
- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)a3 locale:(id)a4;
- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4;
@end

@implementation CDMDateTimeProtoSpanMatcher

+ (id)getCDMServiceAssetConfig
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v7 = @"data_detectors";
  v8 = @"com.apple.siri.nl.data_detectors";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v5 = os_signpost_id_generate(CDMLogContext);
  v6 = CDMLogContext;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543362;
    v39 = v10;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SpanMatcher", "%{public}@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [v32 string];

  if (v12)
  {
    v30 = v5 - 1;
    v31 = v5;
    upDataDetectors = self->_upDataDetectors;
    v14 = [v32 string];
    v15 = [(UPDataDetectors *)upDataDetectors matchSpansForUtterance:v14];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [CDMDateTimeProtoSpanMatcher buildMatchingSpan:v21 tokenChain:v32];
          v23 = MEMORY[0x1E69D1408];
          v24 = [v21 usoGraph];
          v25 = [v23 convertFromUsoGraph:v24];

          [v22 setUsoGraph:v25];
          [v11 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    v8 = v30;
    v5 = v31;
  }

  v26 = CDMLogContext;
  v27 = v26;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v27, OS_SIGNPOST_INTERVAL_END, v5, "SpanMatcher", "", buf, 2u);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CDMDateTimeProtoSpanMatcher;
  v8 = [(CDMDateTimeProtoSpanMatcher *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D14B0]) initLoadFromDataDetectorsDirectoryPath:v6 forLocale:v7];
    upDataDetectors = v8->_upDataDetectors;
    v8->_upDataDetectors = v9;
  }

  return v8;
}

+ (id)buildMatchingSpan:(id)a3 tokenChain:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 tokens];
  v8 = [v7 count];

  v9 = [v6 tokens];
  v10 = [v9 count];

  v11 = [v6 tokens];
  v12 = [v11 lastObject];
  v13 = [v12 value];

  v14 = [v5 range];
  v15 = [v6 string];
  if (v14 >= [v15 length])
  {
  }

  else
  {
    v16 = [v5 range];
    [v5 range];
    v18 = v16 + v17 - 1;
    v19 = [v6 string];
    v20 = [v19 length];

    if (v18 < v20)
    {
      v21 = [v6 tokenIndexFromCharacterIndex:{objc_msgSend(v5, "range")}];
      v22 = [v5 range];
      [v5 range];
      v10 = [v6 tokenIndexFromCharacterIndex:v22 + v23 - 1] + 1;
      v24 = [v6 string];
      v25 = [v5 range];
      v27 = [v24 substringWithRange:{v25, v26}];

      v13 = v27;
      goto LABEL_8;
    }
  }

  v28 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v36 = [v5 range];
    v37 = [v5 range];
    [v5 range];
    v39 = v38 + v37;
    v40 = [v6 string];
    *buf = 136315906;
    v43 = "+[CDMDateTimeProtoSpanMatcher buildMatchingSpan:tokenChain:]";
    v44 = 1024;
    v45 = v36;
    v46 = 1024;
    v47 = v39;
    v48 = 1024;
    v49 = [v40 length];
    _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Forced DateTime span match to align with final token due to invalid DD match range start=<%u>, end=<%u> (exclusive), tokenChain string length=<%u>", buf, 0x1Eu);
  }

  v21 = (v8 - 1);
LABEL_8:
  v29 = [v5 category];
  v30 = [v5 range];
  v31 = [v5 range];
  [v5 range];
  LODWORD(v41) = 0;
  v33 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:v29 inputStringForDebug:v13 startTokenIndex:v21 endTokenIndex:v10 startCharIndex:v30 endCharIndex:(v32 + v31) spanMatcherName:v41];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end