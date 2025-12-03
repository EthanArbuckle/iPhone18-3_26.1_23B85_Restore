@interface CDMSpanMatchUtils
+ (BOOL)isSamePosition:(id)position spanB:(id)b asrMapA:(id)a asrMapB:(id)mapB cdmTokenChainA:(id)chainA cdmTokenChainB:(id)chainB;
+ (BOOL)isSpanOnlyForExternalParsers:(id)parsers;
+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)alternative;
+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)begin charIndexEnd:(int64_t)end asrTimingMap:(id)map asrHypothesis:(id)hypothesis;
+ (void)addAsrConfidenceToSpans:(id)spans tokenChain:(id)chain asrTimingMap:(id)map asrHypothesis:(id)hypothesis;
+ (void)addEntitySpansFrom:(id)from to:(id)to confidence:(double)confidence;
+ (void)mergeAsrAlternativeIntoSpan:(id)span asrAltSpan:(id)altSpan asrAltCdmTokenChain:(id)chain asrAltHypothesis:(id)hypothesis asrAltTimingMap:(id)map;
+ (void)postProcessSpans:(id)spans asrSpansMap:(id)map asrHypothesis:(id)hypothesis asrMaps:(id)maps topAsrTokenChain:(id)chain asrMapTopAsr:(id)asr topAsrSpansFiltered:(id)filtered;
+ (void)processAsrAlternative:(id)alternative topAsrTokenChain:(id)chain cdmTokenChainAltAsr:(id)asr asrMapTopAsr:(id)topAsr asrMapAltAsr:(id)altAsr spansTopAsr:(id)spansTopAsr asrHypothesis:(id)hypothesis;
+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)spans;
@end

@implementation CDMSpanMatchUtils

+ (void)postProcessSpans:(id)spans asrSpansMap:(id)map asrHypothesis:(id)hypothesis asrMaps:(id)maps topAsrTokenChain:(id)chain asrMapTopAsr:(id)asr topAsrSpansFiltered:(id)filtered
{
  v54 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  mapCopy = map;
  hypothesisCopy = hypothesis;
  mapsCopy = maps;
  chainCopy = chain;
  asrCopy = asr;
  filteredCopy = filtered;
  if ([spansCopy count] > 1)
  {
    v19 = [spansCopy count];
    v20 = [hypothesisCopy count];
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

      date = [MEMORY[0x1E695DF00] date];
      if ([spansCopy count] >= 2)
      {
        v25 = 1;
        do
        {
          v26 = [spansCopy objectAtIndexedSubscript:v25];
          v27 = [CDMTokenChain alloc];
          tokenChain = [v26 tokenChain];
          v29 = [(CDMTokenChain *)v27 initWithProtoTokenChain:tokenChain];

          asrId = [v26 asrId];
          v31 = [mapsCopy objectForKey:asrId];

          asrId2 = [v26 asrId];
          v33 = [mapCopy objectForKey:asrId2];

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

          v36 = [hypothesisCopy objectAtIndexedSubscript:v25];
          [CDMSpanMatchUtils processAsrAlternative:v33 topAsrTokenChain:chainCopy cdmTokenChainAltAsr:v29 asrMapTopAsr:asrCopy asrMapAltAsr:v31 spansTopAsr:filteredCopy asrHypothesis:v36, spid];

          v25 = v35;
        }

        while ([spansCopy count] > v35);
      }

      v17 = date;
      [date timeIntervalSinceNow];
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

+ (void)processAsrAlternative:(id)alternative topAsrTokenChain:(id)chain cdmTokenChainAltAsr:(id)asr asrMapTopAsr:(id)topAsr asrMapAltAsr:(id)altAsr spansTopAsr:(id)spansTopAsr asrHypothesis:(id)hypothesis
{
  v69 = *MEMORY[0x1E69E9840];
  alternativeCopy = alternative;
  chainCopy = chain;
  asrCopy = asr;
  topAsrCopy = topAsr;
  altAsrCopy = altAsr;
  spansTopAsrCopy = spansTopAsr;
  hypothesisCopy = hypothesis;
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
  obj = alternativeCopy;
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
        v50 = spansTopAsrCopy;
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
              label = [v19 label];
              label2 = [v24 label];
              if (([label isEqualToString:label2] & 1) == 0)
              {
                goto LABEL_17;
              }

              input = [v19 input];
              input2 = [v24 input];
              if ([input isEqualToString:input2])
              {

LABEL_17:
                goto LABEL_18;
              }

              v29 = [CDMSpanMatchUtils isSamePosition:v24 spanB:v19 asrMapA:topAsrCopy asrMapB:altAsrCopy cdmTokenChainA:chainCopy cdmTokenChainB:asrCopy];

              if (v29)
              {
                v30 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  input3 = [v24 input];
                  input4 = [v19 input];
                  label3 = [v19 label];
                  *buf = 136315906;
                  v60 = "+[CDMSpanMatchUtils processAsrAlternative:topAsrTokenChain:cdmTokenChainAltAsr:asrMapTopAsr:asrMapAltAsr:spansTopAsr:asrHypothesis:]";
                  v61 = 2112;
                  v62 = input3;
                  v63 = 2112;
                  v64 = input4;
                  v65 = 2112;
                  v66 = label3;
                  _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s Updating UsoEntityIdentifier as these 2 spans have 1) Same spanLabel 2) Different input value 3) AND are considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@]", buf, 0x2Au);
                }

                [CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:v24 asrAltSpan:v19 asrAltCdmTokenChain:asrCopy asrAltHypothesis:hypothesisCopy asrAltTimingMap:altAsrCopy];
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

+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)spans
{
  v28 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [spansCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(spansCopy);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 hasUsoGraph])
        {
          usoGraph = [v8 usoGraph];
          alignments = [usoGraph alignments];

          if (alignments)
          {
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            usoGraph2 = [v8 usoGraph];
            alignments2 = [usoGraph2 alignments];

            v13 = [alignments2 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                    objc_enumerationMutation(alignments2);
                  }

                  [*(*(&v18 + 1) + 8 * j) setAsrHypothesisIndex:0];
                }

                v14 = [alignments2 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v5 = [spansCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSpanOnlyForExternalParsers:(id)parsers
{
  v55 = *MEMORY[0x1E69E9840];
  parsersCopy = parsers;
  if ([parsersCopy hasUsoGraph])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v38 = parsersCopy;
    usoGraph = [parsersCopy usoGraph];
    identifiers = [usoGraph identifiers];

    v6 = [identifiers countByEnumeratingWithState:&v48 objects:v54 count:16];
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
            objc_enumerationMutation(identifiers);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          value = [v12 value];
          if ([value isEqualToString:v9])
          {
            namespaceA = [v12 namespaceA];
            value2 = [namespaceA value];
            v16 = [value2 isEqualToString:v10];

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

        v7 = [identifiers countByEnumeratingWithState:&v48 objects:v54 count:16];
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
      usoGraph2 = [v38 usoGraph];
      identifiers = [usoGraph2 spans];

      v36 = [identifiers countByEnumeratingWithState:&v44 objects:v53 count:16];
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
              objc_enumerationMutation(identifiers);
            }

            v37 = v20;
            v21 = *(*(&v44 + 1) + 8 * v20);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            properties = [v21 properties];
            v23 = [properties countByEnumeratingWithState:&v40 objects:v52 count:16];
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
                    objc_enumerationMutation(properties);
                  }

                  v27 = *(*(&v40 + 1) + 8 * j);
                  if ([v27 hasValueString])
                  {
                    valueString = [v27 valueString];
                    value3 = [valueString value];
                    if ([value3 isEqualToString:v19])
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

                v24 = [properties countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v24);
            }

            v20 = v37 + 1;
            v18 = v35;
          }

          while (v37 + 1 != v36);
          v36 = [identifiers countByEnumeratingWithState:&v44 objects:v53 count:16];
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

    parsersCopy = v38;
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (void)addEntitySpansFrom:(id)from to:(id)to confidence:(double)confidence
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  usoGraph = [fromCopy usoGraph];
  spans = [usoGraph spans];

  v11 = spans;
  v12 = [spans countByEnumeratingWithState:&v28 objects:v36 count:16];
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
        input = [fromCopy input];
        [v20 setAlternative:input];

        if (confidence != -1.0)
        {
          v22 = objc_alloc_init(MEMORY[0x1E69D1118]);
          confidenceCopy = confidence;
          *&v23 = confidenceCopy;
          [v22 setValue:v23];
          [v20 setProbability:v22];
        }

        [v19 addAlternatives:v20];
        usoGraph2 = [toCopy usoGraph];
        [usoGraph2 addSpans:v19];

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

+ (void)mergeAsrAlternativeIntoSpan:(id)span asrAltSpan:(id)altSpan asrAltCdmTokenChain:(id)chain asrAltHypothesis:(id)hypothesis asrAltTimingMap:(id)map
{
  v77 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  altSpanCopy = altSpan;
  chainCopy = chain;
  hypothesisCopy = hypothesis;
  mapCopy = map;
  if (([altSpanCopy hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = altSpanCopy;
    v27 = "%s [WARN]: Did not expect asrAltSpan without USO graph. asrAltSpan=%@";
LABEL_17:
    _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
    goto LABEL_41;
  }

  if (([spanCopy hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = spanCopy;
    v27 = "%s [WARN]: Did not expect spanDest without USO graph. spanDest=%@";
    goto LABEL_17;
  }

  v60 = mapCopy;
  v57 = hypothesisCopy;
  v58 = chainCopy;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  usoGraph = [spanCopy usoGraph];
  identifiers = [usoGraph identifiers];

  v19 = [identifiers countByEnumeratingWithState:&v65 objects:v76 count:16];
  selfCopy = self;
  if (v19)
  {
    v20 = v19;
    groupIndex = 0;
    v22 = *v66;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(identifiers);
        }

        v24 = *(*(&v65 + 1) + 8 * i);
        if ([v24 groupIndex] > groupIndex)
        {
          groupIndex = [v24 groupIndex];
        }
      }

      v20 = [identifiers countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v20);
    v25 = groupIndex + 1;
  }

  else
  {
    v25 = 1;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = altSpanCopy;
  usoGraph2 = [altSpanCopy usoGraph];
  identifiers2 = [usoGraph2 identifiers];

  v30 = [identifiers2 countByEnumeratingWithState:&v61 objects:v75 count:16];
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
          objc_enumerationMutation(identifiers2);
        }

        v35 = *(*(&v61 + 1) + 8 * v33);
        [v35 setGroupIndex:v25];
        usoGraph3 = [spanCopy usoGraph];
        [usoGraph3 addIdentifiers:v35];

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
      v31 = [identifiers2 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v31);
  }

  else
  {
    v26 = 0;
  }

  chainCopy = v58;
  tokens = [v58 tokens];
  altSpanCopy = v59;
  v39 = [tokens objectAtIndexedSubscript:{-[NSObject startTokenIndex](v59, "startTokenIndex")}];
  begin = [v39 begin];

  tokens2 = [v58 tokens];
  v42 = [tokens2 objectAtIndexedSubscript:{-[NSObject endTokenIndex](v59, "endTokenIndex") - 1}];
  v43 = [v42 end];

  v44 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    label = [v59 label];
    input = [v59 input];
    *buf = 136315650;
    v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v71 = 2112;
    v72 = label;
    v73 = 2112;
    v74 = input;
    _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);

    altSpanCopy = v59;
  }

  hypothesisCopy = v57;
  mapCopy = v60;
  [selfCopy calculateAsrConfidenceForCharIndexBegin:begin charIndexEnd:v43 asrTimingMap:v60 asrHypothesis:v57];
  v46 = v45;
  if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
  {
    [selfCopy addEntitySpansFrom:altSpanCopy to:spanCopy confidence:v46];
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
    input2 = [altSpanCopy input];
    nodeIndex = [v26 nodeIndex];
    backingAppBundleId = [v26 backingAppBundleId];
    v47 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:input2 nameSpace:@"asr_alternative" nodeIndex:nodeIndex backingAppBundleId:backingAppBundleId sourceComponent:[v26 sourceComponent] asrConfidence:v46];

    [v47 setGroupIndex:v25];
    usoGraph4 = [spanCopy usoGraph];
    [usoGraph4 addIdentifiers:v47];

    v52 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v70 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
      v71 = 2112;
      v72 = v47;
      _os_log_debug_impl(&dword_1DC287000, v52, OS_LOG_TYPE_DEBUG, "%s Added an extra asr_alternative to spanDest (i.e. top ASR's span), asrAltIdentifier:%@", buf, 0x16u);
    }

    mapCopy = v60;
  }

LABEL_41:
  v53 = *MEMORY[0x1E69E9840];
}

+ (void)addAsrConfidenceToSpans:(id)spans tokenChain:(id)chain asrTimingMap:(id)map asrHypothesis:(id)hypothesis
{
  v85 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  chainCopy = chain;
  mapCopy = map;
  hypothesisCopy = hypothesis;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v12 = spansCopy;
  v13 = [v12 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v74;
    v59 = v12;
    v60 = chainCopy;
    selfCopy = self;
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
        if ([self matcherNameIsSupportedForAsrAlternative:v19])
        {
          if ([v17 hasUsoGraph])
          {
            usoGraph = [v17 usoGraph];
            identifiers = [usoGraph identifiers];
            v22 = [identifiers count];

            v14 = v66;
            v15 = v65;
            if (v22)
            {
              tokens = [chainCopy tokens];
              v24 = [tokens objectAtIndexedSubscript:{objc_msgSend(v17, "startTokenIndex")}];
              begin = [v24 begin];

              if ([v17 endTokenIndex])
              {
                tokens2 = [chainCopy tokens];
                v27 = [tokens2 objectAtIndexedSubscript:{objc_msgSend(v17, "endTokenIndex") - 1}];
                v28 = [v27 end];

                v29 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  label = [v17 label];
                  input = [v17 input];
                  *buf = 136315650;
                  v79 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                  v80 = 2112;
                  v81 = label;
                  v82 = 2112;
                  v83 = input;
                  v55 = input;
                  _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);
                }

                [self calculateAsrConfidenceForCharIndexBegin:begin charIndexEnd:v28 asrTimingMap:mapCopy asrHypothesis:hypothesisCopy];
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
                usoGraph2 = [v17 usoGraph];
                identifiers2 = [usoGraph2 identifiers];
                v34 = [identifiers2 objectAtIndexedSubscript:0];

                usoGraph3 = [v17 usoGraph];
                identifiers3 = [usoGraph3 identifiers];
                input2 = [v17 input];
                nodeIndex = [v34 nodeIndex];
                backingAppBundleId = [v34 backingAppBundleId];
                v63 = v34;
                v40 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:input2 nameSpace:@"asr_alternative" nodeIndex:nodeIndex backingAppBundleId:backingAppBundleId sourceComponent:[v34 sourceComponent] asrConfidence:v31];
                [identifiers3 addObject:v40];

                if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
                {
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  usoGraph4 = [v17 usoGraph];
                  spans = [usoGraph4 spans];

                  v43 = [spans countByEnumeratingWithState:&v69 objects:v77 count:16];
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
                          objc_enumerationMutation(spans);
                        }

                        v48 = *(*(&v69 + 1) + 8 * i);
                        v49 = objc_alloc_init(MEMORY[0x1E69D1138]);
                        input3 = [v17 input];
                        [v49 setAlternative:input3];

                        v51 = objc_alloc_init(MEMORY[0x1E69D1118]);
                        *&v52 = v46;
                        [v51 setValue:v52];
                        [v49 setProbability:v51];

                        [v48 addAlternatives:v49];
                      }

                      v44 = [spans countByEnumeratingWithState:&v69 objects:v77 count:16];
                    }

                    while (v44);
                  }

                  v12 = v59;
                  chainCopy = v60;
                  self = selfCopy;
                  v15 = v65;
                  v14 = v66;
                  v53 = v63;
                }

                else
                {
                  self = selfCopy;
                  v12 = v59;
                  v15 = v65;
                  v14 = v66;
                  v53 = v34;
                  chainCopy = v60;
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

+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)alternative
{
  alternativeCopy = alternative;
  if ([alternativeCopy isEqualToString:@"SIRI_VOCABULARY_MATCHER"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [alternativeCopy isEqualToString:@"VOC_TRIE_MATCHER"];
  }

  return v4;
}

+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)begin charIndexEnd:(int64_t)end asrTimingMap:(id)map asrHypothesis:(id)hypothesis
{
  v42 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  hypothesisCopy = hypothesis;
  if ([hypothesisCopy asrTokensCount])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
    v12 = [mapCopy objectForKey:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:end];
    v14 = [mapCopy objectForKey:v13];

    v15 = 0.0;
    if (v12 && v14)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      asrTokens = [hypothesisCopy asrTokens];
      v17 = [asrTokens countByEnumeratingWithState:&v33 objects:v41 count:16];
      v15 = -1.0;
      if (v17)
      {
        v19 = v17;
        v32 = mapCopy;
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
              objc_enumerationMutation(asrTokens);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            if (![v24 hasConfidenceScore])
            {
              goto LABEL_20;
            }

            startMilliSeconds = [v24 startMilliSeconds];
            if (startMilliSeconds >= [v12 intValue])
            {
              endMilliSeconds = [v24 endMilliSeconds];
              if (endMilliSeconds > [v14 intValue])
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

          v19 = [asrTokens countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

LABEL_17:

        if (v20)
        {
          asrTokens = CDMOSLoggerForCategory(0);
          v15 = v22 / v20;
          if (os_log_type_enabled(asrTokens, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v38 = "+[CDMSpanMatchUtils calculateAsrConfidenceForCharIndexBegin:charIndexEnd:asrTimingMap:asrHypothesis:]";
            v39 = 2048;
            v40 = v22 / v20;
            _os_log_debug_impl(&dword_1DC287000, asrTokens, OS_LOG_TYPE_DEBUG, "%s Average ASR confidence is %f", buf, 0x16u);
          }

LABEL_20:
          mapCopy = v32;
          goto LABEL_21;
        }

        v15 = -1.0;
        mapCopy = v32;
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

+ (BOOL)isSamePosition:(id)position spanB:(id)b asrMapA:(id)a asrMapB:(id)mapB cdmTokenChainA:(id)chainA cdmTokenChainB:(id)chainB
{
  v90 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  bCopy = b;
  aCopy = a;
  mapBCopy = mapB;
  chainACopy = chainA;
  chainBCopy = chainB;
  startTokenIndex = [positionCopy startTokenIndex];
  tokens = [chainACopy tokens];
  v21 = [tokens count];

  if (v21 <= startTokenIndex)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      startTokenIndex2 = [positionCopy startTokenIndex];
      tokens2 = [chainACopy tokens];
      *buf = 136315650;
      v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v78 = 1024;
      *v79 = startTokenIndex2;
      *&v79[4] = 2048;
      *&v79[6] = [tokens2 count];
      v54 = "%s [WARN]: spanA.startTokenIndex=%u is out of range with tokens.count=%zd";
LABEL_20:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v54, buf, 0x1Cu);
    }

LABEL_28:
    v51 = 0;
    goto LABEL_29;
  }

  tokens3 = [chainACopy tokens];
  v23 = [tokens3 objectAtIndexedSubscript:{objc_msgSend(positionCopy, "startTokenIndex")}];
  begin = [v23 begin];

  v25 = [positionCopy endTokenIndex] - 1;
  tokens4 = [chainACopy tokens];
  v27 = [tokens4 count];

  if (v27 <= v25)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v55 = [positionCopy endTokenIndex] - 1;
      tokens5 = [chainACopy tokens];
      *buf = 136315650;
      v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v78 = 1024;
      *v79 = v55;
      *&v79[4] = 2048;
      *&v79[6] = [tokens5 count];
      v57 = "%s [WARN]: (spanA.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
LABEL_23:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v57, buf, 0x1Cu);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  tokens6 = [chainACopy tokens];
  v29 = [tokens6 objectAtIndexedSubscript:{objc_msgSend(positionCopy, "endTokenIndex") - 1}];
  v74 = [v29 end];

  LODWORD(tokens6) = [bCopy startTokenIndex];
  tokens7 = [chainBCopy tokens];
  v31 = [tokens7 count];

  if (v31 <= tokens6)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    startTokenIndex3 = [bCopy startTokenIndex];
    tokens2 = [chainBCopy tokens];
    *buf = 136315650;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 1024;
    *v79 = startTokenIndex3;
    *&v79[4] = 2048;
    *&v79[6] = [tokens2 count];
    v54 = "%s [WARN]: spanB.startTokenIndex=%u is out of range with tokens.count=%zd";
    goto LABEL_20;
  }

  tokens8 = [chainBCopy tokens];
  v33 = [tokens8 objectAtIndexedSubscript:{objc_msgSend(bCopy, "startTokenIndex")}];
  begin2 = [v33 begin];

  v34 = [bCopy endTokenIndex] - 1;
  tokens9 = [chainBCopy tokens];
  v36 = [tokens9 count];

  if (v36 <= v34)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v59 = [bCopy endTokenIndex] - 1;
    tokens5 = [chainBCopy tokens];
    *buf = 136315650;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 1024;
    *v79 = v59;
    *&v79[4] = 2048;
    *&v79[6] = [tokens5 count];
    v57 = "%s [WARN]: (spanB.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
    goto LABEL_23;
  }

  tokens10 = [chainBCopy tokens];
  v38 = [tokens10 objectAtIndexedSubscript:{objc_msgSend(bCopy, "endTokenIndex") - 1}];
  v39 = [v38 end];

  v40 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v78 = 2048;
    *v79 = begin;
    *&v79[8] = 2048;
    *&v79[10] = v74;
    v80 = 2048;
    v81 = begin2;
    v82 = 2048;
    v83 = v39;
    v84 = 2112;
    v85 = aCopy;
    v86 = 2112;
    v87 = mapBCopy;
    _os_log_debug_impl(&dword_1DC287000, v40, OS_LOG_TYPE_DEBUG, "%s Used span's start/end token index + CDMTokenChain's indices to find the ASR character indices. spanACharIndexBegin=%ld, spanACharIndexEnd=%ld, spanBCharIndexBegin=%ld, spanBCharIndexEnd=%ld, asrMapA=%@, asrMapB=%@", buf, 0x48u);
  }

  v41 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
  v42 = [aCopy objectForKey:v41];

  if (!v42)
  {
    goto LABEL_28;
  }

  v43 = [MEMORY[0x1E696AD98] numberWithInteger:v74];
  v44 = [aCopy objectForKey:v43];

  if (v44)
  {
    v70 = v44;
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:begin2];
    v46 = [mapBCopy objectForKey:v45];

    v75 = v46;
    if (v46)
    {
      v47 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
      v48 = [mapBCopy objectForKey:v47];

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
            input = [positionCopy input];
            input2 = [bCopy input];
            label = [bCopy label];
            *buf = 136316418;
            v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v78 = 2112;
            *v79 = input;
            *&v79[8] = 2112;
            *&v79[10] = input2;
            v80 = 2112;
            v81 = label;
            v65 = label;
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
            input3 = [positionCopy input];
            input4 = [bCopy input];
            label2 = [bCopy label];
            *buf = 136316930;
            v77 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v78 = 2112;
            *v79 = input3;
            *&v79[8] = 2112;
            *&v79[10] = input4;
            v80 = 2112;
            v81 = label2;
            v63 = label2;
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