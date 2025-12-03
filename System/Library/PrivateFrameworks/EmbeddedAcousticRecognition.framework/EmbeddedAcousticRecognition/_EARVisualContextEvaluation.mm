@interface _EARVisualContextEvaluation
+ (void)initialize;
- (id)computeContextualizationMetricsWithMesssagesContext:(id)context correctedText:(id)text recognizedText:(id)recognizedText profilePath:(id)path;
@end

@implementation _EARVisualContextEvaluation

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id)computeContextualizationMetricsWithMesssagesContext:(id)context correctedText:(id)text recognizedText:(id)recognizedText profilePath:(id)path
{
  v113 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  textCopy = text;
  recognizedTextCopy = recognizedText;
  pathCopy = path;
  v90 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v89 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v88 = objc_alloc_init(_EAREntityTagger);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = contextCopy;
  v9 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v9)
  {
    v10 = *v96;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v96 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v95 + 1) + 8 * i);
        sender = [v12 sender];
        [v90 addObject:sender];

        messages = [v12 messages];
        v15 = [(_EAREntityTagger *)v88 tagEntitiesInArray:messages];

        [v89 unionSet:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc(MEMORY[0x1E6977A78]);
  v105 = *MEMORY[0x1E69779D8];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v74 = [v16 initWithTagSchemes:v17];

  tokenizeAndTagText(v74, textCopy, v75, v81);
  v18 = [v75 count];
  if (v18 >= 0x65)
  {
    v19 = EARLogger::QuasarOSLogger(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "Tokenized corrected text exceeds token count threshold. Skip Contextualization Metrics";
LABEL_14:
      _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  tokenizeAndTagText(v74, recognizedTextCopy, v73, v76);
  v21 = [v73 count];
  if (v21 >= 0x65)
  {
    v19 = EARLogger::QuasarOSLogger(v21);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "Tokenized Recognized text exceeds token count threshold. Skip Contextualization Metrics";
      goto LABEL_14;
    }

LABEL_15:
    v77 = MEMORY[0x1E695E0F0];
    goto LABEL_77;
  }

  v22 = v75;
  v23 = v73;
  v86 = v22;
  v24 = objc_alloc_init(_EAREditDistance);
  *buf = 0;
  v108 = buf;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__11;
  v111 = __Block_byref_object_dispose__11;
  v112 = 0;
  *&v100 = 0;
  *(&v100 + 1) = &v100;
  *&v101 = 0x3032000000;
  *(&v101 + 1) = __Block_byref_object_copy__11;
  *&v102 = __Block_byref_object_dispose__11;
  *(&v102 + 1) = 0;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = ___ZL22generateConfusionPairsP7NSArrayIP8NSStringES3__block_invoke;
  v99[3] = &unk_1E7C1BBE0;
  v99[4] = buf;
  v99[5] = &v100;
  [(_EAREditDistance *)v24 editAlignmentWithRefTokens:v22 hypTokens:v23 placeholderSymbol:@"~" caseInsensitive:0 removeWordSense:1 completion:v99];
  v25 = *(v108 + 5);
  if (v25 && *(*(&v100 + 1) + 40) && (v26 = [v25 count], v26 == objc_msgSend(*(*(&v100 + 1) + 40), "count")))
  {
    v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = [*(*(&v100 + 1) + 40) count];
    if (v27 >= 1)
    {
      v28 = 0;
      v83 = 0;
      v29 = 0;
      while (1)
      {
        v30 = [*(*(&v100 + 1) + 40) objectAtIndex:v28];
        v31 = [*(v108 + 5) objectAtIndex:v28];
        v32 = [v30 isEqualToString:v31];

        if (!v32)
        {
          break;
        }

        ++v28;
LABEL_23:
        if (v28 >= v27)
        {
          goto LABEL_41;
        }
      }

      v33 = objc_alloc_init(_EARConfusionPair);
      [(_EARConfusionPair *)v33 setCorrectedTokenStartIndex:v28 - v83];
      [(_EARConfusionPair *)v33 setRecognizedTokenStartIndex:v28 - v29];
      if (v28 < v27)
      {
        while (1)
        {
          v34 = [*(*(&v100 + 1) + 40) objectAtIndexedSubscript:v28];
          v35 = [*(v108 + 5) objectAtIndexedSubscript:v28];
          if ([v34 isEqualToString:v35])
          {
            break;
          }

          if ([v34 isEqualToString:@"~"])
          {
            correctedTokens = [(_EARConfusionPair *)v33 correctedTokens];
            [correctedTokens addObject:v35];
            ++v29;
          }

          else if ([v35 isEqualToString:@"~"])
          {
            correctedTokens = [(_EARConfusionPair *)v33 recognizedTokens];
            [correctedTokens addObject:v34];
            ++v83;
          }

          else
          {
            recognizedTokens = [(_EARConfusionPair *)v33 recognizedTokens];
            [recognizedTokens addObject:v34];

            correctedTokens = [(_EARConfusionPair *)v33 correctedTokens];
            [correctedTokens addObject:v35];
          }

          if (++v28 >= v27)
          {
            v28 = v27;
            goto LABEL_35;
          }
        }
      }

LABEL_35:
      recognizedTokens2 = [(_EARConfusionPair *)v33 recognizedTokens];
      if ([recognizedTokens2 count])
      {
      }

      else
      {
        correctedTokens2 = [(_EARConfusionPair *)v33 correctedTokens];
        v40 = [correctedTokens2 count] == 0;

        if (v40)
        {
LABEL_39:

          goto LABEL_23;
        }
      }

      [v68 addObject:v33];
      goto LABEL_39;
    }
  }

  else
  {
    v68 = 0;
  }

LABEL_41:
  _Block_object_dispose(&v100, 8);

  _Block_object_dispose(buf, 8);
  if ([pathCopy length])
  {
    v79 = [[_EARUserProfileContainer alloc] initWithPath:pathCopy error:0];
  }

  else
  {
    v41 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v41, OS_LOG_TYPE_INFO, "No profile path is provided for visual context evaluation", buf, 2u);
    }

    v79 = 0;
  }

  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v78 = v68;
  v82 = [v78 countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v82)
  {
    v80 = *v92;
    do
    {
      v87 = 0;
      do
      {
        if (*v92 != v80)
        {
          objc_enumerationMutation(v78);
        }

        v42 = *(*(&v91 + 1) + 8 * v87);
        correctedTokenStartIndex = [v42 correctedTokenStartIndex];
        correctedTokens3 = [v42 correctedTokens];
        v45 = entityFromTokenIndexRange(correctedTokenStartIndex, [correctedTokens3 count], v81);

        v84 = [v45 length];
        if (v84)
        {
          correctedTokens4 = [v42 correctedTokens];
          v47 = v90;
          v48 = v89;
          v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v50 = correctedTokens4;
          v51 = [v50 countByEnumeratingWithState:&v100 objects:buf count:16];
          if (v51)
          {
            v52 = *v101;
LABEL_54:
            v53 = 0;
            while (1)
            {
              if (*v101 != v52)
              {
                objc_enumerationMutation(v50);
              }

              v54 = *(*(&v100 + 1) + 8 * v53);
              if ([v47 containsObject:v54])
              {
                [v49 addObject:@"Sender"];
              }

              if ([v48 containsObject:v54])
              {
                [v49 addObject:@"Thread"];
              }

              if ([v49 count] == 2)
              {
                break;
              }

              if (v51 == ++v53)
              {
                v51 = [v50 countByEnumeratingWithState:&v100 objects:buf count:16];
                if (v51)
                {
                  goto LABEL_54;
                }

                break;
              }
            }
          }

          allObjects = [v49 allObjects];

          correctedTokens5 = [v42 correctedTokens];
          v57 = getTokensProfileCategories(correctedTokens5, v79);
          goto LABEL_65;
        }

        recognizedTokenStartIndex = [v42 recognizedTokenStartIndex];
        recognizedTokens3 = [v42 recognizedTokens];
        correctedTokens5 = entityFromTokenIndexRange(recognizedTokenStartIndex, [recognizedTokens3 count], v76);

        if (![correctedTokens5 length])
        {
          allObjects = 0;
          v57 = 0;
LABEL_65:
          v58 = 0;
          goto LABEL_66;
        }

        recognizedTokens4 = [v42 recognizedTokens];
        v57 = getTokensProfileCategories(recognizedTokens4, v79);

        if (![v57 count])
        {
          allObjects = 0;
          goto LABEL_65;
        }

        v63 = MEMORY[0x1E695DEC8];
        v64 = [v57 objectAtIndex:0];
        v65 = [v63 arrayWithObject:v64];

        allObjects = 0;
        v58 = 1;
        v57 = v65;
LABEL_66:

        if (((v84 != 0) | v58) == 1)
        {
          v59 = [[_EARVisualContextMetrics alloc] initWithEntityCategory:v45 visualContextCategories:allObjects speechProfileCategories:v57];
          [v77 addObject:v59];
        }

        ++v87;
      }

      while (v87 != v82);
      v66 = [v78 countByEnumeratingWithState:&v91 objects:v104 count:16];
      v82 = v66;
    }

    while (v66);
  }

  v19 = v78;
LABEL_77:

  return v77;
}

@end