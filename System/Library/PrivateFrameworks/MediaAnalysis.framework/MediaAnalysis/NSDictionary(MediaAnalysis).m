@interface NSDictionary(MediaAnalysis)
- (double)vcp_quality;
- (id)vcp_actionsAggregated;
- (id)vcp_analysisDescriptionWithResultDetails:()MediaAnalysis;
- (id)vcp_fingerprint;
- (id)vcp_queryActionResultForPHFace:()MediaAnalysis;
- (uint64_t)vcp_flags;
- (uint64_t)vcp_statsFlags;
- (uint64_t)vcp_types;
- (uint64_t)vcp_version;
@end

@implementation NSDictionary(MediaAnalysis)

- (uint64_t)vcp_version
{
  v1 = [a1 objectForKey:@"version"];
  v2 = [v1 intValue];

  return v2;
}

- (uint64_t)vcp_types
{
  v1 = [a1 objectForKey:@"performedAnalysisTypes"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)vcp_flags
{
  v1 = [a1 objectForKey:@"flags"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)vcp_statsFlags
{
  v1 = [a1 objectForKey:@"statsFlags"];
  v2 = [v1 unsignedLongValue];

  return v2;
}

- (double)vcp_quality
{
  v1 = [a1 objectForKey:@"quality"];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = -1.0;
  }

  return v4;
}

- (id)vcp_fingerprint
{
  v2 = [a1 objectForKey:@"masterFingerprint"];
  v3 = [a1 objectForKey:@"adjustedFingerprint"];
  v4 = [VCPFingerprint fingerprintWithMaster:v2 adjusted:v3];

  return v4;
}

- (id)vcp_actionsAggregated
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [a1 vcp_results];
  v4 = [v3 objectForKeyedSubscript:@"HumanActionClassificationResults"];

  obj = v4;
  v26 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v6 = [v5 objectForKeyedSubscript:@"attributes"];
        v7 = [v6 objectForKeyedSubscript:@"humanActions"];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v9)
        {
          v10 = *v30;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v29 + 1) + 8 * j);
              if ([v12 intValue] >= 2)
              {
                v13 = [v8 objectForKeyedSubscript:v12];
                [v13 floatValue];
                v15 = v14;

                v16 = [v2 objectForKeyedSubscript:v12];
                if (!v16 || ([v2 objectForKeyedSubscript:v12], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "floatValue"), v20 = v19 < v15, v18, v16, v20))
                {
                  *&v17 = v15;
                  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
                  [v2 setObject:v21 forKeyedSubscript:v12];

                  v22 = [v5 objectForKeyedSubscript:@"attributes"];
                  [v28 setObject:v22 forKeyedSubscript:v12];
                }
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v9);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  return v28;
}

- (id)vcp_queryActionResultForPHFace:()MediaAnalysis
{
  v130[2] = *MEMORY[0x1E69E9840];
  v95 = a3;
  v4 = [a1 vcp_results];
  v5 = [v4 objectForKeyedSubscript:@"HumanActionClassificationResults"];

  v93 = v5;
  if ([v5 count])
  {
    v129[0] = @"HighlightBestTrim";
    v129[1] = @"HighlightMaxDuration";
    v130[0] = MEMORY[0x1E695E118];
    v130[1] = &unk_1F49BB248;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    v92 = MediaAnalysisPostProcessMovieHighlights(a1, v6, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));

    v7 = [v92 objectForKeyedSubscript:@"MovieHighlightResults"];
    value = *MEMORY[0x1E6960C98];
    flags = *(MEMORY[0x1E6960C98] + 12);
    timescale = *(MEMORY[0x1E6960C98] + 8);
    epoch = *(MEMORY[0x1E6960C98] + 16);
    v9 = *(MEMORY[0x1E6960C98] + 24);
    obj = *(MEMORY[0x1E6960C98] + 32);
    v11 = *(MEMORY[0x1E6960C98] + 40);
    v91 = v7;
    if ([v7 count])
    {
      v12 = [v91 objectAtIndexedSubscript:0];
      CMTimeRangeMakeFromDictionary(&v126, v12);
      value = v126.start.value;
      flags = v126.start.flags;
      timescale = v126.start.timescale;
      epoch = v126.start.epoch;
      v9 = v126.duration.value;
      obj = *&v126.duration.timescale;
      v11 = v126.duration.epoch;
    }

    if ((flags & 1) == 0 || (obj & 0x100000000) == 0 || v11 || v9 < 0)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v126.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : not find the best highlight", &v126, 2u);
      }

      dictionaryRepresentation = 0;
      v13 = 0;
      goto LABEL_106;
    }

    v14 = [v95 faceClusteringProperties];
    v15 = [v14 faceprint];
    v90 = [v15 faceprintData];

    if (!v90 || [v95 detectionType] != 1)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v95 localIdentifier];
        LODWORD(v126.start.value) = 138412290;
        *(&v126.start.value + 4) = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : no faceprint data for face: %@", &v126, 0xCu);
      }

      goto LABEL_104;
    }

    v120 = 0;
    v16 = [VCPVNImageprintWrapper generateVNImageprintWithType:0 archiveData:v90 andError:&v120];
    v17 = v120;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v17 description];
        LODWORD(v126.start.value) = 138412290;
        *(&v126.start.value + 4) = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : failed to decode torsoprint %@", &v126, 0xCu);
      }

LABEL_103:

LABEL_104:
      dictionaryRepresentation = 0;
      v13 = 0;
LABEL_105:

LABEL_106:
      goto LABEL_107;
    }

    v20 = [v16 torsoprint];
    v21 = v20 == 0;

    if (v21)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(v126.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "queryActionResultForPHFace : torsoprint not available", &v126, 2u);
      }

      goto LABEL_103;
    }

    v83 = [v16 torsoprint];

    v81 = [MEMORY[0x1E695DF70] array];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v22 = v93;
    v85 = v22;
    v23 = [v22 countByEnumeratingWithState:&v116 objects:v125 count:16];
    if (!v23)
    {

LABEL_111:
      v53 = 0;
      dictionaryRepresentation = 0;
LABEL_120:
      v13 = v53;

      goto LABEL_105;
    }

    dictionaryRepresentation = 0;
    v25 = *v117;
    v26 = 0.0;
    *&v24 = 138412546;
    v80 = v24;
    v84 = *v117;
LABEL_28:
    v27 = 0;
    v86 = v23;
    while (1)
    {
      if (*v117 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v116 + 1) + 8 * v27);
      memset(&v126, 0, sizeof(v126));
      CMTimeRangeMakeFromDictionary(&v126, v28);
      memset(&v115, 0, sizeof(v115));
      range = v126;
      otherRange.start.value = value;
      otherRange.start.timescale = timescale;
      otherRange.start.flags = flags;
      otherRange.start.epoch = epoch;
      otherRange.duration.value = v9;
      *&otherRange.duration.timescale = obj;
      otherRange.duration.epoch = 0;
      CMTimeRangeGetIntersection(&v115, &range, &otherRange);
      if ((v115.start.flags & 1) == 0)
      {
        goto LABEL_32;
      }

      if ((v115.duration.flags & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v115.duration.epoch)
      {
        goto LABEL_32;
      }

      if (v115.duration.value < 0)
      {
        goto LABEL_32;
      }

      range.start = v115.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      if (Seconds < 1.0)
      {
        goto LABEL_32;
      }

      v30 = [(__CFDictionary *)v28 objectForKeyedSubscript:@"attributes"];
      v88 = [v30 objectForKeyedSubscript:@"torsoPrint"];

      v31 = v88;
      if (v88)
      {
        v32 = [objc_alloc(MEMORY[0x1E6984698]) initWithState:v88 error:0];
        if (!v32)
        {
          v87 = 0;
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(range.start.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : failed to decode torsoprintAction", &range, 2u);
          }

          goto LABEL_119;
        }

        if (v83)
        {
          v113 = 0;
          v87 = v32;
          v33 = [v83 computeDistance:v32 withDistanceFunction:0 error:&v113];
          v34 = v113;
          if (v34)
          {
            v79 = v34;
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(range.start.value) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : failed to get compute torsoprint distance", &range, 2u);
            }

            v31 = v88;
LABEL_119:

            v53 = 0;
            goto LABEL_120;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v35 = [v95 localIdentifier];
            [v33 floatValue];
            LODWORD(range.start.value) = v80;
            *(&range.start.value + 4) = v35;
            LOWORD(range.start.flags) = 2048;
            *(&range.start.flags + 2) = v36;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "queryActionResultForPHFace : torsoprint distance with %@, %f", &range, 0x16u);
          }

          if (v33 && ([v33 floatValue], v37 < 0.3))
          {
            v82 = v33;
            v38 = [(__CFDictionary *)v28 objectForKeyedSubscript:@"attributes"];
            v39 = [v38 objectForKeyedSubscript:@"humanActions"];

            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v40 = v39;
            v41 = [v40 countByEnumeratingWithState:&v109 objects:v123 count:16];
            if (v41)
            {
              v42 = *v110;
              v43 = 0.0;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v110 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v109 + 1) + 8 * i);
                  if ([v45 intValue] >= 2)
                  {
                    v46 = [v40 objectForKeyedSubscript:v45];
                    [v46 floatValue];
                    if (v47 >= v43)
                    {
                      v43 = v47;
                    }
                  }
                }

                v41 = [v40 countByEnumeratingWithState:&v109 objects:v123 count:16];
              }

              while (v41);
            }

            else
            {
              v43 = 0.0;
            }

            v50 = v43 + Seconds;
            if (v50 <= v26)
            {
              v50 = v26;
            }

            else
            {
              v51 = v28;

              dictionaryRepresentation = v51;
            }

            [v81 addObject:{v28, v80}];

            v26 = v50;
          }

          else
          {
          }

          v31 = v88;
          goto LABEL_72;
        }

        v48 = v32;
      }

      else
      {
        v48 = 0;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v49 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(range.start.value) = 0;
          _os_log_impl(&dword_1C9B70000, v49, OS_LOG_TYPE_DEFAULT, "queryActionResultForPHFace : failed to get torsoprints", &range, 2u);
        }
      }

      v87 = v48;
LABEL_72:

      v22 = v85;
      v23 = v86;
      v25 = v84;
LABEL_32:
      if (++v27 == v23)
      {
        v52 = [v22 countByEnumeratingWithState:&v116 objects:v125 count:16];
        v23 = v52;
        if (!v52)
        {

          if (!dictionaryRepresentation)
          {
            goto LABEL_111;
          }

          v53 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
          if ([v81 count] >= 2)
          {
            memset(&v126, 0, sizeof(v126));
            v89 = v53;
            CMTimeRangeMakeFromDictionary(&v126, dictionaryRepresentation);
            memset(&v108, 0, sizeof(v108));
            v115.start = v126.duration;
            CMTimeMultiplyByRatio(&otherRange.start, &v115.start, 1, 2);
            *&v115.start.value = *&v126.start.value;
            v115.start.epoch = v126.start.epoch;
            *&range.start.value = *&otherRange.start.value;
            range.start.epoch = otherRange.start.epoch;
            CMTimeAdd(&v108, &v115.start, &range.start);
            v54 = [(__CFDictionary *)dictionaryRepresentation objectForKeyedSubscript:@"attributes"];
            v55 = [v54 objectForKeyedSubscript:@"humanActions"];

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v56 = v55;
            v57 = 0;
            v58 = [v56 countByEnumeratingWithState:&v104 objects:v122 count:16];
            if (v58)
            {
              v59 = *v105;
              v60 = 0.0;
              do
              {
                for (j = 0; j != v58; ++j)
                {
                  if (*v105 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v62 = *(*(&v104 + 1) + 8 * j);
                  v63 = [v56 objectForKeyedSubscript:{v62, v80}];
                  [v63 floatValue];
                  v65 = v64;

                  if ([v62 intValue] >= 2 && v65 > v60)
                  {
                    v67 = v62;

                    v57 = v67;
                    v60 = v65;
                  }
                }

                v58 = [v56 countByEnumeratingWithState:&v104 objects:v122 count:16];
              }

              while (v58);
            }

            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            obja = v81;
            v68 = [obja countByEnumeratingWithState:&v100 objects:v121 count:16];
            if (v68)
            {
              v69 = *v101;
              do
              {
                for (k = 0; k != v68; ++k)
                {
                  if (*v101 != v69)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v71 = *(*(&v100 + 1) + 8 * k);
                  v72 = [v71 objectForKeyedSubscript:{@"attributes", v80}];
                  v73 = [v72 objectForKeyedSubscript:@"humanActions"];

                  if (v57)
                  {
                    v74 = [v73 objectForKeyedSubscript:v57];
                    v75 = v74 == 0;

                    if (!v75)
                    {
                      memset(&v115, 0, sizeof(v115));
                      CMTimeRangeMakeFromDictionary(&v115, v71);
                      memset(&v99, 0, sizeof(v99));
                      range.start = v115.duration;
                      CMTimeMultiplyByRatio(&time.start, &range.start, 1, 2);
                      *&range.start.value = *&v115.start.value;
                      range.start.epoch = v115.start.epoch;
                      *&otherRange.start.value = *&time.start.value;
                      otherRange.start.epoch = time.start.epoch;
                      CMTimeAdd(&v99, &range.start, &otherRange.start);
                      range.start = v99;
                      otherRange.start = v108;
                      CMTimeSubtract(&time.start, &range.start, &otherRange.start);
                      if (fabs(CMTimeGetSeconds(&time.start)) < 3.0)
                      {
                        otherRange = v126;
                        time = v115;
                        CMTimeRangeGetUnion(&range, &otherRange, &time);
                        v126 = range;
                      }
                    }
                  }
                }

                v68 = [obja countByEnumeratingWithState:&v100 objects:v121 count:16];
              }

              while (v68);
            }

            *&v115.start.value = *&v126.start.value;
            v115.start.epoch = v126.start.epoch;
            v76 = CMTimeToNSDictionary(&v115.start);
            [v89 setObject:v76 forKeyedSubscript:@"start"];

            v115.start = v126.duration;
            v77 = CMTimeToNSDictionary(&v115.start);
            [v89 setObject:v77 forKeyedSubscript:@"duration"];

            v53 = v89;
          }

          goto LABEL_120;
        }

        goto LABEL_28;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(v126.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "queryActionResultForPHFace : no action results", &v126, 2u);
  }

  dictionaryRepresentation = 0;
  v13 = 0;
LABEL_107:

  return v13;
}

- (id)vcp_analysisDescriptionWithResultDetails:()MediaAnalysis
{
  v5 = +[VCPLogManager dateFormatterDateTime];
  v6 = [MEMORY[0x1E696AD60] string];
  [v6 appendFormat:@"<version:%d, ", objc_msgSend(a1, "vcp_version")];
  v7 = [a1 vcp_dateAnalyzed];
  v8 = [v5 stringFromDate:v7];
  [v6 appendFormat:@"dateAnalyzed:%@, ", v8];

  v9 = [a1 vcp_dateModified];
  v10 = [v5 stringFromDate:v9];
  [v6 appendFormat:@"dateModified:%@, ", v10];

  v11 = MediaAnalysisTypeShortDescription([a1 vcp_types]);
  [v6 appendFormat:@"types:%@, ", v11];

  [v6 appendFormat:@"flags:%llu, ", objc_msgSend(a1, "vcp_flags")];
  [v6 appendFormat:@"statsFlags:%lu, ", objc_msgSend(a1, "vcp_statsFlags")];
  [a1 vcp_quality];
  [v6 appendFormat:@"quality:%.3f, ", v12];
  if (a3)
  {
    [v6 appendFormat:@"results:{"];
    v13 = [a1 vcp_results];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__NSDictionary_MediaAnalysis__vcp_analysisDescriptionWithResultDetails___block_invoke;
    v16[3] = &unk_1E83510B0;
    v14 = v6;
    v17 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];

    [v14 appendFormat:@"}"];
  }

  [v6 appendString:@">"];

  return v6;
}

@end