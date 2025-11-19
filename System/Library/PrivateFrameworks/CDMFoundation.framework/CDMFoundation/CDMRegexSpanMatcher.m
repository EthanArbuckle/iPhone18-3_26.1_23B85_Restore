@interface CDMRegexSpanMatcher
+ (id)getNumberFormatter:(id)a3;
+ (id)getNumberFormatterForOutput;
+ (id)getNumberString:(id)a3 numberFormatter:(id)a4 numberFormatterForOutput:(id)a5 integerOnly:(BOOL)a6;
+ (id)readRegexAssetFromPath:(id)a3;
- (CDMRegexSpanMatcher)initWithCachePath:(id)a3;
- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4;
@end

@implementation CDMRegexSpanMatcher

- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4
{
  v129 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v90 = a4;
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  spid = v7;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543362;
    v116 = v12;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SpanMatcher", "%{public}@", buf, 0xCu);
  }

  if ([(NSArray *)self->_regexEntries count])
  {
    v88 = v10;
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [v6 string];
    v15 = v14;
    if (v14)
    {
      v93 = [(__CFString *)v14 length];
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      obj = self->_regexEntries;
      v94 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v128 count:16];
      if (v94)
      {
        v97 = 0;
        v98 = 0;
        v92 = *v112;
        v96 = v13;
        v100 = v15;
        v101 = v6;
        while (1)
        {
          v16 = 0;
          do
          {
            if (*v112 != v92)
            {
              v17 = v16;
              objc_enumerationMutation(obj);
              v16 = v17;
            }

            v95 = v16;
            v104 = *(*(&v111 + 1) + 8 * v16);
            v18 = [v104 regularExpression];
            v19 = [v18 matchesInString:v15 options:0 range:{0, v93}];

            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v103 = v19;
            v106 = [v103 countByEnumeratingWithState:&v107 objects:v127 count:16];
            if (v106)
            {
              v105 = *v108;
              do
              {
                v20 = 0;
                do
                {
                  if (*v108 != v105)
                  {
                    objc_enumerationMutation(v103);
                  }

                  v21 = *(*(&v107 + 1) + 8 * v20);
                  v22 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    v23 = [v21 range];
                    v25 = [(__CFString *)v15 substringWithRange:v23, v24];
                    v26 = [v104 label];
                    v27 = [v21 range];
                    v28 = [v21 range];
                    [v21 range];
                    *buf = 136316418;
                    v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                    v117 = 2112;
                    v118 = v15;
                    v119 = 2112;
                    v120 = v25;
                    v121 = 2112;
                    v122 = v26;
                    v123 = 2048;
                    v124 = v27;
                    v125 = 2048;
                    v126 = v29 + v28;
                    _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s For utterance <%@>, CDMRegexSpanMatcher matched text: <%@>, label: <%@>, start index: <%zu>, end index: <%zu>", buf, 0x3Eu);
                  }

                  v30 = [v6 tokenIndexFromCharacterIndex:{objc_msgSend(v21, "range")}];
                  v31 = [v21 range];
                  [v21 range];
                  v33 = [v6 tokenIndexFromCharacterIndex:v31 + v32 - 1];
                  v34 = (v33 + 1);
                  if (v33 != -1)
                  {
                    v35 = [v6 tokens];
                    v36 = [v35 count];

                    if (v36 >= v34)
                    {
                      v38 = [v21 range];
                      v40 = [(__CFString *)v15 substringWithRange:v38, v39];
                      v41 = v104;
                      v42 = [v104 label];
                      v43 = [v21 range];
                      v44 = [v21 range];
                      [v21 range];
                      LODWORD(v87) = 8;
                      v46 = v40;
                      v102 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:v42 inputStringForDebug:v40 startTokenIndex:v30 endTokenIndex:v34 startCharIndex:v43 endCharIndex:(v45 + v44) spanMatcherName:v87];

                      v47 = [v104 label];
                      v48 = [v47 isEqualToString:@"ordinal"];

                      if (v48)
                      {
                        v6 = v101;
                        if ([v21 numberOfRanges] <= 1)
                        {
                          v49 = CDMOSLoggerForCategory(0);
                          v15 = v100;
                          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315138;
                            v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                            v50 = v49;
                            v51 = "%s CDMRegexSpanMatcher created an ordinal match with one or fewer ranges, which indicates that capture groups were not used in the regex definition";
                            goto LABEL_49;
                          }

                          goto LABEL_32;
                        }

                        v54 = [v21 rangeAtIndex:1];
                        v15 = v100;
                        if (v54 == 0x7FFFFFFFFFFFFFFFLL || (v56 = v55, v55 == 0x7FFFFFFFFFFFFFFFLL) || (v57 = v54, v54 + v55 > [(__CFString *)v100 length]))
                        {
                          v49 = CDMOSLoggerForCategory(0);
                          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315138;
                            v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                            v50 = v49;
                            v51 = "%s CDMRegexSpanMatcher created an ordinal match that cannot be resolved to a position in the utterance";
LABEL_49:
                            _os_log_debug_impl(&dword_1DC287000, v50, OS_LOG_TYPE_DEBUG, v51, buf, 0xCu);
                          }

LABEL_32:

                          v58 = v102;
LABEL_41:

                          goto LABEL_42;
                        }

                        v75 = [(__CFString *)v100 substringWithRange:v57, v56];
                        v76 = [v75 integerValue];

                        if (v76 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          v49 = CDMOSLoggerForCategory(0);
                          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315138;
                            v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                            _os_log_impl(&dword_1DC287000, v49, OS_LOG_TYPE_INFO, "%s CDMRegexSpanMatcher invalid ordinal value matched", buf, 0xCu);
                          }

                          goto LABEL_32;
                        }

                        v52 = [v104 label];
                        v77 = [v21 range];
                        v78 = [v21 range];
                        [v21 range];
                        v70 = [CDMVocUsoGraphMapper buildVocUSOGraphForRegexOrdinal:v76 withVocLabel:v52 withInput:v46 withStartCharIndex:v77 withEndCharIndex:(v79 + v78)];
                        v58 = v102;
                        [v102 setUsoGraph:v70];
LABEL_40:

                        [v96 addObject:v58];
                        v15 = v100;
                        goto LABEL_41;
                      }

                      v6 = v101;
                      v99 = [v101 nonWhiteSpaceCountFromToken:v30 toToken:v34];
                      v52 = [v104 label];
                      v53 = [v104 label];
                      if ([v53 isEqualToString:@"integer"])
                      {

LABEL_34:
                        v62 = v97;
                        v61 = v98;
                        if (v98 && v97)
                        {
                          v63 = 0x1E862B000;
                        }

                        else
                        {
                          v64 = [v101 locale];
                          v65 = [CDMRegexSpanMatcher getNumberFormatter:v64];

                          v66 = +[CDMRegexSpanMatcher getNumberFormatterForOutput];

                          v63 = 0x1E862B000uLL;
                          v6 = v101;
                          v62 = v66;
                          v61 = v65;
                        }

                        v67 = *(v63 + 2552);
                        v41 = v104;
                        v68 = [v104 label];
                        v97 = v62;
                        v98 = v61;
                        v69 = [v67 getNumberString:v46 numberFormatter:v61 numberFormatterForOutput:v62 integerOnly:{objc_msgSend(v68, "isEqualToString:", @"integer"}];

                        v52 = v69;
                      }

                      else
                      {
                        v59 = [v104 label];
                        v60 = [v59 isEqualToString:@"decimal"];

                        if (v60)
                        {
                          goto LABEL_34;
                        }
                      }

                      v70 = [v41 label];
                      v71 = [v21 range];
                      v72 = [v21 range];
                      [v21 range];
                      v74 = [CDMVocUsoGraphMapper buildVocUSOGraphWithVocLabel:v70 withSemantic:v52 withInput:v46 withStartCharIndex:v71 withEndCharIndex:(v73 + v72) withTokenCount:v99];
                      v58 = v102;
                      [v102 setUsoGraph:v74];

                      goto LABEL_40;
                    }
                  }

                  v37 = CDMLogContext;
                  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                    v117 = 2112;
                    v118 = @"spanmatch";
                    v119 = 1024;
                    LODWORD(v120) = v34;
                    _os_log_impl(&dword_1DC287000, v37, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nInvalid end token index for regex span matcher, endTokenIdx=%d", buf, 0x1Cu);
                  }

LABEL_42:
                  ++v20;
                }

                while (v106 != v20);
                v80 = [v103 countByEnumeratingWithState:&v107 objects:v127 count:16];
                v106 = v80;
              }

              while (v80);
            }

            v16 = v95 + 1;
            v13 = v96;
          }

          while (v95 + 1 != v94);
          v94 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v128 count:16];
          if (!v94)
          {
            goto LABEL_61;
          }
        }
      }

      v97 = 0;
      v98 = 0;
LABEL_61:

      v83 = CDMLogContext;
      v84 = v83;
      if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v84, OS_SIGNPOST_INTERVAL_END, spid, "SpanMatcher", "", buf, 2u);
      }

      v81 = v13;
      v82 = v98;
    }

    else
    {
      v82 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
        _os_log_impl(&dword_1DC287000, v82, OS_LOG_TYPE_INFO, "%s CDMRegexSpanMatcher received nil utterance", buf, 0xCu);
      }

      v81 = 0;
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s CDMRegexSpanMatcher no regex entities loaded", buf, 0xCu);
    }

    v81 = 0;
  }

  v85 = *MEMORY[0x1E69E9840];

  return v81;
}

- (CDMRegexSpanMatcher)initWithCachePath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CDMRegexSpanMatcher;
  v5 = [(CDMRegexSpanMatcher *)&v13 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = NSTemporaryDirectory();
      v4 = [v6 stringByStandardizingPath];
    }

    v7 = [v4 stringByAppendingPathComponent:@"regex.jsonl"];
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v15 = "[CDMRegexSpanMatcher initWithCachePath:]";
      v16 = 2112;
      v17 = v7;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Loading CDMRegexSpanMatcher data from %@", buf, 0x16u);
    }

    v9 = [CDMRegexSpanMatcher readRegexAssetFromPath:v7];
    regexEntries = v5->_regexEntries;
    v5->_regexEntries = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)getNumberString:(id)a3 numberFormatter:(id)a4 numberFormatterForOutput:(id)a5 integerOnly:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    v12 = [v10 numberFromString:v9];
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12;
    if (v6)
    {
      v14 = [v12 intValue];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      v16 = [v15 stringValue];
    }

    else
    {
      if (v11)
      {
        [v11 stringFromNumber:v12];
      }

      else
      {
        [v12 stringValue];
      }
      v16 = ;
    }

    if (!v16)
    {
LABEL_12:
      if (v6)
      {
        v17 = [v9 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F5800F50}];
      }

      else
      {
        v17 = v9;
      }

      v16 = v17;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)getNumberFormatterForOutput
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];
  [v2 setNumberStyle:1];
  [v2 setUsesGroupingSeparator:0];
  [v2 setMaximumFractionDigits:15];

  return v2;
}

+ (id)getNumberFormatter:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696ADA0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v4];

    [v5 setNumberStyle:1];
    [v5 setLocale:v6];
    [v5 setUsesGroupingSeparator:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readRegexAssetFromPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = a3;
    v5 = [v3 array];
    v16 = 0;
    v6 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v4 encoding:4 error:&v16];

    v7 = v16;
    if (v7)
    {
      v8 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "+[CDMRegexSpanMatcher readRegexAssetFromPath:]";
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Error while loading CDMRegexSpanMatcher asset %@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v8 = [v6 componentsSeparatedByCharactersInSet:v10];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__CDMRegexSpanMatcher_readRegexAssetFromPath___block_invoke;
      v14[3] = &unk_1E862F800;
      v11 = v5;
      v15 = v11;
      [v8 enumerateObjectsUsingBlock:v14];
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

void __46__CDMRegexSpanMatcher_readRegexAssetFromPath___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 isEqualToString:&stru_1F5800F50];

  if ((v6 & 1) == 0)
  {
    v7 = [v3 dataUsingEncoding:4];
    v17 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:4 error:&v17];
    v9 = v17;
    if (v9)
    {
      v10 = v9;
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "+[CDMRegexSpanMatcher readRegexAssetFromPath:]_block_invoke";
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Error while processing regex matcher file for CDMRegexSpanMatcher: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = [v8 objectForKey:@"label"];
      v12 = [v8 objectForKey:@"regex"];
      v16 = 0;
      v13 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v12 options:0 error:&v16];
      v10 = v16;
      if (v10)
      {
        v14 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v19 = "+[CDMRegexSpanMatcher readRegexAssetFromPath:]_block_invoke";
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_1DC287000, &v14->super, OS_LOG_TYPE_INFO, "%s Error while reading regular expression for CDMRegexSpanMatcher %@", buf, 0x16u);
        }
      }

      else
      {
        v14 = [[CDMRegexEntry alloc] initWithRegex:v13 label:v11];
        [*(a1 + 32) addObject:v14];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end