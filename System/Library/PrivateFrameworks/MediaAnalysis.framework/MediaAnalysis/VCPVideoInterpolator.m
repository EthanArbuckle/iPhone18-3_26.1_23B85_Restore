@interface VCPVideoInterpolator
+ (void)sendPreGatedAnalytics;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)getFramePTSAfter:(SEL)a3 forAsset:(id *)a4;
- (BOOL)isIntraFrame:(id *)a3;
- (CGSize)getFrameSize:(id)a3;
- (VCPVideoInterpolator)initWithTimestamps:(id)a3 andIdentifier:(id)a4 andTrack:(id)a5;
- (__CVBuffer)calculateDeltaforUnstyledFrame:(__CVBuffer *)a3 styledFrame:(__CVBuffer *)a4 withCoefficients:(id)a5;
- (__CVBuffer)revertStyle:(__CVBuffer *)a3 withMetadata:(id)a4 withDeltaMap:(__CVBuffer *)a5;
- (id).cxx_construct;
- (id)addInputMediaType:(id)a3 toWriter:(id)a4 forTrack:(id)a5;
- (id)createDeltaTrackDecoder:(id)a3 timerange:(id *)a4;
- (id)createStyleInforMetadata:(id)a3 timerange:(id *)a4;
- (id)deserializeMetadata:(opaqueCMSampleBuffer *)a3;
- (id)findDeltaTrack:(id)a3;
- (id)findLearnedTrack:(id)a3;
- (id)findLinearThumbnailTrack:(id)a3;
- (id)findLivePhotoInfoOutput:(id)a3;
- (id)findStillImageTrack:(id)a3;
- (id)findStyleInfoTrack:(id)a3;
- (id)findTrack:(id)a3 forAsset:(id)a4;
- (id)getOriginalSamplesListforTrack:(id)a3;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)appendOutput:(id)a3 toTrack:(id)a4 startTimeStamp:(id *)a5 endTimeStamp:(id *)a6 offset:(id *)a7 duration:(id *)a8;
- (int)appendOutput:(id)a3 toWriterInput:(id)a4 startTimeStamp:(id *)a5 endTimeStamp:(id *)a6 offset:(id *)a7 duration:(id *)a8;
- (int)appendOutput:(id)a3 toWriterInput:(id)a4 withUpdatedTimeFrom:(id)a5 withOriginalTimeFrom:(id)a6;
- (int)checkDecodeIssuesForTrack:(id)a3;
- (int)checkFirstDisplayTimeForTrack:(id)a3;
- (int)combineVideoSegments;
- (int)combineVideoSegmentsWithAVMutableComposition;
- (int)combineVideoSegmentsWithAssetWriter;
- (int)createAuxMovie;
- (int)findIntraFrameList:(id)a3;
- (int)finishAnalysisPass:(id *)a3;
- (int)finishVideoSamplePTSUpdateWithVideoDuration:(id *)a3;
- (int)finishVideoSamplePTSUpdateWithVideoDurationGeneral:(id *)a3;
- (int)setupAdditionalAuxTrack;
- (int)setupLivePhotoInfoOutput:(id)a3;
- (int)updateCombinedMovie;
- (int)updateLivePhotoInfoSample:(opaqueCMSampleBuffer *)a3 withTimestamp:(id *)a4 withMetadata:(id)a5 isInterpolated:(BOOL)a6 updatedSample:(opaqueCMSampleBuffer *)a7;
- (int)updateSamplesPTSForList:(id)a3 toList:(id)a4;
- (int)updateSamplesPTSForListGeneral:(id)a3 toList:(id)a4;
- (void)dealloc;
@end

@implementation VCPVideoInterpolator

+ (void)sendPreGatedAnalytics
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699BE28];
  v6[0] = @"FRCGatingStatusField";
  v6[1] = v2;
  v7[0] = &unk_1F49BBBC0;
  v7[1] = &unk_1F49BBBC0;
  v3 = *MEMORY[0x1E699BE20];
  v6[2] = @"FRCGatingCauseField";
  v6[3] = v3;
  v7[2] = &unk_1F49BBBD8;
  v7[3] = &unk_1F49BBBD8;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v5 sendEvent:@"com.apple.mediaanalysisd.livePhotoFillingGaps" withAnalytics:v4];
}

- (VCPVideoInterpolator)initWithTimestamps:(id)a3 andIdentifier:(id)a4 andTrack:(id)a5
{
  v237 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v210 = a4;
  v9 = a5;
  v231.receiver = self;
  v231.super_class = VCPVideoInterpolator;
  v211 = v8;
  v10 = [(VCPVideoInterpolator *)&v231 init];
  v214 = v10;
  if (v10)
  {
    v209 = v9;
    v208 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v208 fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"])
    {
      v207 = 0;
    }

    else
    {
      v230 = 0;
      v12 = [v208 createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&v230];
      v207 = v230;
      if ((v12 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = [v207 description];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create resource file cache directory (%@)", &buf, 0xCu);
        }

        v11 = 0;
        goto LABEL_40;
      }
    }

    v216 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v215 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v206 = [v8 objectForKeyedSubscript:@"MetaAdjusterResults"];
    [v10 getFrameSize:v9];
    v15 = [MEMORY[0x1E699BE48] getUsageFromSizeWidth:v13 height:v14];
    if (v15 == -1)
    {
      v18 = v10;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      LOWORD(buf.start.value) = 0;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Video resolution not supported";
LABEL_14:
      _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_ERROR, v20, &buf, 2u);
LABEL_37:
      v97 = 0;
LABEL_38:
      v98 = 0;
      *(v18 + 401) = 1;
LABEL_39:
      v11 = v98;

LABEL_40:
      v9 = v209;
      goto LABEL_41;
    }

    v16 = [v9 segments];
    v17 = [v16 count] > 1;

    if (v17)
    {
      v18 = v10;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      LOWORD(buf.start.value) = 0;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Video with multiple edits not supported";
      goto LABEL_14;
    }

    v10[401] = 0;
    v10[404] = 0;
    v22 = *MEMORY[0x1E6960CA8];
    v23 = *(MEMORY[0x1E6960CA8] + 32);
    *(v10 + 424) = *(MEMORY[0x1E6960CA8] + 16);
    *(v10 + 440) = v23;
    v204 = (v10 + 408);
    *(v10 + 408) = v22;
    objc_storeStrong(v10 + 26, a5);
    v24 = *(v10 + 1);
    *(v10 + 1) = 0;

    v25 = *(v10 + 3);
    *(v10 + 3) = 0;

    v26 = *(v10 + 4);
    *(v10 + 4) = 0;

    *(v10 + 5) = 0;
    v27 = MEMORY[0x1E696AEC0];
    v28 = [MEMORY[0x1E696AFB0] UUID];
    v29 = [v28 UUIDString];
    v30 = [v27 stringWithFormat:@"%@frc-tmp-%@.MOV", @"/tmp/com.apple.mediaanalysisd/", v29];
    v31 = *(v10 + 20);
    *(v10 + 20) = v30;

    v32 = MEMORY[0x1E696AEC0];
    v33 = NSTemporaryDirectory();
    v34 = [MEMORY[0x1E696AFB0] UUID];
    v35 = [v34 UUIDString];
    v36 = [v32 stringWithFormat:@"%@frc-tmp-composition-%@.MOV", v33, v35];
    v37 = *(v10 + 21);
    *(v10 + 21) = v36;

    v38 = MEMORY[0x1E696AEC0];
    v39 = NSTemporaryDirectory();
    v40 = [MEMORY[0x1E696AFB0] UUID];
    v41 = [v40 UUIDString];
    v42 = [v38 stringWithFormat:@"%@frc-tmp-segment-%@.MOV", v39, v41];
    v43 = *(v10 + 22);
    *(v10 + 22) = v42;

    v44 = MEMORY[0x1E696AEC0];
    v45 = NSTemporaryDirectory();
    v46 = [MEMORY[0x1E696AFB0] UUID];
    v47 = [v46 UUIDString];
    v48 = [v44 stringWithFormat:@"%@frc-tmp-aux-%@.MOV", v45, v47];
    v49 = *(v10 + 23);
    *(v10 + 23) = v48;

    v50 = [MEMORY[0x1E695DEC8] array];
    v51 = *(v10 + 44);
    *(v10 + 44) = v50;

    v52 = [MEMORY[0x1E695DF70] array];
    v53 = *(v10 + 47);
    *(v10 + 47) = v52;

    v54 = [MEMORY[0x1E695DEC8] array];
    v55 = *(v10 + 45);
    *(v10 + 45) = v54;

    v56 = [MEMORY[0x1E695DF70] array];
    v57 = *(v10 + 48);
    *(v10 + 48) = v56;

    v58 = [MEMORY[0x1E695DEC8] array];
    v59 = *(v10 + 46);
    *(v10 + 46) = v58;

    v60 = [MEMORY[0x1E695DF70] array];
    v61 = *(v10 + 49);
    *(v10 + 49) = v60;

    v10[403] = 1;
    v62 = [v9 asset];
    v63 = [v10 findDeltaTrack:v62];
    LOBYTE(v46) = v63 != 0;

    v10[403] = v46;
    v64 = [v211 objectForKeyedSubscript:@"MetaSSResults"];
    v65 = *(v10 + 31);
    *(v10 + 31) = v64;

    v10[402] = *(v10 + 31) != 0;
    v66 = [v10 getOriginalSamplesListforTrack:*(v10 + 26)];
    v67 = *(v10 + 44);
    *(v10 + 44) = v66;

    if (v10[402] == 1)
    {
      v68 = [*(v10 + 26) asset];
      v69 = [v10 findLearnedTrack:v68];
      v70 = [v10 getOriginalSamplesListforTrack:v69];
      v71 = *(v10 + 45);
      *(v10 + 45) = v70;

      v72 = [*(v10 + 26) asset];
      v73 = [v10 findLinearThumbnailTrack:v72];
      v74 = [v10 getOriginalSamplesListforTrack:v73];
      v75 = *(v10 + 46);
      *(v10 + 46) = v74;

      v18 = v10;
      if (!*(v10 + 44) || !*(v10 + 45) || !*(v10 + 46))
      {
        goto LABEL_37;
      }
    }

    v76 = objc_alloc(MEMORY[0x1E6987E78]);
    v77 = [v209 asset];
    v78 = [v76 initWithAsset:v77 error:0];
    v79 = *(v10 + 42);
    *(v10 + 42) = v78;

    v80 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v81 = *(v10 + 43);
    *(v10 + 43) = v80;

    v82 = [v209 asset];
    v83 = v82;
    if (v82)
    {
      [v82 vcp_livePhotoStillDisplayTime];
    }

    else
    {
      memset(&buf, 0, 24);
    }

    epoch = buf.start.epoch;
    *(v10 + 88) = *&buf.start.value;
    v202 = v10 + 88;
    *(v10 + 13) = epoch;

    v85 = MEMORY[0x1E6960C70];
    v86 = *(MEMORY[0x1E6960C70] + 16);
    *(v10 + 7) = *MEMORY[0x1E6960C70];
    v205 = v10 + 112;
    *(v10 + 16) = v86;
    v87 = *(v85 + 16);
    *(v10 + 136) = *v85;
    v203 = v10 + 136;
    *(v10 + 19) = v87;
    v88 = objc_alloc_init(MEMORY[0x1E699BE48]);
    v89 = *(v10 + 2);
    *(v10 + 2) = v88;

    v18 = v10;
    if (!*(v10 + 2))
    {
      goto LABEL_37;
    }

    v10[400] = [v10 checkFirstDisplayTimeForTrack:*(v10 + 26)] != 0;
    if (!+[VCPVideoInterpolator allowDetectSingleDrop])
    {
      [*(v10 + 2) setSingleDropRecoveryEnabled:0];
    }

    if (v10[402] == 1)
    {
      [*(v10 + 2) setQualityMode:4];
      [*(v10 + 2) setLowMemoryMode:1];
    }

    else
    {
      [*(v10 + 2) setQualityMode:{+[VCPVideoInterpolator getFRCQualityMode](VCPVideoInterpolator, "getFRCQualityMode")}];
    }

    if (v209)
    {
      [v209 preferredTransform];
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    v90 = *(v10 + 2);
    buf = v229;
    [v90 setPreferredTransform:&buf];
    if ([*(v10 + 2) startSessionWithUsage:v15] == -22000)
    {
      v91 = objc_alloc(MEMORY[0x1E6987E78]);
      v92 = [v209 asset];
      v93 = [v91 initWithAsset:v92 error:0];
      v94 = *(v10 + 24);
      *(v10 + 24) = v93;

      *(v10 + 28) = 0;
      v95 = [MEMORY[0x1E695DF70] array];
      v96 = *(v10 + 29);
      *(v10 + 29) = v95;

      v18 = v10;
      if ([v10 findIntraFrameList:v209])
      {
        goto LABEL_37;
      }

      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      obj = v206;
      v100 = [obj countByEnumeratingWithState:&v225 objects:v235 count:16];
      if (v100)
      {
        v213 = *v226;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v226 != v213)
            {
              objc_enumerationMutation(obj);
            }

            v102 = [*(*(&v225 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v103 = objc_alloc_init(MEMORY[0x1E699BE58]);
            v104 = [v102 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
            CMTimeMakeFromDictionary(&v224, v104);
            buf.start = v224;
            [v103 setPresentationTimeStamp:&buf];

            [v216 addObject:v103];
            v105 = objc_alloc_init(MEMORY[0x1E699BE50]);
            v106 = [v102 objectForKeyedSubscript:@"MetaOriginalPTSInNanosResults"];
            [v105 setOriginalPTSInNanos:{objc_msgSend(v106, "unsignedIntegerValue")}];

            v107 = [v102 objectForKeyedSubscript:@"MetaPTSInNanosResults"];
            [v105 setPtsInNanos:{objc_msgSend(v107, "unsignedIntegerValue")}];

            v108 = [v102 objectForKeyedSubscript:@"MetaAdjusterRecipeResults"];
            [v105 setSequenceAdjusterRecipe:{objc_msgSend(v108, "unsignedIntegerValue")}];

            v109 = [v102 objectForKeyedSubscript:@"MetaAdjusterDisplacementKey"];
            [v105 setSequenceAdjusterDisplacement:{objc_msgSend(v109, "integerValue")}];

            [v215 addObject:v105];
          }

          v100 = [obj countByEnumeratingWithState:&v225 objects:v235 count:16];
        }

        while (v100);
      }

      v110 = *(v10 + 2);
      v223 = 0;
      v111 = [v110 selectFrameInsertionPointsFromTimingList:v216 metadataList:v215 withError:&v223];
      v97 = v223;
      v112 = *(v10 + 1);
      *(v10 + 1) = v111;

      if ([v97 code] == -22006)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v113 = [v97 localizedDescription];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v113;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "FRC gating not passed: %@", &buf, 0xCu);
        }

        v10[401] = 1;
        v98 = v10;
        goto LABEL_39;
      }

      if ([*(v10 + 1) count] >= 2)
      {
        v114 = v10;
        v115 = [*(v10 + 1) count];
        v116 = 0;
        v117 = 0;
        do
        {
          if (v116 >= [v114[1] count])
          {
            break;
          }

          v118 = [v114[1] objectAtIndexedSubscript:v116];
          v119 = v118;
          if (v118)
          {
            [v118 presentationTimeStamp];
          }

          else
          {
            memset(&buf, 0, 24);
          }

          v120 = [v114 isIntraFrame:&buf];
          v121 = [v119 numberOfFramesToInsert];
          if (v120)
          {
            v117 = v116;
          }

          v122 = v121 == 0;

          ++v116;
          v114 = v214;
        }

        while (v122);
        v123 = [v114[1] count];
        if (v123 > v117 + 1)
        {
          do
          {
            if (v123 < [v114[1] count])
            {
              v124 = [v114[1] objectAtIndexedSubscript:v123];
              v125 = v124;
              if (v124)
              {
                [v124 presentationTimeStamp];
              }

              else
              {
                memset(&buf, 0, 24);
              }

              v126 = [v114 isIntraFrame:&buf];

              if (v126)
              {
                v115 = v123;
              }

              v114 = v214;
            }

            v127 = [v114[1] objectAtIndexedSubscript:v123 - 2];
            v128 = [v127 numberOfFramesToInsert] == 0;

            v129 = --v123 > v117 + 1 && v128;
            v114 = v214;
          }

          while (v129);
        }

        v130 = [v114[1] objectAtIndexedSubscript:v117];
        v131 = v130;
        if (v130)
        {
          [v130 presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, 24);
        }

        v132 = *&buf.start.value;
        *(v205 + 2) = buf.start.epoch;
        *v205 = v132;

        v18 = v214;
        v133 = [*(v214 + 1) count];
        v134 = v115;
        if (v115 == v133)
        {
          v135 = *MEMORY[0x1E6960C88];
          *(v203 + 2) = *(MEMORY[0x1E6960C88] + 16);
          *v203 = v135;
        }

        else
        {
          v136 = [*(v214 + 1) objectAtIndexedSubscript:v115];
          v137 = v136;
          if (v136)
          {
            [v136 presentationTimeStamp];
          }

          else
          {
            memset(&buf, 0, 24);
          }

          v138 = *&buf.start.value;
          *(v203 + 2) = buf.start.epoch;
          *v203 = v138;

          v18 = v214;
          v134 = v115;
        }

        v139 = v134 - v117;
        if (v134 - v117 < 2)
        {
          goto LABEL_38;
        }

        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v140 = v18[44];
        v141 = [v140 countByEnumeratingWithState:&v219 objects:v234 count:16];
        if (v141)
        {
          v142 = *v220;
          do
          {
            for (j = 0; j != v141; ++j)
            {
              if (*v220 != v142)
              {
                objc_enumerationMutation(v140);
              }

              v144 = *(*(&v219 + 1) + 8 * j);
              memset(&rhs, 0, sizeof(rhs));
              CMTimeMakeFromDictionary(&rhs, v144);
              buf.start = rhs;
              v145 = *v205;
              time2.epoch = *(v205 + 2);
              *&time2.value = v145;
              if (CMTimeCompare(&buf.start, &time2) < 0)
              {
                [v18[47] addObject:v144];
              }
            }

            v141 = [v140 countByEnumeratingWithState:&v219 objects:v234 count:16];
          }

          while (v141);
        }

        v146 = [*(v214 + 1) subarrayWithRange:{v117, v139}];
        v147 = *(v214 + 1);
        *(v214 + 1) = v146;

        v148 = *v205;
        start.epoch = *(v205 + 2);
        *&start.value = v148;
        v149 = *v203;
        time2.epoch = *(v203 + 2);
        *&time2.value = v149;
        v150 = *v205;
        rhs.epoch = *(v205 + 2);
        *&rhs.value = v150;
        CMTimeSubtract(&duration, &time2, &rhs);
        CMTimeRangeMake(&buf, &start, &duration);
        v151 = *&buf.start.value;
        v152 = *&buf.duration.timescale;
        v204[1] = *&buf.start.epoch;
        v204[2] = v152;
        *v204 = v151;
        v18 = v214;
        if (v214[402] == 1)
        {
          v153 = *v205;
          time2.epoch = *(v205 + 2);
          *&time2.value = v153;
          v154 = [v209 asset];
          [v214 getFramePTSAfter:&time2 forAsset:v154];
          v155 = buf.start.epoch;
          *(v214 + 312) = *&buf.start.value;
          *(v214 + 41) = v155;

          v156 = v214;
          if (v214[403] == 1)
          {
            v157 = [v209 asset];
            v158 = [v214 findDeltaTrack:v157];
            v159 = *(v214 + 27);
            *(v214 + 27) = v158;

            v160 = *(v214 + 27);
            v161 = *v204;
            v162 = v204[2];
            *&buf.start.epoch = v204[1];
            *&buf.duration.timescale = v162;
            *&buf.start.value = v161;
            v163 = [v214 createDeltaTrackDecoder:v160 timerange:&buf];
            v164 = *(v214 + 33);
            *(v214 + 33) = v163;

            v156 = v214;
          }

          v165 = [objc_alloc(MEMORY[0x1E6991718]) initWithOptionalMetalCommandQueue:0 useCase:0];
          v166 = *(v156 + 30);
          *(v156 + 30) = v165;

          v18 = v214;
          v167 = *(v214 + 42);
          v168 = *v204;
          v169 = v204[2];
          *&buf.start.epoch = v204[1];
          *&buf.duration.timescale = v169;
          *&buf.start.value = v168;
          [v167 setTimeRange:&buf];
          if ([v214 setupAdditionalAuxTrack])
          {
            goto LABEL_38;
          }
        }

        v170 = v18[24];
        v171 = *v204;
        v172 = v204[2];
        *&buf.start.epoch = v204[1];
        *&buf.duration.timescale = v172;
        *&buf.start.value = v171;
        [v170 setTimeRange:&buf];
        v173 = [v209 asset];
        v174 = [v18 setupLivePhotoInfoOutput:v173];

        if (!v174)
        {
          v18 = v214;
          if (v214[402] != 1)
          {
LABEL_106:
            v189 = [obj count];
            v190 = 0;
            for (k = 0; k < [v18[1] count] - 1; ++k)
            {
              v192 = [v18[1] objectAtIndexedSubscript:k];
              v193 = [v192 numberOfFramesToInsert];

              v190 += v193;
              v18 = v214;
            }

            [v209 estimatedDataRate];
            v195 = v194;
            v196 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18[20]];
            v197 = [VCPMovieAssetWriter assetWriterWithURL:v196 andTrack:v209 andBitrate:fminf((v195 * (v190 + v189)) / v189 withOutputSize:25000000.0) enableAudio:1 enableStyle:*(v18 + 402) hasStyleApplied:*(v18 + 403), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
            v198 = v18[6];
            v18[6] = v197;

            v18 = v214;
            v199 = *(v214 + 6);
            if (!v199)
            {
              goto LABEL_38;
            }

            if (![v199 dispatchEncoding])
            {
              v200 = *(v214 + 6);
              v201 = *v202;
              buf.start.epoch = *(v202 + 2);
              *&buf.start.value = v201;
              [v200 updateStillPTS:&buf];
              v98 = v214;
              goto LABEL_39;
            }

            goto LABEL_43;
          }

          v175 = [*(v214 + 31) objectAtIndexedSubscript:v117];
          v176 = [v175 objectForKeyedSubscript:@"attributes"];
          v177 = [v176 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
          CMTimeMakeFromDictionary(&rhs, v177);
          v178 = *v205;
          buf.start.epoch = *(v205 + 2);
          *&buf.start.value = v178;
          time2 = rhs;
          v179 = CMTimeCompare(&buf.start, &time2) == 0;

          if (v179)
          {
            v180 = *v203;
            buf.start.epoch = *(v203 + 2);
            *&buf.start.value = v180;
            time2 = **&MEMORY[0x1E6960C88];
            v18 = v214;
            if (CMTimeCompare(&buf.start, &time2))
            {
              v181 = [*(v214 + 31) objectAtIndexedSubscript:v115];
              v182 = [v181 objectForKeyedSubscript:@"attributes"];
              v183 = [v182 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
              CMTimeMakeFromDictionary(&rhs, v183);
              v184 = *v203;
              buf.start.epoch = *(v203 + 2);
              *&buf.start.value = v184;
              time2 = rhs;
              v185 = CMTimeCompare(&buf.start, &time2) == 0;

              v18 = v214;
              if (!v185)
              {
                goto LABEL_38;
              }
            }

            v186 = [v18[31] subarrayWithRange:{v117, v139}];
            v187 = v18[31];
            v18[31] = v186;

            v18 = v214;
            v188 = [*(v214 + 1) count];
            if (v188 != [*(v214 + 31) count])
            {
              goto LABEL_38;
            }

            goto LABEL_106;
          }
        }
      }
    }

    else
    {
      v97 = 0;
    }

LABEL_43:
    v18 = v214;
    goto LABEL_38;
  }

  v11 = 0;
LABEL_41:

  return v11;
}

- (id)createDeltaTrackDecoder:(id)a3 timerange:(id *)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963440];
  v14[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2016686640];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E6966130];
  v13 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [[VCPVideoTrackStandardDecoder alloc] initWithTrack:v5 timerange:a4 withSettings:v9 applyTransform:0];

  return v10;
}

- (id)findDeltaTrack:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  [a3 tracksWithMediaType:*MEMORY[0x1E69875B0]];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v20 = *MEMORY[0x1E6987708];
    v21 = *v28;
    v18 = *MEMORY[0x1E6987858];
    v19 = *MEMORY[0x1E6987908];
    do
    {
      v17 = v3;
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = MEMORY[0x1E6987FE0];
        v7 = [v5 metadataForFormat:v20, v17];
        v8 = [v6 metadataItemsFromArray:v7 withKey:v19 keySpace:v18];

        if (v8)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = *v24;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v24 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = [*(*(&v23 + 1) + 8 * j) stringValue];
                v14 = [@"com.apple.quicktime.video-map.smart-style-delta-map" isEqualToString:v13];

                if (v14)
                {
                  v15 = v5;

                  goto LABEL_21;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v15 = 0;
    }

    while (v3);
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

- (id)findStyleInfoTrack:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [a3 vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875D0]];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 formatDescriptions];
        v9 = [v8 firstObject];

        if (v9)
        {
          v10 = CMMetadataFormatDescriptionGetIdentifiers(v9);
          if ([v10 containsObject:@"mdta/com.apple.quicktime.smartstyle-info"])
          {
            v4 = v7;

            goto LABEL_13;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (id)findLivePhotoInfoOutput:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [a3 vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875D0]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    v6 = *MEMORY[0x1E6990A00];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 formatDescriptions];
        v10 = [v9 firstObject];

        if (v10)
        {
          v11 = CMMetadataFormatDescriptionGetIdentifiers(v10);
          if ([v11 containsObject:v6])
          {
            v12 = v8;

            goto LABEL_13;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)findStillImageTrack:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [a3 vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875D0]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    v6 = *MEMORY[0x1E69629E0];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 formatDescriptions];
        v10 = [v9 firstObject];

        if (v10)
        {
          v11 = CMMetadataFormatDescriptionGetIdentifiers(v10);
          if ([v11 containsObject:v6])
          {
            v12 = v8;

            goto LABEL_13;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)getOriginalSamplesListforTrack:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DEC8] array];
    v6 = objc_alloc(MEMORY[0x1E6987E78]);
    v7 = [v3 asset];
    v8 = [v6 initWithAsset:v7 error:0];

    v9 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:v3];
    if (([v8 canAddOutput:v9] & 1) != 0 && (objc_msgSend(v8, "addOutput:", v9), objc_msgSend(v8, "startReading")))
    {
      while (1)
      {
        v10 = [v9 copyNextSampleBuffer];
        v11 = v10;
        if (!v10)
        {
          break;
        }

        if (CMSampleBufferGetNumSamples(v10))
        {
          memset(&v16, 0, sizeof(v16));
          CMSampleBufferGetOutputPresentationTimeStamp(&v16, v11);
          time = v16;
          v12 = CMTimeCopyAsDictionary(&time, 0);
          [v4 addObject:v12];
        }

        CFRelease(v11);
      }

      v13 = [v4 sortedArrayUsingComparator:&__block_literal_global_17];

      v5 = v13;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __55__VCPVideoInterpolator_getOriginalSamplesListforTrack___block_invoke(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v4 = a3;
  CMTimeMakeFromDictionary(&v8, a2);
  CMTimeMakeFromDictionary(&v7, v4);
  time1 = v8;
  time2 = v7;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (int)setupLivePhotoInfoOutput:(id)a3
{
  v4 = a3;
  v5 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v4];
  v6 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v5 outputSettings:0];
  livePhotoInfoOutput = self->_livePhotoInfoOutput;
  self->_livePhotoInfoOutput = v6;

  if ([(AVAssetReader *)self->_assetReader canAddOutput:self->_livePhotoInfoOutput])
  {
    [(AVAssetReader *)self->_assetReader addOutput:self->_livePhotoInfoOutput];
    if ([(AVAssetReader *)self->_assetReader startReading])
    {
      v8 = 0;
    }

    else
    {
      v8 = -19;
    }
  }

  else
  {
    v8 = -18;
  }

  return v8;
}

- (int)findIntraFrameList:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = [v24 formatDescriptions];
  if ([v23 count] == 1)
  {
    v3 = [v23 objectAtIndexedSubscript:0];

    MediaSubType = CMFormatDescriptionGetMediaSubType(v3);
    v5 = objc_alloc(MEMORY[0x1E6987E78]);
    v6 = [v24 asset];
    v22 = [v5 initWithAsset:v6 error:0];

    v25 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:v24];
    if ([v22 canAddOutput:?])
    {
      [v22 addOutput:v25];
      if ([v22 startReading])
      {
        v7 = *MEMORY[0x1E6960430];
        v8 = *MEMORY[0x1E6960400];
        while (1)
        {
          v9 = [v25 copyNextSampleBuffer];
          v10 = v9;
          if (!v9)
          {
            break;
          }

          sbuf = v9;
          if (CMSampleBufferGetNumSamples(v9))
          {
            v11 = CMSampleBufferGetSampleAttachmentsArray(v10, 1u);
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            obj = v11;
            v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v12)
            {
              v13 = *v31;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v31 != v13)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = *(*(&v30 + 1) + 8 * i);
                  v16 = [v15 objectForKeyedSubscript:v7];
                  v17 = [v15 objectForKeyedSubscript:v8];
                  v18 = v17;
                  if (MediaSubType == 1752589105 && v16 || MediaSubType != 1752589105 && v17 && ![v17 intValue])
                  {
                    memset(&v29, 0, sizeof(v29));
                    CMSampleBufferGetOutputPresentationTimeStamp(&v29, sbuf);
                    intraFrameList = self->_intraFrameList;
                    time = v29;
                    v20 = CMTimeCopyAsDictionary(&time, 0);
                    [(NSMutableArray *)intraFrameList addObject:v20];
                  }
                }

                v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
              }

              while (v12);
            }
          }

          CFRelease(sbuf);
        }
      }

      else
      {
        LODWORD(v10) = -19;
      }
    }

    else
    {
      LODWORD(v10) = -18;
    }
  }

  else
  {
    LODWORD(v10) = -18;
  }

  return v10;
}

- (void)dealloc
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ([(VCPMovieAssetWriter *)self->_assetWriter status]== 1)
  {
    [(VCPMovieAssetWriter *)self->_assetWriter cancel];
  }

  previousMetadata = self->_previousMetadata;
  if (previousMetadata)
  {
    CFRelease(previousMetadata);
    self->_previousMetadata = 0;
  }

  if (self->_hasStyleApplied)
  {
    previousDeltaSample = self->_previousDeltaSample;
    if (previousDeltaSample)
    {
      CFRelease(previousDeltaSample);
      self->_previousDeltaSample = 0;
    }
  }

  [(AVAssetReader *)self->_assetReader cancelReading];
  if (self->_processAborted)
  {
    frameInterpolator = self->_frameInterpolator;
    if (frameInterpolator)
    {
      [(FRCFrameInterpolator *)frameInterpolator endSession];
    }
  }

  if (self->_cancelled)
  {
    v6 = *MEMORY[0x1E699BE28];
    v15[0] = @"FRCGatingStatusField";
    v15[1] = v6;
    v16[0] = &unk_1F49BBBF0;
    v16[1] = &unk_1F49BBBF0;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v8 = [(FRCFrameInterpolator *)self->_frameInterpolator sessionStatistics];
    v9 = [v8 mutableCopy];

    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E699BE28]];
    [v9 setObject:v10 forKeyedSubscript:@"FRCGatingStatusField"];

    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E699BE20]];
    [v9 setObject:v11 forKeyedSubscript:@"FRCGatingCauseField"];

    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E699BE30]];
    [v9 setObject:v12 forKeyedSubscript:@"FRCLivePhotoBurstDropDurationKeyField"];

    v7 = [v9 copy];
  }

  v13 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v13 sendEvent:@"com.apple.mediaanalysisd.livePhotoFillingGaps" withAnalytics:v7];

  v14.receiver = self;
  v14.super_class = VCPVideoInterpolator;
  [(VCPVideoInterpolator *)&v14 dealloc];
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v229[1] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  if (self->_processAborted)
  {
    objc_autoreleasePoolPop(v9);
    return 0;
  }

  context = v9;
  if (self->_previousFrame)
  {
    v195 = a4;
    anchorIndex = self->_anchorIndex;
    if (anchorIndex + 1 >= [(NSArray *)self->_frameInsertionLists count])
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      LOWORD(time1.start.value) = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "FRC number of frames inconsistent with metadata";
    }

    else
    {
      v12 = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer];
      if (v12)
      {
        v13 = v12;
        while (!CMSampleBufferGetNumSamples(v13))
        {
          CFRelease(v13);
          v13 = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer];
          if (!v13)
          {
            goto LABEL_9;
          }
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&duration, v13);
        *&time1.start.value = *&v195->var0;
        time1.start.epoch = v195->var3;
        time2.start = duration;
        if (CMTimeCompare(&time1.start, &time2.start))
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }

          LOWORD(time1.start.value) = 0;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "Inconsistent live photo info and video frame timestamp";
          goto LABEL_32;
        }

        v28 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
        v29 = v28;
        if (v28)
        {
          [v28 presentationTimeStamp];
        }

        else
        {
          memset(&duration, 0, sizeof(duration));
        }

        p_stillPTS = &self->_stillPTS;
        time1.start = duration;
        *&time2.start.value = *&self->_stillPTS.value;
        time2.start.epoch = self->_stillPTS.epoch;
        if (CMTimeCompare(&time1.start, &time2.start) < 1)
        {
          v39 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex + 1];
          v40 = v39;
          if (v39)
          {
            [v39 presentationTimeStamp];
          }

          else
          {
            memset(&v212, 0, sizeof(v212));
          }

          time1.start = v212;
          *&time2.start.value = *&p_stillPTS->value;
          time2.start.epoch = self->_stillPTS.epoch;
          v41 = CMTimeCompare(&time1.start, &time2.start) > 0;

          if (v41)
          {
            *&time1.start.value = *&self->_anchorPTS.value;
            time1.start.epoch = self->_anchorPTS.epoch;
            *&time2.start.value = *&p_stillPTS->value;
            time2.start.epoch = self->_stillPTS.epoch;
            CMTimeAdd(&v212, &time1.start, &time2.start);
            v42 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
            v43 = v42;
            if (v42)
            {
              [v42 presentationTimeStamp];
            }

            else
            {
              memset(&v211, 0, sizeof(v211));
            }

            time1.start = v212;
            time2.start = v211;
            CMTimeSubtract(&duration, &time1.start, &time2.start);
            *&p_stillPTS->value = *&duration.value;
            self->_stillPTS.epoch = duration.epoch;

            assetWriter = self->_assetWriter;
            *&time1.start.value = *&p_stillPTS->value;
            time1.start.epoch = self->_stillPTS.epoch;
            [(VCPMovieAssetWriter *)assetWriter updateStillPTS:&time1];
          }
        }

        else
        {
        }

        v45 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
        v194 = v45;
        memset(&v212, 0, sizeof(v212));
        if (v45)
        {
          [v45 interpolatedFrameDuration];
        }

        else
        {
          memset(&time2, 0, 24);
        }

        v46 = [v194 numberOfFramesToInsert];
        *&time1.start.value = *&time2.start.value;
        time1.start.epoch = time2.start.epoch;
        CMTimeMultiply(&v212, &time1.start, v46 + 1);
        v47 = objc_alloc(MEMORY[0x1E699BE38]);
        *&time1.start.value = *&self->_anchorPTS.value;
        p_anchorPTS = &self->_anchorPTS;
        time1.start.epoch = self->_anchorPTS.epoch;
        time2.start = v212;
        CMTimeAdd(&duration, &time1.start, &time2.start);
        obj = [v47 initWithBuffer:a3 presentationTimeStamp:&duration];
        if (self->_enableStyle)
        {
          if (self->_hasStyleApplied)
          {
            cf = [(VCPVideoTrackDecoder *)self->_deltaTrackDecoder copyNextSampleBuffer];
            if (!cf)
            {
              if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_116;
              }

              LOWORD(time1.start.value) = 0;
              v48 = MEMORY[0x1E69E9C10];
              v49 = "Number of frames inconsistent with delta map samples";
LABEL_115:
              _os_log_impl(&dword_1C9B70000, v48, OS_LOG_TYPE_ERROR, v49, &time1, 2u);
LABEL_116:
              v187 = 0;
LABEL_117:
              v186 = 0;
              v10 = -18;
LABEL_134:

              objc_autoreleasePoolPop(context);
              return v10;
            }
          }

          else
          {
            cf = 0;
          }

          v62 = self->_anchorIndex;
          if (v62 + 1 >= [(NSArray *)self->_smartStyleMetadata count])
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            LOWORD(time1.start.value) = 0;
            v48 = MEMORY[0x1E69E9C10];
            v49 = "Number of frames inconsistent with smart style metadata";
            goto LABEL_115;
          }

          v192 = [(NSArray *)self->_smartStyleMetadata objectAtIndexedSubscript:self->_anchorIndex + 1];
          v63 = [v192 objectForKeyedSubscript:@"attributes"];
          v64 = [v63 objectForKeyedSubscript:@"MetaSSInfoResults"];
          v187 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v64, 2uLL, 0, 0);

          if (!v187)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            LOWORD(time1.start.value) = 0;
            v48 = MEMORY[0x1E69E9C10];
            v49 = "Missing metadata";
            goto LABEL_115;
          }

          if (self->_hasStyleApplied)
          {
            v65 = [(VCPVideoInterpolator *)self revertStyle:a3 withMetadata:v187 withDeltaMap:CMSampleBufferGetImageBuffer(cf)];
            if (!v65)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                LOWORD(time1.start.value) = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to compute unstyled buffer", &time1, 2u);
              }

              goto LABEL_117;
            }

            v66 = objc_alloc(MEMORY[0x1E699BE38]);
            *&time1.start.value = *&p_anchorPTS->value;
            time1.start.epoch = self->_anchorPTS.epoch;
            time2.start = v212;
            CMTimeAdd(&duration, &time1.start, &time2.start);
            v67 = [v66 initWithBuffer:v65 presentationTimeStamp:&duration];
            CFRelease(v65);
            v186 = v67;
LABEL_77:
            if ([v194 numberOfFramesToInsert])
            {
              frameInterpolator = self->_frameInterpolator;
              previousFrame = self->_previousFrame;
              v52 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
              v53 = [v52 numberOfFramesToInsert];
              v210 = 0;
              v189 = [(FRCFrameInterpolator *)frameInterpolator interpolateBetweenFirstFrame:previousFrame secondFrame:obj numberOfFrames:v53 withError:&v210];
              v190 = v210;

              if (self->_enableStyle && self->_hasStyleApplied)
              {
                [(FRCFrameInterpolator *)self->_frameInterpolator pauseGatingForNextPair];
                v54 = self->_frameInterpolator;
                previousUnstyledFrame = self->_previousUnstyledFrame;
                v56 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
                v57 = [v56 numberOfFramesToInsert];
                v209 = v190;
                v58 = [(FRCFrameInterpolator *)v54 interpolateBetweenFirstFrame:previousUnstyledFrame secondFrame:v186 numberOfFrames:v57 withError:&v209];
                v59 = v209;

                v60 = v59;
              }

              else
              {
                v58 = 0;
                v60 = v190;
              }

              v191 = v60;
              if ([v60 code] == -22006)
              {
                self->_processAborted = 1;
                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v61 = [v191 localizedDescription];
                  LODWORD(time1.start.value) = 138412290;
                  *(&time1.start.value + 4) = v61;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "FRC gating not passed: %@", &time1, 0xCu);
                }

                [(VCPMovieAssetWriter *)self->_assetWriter cancel];
                CFRelease(v13);
                v10 = 0;
                if (self->_enableStyle && cf)
                {
                  CFRelease(cf);
                  v10 = 0;
                }

                goto LABEL_133;
              }

              v68 = v189;
            }

            else
            {
              v191 = 0;
              v68 = 0;
              v58 = 0;
            }

            v181 = v58;
            v180 = [v68 count];
            v208 = 0;
            v189 = v68;
            v69 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
            v70 = v69;
            if (v69)
            {
              [v69 presentationTimeStamp];
            }

            else
            {
              memset(&time1, 0, 24);
            }

            if ([(VCPVideoInterpolator *)self isIntraFrame:&time1])
            {
              v228 = *MEMORY[0x1E69604E0];
              v229[0] = MEMORY[0x1E695E118];
              v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v229 forKeys:&v228 count:1];
            }

            else
            {
              v182 = 0;
            }

            v71 = self->_assetWriter;
            v72 = v182;
            v73 = [(FRCFrame *)self->_previousFrame buffer];
            v74 = self->_previousFrame;
            if (v74)
            {
              [(FRCFrame *)v74 presentationTimeStamp];
            }

            else
            {
              memset(&time1, 0, 24);
            }

            v10 = [(VCPMovieAssetWriter *)v71 addPixelBuffer:v73 withTime:&time1 withAttachment:v182];
            if (v10)
            {
              goto LABEL_127;
            }

            updatedVideoPTSList = self->_updatedVideoPTSList;
            v76 = self->_previousFrame;
            if (v76)
            {
              [(FRCFrame *)v76 presentationTimeStamp];
            }

            else
            {
              memset(&time1, 0, 24);
            }

            v77 = CMTimeToNSDictionary(&time1.start);
            [(NSMutableArray *)updatedVideoPTSList addObject:v77];

            previousMetadata = self->_previousMetadata;
            v79 = self->_previousFrame;
            if (v79)
            {
              v72 = v182;
              [(FRCFrame *)v79 presentationTimeStamp];
            }

            else
            {
              memset(&time1, 0, 24);
              v72 = v182;
            }

            v10 = [(VCPVideoInterpolator *)self updateLivePhotoInfoSample:previousMetadata withTimestamp:&time1 withMetadata:0 isInterpolated:0 updatedSample:&v208];
            if (v10)
            {
              goto LABEL_127;
            }

            v10 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v208];
            if (v10)
            {
              goto LABEL_127;
            }

            if (self->_enableStyle)
            {
              if (self->_hasStyleApplied)
              {
                v80 = self->_assetWriter;
                ImageBuffer = CMSampleBufferGetImageBuffer(self->_previousDeltaSample);
                v82 = self->_previousFrame;
                if (v82)
                {
                  [(FRCFrame *)v82 presentationTimeStamp];
                }

                else
                {
                  memset(&time1, 0, 24);
                }

                v10 = [(VCPMovieAssetWriter *)v80 addAuxPixelBuffer:ImageBuffer withTime:&time1 withAttachment:v72];
                if (v10)
                {
                  goto LABEL_127;
                }
              }

              memset(&time1, 0, sizeof(time1));
              v83 = self->_previousFrame;
              if (v83)
              {
                [(FRCFrame *)v83 presentationTimeStamp];
              }

              else
              {
                memset(&time2, 0, 24);
              }

              CMTimeMake(&duration, 20, 600);
              CMTimeRangeMake(&time1, &time2.start, &duration);
              previousSmartStyleMetadata = self->_previousSmartStyleMetadata;
              time2 = time1;
              v85 = [(VCPVideoInterpolator *)self createStyleInforMetadata:previousSmartStyleMetadata timerange:&time2];
              v86 = self->_assetWriter;
              time2 = time1;
              v10 = [(VCPMovieAssetWriter *)v86 addStyleInfoData:v85 timerange:&time2];

              v72 = v182;
              if (v10)
              {
                goto LABEL_127;
              }
            }

            if (v180)
            {
              v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v87 = [(VCPVideoInterpolator *)self deserializeMetadata:self->_previousMetadata];
              if (v87)
              {
                v177 = v87;
                v88 = [v87 objectForKeyedSubscript:@"trajectoryHomography"];
                v89 = v88 == 0;

                v87 = v177;
                if (!v89)
                {
                  v90 = MEMORY[0x1E69A8B78];
                  v225[0] = *MEMORY[0x1E69A8B78];
                  v91 = self->_previousFrame;
                  if (v91)
                  {
                    [(FRCFrame *)v91 presentationTimeStamp];
                  }

                  else
                  {
                    memset(&time1, 0, 24);
                  }

                  v99 = CMTimeToNSDictionary(&time1.start);
                  v226[0] = v99;
                  v100 = MEMORY[0x1E69A8B70];
                  v225[1] = *MEMORY[0x1E69A8B70];
                  v101 = [v177 objectForKeyedSubscript:@"trajectoryHomography"];
                  v226[1] = v101;
                  v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v226 forKeys:v225 count:2];

                  v176 = [(VCPVideoInterpolator *)self deserializeMetadata:v13];
                  if (v176)
                  {
                    v102 = [v176 objectForKeyedSubscript:@"trajectoryHomography"];
                    v103 = v102 == 0;

                    if (!v103)
                    {
                      v223[0] = *v90;
                      if (obj)
                      {
                        [obj presentationTimeStamp];
                      }

                      else
                      {
                        memset(&time1, 0, 24);
                      }

                      v104 = CMTimeToNSDictionary(&time1.start);
                      v223[1] = *v100;
                      v224[0] = v104;
                      v105 = [v176 objectForKeyedSubscript:@"trajectoryHomography"];
                      v224[1] = v105;
                      v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v224 forKeys:v223 count:2];

                      v222[0] = v171;
                      v222[1] = v170;
                      v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:v222 count:2];
                      v174 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      for (i = 0; i != v180; ++i)
                      {
                        v107 = [v68 objectAtIndexedSubscript:i];
                        v108 = v107;
                        if (v107)
                        {
                          [v107 presentationTimeStamp];
                        }

                        else
                        {
                          memset(&time1, 0, 24);
                        }

                        v109 = CMTimeToNSDictionary(&time1.start);
                        [v174 addObject:v109];
                      }

                      v175 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v110 = [v177 allKeys];
                      v111 = [v110 count];
                      v112 = [v176 allKeys];
                      v113 = v111 > [v112 count];

                      if (v113)
                      {
                        v205 = 0uLL;
                        v206 = 0uLL;
                        v203 = 0uLL;
                        v204 = 0uLL;
                        v178 = v177;
                        v114 = [v178 countByEnumeratingWithState:&v203 objects:v221 count:16];
                        if (v114)
                        {
                          v115 = *v204;
                          do
                          {
                            for (j = 0; j != v114; ++j)
                            {
                              if (*v204 != v115)
                              {
                                objc_enumerationMutation(v178);
                              }

                              v117 = *(*(&v203 + 1) + 8 * j);
                              v118 = [v176 allKeys];
                              v119 = [v118 containsObject:v117];

                              if ((v119 & 1) == 0)
                              {
                                [v175 addObject:v117];
                              }
                            }

                            v114 = [v178 countByEnumeratingWithState:&v203 objects:v221 count:16];
                          }

                          while (v114);
                        }
                      }

                      else
                      {
                        v201 = 0uLL;
                        v202 = 0uLL;
                        v199 = 0uLL;
                        v200 = 0uLL;
                        v178 = v176;
                        v120 = [v178 countByEnumeratingWithState:&v199 objects:v220 count:16];
                        if (v120)
                        {
                          v121 = *v200;
                          do
                          {
                            for (k = 0; k != v120; ++k)
                            {
                              if (*v200 != v121)
                              {
                                objc_enumerationMutation(v178);
                              }

                              v123 = *(*(&v199 + 1) + 8 * k);
                              v124 = [v177 allKeys];
                              v125 = [v124 containsObject:v123];

                              if ((v125 & 1) == 0)
                              {
                                [v175 addObject:v123];
                              }
                            }

                            v120 = [v178 countByEnumeratingWithState:&v199 objects:v220 count:16];
                          }

                          while (v120);
                        }
                      }

                      [v178 removeObjectsForKeys:v175];
                      v126 = *MEMORY[0x1E69A8B88];
                      v218[0] = *MEMORY[0x1E69A8B80];
                      v218[1] = v126;
                      v219[0] = MEMORY[0x1E695E118];
                      v219[1] = MEMORY[0x1E695E118];
                      v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v219 forKeys:v218 count:2];
                      v179 = ICFillHomographyGaps();
                      v167 = v191;

                      if ([v179 count] == v180)
                      {
                        v127 = self->_previousFrame;
                        if (v127)
                        {
                          [(FRCFrame *)v127 presentationTimeStamp];
                        }

                        else
                        {
                          memset(&time1, 0, 24);
                        }

                        if (obj)
                        {
                          [obj presentationTimeStamp];
                        }

                        else
                        {
                          memset(&time2, 0, 24);
                        }

                        v193 = alInterpolateMetadataForGap();
                        if ([v193 count] == v180)
                        {
                          for (m = 0; m != v180; ++m)
                          {
                            v130 = [MEMORY[0x1E695DF90] dictionary];
                            v131 = [v193 objectAtIndexedSubscript:m];
                            [v130 addEntriesFromDictionary:v131];

                            v132 = [v179 objectAtIndexedSubscript:m];
                            [v130 addEntriesFromDictionary:v132];

                            [v173 addObject:v130];
                          }

                          v133 = 0;
                          v134 = *MEMORY[0x1E6960508];
                          do
                          {
                            v216 = v134;
                            v217 = MEMORY[0x1E695E118];
                            v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
                            v135 = self->_assetWriter;
                            v136 = [v189 objectAtIndexedSubscript:v133];
                            v137 = [v136 buffer];
                            v138 = [v189 objectAtIndexedSubscript:v133];
                            v139 = v138;
                            if (v138)
                            {
                              [v138 presentationTimeStamp];
                            }

                            else
                            {
                              memset(&time1, 0, 24);
                            }

                            v10 = [(VCPMovieAssetWriter *)v135 addPixelBuffer:v137 withTime:&time1 withAttachment:v172];

                            if (v10)
                            {
                              goto LABEL_256;
                            }

                            v140 = self->_previousMetadata;
                            v141 = [v189 objectAtIndexedSubscript:v133];
                            v142 = v141;
                            if (v141)
                            {
                              [v141 presentationTimeStamp];
                            }

                            else
                            {
                              memset(&time1, 0, 24);
                            }

                            v143 = [v173 objectAtIndexedSubscript:v133];
                            v10 = [(VCPVideoInterpolator *)self updateLivePhotoInfoSample:v140 withTimestamp:&time1 withMetadata:v143 isInterpolated:1 updatedSample:&v208];

                            if (v10)
                            {
                              goto LABEL_256;
                            }

                            v10 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v208];
                            if (v10)
                            {
                              goto LABEL_256;
                            }

                            ++v133;
                          }

                          while (v180 != v133);
                          if (!self->_enableStyle || !self->_hasStyleApplied)
                          {
                            v128 = 0;
                            v10 = 0;
                            goto LABEL_258;
                          }

                          smartStyleUtilities = self->_smartStyleUtilities;
                          v145 = self->_previousSmartStyleMetadata;
                          v146 = self->_previousFrame;
                          if (v146)
                          {
                            [(FRCFrame *)v146 presentationTimeStamp];
                          }

                          else
                          {
                            memset(&time1, 0, 24);
                          }

                          if (obj)
                          {
                            [obj presentationTimeStamp];
                          }

                          else
                          {
                            memset(&time2, 0, 24);
                          }

                          v172 = [(CMISmartStyleUtilitiesV1 *)smartStyleUtilities interpolateCoefficientsFromStartFrameMetadataDict:v145 startFrameTime:&time1 endFrameMetadataDict:v187 endFrameTime:&time2 frameTimesToInterpolate:v174];
                          if ([v172 count] == v180)
                          {
                            v184 = 0;
                            while (1)
                            {
                              v214 = v134;
                              v215 = MEMORY[0x1E695E118];
                              v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
                              v147 = [v181 objectAtIndexedSubscript:v184];
                              v148 = [v147 buffer];
                              v149 = [v189 objectAtIndexedSubscript:v184];
                              v150 = [v149 buffer];
                              v151 = [v172 objectAtIndexedSubscript:v184];
                              v152 = [(VCPVideoInterpolator *)self calculateDeltaforUnstyledFrame:v148 styledFrame:v150 withCoefficients:v151];

                              v153 = self->_assetWriter;
                              v154 = [v189 objectAtIndexedSubscript:v184];
                              v155 = v154;
                              if (v154)
                              {
                                [v154 presentationTimeStamp];
                              }

                              else
                              {
                                memset(&time1, 0, 24);
                              }

                              v10 = [(VCPMovieAssetWriter *)v153 addAuxPixelBuffer:v152 withTime:&time1 withAttachment:v166];

                              if (v10)
                              {
                                goto LABEL_254;
                              }

                              if (v152)
                              {
                                CFRelease(v152);
                              }

                              memset(&time1, 0, sizeof(time1));
                              v156 = [v189 objectAtIndexedSubscript:v184];
                              v157 = v156;
                              if (v156)
                              {
                                [v156 presentationTimeStamp];
                              }

                              else
                              {
                                memset(&time2, 0, 24);
                              }

                              CMTimeMake(&duration, 20, 600);
                              CMTimeRangeMake(&time1, &time2.start, &duration);

                              v158 = [v172 objectAtIndexedSubscript:v184];
                              time2 = time1;
                              v159 = [(VCPVideoInterpolator *)self createStyleInforMetadata:v158 timerange:&time2];

                              v160 = self->_assetWriter;
                              time2 = time1;
                              v10 = [(VCPMovieAssetWriter *)v160 addStyleInfoData:v159 timerange:&time2];

                              if (v10)
                              {
                                goto LABEL_256;
                              }

                              if (v180 == ++v184)
                              {
                                v128 = 0;
                                v10 = 0;
                                goto LABEL_257;
                              }
                            }
                          }

                          if (MediaAnalysisLogLevel() >= 3)
                          {
                            v161 = MEMORY[0x1E69E9C10];
                            v162 = MEMORY[0x1E69E9C10];
                            v166 = v161;
                            if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                            {
                              LOWORD(time1.start.value) = 0;
                              v166 = MEMORY[0x1E69E9C10];
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing metadata", &time1, 2u);
                            }

                            v10 = -18;
LABEL_254:

                            goto LABEL_256;
                          }

                          v10 = -18;
LABEL_256:
                          v128 = 60;
LABEL_257:
                        }

                        else
                        {
                          v10 = 0;
                          v128 = 1;
                        }

LABEL_258:
                      }

                      else
                      {
                        v10 = 0;
                        v128 = 1;
                      }

                      if (v128)
                      {
                        if (v128 != 60)
                        {

                          v10 = -18;
                          v191 = v167;
                          goto LABEL_132;
                        }

                        v191 = v167;
                        if (!v10)
                        {
                          goto LABEL_262;
                        }

                        goto LABEL_170;
                      }

                      memset(&v211, 0, sizeof(v211));
                      if (v194)
                      {
                        [v194 interpolatedFrameDuration];
                      }

                      else
                      {
                        memset(&time2, 0, 24);
                      }

                      *&time1.start.value = *&time2.start.value;
                      time1.start.epoch = time2.start.epoch;
                      CMTimeMultiply(&v211, &time1.start, v180 + 1);
                      *&time2.start.value = *&p_anchorPTS->value;
                      time2.start.epoch = self->_anchorPTS.epoch;
                      duration = v211;
                      CMTimeAdd(&time1.start, &time2.start, &duration);
                      *&p_anchorPTS->value = *&time1.start.value;
                      self->_anchorPTS.epoch = time1.start.epoch;
                      v163 = [v189 objectAtIndexedSubscript:v180 - 1];
                      v164 = v163;
                      if (v163)
                      {
                        [v163 presentationTimeStamp];
                      }

                      else
                      {
                        memset(&duration, 0, sizeof(duration));
                      }

                      time1.start = duration;
                      *&time2.start.value = *&p_anchorPTS->value;
                      time2.start.epoch = self->_anchorPTS.epoch;
                      v165 = CMTimeCompare(&time1.start, &time2.start);

                      if (v165 >= 0)
                      {
                        v10 = -18;
                        v191 = v167;
LABEL_170:
                        v72 = v182;
LABEL_127:
                        self->_processAborted = 1;
                        CFRelease(v13);
                        if (self->_hasStyleApplied && cf)
                        {
                          CFRelease(cf);
                        }

                        [(VCPMovieAssetWriter *)self->_assetWriter cancel];
                        goto LABEL_131;
                      }

                      v191 = v167;
LABEL_163:
                      ++self->_anchorIndex;
                      objc_storeStrong(&self->_previousFrame, obj);
                      v96 = self->_previousMetadata;
                      if (v96)
                      {
                        CFRelease(v96);
                        self->_previousMetadata = 0;
                      }

                      self->_previousMetadata = v13;
                      objc_storeStrong(&self->_previousUnstyledFrame, v186);
                      if (self->_hasStyleApplied)
                      {
                        previousDeltaSample = self->_previousDeltaSample;
                        if (previousDeltaSample)
                        {
                          CFRelease(previousDeltaSample);
                          self->_previousDeltaSample = 0;
                        }

                        self->_previousDeltaSample = cf;
                      }

                      objc_storeStrong(&self->_previousSmartStyleMetadata, v187);
                      var3 = v195->var3;
                      *&self->_previousFrameOrigianlPTS.value = *&v195->var0;
                      self->_previousFrameOrigianlPTS.epoch = var3;
                      if (!v10)
                      {
LABEL_262:
                        v72 = v182;
LABEL_131:

LABEL_132:
                        v58 = v181;
LABEL_133:

                        goto LABEL_134;
                      }

                      goto LABEL_170;
                    }
                  }

                  v87 = v177;
                }
              }

              v10 = -18;
              goto LABEL_132;
            }

            memset(&v211, 0, sizeof(v211));
            v92 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex + 1];
            v93 = v92;
            if (v92)
            {
              [v92 presentationTimeStamp];
            }

            else
            {
              memset(&duration, 0, sizeof(duration));
            }

            v94 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
            v95 = v94;
            if (v94)
            {
              [v94 presentationTimeStamp];
            }

            else
            {
              v197 = 0uLL;
              v198 = 0;
            }

            time1.start = duration;
            *&time2.start.value = v197;
            time2.start.epoch = v198;
            CMTimeSubtract(&v211, &time1.start, &time2.start);

            *&time2.start.value = *&p_anchorPTS->value;
            time2.start.epoch = self->_anchorPTS.epoch;
            duration = v211;
            CMTimeAdd(&time1.start, &time2.start, &duration);
            v10 = 0;
            *&p_anchorPTS->value = *&time1.start.value;
            self->_anchorPTS.epoch = time1.start.epoch;
            goto LABEL_163;
          }
        }

        else
        {
          cf = 0;
          v187 = 0;
        }

        v186 = 0;
        goto LABEL_77;
      }

LABEL_9:
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      LOWORD(time1.start.value) = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "Inconsistent number of metadata and video frames";
    }

LABEL_32:
    _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_ERROR, v15, &time1, 2u);
LABEL_33:
    v26 = 0;
    goto LABEL_34;
  }

  v16 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:0];
  v17 = v16;
  v18 = a4;
  if (v16)
  {
    [v16 presentationTimeStamp];
  }

  else
  {
    memset(&time1, 0, 24);
  }

  *&self->_anchorPTS.value = *&time1.start.value;
  self->_anchorPTS.epoch = time1.start.epoch;

  v19 = objc_alloc(MEMORY[0x1E699BE38]);
  *&time1.start.value = *&self->_anchorPTS.value;
  time1.start.epoch = self->_anchorPTS.epoch;
  v20 = [v19 initWithBuffer:a3 presentationTimeStamp:&time1];
  v21 = self->_previousFrame;
  self->_previousFrame = v20;

  self->_anchorIndex = 0;
  for (n = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer]; ; n = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer])
  {
    p_previousMetadata = &self->_previousMetadata;
    self->_previousMetadata = n;
    if (!n)
    {
      goto LABEL_29;
    }

    NumSamples = CMSampleBufferGetNumSamples(n);
    v25 = *p_previousMetadata;
    if (NumSamples)
    {
      break;
    }

    if (v25)
    {
      CFRelease(v25);
      *p_previousMetadata = 0;
    }
  }

  if (!v25)
  {
LABEL_29:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(time1.start.value) = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "Inconsistent number of metadata and video frames";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  CMSampleBufferGetOutputPresentationTimeStamp(&duration, v25);
  *&time1.start.value = *&v18->var0;
  time1.start.epoch = v18->var3;
  time2.start = duration;
  if (CMTimeCompare(&time1.start, &time2.start))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(time1.start.value) = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "Inconsistent live photo info and video frame timestamp";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (!self->_enableStyle)
  {
    v26 = 0;
    goto LABEL_56;
  }

  if (self->_hasStyleApplied)
  {
    v30 = [(VCPVideoTrackDecoder *)self->_deltaTrackDecoder copyNextSampleBuffer];
    self->_previousDeltaSample = v30;
    if (!v30)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      LOWORD(time1.start.value) = 0;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "Number of frames inconsistent with delta map samples";
      goto LABEL_32;
    }
  }

  v31 = [(NSArray *)self->_smartStyleMetadata objectAtIndexedSubscript:0];
  v32 = [v31 objectForKeyedSubscript:@"attributes"];
  v33 = [v32 objectForKeyedSubscript:@"MetaSSInfoResults"];
  v26 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v33, 2uLL, 0, 0);

  if (!v26)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    LOWORD(time1.start.value) = 0;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "Missing metadata";
    goto LABEL_32;
  }

  objc_storeStrong(&self->_previousSmartStyleMetadata, v26);
  if (!self->_hasStyleApplied)
  {
LABEL_56:
    v10 = 0;
    goto LABEL_35;
  }

  v34 = [(VCPVideoInterpolator *)self revertStyle:a3 withMetadata:v26 withDeltaMap:CMSampleBufferGetImageBuffer(self->_previousDeltaSample)];
  if (v34)
  {
    v35 = objc_alloc(MEMORY[0x1E699BE38]);
    *&time1.start.value = *&self->_anchorPTS.value;
    time1.start.epoch = self->_anchorPTS.epoch;
    v36 = [v35 initWithBuffer:v34 presentationTimeStamp:&time1];
    v37 = self->_previousUnstyledFrame;
    self->_previousUnstyledFrame = v36;

    CFRelease(v34);
    goto LABEL_56;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(time1.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to compute unstyled buffer", &time1, 2u);
  }

LABEL_34:
  v10 = -18;
LABEL_35:

  objc_autoreleasePoolPop(context);
  return v10;
}

- (BOOL)isIntraFrame:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_intraFrameList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        CMTimeMakeFromDictionary(&v10, *(*(&v11 + 1) + 8 * i));
        time1 = v10;
        time2 = *a3;
        if (!CMTimeCompare(&time1, &time2))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)deserializeMetadata:(opaqueCMSampleBuffer *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [objc_alloc(MEMORY[0x1E6988160]) initWithSampleBuffer:a3];
  obj = [v16 items];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = 0;
    v20 = *v26;
    v19 = *MEMORY[0x1E69909F8];
LABEL_3:
    v18 = v4;
    v6 = 0;
    while (1)
    {
      if (*v26 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v25 + 1) + 8 * v6);
      v8 = [v7 dataType];
      v9 = [v8 isEqualToString:v19];

      if (v9)
      {
        break;
      }

      if (++v6 == v18)
      {
        v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v11 = [v7 dataValue];
    v12 = v11;
    [v11 bytes];
    [v11 length];
    v24 = 0;
    v23 = 0;
    if (FigLivePhotoMetadataComputeDeserializationSize())
    {

      goto LABEL_19;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FigLivePhotoMetadataVersion >= 3 is required", buf, 2u);
    }

    v5 = -50;

LABEL_18:
    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = 0;
  }

  else
  {

LABEL_20:
    v13 = v21;
  }

  v14 = v13;

  return v13;
}

- (id)createStyleInforMetadata:(id)a3 timerange:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E6988050] metadataItem];
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  [v6 setValue:Data];

  [v6 setIdentifier:@"mdta/com.apple.quicktime.smartstyle-info"];
  [v6 setDataType:*MEMORY[0x1E6960260]];
  var0 = a4->var0;
  [v6 setTime:&var0];
  var0 = a4->var1;
  [v6 setDuration:&var0];

  return v6;
}

- (int)updateLivePhotoInfoSample:(opaqueCMSampleBuffer *)a3 withTimestamp:(id *)a4 withMetadata:(id)a5 isInterpolated:(BOOL)a6 updatedSample:(opaqueCMSampleBuffer *)a7
{
  v93 = a6;
  v10 = a5;
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  formatDescription = CMSampleBufferGetFormatDescription(a3);
  totalLengthOut = 0;
  lengthAtOffsetOut[0] = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(DataBuffer, 0, lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v98 = 0;
  if (!dataPointerOut)
  {
    v19 = -18;
    goto LABEL_64;
  }

  v12 = MEMORY[0x1E6990A00];
  v13 = 0;
  if (!totalLengthOut)
  {
LABEL_13:
    v89 = a4;
    v90 = a7;
    blockBufferOut = 0;
    memoryBlock = malloc_type_malloc(v13, 0x2A713BB3uLL);
    bzero(memoryBlock, v13);
    if (totalLengthOut)
    {
      v21 = 0;
      v22 = *v12;
      v92 = v22;
      v23 = memoryBlock;
      do
      {
        v24 = *&dataPointerOut[v21];
        v25 = FigMetadataFormatDescriptionGetIdentifierForLocalID();
        v26 = bswap32(v24);
        if ([v25 isEqualToString:v22])
        {
          if (v93)
          {
            *v23 = bswap32(v98 + 8);
            v23[1] = *&dataPointerOut[v21 + 4];
            v23[2] = 3;
            v27 = [v10 objectForKeyedSubscript:@"privET"];

            if (v27)
            {
              v28 = [v10 objectForKeyedSubscript:@"privET"];
              [v28 floatValue];
              v30 = v29;

              v23[3] = v30;
              v31 = 1;
            }

            else
            {
              v31 = 0;
            }

            v35 = [v10 objectForKeyedSubscript:@"privAFS"];

            if (v35)
            {
              v36 = [v10 objectForKeyedSubscript:@"privAFS"];
              v37 = [v36 longValue];
              v31 |= 2u;

              *(v23 + 2) = v37;
            }

            v38 = [v10 objectForKeyedSubscript:@"privECMVct"];
            if (v38)
            {
              v39 = [v10 objectForKeyedSubscript:@"privECMVct"];
              v40 = [v39 count];

              if (v40 == 2)
              {
                v41 = [v10 objectForKeyedSubscript:@"privECMVct"];
                v42 = [v41 objectAtIndexedSubscript:0];
                [v42 floatValue];
                v44 = v43;

                v45 = [v10 objectForKeyedSubscript:@"privECMVct"];
                v46 = [v45 objectAtIndexedSubscript:1];
                [v46 floatValue];
                v48 = v47;
                v31 |= 4u;

                v23[6] = v44;
                v23[7] = v48;
              }
            }

            v49 = [v10 objectForKeyedSubscript:@"privEMBVct"];
            if (v49)
            {
              v50 = [v10 objectForKeyedSubscript:@"privEMBVct"];
              v51 = [v50 count];

              if (v51 == 2)
              {
                v52 = [v10 objectForKeyedSubscript:@"privEMBVct"];
                v53 = [v52 objectAtIndexedSubscript:0];
                [v53 floatValue];
                v55 = v54;

                v56 = [v10 objectForKeyedSubscript:@"privEMBVct"];
                v57 = [v56 objectAtIndexedSubscript:1];
                [v57 floatValue];
                v59 = v58;
                v31 |= 8u;

                v23[8] = v55;
                v23[9] = v59;
              }
            }

            v60 = [v10 objectForKeyedSubscript:@"privTZF"];

            if (v60)
            {
              v61 = [v10 objectForKeyedSubscript:@"privTZF"];
              [v61 floatValue];
              v63 = v62;
              v31 |= 0x10u;

              v23[10] = v63;
            }

            v64 = [v10 objectForKeyedSubscript:@"privImgG"];

            if (v64)
            {
              v65 = [v10 objectForKeyedSubscript:@"privImgG"];
              [v65 floatValue];
              v67 = v66;
              v31 |= 0x20u;

              v23[11] = v67;
            }

            v68 = [v10 objectForKeyedSubscript:@"privAFSt"];

            if (v68)
            {
              v69 = [v10 objectForKeyedSubscript:@"privAFSt"];
              v70 = [v69 intValue];
              v31 |= 0x40u;

              *(v23 + 48) = v70;
            }

            v71 = [v10 objectForKeyedSubscript:@"privFM"];

            if (v71)
            {
              v72 = [v10 objectForKeyedSubscript:@"privFM"];
              v73 = [v72 intValue];
              v31 |= 0x80u;

              *(v23 + 49) = v73;
            }

            *(v23 + 25) = v31;
            *(v23 + 15) = 0;
            *(v23 + 13) = 0;
            v23[17] = 0;
            *(v23 + 36) = 33;
            v74 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
            if ([v74 count] != 9)
            {

              v19 = -18;
              v80 = memoryBlock;
              goto LABEL_61;
            }

            for (i = 0; i != 9; ++i)
            {
              v76 = [v74 objectAtIndexedSubscript:i];
              [v76 floatValue];
              v78 = v77;

              v23[i + 19] = v78;
            }

            *(v23 + 130) = 1;

            v22 = v92;
          }

          else
          {
            memcpy(v23, &dataPointerOut[v21], v26);
            v33 = &v23[8 * v23[13]];
            v34 = &v33[8 * v33[15] + 14 + 8 * v33[14] + 8 * v33[16] + 8 * v33[17]];
            *(v34 + 16) |= 0x20u;
            *(v34 + 74) = 0;
          }

          v32 = v98 + 8;
        }

        else
        {
          memcpy(v23, &dataPointerOut[v21], v26);
          v32 = v26;
        }

        v23 = (v23 + v32);
        v21 += v26;
      }

      while (v21 < totalLengthOut);
    }

    v79 = *MEMORY[0x1E695E480];
    v80 = memoryBlock;
    v19 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], memoryBlock, v13, *MEMORY[0x1E695E480], 0, 0, v13, 0, &blockBufferOut);
    v81 = blockBufferOut;
    if (v19)
    {
      v82 = 1;
    }

    else
    {
      v82 = blockBufferOut == 0;
    }

    if (!v82)
    {
      v83 = *(MEMORY[0x1E6960CF0] + 48);
      *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
      *&sampleTimingArray.decodeTimeStamp.value = v83;
      v84 = *(MEMORY[0x1E6960CF0] + 64);
      v85 = *(MEMORY[0x1E6960CF0] + 16);
      *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CF0];
      *&sampleTimingArray.duration.epoch = v85;
      *&sampleTimingArray.presentationTimeStamp.value = *&v89->var0;
      var3 = v89->var3;
      sampleTimingArray.decodeTimeStamp.epoch = v84;
      sampleTimingArray.presentationTimeStamp.epoch = var3;
      sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
      v19 = CMSampleBufferCreate(v79, blockBufferOut, 1u, 0, 0, formatDescription, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, v90);
      v81 = blockBufferOut;
    }

    if (v19)
    {
      v87 = v81 == 0;
    }

    else
    {
      v87 = 0;
    }

    if (v87)
    {
LABEL_61:
      free(v80);
    }

    else if (v81)
    {
      CFRelease(v81);
    }

    goto LABEL_64;
  }

  v14 = 0;
  v15 = *MEMORY[0x1E6990A00];
  while (1)
  {
    v16 = *&dataPointerOut[v14];
    v17 = FigMetadataFormatDescriptionGetIdentifierForLocalID();
    v18 = bswap32(v16);
    if (![v17 isEqualToString:v15])
    {
      v20 = v18;
      goto LABEL_12;
    }

    if (*&dataPointerOut[v14 + 8] <= 2u)
    {
      break;
    }

    if (v93)
    {
      v19 = FigLivePhotoMetadataComputeSerializationSizeV3();
      if (v19)
      {
        goto LABEL_63;
      }

      if (v98 != 136)
      {
        v19 = -18;
        goto LABEL_63;
      }

      v20 = 144;
    }

    else
    {
      v98 = (v18 - 8);
      v20 = v98 + 8;
    }

LABEL_12:
    v13 += v20;
    v14 += v18;

    if (v14 >= totalLengthOut)
    {
      goto LABEL_13;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(sampleTimingArray.duration.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FigLivePhotoMetadataVersion >= 3 is required", &sampleTimingArray, 2u);
  }

  v19 = -50;
LABEL_63:

LABEL_64:
  return v19;
}

- (int)finishAnalysisPass:(id *)a3
{
  v80[1] = *MEMORY[0x1E69E9840];
  v75 = 0;
  v79 = *MEMORY[0x1E69604D8];
  v4 = MEMORY[0x1E695E118];
  v80[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v67 = [v5 mutableCopy];

  v6 = [(NSArray *)self->_frameInsertionLists objectAtIndexedSubscript:self->_anchorIndex];
  v7 = v6;
  if (v6)
  {
    [v6 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, 24);
  }

  v8 = [(VCPVideoInterpolator *)self isIntraFrame:&time];

  if (v8)
  {
    v77 = *MEMORY[0x1E69604E0];
    v78 = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    [v67 addEntriesFromDictionary:v9];
  }

  if (self->_processAborted)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_21:
    previousMetadata = self->_previousMetadata;
    if (previousMetadata)
    {
      CFRelease(previousMetadata);
      self->_previousMetadata = 0;
    }

    if (v12)
    {
      self->_processAborted = 1;
      if ([(VCPMovieAssetWriter *)self->_assetWriter status]== 1)
      {
        [(VCPMovieAssetWriter *)self->_assetWriter cancel];
      }

      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [v22 fileExistsAtPath:self->_combinedFilePath];

      if (v23)
      {
        v24 = [MEMORY[0x1E696AC08] defaultManager];
        v25 = [v24 removeItemAtPath:self->_combinedFilePath error:0];

        if ((v25 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(time.start.value) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  Failed to delete FRC files with issues", &time, 2u);
        }
      }
    }

    v26 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = [v26 fileExistsAtPath:self->_filePath];

    if (v27)
    {
      v28 = [MEMORY[0x1E696AC08] defaultManager];
      v29 = [v28 removeItemAtPath:self->_filePath error:0];

      if ((v29 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  Failed to delete FRC temporary files", &time, 2u);
      }
    }

    v30 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = [v30 fileExistsAtPath:self->_auxFilePath];

    if (v31)
    {
      v32 = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [v32 removeItemAtPath:self->_auxFilePath error:0];

      if ((v33 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  Failed to delete FRC temporary files", &time, 2u);
      }
    }

    v34 = [MEMORY[0x1E696AC08] defaultManager];
    v35 = [v34 fileExistsAtPath:self->_combinedCompositionFilePath];

    if (v35)
    {
      v36 = [MEMORY[0x1E696AC08] defaultManager];
      v37 = [v36 removeItemAtPath:self->_combinedCompositionFilePath error:0];

      if ((v37 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  Failed to delete FRC temporary files", &time, 2u);
      }
    }

    goto LABEL_46;
  }

  assetWriter = self->_assetWriter;
  v14 = [(FRCFrame *)self->_previousFrame buffer];
  previousFrame = self->_previousFrame;
  if (previousFrame)
  {
    [(FRCFrame *)previousFrame presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, 24);
  }

  v12 = [(VCPMovieAssetWriter *)assetWriter addPixelBuffer:v14 withTime:&time withAttachment:v67];
  if (v12)
  {
    goto LABEL_20;
  }

  updatedVideoPTSList = self->_updatedVideoPTSList;
  v17 = self->_previousFrame;
  if (v17)
  {
    [(FRCFrame *)v17 presentationTimeStamp];
  }

  else
  {
    memset(&start, 0, 24);
  }

  *&time.start.value = *&start.start.value;
  time.start.epoch = start.start.epoch;
  v18 = CMTimeCopyAsDictionary(&time.start, 0);
  [(NSMutableArray *)updatedVideoPTSList addObject:v18];

  v19 = self->_previousMetadata;
  v20 = self->_previousFrame;
  if (v20)
  {
    [(FRCFrame *)v20 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, 24);
  }

  v12 = [(VCPVideoInterpolator *)self updateLivePhotoInfoSample:v19 withTimestamp:&time withMetadata:0 isInterpolated:0 updatedSample:&v75];
  if (v12 || (v12 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v75]) != 0)
  {
LABEL_20:
    v10 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  if (self->_enableStyle)
  {
    memset(&time, 0, sizeof(time));
    v39 = self->_previousFrame;
    if (v39)
    {
      [(FRCFrame *)v39 presentationTimeStamp];
    }

    else
    {
      memset(&start, 0, 24);
    }

    CMTimeMake(&duration, 20, 600);
    CMTimeRangeMake(&time, &start.start, &duration);
    previousSmartStyleMetadata = self->_previousSmartStyleMetadata;
    start = time;
    v11 = [(VCPVideoInterpolator *)self createStyleInforMetadata:previousSmartStyleMetadata timerange:&start];
    if (self->_hasStyleApplied)
    {
      v41 = self->_assetWriter;
      ImageBuffer = CMSampleBufferGetImageBuffer(self->_previousDeltaSample);
      v43 = self->_previousFrame;
      if (v43)
      {
        [(FRCFrame *)v43 presentationTimeStamp];
      }

      else
      {
        memset(&start, 0, 24);
      }

      v12 = [(VCPMovieAssetWriter *)v41 addAuxPixelBuffer:ImageBuffer withTime:&start withAttachment:v67];
      if (v12)
      {
        goto LABEL_67;
      }
    }

    v44 = self->_assetWriter;
    start = time;
    v12 = [(VCPMovieAssetWriter *)v44 addStyleInfoData:v11 timerange:&start];
    if (v12)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v11 = 0;
  }

  if ([(VCPMovieAssetWriter *)self->_assetWriter finish])
  {
LABEL_59:
    v10 = 0;
    v12 = -18;
    goto LABEL_21;
  }

  if (self->_isRepetitiveCapture)
  {
    v12 = [(VCPVideoInterpolator *)self combineVideoSegmentsWithAVMutableComposition];
    if (v12)
    {
LABEL_67:
      v10 = 0;
      goto LABEL_21;
    }

    v45 = [(VCPVideoInterpolator *)self updateCombinedMovie];
  }

  else if (self->_enableStyle)
  {
    v45 = [(VCPVideoInterpolator *)self combineVideoSegmentsWithAssetWriter];
  }

  else
  {
    v45 = [(VCPVideoInterpolator *)self combineVideoSegments];
  }

  v12 = v45;
  if (v45)
  {
    goto LABEL_67;
  }

  if ([(FRCFrameInterpolator *)self->_frameInterpolator endSession]!= -22000)
  {
    goto LABEL_59;
  }

  v46 = MEMORY[0x1E6988168];
  v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
  v10 = [v46 assetWithURL:v47];

  v48 = [v10 tracks];
  v49 = [v48 count];
  v50 = [(AVAssetTrack *)self->_originalTrack asset];
  v51 = [v50 tracks];
  LOBYTE(v49) = v49 == [v51 count];

  if (v49)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v52 = [v10 tracks];
    v53 = [v52 countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (!v53)
    {
      v12 = 0;
LABEL_94:

      goto LABEL_21;
    }

    v64 = v53;
    obj = v52;
    v65 = *v69;
    v63 = *MEMORY[0x1E6987608];
    v61 = *MEMORY[0x1E69875B0];
LABEL_72:
    v54 = 0;
    while (1)
    {
      if (*v69 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v66 = *(*(&v68 + 1) + 8 * v54);
      v55 = [v66 formatDescriptions];
      if ([v55 count] < 2)
      {
      }

      else
      {
        v56 = +[VCPVideoInterpolator allowMultipleFormats];

        if (!v56)
        {
          v60 = MediaAnalysisLogLevel();
          if (v60 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(time.start.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Multiple format descriptions found", &time, 2u);
          }

          goto LABEL_99;
        }
      }

      v57 = [v66 mediaType];
      if ([v57 isEqualToString:v63])
      {
      }

      else
      {
        v58 = [v66 mediaType];
        v59 = [v58 isEqualToString:v61];

        if (!v59)
        {
          goto LABEL_83;
        }
      }

      v12 = [(VCPVideoInterpolator *)self checkDecodeIssuesForTrack:v66];
      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(time.start.value) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error while decoding the combined FRC movie, bailing out", &time, 2u);
        }

LABEL_93:
        v52 = obj;
        goto LABEL_94;
      }

LABEL_83:
      if (v64 == ++v54)
      {
        v64 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v64)
        {
          goto LABEL_72;
        }

        v12 = 0;
        goto LABEL_93;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(time.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing tracks in final output", &time, 2u);
  }

LABEL_99:
  v12 = -18;
LABEL_46:

  return v12;
}

- (int)finishVideoSamplePTSUpdateWithVideoDuration:(id *)a3
{
  v14 = **&MEMORY[0x1E6960CC0];
  v5 = [(NSArray *)self->_originalVideoPTSList count];
  if (v5 > [(NSMutableArray *)self->_updatedVideoPTSList count])
  {
    v6 = [(NSArray *)self->_originalVideoPTSList objectAtIndexedSubscript:[(NSMutableArray *)self->_updatedVideoPTSList count]];
    CMTimeMakeFromDictionary(&v12, v6);
    lhs = *a3;
    rhs = v12;
    CMTimeSubtract(&v13, &lhs, &rhs);
    v14 = v13;
  }

  for (i = [(NSMutableArray *)self->_updatedVideoPTSList count]; i < [(NSArray *)self->_originalVideoPTSList count]; ++i)
  {
    memset(&v13, 0, sizeof(v13));
    v8 = [(NSArray *)self->_originalVideoPTSList objectAtIndexedSubscript:i];
    CMTimeMakeFromDictionary(&v13, v8);

    memset(&v12, 0, sizeof(v12));
    lhs = v13;
    rhs = v14;
    CMTimeAdd(&v12, &lhs, &rhs);
    updatedVideoPTSList = self->_updatedVideoPTSList;
    lhs = v12;
    v10 = CMTimeCopyAsDictionary(&lhs, 0);
    [(NSMutableArray *)updatedVideoPTSList addObject:v10];
  }

  return 0;
}

- (int)updateSamplesPTSForList:(id)a3 toList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  for (i = 0; i < [(NSArray *)self->_originalVideoPTSList count]; ++i)
  {
    memset(&v15, 0, sizeof(v15));
    v10 = [(NSArray *)self->_originalVideoPTSList objectAtIndexedSubscript:i];
    CMTimeMakeFromDictionary(&v15, v10);

    if (v8 > [v6 count] - 1)
    {
      break;
    }

    memset(&v14, 0, sizeof(v14));
    v11 = [v6 objectAtIndexedSubscript:v8];
    CMTimeMakeFromDictionary(&v14, v11);

    time1 = v15;
    time2 = v14;
    if (!CMTimeCompare(&time1, &time2))
    {
      v12 = [(NSMutableArray *)self->_updatedVideoPTSList objectAtIndexedSubscript:i];
      [v7 addObject:v12];
      ++v8;
    }
  }

  return 0;
}

- (int)finishVideoSamplePTSUpdateWithVideoDurationGeneral:(id *)a3
{
  v13 = **&MEMORY[0x1E6960CC0];
  p_endAdjustedPTS = &self->_endAdjustedPTS;
  time1 = self->_endAdjustedPTS;
  time2 = **&MEMORY[0x1E6960C88];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a3;
    time2 = *p_endAdjustedPTS;
    CMTimeSubtract(&v13, &time1, &time2);
    if ([(NSArray *)self->_originalVideoPTSList count])
    {
      v6 = 0;
      do
      {
        memset(&v12, 0, sizeof(v12));
        v7 = [(NSArray *)self->_originalVideoPTSList objectAtIndexedSubscript:v6];
        CMTimeMakeFromDictionary(&v12, v7);

        time1 = v12;
        time2 = *p_endAdjustedPTS;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&v11, 0, sizeof(v11));
          time1 = v12;
          time2 = v13;
          CMTimeAdd(&v11, &time1, &time2);
          updatedVideoPTSList = self->_updatedVideoPTSList;
          time1 = v11;
          v9 = CMTimeCopyAsDictionary(&time1, 0);
          [(NSMutableArray *)updatedVideoPTSList addObject:v9];
        }

        ++v6;
      }

      while (v6 < [(NSArray *)self->_originalVideoPTSList count]);
    }
  }

  return 0;
}

- (int)updateSamplesPTSForListGeneral:(id)a3 toList:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = 0;
    v18 = *v22;
    v10 = MEMORY[0x1E6960CC0];
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        memset(&v20, 0, sizeof(v20));
        CMTimeMakeFromDictionary(&v20, v12);
        time1 = v20;
        time2 = *v10;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          [v7 addObject:v12];
        }

        else
        {
          for (i = v9; i < [(NSArray *)self->_originalVideoPTSList count]; ++i)
          {
            memset(&v19, 0, sizeof(v19));
            v14 = [(NSArray *)self->_originalVideoPTSList objectAtIndexedSubscript:i];
            CMTimeMakeFromDictionary(&v19, v14);

            time1 = v20;
            time2 = v19;
            if (!CMTimeCompare(&time1, &time2))
            {
              v15 = [(NSMutableArray *)self->_updatedVideoPTSList objectAtIndexedSubscript:i];
              [v7 addObject:v15];

              ++v9;
            }
          }
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  return 0;
}

- (int)combineVideoSegments
{
  v73 = [(AVAssetTrack *)self->_originalTrack asset];
  v3 = MEMORY[0x1E6988168];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_filePath];
  v5 = [v3 assetWithURL:v4];

  v6 = [objc_alloc(MEMORY[0x1E6988058]) initWithSettingsFromMovie:0 options:0 error:0];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:self->_combinedFilePath];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtPath:self->_combinedFilePath error:0];
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 createFileAtPath:self->_combinedFilePath contents:0 attributes:0];

  if ((v11 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating final movie file", &buf, 2u);
    }

    v30 = -18;
    goto LABEL_32;
  }

  v12 = objc_alloc(MEMORY[0x1E6987FA8]);
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
  v14 = [v12 initWithURL:v13 options:0];
  [v6 setDefaultMediaDataStorage:v14];

  v15 = [v5 metadata];
  [v6 setMetadata:v15];

  v16 = *MEMORY[0x1E6987608];
  v17 = [v5 tracksWithMediaType:*MEMORY[0x1E6987608]];
  v72 = [v17 firstObject];

  v71 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v73];
  v70 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v5];
  if (!v72 || !v71 || !v70)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error getting video or metadata track", &buf, 2u);
    }

    v30 = -18;
    goto LABEL_31;
  }

  v68 = [v5 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v18 = [v5 tracksWithMediaType:*MEMORY[0x1E69875D0]];
  v19 = [v5 tracksWithMediaType:v16];
  v69 = [v6 addMutableTracksCopyingSettingsFromTracks:v19 options:0];

  v20 = [v72 metadata];
  v21 = [v69 objectAtIndexedSubscript:0];
  [v21 setMetadata:v20];

  v67 = [v6 addMutableTracksCopyingSettingsFromTracks:v68 options:0];
  v66 = [v6 addMutableTracksCopyingSettingsFromTracks:v18 options:0];
  if (!v69 || ![v69 count] || !v67 || !objc_msgSend(v67, "count") || !v66 || !objc_msgSend(v66, "count"))
  {
    v31 = v18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating output track", &buf, 2u);
    }

    v30 = -18;
    goto LABEL_30;
  }

  v22 = 0;
  v23 = *MEMORY[0x1E6990A00];
  while (1)
  {
    if (v22 >= [v18 count])
    {
      v22 = 0;
      goto LABEL_35;
    }

    v24 = v18;
    v25 = [v18 objectAtIndexedSubscript:v22];
    v26 = [v25 formatDescriptions];
    v27 = [v26 firstObject];

    if (v27)
    {
      v28 = CMMetadataFormatDescriptionGetIdentifiers(v27);
      v29 = [v28 containsObject:v23];

      if (v29)
      {
        break;
      }
    }

    ++v22;
    v18 = v24;
  }

  v18 = v24;
LABEL_35:
  v33 = [v69 objectAtIndexedSubscript:0];
  v62 = [v66 objectAtIndexedSubscript:v22];
  v65 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v73 error:0];
  v64 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:self->_originalTrack outputSettings:0];
  v63 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v71 outputSettings:0];
  if (([v65 canAddOutput:v64] & 1) == 0 || (objc_msgSend(v65, "addOutput:", v64), !objc_msgSend(v65, "canAddOutput:", v63)))
  {
    v31 = v18;
    v30 = -18;
    goto LABEL_56;
  }

  [v65 addOutput:v63];
  v34 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v5 error:0];
  v61 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v72 outputSettings:0];
  v60 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v70 outputSettings:0];
  v35 = v34;
  if (([v34 canAddOutput:v61] & 1) == 0 || (objc_msgSend(v34, "addOutput:", v61), !objc_msgSend(v34, "canAddOutput:", v60)))
  {
    v31 = v18;
    v30 = -18;
    goto LABEL_55;
  }

  [v34 addOutput:v60];
  if (![v65 startReading])
  {
    v31 = v18;
    goto LABEL_58;
  }

  v31 = v18;
  if (![v34 startReading])
  {
LABEL_58:
    v30 = -19;
    goto LABEL_55;
  }

  v36 = MEMORY[0x1E6960CC0];
  v83 = *MEMORY[0x1E6960CC0];
  v84 = *(MEMORY[0x1E6960CC0] + 16);
  v81 = v83;
  v82 = v84;
  *&buf.start.value = v83;
  buf.start.epoch = v84;
  v37 = v33;
  p_startAdjustedPTS = &self->_startAdjustedPTS;
  *&rhs.start.value = *&self->_startAdjustedPTS.value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  *&duration.start.value = *MEMORY[0x1E6960CC0];
  duration.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v59 = v37;
  v30 = [VCPVideoInterpolator appendOutput:"appendOutput:toTrack:startTimeStamp:endTimeStamp:offset:duration:" toTrack:v64 startTimeStamp:? endTimeStamp:? offset:? duration:?];
  if (v30)
  {
    goto LABEL_87;
  }

  *&buf.start.value = *v36;
  buf.start.epoch = *(v36 + 16);
  *&rhs.start.value = *&p_startAdjustedPTS->value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  *&duration.start.value = *&buf.start.value;
  duration.start.epoch = buf.start.epoch;
  v30 = [(VCPVideoInterpolator *)self appendOutput:v63 toTrack:v62 startTimeStamp:&buf endTimeStamp:&rhs offset:&duration duration:&v81];
  if (v30)
  {
    goto LABEL_87;
  }

  *&buf.start.value = *v36;
  buf.start.epoch = *(v36 + 16);
  *&rhs.start.value = *MEMORY[0x1E6960C88];
  rhs.start.epoch = *(MEMORY[0x1E6960C88] + 16);
  *&duration.start.value = *&p_startAdjustedPTS->value;
  duration.start.epoch = self->_startAdjustedPTS.epoch;
  v30 = [(VCPVideoInterpolator *)self appendOutput:v61 toTrack:v59 startTimeStamp:&buf endTimeStamp:&rhs offset:&duration duration:&v83];
  if (v30)
  {
    goto LABEL_87;
  }

  *&buf.start.value = *v36;
  buf.start.epoch = *(v36 + 16);
  *&rhs.start.value = *MEMORY[0x1E6960C88];
  rhs.start.epoch = *(MEMORY[0x1E6960C88] + 16);
  *&duration.start.value = *&p_startAdjustedPTS->value;
  duration.start.epoch = self->_startAdjustedPTS.epoch;
  v30 = [(VCPVideoInterpolator *)self appendOutput:v60 toTrack:v62 startTimeStamp:&buf endTimeStamp:&rhs offset:&duration duration:&v81];
  if (v30)
  {
    goto LABEL_87;
  }

  v81 = v83;
  p_endAdjustedPTS = &self->_endAdjustedPTS;
  *&duration.start.value = *&self->_endAdjustedPTS.value;
  v79 = *MEMORY[0x1E6960C88];
  v82 = v84;
  duration.start.epoch = self->_endAdjustedPTS.epoch;
  v80 = *(MEMORY[0x1E6960C88] + 16);
  *&buf.start.value = v83;
  buf.start.epoch = v84;
  *&rhs.start.value = *&self->_endAdjustedPTS.value;
  rhs.start.epoch = self->_endAdjustedPTS.epoch;
  CMTimeSubtract(&v78, &buf.start, &rhs.start);
  v30 = [(VCPVideoInterpolator *)self appendOutput:v64 toTrack:v59 startTimeStamp:&duration endTimeStamp:&v79 offset:&v78 duration:&v83];
  if (v30)
  {
    goto LABEL_87;
  }

  *&duration.start.value = *&p_endAdjustedPTS->value;
  duration.start.epoch = self->_endAdjustedPTS.epoch;
  v79 = *MEMORY[0x1E6960C88];
  v80 = *(MEMORY[0x1E6960C88] + 16);
  *&buf.start.value = v81;
  buf.start.epoch = v82;
  *&rhs.start.value = *&p_endAdjustedPTS->value;
  rhs.start.epoch = self->_endAdjustedPTS.epoch;
  CMTimeSubtract(&v78, &buf.start, &rhs.start);
  v30 = [(VCPVideoInterpolator *)self appendOutput:v63 toTrack:v62 startTimeStamp:&duration endTimeStamp:&v79 offset:&v78 duration:&v81];
  if (v30)
  {
    goto LABEL_87;
  }

  v53 = [v59 formatDescriptions];
  if ([v53 count] >= 2)
  {
    otherFormatDescription = [v53 objectAtIndexedSubscript:0];

    for (i = 1; i < [v53 count]; ++i)
    {
      v41 = [v53 objectAtIndexedSubscript:i];

      if (!CMFormatDescriptionEqual(v41, otherFormatDescription) && !+[VCPVideoInterpolator allowMultipleFormats])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.start.value) = 0;
          v48 = MEMORY[0x1E69E9C10];
          v49 = "FRC processed video has multiple format descriptions";
          p_buf = &buf;
LABEL_95:
          _os_log_impl(&dword_1C9B70000, v48, OS_LOG_TYPE_ERROR, v49, p_buf, 2u);
        }

        goto LABEL_85;
      }
    }
  }

  memset(&buf, 0, sizeof(buf));
  *&rhs.start.value = *v36;
  rhs.start.epoch = *(v36 + 16);
  *&duration.start.value = v83;
  duration.start.epoch = v84;
  CMTimeRangeMake(&buf, &rhs.start, &duration.start);
  for (otherFormatDescriptiona = 0; otherFormatDescriptiona < [v67 count]; otherFormatDescriptiona = (otherFormatDescriptiona + 1))
  {
    v54 = [v67 objectAtIndexedSubscript:otherFormatDescriptiona];
    rhs = buf;
    v42 = [v68 objectAtIndexedSubscript:otherFormatDescriptiona];
    *&duration.start.value = *v36;
    duration.start.epoch = *(v36 + 16);
    v43 = [v54 insertTimeRange:&rhs ofTrack:v42 atTime:&duration copySampleData:1 error:0];

    if ((v43 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(rhs.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error inserting audio tracks", &rhs, 2u);
      }

      v46 = v54;
      goto LABEL_84;
    }
  }

  for (j = 0; ; ++j)
  {
    if (j >= [v66 count])
    {
      rhs = buf;
      duration = buf;
      if ([v59 insertMediaTimeRange:&rhs intoTimeRange:&duration])
      {
        rhs = buf;
        duration = buf;
        if ([v62 insertMediaTimeRange:&rhs intoTimeRange:&duration])
        {
          originalTrack = self->_originalTrack;
          if (originalTrack)
          {
            [(AVAssetTrack *)originalTrack preferredTransform];
          }

          else
          {
            memset(&v74, 0, sizeof(v74));
          }

          rhs = v74;
          [v59 setPreferredTransform:&rhs];
          v51 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
          v52 = [v6 writeMovieHeaderToURL:v51 fileType:*MEMORY[0x1E69874C0] options:0 error:0];

          if (v52)
          {
            v30 = 0;
          }

          else
          {
            v30 = -20;
          }

          goto LABEL_86;
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_85;
        }

        LOWORD(rhs.start.value) = 0;
        v48 = MEMORY[0x1E69E9C10];
        v49 = "Error inserting live photo info track";
      }

      else
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_85;
        }

        LOWORD(rhs.start.value) = 0;
        v48 = MEMORY[0x1E69E9C10];
        v49 = "Error inserting video track";
      }

      p_buf = &rhs;
      goto LABEL_95;
    }

    if (v22 != j)
    {
      break;
    }

LABEL_68:
    ;
  }

  otherFormatDescriptionb = [v66 objectAtIndexedSubscript:j];
  rhs = buf;
  v55 = [v31 objectAtIndexedSubscript:j];
  *&duration.start.value = *v36;
  duration.start.epoch = *(v36 + 16);
  v45 = [(opaqueCMFormatDescription *)otherFormatDescriptionb insertTimeRange:&rhs ofTrack:v55 atTime:&duration copySampleData:1 error:0];

  if (v45)
  {

    goto LABEL_68;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(rhs.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error inserting metadata tracks", &rhs, 2u);
  }

  v46 = otherFormatDescriptionb;
LABEL_84:

LABEL_85:
  v30 = -18;
LABEL_86:

LABEL_87:
  v33 = v59;
  v35 = v34;
LABEL_55:

LABEL_56:
LABEL_30:

LABEL_31:
LABEL_32:

  return v30;
}

- (int)appendOutput:(id)a3 toTrack:(id)a4 startTimeStamp:(id *)a5 endTimeStamp:(id *)a6 offset:(id *)a7 duration:(id *)a8
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v22 = a4;
  while (1)
  {
    while (1)
    {
      v14 = [v13 copyNextSampleBuffer];
      v15 = v14;
      if (!v14)
      {
        goto LABEL_13;
      }

      if (CMSampleBufferGetNumSamples(v14))
      {
        memset(&v30, 0, sizeof(v30));
        CMSampleBufferGetDecodeTimeStamp(&v30, v15);
        memset(&v29, 0, sizeof(v29));
        CMSampleBufferGetPresentationTimeStamp(&v29, v15);
        memset(&v28, 0, sizeof(v28));
        CMSampleBufferGetDuration(&v28, v15);
        time1.duration = v30;
        time2 = *a6;
        if ((CMTimeCompare(&time1.duration, &time2) & 0x80000000) == 0)
        {
          CFRelease(v15);
LABEL_13:
          v16 = 0;
          goto LABEL_20;
        }

        time1.duration = v30;
        time2 = *a5;
        if ((CMTimeCompare(&time1.duration, &time2) & 0x80000000) == 0)
        {
          break;
        }
      }

      v17 = v15;
LABEL_11:
      CFRelease(v17);
    }

    sampleBufferOut = 0;
    memset(&v26, 0, sizeof(v26));
    time1.duration = v30;
    time2 = *a7;
    CMTimeAdd(&v26, &time1.duration, &time2);
    memset(&v25, 0, sizeof(v25));
    time1.duration = v29;
    time2 = *a7;
    CMTimeAdd(&v25, &time1.duration, &time2);
    *&time1.duration.value = *MEMORY[0x1E6960C70];
    time1.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    time1.presentationTimeStamp = v25;
    time1.decodeTimeStamp = v26;
    v16 = CMSampleBufferCreateCopyWithNewTiming(0, v15, 1, &time1, &sampleBufferOut);
    if (v16)
    {
      v17 = v15;
LABEL_19:
      CFRelease(v17);
      goto LABEL_20;
    }

    v17 = sampleBufferOut;
    CFRelease(v15);
    lhs = *a8;
    rhs = v28;
    CMTimeAdd(&time2, &lhs, &rhs);
    *a8 = time2;
    v23 = 0;
    v18 = [v22 appendSampleBuffer:v17 decodeTime:0 presentationTime:0 error:&v23];
    v19 = v23;
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (v17)
    {
      goto LABEL_11;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(time2.value) = 138412290;
    *(&time2.value + 4) = v20;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error appending sample: %@", &time2, 0xCu);
  }

  v16 = -18;
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v16;
}

- (id)results
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"InterpolationResults";
  v10 = @"attributes";
  combinedFilePath = self->_combinedFilePath;
  v8 = @"interpolationURL";
  v9 = combinedFilePath;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v6;
}

- (CGSize)getFrameSize:(id)a3
{
  v3 = [a3 formatDescriptions];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];

    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v4, 0, 0);
    width = PresentationDimensions.width;
    height = PresentationDimensions.height;
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (__CVBuffer)revertStyle:(__CVBuffer *)a3 withMetadata:(id)a4 withDeltaMap:(__CVBuffer *)a5
{
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  cf = 0;
  value = self->_unstyledImagePixelBufferPool.value_;
  if (!value)
  {
    v22[0] = *MEMORY[0x1E6966130];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a3)];
    v23[0] = v13;
    v22[1] = *MEMORY[0x1E6966208];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(a3)];
    v23[1] = v14;
    v22[2] = *MEMORY[0x1E69660B8];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(a3)];
    v22[3] = *MEMORY[0x1E69660D8];
    v23[2] = v15;
    v23[3] = MEMORY[0x1E695E0F8];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

    v17 = self->_unstyledImagePixelBufferPool.value_;
    if (v17)
    {
      CFRelease(v17);
      self->_unstyledImagePixelBufferPool.value_ = 0;
    }

    v18 = CVPixelBufferPoolCreate(0, 0, v16, &self->_unstyledImagePixelBufferPool.value_) == 0;

    if (!v18)
    {
      goto LABEL_9;
    }

    value = self->_unstyledImagePixelBufferPool.value_;
  }

  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], value, &cf);
  v11 = cf;
  if (!PixelBuffer)
  {
    v12 = [(CMISmartStyleUtilitiesV1 *)self->_smartStyleUtilities computeOriginalUnstyledPixelBufferFrom:a3 inputDeltaMapPixelBuffer:a5 inputMetadataDict:v8 outputUnstyledPixelBuffer:cf];
    v11 = cf;
    if (!v12)
    {
      CVBufferPropagateAttachments(a3, cf);
      v19 = cf;
      goto LABEL_10;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_9:
  v19 = 0;
LABEL_10:

  return v19;
}

- (__CVBuffer)calculateDeltaforUnstyledFrame:(__CVBuffer *)a3 styledFrame:(__CVBuffer *)a4 withCoefficients:(id)a5
{
  v24[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  cf = 0;
  value = self->_deltaMapPixelBufferPool.value_;
  if (!value)
  {
    v23[0] = *MEMORY[0x1E6966130];
    v13 = MEMORY[0x1E696AD98];
    ImageBuffer = CMSampleBufferGetImageBuffer(self->_previousDeltaSample);
    v15 = [v13 numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(ImageBuffer)];
    v24[0] = v15;
    v23[1] = *MEMORY[0x1E6966208];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(a3)];
    v24[1] = v16;
    v23[2] = *MEMORY[0x1E69660B8];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(a3)];
    v23[3] = *MEMORY[0x1E69660D8];
    v24[2] = v17;
    v24[3] = MEMORY[0x1E695E0F8];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];

    v19 = self->_deltaMapPixelBufferPool.value_;
    if (v19)
    {
      CFRelease(v19);
      self->_deltaMapPixelBufferPool.value_ = 0;
    }

    v20 = CVPixelBufferPoolCreate(0, 0, v18, &self->_deltaMapPixelBufferPool.value_) == 0;

    if (!v20)
    {
      goto LABEL_9;
    }

    value = self->_deltaMapPixelBufferPool.value_;
  }

  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, value, &cf);
  v11 = cf;
  if (PixelBuffer || (v12 = [(CMISmartStyleUtilitiesV1 *)self->_smartStyleUtilities computeDeltaMapForSourcePixelBuffer:a3 targetPixelBuffer:a4 coefficientsDict:v8 outputDeltaMapPixelBuffer:cf], v11 = cf, v12))
  {
    if (v11)
    {
      CFRelease(v11);
LABEL_9:
      v11 = 0;
    }
  }

  return v11;
}

- (id)findLearnedTrack:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  [a3 tracksWithMediaType:*MEMORY[0x1E69875B0]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v24 = *v31;
    v23 = *MEMORY[0x1E6987708];
    v22 = *MEMORY[0x1E6987908];
    v21 = *MEMORY[0x1E6987858];
    do
    {
      v19 = v3;
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = MEMORY[0x1E6987FE0];
        v7 = [v5 metadataForFormat:v23];
        v20 = v5;
        v8 = [v6 metadataItemsFromArray:v7 withKey:v22 keySpace:v21];

        if (v8)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v10)
          {
            v11 = *v27;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v27 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v26 + 1) + 8 * j);
                v14 = [v13 stringValue];
                if ([@"com.apple.quicktime.video-map.smart-style-delta-map" isEqualToString:v14])
                {
                }

                else
                {
                  v15 = [v13 stringValue];
                  v16 = [@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v15];

                  if ((v16 & 1) == 0)
                  {
                    v17 = v20;

                    goto LABEL_23;
                  }
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v17 = 0;
    }

    while (v3);
  }

  else
  {
    v17 = 0;
  }

LABEL_23:

  return v17;
}

- (id)findLinearThumbnailTrack:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  [a3 tracksWithMediaType:*MEMORY[0x1E69875B0]];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v20 = *MEMORY[0x1E6987708];
    v21 = *v28;
    v18 = *MEMORY[0x1E6987858];
    v19 = *MEMORY[0x1E6987908];
    do
    {
      v17 = v3;
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = MEMORY[0x1E6987FE0];
        v7 = [v5 metadataForFormat:v20, v17];
        v8 = [v6 metadataItemsFromArray:v7 withKey:v19 keySpace:v18];

        if (v8)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = *v24;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v24 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = [*(*(&v23 + 1) + 8 * j) stringValue];
                v14 = [@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v13];

                if (v14)
                {
                  v15 = v5;

                  goto LABEL_21;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v15 = 0;
    }

    while (v3);
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)getFramePTSAfter:(SEL)a3 forAsset:(id *)a4
{
  v7 = [(VCPVideoInterpolator *)self findLearnedTrack:a5];
  v8 = objc_alloc(MEMORY[0x1E6987E78]);
  v9 = [v7 asset];
  v10 = [v8 initWithAsset:v9 error:0];

  v11 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:v7];
  if (([v10 canAddOutput:v11] & 1) != 0 && (objc_msgSend(v10, "addOutput:", v11), objc_msgSend(v10, "startReading")))
  {
    while (1)
    {
      v12 = [v11 copyNextSampleBuffer];
      v13 = v12;
      if (!v12)
      {
        break;
      }

      if (CMSampleBufferGetNumSamples(v12))
      {
        memset(&v16, 0, sizeof(v16));
        CMSampleBufferGetPresentationTimeStamp(&v16, v13);
        time1 = v16;
        time2 = *a4;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          v17 = v16;
          CFRelease(v13);
          break;
        }
      }

      CFRelease(v13);
    }

    v14 = &v17;
  }

  else
  {
    v14 = MEMORY[0x1E6960C70];
  }

  *&retstr->var0 = *&v14->value;
  retstr->var3 = v14->epoch;

  return result;
}

- (id)findTrack:(id)a3 forAsset:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [a4 tracksWithMediaType:*MEMORY[0x1E69875B0]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v24 = *v31;
    v23 = *MEMORY[0x1E6987708];
    v22 = *MEMORY[0x1E6987908];
    v21 = *MEMORY[0x1E6987858];
    do
    {
      v20 = v6;
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = MEMORY[0x1E6987FE0];
        v10 = [v8 metadataForFormat:v23, v20];
        v11 = [v9 metadataItemsFromArray:v10 withKey:v22 keySpace:v21];

        if (v11)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            v14 = *v27;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = [*(*(&v26 + 1) + 8 * j) stringValue];
                v17 = [v16 isEqualToString:v5];

                if (v17)
                {
                  v18 = v8;

                  goto LABEL_21;
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v18 = 0;
    }

    while (v6);
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  return v18;
}

- (int)setupAdditionalAuxTrack
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(AVAssetTrack *)self->_originalTrack asset];
  v4 = [v3 tracksWithMediaType:*MEMORY[0x1E69875B0]];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v29 = *v38;
    v27 = *MEMORY[0x1E6987708];
    v26 = *MEMORY[0x1E6987908];
    v25 = *MEMORY[0x1E6987858];
    do
    {
      v6 = 0;
      v28 = v5;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * v6);
        v8 = [v7 formatDescriptions];
        v32 = v6;
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = MEMORY[0x1E6987FE0];
          v11 = [v7 metadataForFormat:v27];
          v30 = [v10 metadataItemsFromArray:v11 withKey:v26 keySpace:v25];

          v12 = v30;
          if (v30)
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v13 = v30;
            v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v14)
            {
              v15 = *v34;
              while (2)
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v34 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v33 + 1) + 8 * i);
                  v18 = [v17 stringValue];
                  v19 = [@"com.apple.quicktime.video-map.smart-style-delta-map" isEqualToString:v18];

                  if ((v19 & 1) == 0)
                  {
                    v20 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v7 outputSettings:0];
                    if (![(AVAssetReader *)self->_auxAssetReader canAddOutput:v20])
                    {

                      v23 = -18;
                      goto LABEL_24;
                    }

                    [(AVAssetReader *)self->_auxAssetReader addOutput:v20];
                    auxInputToOutputMap = self->_auxInputToOutputMap;
                    v22 = [v17 stringValue];
                    [(NSMapTable *)auxInputToOutputMap setObject:v20 forKey:v22];
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v12 = v30;
          }
        }

        v6 = v32 + 1;
      }

      while (v32 + 1 != v28);
      v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  [(AVAssetReader *)self->_auxAssetReader startReading];
  v23 = 0;
LABEL_24:

  return v23;
}

- (int)combineVideoSegmentsWithAssetWriter
{
  v176[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:self->_combinedFilePath];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:self->_combinedFilePath error:0];
  }

  v133 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v134 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v135 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v6 = [(AVAssetTrack *)self->_originalTrack asset];
  v7 = MEMORY[0x1E6988168];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_filePath];
  v9 = [v7 assetWithURL:v8];

  v10 = MEMORY[0x1E6987ED8];
  v136 = v9;
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
  v12 = *MEMORY[0x1E69874C0];
  v167 = 0;
  v13 = [v10 assetWriterWithURL:v11 fileType:v12 error:&v167];
  v14 = v167;

  if (!v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [v14 description];
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset writer (%@)", buf, 0xCu);
    }

    v19 = -18;
    goto LABEL_154;
  }

  v15 = *MEMORY[0x1E6987608];
  v132 = [(VCPVideoInterpolator *)self addInputMediaType:*MEMORY[0x1E6987608] toWriter:v13 forTrack:self->_originalTrack];
  if (!v132)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  if (self->_hasStyleApplied)
  {
    v16 = [(VCPVideoInterpolator *)self findDeltaTrack:v6];
    v130 = [(VCPVideoInterpolator *)self addInputMediaType:*MEMORY[0x1E69875B0] toWriter:v13 forTrack:v16];

    if (!v130)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v17 = MEMORY[0x1E69E9C10];
LABEL_17:
      _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_ERROR, "Failed to add AVAssetWriterInput", buf, 2u);
LABEL_18:
      v19 = -18;
      goto LABEL_153;
    }
  }

  else
  {
    v130 = 0;
  }

  v20 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v6];
  v21 = *MEMORY[0x1E69875D0];
  v131 = [(VCPVideoInterpolator *)self addInputMediaType:*MEMORY[0x1E69875D0] toWriter:v13 forTrack:v20];

  if (!v131)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to add AVAssetWriterInput", buf, 2u);
    }

    v19 = -18;
    goto LABEL_152;
  }

  v22 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v6];
  v129 = [(VCPVideoInterpolator *)self addInputMediaType:v21 toWriter:v13 forTrack:v22];

  if (!v129)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to add AVAssetWriterInput", buf, 2u);
    }

    v19 = -18;
    goto LABEL_151;
  }

  v128 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v6 error:0];
  v23 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:self->_originalTrack outputSettings:0];
  if (([v128 canAddOutput:v23] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_150;
  }

  [v128 addOutput:v23];
  v124 = v23;
  if (self->_hasStyleApplied)
  {
    v24 = MEMORY[0x1E6987EA8];
    v25 = [(VCPVideoInterpolator *)self findDeltaTrack:v6];
    v126 = [v24 assetReaderTrackOutputWithTrack:v25 outputSettings:0];

    if (([v128 canAddOutput:v126] & 1) == 0)
    {
      v19 = -18;
      goto LABEL_149;
    }

    [v128 addOutput:v126];
  }

  else
  {
    v126 = 0;
  }

  v26 = MEMORY[0x1E6987EA8];
  v27 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v6];
  v125 = [v26 assetReaderTrackOutputWithTrack:v27 outputSettings:0];

  if (([v128 canAddOutput:v125] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_148;
  }

  [v128 addOutput:v125];
  v28 = MEMORY[0x1E6987EA8];
  v29 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v6];
  v122 = [v28 assetReaderTrackOutputWithTrack:v29 outputSettings:0];

  v30 = v122;
  if (([v128 canAddOutput:v122] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_147;
  }

  [v128 addOutput:v122];
  v123 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v136 error:0];
  v31 = MEMORY[0x1E6987EA8];
  v32 = [v136 tracksWithMediaType:v15];
  v33 = [v32 firstObject];
  v121 = [v31 assetReaderTrackOutputWithTrack:v33 outputSettings:0];

  v34 = v121;
  if (([v123 canAddOutput:v121] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_146;
  }

  [v123 addOutput:v121];
  if (self->_hasStyleApplied)
  {
    v35 = MEMORY[0x1E6987EA8];
    v36 = [(VCPVideoInterpolator *)self findDeltaTrack:v136];
    v37 = [v35 assetReaderTrackOutputWithTrack:v36 outputSettings:0];

    if (([v123 canAddOutput:v37] & 1) == 0)
    {
      v19 = -18;
      goto LABEL_145;
    }

    [v123 addOutput:v37];
  }

  else
  {
    v37 = 0;
  }

  v38 = MEMORY[0x1E6987EA8];
  v39 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v136];
  v111 = v37;
  v115 = [v38 assetReaderTrackOutputWithTrack:v39 outputSettings:0];

  v40 = v115;
  if (([v123 canAddOutput:v115] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_144;
  }

  [v123 addOutput:v115];
  v41 = MEMORY[0x1E6987EA8];
  v42 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v136];
  v110 = [v41 assetReaderTrackOutputWithTrack:v42 outputSettings:0];

  v43 = v110;
  if (([v123 canAddOutput:v110] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_143;
  }

  [v123 addOutput:v110];
  v44 = objc_alloc(MEMORY[0x1E6987EE0]);
  v45 = *MEMORY[0x1E69875A0];
  v107 = [v44 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:0];
  [v107 setExpectsMediaDataInRealTime:1];
  if (([v13 canAddInput:v107] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_142;
  }

  [v13 addInput:v107];
  v175 = *MEMORY[0x1E69582B0];
  v176[0] = &unk_1F49BBC08;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:&v175 count:1];
  v47 = MEMORY[0x1E6987EA8];
  v105 = v46;
  v48 = [v136 tracksWithMediaType:v45];
  v49 = [v48 firstObject];
  v106 = [v47 assetReaderTrackOutputWithTrack:v49 outputSettings:v46];

  v50 = v106;
  if (([v123 canAddOutput:v106] & 1) == 0)
  {
    v19 = -18;
    goto LABEL_141;
  }

  [v123 addOutput:v106];
  [v135 setObject:v106 forKey:v107];
  [v136 tracksWithMediaType:v21];
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  obj = v164 = 0u;
  v51 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
  if (v51)
  {
    v116 = *v164;
    v108 = *MEMORY[0x1E6990A00];
    do
    {
      v52 = 0;
      v118 = v51;
      do
      {
        if (*v164 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v163 + 1) + 8 * v52);
        v54 = [v53 formatDescriptions];
        v55 = [v54 firstObject];

        if (v55)
        {
          v56 = v53;
          v57 = CMMetadataFormatDescriptionGetIdentifiers(v55);
          if (([v57 containsObject:@"mdta/com.apple.quicktime.smartstyle-info"] & 1) == 0 && (objc_msgSend(v57, "containsObject:", v108) & 1) == 0)
          {
            v113 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v53 outputSettings:0];
            if (([v123 canAddOutput:v113] & 1) == 0)
            {
              goto LABEL_133;
            }

            [v123 addOutput:v113];
            v58 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v21 outputSettings:0 sourceFormatHint:0];
            if (v56)
            {
              [v56 preferredTransform];
            }

            else
            {
              v161 = 0u;
              v162 = 0u;
              v160 = 0u;
            }

            *buf = v160;
            v172 = v161;
            v173 = v162;
            [v58 setTransform:buf];
            v59 = [v56 metadata];
            [v58 setMetadata:v59];

            if (([v13 canAddInput:v58] & 1) == 0)
            {

LABEL_133:
              v19 = -18;
              v90 = obj;
              goto LABEL_140;
            }

            [v13 addInput:v58];
            [v135 setObject:v113 forKey:v58];
          }
        }

        ++v52;
      }

      while (v118 != v52);
      v51 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
    }

    while (v51);
  }

  v60 = [(AVAssetTrack *)self->_originalTrack asset];
  v109 = *MEMORY[0x1E69875B0];
  v61 = [v60 tracksWithMediaType:?];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v103 = v61;
  v62 = [v103 countByEnumeratingWithState:&v156 objects:v170 count:16];
  if (v62)
  {
    v101 = *v157;
    v99 = *MEMORY[0x1E6987708];
    v97 = *MEMORY[0x1E6987858];
    v98 = *MEMORY[0x1E6987908];
    do
    {
      v63 = 0;
      v100 = v62;
      do
      {
        if (*v157 != v101)
        {
          objc_enumerationMutation(v103);
        }

        v119 = *(*(&v156 + 1) + 8 * v63);
        v64 = [v119 formatDescriptions];
        v104 = v63;
        v65 = v64 == 0;

        if (!v65)
        {
          v66 = MEMORY[0x1E6987FE0];
          v67 = [v119 metadataForFormat:v99];
          v102 = [v66 metadataItemsFromArray:v67 withKey:v98 keySpace:v97];

          v68 = v102;
          if (v102)
          {
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v114 = v102;
            v69 = [v114 countByEnumeratingWithState:&v152 objects:v169 count:16];
            if (v69)
            {
              v117 = *v153;
              do
              {
                for (i = 0; i != v69; ++i)
                {
                  if (*v153 != v117)
                  {
                    objc_enumerationMutation(v114);
                  }

                  v71 = *(*(&v152 + 1) + 8 * i);
                  v72 = [v71 stringValue];
                  v73 = [@"com.apple.quicktime.video-map.smart-style-delta-map" isEqualToString:v72];

                  if ((v73 & 1) == 0)
                  {
                    v74 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v119 outputSettings:0];
                    if (([v128 canAddOutput:v74] & 1) == 0)
                    {
                      goto LABEL_137;
                    }

                    [v128 addOutput:v74];
                    v75 = [v71 stringValue];
                    [v134 setObject:v74 forKey:v75];

                    v76 = [(VCPVideoInterpolator *)self addInputMediaType:v109 toWriter:v13 forTrack:v119];
                    if (!v76)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to add AVAssetWriterInput", buf, 2u);
                      }

LABEL_137:

                      goto LABEL_138;
                    }

                    [v76 setMarksOutputTrackAsEnabled:{objc_msgSend(v119, "isEnabled")}];
                    v77 = [v71 stringValue];
                    [v133 setObject:v76 forKey:v77];
                  }
                }

                v69 = [v114 countByEnumeratingWithState:&v152 objects:v169 count:16];
              }

              while (v69);
            }

            v68 = v102;
          }
        }

        v63 = v104 + 1;
      }

      while (v104 + 1 != v100);
      v62 = [v103 countByEnumeratingWithState:&v156 objects:v170 count:16];
    }

    while (v62);
  }

  v78 = [v6 metadata];
  [v13 setMetadata:v78];

  [v13 startWriting];
  v79 = MEMORY[0x1E6960CC0];
  *buf = *MEMORY[0x1E6960CC0];
  *&v172 = *(MEMORY[0x1E6960CC0] + 16);
  [v13 startSessionAtSourceTime:buf];
  [v128 startReading];
  [v123 startReading];
  v150 = *&v79->value;
  epoch = v79->epoch;
  v148 = v150;
  v149 = epoch;
  v146 = v150;
  v147 = epoch;
  v144 = *&v79->value;
  v145 = v79->epoch;
  *buf = *&v79->value;
  *&v172 = v79->epoch;
  p_startAdjustedPTS = &self->_startAdjustedPTS;
  time2 = self->_startAdjustedPTS;
  v142 = *&v79->value;
  v143 = v79->epoch;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v124 toWriterInput:v132 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v150];
  if (v19)
  {
    goto LABEL_139;
  }

  if (self->_hasStyleApplied)
  {
    *buf = *&v79->value;
    *&v172 = v79->epoch;
    *&time2.value = *&p_startAdjustedPTS->value;
    time2.epoch = self->_startAdjustedPTS.epoch;
    v142 = *buf;
    v143 = v172;
    v19 = [(VCPVideoInterpolator *)self appendOutput:v126 toWriterInput:v130 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v146];
    if (v19)
    {
      goto LABEL_139;
    }
  }

  *buf = *&v79->value;
  *&v172 = v79->epoch;
  *&time2.value = *&p_startAdjustedPTS->value;
  time2.epoch = self->_startAdjustedPTS.epoch;
  v142 = *buf;
  v143 = v172;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v125 toWriterInput:v131 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v148];
  if (v19)
  {
    goto LABEL_139;
  }

  *buf = *&v79->value;
  *&v172 = v79->epoch;
  *&time2.value = *&p_startAdjustedPTS->value;
  time2.epoch = self->_startAdjustedPTS.epoch;
  v142 = *buf;
  v143 = v172;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v122 toWriterInput:v129 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v144];
  if (v19)
  {
    goto LABEL_139;
  }

  *buf = *&p_startAdjustedPTS->value;
  *&v172 = self->_startAdjustedPTS.epoch;
  time2 = *v79;
  if (CMTimeCompare(buf, &time2) && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Appended segment before FRC range to final movie", buf, 2u);
  }

  *buf = *&v79->value;
  *&v172 = v79->epoch;
  v81 = MEMORY[0x1E6960C88];
  time2 = **&MEMORY[0x1E6960C88];
  v142 = *&p_startAdjustedPTS->value;
  v143 = self->_startAdjustedPTS.epoch;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v121 toWriterInput:v132 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v150];
  if (v19)
  {
    goto LABEL_139;
  }

  if (self->_hasStyleApplied)
  {
    *buf = *&v79->value;
    *&v172 = v79->epoch;
    time2 = *v81;
    v142 = *&p_startAdjustedPTS->value;
    v143 = self->_startAdjustedPTS.epoch;
    v19 = [(VCPVideoInterpolator *)self appendOutput:v111 toWriterInput:v130 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v146];
    if (v19)
    {
      goto LABEL_139;
    }
  }

  *buf = *&v79->value;
  *&v172 = v79->epoch;
  time2 = *v81;
  v142 = *&p_startAdjustedPTS->value;
  v143 = self->_startAdjustedPTS.epoch;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v115 toWriterInput:v131 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v148];
  if (v19)
  {
    goto LABEL_139;
  }

  *buf = *&v79->value;
  *&v172 = v79->epoch;
  time2 = *v81;
  v142 = *&p_startAdjustedPTS->value;
  v143 = self->_startAdjustedPTS.epoch;
  v19 = [(VCPVideoInterpolator *)self appendOutput:v110 toWriterInput:v129 startTimeStamp:buf endTimeStamp:&time2 offset:&v142 duration:&v144];
  if (v19)
  {
    goto LABEL_139;
  }

  v144 = v150;
  v145 = epoch;
  v148 = v150;
  v149 = epoch;
  if (self->_hasStyleApplied)
  {
    v146 = v150;
    v147 = epoch;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Appended FRC segment to final movie", buf, 2u);
  }

  *buf = v150;
  *&v172 = epoch;
  [(VCPVideoInterpolator *)self finishVideoSamplePTSUpdateWithVideoDuration:buf];
  v82 = [(NSArray *)self->_originalVideoPTSList count];
  if (v82 != [(NSMutableArray *)self->_updatedVideoPTSList count])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistent number of video samples after update", buf, 2u);
    }

    goto LABEL_138;
  }

  if (self->_enableStyle)
  {
    [(VCPVideoInterpolator *)self updateSamplesPTSForList:self->_originalLearnedPTSList toList:self->_updatedLearnedPTSList];
    [(VCPVideoInterpolator *)self updateSamplesPTSForList:self->_originalLinearThumbnailPTSList toList:self->_updatedLinearThumbnailPTSList];
    v83 = [(NSArray *)self->_originalVideoPTSList count];
    if (v83 != [(NSMutableArray *)self->_updatedVideoPTSList count]|| (v84 = [(NSArray *)self->_originalLearnedPTSList count], v84 != [(NSMutableArray *)self->_updatedLearnedPTSList count]) || (v85 = [(NSArray *)self->_originalLinearThumbnailPTSList count], v85 != [(NSMutableArray *)self->_updatedLinearThumbnailPTSList count]))
    {
LABEL_138:
      v19 = -18;
      goto LABEL_139;
    }
  }

  p_endAdjustedPTS = &self->_endAdjustedPTS;
  v142 = *&self->_endAdjustedPTS.value;
  v143 = self->_endAdjustedPTS.epoch;
  v140 = *&v81->value;
  v141 = v81->epoch;
  *buf = v150;
  *&v172 = epoch;
  time2 = self->_endAdjustedPTS;
  CMTimeSubtract(&v139, buf, &time2);
  v19 = [(VCPVideoInterpolator *)self appendOutput:v124 toWriterInput:v132 startTimeStamp:&v142 endTimeStamp:&v140 offset:&v139 duration:&v150];
  if (v19)
  {
    goto LABEL_139;
  }

  if (self->_hasStyleApplied)
  {
    v142 = *&p_endAdjustedPTS->value;
    v143 = self->_endAdjustedPTS.epoch;
    v140 = *&v81->value;
    v141 = v81->epoch;
    *buf = v146;
    *&v172 = v147;
    *&time2.value = *&p_endAdjustedPTS->value;
    time2.epoch = self->_endAdjustedPTS.epoch;
    CMTimeSubtract(&v139, buf, &time2);
    v19 = [(VCPVideoInterpolator *)self appendOutput:v126 toWriterInput:v130 startTimeStamp:&v142 endTimeStamp:&v140 offset:&v139 duration:&v146];
    if (v19)
    {
      goto LABEL_139;
    }
  }

  v142 = *&p_endAdjustedPTS->value;
  v143 = self->_endAdjustedPTS.epoch;
  v140 = *&v81->value;
  v141 = v81->epoch;
  *buf = v148;
  *&v172 = v149;
  *&time2.value = *&p_endAdjustedPTS->value;
  time2.epoch = self->_endAdjustedPTS.epoch;
  CMTimeSubtract(&v139, buf, &time2);
  v19 = [(VCPVideoInterpolator *)self appendOutput:v125 toWriterInput:v131 startTimeStamp:&v142 endTimeStamp:&v140 offset:&v139 duration:&v148];
  if (v19)
  {
    goto LABEL_139;
  }

  v142 = *&p_endAdjustedPTS->value;
  v143 = self->_endAdjustedPTS.epoch;
  v140 = *&v81->value;
  v141 = v81->epoch;
  *buf = v144;
  *&v172 = v145;
  *&time2.value = *&p_endAdjustedPTS->value;
  time2.epoch = self->_endAdjustedPTS.epoch;
  CMTimeSubtract(&v139, buf, &time2);
  v19 = [(VCPVideoInterpolator *)self appendOutput:v122 toWriterInput:v129 startTimeStamp:&v142 endTimeStamp:&v140 offset:&v139 duration:&v144];
  if (v19)
  {
    goto LABEL_139;
  }

  *buf = *&p_endAdjustedPTS->value;
  *&v172 = self->_endAdjustedPTS.epoch;
  time2 = *v81;
  if (CMTimeCompare(buf, &time2) && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Appended segment after FRC range to final movie", buf, 2u);
  }

  v127 = [v135 keyEnumerator];
  v87 = 0;
  while (1)
  {
    v88 = [v127 nextObject];

    if (!v88)
    {
      break;
    }

    v89 = [v135 objectForKey:v88];
    v19 = [(VCPVideoInterpolator *)self appendOutput:v89 toWriterInput:v88 withUpdatedTimeFrom:0 withOriginalTimeFrom:0];

    v87 = v88;
    if (v19)
    {
      goto LABEL_169;
    }
  }

  v120 = [v134 keyEnumerator];
  while (1)
  {

    v127 = [v120 nextObject];
    if (!v127)
    {
      break;
    }

    if ([@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v127])
    {
      v92 = [v134 objectForKey:v127];
      v93 = [v133 objectForKey:v127];
      v19 = [(VCPVideoInterpolator *)self appendOutput:v92 toWriterInput:v93 withUpdatedTimeFrom:self->_updatedLinearThumbnailPTSList withOriginalTimeFrom:self->_originalLinearThumbnailPTSList];

LABEL_162:
      if (v19)
      {
        v88 = v127;
        goto LABEL_168;
      }
    }

    else if (([@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v127] & 1) == 0 && (objc_msgSend(@"com.apple.quicktime.video-map.smart-style-delta-map", "isEqualToString:", v127) & 1) == 0)
    {
      v94 = [v134 objectForKey:v127];
      v95 = [v133 objectForKey:v127];
      v19 = [(VCPVideoInterpolator *)self appendOutput:v94 toWriterInput:v95 withUpdatedTimeFrom:self->_updatedLearnedPTSList withOriginalTimeFrom:self->_originalLearnedPTSList];

      goto LABEL_162;
    }
  }

  v96 = dispatch_semaphore_create(0);
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __59__VCPVideoInterpolator_combineVideoSegmentsWithAssetWriter__block_invoke;
  v137[3] = &unk_1E834BDC0;
  v138 = v96;
  v88 = v96;
  [v13 finishWritingWithCompletionHandler:v137];
  dispatch_semaphore_wait(v88, 0xFFFFFFFFFFFFFFFFLL);

  v19 = 0;
LABEL_168:
  v127 = v120;
LABEL_169:

LABEL_139:
  v90 = v103;
LABEL_140:

  v50 = v106;
LABEL_141:

LABEL_142:
  v43 = v110;
LABEL_143:

  v40 = v115;
LABEL_144:

  v37 = v111;
LABEL_145:

  v34 = v121;
LABEL_146:

  v30 = v122;
LABEL_147:

LABEL_148:
LABEL_149:

  v23 = v124;
LABEL_150:

LABEL_151:
LABEL_152:

LABEL_153:
LABEL_154:

  return v19;
}

- (int)combineVideoSegmentsWithAVMutableComposition
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6988168];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_filePath];
  v96 = [v2 assetWithURL:v3];

  v90 = [(AVAssetTrack *)self->_originalTrack asset];
  v4 = [MEMORY[0x1E6988048] composition];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v100 = v4;
  v5 = [(AVAssetTrack *)self->_originalTrack asset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&duration, 0, 24);
  }

  CMTimeRangeMake(&v125, &start.start, &duration.start);
  v7 = [(AVAssetTrack *)self->_originalTrack asset];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v124 = 0;
  [v4 insertTimeRange:&v125 ofAsset:v7 atTime:&start error:&v124];
  v91 = v124;

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = [v90 tracks];
  v8 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  v9 = *MEMORY[0x1E6987608];
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = *v121;
  v11 = *MEMORY[0x1E69875B0];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v121 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v120 + 1) + 8 * i);
      v14 = [v100 trackWithTrackID:{objc_msgSend(v13, "trackID")}];
      v15 = [v13 metadata];
      [v14 setMetadata:v15];

      v16 = [v13 mediaType];
      if ([v16 isEqualToString:v9])
      {
      }

      else
      {
        v17 = [v13 mediaType];
        v18 = [v17 isEqualToString:v11];

        if (!v18)
        {
          goto LABEL_16;
        }
      }

      if (v13)
      {
        [v13 preferredTransform];
      }

      else
      {
        memset(&v119[1], 0, 48);
      }

      v125 = *&v119[1];
      [v14 setPreferredTransform:&v125];
LABEL_16:
    }

    v8 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  }

  while (v8);
LABEL_18:

  v19 = [v96 tracksWithMediaType:v9];
  v86 = [v19 objectAtIndexedSubscript:0];

  v20 = [v100 tracksWithMediaType:v9];
  v21 = [v20 objectAtIndexedSubscript:0];

  v84 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v96];
  v22 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v100];
  v23 = [(AVAssetTrack *)self->_originalTrack asset];
  v85 = [(VCPVideoInterpolator *)self findLivePhotoInfoOutput:v23];

  v24 = [(VCPVideoInterpolator *)self findStillImageTrack:v96];
  v25 = [(VCPVideoInterpolator *)self findStillImageTrack:v100];
  v82 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v96];
  obja = [(VCPVideoInterpolator *)self findStyleInfoTrack:v100];
  v26 = [(AVAssetTrack *)self->_originalTrack asset];
  v83 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v26];

  v80 = [(VCPVideoInterpolator *)self findDeltaTrack:v96];
  v87 = [(VCPVideoInterpolator *)self findDeltaTrack:v100];
  v27 = [(AVAssetTrack *)self->_originalTrack asset];
  v81 = [(VCPVideoInterpolator *)self findDeltaTrack:v27];

  v89 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.sky" forAsset:v100];
  v88 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.person" forAsset:v100];
  v28 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.skin" forAsset:v100];
  v29 = [(VCPVideoInterpolator *)self findLinearThumbnailTrack:v100];
  if (v21)
  {
    [v21 timeRange];
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  [v21 removeTimeRange:&v125];
  if (v22)
  {
    [v22 timeRange];
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  [v22 removeTimeRange:&v125];
  if (v25)
  {
    [v25 timeRange];
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  [v25 removeTimeRange:&v125];
  if (self->_enableStyle)
  {
    if (obja)
    {
      [obja timeRange];
    }

    else
    {
      memset(&v125, 0, sizeof(v125));
    }

    [obja removeTimeRange:&v125];
    if (v89)
    {
      [v89 timeRange];
    }

    else
    {
      memset(&v125, 0, sizeof(v125));
    }

    [v89 removeTimeRange:&v125];
    if (v88)
    {
      [v88 timeRange];
    }

    else
    {
      memset(&v125, 0, sizeof(v125));
    }

    [v88 removeTimeRange:&v125];
    if (v28)
    {
      [v28 timeRange];
    }

    else
    {
      memset(&v125, 0, sizeof(v125));
    }

    [v28 removeTimeRange:&v125];
    if (v29)
    {
      [v29 timeRange];
    }

    else
    {
      memset(&v125, 0, sizeof(v125));
    }

    [v29 removeTimeRange:&v125];
    if (self->_hasStyleApplied)
    {
      if (v87)
      {
        [v87 timeRange];
      }

      else
      {
        memset(&v125, 0, sizeof(v125));
      }

      [v87 removeTimeRange:&v125];
    }
  }

  if (v24)
  {
    [v24 timeRange];
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v119[0] = v91;
  v30 = [v25 insertTimeRange:&v125 ofTrack:v24 atTime:&start error:v119];
  v31 = v119[0];

  if (!v30)
  {
    goto LABEL_167;
  }

  p_startAdjustedPTS = &self->_startAdjustedPTS;
  *&v125.start.value = *&self->_startAdjustedPTS.value;
  v125.start.epoch = self->_startAdjustedPTS.epoch;
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  if (CMTimeCompare(&v125.start, &start.start) < 1)
  {
    goto LABEL_61;
  }

  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&duration.start.value = *&p_startAdjustedPTS->value;
  duration.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeRangeMake(&v125, &start.start, &duration.start);
  originalTrack = self->_originalTrack;
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v118 = v31;
  v34 = [v21 insertTimeRange:&v125 ofTrack:originalTrack atTime:&start error:&v118];
  v92 = v118;

  if (!v34)
  {
    goto LABEL_163;
  }

  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&duration.start.value = *&p_startAdjustedPTS->value;
  duration.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeRangeMake(&v125, &start.start, &duration.start);
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v117 = v92;
  v35 = [v22 insertTimeRange:&v125 ofTrack:v85 atTime:&start error:&v117];
  v31 = v117;

  if (!v35)
  {
    goto LABEL_167;
  }

  if (!self->_enableStyle)
  {
    goto LABEL_61;
  }

  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&duration.start.value = *&p_startAdjustedPTS->value;
  duration.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeRangeMake(&v125, &start.start, &duration.start);
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v116 = v31;
  v36 = [obja insertTimeRange:&v125 ofTrack:v83 atTime:&start error:&v116];
  v92 = v116;

  if (!v36)
  {
    goto LABEL_163;
  }

  if (self->_hasStyleApplied)
  {
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    *&duration.start.value = *&p_startAdjustedPTS->value;
    duration.start.epoch = self->_startAdjustedPTS.epoch;
    CMTimeRangeMake(&v125, &start.start, &duration.start);
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    v115 = v92;
    v37 = [v87 insertTimeRange:&v125 ofTrack:v81 atTime:&start error:&v115];
    v31 = v115;

    if (!v37)
    {
      goto LABEL_167;
    }
  }

  else
  {
    v31 = v92;
  }

LABEL_61:
  memset(&v125, 0, sizeof(v125));
  if (v21)
  {
    [v21 timeRange];
  }

  start = v125;
  if (v22)
  {
    [v22 timeRange];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  if (!CMTimeRangeEqual(&start, &duration))
  {
    goto LABEL_167;
  }

  if (self->_enableStyle)
  {
    start = v125;
    if (obja)
    {
      [obja timeRange];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    if (!CMTimeRangeEqual(&start, &duration))
    {
      goto LABEL_167;
    }

    if (self->_hasStyleApplied)
    {
      start = v125;
      if (v87)
      {
        [v87 timeRange];
      }

      else
      {
        memset(&duration, 0, sizeof(duration));
      }

      if (!CMTimeRangeEqual(&start, &duration))
      {
        goto LABEL_167;
      }
    }
  }

  *&v126.value = *&p_startAdjustedPTS->value;
  v126.epoch = self->_startAdjustedPTS.epoch;
  if (v86)
  {
    [v86 timeRange];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start.start = duration.duration;
  *&rhs.start.value = *&p_startAdjustedPTS->value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeSubtract(&v113, &start.start, &rhs.start);
  CMTimeRangeMake(&start, &v126, &v113);
  rhs.start = v125.duration;
  v112 = v31;
  v38 = [v21 insertTimeRange:&start ofTrack:v86 atTime:&rhs error:&v112];
  v92 = v112;

  if ((v38 & 1) == 0)
  {
    goto LABEL_163;
  }

  *&v126.value = *&p_startAdjustedPTS->value;
  v126.epoch = self->_startAdjustedPTS.epoch;
  if (v84)
  {
    [v84 timeRange];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start.start = duration.duration;
  *&rhs.start.value = *&p_startAdjustedPTS->value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeSubtract(&v113, &start.start, &rhs.start);
  CMTimeRangeMake(&start, &v126, &v113);
  rhs.start = v125.duration;
  v111 = v92;
  v39 = [v22 insertTimeRange:&start ofTrack:v84 atTime:&rhs error:&v111];
  v31 = v111;

  if ((v39 & 1) == 0)
  {
    goto LABEL_167;
  }

  if (!self->_enableStyle)
  {
    goto LABEL_96;
  }

  *&v126.value = *&p_startAdjustedPTS->value;
  v126.epoch = self->_startAdjustedPTS.epoch;
  if (v82)
  {
    [v82 timeRange];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start.start = duration.duration;
  *&rhs.start.value = *&p_startAdjustedPTS->value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeSubtract(&v113, &start.start, &rhs.start);
  CMTimeRangeMake(&start, &v126, &v113);
  rhs.start = v125.duration;
  v110 = v31;
  v40 = [obja insertTimeRange:&start ofTrack:v82 atTime:&rhs error:&v110];
  v92 = v110;

  if ((v40 & 1) == 0)
  {
    goto LABEL_163;
  }

  if (!self->_hasStyleApplied)
  {
    v31 = v92;
    goto LABEL_96;
  }

  *&v126.value = *&p_startAdjustedPTS->value;
  v126.epoch = self->_startAdjustedPTS.epoch;
  if (v80)
  {
    v41 = v87;
    [v80 timeRange];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
    v41 = v87;
  }

  start.start = duration.duration;
  *&rhs.start.value = *&p_startAdjustedPTS->value;
  rhs.start.epoch = self->_startAdjustedPTS.epoch;
  CMTimeSubtract(&v113, &start.start, &rhs.start);
  CMTimeRangeMake(&start, &v126, &v113);
  rhs.start = v125.duration;
  v109 = v92;
  v42 = [v41 insertTimeRange:&start ofTrack:v80 atTime:&rhs error:&v109];
  v31 = v109;

  if ((v42 & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_96:
  memset(&start, 0, sizeof(start));
  if (v21)
  {
    [v21 timeRange];
  }

  if (!self->_enableStyle)
  {
LABEL_120:
    duration = start;
    if (v22)
    {
      [v22 timeRange];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    if (!CMTimeRangeEqual(&duration, &rhs))
    {
      goto LABEL_167;
    }

    v51 = self;
    if (self->_enableStyle)
    {
      duration = start;
      if (obja)
      {
        [obja timeRange];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      if (!CMTimeRangeEqual(&duration, &rhs))
      {
        goto LABEL_167;
      }

      v51 = self;
      if (self->_hasStyleApplied)
      {
        duration = start;
        if (v87)
        {
          [v87 timeRange];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        v52 = CMTimeRangeEqual(&duration, &rhs);
        v51 = self;
        if (!v52)
        {
          goto LABEL_167;
        }
      }
    }

    p_endAdjustedPTS = &v51->_endAdjustedPTS;
    *&duration.start.value = *&v51->_endAdjustedPTS.value;
    duration.start.epoch = v51->_endAdjustedPTS.epoch;
    *&rhs.start.value = *MEMORY[0x1E6960C88];
    rhs.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    if ((CMTimeCompare(&duration.start, &rhs.start) & 0x80000000) == 0)
    {
      goto LABEL_135;
    }

    v113 = *p_endAdjustedPTS;
    v63 = self->_originalTrack;
    if (v63)
    {
      [(AVAssetTrack *)v63 timeRange];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    duration.start = rhs.duration;
    v126 = *p_endAdjustedPTS;
    CMTimeSubtract(&v107, &duration.start, &v126);
    CMTimeRangeMake(&duration, &v113, &v107);
    v64 = self->_originalTrack;
    v126 = start.duration;
    v106 = v31;
    v65 = [v21 insertTimeRange:&duration ofTrack:v64 atTime:&v126 error:&v106];
    v92 = v106;

    if (v65)
    {
      v113 = *p_endAdjustedPTS;
      if (v85)
      {
        [v85 timeRange];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      duration.start = rhs.duration;
      v126 = *p_endAdjustedPTS;
      CMTimeSubtract(&v107, &duration.start, &v126);
      CMTimeRangeMake(&duration, &v113, &v107);
      v126 = start.duration;
      v105 = v92;
      v66 = [v22 insertTimeRange:&duration ofTrack:v85 atTime:&v126 error:&v105];
      v31 = v105;

      if ((v66 & 1) == 0)
      {
        goto LABEL_167;
      }

      if (!self->_enableStyle)
      {
        goto LABEL_135;
      }

      v113 = *p_endAdjustedPTS;
      v78 = [(AVAssetTrack *)self->_originalTrack asset];
      v67 = [(VCPVideoInterpolator *)self findStyleInfoTrack:v78];
      v68 = v67;
      if (v67)
      {
        [v67 timeRange];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      duration.start = rhs.duration;
      v126 = *p_endAdjustedPTS;
      CMTimeSubtract(&v107, &duration.start, &v126);
      CMTimeRangeMake(&duration, &v113, &v107);
      v126 = start.duration;
      v104 = v31;
      v69 = [obja insertTimeRange:&duration ofTrack:v83 atTime:&v126 error:&v104];
      v92 = v104;

      if (v69)
      {
        if (self->_hasStyleApplied)
        {
          v113 = *p_endAdjustedPTS;
          v76 = [(AVAssetTrack *)self->_originalTrack asset];
          v79 = [(VCPVideoInterpolator *)self findDeltaTrack:v76];
          if (v79)
          {
            [v79 timeRange];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          duration.start = rhs.duration;
          v126 = *p_endAdjustedPTS;
          CMTimeSubtract(&v107, &duration.start, &v126);
          CMTimeRangeMake(&duration, &v113, &v107);
          v70 = [(AVAssetTrack *)self->_originalTrack asset];
          v71 = [(VCPVideoInterpolator *)self findDeltaTrack:v70];
          v126 = start.duration;
          v103 = v92;
          v72 = [v87 insertTimeRange:&duration ofTrack:v71 atTime:&v126 error:&v103];
          v31 = v103;

          if ((v72 & 1) == 0)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v31 = v92;
        }

LABEL_135:
        v54 = objc_alloc(MEMORY[0x1E6987E60]);
        v55 = [v54 initWithAsset:v100 presetName:*MEMORY[0x1E6987338]];
        v56 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedCompositionFilePath];
        [v55 setOutputURL:v56];

        [v55 setOutputFileType:*MEMORY[0x1E69874C0]];
        v57 = [v96 metadata];
        [v55 setMetadata:v57];

        v95 = [MEMORY[0x1E696AC08] defaultManager];
        v58 = [v55 outputURL];
        v94 = [v58 path];

        if (![v95 fileExistsAtPath:v94])
        {
          goto LABEL_141;
        }

        if (MediaAnalysisLogLevel() >= 5)
        {
          v59 = MEMORY[0x1E69E9C10];
          v60 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(duration.start.value) = 138412290;
            *(&duration.start.value + 4) = v94;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing existing file at path %@", &duration, 0xCu);
          }
        }

        if (![v95 removeItemAtPath:v94 error:0])
        {
          v47 = -18;
        }

        else
        {
LABEL_141:
          v61 = dispatch_semaphore_create(0);
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __68__VCPVideoInterpolator_combineVideoSegmentsWithAVMutableComposition__block_invoke;
          v101[3] = &unk_1E834BDC0;
          v62 = v61;
          v102 = v62;
          [v55 exportAsynchronouslyWithCompletionHandler:v101];
          dispatch_semaphore_wait(v62, 0xFFFFFFFFFFFFFFFFLL);
          if ([v95 removeItemAtPath:self->_filePath error:0])
          {
            v47 = 0;
          }

          else
          {
            v47 = -18;
          }
        }

        goto LABEL_168;
      }
    }

LABEL_163:
    v47 = -18;
    v31 = v92;
    goto LABEL_168;
  }

  duration.start = start.duration;
  [(VCPVideoInterpolator *)self finishVideoSamplePTSUpdateWithVideoDurationGeneral:&duration];
  v43 = [(NSArray *)self->_originalVideoPTSList count];
  if (v43 != [(NSMutableArray *)self->_updatedVideoPTSList count])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(duration.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistent number of video samples after update", &duration, 2u);
    }

    goto LABEL_167;
  }

  [(VCPVideoInterpolator *)self updateSamplesPTSForListGeneral:self->_originalLearnedPTSList toList:self->_updatedLearnedPTSList];
  [(VCPVideoInterpolator *)self updateSamplesPTSForListGeneral:self->_originalLinearThumbnailPTSList toList:self->_updatedLinearThumbnailPTSList];
  v44 = [(NSArray *)self->_originalVideoPTSList count];
  if (v44 != [(NSMutableArray *)self->_updatedVideoPTSList count]|| (v45 = [(NSArray *)self->_originalLearnedPTSList count], v45 != [(NSMutableArray *)self->_updatedLearnedPTSList count]) || (v46 = [(NSArray *)self->_originalLinearThumbnailPTSList count], v46 != [(NSMutableArray *)self->_updatedLinearThumbnailPTSList count]))
  {
LABEL_167:
    v47 = -18;
    goto LABEL_168;
  }

  v47 = [(VCPVideoInterpolator *)self createAuxMovie];
  if (!v47)
  {
    v48 = MEMORY[0x1E6988168];
    v49 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_auxFilePath];
    v74 = [v48 assetWithURL:v49];

    v93 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.sky" forAsset:v74];
    v77 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.person" forAsset:v74];
    v75 = [(VCPVideoInterpolator *)self findTrack:@"com.apple.quicktime.video-map.skin" forAsset:v74];
    v50 = [(VCPVideoInterpolator *)self findLinearThumbnailTrack:v74];
    if (v93)
    {
      [v93 timeRange];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    *&rhs.start.value = *MEMORY[0x1E6960CC0];
    rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    [v89 insertTimeRange:&duration ofTrack:v93 atTime:&rhs error:0];
    if (v77)
    {
      [v77 timeRange];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    *&rhs.start.value = *MEMORY[0x1E6960CC0];
    rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    [v88 insertTimeRange:&duration ofTrack:v77 atTime:&rhs error:0];
    if (v75)
    {
      [v75 timeRange];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    *&rhs.start.value = *MEMORY[0x1E6960CC0];
    rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    [v28 insertTimeRange:&duration ofTrack:v75 atTime:&rhs error:0];
    if (v50)
    {
      [v50 timeRange];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    *&rhs.start.value = *MEMORY[0x1E6960CC0];
    rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    [v29 insertTimeRange:&duration ofTrack:v50 atTime:&rhs error:0];

    goto LABEL_120;
  }

LABEL_168:

  return v47;
}

- (int)updateCombinedMovie
{
  v67 = *MEMORY[0x1E69E9840];
  v40 = [(AVAssetTrack *)self->_originalTrack asset];
  v2 = MEMORY[0x1E6988168];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedCompositionFilePath];
  v41 = [v2 assetWithURL:v3];

  v46 = [objc_alloc(MEMORY[0x1E6988058]) initWithSettingsFromMovie:0 options:0 error:0];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v2) = [v4 fileExistsAtPath:self->_combinedFilePath];

  if (v2)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:self->_combinedFilePath error:0];
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 createFileAtPath:self->_combinedFilePath contents:0 attributes:0];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E6987FA8]);
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
    v10 = [v8 initWithURL:v9 options:0];
    [v46 setDefaultMediaDataStorage:v10];

    v11 = [v41 metadata];
    [v46 setMetadata:v11];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = [v41 tracks];
    v13 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v13)
    {
      v14 = *v63;
      v15 = *MEMORY[0x1E6987608];
      v45 = *MEMORY[0x1E69875B0];
      v43 = *MEMORY[0x1E69875A0];
      v42 = *MEMORY[0x1E69875D0];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v63 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v62 + 1) + 8 * i);
          v18 = [v17 mediaType];
          v19 = v12;
          v20 = [v18 isEqualToString:v15];

          if (v20)
          {
            v21 = [v46 addMutableTrackWithMediaType:v15 copySettingsFromTrack:v17 options:0];
            if (v17)
            {
              [v17 timeRange];
            }

            else
            {
              v60 = 0u;
              v61 = 0u;
              *buf = 0u;
            }

            v57 = *MEMORY[0x1E6960CC0];
            v58 = *(MEMORY[0x1E6960CC0] + 16);
            v56 = 0;
            [v21 insertTimeRange:buf ofTrack:v17 atTime:&v57 copySampleData:1 error:&v56];
            v27 = v56;
            v28 = [(AVAssetTrack *)self->_originalTrack metadata];
            [v21 setMetadata:v28];

            if (v17)
            {
              [v17 preferredTransform];
            }

            else
            {
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
            }

            *buf = v53;
            v60 = v54;
            v61 = v55;
            [v21 setPreferredTransform:buf];
            [v17 naturalSize];
            [v21 setNaturalSize:?];
          }

          else
          {
            v22 = [v17 mediaType];
            v23 = [v22 isEqualToString:v45];

            if (v23)
            {
              v21 = [v46 addMutableTrackWithMediaType:v45 copySettingsFromTrack:v17 options:0];
              if (v17)
              {
                [v17 timeRange];
              }

              else
              {
                v60 = 0u;
                v61 = 0u;
                *buf = 0u;
              }

              v57 = *MEMORY[0x1E6960CC0];
              v58 = *(MEMORY[0x1E6960CC0] + 16);
              v52 = 0;
              [v21 insertTimeRange:buf ofTrack:v17 atTime:&v57 copySampleData:1 error:&v52];
              v27 = v52;
              v32 = [v17 metadata];
              [v21 setMetadata:v32];

              if (v17)
              {
                [v17 preferredTransform];
              }

              else
              {
                v50 = 0u;
                v51 = 0u;
                v49 = 0u;
              }

              *buf = v49;
              v60 = v50;
              v61 = v51;
              [v21 setPreferredTransform:buf];
              [v17 naturalSize];
              [v21 setNaturalSize:?];
            }

            else
            {
              v24 = [v17 mediaType];
              v25 = [v24 isEqualToString:v43];

              if (v25)
              {
                v21 = [v46 addMutableTrackWithMediaType:v43 copySettingsFromTrack:v17 options:0];
                v26 = [v17 metadata];
                [v21 setMetadata:v26];

                if (v17)
                {
                  [v17 timeRange];
                }

                else
                {
                  v60 = 0u;
                  v61 = 0u;
                  *buf = 0u;
                }

                v57 = *MEMORY[0x1E6960CC0];
                v58 = *(MEMORY[0x1E6960CC0] + 16);
                v48 = 0;
                [v21 insertTimeRange:buf ofTrack:v17 atTime:&v57 copySampleData:1 error:&v48];
                v33 = v48;
              }

              else
              {
                v29 = [v17 mediaType];
                v30 = [v29 isEqualToString:v42];

                if (!v30)
                {
                  goto LABEL_37;
                }

                v21 = [v46 addMutableTrackWithMediaType:v42 copySettingsFromTrack:v17 options:0];
                v31 = [v17 metadata];
                [v21 setMetadata:v31];

                if (v17)
                {
                  [v17 timeRange];
                }

                else
                {
                  v60 = 0u;
                  v61 = 0u;
                  *buf = 0u;
                }

                v57 = *MEMORY[0x1E6960CC0];
                v58 = *(MEMORY[0x1E6960CC0] + 16);
                v47 = 0;
                [v21 insertTimeRange:buf ofTrack:v17 atTime:&v57 copySampleData:1 error:&v47];
                v33 = v47;
              }

              v27 = v33;
            }
          }

LABEL_37:
          v12 = v19;
        }

        v13 = [v19 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v13);
    }

    v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_combinedFilePath];
    v35 = [v46 writeMovieHeaderToURL:v34 fileType:*MEMORY[0x1E69874C0] options:0 error:0];

    if (v35)
    {
      v36 = [MEMORY[0x1E696AC08] defaultManager];
      v37 = [v36 removeItemAtPath:self->_combinedCompositionFilePath error:0];

      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = -18;
      }
    }

    else
    {
      v38 = -20;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating final movie file", buf, 2u);
    }

    v38 = -18;
  }

  return v38;
}

- (int)createAuxMovie
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:self->_auxFilePath];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtPath:self->_auxFilePath error:0];
  }

  v48 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v50 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v45 = [(AVAssetTrack *)self->_originalTrack asset];
  v5 = MEMORY[0x1E6987ED8];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_auxFilePath];
  v7 = *MEMORY[0x1E69874C0];
  v63 = 0;
  v49 = [v5 assetWriterWithURL:v6 fileType:v7 error:&v63];
  v44 = v63;

  if (!v49)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = [v44 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v36;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset writer (%@)", &buf, 0xCu);
    }

    v33 = -18;
    goto LABEL_48;
  }

  v52 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v45 error:0];
  v8 = [(AVAssetTrack *)self->_originalTrack asset];
  v47 = *MEMORY[0x1E69875B0];
  v9 = [v8 tracksWithMediaType:?];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v10)
  {
LABEL_26:

    if (([v52 startReading] & 1) == 0)
    {
      v33 = -19;
      goto LABEL_47;
    }

    [v49 startWriting];
    buf = *MEMORY[0x1E6960CC0];
    v65 = *(MEMORY[0x1E6960CC0] + 16);
    [v49 startSessionAtSourceTime:&buf];
    v29 = [v50 keyEnumerator];
    while (1)
    {
      v30 = [v29 nextObject];
      if (!v30)
      {
        v38 = dispatch_semaphore_create(0);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __38__VCPVideoInterpolator_createAuxMovie__block_invoke;
        v53[3] = &unk_1E834BDC0;
        v54 = v38;
        v30 = v38;
        [v49 finishWritingWithCompletionHandler:v53];
        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        v33 = 0;
        v18 = v54;
        goto LABEL_45;
      }

      if ([@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v30])
      {
        v31 = [v50 objectForKey:v30];
        v32 = [v48 objectForKey:v30];
        v33 = [(VCPVideoInterpolator *)self appendOutput:v31 toWriterInput:v32 withUpdatedTimeFrom:self->_updatedLinearThumbnailPTSList withOriginalTimeFrom:self->_originalLinearThumbnailPTSList];
      }

      else
      {
        if ([@"com.apple.quicktime.video-map.smart-style-linear-thumbnail" isEqualToString:v30] & 1) != 0 || (objc_msgSend(@"com.apple.quicktime.video-map.smart-style-delta-map", "isEqualToString:", v30))
        {
          goto LABEL_35;
        }

        v34 = [v50 objectForKey:v30];
        v35 = [v48 objectForKey:v30];
        v33 = [(VCPVideoInterpolator *)self appendOutput:v34 toWriterInput:v35 withUpdatedTimeFrom:self->_updatedLearnedPTSList withOriginalTimeFrom:self->_originalLearnedPTSList];
      }

      if (v33)
      {
        goto LABEL_46;
      }

LABEL_35:
    }
  }

  v43 = *v60;
  v41 = *MEMORY[0x1E6987708];
  v40 = *MEMORY[0x1E6987908];
  v39 = *MEMORY[0x1E6987858];
LABEL_6:
  v11 = 0;
  v42 = v10;
  while (1)
  {
    if (*v60 != v43)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v59 + 1) + 8 * v11);
    v13 = [v12 formatDescriptions];
    v14 = v13 == 0;

    if (v14)
    {
      goto LABEL_24;
    }

    v15 = MEMORY[0x1E6987FE0];
    v16 = [v12 metadataForFormat:v41];
    v17 = [v15 metadataItemsFromArray:v16 withKey:v40 keySpace:v39];

    if (v17)
    {
      break;
    }

LABEL_23:

LABEL_24:
    if (++v11 == v42)
    {
      v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (!v19)
  {
LABEL_22:

    goto LABEL_23;
  }

  v20 = *v56;
  while (2)
  {
    v21 = 0;
LABEL_14:
    if (*v56 != v20)
    {
      objc_enumerationMutation(v18);
    }

    v22 = *(*(&v55 + 1) + 8 * v21);
    v23 = [v22 stringValue];
    v24 = [@"com.apple.quicktime.video-map.smart-style-delta-map" isEqualToString:v23];

    if (v24)
    {
LABEL_20:
      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (!v19)
        {
          goto LABEL_22;
        }

        continue;
      }

      goto LABEL_14;
    }

    break;
  }

  v25 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v12 outputSettings:0];
  if (([v52 canAddOutput:v25] & 1) == 0)
  {
    goto LABEL_44;
  }

  [v52 addOutput:v25];
  v26 = [v22 stringValue];
  [v50 setObject:v25 forKey:v26];

  v27 = [(VCPVideoInterpolator *)self addInputMediaType:v47 toWriter:v49 forTrack:v12];
  if (v27)
  {
    [v27 setMarksOutputTrackAsEnabled:{objc_msgSend(v12, "isEnabled")}];
    v28 = [v22 stringValue];
    [v48 setObject:v27 forKey:v28];

    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to add AVAssetWriterInput", &buf, 2u);
  }

LABEL_44:

  v33 = -18;
  v30 = v18;
  v29 = obj;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
  return v33;
}

- (id)addInputMediaType:(id)a3 toWriter:(id)a4 forTrack:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x1E69875B0] == v7)
  {
    v13 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v7 outputSettings:0 sourceFormatHint:0];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E6987EE0]);
    v11 = [v9 formatDescriptions];
    v12 = [v11 firstObject];
    v13 = [v10 initWithMediaType:v7 outputSettings:0 sourceFormatHint:v12];

    if (v9)
    {
LABEL_3:
      [v9 preferredTransform];
      goto LABEL_6;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
LABEL_6:
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  [v13 setTransform:v16];
  v14 = [v9 metadata];
  [v13 setMetadata:v14];

  if ([v8 canAddInput:v13])
  {
    [v8 addInput:v13];
  }

  return v13;
}

- (int)appendOutput:(id)a3 toWriterInput:(id)a4 startTimeStamp:(id *)a5 endTimeStamp:(id *)a6 offset:(id *)a7 duration:(id *)a8
{
  v13 = a3;
  v19 = a4;
  v14 = MEMORY[0x1E6960C70];
  while (1)
  {
    v15 = [v13 copyNextSampleBuffer];
    v16 = v15;
    if (!v15)
    {
      break;
    }

    if (CMSampleBufferGetNumSamples(v15))
    {
      memset(&v26, 0, sizeof(v26));
      CMSampleBufferGetDecodeTimeStamp(&v26, v16);
      memset(&v25, 0, sizeof(v25));
      CMSampleBufferGetPresentationTimeStamp(&v25, v16);
      memset(&v24, 0, sizeof(v24));
      CMSampleBufferGetDuration(&v24, v16);
      time1.duration = v26;
      time2 = *a6;
      if ((CMTimeCompare(&time1.duration, &time2) & 0x80000000) == 0)
      {
        CFRelease(v16);
        break;
      }

      time1.duration = v26;
      time2 = *a5;
      if (CMTimeCompare(&time1.duration, &time2) < 0)
      {
        v17 = v16;
      }

      else
      {
        sampleBufferOut = 0;
        memset(&v22, 0, sizeof(v22));
        time1.duration = v26;
        time2 = *a7;
        CMTimeAdd(&v22, &time1.duration, &time2);
        memset(&v21, 0, sizeof(v21));
        time1.duration = v25;
        time2 = *a7;
        CMTimeAdd(&v21, &time1.duration, &time2);
        *&time1.duration.value = *v14;
        time1.duration.epoch = *(v14 + 16);
        time1.presentationTimeStamp = v21;
        time1.decodeTimeStamp = v22;
        CMSampleBufferCreateCopyWithNewTiming(0, v16, 1, &time1, &sampleBufferOut);
        v17 = sampleBufferOut;
        CFRelease(v16);
        lhs = *a8;
        rhs = v24;
        CMTimeAdd(&time2, &lhs, &rhs);
        *a8 = time2;
        if (!v17 || ([v19 appendSampleBuffer:v17] & 1) == 0)
        {
          break;
        }
      }

      v16 = v17;
    }

    CFRelease(v16);
  }

  return 0;
}

- (int)appendOutput:(id)a3 toWriterInput:(id)a4 withUpdatedTimeFrom:(id)a5 withOriginalTimeFrom:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  v12 = MEMORY[0x1E6960C70];
  while (1)
  {
    v13 = [v8 copyNextSampleBuffer];
    v14 = v13;
    if (!v13)
    {
LABEL_14:
      if (v10)
      {
LABEL_15:
        if (v11 != [v10 count])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22.duration.value) = 0;
            v19 = MEMORY[0x1E69E9C10];
            v20 = "Mismatch in number of samples";
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

      v18 = 0;
      goto LABEL_28;
    }

    if (!CMSampleBufferGetNumSamples(v13))
    {
      v17 = v14;
      goto LABEL_13;
    }

    if (v10)
    {
      break;
    }

    v17 = v14;
LABEL_11:
      ;
    }

    if (![v9 appendSampleBuffer:v17])
    {
      goto LABEL_14;
    }

LABEL_13:
    CFRelease(v17);
  }

  if (v11 < [v10 count])
  {
    memset(&v26, 0, sizeof(v26));
    CMSampleBufferGetDecodeTimeStamp(&v26, v14);
    memset(&v25, 0, sizeof(v25));
    CMSampleBufferGetPresentationTimeStamp(&v25, v14);
    v22.duration = v26;
    time2 = v25;
    if (CMTimeCompare(&v22.duration, &time2))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22.duration.value) = 0;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "Sample has different decode and presentation timestamps";
LABEL_26:
        _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_ERROR, v20, &v22, 2u);
      }

      goto LABEL_27;
    }

    sampleBufferOut = 0;
    memset(&time2, 0, sizeof(time2));
    v15 = [v10 objectAtIndexedSubscript:v11];
    CMTimeMakeFromDictionary(&time2, v15);

    memset(&v23, 0, sizeof(v23));
    v16 = [v10 objectAtIndexedSubscript:v11];
    CMTimeMakeFromDictionary(&v23, v16);

    *&v22.duration.value = *v12;
    v22.duration.epoch = *(v12 + 16);
    v22.presentationTimeStamp = v23;
    v22.decodeTimeStamp = time2;
    CMSampleBufferCreateCopyWithNewTiming(0, v14, 1, &v22, &sampleBufferOut);
    v17 = sampleBufferOut;
    CFRelease(v14);
    ++v11;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22.duration.value) = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Mismatch in number of samples";
    goto LABEL_26;
  }

LABEL_27:
  v18 = -18;
LABEL_28:

  return v18;
}

- (int)checkFirstDisplayTimeForTrack:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E6987E78]);
  v5 = [(AVAssetTrack *)self->_originalTrack asset];
  v6 = [v4 initWithAsset:v5 error:0];

  v7 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:self->_originalTrack outputSettings:0];
  [v6 addOutput:v7];
  if ([v6 startReading])
  {
    v8 = MEMORY[0x1E6960CC0];
    while (1)
    {
      v9 = [v7 copyNextSampleBuffer];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      if (CMSampleBufferGetNumSamples(v9))
      {
        memset(&v12, 0, sizeof(v12));
        CMSampleBufferGetOutputPresentationTimeStamp(&v12, v10);
        time1 = v12;
        time2 = *v8;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(time1.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video contains multiple Edits", &time1, 2u);
          }

          CFRelease(v10);
          LODWORD(v10) = -18;
          break;
        }
      }

      CFRelease(v10);
    }
  }

  else
  {
    LODWORD(v10) = -19;
  }

  return v10;
}

- (int)checkDecodeIssuesForTrack:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DEC8] array];
  v6 = [v4 asset];
  v7 = [(VCPVideoInterpolator *)self findDeltaTrack:v6];

  if (v7 == v4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963440];
    v26[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2016686640];
    v26[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704422];
    v25[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704438];
    v25[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  }

  v11 = v10;

  v23 = *MEMORY[0x1E6966130];
  v24 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v13 = [VCPVideoTrackStandardDecoder alloc];
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
  }

  v14 = [(VCPVideoTrackStandardDecoder *)v13 initWithTrack:v4 timerange:buf withSettings:v12 applyTransform:0];
  while (1)
  {
    v15 = [(VCPVideoTrackStandardDecoder *)v14 copyNextSampleBuffer];
    if (!v15)
    {
      break;
    }

    CFRelease(v15);
  }

  v16 = [v4 segments];
  v17 = [v16 count] == 1;

  if (v17)
  {
    if ([(VCPVideoTrackStandardDecoder *)v14 status]== 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ contains multiple edits", buf, 0xCu);
    }

    v18 = -18;
  }

  return v18;
}

- (id).cxx_construct
{
  *(self + 34) = 0;
  *(self + 35) = 0;
  return self;
}

@end