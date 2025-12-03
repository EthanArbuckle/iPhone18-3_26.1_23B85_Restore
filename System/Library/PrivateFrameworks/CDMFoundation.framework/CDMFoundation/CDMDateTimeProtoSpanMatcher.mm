@interface CDMDateTimeProtoSpanMatcher
+ (id)buildMatchingSpan:(id)span tokenChain:(id)chain;
+ (id)getCDMServiceAssetConfig;
- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)path locale:(id)locale;
- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis;
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

- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis
{
  v40 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
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
  string = [chainCopy string];

  if (string)
  {
    v30 = v5 - 1;
    v31 = v5;
    upDataDetectors = self->_upDataDetectors;
    string2 = [chainCopy string];
    v15 = [(UPDataDetectors *)upDataDetectors matchSpansForUtterance:string2];

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
          v22 = [CDMDateTimeProtoSpanMatcher buildMatchingSpan:v21 tokenChain:chainCopy];
          v23 = MEMORY[0x1E69D1408];
          usoGraph = [v21 usoGraph];
          v25 = [v23 convertFromUsoGraph:usoGraph];

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

- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)path locale:(id)locale
{
  pathCopy = path;
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = CDMDateTimeProtoSpanMatcher;
  v8 = [(CDMDateTimeProtoSpanMatcher *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D14B0]) initLoadFromDataDetectorsDirectoryPath:pathCopy forLocale:localeCopy];
    upDataDetectors = v8->_upDataDetectors;
    v8->_upDataDetectors = v9;
  }

  return v8;
}

+ (id)buildMatchingSpan:(id)span tokenChain:(id)chain
{
  v50 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  chainCopy = chain;
  tokens = [chainCopy tokens];
  v8 = [tokens count];

  tokens2 = [chainCopy tokens];
  v10 = [tokens2 count];

  tokens3 = [chainCopy tokens];
  lastObject = [tokens3 lastObject];
  value = [lastObject value];

  range = [spanCopy range];
  string = [chainCopy string];
  if (range >= [string length])
  {
  }

  else
  {
    range2 = [spanCopy range];
    [spanCopy range];
    v18 = range2 + v17 - 1;
    string2 = [chainCopy string];
    v20 = [string2 length];

    if (v18 < v20)
    {
      v21 = [chainCopy tokenIndexFromCharacterIndex:{objc_msgSend(spanCopy, "range")}];
      range3 = [spanCopy range];
      [spanCopy range];
      v10 = [chainCopy tokenIndexFromCharacterIndex:range3 + v23 - 1] + 1;
      string3 = [chainCopy string];
      range4 = [spanCopy range];
      v27 = [string3 substringWithRange:{range4, v26}];

      value = v27;
      goto LABEL_8;
    }
  }

  v28 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    range5 = [spanCopy range];
    range6 = [spanCopy range];
    [spanCopy range];
    v39 = v38 + range6;
    string4 = [chainCopy string];
    *buf = 136315906;
    v43 = "+[CDMDateTimeProtoSpanMatcher buildMatchingSpan:tokenChain:]";
    v44 = 1024;
    v45 = range5;
    v46 = 1024;
    v47 = v39;
    v48 = 1024;
    v49 = [string4 length];
    _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Forced DateTime span match to align with final token due to invalid DD match range start=<%u>, end=<%u> (exclusive), tokenChain string length=<%u>", buf, 0x1Eu);
  }

  v21 = (v8 - 1);
LABEL_8:
  category = [spanCopy category];
  range7 = [spanCopy range];
  range8 = [spanCopy range];
  [spanCopy range];
  LODWORD(v41) = 0;
  v33 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:category inputStringForDebug:value startTokenIndex:v21 endTokenIndex:v10 startCharIndex:range7 endCharIndex:(v32 + range8) spanMatcherName:v41];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end