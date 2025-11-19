@interface VCPLivePhotoKeyFrameAnalyzer
- ($AFC8CF76A46F37F9FB23C20884F4FD99)selectKeyFrameRangeWithMotion:(SEL)a3 stillTimestamp:(id)a4 isMetaMotion:(float)a5;
- (VCPLivePhotoKeyFrameAnalyzer)initWithWidth:(int)a3 height:(int)a4;
- (float)computeOverallFaceQualityScore:(id)a3;
- (float)computeScoreForPhoto:(float)a3 withRefKeyFrame:(id)a4;
- (float)getFaceHeat:(CGRect)a3;
- (int)analyzeLivePhotoKeyFrame:(id)a3 irisPhotoOffsetSec:(float)a4 originalIrisPhotoOffsetSec:(float)a5 photoTextureScore:(float)a6 hadFlash:(BOOL)a7 cancel:(id)a8;
- (int)reportLivePhotoKeyFrameAnalysisResults:(BOOL)a3 selectedKeyFrame:(id)a4 originalStillKeyFrame:(id)a5 stillScore:(float)a6 stillFQScore:(float)a7 stillTimestamp:(float)a8 useSemanticOnly:(BOOL)a9 isKeyFrameSuggested:(BOOL)a10;
- (void)createFaceHeatMap:(id)a3 imageFaces:(id)a4;
- (void)dealloc;
- (void)fetchAndComputeScoreForKeyFrame:(id)a3 withResult:(id)a4;
- (void)updateFaceHeatMap:(id)a3;
@end

@implementation VCPLivePhotoKeyFrameAnalyzer

- (VCPLivePhotoKeyFrameAnalyzer)initWithWidth:(int)a3 height:(int)a4
{
  v13.receiver = self;
  v13.super_class = VCPLivePhotoKeyFrameAnalyzer;
  v6 = [(VCPLivePhotoKeyFrameAnalyzer *)&v13 init];
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6->_photoSharpnessReliable = 1;
  v6->_width = a3;
  v6->_height = a4;
  v6->_numOfFrames = 0;
  *&v6->_petsDominant = 256;
  v8 = operator new[](a4 * a3, MEMORY[0x1E69E5398]);
  v7->_faceHeatMap = v8;
  v9 = v7;
  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate memory", v12, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
  v10 = v9;

  return v10;
}

- (void)dealloc
{
  faceHeatMap = self->_faceHeatMap;
  if (faceHeatMap)
  {
    MEMORY[0x1CCA95C10](faceHeatMap, 0x1000C8077774924);
  }

  v4.receiver = self;
  v4.super_class = VCPLivePhotoKeyFrameAnalyzer;
  [(VCPLivePhotoKeyFrameAnalyzer *)&v4 dealloc];
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)selectKeyFrameRangeWithMotion:(SEL)a3 stillTimestamp:(id)a4 isMetaMotion:(float)a5
{
  v6 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = v9;
  if (v6)
  {
    v11 = 100.0;
  }

  else
  {
    v11 = 33.333;
  }

  start = **&MEMORY[0x1E6960CC0];
  memset(&v42, 0, sizeof(v42));
  v12 = [v9 lastObject];
  CMTimeRangeMakeFromDictionary(&range, v12);
  CMTimeRangeGetEnd(&v42, &range);

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v14)
  {
    v15 = *v38;
    v16 = a5;
    v17 = 0.0;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        memset(&range, 0, sizeof(range));
        CMTimeRangeMakeFromDictionary(&range, v19);
        v20 = [(__CFDictionary *)v19 objectForKeyedSubscript:@"quality"];
        [v20 floatValue];
        v22 = v21;

        *&time.start.value = *&range.start.value;
        time.start.epoch = range.start.epoch;
        if (CMTimeGetSeconds(&time.start) <= v16)
        {
          time.start = range.duration;
          Seconds = CMTimeGetSeconds(&time.start);
          *&time.start.value = *&range.start.value;
          time.start.epoch = range.start.epoch;
          v25 = v16 - CMTimeGetSeconds(&time.start);
          if (v25 >= Seconds)
          {
            v25 = Seconds;
          }

          v26 = v25 * v22;
          if (v11 <= v26)
          {
            time.start = range.duration;
            v27 = CMTimeGetSeconds(&time.start) * (1.0 - (v11 / v26));
            CMTimeMakeWithSeconds(&v35, v27, range.start.timescale);
            *&time.start.value = *&range.start.value;
            time.start.epoch = range.start.epoch;
            rhs = v35;
            CMTimeAdd(&v36, &time.start, &rhs);
            start = v36;
            v17 = v11;
          }

          else
          {
            v17 = v17 + v26;
            if (v17 > v11)
            {
              start = range.start;
              v17 = v25 * v22;
            }
          }

          time = range;
          CMTimeRangeGetEnd(&rhs, &time);
          if (CMTimeGetSeconds(&rhs) >= v16)
          {
            time = range;
            CMTimeRangeGetEnd(&rhs, &time);
            v28 = CMTimeGetSeconds(&rhs) - v16;
            v17 = v22 * v28;
            if ((v22 * v28) >= v11)
            {
              time = range;
              CMTimeRangeGetEnd(&v35, &time);
              CMTimeMakeWithSeconds(&v33, ((1.0 - (v11 / v17)) * v28), range.start.timescale);
              time.start = v35;
              rhs = v33;
              CMTimeSubtract(&v36, &time.start, &rhs);
              *&v42.value = *&v36.value;
              epoch = v36.epoch;
              goto LABEL_25;
            }
          }
        }

        else
        {
          time.start = range.duration;
          v23 = CMTimeGetSeconds(&time.start) * v22;
          if (v11 <= v23)
          {
            *&v42.value = *&range.start.value;
            epoch = range.start.epoch;
LABEL_25:
            v42.epoch = epoch;
            goto LABEL_26;
          }

          v17 = v17 + v23;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  range.start = v42;
  time.start = start;
  if (CMTimeCompare(&range.start, &time.start) < 1)
  {
    v30 = MEMORY[0x1E6960CA8];
    v31 = *(MEMORY[0x1E6960CA8] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960CA8];
    *&retstr->var0.var3 = v31;
    *&retstr->var1.var1 = *(v30 + 32);
  }

  else
  {
    range.start = start;
    time.start = v42;
    CMTimeRangeFromTimeToTime(retstr, &range.start, &time.start);
  }

  return result;
}

- (int)analyzeLivePhotoKeyFrame:(id)a3 irisPhotoOffsetSec:(float)a4 originalIrisPhotoOffsetSec:(float)a5 photoTextureScore:(float)a6 hadFlash:(BOOL)a7 cancel:(id)a8
{
  v216 = a7;
  v266[4] = *MEMORY[0x1E69E9840];
  v209 = a3;
  v13 = a8;
  v198 = v13;
  v202 = objc_alloc_init(VCPVideoKeyFrame);
  v208 = objc_alloc_init(VCPVideoKeyFrame);
  v197 = vabds_f32(a4, a5);
  if (v197 > 0.03 && (v220 = objc_alloc_init(VCPVideoKeyFrame)) != 0)
  {
    CMTimeMakeWithSeconds(&v250, a5, 600);
    v241.start = v250;
    [(VCPVideoKeyFrame *)v220 setTimestamp:&v241];
    v218 = 0;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v220 = 0;
    v218 = 1;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  if ((*(v13 + 2))(v13))
  {
    v14 = -128;
    goto LABEL_165;
  }

LABEL_8:
  v212 = [v209 vcp_results];
  v15 = [v212 objectForKeyedSubscript:?];
  v16 = [v212 objectForKeyedSubscript:@"FaceResults"];
  [(VCPLivePhotoKeyFrameAnalyzer *)self createFaceHeatMap:v15 imageFaces:v16];

  v17 = [v212 objectForKeyedSubscript:@"KeyFrameBlurResults"];
  v189 = v17;
  if (![v17 count])
  {
    v14 = -50;
    goto LABEL_164;
  }

  v18 = [v17 objectAtIndexedSubscript:0];
  v187 = [v18 objectForKeyedSubscript:@"attributes"];

  v19 = [v187 objectForKeyedSubscript:@"sharpness"];
  [v19 floatValue];
  self->_photoSharpness = v20;

  self->_photoSharpnessReliable = a6 >= 0.2;
  v265[0] = @"sharpness";
  *&v21 = self->_photoSharpness;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v266[0] = v22;
  v265[1] = @"texture";
  *&v23 = a6;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v266[1] = v24;
  v265[2] = @"flashFired";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:v216];
  v266[2] = v25;
  v265[3] = @"stillTime";
  *&v26 = a4;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v266[3] = v27;
  v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v266 forKeys:v265 count:4];

  v28 = MEMORY[0x1E695DEC8];
  v263 = @"attributes";
  v264 = v188;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
  v30 = [v28 arrayWithObject:v29];
  [v209 vcp_setResult:v30 forKey:@"KeyFrameStillResults"];

  v31 = [v212 objectForKeyedSubscript:@"FaceResults"];
  [(VCPLivePhotoKeyFrameAnalyzer *)self computeOverallFaceQualityScore:v31];
  v214 = v32;

  self->_petsDominant = 0;
  v33 = [v212 objectForKeyedSubscript:@"PetsResults"];
  v34 = v33 == 0;

  if (!v34)
  {
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v35 = [v212 objectForKeyedSubscript:@"PetsResults"];
    v36 = [v35 countByEnumeratingWithState:&v246 objects:v262 count:16];
    if (v36)
    {
      v37 = *v247;
      v38 = 0.0;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v247 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v246 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
          v41 = [v40 objectForKeyedSubscript:@"petsBounds"];
          v267 = NSRectFromString(v41);
          width = v267.size.width;
          height = v267.size.height;

          v38 = v38 + width * height;
        }

        v36 = [v35 countByEnumeratingWithState:&v246 objects:v262 count:16];
      }

      while (v36);
      v44 = v38 > 0.5;
    }

    else
    {
      v44 = 0;
    }

    self->_petsDominant = v44;
  }

  v45 = [v212 objectForKeyedSubscript:@"ExposureResults"];
  v46 = [v45 objectAtIndexedSubscript:0];
  v47 = [v46 objectForKeyedSubscript:@"attributes"];
  v48 = [v47 objectForKeyedSubscript:@"underExpose"];
  [v48 floatValue];
  v50 = v49;

  v51 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  obj = v51;
  v52 = [obj countByEnumeratingWithState:&v242 objects:v261 count:16];
  if (v52)
  {
    v53 = *v243;
    v54 = a4;
    while (2)
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v243 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v242 + 1) + 8 * j);
        memset(&v241, 0, sizeof(v241));
        CMTimeRangeMakeFromDictionary(&v241, v56);
        *&time.start.value = *&v241.start.value;
        time.start.epoch = v241.start.epoch;
        if (CMTimeGetSeconds(&time.start) <= v54)
        {
          time = v241;
          CMTimeRangeGetEnd(&time2.start, &time);
          if (CMTimeGetSeconds(&time2.start) > v54)
          {
            v58 = [(__CFDictionary *)v56 objectForKeyedSubscript:@"quality"];
            [v58 floatValue];
            v60 = v59;

            v57 = v60 < 10.0;
            goto LABEL_32;
          }
        }
      }

      v52 = [obj countByEnumeratingWithState:&v242 objects:v261 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  v57 = 1;
LABEL_32:

  v61 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
  if (v61)
  {
    v62 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
    v63 = [v62 objectAtIndexedSubscript:0];
    CMTimeRangeMakeFromDictionary(&time, v63);
    if (time.start.flags)
    {
      v227 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
      v64 = [v227 objectAtIndexedSubscript:0];
      CMTimeRangeMakeFromDictionary(&time2, v64);
      if (time2.duration.flags)
      {
        v223 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
        v210 = [v223 objectAtIndexedSubscript:0];
        CMTimeRangeMakeFromDictionary(&range, v210);
        if (range.duration.epoch)
        {
        }

        else
        {
          v207 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
          v180 = [v207 objectAtIndexedSubscript:0];
          CMTimeRangeMakeFromDictionary(&v260, v180);
          value = v260.duration.value;

          if (value >= 0)
          {
            v181 = [v212 objectForKeyedSubscript:@"MetaMotionResults"];
            *&v182 = a4;
            [(VCPLivePhotoKeyFrameAnalyzer *)self selectKeyFrameRangeWithMotion:v181 stillTimestamp:1 isMetaMotion:v182];
            v241 = time;

            goto LABEL_40;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v65 = [v212 objectForKeyedSubscript:@"CameraMotionResults"];
  *&v66 = a4;
  [(VCPLivePhotoKeyFrameAnalyzer *)self selectKeyFrameRangeWithMotion:v65 stillTimestamp:0 isMetaMotion:v66];
  v241 = time;

LABEL_40:
  v185 = [v212 objectForKeyedSubscript:@"MetaFocusResults"];
  v258 = *MEMORY[0x1E6960C98];
  flags = *(MEMORY[0x1E6960C98] + 12);
  timescale = *(MEMORY[0x1E6960C98] + 8);
  v192 = *(MEMORY[0x1E6960C98] + 32);
  v193 = *(MEMORY[0x1E6960C98] + 16);
  v205 = *(MEMORY[0x1E6960C98] + 40);
  v67 = *MEMORY[0x1E6960CA8];
  v68 = *(MEMORY[0x1E6960CA8] + 8);
  v69 = *(MEMORY[0x1E6960CA8] + 28);
  *&v260.start.value = *(MEMORY[0x1E6960CA8] + 12);
  *&v260.start.epoch = v69;
  v260.duration.timescale = *(MEMORY[0x1E6960CA8] + 44);
  if (!v57)
  {
    goto LABEL_60;
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v224 = v185;
  v70 = [v224 countByEnumeratingWithState:&v234 objects:v257 count:16];
  if (!v70)
  {
    goto LABEL_59;
  }

  v228 = *v235;
  v71 = a4;
  while (2)
  {
    for (k = 0; k != v70; ++k)
    {
      if (*v235 != v228)
      {
        objc_enumerationMutation(v224);
      }

      v73 = *(*(&v234 + 1) + 8 * k);
      memset(&time, 0, sizeof(time));
      CMTimeRangeMakeFromDictionary(&time, v73);
      v74 = [(__CFDictionary *)v73 objectForKeyedSubscript:@"quality"];
      [v74 floatValue];
      v76 = v75;

      *&time2.start.value = *&time.start.value;
      time2.start.epoch = time.start.epoch;
      if (CMTimeGetSeconds(&time2.start) > v71 || (time2 = time, CMTimeRangeGetEnd(&range.start, &time2), CMTimeGetSeconds(&range.start) <= v71))
      {
        *&time2.start.value = *&time.start.value;
        time2.start.epoch = time.start.epoch;
        if (CMTimeGetSeconds(&time2.start) > v71)
        {
          CMTimeMakeWithSeconds(&start, a4, v68);
          range = time;
          CMTimeRangeGetEnd(&end, &range);
          CMTimeRangeFromTimeToTime(&time2, &start, &end);
          goto LABEL_57;
        }
      }

      else
      {
        if (v76 > 0.0)
        {
          v258 = time.start.value;
          flags = time.start.flags;
          timescale = time.start.timescale;
          v192 = *&time.duration.timescale;
          v193 = *&time.start.epoch;
          epoch = time.duration.epoch;
LABEL_58:
          v205 = epoch;
          goto LABEL_59;
        }

        *&time2.start.value = *&time.start.value;
        time2.start.epoch = time.start.epoch;
        v77 = CMTimeGetSeconds(&time2.start);
        time2 = time;
        CMTimeRangeGetEnd(&range.start, &time2);
        v78 = CMTimeGetSeconds(&range.start);
        v79 = v71 - v77;
        *&v78 = v78 - v71;
        if (v79 < *&v78)
        {
          range.start.value = v67;
          *&range.start.flags = v260.start.value;
          range.start.timescale = v68;
          HIDWORD(range.start.epoch) = v260.start.timescale;
          CMTimeMakeWithSeconds(&start, a4, v68);
          CMTimeRangeFromTimeToTime(&time2, &range.start, &start);
LABEL_57:
          v258 = time2.start.value;
          flags = time2.start.flags;
          timescale = time2.start.timescale;
          v192 = *&time2.duration.timescale;
          v193 = *&time2.start.epoch;
          epoch = time2.duration.epoch;
          goto LABEL_58;
        }
      }

      v67 = time.start.value;
      v68 = time.start.timescale;
      *&v260.start.value = *&time.start.flags;
      *&v260.start.epoch = *(&time.duration.value + 4);
      v260.duration.timescale = HIDWORD(time.duration.epoch);
    }

    v70 = [v224 countByEnumeratingWithState:&v234 objects:v257 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_59:

LABEL_60:
  v81 = [v212 objectForKeyedSubscript:@"KeyFrameResults"];
  v196 = *MEMORY[0x1E6960C70];
  v221 = *(MEMORY[0x1E6960C70] + 8);
  v82 = *(MEMORY[0x1E6960C70] + 16);
  v83 = objc_alloc_init(VCPVideoKeyFrame);
  v84 = objc_alloc_init(VCPVideoKeyFrame);
  v85 = 0;
  LODWORD(v183) = 1036831949;
  v200 = fminf(a6 + 0.1, 0.2);
  seconds = a5;
  v211 = a4;
  v86 = (flags & 1) == 0;
  v87 = v216;
  if (v50 >= 0.5)
  {
    v87 = 1;
  }

  v201 = v87;
  if ((v192 & 0x100000000) == 0)
  {
    v86 = 1;
  }

  if (v205)
  {
    v86 = 1;
  }

  if (v193 < 0)
  {
    v86 = 1;
  }

  v206 = v86;
  v225 = 0.0;
  v88 = -1.0;
  v191 = v82;
  v217 = v196;
  v89 = -1.0;
  v194 = -1.0;
  v195 = -1.0;
  HIDWORD(v183) = -1.0;
  v184 = -1.0;
  v203 = -1.0;
  v190 = v221;
  v215 = a5;
  while (v85 < [v81 count])
  {
    v90 = [v81 objectAtIndexedSubscript:v85];
    v91 = [v90 objectForKeyedSubscript:@"attributes"];
    [(VCPLivePhotoKeyFrameAnalyzer *)self fetchAndComputeScoreForKeyFrame:v83 withResult:v91];

    if (v83)
    {
      v92 = v220;
      [(VCPVideoKeyFrame *)v83 timestamp];
    }

    else
    {
      memset(&time, 0, 24);
      v92 = v220;
    }

    v94 = CMTimeGetSeconds(&time.start);
    *&v94 = v94;
    v229 = *&v94;
    if ((v218 & 1) == 0)
    {
      *&v94 = v215;
      if (v225 >= v215 || (*&v93 = v229, v229 < v215))
      {
        *&v93 = v229;
        if (v229 < v215 && v85 + 1 == [v81 count])
        {
          [(VCPVideoKeyFrame *)v92 copyFrom:v83];
          CMTimeMakeWithSeconds(&v231, seconds, 600);
          time.start = v231;
          [(VCPVideoKeyFrame *)v92 setTimestamp:&time];
        }
      }

      else
      {
        [(VCPVideoKeyFrame *)v84 score:v94];
        v96 = v95;
        [(VCPVideoKeyFrame *)v83 score];
        v98 = (v215 - v225) + (v229 - v215);
        *&v99 = (((v215 - v225) * v97) + (v96 * (v229 - v215))) / v98;
        [(VCPVideoKeyFrame *)v92 setScore:v99];
        [(VCPVideoKeyFrame *)v84 sharpness];
        v101 = v100;
        [(VCPVideoKeyFrame *)v83 sharpness];
        *&v103 = (((v215 - v225) * v102) + (v101 * (v229 - v215))) / v98;
        [(VCPVideoKeyFrame *)v92 setSharpness:v103];
        [(VCPVideoKeyFrame *)v84 overallFaceQualityScore];
        v105 = v104;
        [(VCPVideoKeyFrame *)v83 overallFaceQualityScore];
        *&v107 = (((v215 - v225) * v106) + (v105 * (v229 - v215))) / v98;
        [(VCPVideoKeyFrame *)v92 setOverallFaceQualityScore:v107];
        [(VCPVideoKeyFrame *)v84 contentScore];
        v109 = v108;
        [(VCPVideoKeyFrame *)v83 contentScore];
        *&v111 = (((v215 - v225) * v110) + (v109 * (v229 - v215))) / v98;
        [(VCPVideoKeyFrame *)v92 setContentScore:v111];
        [(VCPVideoKeyFrame *)v84 semanticScore];
        v113 = v112;
        [(VCPVideoKeyFrame *)v83 semanticScore];
        *&v115 = (((v215 - v225) * v114) + (v113 * (v229 - v215))) / v98;
        [(VCPVideoKeyFrame *)v92 setSemanticScore:v115];
      }
    }

    if (v225 >= a4 || (*&v94 = v229, v229 < a4))
    {
      if (v88 == -1.0 && v85 + 1 == [v81 count])
      {
        *&v132 = self->_photoSharpness;
        [(VCPLivePhotoKeyFrameAnalyzer *)self computeScoreForPhoto:v83 withRefKeyFrame:v132];
        v134 = v133;
        [(VCPVideoKeyFrame *)v83 score];
        if (v135 >= (v214 + v134))
        {
          v88 = v135;
        }

        else
        {
          v88 = v214 + v134;
        }
      }

      else
      {
        time = v241;
        if (v83)
        {
          [(VCPVideoKeyFrame *)v83 timestamp];
        }

        else
        {
          memset(&time2, 0, 24);
        }

        if (CMTimeRangeContainsTime(&time, &time2.start))
        {
          if (v206)
          {
            goto LABEL_183;
          }

          [(VCPVideoKeyFrame *)v83 overallFaceQualityScore];
          if (v139 >= 0.15)
          {
            goto LABEL_183;
          }

          if (v83)
          {
            [(VCPVideoKeyFrame *)v83 timestamp];
          }

          else
          {
            memset(&range, 0, 24);
          }

          *&time.start.value = *&range.start.value;
          time.start.epoch = range.start.epoch;
          time2.start.value = v258;
          time2.start.timescale = timescale;
          time2.start.flags = flags;
          time2.start.epoch = v193;
          if ((CMTimeCompare(&time.start, &time2.start) & 0x80000000) == 0)
          {
            if (v83)
            {
              [(VCPVideoKeyFrame *)v83 timestamp];
            }

            else
            {
              memset(&start, 0, sizeof(start));
            }

            time.start.value = v258;
            time.start.timescale = timescale;
            time.start.flags = flags;
            *&time.start.epoch = v193;
            *&time.duration.timescale = v192;
            time.duration.epoch = 0;
            CMTimeRangeGetEnd(&end, &time);
            time.start = start;
            time2.start = end;
            if (CMTimeCompare(&time.start, &time2.start) < 0)
            {
              goto LABEL_183;
            }
          }

          [(VCPVideoKeyFrame *)v83 sharpness];
          if (v140 >= 0.8 && self->_photoSharpness <= *&v183)
          {
LABEL_183:
            if (!v201 || ([(VCPVideoKeyFrame *)v83 exposureScore], v141 < 50.0))
            {
              [(VCPVideoKeyFrame *)v83 textureScore];
              if (v142 >= v200)
              {
                [(VCPVideoKeyFrame *)v83 score];
                if (v143 > v89)
                {
                  if (v83)
                  {
                    [(VCPVideoKeyFrame *)v83 timestamp];
                    v217 = time.start.value;
                    v221 = *&time.start.timescale;
                    v82 = time.start.epoch;
                  }

                  else
                  {
                    v82 = 0;
                    v217 = 0;
                    v221 = 0.0;
                  }

                  [(VCPVideoKeyFrame *)v83 score];
                  v89 = v144;
                  [(VCPVideoKeyFrame *)v83 overallFaceQualityScore];
                  v195 = v145;
                  [(VCPVideoKeyFrame *)v83 semanticScore];
                  v184 = v146;
                  [(VCPVideoKeyFrame *)v83 sharpness];
                  HIDWORD(v183) = v147;
                  [(VCPVideoKeyFrame *)v202 copyFrom:v83];
                }
              }

              [(VCPVideoKeyFrame *)v83 semanticScore];
              if (v148 > v203)
              {
                if (v83)
                {
                  [(VCPVideoKeyFrame *)v83 timestamp];
                  v196 = time.start.value;
                  v190 = *&time.start.timescale;
                  v191 = time.start.epoch;
                }

                else
                {
                  v191 = 0;
                  v196 = 0;
                  v190 = 0.0;
                }

                [(VCPVideoKeyFrame *)v83 semanticScore];
                v203 = v149;
                [(VCPVideoKeyFrame *)v83 overallFaceQualityScore];
                v194 = v150;
                [(VCPVideoKeyFrame *)v208 copyFrom:v83];
              }
            }
          }
        }
      }
    }

    else
    {
      [(VCPVideoKeyFrame *)v84 sharpness:v94];
      v117 = v116;
      [(VCPVideoKeyFrame *)v83 sharpness];
      v118 = (v229 - a4) * 100.0;
      v119 = a4;
      v120 = (a4 - v225) * 100.0;
      v122 = v120 + v118;
      photoSharpness = ((v120 * v121) + (v117 * v118)) / (v120 + v118);
      if (self->_photoSharpness >= photoSharpness)
      {
        photoSharpness = self->_photoSharpness;
      }

      self->_photoSharpness = photoSharpness;
      [(VCPLivePhotoKeyFrameAnalyzer *)self computeScoreForPhoto:v84 withRefKeyFrame:?];
      v125 = v124;
      *&v126 = self->_photoSharpness;
      [(VCPLivePhotoKeyFrameAnalyzer *)self computeScoreForPhoto:v83 withRefKeyFrame:v126];
      v128 = v127;
      if (self->_photoSharpnessReliable)
      {
        [(VCPVideoKeyFrame *)v84 score];
        v130 = v129;
        [(VCPVideoKeyFrame *)v83 score];
      }

      else
      {
        [(VCPVideoKeyFrame *)v84 semanticScore];
        v130 = v136;
        [(VCPVideoKeyFrame *)v83 semanticScore];
      }

      v137 = ((v120 * v131) + (v130 * v118)) / v122;
      v138 = v120 * (v214 + v128);
      time.start.value = v217;
      if (v137 >= ((v138 + ((v214 + v125) * v118)) / v122))
      {
        v88 = v137;
      }

      else
      {
        v88 = (v138 + ((v214 + v125) * v118)) / v122;
      }

      *&time.start.timescale = v221;
      time.start.epoch = v82;
      if (CMTimeGetSeconds(&time.start) == v225)
      {
        CMTimeMakeWithSeconds(&time.start, v211, SLODWORD(v221));
        a4 = v119;
        v217 = time.start.value;
        v221 = *&time.start.timescale;
        v89 = v88;
        v82 = time.start.epoch;
      }

      else
      {
        a4 = v119;
      }
    }

    [(VCPVideoKeyFrame *)v83 score];
    v151 = v83;

    ++v85;
    v225 = v229;
    v83 = v84;
    v84 = v151;
  }

  time.start.value = v217;
  *&time.start.timescale = v221;
  time.start.epoch = v82;
  if (vabdd_f64(CMTimeGetSeconds(&time.start), v211) < 0.200000003)
  {
LABEL_130:
    v152 = 0;
    v217 = *MEMORY[0x1E6960C70];
    v221 = *(MEMORY[0x1E6960C70] + 8);
    v89 = -1.0;
    v82 = *(MEMORY[0x1E6960C70] + 16);
    goto LABEL_131;
  }

  if (self->_photoSharpnessReliable)
  {
    v152 = 0;
    v162 = v89 >= (v88 + *&v183) && v88 <= 0.7;
    if (!v162 && (v89 - v88) < 0.2)
    {
      if (v88 > v89 || v195 < (v214 + 0.15))
      {
        goto LABEL_130;
      }

      goto LABEL_168;
    }
  }

  else
  {
    if (v184 >= (v88 + -0.01) && (*(&v183 + 1) - self->_photoSharpness) > 0.5)
    {
LABEL_168:
      v152 = 0;
      goto LABEL_131;
    }

    v89 = v203;
    v179 = v203 < (v88 + *&v183) || v88 > 0.7;
    v152 = 1;
    if (v179)
    {
      v82 = v191;
      if ((v203 - v88) < 0.2 && (v88 > v203 || v194 < (v214 + 0.15)))
      {
        goto LABEL_130;
      }
    }

    else
    {
      v82 = v191;
    }

    v217 = v196;
    v195 = v194;
    v221 = v190;
  }

LABEL_131:
  v153 = (v88 - v214) + 0.15;
  v154 = (v89 - v195);
  if (v153 > v154)
  {
    if (v214 > 0.7 || (LODWORD(v153) = 1053609165, *&v154 = v195, v195 < 0.4) && (*&v153 = v214, v214 == 0.0) && (*&v153 = v195, v195 > 0.0))
    {
      v217 = *MEMORY[0x1E6960C70];
      v153 = *(MEMORY[0x1E6960C70] + 8);
      v221 = v153;
      v89 = -1.0;
      v82 = *(MEMORY[0x1E6960C70] + 16);
    }
  }

  v219 = v152;
  v155 = [v212 objectForKeyedSubscript:{v153, v154}];
  v230 = [v155 objectAtIndexedSubscript:0];

  HIDWORD(v158) = HIDWORD(v221);
  if (BYTE4(v221))
  {
    v255[0] = @"keyFrameTime";
    time.start.value = v217;
    *&time.start.timescale = v221;
    time.start.epoch = v82;
    v159 = CMTimeCopyAsDictionary(&time.start, 0);
    v256[0] = v159;
    v255[1] = @"keyFrameScore";
    *&v160 = v89;
    v161 = [MEMORY[0x1E696AD98] numberWithFloat:v160];
    v256[1] = v161;
    v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v256 forKeys:v255 count:2];
  }

  else
  {
    v226 = 0;
  }

  v163 = v220;
  if (v230)
  {
    v164 = MEMORY[0x1E695DF90];
    v253[0] = @"start";
    v222 = [v230 objectForKeyedSubscript:?];
    v254[0] = v222;
    v253[1] = @"duration";
    v165 = [v230 objectForKeyedSubscript:?];
    v254[1] = v165;
    v253[2] = @"quality";
    v166 = [v230 objectForKeyedSubscript:?];
    v254[2] = v166;
    v253[3] = @"flags";
    v167 = [v230 objectForKeyedSubscript:?];
    v254[3] = v167;
    v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v254 forKeys:v253 count:4];
    v169 = [v164 dictionaryWithDictionary:v168];

    v170 = [v230 objectForKeyedSubscript:@"attributes"];
    v171 = [v170 mutableCopy];

    [v171 removeObjectForKey:@"keyFrameTime"];
    [v171 removeObjectForKey:@"keyFrameScore"];
    *&v172 = v197;
    if (v197 <= 0.03 && v226)
    {
      [v171 addEntriesFromDictionary:{v226, v172}];
    }

    if (v171)
    {
      [v169 setObject:v171 forKey:{@"attributes", v172}];
    }

    v173 = [MEMORY[0x1E695DEC8] arrayWithObject:{v169, v172}];
    [v209 vcp_setResult:v173 forKey:@"MovieSummaryResults"];

LABEL_159:
    v163 = v220;
  }

  else
  {
    v230 = 0;
    if (v197 <= 0.03 && v226)
    {
      v251[0] = @"start";
      v174 = MEMORY[0x1E6960CC0];
      *&time.start.value = *MEMORY[0x1E6960CC0];
      time.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      v175 = CMTimeCopyAsDictionary(&time.start, 0);
      v252[0] = v175;
      v251[1] = @"duration";
      *&time.start.value = *v174;
      time.start.epoch = *(v174 + 16);
      v176 = CMTimeCopyAsDictionary(&time.start, 0);
      v252[1] = v176;
      v252[2] = &unk_1F49BB268;
      v251[2] = @"quality";
      v251[3] = @"flags";
      v251[4] = @"attributes";
      v252[3] = &unk_1F49BE4A0;
      v252[4] = v226;
      v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:5];

      v169 = [MEMORY[0x1E695DEC8] arrayWithObject:v230];
      [v209 vcp_setResult:v169 forKey:@"MovieSummaryResults"];
      goto LABEL_159;
    }
  }

  if (v219)
  {
    v177 = v208;
  }

  else
  {
    v177 = v202;
  }

  *&v158 = v88;
  *&v156 = v214;
  *&v157 = a4;
  [VCPLivePhotoKeyFrameAnalyzer reportLivePhotoKeyFrameAnalysisResults:"reportLivePhotoKeyFrameAnalysisResults:selectedKeyFrame:originalStillKeyFrame:stillScore:stillFQScore:stillTimestamp:useSemanticOnly:isKeyFrameSuggested:" selectedKeyFrame:v197 > 0.03 originalStillKeyFrame:v177 stillScore:v163 stillFQScore:v158 stillTimestamp:v156 useSemanticOnly:v157 isKeyFrameSuggested:?];

  v14 = 0;
LABEL_164:

LABEL_165:
  return v14;
}

- (int)reportLivePhotoKeyFrameAnalysisResults:(BOOL)a3 selectedKeyFrame:(id)a4 originalStillKeyFrame:(id)a5 stillScore:(float)a6 stillFQScore:(float)a7 stillTimestamp:(float)a8 useSemanticOnly:(BOOL)a9 isKeyFrameSuggested:(BOOL)a10
{
  v10 = a10;
  v11 = a9;
  v16 = a3;
  v18 = a4;
  v19 = a5;
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v21 = v20;
  if (v20)
  {
    if (v10)
    {
      if (v11)
      {
        [v18 semanticScore];
      }

      else
      {
        [v18 score];
      }

      v24 = v22;
      [v18 overallFaceQualityScore];
      v26 = (v25 - a7) >= 0.15;
      [v18 overallFaceQualityScore];
      if ((v24 - v27) >= ((a6 - a7) + 0.2) || ([v18 overallFaceQualityScore], a6 <= 0.7) && (v24 - v28) >= ((a6 - a7) + 0.1))
      {
        [v18 sharpness];
        if ((v29 - self->_photoSharpness) <= 0.35 || v11)
        {
          v31 = 4;
        }

        else
        {
          v31 = 2;
        }

        v26 |= v31;
      }

      if (v16)
      {
        v32 = @"UserAlgo";
      }

      else
      {
        v32 = @"NoUserAlgo";
      }

      [v21 setObject:v32 forKeyedSubscript:@"KeyFrameIsSuggested"];
      *&v33 = v24 - a6;
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
      [v21 setObject:v34 forKeyedSubscript:@"KeyFrameScoreDifference"];

      v35 = MEMORY[0x1E696AD98];
      if (v18)
      {
        [v18 timestamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v36 = [v35 numberWithDouble:CMTimeGetSeconds(&time) - a8];
      [v21 setObject:v36 forKeyedSubscript:@"KeyFrameTimestampOffset"];

      v37 = [MEMORY[0x1E696AD98] numberWithInt:v26 & 1];
      [v21 setObject:v37 forKeyedSubscript:@"KeyFrameIsFaceQualityDominant"];

      v38 = [MEMORY[0x1E696AD98] numberWithInt:v26 & 4];
      [v21 setObject:v38 forKeyedSubscript:@"KeyFrameIsSemanticDominant"];

      v39 = [MEMORY[0x1E696AD98] numberWithInt:v26 & 2];
      [v21 setObject:v39 forKeyedSubscript:@"KeyFrameIsSharpnessDominant"];
    }

    else
    {
      [v20 setObject:@"NoAlgo" forKeyedSubscript:@"KeyFrameIsSuggested"];
    }

    if (v16)
    {
      [v21 setObject:@"UserOrig" forKeyedSubscript:@"KeyFrameIsSuggestedEdit"];
      if (v11 || !self->_photoSharpnessReliable)
      {
        [v19 semanticScore];
        v41 = 1;
      }

      else
      {
        [v19 score];
        v41 = 0;
      }

      v42 = a6 - v40;
      if (v42 < 0.0)
      {
        v43 = -1.0;
      }

      else
      {
        v43 = 1.0;
      }

      [v19 overallFaceQualityScore];
      v45 = ((a7 - *&v44) * v43) >= 0.15;
      if ((v41 & 1) == 0)
      {
        [v19 sharpness];
        if ((v43 * (*&v44 - self->_photoSharpness)) > 0.35)
        {
          v45 |= 2u;
        }
      }

      v46 = fabsf(v42);
      if (v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46 < 0.1;
      }

      v48 = !v47;
      *&v44 = v42;
      v49 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
      [v21 setObject:v49 forKeyedSubscript:@"KeyFrameScoreDifferenceEdit"];

      v50 = MEMORY[0x1E696AD98];
      if (v19)
      {
        [v19 timestamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v51 = [v50 numberWithDouble:a8 - CMTimeGetSeconds(&time)];
      [v21 setObject:v51 forKeyedSubscript:@"KeyFrameTimestampOffsetEdit"];

      if (v48)
      {
        v52 = 4;
      }

      else
      {
        v52 = v45;
      }

      v53 = [MEMORY[0x1E696AD98] numberWithInt:v52 & 1];
      [v21 setObject:v53 forKeyedSubscript:@"KeyFrameIsFaceQualityDominantEdit"];

      v54 = [MEMORY[0x1E696AD98] numberWithInt:v52 & 4];
      [v21 setObject:v54 forKeyedSubscript:@"KeyFrameIsSemanticDominantEdit"];

      v55 = [MEMORY[0x1E696AD98] numberWithInt:v52 & 2];
      [v21 setObject:v55 forKeyedSubscript:@"KeyFrameIsSharpnessDominantEdit"];
    }

    else
    {
      [v21 setObject:@"NoUserAlgo" forKeyedSubscript:@"KeyFrameIsSuggestedEdit"];
    }

    v56 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v56 sendEvent:@"com.apple.mediaanalysisd.livephotokeyframeresults" withAnalytics:v21];

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)fetchAndComputeScoreForKeyFrame:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"frameQualityScore"];
  [v8 floatValue];
  [v6 setQualityScoreForLivePhoto:?];

  v9 = [v7 objectForKeyedSubscript:@"visualPleasingScore"];
  [v9 floatValue];
  [v6 setVisualPleasingScore:?];

  v10 = [v7 objectForKeyedSubscript:@"exposureScore"];
  [v10 floatValue];
  [v6 setExposureScore:?];

  v11 = [v7 objectForKeyedSubscript:@"penaltyScore"];
  [v11 floatValue];
  [v6 setPenaltyScore:?];

  v12 = [v7 objectForKeyedSubscript:@"textureScore"];
  [v12 floatValue];
  [v6 setTextureScore:?];

  v13 = [v7 objectForKeyedSubscript:@"sharpnessScore"];
  [v13 floatValue];
  [v6 setSharpness:?];

  v14 = [v7 objectForKeyedSubscript:@"timestamp"];
  [v14 floatValue];
  CMTimeMakeWithSeconds(&v37, v15, 600);
  v36 = v37;
  [v6 setTimestamp:&v36];

  v16 = [v7 objectForKeyedSubscript:@"FaceResults"];
  [(VCPLivePhotoKeyFrameAnalyzer *)self computeOverallFaceQualityScore:v16];
  [v6 setOverallFaceQualityScore:?];

  if (self->_petsDominant)
  {
    [v6 sharpness];
    if (v17 <= 0.7)
    {
      [v6 sharpness];
      if (v18 > self->_photoSharpness)
      {
        [v6 setSharpness:?];
        [v6 qualityScoreForLivePhoto];
        if (self->_photoSharpness < *&v19)
        {
          *&v19 = self->_photoSharpness;
        }

        [v6 setQualityScoreForLivePhoto:v19];
      }
    }
  }

  [v6 qualityScoreForLivePhoto];
  v20 = 0.0;
  v21 = 0.0;
  if (v22 > 0.0)
  {
    [v6 qualityScoreForLivePhoto];
    if (v23 >= 0.3)
    {
      [v6 qualityScoreForLivePhoto];
      v25 = v24;
      [v6 visualPleasingScore];
      v27 = v26;
      [v6 penaltyScore];
      v20 = ((((v25 * 0.1) + 0.0) + (v27 * 0.25)) / 0.35) * v28;
    }

    [v6 penaltyScore];
    v30 = v29;
    [v6 visualPleasingScore];
    v21 = v30 * v31;
  }

  [v6 overallFaceQualityScore];
  v33 = 1.0;
  if (v20 < 1.0)
  {
    v33 = v20;
  }

  if (v20 <= 0.0)
  {
    v33 = 0.0;
  }

  *&v32 = *&v32 + v33;
  [v6 setScore:v32];
  [v6 overallFaceQualityScore];
  v35 = 1.0;
  if (v21 < 1.0)
  {
    v35 = v21;
  }

  if (v21 <= 0.0)
  {
    v35 = 0.0;
  }

  *&v34 = v35 + *&v34;
  [v6 setSemanticScore:v34];
}

- (float)computeScoreForPhoto:(float)a3 withRefKeyFrame:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0.0;
  if (a3 >= 0.0)
  {
    v8 = a3;
  }

  if (a3 >= 1.0)
  {
    v8 = 1.0;
  }

  if (self->_photoSharpnessReliable)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  [v6 sharpness];
  if (v10 <= 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    [v7 qualityScoreForLivePhoto];
    v12 = v11;
    v13 = 0.0;
    if (v12 == 0.0)
    {
      goto LABEL_16;
    }
  }

  if (v9 > 0.0)
  {
    if (self->_photoSharpnessReliable)
    {
      [v7 visualPleasingScore];
      v13 = (((v9 * 0.1) + 0.0) + (v14 * 0.25)) / 0.35;
    }

    else
    {
      [v7 visualPleasingScore];
    }
  }

LABEL_16:
  v15 = 1.0;
  if (v13 < 1.0)
  {
    v15 = v13;
  }

  if (v13 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (float)computeOverallFaceQualityScore:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (!self->_ignoreFace)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    while (v6 < [v4 count])
    {
      v9 = [v4 objectAtIndexedSubscript:v6];
      v10 = [v9 objectForKey:@"attributes"];
      v11 = [v10 objectForKey:@"faceBounds"];
      v24 = NSRectFromString(v11);
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      v16 = [v10 objectForKey:@"faceQuality"];
      [v16 floatValue];
      v18 = v17;

      [(VCPLivePhotoKeyFrameAnalyzer *)self getFaceHeat:x, y, width, height];
      if (height >= width)
      {
        v20 = height;
      }

      else
      {
        v20 = width;
      }

      v21 = v20;
      v22 = v19 * v21;
      v8 = v8 + (v18 * v22);
      v7 = v7 + v22;

      ++v6;
    }

    if (v7 <= 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v8 / v7;
    }
  }

  return v5;
}

- (void)createFaceHeatMap:(id)a3 imageFaces:(id)a4
{
  v13 = a3;
  v6 = a4;
  bzero(self->_faceHeatMap, self->_height * self->_width);
  v7 = [v13 count];
  self->_numOfFrames = v7 + 1;
  if (v7 >= 255)
  {
    v8 = (v7 + 1) / 0xFFu + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  self->_numOfFrames = 0;
  while (v9 < [v13 count])
  {
    v10 = [v13 objectAtIndexedSubscript:v9];
    v11 = [v10 objectForKeyedSubscript:@"attributes"];
    v12 = [v11 objectForKeyedSubscript:@"FaceResults"];

    [(VCPLivePhotoKeyFrameAnalyzer *)self updateFaceHeatMap:v12];
    ++self->_numOfFrames;

    v9 += v8;
  }

  [(VCPLivePhotoKeyFrameAnalyzer *)self updateFaceHeatMap:v6];
  ++self->_numOfFrames;
}

- (void)updateFaceHeatMap:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v24 + 1) + 8 * i) objectForKey:{@"attributes", v24}];
        v9 = [v8 objectForKey:@"faceBounds"];
        v30 = NSRectFromString(v9);
        if (v30.size.height >= 0.0700000003 || v30.size.width >= 0.0700000003)
        {
          self->_ignoreFace = 0;
        }

        width = self->_width;
        height = self->_height;
        v12 = v30.origin.x + v30.size.width;
        v13 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmulq_n_f64(v30.origin, width))));
        v14 = vand_s8(vmin_s32(v13, vdup_n_s32(width - 1)), vcgtz_s32(v13));
        v15 = height - 1;
        v16 = height;
        v17 = vcvtmd_s64_f64(v30.origin.y * height);
        if (v17 >= height - 1)
        {
          v18 = height - 1;
        }

        else
        {
          v18 = v17;
        }

        if (v17 <= 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        v20 = vcvtmd_s64_f64((v30.origin.y + v30.size.height) * v16);
        if (v20 < v15)
        {
          v15 = v20;
        }

        if (v20 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        v22 = v14.i32[0];
        if (v14.i32[0] < v14.i32[1])
        {
          do
          {
            v23 = v19;
            if (v19 < v21)
            {
              do
              {
                ++self->_faceHeatMap[v22 + self->_width * v23++];
              }

              while (v21 != v23);
            }

            ++v22;
          }

          while (v22 != v14.i32[1]);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (float)getFaceHeat:(CGRect)a3
{
  if (a3.origin.y < 1.0)
  {
    y = a3.origin.y;
  }

  else
  {
    y = 1.0;
  }

  if (a3.origin.y <= 0.0)
  {
    y = 0.0;
  }

  height = self->_height;
  v5 = (y * height);
  v6 = a3.origin.y + a3.size.height;
  if (v6 < 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v6 <= 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v8 * height);
  v10 = 0.0;
  if (v5 < v9)
  {
    v11 = 0;
    v12 = a3.origin.x + a3.size.width;
    if (v12 < 1.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    if (v12 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    width = self->_width;
    v16 = (v14 * width);
    if (a3.origin.x < 1.0)
    {
      x = a3.origin.x;
    }

    else
    {
      x = 1.0;
    }

    if (a3.origin.x <= 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = x;
    }

    v19 = (v18 * width);
    v20 = v5;
    v21 = v19 + width * v5;
    do
    {
      if (v19 < v16)
      {
        v22 = &self->_faceHeatMap[v21];
        v23 = v16 - v19;
        do
        {
          v25 = *v22++;
          v24 = v25;
          if (v11 <= v25)
          {
            v11 = v24;
          }

          --v23;
        }

        while (v23);
      }

      ++v20;
      v21 += width;
    }

    while (v20 != v9);
    v10 = v11;
  }

  v26 = v10 / self->_numOfFrames;
  v27 = 1.0;
  if (v26 < 1.0)
  {
    v27 = v10 / self->_numOfFrames;
  }

  if (v26 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v27;
  }
}

@end