@interface CDMSpanMatchUtils
+ (BOOL)isSamePosition:(id)a3 spanB:(id)a4 asrMapA:(id)a5 asrMapB:(id)a6 cdmTokenChainA:(id)a7 cdmTokenChainB:(id)a8;
+ (BOOL)isSpanOnlyForExternalParsers:(id)a3;
+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)a3;
+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)a3 charIndexEnd:(int64_t)a4 asrTimingMap:(id)a5 asrHypothesis:(id)a6;
+ (void)addAsrConfidenceToSpans:(id)a3 tokenChain:(id)a4 asrTimingMap:(id)a5 asrHypothesis:(id)a6;
+ (void)addEntitySpansFrom:(id)a3 to:(id)a4 confidence:(double)a5;
+ (void)mergeAsrAlternativeIntoSpan:(id)a3 asrAltSpan:(id)a4 asrAltCdmTokenChain:(id)a5 asrAltHypothesis:(id)a6 asrAltTimingMap:(id)a7;
+ (void)postProcessSpans:(id)a3 asrSpansMap:(id)a4 asrHypothesis:(id)a5 asrMaps:(id)a6 topAsrTokenChain:(id)a7 asrMapTopAsr:(id)a8 topAsrSpansFiltered:(id)a9;
+ (void)processAsrAlternative:(id)a3 topAsrTokenChain:(id)a4 cdmTokenChainAltAsr:(id)a5 asrMapTopAsr:(id)a6 asrMapAltAsr:(id)a7 spansTopAsr:(id)a8 asrHypothesis:(id)a9;
+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)a3;
@end

@implementation CDMSpanMatchUtils

+ (void)postProcessSpans:(id)a3 asrSpansMap:(id)a4 asrHypothesis:(id)a5 asrMaps:(id)a6 topAsrTokenChain:(id)a7 asrMapTopAsr:(id)a8 topAsrSpansFiltered:(id)a9
{
  v54 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v49 = a4;
  v15 = a5;
  v48 = a6;
  v47 = a7;
  v46 = a8;
  v16 = a9;
  if ([v14 count] > 1)
  {
    v19 = [v14 count];
    v20 = [v15 count];
    v17 = CDMOSLoggerForCategory(0);
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v19 == v20)
    {
      if (v21)
      {
        *buf = 136315138;
        v51 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Processing ASR alternatives 2..n", buf, 0xCu);
      }

      v22 = os_signpost_id_generate(CDMLogContext);
      v23 = CDMLogContext;
      v24 = v23;
      v44 = v22 - 1;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SpanMatcher", "Post-process ASR alternative(s)", buf, 2u);
      }

      spid = v22;

      v45 = [MEMORY[0x1E695DF00] date];
      if ([v14 count] >= 2)
      {
        v25 = 1;
        do
        {
          v26 = [v14 objectAtIndexedSubscript:v25];
          v27 = [CDMTokenChain alloc];
          v28 = [v26 tokenChain];
          v29 = [(CDMTokenChain *)v27 initWithProtoTokenChain:v28];

          v30 = [v26 asrId];
          v31 = [v48 objectForKey:v30];

          v32 = [v26 asrId];
          v33 = [v49 objectForKey:v32];

          v34 = CDMOSLoggerForCategory(0);
          v35 = v25 + 1;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v51 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
            v52 = 1024;
            LODWORD(v53) = v25 + 1;
            _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s Processing spans from ASR alt #%d", buf, 0x12u);
          }

          v36 = [v15 objectAtIndexedSubscript:v25];
          [CDMSpanMatchUtils processAsrAlternative:v33 topAsrTokenChain:v47 cdmTokenChainAltAsr:v29 asrMapTopAsr:v46 asrMapAltAsr:v31 spansTopAsr:v16 asrHypothesis:v36, spid];

          v25 = v35;
        }

        while ([v14 count] > v35);
      }

      v17 = v45;
      [v45 timeIntervalSinceNow];
      v38 = v37;
      v39 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v51 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
        v52 = 2048;
        v53 = -v38;
        _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s Done post-processing ASR alternatives, took %f sec", buf, 0x16u);
      }

      v40 = CDMLogContext;
      v41 = v40;
      if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v41, OS_SIGNPOST_INTERVAL_END, spid, "SpanMatcher", "", buf, 2u);
      }
    }

    else if (v21)
    {
      *buf = 136315138;
      v51 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
      v18 = "%s Span match requests and ASR hypothesis counts are not equal, skipping span matching for ASR alternatives";
      goto LABEL_18;
    }
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v51 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
      v18 = "%s Moving on as there are no ASR alternatives to process";
LABEL_18:
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

+ (void)processAsrAlternative:(id)a3 topAsrTokenChain:(id)a4 cdmTokenChainAltAsr:(id)a5 asrMapTopAsr:(id)a6 asrMapAltAsr:(id)a7 spansTopAsr:(id)a8 asrHypothesis:(id)a9
{
  v69 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v47 = a4;
  v49 = a5;
  v46 = a6;
  v48 = a7;
  v42 = a8;
  v45 = a9;
  v15 = os_signpost_id_generate(CDMLogContext);
  v16 = CDMLogContext;
  v17 = v16;
  v39 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SpanMatcher", "Post-process one ASR alternative", buf, 2u);
  }

  spid = v15;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v14;
  v43 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v43)
  {
    v41 = *v56;
    do
    {
      v18 = 0;
      do
      {
        if (*v56 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v18;
        v19 = *(*(&v55 + 1) + 8 * v18);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v50 = v42;
        v20 = [v50 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v52;
          do
          {
            v23 = 0;
            do
            {
              if (*v52 != v22)
              {
                objc_enumerationMutation(v50);
              }

              v24 = *(*(&v51 + 1) + 8 * v23);
              v25 = [v19 label];
              v26 = [v24 label];
              if (([v25 isEqualToString:v26] & 1) == 0)
              {
                goto LABEL_17;
              }

              v27 = [v19 input];
              v28 = [v24 input];
              if ([v27 isEqualToString:v28])
              {

LABEL_17:
                goto LABEL_18;
              }

              v29 = [CDMSpanMatchUtils isSamePosition:v24 spanB:v19 asrMapA:v46 asrMapB:v48 cdmTokenChainA:v47 cdmTokenChainB:v49];

              if (v29)
              {
                v30 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v31 = [v24 input];
                  v32 = [v19 input];
                  v33 = [v19 label];
                  *buf = 136315906;
                  v60 = "+[CDMSpanMatchUtils processAsrAlternative:topAsrTokenChain:cdmTokenChainAltAsr:asrMapTopAsr:asrMapAltAsr:spansTopAsr:asrHypothesis:]";
                  v61 = 2112;
                  v62 = v31;
                  v63 = 2112;
                  v64 = v32;
                  v65 = 2112;
                  v66 = v33;
                  _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s Updating UsoEntityIdentifier as these 2 spans have 1) Same spanLabel 2) Different input value 3) AND are considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@]", buf, 0x2Au);
                }

                [CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:v24 asrAltSpan:v19 asrAltCdmTokenChain:v49 asrAltHypothesis:v45 asrAltTimingMap:v48];
              }

LABEL_18:
              ++v23;
            }

            while (v21 != v23);
            v34 = [v50 countByEnumeratingWithState:&v51 objects:v67 count:16];
            v21 = v34;
          }

          while (v34);
        }

        v18 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v43);
  }

  v35 = CDMLogContext;
  v36 = v35;
  if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v36, OS_SIGNPOST_INTERVAL_END, spid, "SpanMatcher", "", buf, 2u);
  }

  v37 = *MEMORY[0x1E69E9840];
}

+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 hasUsoGraph])
        {
          v9 = [v8 usoGraph];
          v10 = [v9 alignments];

          if (v10)
          {
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v11 = [v8 usoGraph];
            v12 = [v11 alignments];

            v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v19;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v19 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [*(*(&v18 + 1) + 8 * j) setAsrHypothesisIndex:0];
                }

                v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSpanOnlyForExternalParsers:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasUsoGraph])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v38 = v3;
    v4 = [v3 usoGraph];
    v5 = [v4 identifiers];

    v6 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      v9 = *MEMORY[0x1E69D24A8];
      v10 = *MEMORY[0x1E69D2458];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          v13 = [v12 value];
          if ([v13 isEqualToString:v9])
          {
            v14 = [v12 namespaceA];
            v15 = [v14 value];
            v16 = [v15 isEqualToString:v10];

            if (v16)
            {
LABEL_36:
              v32 = 1;
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v17 = [v38 usoGraph];
      v5 = [v17 spans];

      v36 = [v5 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v36)
      {
        v18 = *v45;
        v19 = *MEMORY[0x1E69D24A8];
        v39 = *MEMORY[0x1E69D2458];
        v35 = *v45;
        do
        {
          v20 = 0;
          do
          {
            if (*v45 != v18)
            {
              objc_enumerationMutation(v5);
            }

            v37 = v20;
            v21 = *(*(&v44 + 1) + 8 * v20);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v22 = [v21 properties];
            v23 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v41;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v41 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v40 + 1) + 8 * j);
                  if ([v27 hasValueString])
                  {
                    v28 = [v27 valueString];
                    v29 = [v28 value];
                    if ([v29 isEqualToString:v19])
                    {
                      v30 = [v27 key];
                      v31 = [v30 isEqualToString:v39];

                      if (v31)
                      {

                        goto LABEL_36;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v24);
            }

            v20 = v37 + 1;
            v18 = v35;
          }

          while (v37 + 1 != v36);
          v36 = [v5 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v36);
      }

      v32 = 0;
LABEL_37:
    }

    else
    {
      v32 = 0;
    }

    v3 = v38;
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (void)addEntitySpansFrom:(id)a3 to:(id)a4 confidence:(double)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v7 usoGraph];
  v10 = [v9 spans];

  v11 = v10;
  v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v29;
    *&v13 = 136315394;
    v27 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 copy];
        v20 = objc_alloc_init(MEMORY[0x1E69D1138]);
        v21 = [v7 input];
        [v20 setAlternative:v21];

        if (a5 != -1.0)
        {
          v22 = objc_alloc_init(MEMORY[0x1E69D1118]);
          v16 = a5;
          *&v23 = v16;
          [v22 setValue:v23];
          [v20 setProbability:v22];
        }

        [v19 addAlternatives:v20];
        v24 = [v8 usoGraph];
        [v24 addSpans:v19];

        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v27;
          v33 = "+[CDMSpanMatchUtils addEntitySpansFrom:to:confidence:]";
          v34 = 2112;
          v35 = v18;
          _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s Copied to spanDest (i.e. top ASR's span), usoEntitySpan:%@", buf, 0x16u);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (void)mergeAsrAlternativeIntoSpan:(id)a3 asrAltSpan:(id)a4 asrAltCdmTokenChain:(id)a5 asrAltHypothesis:(id)a6 asrAltTimingMap:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (([v13 hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = v13;
    v27 = "%s [WARN]: Did not expect asrAltSpan without USO graph. asrAltSpan=%@";
LABEL_17:
    _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
    goto LABEL_41;
  }

  if (([v12 hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = v12;
    v27 = "%s [WARN]: Did not expect spanDest without USO graph. spanDest=%@";
    goto LABEL_17;
  }

  v60 = v16;
  v57 = v15;
  v58 = v14;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v17 = [v12 usoGraph];
  v18 = [v17 identifiers];

  v19 = [v18 countByEnumeratingWithState:&v65 objects:v76 count:16];
  v56 = a1;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v66;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v65 + 1) + 8 * i);
        if ([v24 groupIndex] > v21)
        {
          v21 = [v24 groupIndex];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v20);
    v25 = v21 + 1;
  }

  else
  {
    v25 = 1;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = v13;
  v28 = [v13 usoGraph];
  v29 = [v28 identifiers];

  v30 = [v29 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v26 = 0;
    v32 = *v62;
    do
    {
      v33 = 0;
      v34 = v26;
      do
      {
        if (*v62 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v61 + 1) + 8 * v33);
        [v35 setGroupIndex:v25];
        v36 = [v12 usoGraph];
        [v36 addIdentifiers:v35];

        v37 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
          v71 = 2112;
          v72 = v35;
          _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s Copied to spanDest (i.e. top ASR's span), identifier:%@", buf, 0x16u);
        }

        v26 = v35;
        ++v33;
        v34 = v26;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v31);
  }

  else
  {
    v26 = 0;
  }

  v14 = v58;
  v38 = [v58 tokens];
  v13 = v59;
  v39 = [v38 objectAtIndexedSubscript:{-[NSObject startTokenIndex](v59, "startTokenIndex")}];
  v40 = [v39 begin];

  v41 = [v58 tokens];
  v42 = [v41 objectAtIndexedSubscript:{-[NSObject endTokenIndex](v59, "endTokenIndex") - 1}];
  v43 = [v42 end];

  v44 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v54 = [v59 label];
    v55 = [v59 input];
    *buf = 136315650;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = v54;
    v73 = 2112;
    v74 = v55;
    _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);

    v13 = v59;
  }

  v15 = v57;
  v16 = v60;
  [v56 calculateAsrConfidenceForCharIndexBegin:v40 charIndexEnd:v43 asrTimingMap:v60 asrHypothesis:v57];
  v46 = v45;
  if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
  {
    [v56 addEntitySpansFrom:v13 to:v12 confidence:v46];
  }

  if (v46 == -1.0)
  {
    v47 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
      _os_log_debug_impl(&dword_1DC287000, v47, OS_LOG_TYPE_DEBUG, "%s ASR confidence is missing on one or more ASR tokens, not annotating the span", buf, 0xCu);
    }
  }

  else
  {
    v48 = [v13 input];
    v49 = [v26 nodeIndex];
    v50 = [v26 backingAppBundleId];
    v47 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:v48 nameSpace:@"asr_alternative" nodeIndex:v49 backingAppBundleId:v50 sourceComponent:[v26 sourceComponent] asrConfidence:v46];

    [v47 setGroupIndex:v25];
    v51 = [v12 usoGraph];
    [v51 addIdentifiers:v47];

    v52 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
      v71 = 2112;
      v72 = v47;
      _os_log_debug_impl(&dword_1DC287000, v52, OS_LOG_TYPE_DEBUG, "%s Added an extra asr_alternative to spanDest (i.e. top ASR's span), asrAltIdentifier:%@", buf, 0x16u);
    }

    v16 = v60;
  }

LABEL_41:
  v53 = *MEMORY[0x1E69E9840];
}

+ (void)addAsrConfidenceToSpans:(id)a3 tokenChain:(id)a4 asrTimingMap:(id)a5 asrHypothesis:(id)a6
{
  v85 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v62 = a5;
  v61 = a6;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v74;
    v59 = v12;
    v60 = v11;
    v58 = a1;
    v65 = *v74;
    while (2)
    {
      v16 = 0;
      v66 = v14;
      do
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v73 + 1) + 8 * v16);
        v18 = *[v17 matcherNames];
        v67 = v16;
        if (v18 >= 9)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
        }

        else
        {
          v19 = off_1E862FB60[v18];
        }

        v68 = v19;
        if ([a1 matcherNameIsSupportedForAsrAlternative:v19])
        {
          if ([v17 hasUsoGraph])
          {
            v20 = [v17 usoGraph];
            v21 = [v20 identifiers];
            v22 = [v21 count];

            v14 = v66;
            v15 = v65;
            if (v22)
            {
              v23 = [v11 tokens];
              v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v17, "startTokenIndex")}];
              v25 = [v24 begin];

              if ([v17 endTokenIndex])
              {
                v26 = [v11 tokens];
                v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v17, "endTokenIndex") - 1}];
                v28 = [v27 end];

                v29 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v64 = [v17 label];
                  v54 = [v17 input];
                  *buf = 136315650;
                  v79 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                  v80 = 2112;
                  v81 = v64;
                  v82 = 2112;
                  v83 = v54;
                  v55 = v54;
                  _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);
                }

                [a1 calculateAsrConfidenceForCharIndexBegin:v25 charIndexEnd:v28 asrTimingMap:v62 asrHypothesis:v61];
                if (v30 == -1.0)
                {
                  v56 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315138;
                    v79 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                    _os_log_debug_impl(&dword_1DC287000, v56, OS_LOG_TYPE_DEBUG, "%s ASR confidence is missing on one or more ASR tokens, not annotating the span", buf, 0xCu);
                  }

                  goto LABEL_36;
                }

                v31 = v30;
                v32 = [v17 usoGraph];
                v33 = [v32 identifiers];
                v34 = [v33 objectAtIndexedSubscript:0];

                v35 = [v17 usoGraph];
                v36 = [v35 identifiers];
                v37 = [v17 input];
                v38 = [v34 nodeIndex];
                v39 = [v34 backingAppBundleId];
                v63 = v34;
                v40 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:v37 nameSpace:@"asr_alternative" nodeIndex:v38 backingAppBundleId:v39 sourceComponent:[v34 sourceComponent] asrConfidence:v31];
                [v36 addObject:v40];

                if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
                {
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v41 = [v17 usoGraph];
                  v42 = [v41 spans];

                  v43 = [v42 countByEnumeratingWithState:&v69 objects:v77 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = *v70;
                    v46 = v31;
                    do
                    {
                      for (i = 0; i != v44; ++i)
                      {
                        if (*v70 != v45)
                        {
                          objc_enumerationMutation(v42);
                        }

                        v48 = *(*(&v69 + 1) + 8 * i);
                        v49 = objc_alloc_init(MEMORY[0x1E69D1138]);
                        v50 = [v17 input];
                        [v49 setAlternative:v50];

                        v51 = objc_alloc_init(MEMORY[0x1E69D1118]);
                        *&v52 = v46;
                        [v51 setValue:v52];
                        [v49 setProbability:v51];

                        [v48 addAlternatives:v49];
                      }

                      v44 = [v42 countByEnumeratingWithState:&v69 objects:v77 count:16];
                    }

                    while (v44);
                  }

                  v12 = v59;
                  v11 = v60;
                  a1 = v58;
                  v15 = v65;
                  v14 = v66;
                  v53 = v63;
                }

                else
                {
                  a1 = v58;
                  v12 = v59;
                  v15 = v65;
                  v14 = v66;
                  v53 = v34;
                  v11 = v60;
                }
              }

              else
              {
                v53 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v79 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                  v80 = 2112;
                  v81 = v17;
                  _os_log_error_impl(&dword_1DC287000, v53, OS_LOG_TYPE_ERROR, "%s [ERR]: SpanMatchUtil end token index should not be smaller than 1. Offending span is %@", buf, 0x16u);
                }

                v15 = v65;
                v14 = v66;
              }
            }
          }
        }

        v16 = v67 + 1;
      }

      while (v67 + 1 != v14);
      v14 = [v12 countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

  v57 = *MEMORY[0x1E69E9840];
}

+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SIRI_VOCABULARY_MATCHER"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"VOC_TRIE_MATCHER"];
  }

  return v4;
}

+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)a3 charIndexEnd:(int64_t)a4 asrTimingMap:(id)a5 asrHypothesis:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if ([v10 asrTokensCount])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12 = [v9 objectForKey:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14 = [v9 objectForKey:v13];

    v15 = 0.0;
    if (v12 && v14)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = [v10 asrTokens];
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v15 = -1.0;
      if (v17)
      {
        v19 = v17;
        v32 = v9;
        v20 = 0;
        v21 = *v34;
        v22 = 0.0;
        *&v18 = 136315394;
        v31 = v18;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            if (![v24 hasConfidenceScore])
            {
              goto LABEL_20;
            }

            v25 = [v24 startMilliSeconds];
            if (v25 >= [v12 intValue])
            {
              v26 = [v24 endMilliSeconds];
              if (v26 > [v14 intValue])
              {
                goto LABEL_17;
              }

              v27 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = v31;
                v38 = "+[CDMSpanMatchUtils calculateAsrConfidenceForCharIndexBegin:charIndexEnd:asrTimingMap:asrHypothesis:]";
                v39 = 2112;
                v40 = *&v24;
                _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Average ASR confidence calculation includes token=%@", buf, 0x16u);
              }

              [v24 confidenceScore];
              v22 = v22 + v28;
              ++v20;
            }
          }

          v19 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

LABEL_17:

        if (v20)
        {
          v16 = CDMOSLoggerForCategory(0);
          v15 = v22 / v20;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v38 = "+[CDMSpanMatchUtils calculateAsrConfidenceForCharIndexBegin:charIndexEnd:asrTimingMap:asrHypothesis:]";
            v39 = 2048;
            v40 = v22 / v20;
            _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Average ASR confidence is %f", buf, 0x16u);
          }

LABEL_20:
          v9 = v32;
          goto LABEL_21;
        }

        v15 = -1.0;
        v9 = v32;
      }

      else
      {
LABEL_21:
      }
    }
  }

  else
  {
    v15 = -1.0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)isSamePosition:(id)a3 spanB:(id)a4 asrMapA:(id)a5 asrMapB:(id)a6 cdmTokenChainA:(id)a7 cdmTokenChainB:(id)a8
{
  v90 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 startTokenIndex];
  v20 = [v17 tokens];
  v21 = [v20 count];

  if (v21 <= v19)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v52 = [v13 startTokenIndex];
      v53 = [v17 tokens];
      *buf = 136315650;
      v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v78 = 1024;
      *v79 = v52;
      *&v79[4] = 2048;
      *&v79[6] = [v53 count];
      v54 = "%s [WARN]: spanA.startTokenIndex=%u is out of range with tokens.count=%zd";
LABEL_20:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v54, buf, 0x1Cu);
    }

LABEL_28:
    v51 = 0;
    goto LABEL_29;
  }

  v22 = [v17 tokens];
  v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v13, "startTokenIndex")}];
  v24 = [v23 begin];

  v25 = [v13 endTokenIndex] - 1;
  v26 = [v17 tokens];
  v27 = [v26 count];

  if (v27 <= v25)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v55 = [v13 endTokenIndex] - 1;
      v56 = [v17 tokens];
      *buf = 136315650;
      v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v78 = 1024;
      *v79 = v55;
      *&v79[4] = 2048;
      *&v79[6] = [v56 count];
      v57 = "%s [WARN]: (spanA.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
LABEL_23:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v57, buf, 0x1Cu);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v28 = [v17 tokens];
  v29 = [v28 objectAtIndexedSubscript:{objc_msgSend(v13, "endTokenIndex") - 1}];
  v74 = [v29 end];

  LODWORD(v28) = [v14 startTokenIndex];
  v30 = [v18 tokens];
  v31 = [v30 count];

  if (v31 <= v28)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v58 = [v14 startTokenIndex];
    v53 = [v18 tokens];
    *buf = 136315650;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 1024;
    *v79 = v58;
    *&v79[4] = 2048;
    *&v79[6] = [v53 count];
    v54 = "%s [WARN]: spanB.startTokenIndex=%u is out of range with tokens.count=%zd";
    goto LABEL_20;
  }

  v32 = [v18 tokens];
  v33 = [v32 objectAtIndexedSubscript:{objc_msgSend(v14, "startTokenIndex")}];
  v72 = [v33 begin];

  v34 = [v14 endTokenIndex] - 1;
  v35 = [v18 tokens];
  v36 = [v35 count];

  if (v36 <= v34)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v59 = [v14 endTokenIndex] - 1;
    v56 = [v18 tokens];
    *buf = 136315650;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 1024;
    *v79 = v59;
    *&v79[4] = 2048;
    *&v79[6] = [v56 count];
    v57 = "%s [WARN]: (spanB.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
    goto LABEL_23;
  }

  v37 = [v18 tokens];
  v38 = [v37 objectAtIndexedSubscript:{objc_msgSend(v14, "endTokenIndex") - 1}];
  v39 = [v38 end];

  v40 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 2048;
    *v79 = v24;
    *&v79[8] = 2048;
    *&v79[10] = v74;
    v80 = 2048;
    v81 = v72;
    v82 = 2048;
    v83 = v39;
    v84 = 2112;
    v85 = v15;
    v86 = 2112;
    v87 = v16;
    _os_log_debug_impl(&dword_1DC287000, v40, OS_LOG_TYPE_DEBUG, "%s Used span's start/end token index + CDMTokenChain's indices to find the ASR character indices. spanACharIndexBegin=%ld, spanACharIndexEnd=%ld, spanBCharIndexBegin=%ld, spanBCharIndexEnd=%ld, asrMapA=%@, asrMapB=%@", buf, 0x48u);
  }

  v41 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
  v42 = [v15 objectForKey:v41];

  if (!v42)
  {
    goto LABEL_28;
  }

  v43 = [MEMORY[0x1E696AD98] numberWithInteger:v74];
  v44 = [v15 objectForKey:v43];

  if (v44)
  {
    v70 = v44;
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:v72];
    v46 = [v16 objectForKey:v45];

    v75 = v46;
    if (v46)
    {
      v47 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
      v48 = [v16 objectForKey:v47];

      v73 = v48;
      if (v48)
      {
        v49 = CDMOSLoggerForCategory(0);
        v50 = v75;
        v44 = v70;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
          v78 = 2112;
          *v79 = v42;
          *&v79[8] = 2112;
          *&v79[10] = v70;
          v80 = 2112;
          v81 = v75;
          v82 = 2112;
          v83 = v73;
          _os_log_debug_impl(&dword_1DC287000, v49, OS_LOG_TYPE_DEBUG, "%s Found spanAAsrTimingBegin=%@, spanAAsrTimingEnd=%@, spanBAsrTimingBegin=%@, spanBAsrTimingEnd=%@", buf, 0x34u);
        }

        if (-[NSObject isEqualToNumber:](v42, "isEqualToNumber:", v75) && [v70 isEqualToNumber:v73])
        {
          log = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v69 = [v13 input];
            v67 = [v14 input];
            v64 = [v14 label];
            *buf = 136316418;
            v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v78 = 2112;
            *v79 = v69;
            *&v79[8] = 2112;
            *&v79[10] = v67;
            v80 = 2112;
            v81 = v64;
            v65 = v64;
            v82 = 2112;
            v83 = v42;
            v84 = 2112;
            v85 = v70;
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s These 2 spans are considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@], asrTiming{Begin/End}=%@/%@", buf, 0x3Eu);
          }

          v51 = 1;
        }

        else
        {
          log = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v68 = [v13 input];
            v66 = [v14 input];
            v62 = [v14 label];
            *buf = 136316930;
            v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v78 = 2112;
            *v79 = v68;
            *&v79[8] = 2112;
            *&v79[10] = v66;
            v80 = 2112;
            v81 = v62;
            v63 = v62;
            v82 = 2112;
            v83 = v42;
            v84 = 2112;
            v85 = v70;
            v86 = 2112;
            v87 = v75;
            v88 = 2112;
            v89 = v73;
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s These 2 spans are NOT considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@], spanAAsrTiming{Begin/End}=%@/%@, spanBAsrTiming{Begin/End}=%@/%@", buf, 0x52u);
          }

          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
        v50 = v75;
        v44 = v70;
      }
    }

    else
    {
      v51 = 0;
      v50 = 0;
      v44 = v70;
    }
  }

  else
  {
    v51 = 0;
  }

LABEL_29:
  v60 = *MEMORY[0x1E69E9840];
  return v51;
}

@end