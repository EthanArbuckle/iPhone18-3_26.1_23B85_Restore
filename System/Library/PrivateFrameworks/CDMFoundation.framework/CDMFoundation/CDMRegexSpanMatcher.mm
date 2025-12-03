@interface CDMRegexSpanMatcher
+ (id)getNumberFormatter:(id)formatter;
+ (id)getNumberFormatterForOutput;
+ (id)getNumberString:(id)string numberFormatter:(id)formatter numberFormatterForOutput:(id)output integerOnly:(BOOL)only;
+ (id)readRegexAssetFromPath:(id)path;
- (CDMRegexSpanMatcher)initWithCachePath:(id)path;
- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis;
@end

@implementation CDMRegexSpanMatcher

- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis
{
  v129 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  hypothesisCopy = hypothesis;
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
    array = [MEMORY[0x1E695DF70] array];
    string = [chainCopy string];
    v15 = string;
    if (string)
    {
      v93 = [(__CFString *)string length];
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
        v96 = array;
        v100 = v15;
        v101 = chainCopy;
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
            regularExpression = [v104 regularExpression];
            v19 = [regularExpression matchesInString:v15 options:0 range:{0, v93}];

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
                    range = [v21 range];
                    v25 = [(__CFString *)v15 substringWithRange:range, v24];
                    label = [v104 label];
                    range2 = [v21 range];
                    range3 = [v21 range];
                    [v21 range];
                    *buf = 136316418;
                    v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
                    v117 = 2112;
                    v118 = v15;
                    v119 = 2112;
                    v120 = v25;
                    v121 = 2112;
                    v122 = label;
                    v123 = 2048;
                    v124 = range2;
                    v125 = 2048;
                    v126 = v29 + range3;
                    _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s For utterance <%@>, CDMRegexSpanMatcher matched text: <%@>, label: <%@>, start index: <%zu>, end index: <%zu>", buf, 0x3Eu);
                  }

                  v30 = [chainCopy tokenIndexFromCharacterIndex:{objc_msgSend(v21, "range")}];
                  range4 = [v21 range];
                  [v21 range];
                  v33 = [chainCopy tokenIndexFromCharacterIndex:range4 + v32 - 1];
                  v34 = (v33 + 1);
                  if (v33 != -1)
                  {
                    tokens = [chainCopy tokens];
                    v36 = [tokens count];

                    if (v36 >= v34)
                    {
                      range5 = [v21 range];
                      v40 = [(__CFString *)v15 substringWithRange:range5, v39];
                      v41 = v104;
                      label2 = [v104 label];
                      range6 = [v21 range];
                      range7 = [v21 range];
                      [v21 range];
                      LODWORD(v87) = 8;
                      v46 = v40;
                      v102 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:label2 inputStringForDebug:v40 startTokenIndex:v30 endTokenIndex:v34 startCharIndex:range6 endCharIndex:(v45 + range7) spanMatcherName:v87];

                      label3 = [v104 label];
                      v48 = [label3 isEqualToString:@"ordinal"];

                      if (v48)
                      {
                        chainCopy = v101;
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
                        integerValue = [v75 integerValue];

                        if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
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

                        label4 = [v104 label];
                        range8 = [v21 range];
                        range9 = [v21 range];
                        [v21 range];
                        label8 = [CDMVocUsoGraphMapper buildVocUSOGraphForRegexOrdinal:integerValue withVocLabel:label4 withInput:v46 withStartCharIndex:range8 withEndCharIndex:(v79 + range9)];
                        v58 = v102;
                        [v102 setUsoGraph:label8];
LABEL_40:

                        [v96 addObject:v58];
                        v15 = v100;
                        goto LABEL_41;
                      }

                      chainCopy = v101;
                      v99 = [v101 nonWhiteSpaceCountFromToken:v30 toToken:v34];
                      label4 = [v104 label];
                      label5 = [v104 label];
                      if ([label5 isEqualToString:@"integer"])
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
                          locale = [v101 locale];
                          v65 = [CDMRegexSpanMatcher getNumberFormatter:locale];

                          v66 = +[CDMRegexSpanMatcher getNumberFormatterForOutput];

                          v63 = 0x1E862B000uLL;
                          chainCopy = v101;
                          v62 = v66;
                          v61 = v65;
                        }

                        v67 = *(v63 + 2552);
                        v41 = v104;
                        label6 = [v104 label];
                        v97 = v62;
                        v98 = v61;
                        v69 = [v67 getNumberString:v46 numberFormatter:v61 numberFormatterForOutput:v62 integerOnly:{objc_msgSend(label6, "isEqualToString:", @"integer"}];

                        label4 = v69;
                      }

                      else
                      {
                        label7 = [v104 label];
                        v60 = [label7 isEqualToString:@"decimal"];

                        if (v60)
                        {
                          goto LABEL_34;
                        }
                      }

                      label8 = [v41 label];
                      range10 = [v21 range];
                      range11 = [v21 range];
                      [v21 range];
                      v74 = [CDMVocUsoGraphMapper buildVocUSOGraphWithVocLabel:label8 withSemantic:label4 withInput:v46 withStartCharIndex:range10 withEndCharIndex:(v73 + range11) withTokenCount:v99];
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
            array = v96;
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

      v81 = array;
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
    array = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(array, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v116 = "[CDMRegexSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
      _os_log_impl(&dword_1DC287000, array, OS_LOG_TYPE_INFO, "%s CDMRegexSpanMatcher no regex entities loaded", buf, 0xCu);
    }

    v81 = 0;
  }

  v85 = *MEMORY[0x1E69E9840];

  return v81;
}

- (CDMRegexSpanMatcher)initWithCachePath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CDMRegexSpanMatcher;
  v5 = [(CDMRegexSpanMatcher *)&v13 init];
  if (v5)
  {
    if (!pathCopy)
    {
      v6 = NSTemporaryDirectory();
      pathCopy = [v6 stringByStandardizingPath];
    }

    v7 = [pathCopy stringByAppendingPathComponent:@"regex.jsonl"];
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

+ (id)getNumberString:(id)string numberFormatter:(id)formatter numberFormatterForOutput:(id)output integerOnly:(BOOL)only
{
  onlyCopy = only;
  stringCopy = string;
  formatterCopy = formatter;
  outputCopy = output;
  if (stringCopy)
  {
    if (!formatterCopy)
    {
      goto LABEL_12;
    }

    v12 = [formatterCopy numberFromString:stringCopy];
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12;
    if (onlyCopy)
    {
      intValue = [v12 intValue];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:intValue];
      stringValue = [v15 stringValue];
    }

    else
    {
      if (outputCopy)
      {
        [outputCopy stringFromNumber:v12];
      }

      else
      {
        [v12 stringValue];
      }
      stringValue = ;
    }

    if (!stringValue)
    {
LABEL_12:
      if (onlyCopy)
      {
        v17 = [stringCopy stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F5800F50}];
      }

      else
      {
        v17 = stringCopy;
      }

      stringValue = v17;
    }
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
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

+ (id)getNumberFormatter:(id)formatter
{
  if (formatter)
  {
    v3 = MEMORY[0x1E696ADA0];
    formatterCopy = formatter;
    v5 = objc_alloc_init(v3);
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:formatterCopy];

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

+ (id)readRegexAssetFromPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  if (path)
  {
    v3 = MEMORY[0x1E695DF70];
    pathCopy = path;
    array = [v3 array];
    v16 = 0;
    v6 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:pathCopy encoding:4 error:&v16];

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
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v8 = [v6 componentsSeparatedByCharactersInSet:newlineCharacterSet];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__CDMRegexSpanMatcher_readRegexAssetFromPath___block_invoke;
      v14[3] = &unk_1E862F800;
      v11 = array;
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