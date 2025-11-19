@interface VCPSettlingEffectAnalyzer
+ ($AFC8CF76A46F37F9FB23C20884F4FD99)getSettlingEffectTimeRange:(SEL)a3 withOptions:(id)a4;
+ (id)getFramePTSList:(id)a3 before:(id *)a4 withOptions:(id)a5;
+ (id)getRetimingCurve;
- (CGSize)getCleanApertureFrameSize:(id)a3;
- (CGSize)getFrameSize:(id)a3;
- (VCPSettlingEffectAnalyzer)initWithTimestamps:(id)a3 andTrack:(id)a4 andRecipe:(id)a5 withOptions:(id)a6;
- (__CVBuffer)resamplePixelBuffer:(__CVBuffer *)a3 cleanApertureRect:(CGRect)a4 cropRect:(CGRect)a5 homographyArray:(id)a6;
- (__CVBuffer)scaleStillImage:(__CVBuffer *)a3;
- (id)findLivePhotoInfoOutput:(id)a3;
- (id)getPixelBasedHomographies:(id)a3 withCleanApertureSize:(CGSize)a4;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)createLivePhotoInfoSample:(opaqueCMSampleBuffer *)a3 withTimestamp:(id *)a4 isInterpolated:(BOOL)a5 updatedSample:(opaqueCMSampleBuffer *)a6;
- (int)finishAnalysisPass:(id *)a3 withStillImageBuffer:(__CVBuffer *)a4;
- (int)setupLivePhotoInfoOutput:(id)a3;
- (void)dealloc;
@end

@implementation VCPSettlingEffectAnalyzer

- (VCPSettlingEffectAnalyzer)initWithTimestamps:(id)a3 andTrack:(id)a4 andRecipe:(id)a5 withOptions:(id)a6
{
  v130 = *MEMORY[0x1E69E9840];
  v111 = a3;
  v10 = a4;
  v112 = a5;
  v113 = a6;
  v123.receiver = self;
  v123.super_class = VCPSettlingEffectAnalyzer;
  v11 = [(VCPSettlingEffectAnalyzer *)&v123 init];
  if (v11)
  {
    v110 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v110 fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"])
    {
      v109 = 0;
    }

    else
    {
      v122 = 0;
      v13 = [v110 createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&v122];
      v109 = v122;
      if ((v13 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v38 = [v109 description];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v38;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create resource file cache directory (%@)", &buf, 0xCu);
        }

        v12 = 0;
        goto LABEL_44;
      }
    }

    v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v107 = [v111 objectForKeyedSubscript:@"MetaAdjusterResults"];
    [v11 getFrameSize:v10];
    v15 = v14;
    v17 = v16;
    [v11 getCleanApertureFrameSize:v10];
    v19 = v18;
    v21 = v20;
    v22 = [MEMORY[0x1E699BE48] getUsageFromSizeWidth:v15 height:v17];
    if (!v112)
    {
      goto LABEL_42;
    }

    v23 = v22;
    if (v22 == -1)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video resolution not supported", &buf, 2u);
      }

      goto LABEL_42;
    }

    v11[360] = 0;
    v24 = [v113 objectForKeyedSubscript:@"UserInitiatedMode"];
    v11[320] = [v24 BOOLValue];

    v11[321] = 0;
    v11[322] = 0;
    v11[323] = 0;
    v11[324] = 0;
    *(v11 + 82) = 0;
    v25 = [MEMORY[0x1E695DF20] dictionary];
    v26 = *(v11 + 42);
    *(v11 + 42) = v25;

    [v10 nominalFrameRate];
    if (v27 >= 20.0)
    {
      goto LABEL_14;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Asset has low frame rate", &buf, 2u);
    }

    v11[321] = 1;
    if (+[VCPSettlingEffectAnalyzer disableVideoQualityGating]|| (v11[320] & 1) != 0)
    {
LABEL_14:
      v11[361] = 0;
      objc_storeStrong(v11 + 21, a4);
      v28 = *(v11 + 2);
      *(v11 + 2) = 0;

      v29 = MEMORY[0x1E696AEC0];
      v30 = [MEMORY[0x1E696AFB0] UUID];
      v31 = [v30 UUIDString];
      v32 = [v29 stringWithFormat:@"%@frc-tmp-%@.MOV", @"/tmp/com.apple.mediaanalysisd/", v31];
      v33 = *(v11 + 18);
      *(v11 + 18) = v32;

      v34 = [v113 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
      v35 = v34 == 0;

      if (v35)
      {
        v39 = [v10 asset];
        v40 = v39;
        if (v39)
        {
          [v39 vcp_livePhotoStillDisplayTime];
        }

        else
        {
          memset(&buf, 0, 24);
        }

        epoch = buf.start.epoch;
        *(v11 + 6) = *&buf.start.value;
        *(v11 + 14) = epoch;
      }

      else
      {
        v36 = [v113 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
        CMTimeMakeFromDictionary(&buf.start, v36);
        v37 = buf.start.epoch;
        *(v11 + 6) = *&buf.start.value;
        *(v11 + 14) = v37;
      }

      v42 = *(v11 + 6);
      buf.start.epoch = *(v11 + 14);
      *&buf.start.value = v42;
      v43 = [VCPSettlingEffectAnalyzer getFramePTSList:v10 before:&buf withOptions:v113];
      v44 = *(v11 + 23);
      *(v11 + 23) = v43;

      if (![*(v11 + 23) count])
      {
        goto LABEL_42;
      }

      v45 = [v113 objectForKeyedSubscript:@"CustomRetimingCurve"];
      if (v45)
      {
        [v113 objectForKeyedSubscript:@"CustomRetimingCurve"];
      }

      else
      {
        +[VCPSettlingEffectAnalyzer getRetimingCurve];
      }
      v46 = ;
      objc_storeStrong(v11 + 24, v46);

      v47 = [*(v11 + 23) count];
      if (v47 > [*(v11 + 24) count])
      {
        *(v11 + 5) = 0;
        v48 = [*(v11 + 23) objectAtIndexedSubscript:{objc_msgSend(*(v11 + 23), "count") - objc_msgSend(*(v11 + 24), "count")}];
        CMTimeMakeFromDictionary(&buf.start, v48);
        v49 = (v11 + 48);
        v50 = buf.start.epoch;
        *(v11 + 3) = *&buf.start.value;
        *(v11 + 8) = v50;

        CMTimeMakeWithSeconds(&buf.start, 0.0333333333, [v10 naturalTimeScale]);
        v51 = buf.start.epoch;
        *(v11 + 120) = *&buf.start.value;
        *(v11 + 17) = v51;
        v52 = objc_alloc_init(MEMORY[0x1E699BE48]);
        v53 = *(v11 + 1);
        *(v11 + 1) = v52;

        if (*(v11 + 1))
        {
          [*(v11 + 1) setQualityMode:{+[VCPSettlingEffectAnalyzer getFRCQualityMode](VCPSettlingEffectAnalyzer, "getFRCQualityMode")}];
          if (v10)
          {
            [v10 preferredTransform];
          }

          else
          {
            memset(&v121, 0, sizeof(v121));
          }

          v54 = *(v11 + 1);
          buf = v121;
          [v54 setPreferredTransform:&buf];
          [*(v11 + 1) setUseCase:1];
          v55 = v11[320] ? 2 : 0;
          [*(v11 + 1) setGatingLevel:v55];
          if ([*(v11 + 1) startSessionWithUsage:v23] == -22000)
          {
            v56 = *v49;
            start.epoch = *(v11 + 8);
            *&start.value = v56;
            v57 = *(v11 + 6);
            lhs.epoch = *(v11 + 14);
            *&lhs.value = v57;
            v58 = *v49;
            rhs.epoch = *(v11 + 8);
            *&rhs.value = v58;
            CMTimeSubtract(&duration, &lhs, &rhs);
            CMTimeRangeMake(&buf, &start, &duration);
            v60 = *&buf.start.epoch;
            v59 = *&buf.duration.timescale;
            *(v11 + 364) = *&buf.start.value;
            *(v11 + 380) = v60;
            *(v11 + 396) = v59;
            v61 = objc_alloc(MEMORY[0x1E6987E78]);
            v62 = [v10 asset];
            v63 = [v61 initWithAsset:v62 error:0];
            v64 = *(v11 + 19);
            *(v11 + 19) = v63;

            v65 = *(v11 + 19);
            v66 = *(v11 + 364);
            v67 = *(v11 + 396);
            *&buf.start.epoch = *(v11 + 380);
            *&buf.duration.timescale = v67;
            *&buf.start.value = v66;
            [v65 setTimeRange:&buf];
            v68 = [v10 asset];
            LODWORD(v62) = [v11 setupLivePhotoInfoOutput:v68];

            if (!v62)
            {
              *(v11 + 22) = 0;
              v71 = [v11 getPixelBasedHomographies:v112 withCleanApertureSize:{v19, v21}];
              v72 = *(v11 + 25);
              *(v11 + 25) = v71;

              v73 = [*(v11 + 25) objectForKeyedSubscript:*MEMORY[0x1E69A8B58]];
              CGRectMakeWithDictionaryRepresentation(v73, v11 + 7);

              v74 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(*(v11 + 15))));
              v75.i64[0] = (v74.i32[0] & 0xFFFFFFFE);
              v75.i64[1] = (v74.i32[1] & 0xFFFFFFFE);
              *(v11 + 15) = vcvtq_f64_s64(v75);
              *(v11 + 16) = *(v11 + 15);
              v76 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(v11 + 18)];
              [v10 estimatedDataRate];
              v78 = [VCPMovieAssetWriter assetWriterWithURL:v76 andTrack:v10 andBitrate:v77 withOutputSize:0 enableAudio:*(v11 + 32), *(v11 + 33)];
              v79 = *(v11 + 3);
              *(v11 + 3) = v78;

              v80 = *(v11 + 3);
              if (v80)
              {
                if (![v80 dispatchEncoding])
                {
                  v81 = MEMORY[0x1E695F620];
                  v127[0] = *MEMORY[0x1E695F868];
                  v82 = [MEMORY[0x1E695DFB0] null];
                  v127[1] = *MEMORY[0x1E695F800];
                  v128[0] = v82;
                  v128[1] = MEMORY[0x1E695E118];
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
                  v84 = [v81 contextWithOptions:v83];
                  v85 = *(v11 + 26);
                  *(v11 + 26) = v84;

                  *(v11 + 27) = 0;
                  v86 = +[VCPSettlingEffectAnalyzer disableBurstFrameDropGating];
                  v69 = v11;
                  if (!v86)
                  {
                    v117 = 0u;
                    v118 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    obj = v107;
                    v87 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
                    if (v87)
                    {
                      v88 = *v116;
                      do
                      {
                        for (i = 0; i != v87; ++i)
                        {
                          if (*v116 != v88)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v90 = [*(*(&v115 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
                          v91 = objc_alloc_init(MEMORY[0x1E699BE58]);
                          v92 = [v90 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
                          CMTimeMakeFromDictionary(&v114, v92);
                          buf.start = v114;
                          [v91 setPresentationTimeStamp:&buf];

                          [v108 addObject:v91];
                        }

                        v87 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
                      }

                      while (v87);
                    }

                    v93 = objc_alloc_init(MEMORY[0x1E699BE40]);
                    v94 = *(v11 + 43);
                    *(v11 + 43) = v93;

                    v95 = [*(v11 + 43) detectFrameDropsFromFrameTimingList:v108];
                    v96 = *(v11 + 44);
                    *(v11 + 44) = v95;

                    v97 = 0;
                    v98 = MEMORY[0x1E69E9C10];
                    while (v97 < [*(v11 + 44) count])
                    {
                      v99 = *(v11 + 364);
                      v100 = *(v11 + 396);
                      *&buf.start.epoch = *(v11 + 380);
                      *&buf.duration.timescale = v100;
                      *&buf.start.value = v99;
                      v101 = [*(v11 + 44) objectAtIndexedSubscript:v97];
                      v102 = v101;
                      if (v101)
                      {
                        [v101 presentationTimeStamp];
                      }

                      else
                      {
                        memset(&lhs, 0, sizeof(lhs));
                      }

                      v103 = CMTimeRangeContainsTime(&buf, &lhs) == 0;

                      if (!v103)
                      {
                        v104 = [*(v11 + 44) objectAtIndexedSubscript:v97];
                        v105 = [v104 frameIsAtBigGap] > 3;

                        if (v105)
                        {
                          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf.start.value) = 0;
                            _os_log_impl(&dword_1C9B70000, v98, OS_LOG_TYPE_DEFAULT, "Asset has burst frame drops", &buf, 2u);
                          }

                          v11[321] = 1;
                          if ((v11[320] & 1) == 0)
                          {
                            goto LABEL_68;
                          }
                        }
                      }

                      ++v97;
                    }

                    goto LABEL_69;
                  }

LABEL_43:
                  v12 = v69;

LABEL_44:
                  goto LABEL_45;
                }
              }
            }
          }
        }

LABEL_42:
        v69 = 0;
        v11[360] = 1;
        goto LABEL_43;
      }

      v11[325] = 1;
      v11[360] = 1;
    }

    else
    {
LABEL_68:
      v11[360] = 1;
      *(v11 + 39) = 4;
    }

LABEL_69:
    v69 = v11;
    goto LABEL_43;
  }

  v12 = 0;
LABEL_45:

  return v12;
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

- (int)setupLivePhotoInfoOutput:(id)a3
{
  v4 = a3;
  v5 = [(VCPSettlingEffectAnalyzer *)self findLivePhotoInfoOutput:v4];
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

- (void)dealloc
{
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

  [(AVAssetReader *)self->_assetReader cancelReading];
  if (self->_processAborted)
  {
    frameInterpolator = self->_frameInterpolator;
    if (frameInterpolator)
    {
      if ([(FRCFrameInterpolator *)frameInterpolator state]== 2)
      {
        [(FRCFrameInterpolator *)self->_frameInterpolator endSession];
      }
    }
  }

  v5.receiver = self;
  v5.super_class = VCPSettlingEffectAnalyzer;
  [(VCPSettlingEffectAnalyzer *)&v5 dealloc];
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v129 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (self->_processAborted)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_100;
  }

  if (self->_previousFrame)
  {
    v10 = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer];
    if (v10)
    {
      v11 = v10;
      while (!CMSampleBufferGetNumSamples(v11))
      {
        CFRelease(v11);
        v11 = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer];
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      v32 = MEMORY[0x1E69A8B68];
      v33 = [(NSDictionary *)self->_pixelBasedHomogrphies objectForKeyedSubscript:*MEMORY[0x1E69A8B68]];
      v34 = [v33 objectAtIndexedSubscript:self->_frameIdx];

      memset(&v122, 0, sizeof(v122));
      v116 = v34;
      v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
      CMTimeMakeFromDictionary(&v122, v35);

      buf = *a4;
      time2 = v122;
      if (CMTimeCompare(&buf, &time2))
      {
        self->_metadataIntegrityFailure = 1;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          var0 = a4->var0;
          LODWORD(buf.value) = 134218240;
          *(&buf.value + 4) = var0;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = v122.value;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Inconsistent live photo info and video frame timestamp: %lld vs. %lld", &buf, 0x16u);
        }

        buf = *a4;
        time2 = v122;
        if (CMTimeCompare(&buf, &time2) >= 1 && (buf = *a4, time2 = v122, CMTimeSubtract(&rhs, &buf, &time2), CMTimeMake(&v121, 2, 600), buf = rhs, time2 = v121, CMTimeCompare(&buf, &time2) > 0) || (buf = *a4, time2 = v122, CMTimeCompare(&buf, &time2) < 0) && (buf = v122, time2 = *a4, CMTimeSubtract(&v120, &buf, &time2), CMTimeMake(&v119, 2, 600), buf = v120, time2 = v119, CMTimeCompare(&buf, &time2) > 0) || !+[VCPSettlingEffectAnalyzer disableMetadataIntegrityCheck])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            LOWORD(buf.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Live photo info and video frame timestamp difference exceeds threshold", &buf, 2u);
          }

          CFRelease(v11);
          self->_processAborted = 1;
          [(FRCFrameInterpolator *)self->_frameInterpolator endSession];
          [(VCPMovieAssetWriter *)self->_assetWriter cancel];

          goto LABEL_2;
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Inconsistent live photo info and video frame timestamp: Relaxing threshold", &buf, 2u);
        }
      }

      buf = *a4;
      time2 = self->_settlingStartPTS;
      if (CMTimeCompare(&buf, &time2) <= 0)
      {
        time2.value = 0;
        x = self->_cleanApertureRect.origin.x;
        y = self->_cleanApertureRect.origin.y;
        width = self->_cleanApertureRect.size.width;
        height = self->_cleanApertureRect.size.height;
        v48 = self->_cropRect.origin.x;
        v49 = self->_cropRect.origin.y;
        v51 = self->_cropRect.size.width;
        v50 = self->_cropRect.size.height;
        v52 = [(NSDictionary *)self->_pixelBasedHomogrphies objectForKeyedSubscript:*v32];
        v53 = [v52 objectAtIndexedSubscript:self->_frameIdx];
        v54 = [v53 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
        value = [(VCPSettlingEffectAnalyzer *)self resamplePixelBuffer:a3 cleanApertureRect:v54 cropRect:x homographyArray:y, width, height, v48, v49, v51, v50];
        buf.value = value;
        if (time2.value)
        {
          CFRelease(time2.value);
          value = buf.value;
        }

        time2.value = value;
        buf.value = 0;
        CF<__CVBuffer *>::~CF(&buf);

        ++self->_frameIdx;
        if (!time2.value)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating stabilized video frame", &buf, 2u);
          }

          p_time2 = &time2;
          goto LABEL_75;
        }

        rhs.value = 0;
        assetWriter = self->_assetWriter;
        v57 = [(FRCFrame *)self->_previousFrame buffer];
        previousFrame = self->_previousFrame;
        if (previousFrame)
        {
          [(FRCFrame *)previousFrame presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v9 = [(VCPMovieAssetWriter *)assetWriter addPixelBuffer:v57 withTime:&buf withAttachment:0];
        if (!v9)
        {
          previousMetadata = self->_previousMetadata;
          v88 = self->_previousFrame;
          if (v88)
          {
            [(FRCFrame *)v88 presentationTimeStamp];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          v9 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:previousMetadata withTimestamp:&buf isInterpolated:0 updatedSample:&rhs];
          if (!v9)
          {
            v9 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:rhs.value];
            if (!v9)
            {
              v94 = objc_alloc(MEMORY[0x1E699BE38]);
              buf = *a4;
              v95 = [v94 initWithBuffer:time2.value presentationTimeStamp:&buf];
              v96 = self->_previousFrame;
              self->_previousFrame = v95;

              var3 = a4->var3;
              *&self->_anchorPTS.value = *&a4->var0;
              self->_anchorPTS.epoch = var3;
              ++self->_anchorIndex;
              CF<__CVBuffer *>::~CF(&time2);
              goto LABEL_31;
            }
          }
        }

        CF<__CVBuffer *>::~CF(&time2);
        v39 = 0;
        v115 = 0;
      }

      else
      {
        v37 = [(NSArray *)self->_framePTSList objectAtIndexedSubscript:[(NSArray *)self->_framePTSList count]- 1];
        CMTimeMakeFromDictionary(&v121, v37);
        CMTimeMake(&v120, 2, 600);
        buf = v121;
        time2 = v120;
        CMTimeAdd(&rhs, &buf, &time2);
        buf = *a4;
        time2 = rhs;
        v38 = CMTimeCompare(&buf, &time2) < 1;

        if (!v38)
        {
LABEL_31:
          v39 = 0;
          v115 = 0;
LABEL_32:
          v9 = 0;
LABEL_99:

          goto LABEL_100;
        }

        v119.value = 0;
        v59 = self->_cleanApertureRect.origin.x;
        v60 = self->_cleanApertureRect.origin.y;
        v61 = self->_cleanApertureRect.size.width;
        v62 = self->_cleanApertureRect.size.height;
        v63 = self->_cropRect.origin.x;
        v64 = self->_cropRect.origin.y;
        v66 = self->_cropRect.size.width;
        v65 = self->_cropRect.size.height;
        v67 = [(NSDictionary *)self->_pixelBasedHomogrphies objectForKeyedSubscript:*v32];
        v68 = [v67 objectAtIndexedSubscript:self->_frameIdx];
        v69 = [v68 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
        v70 = [(VCPSettlingEffectAnalyzer *)self resamplePixelBuffer:a3 cleanApertureRect:v69 cropRect:v59 homographyArray:v60, v61, v62, v63, v64, v66, v65];
        buf.value = v70;
        if (v119.value)
        {
          CFRelease(v119.value);
          v70 = buf.value;
        }

        v119.value = v70;
        buf.value = 0;
        CF<__CVBuffer *>::~CF(&buf);

        ++self->_frameIdx;
        cf = 0;
        timingCurveIdx = self->_timingCurveIdx;
        if (timingCurveIdx > [(NSArray *)self->_timingCurveList count]- 1)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistency in frame timestamp list and decoded video frames", &buf, 2u);
          }

          p_time2 = &v119;
LABEL_75:
          CF<__CVBuffer *>::~CF(p_time2);
          v39 = 0;
          v115 = 0;
          v9 = -18;
          goto LABEL_98;
        }

        memset(&v121, 0, sizeof(v121));
        v73 = [(NSArray *)self->_timingCurveList objectAtIndexedSubscript:self->_timingCurveIdx];
        v74 = [v73 count];
        buf = self->_outputFrameDuration;
        p_outputFrameDuration = &self->_outputFrameDuration;
        CMTimeMultiply(&v121, &buf, v74 + 1);

        v75 = objc_alloc(MEMORY[0x1E699BE38]);
        v76 = v119.value;
        buf = self->_anchorPTS;
        p_anchorPTS = &self->_anchorPTS;
        time2 = v121;
        CMTimeAdd(&rhs, &buf, &time2);
        obj = [v75 initWithBuffer:v76 presentationTimeStamp:&rhs];
        frameInterpolator = self->_frameInterpolator;
        v78 = self->_previousFrame;
        v79 = [(NSArray *)self->_timingCurveList objectAtIndexedSubscript:self->_timingCurveIdx];
        v118 = 0;
        v115 = [(FRCFrameInterpolator *)frameInterpolator interpolateBetweenFirstFrame:v78 secondFrame:obj timeScales:v79 withError:&v118];
        v39 = v118;

        if ([v39 code] == -22006 || (v80 = objc_msgSend(v115, "count"), -[NSArray objectAtIndexedSubscript:](self->_timingCurveList, "objectAtIndexedSubscript:", self->_timingCurveIdx), v81 = objc_claimAutoreleasedReturnValue(), v82 = v80 == objc_msgSend(v81, "count"), v81, !v82))
        {
          self->_processAborted = 1;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v89 = [v39 localizedDescription];
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v89;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "FRC gating not passed: %@", &buf, 0xCu);
          }

          CFRelease(v11);
          [(FRCFrameInterpolator *)self->_frameInterpolator endSession];
          self->_FRCRecommendation = [(FRCFrameInterpolator *)self->_frameInterpolator recommendation];
          [(FRCFrameInterpolator *)self->_frameInterpolator sessionConfidence];
          self->_FRCConfidence = v90;
          v91 = [(FRCFrameInterpolator *)self->_frameInterpolator sessionStatistics];
          FRCStatistics = self->_FRCStatistics;
          self->_FRCStatistics = v91;

          self->_FRCGatingFailure = 1;
          [(VCPMovieAssetWriter *)self->_assetWriter cancel];

          CF<__CVBuffer *>::~CF(&v119);
          goto LABEL_32;
        }

        v83 = [v115 count];
        v84 = self->_assetWriter;
        v85 = [(FRCFrame *)self->_previousFrame buffer];
        v86 = self->_previousFrame;
        if (v86)
        {
          [(FRCFrame *)v86 presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v9 = [(VCPMovieAssetWriter *)v84 addPixelBuffer:v85 withTime:&buf withAttachment:0];
        if (v9)
        {
          goto LABEL_109;
        }

        v98 = self->_previousMetadata;
        v99 = self->_previousFrame;
        if (v99)
        {
          [(FRCFrame *)v99 presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v9 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:v98 withTimestamp:&buf isInterpolated:0 updatedSample:&cf];
        if (v9 || (v9 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:cf]) != 0)
        {
LABEL_109:

          CF<__CVBuffer *>::~CF(&v119);
          goto LABEL_98;
        }

        v111 = v83;
        if (v83)
        {
          v100 = 0;
          v110 = *MEMORY[0x1E6960508];
          while (1)
          {
            v126 = v110;
            v127 = MEMORY[0x1E695E118];
            v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:{1, v110}];
            v102 = self->_assetWriter;
            v103 = [v115 objectAtIndexedSubscript:v100];
            v104 = [v103 buffer];
            *&buf.value = *&p_outputFrameDuration->value;
            buf.epoch = self->_outputFrameDuration.epoch;
            CMTimeMultiply(&v120, &buf, ++v100);
            *&buf.value = *&p_anchorPTS->value;
            buf.epoch = self->_anchorPTS.epoch;
            time2 = v120;
            CMTimeAdd(&rhs, &buf, &time2);
            v9 = [(VCPMovieAssetWriter *)v102 addPixelBuffer:v104 withTime:&rhs withAttachment:v101];

            if (v9)
            {
              break;
            }

            v105 = self->_previousMetadata;
            *&buf.value = *&p_outputFrameDuration->value;
            buf.epoch = self->_outputFrameDuration.epoch;
            CMTimeMultiply(&v120, &buf, v100);
            *&buf.value = *&p_anchorPTS->value;
            buf.epoch = self->_anchorPTS.epoch;
            time2 = v120;
            CMTimeAdd(&rhs, &buf, &time2);
            v9 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:v105 withTimestamp:&rhs isInterpolated:1 updatedSample:&cf];
            if (v9)
            {
              break;
            }

            v9 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:cf];

            if (v9)
            {
              goto LABEL_109;
            }

            LODWORD(v83) = v111;
            if (v111 == v100)
            {
              goto LABEL_116;
            }
          }

          goto LABEL_109;
        }

LABEL_116:
        memset(&v120, 0, sizeof(v120));
        *&buf.value = *&p_outputFrameDuration->value;
        buf.epoch = self->_outputFrameDuration.epoch;
        CMTimeMultiply(&v120, &buf, v83 + 1);
        *&time2.value = *&p_anchorPTS->value;
        time2.epoch = self->_anchorPTS.epoch;
        rhs = v120;
        CMTimeAdd(&buf, &time2, &rhs);
        *&p_anchorPTS->value = *&buf.value;
        self->_anchorPTS.epoch = buf.epoch;
        v106 = [v115 objectAtIndexedSubscript:v111 - 1];
        v107 = v106;
        if (v106)
        {
          [v106 presentationTimeStamp];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        buf = rhs;
        *&time2.value = *&p_anchorPTS->value;
        time2.epoch = self->_anchorPTS.epoch;
        v108 = CMTimeCompare(&buf, &time2);

        if (v108 < 0)
        {
          objc_storeStrong(&self->_previousFrame, obj);
          v109 = self->_previousMetadata;
          if (v109)
          {
            CFRelease(v109);
            self->_previousMetadata = 0;
          }

          v9 = 0;
          self->_previousMetadata = v11;
          ++self->_anchorIndex;
          ++self->_timingCurveIdx;
        }

        else
        {
          v9 = -18;
        }

        CF<__CVBuffer *>::~CF(&v119);
        if (v108 < 0)
        {
          goto LABEL_32;
        }
      }

LABEL_98:
      self->_processAborted = 1;
      CFRelease(v11);
      [(VCPMovieAssetWriter *)self->_assetWriter cancel];
      goto LABEL_99;
    }

LABEL_8:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistent number of metadata and video frames", &buf, 2u);
    }

    v9 = -18;
  }

  else
  {
    CMTimeMake(&buf, 0, 600);
    self->_anchorPTS = buf;
    CleanRect = CVImageBufferGetCleanRect(a3);
    v12 = CleanRect.origin.x;
    v13 = CleanRect.origin.y;
    v14 = CleanRect.size.width;
    v15 = CleanRect.size.height;
    self->_cleanApertureRect = CleanRect;
    cf = 0;
    v16 = self->_cropRect.origin.x;
    v17 = self->_cropRect.origin.y;
    v19 = self->_cropRect.size.width;
    v18 = self->_cropRect.size.height;
    v20 = MEMORY[0x1E69A8B68];
    v21 = [(NSDictionary *)self->_pixelBasedHomogrphies objectForKeyedSubscript:*MEMORY[0x1E69A8B68]];
    v22 = [v21 objectAtIndexedSubscript:self->_frameIdx];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
    cf = [(VCPSettlingEffectAnalyzer *)self resamplePixelBuffer:a3 cleanApertureRect:v23 cropRect:v12 homographyArray:v13, v14, v15, v16, v17, v19, v18];
    buf.value = 0;
    CF<__CVBuffer *>::~CF(&buf);

    v24 = [(NSDictionary *)self->_pixelBasedHomogrphies objectForKeyedSubscript:*v20];
    v25 = [v24 objectAtIndexedSubscript:self->_frameIdx];

    ++self->_frameIdx;
    if (cf)
    {
      v26 = objc_alloc(MEMORY[0x1E699BE38]);
      buf = self->_anchorPTS;
      v27 = [v26 initWithBuffer:cf presentationTimeStamp:&buf];
      v28 = self->_previousFrame;
      self->_previousFrame = v27;

      self->_anchorIndex = 0;
      while (1)
      {
        v29 = [(AVAssetReaderTrackOutput *)self->_livePhotoInfoOutput copyNextSampleBuffer];
        self->_previousMetadata = v29;
        if (!v29)
        {
          break;
        }

        NumSamples = CMSampleBufferGetNumSamples(v29);
        v31 = self->_previousMetadata;
        if (NumSamples)
        {
          if (v31)
          {
            memset(&rhs, 0, sizeof(rhs));
            v42 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
            CMTimeMakeFromDictionary(&rhs, v42);

            buf = *a4;
            time2 = rhs;
            if (CMTimeCompare(&buf, &time2))
            {
              self->_metadataIntegrityFailure = 1;
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                v43 = a4->var0;
                LODWORD(buf.value) = 134218240;
                *(&buf.value + 4) = v43;
                LOWORD(buf.flags) = 2048;
                *(&buf.flags + 2) = rhs.value;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Inconsistent live photo info and video frame timestamp: %lld vs. %lld", &buf, 0x16u);
              }

              buf = *a4;
              time2 = rhs;
              if (CMTimeCompare(&buf, &time2) >= 1 && (buf = *a4, time2 = rhs, CMTimeSubtract(&v122, &buf, &time2), CMTimeMake(&v121, 2, 600), buf = v122, time2 = v121, CMTimeCompare(&buf, &time2) > 0) || (buf = *a4, time2 = rhs, CMTimeCompare(&buf, &time2) < 0) && (buf = rhs, time2 = *a4, CMTimeSubtract(&v120, &buf, &time2), CMTimeMake(&v119, 2, 600), buf = v120, time2 = v119, CMTimeCompare(&buf, &time2) > 0) || !+[VCPSettlingEffectAnalyzer disableMetadataIntegrityCheck])
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  LOWORD(buf.value) = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Live photo info and video frame timestamp difference exceeds threshold", &buf, 2u);
                }

                self->_processAborted = 1;
                [(FRCFrameInterpolator *)self->_frameInterpolator endSession];
                [(VCPMovieAssetWriter *)self->_assetWriter cancel];
              }

              else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                LOWORD(buf.value) = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Inconsistent live photo info and video frame timestamp: Relaxing threshold", &buf, 2u);
              }
            }

            v9 = 0;
            goto LABEL_53;
          }

          break;
        }

        if (v31)
        {
          CFRelease(v31);
          self->_previousMetadata = 0;
        }
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        v40 = MEMORY[0x1E69E9C10];
        v41 = "Inconsistent number of metadata and video frames";
        goto LABEL_51;
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      v40 = MEMORY[0x1E69E9C10];
      v41 = "Error creating stabilized video frame";
LABEL_51:
      _os_log_impl(&dword_1C9B70000, v40, OS_LOG_TYPE_ERROR, v41, &buf, 2u);
    }

    v9 = -18;
LABEL_53:

    CF<__CVBuffer *>::~CF(&cf);
  }

LABEL_100:
  objc_autoreleasePoolPop(context);
  return v9;
}

- (int)createLivePhotoInfoSample:(opaqueCMSampleBuffer *)a3 withTimestamp:(id *)a4 isInterpolated:(BOOL)a5 updatedSample:(opaqueCMSampleBuffer *)a6
{
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!dataPointerOut)
  {
    return -18;
  }

  v12 = 0;
  v34 = 0;
  v13 = *MEMORY[0x1E6990A00];
  while (v12 < totalLengthOut)
  {
    v14 = v12;
    v15 = *&dataPointerOut[v12];
    v16 = FigMetadataFormatDescriptionGetIdentifierForLocalID();
    v17 = [v16 isEqualToString:v13];
    v12 = v14 + bswap32(v15);

    if (v17)
    {
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_8:
  FigLivePhotoMetadataComputeSerializationSizeV3();
  v19 = v34;
  v20 = malloc_type_malloc(v34 + 8, 0x18E16721uLL);
  bzero(v20, v34 + 8);
  *v20 = bswap32(v34 + 8);
  v21 = *&dataPointerOut[v14 + 4];
  *(v20 + 25) = 128;
  v20[1] = v21;
  v20[2] = 3;
  *(v20 + 36) = 32;
  *(v20 + 130) = a5;
  theBuffer = 0;
  v22 = *MEMORY[0x1E695E480];
  v18 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v20, v19 + 8, *MEMORY[0x1E695E480], 0, 0, v19 + 8, 0, &theBuffer);
  v23 = theBuffer;
  if (v18)
  {
    v24 = 1;
  }

  else
  {
    v24 = theBuffer == 0;
  }

  if (!v24)
  {
    v25 = *(MEMORY[0x1E6960CF0] + 48);
    *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&sampleTimingArray.decodeTimeStamp.value = v25;
    v26 = *(MEMORY[0x1E6960CF0] + 64);
    v27 = *(MEMORY[0x1E6960CF0] + 16);
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CF0];
    *&sampleTimingArray.duration.epoch = v27;
    *&sampleTimingArray.presentationTimeStamp.value = *&a4->var0;
    var3 = a4->var3;
    sampleTimingArray.decodeTimeStamp.epoch = v26;
    sampleTimingArray.presentationTimeStamp.epoch = var3;
    sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
    v18 = CMSampleBufferCreate(v22, theBuffer, 1u, 0, 0, FormatDescription, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, a6);
    v23 = theBuffer;
  }

  if (v18)
  {
    v29 = v23 == 0;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    free(v20);
  }

  else if (v23)
  {
    CFRelease(v23);
  }

  return v18;
}

- (int)finishAnalysisPass:(id *)a3 withStillImageBuffer:(__CVBuffer *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  target = 0;
  v57 = 0;
  cf = 0;
  if (self->_processAborted)
  {
    v50 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_3:
    v8 = 0;
LABEL_14:
    previousMetadata = self->_previousMetadata;
    if (previousMetadata)
    {
      CFRelease(previousMetadata);
      self->_previousMetadata = 0;
    }

    if (v8)
    {
      self->_processAborted = 1;
      if ([(VCPMovieAssetWriter *)self->_assetWriter status:a3]== 1)
      {
        [(VCPMovieAssetWriter *)self->_assetWriter cancel];
      }
    }

    goto LABEL_23;
  }

  timingCurveIdx = self->_timingCurveIdx;
  if (timingCurveIdx != [(NSArray *)self->_timingCurveList count]- 1)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(time.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistency in frame timestamp list and decoded video frames", &time, 2u);
    }

    v50 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_13;
  }

  cf = [(VCPSettlingEffectAnalyzer *)self scaleStillImage:a4];
  time.value = 0;
  CF<__CVBuffer *>::~CF(&time);
  target = [(VCPSettlingEffectAnalyzer *)self resamplePixelBuffer:cf cleanApertureRect:&unk_1F49BE680 cropRect:self->_cleanApertureRect.origin.x homographyArray:self->_cleanApertureRect.origin.y, self->_cleanApertureRect.size.width, self->_cleanApertureRect.size.height, self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
  time.value = 0;
  CF<__CVBuffer *>::~CF(&time);
  v11 = *MEMORY[0x1E6965DD0];
  v12 = *MEMORY[0x1E6965F30];
  v61[0] = *MEMORY[0x1E6965D88];
  v61[1] = v12;
  v13 = *MEMORY[0x1E6965F50];
  v62[0] = v11;
  v62[1] = v13;
  v61[2] = *MEMORY[0x1E6965F98];
  v62[2] = *MEMORY[0x1E6965FC8];
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
  CMSetAttachments(target, v50, 1u);
  v14 = [(NSArray *)self->_timingCurveList objectAtIndexedSubscript:self->_timingCurveIdx];
  v15 = [v14 count];
  time = self->_outputFrameDuration;
  p_outputFrameDuration = &self->_outputFrameDuration;
  CMTimeMultiply(&rhs, &time, v15 + 1);
  v54 = rhs;

  v16 = objc_alloc(MEMORY[0x1E699BE38]);
  v17 = target;
  time = self->_anchorPTS;
  p_anchorPTS = &self->_anchorPTS;
  rhs = v54;
  CMTimeAdd(&v53, &time, &rhs);
  v6 = [v16 initWithBuffer:v17 presentationTimeStamp:&v53];
  frameInterpolator = self->_frameInterpolator;
  previousFrame = self->_previousFrame;
  v20 = [(NSArray *)self->_timingCurveList objectAtIndexedSubscript:self->_timingCurveIdx];
  v52 = 0;
  v7 = [(FRCFrameInterpolator *)frameInterpolator interpolateBetweenFirstFrame:previousFrame secondFrame:v6 timeScales:v20 withError:&v52];
  v5 = v52;

  if ([v5 code] != -22006)
  {
    v21 = [v7 count];
    v22 = [(NSArray *)self->_timingCurveList objectAtIndexedSubscript:self->_timingCurveIdx];
    v23 = v21 == [v22 count];

    if (v23)
    {
      assetWriter = self->_assetWriter;
      v25 = [(FRCFrame *)self->_previousFrame buffer];
      v26 = self->_previousFrame;
      if (v26)
      {
        [(FRCFrame *)v26 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v8 = [(VCPMovieAssetWriter *)assetWriter addPixelBuffer:v25 withTime:&time withAttachment:0];
      if (v8)
      {
        goto LABEL_14;
      }

      v33 = self->_previousMetadata;
      v34 = self->_previousFrame;
      if (v34)
      {
        [(FRCFrame *)v34 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v8 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:v33 withTimestamp:&time isInterpolated:0 updatedSample:&v57];
      if (v8)
      {
        goto LABEL_14;
      }

      v8 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v57];
      if (v8)
      {
        goto LABEL_14;
      }

      v35 = 0;
      v46 = *MEMORY[0x1E6960508];
      while (v35 < [v7 count])
      {
        v59 = v46;
        v60 = MEMORY[0x1E695E118];
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v36 = self->_assetWriter;
        v37 = [v7 objectAtIndexedSubscript:v35];
        v38 = [v37 buffer];
        *&time.value = *&p_outputFrameDuration->value;
        time.epoch = self->_outputFrameDuration.epoch;
        CMTimeMultiply(&v51, &time, v35 + 1);
        *&time.value = *&p_anchorPTS->value;
        time.epoch = self->_anchorPTS.epoch;
        rhs = v51;
        CMTimeAdd(&v53, &time, &rhs);
        v8 = [(VCPMovieAssetWriter *)v36 addPixelBuffer:v38 withTime:&v53 withAttachment:v47];

        if (v8 || (v39 = self->_previousMetadata, *&time.value = *&p_outputFrameDuration->value, time.epoch = self->_outputFrameDuration.epoch, CMTimeMultiply(&v51, &time, v35 + 1), *&time.value = *&p_anchorPTS->value, time.epoch = self->_anchorPTS.epoch, rhs = v51, CMTimeAdd(&v53, &time, &rhs), (v8 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:v39 withTimestamp:&v53 isInterpolated:1 updatedSample:&v57]) != 0))
        {

          goto LABEL_14;
        }

        v8 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v57];

        ++v35;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      v40 = self->_assetWriter;
      v41 = [v6 buffer];
      if (v6)
      {
        [v6 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v8 = [(VCPMovieAssetWriter *)v40 addPixelBuffer:v41 withTime:&time withAttachment:0];
      if (v8)
      {
        goto LABEL_14;
      }

      v42 = self->_previousMetadata;
      if (v6)
      {
        [v6 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v8 = [(VCPSettlingEffectAnalyzer *)self createLivePhotoInfoSample:v42 withTimestamp:&time isInterpolated:0 updatedSample:&v57];
      if (v8)
      {
        goto LABEL_14;
      }

      v8 = [(VCPMovieAssetWriter *)self->_assetWriter addLivePhotoInfoBuffer:v57];
      if (v8)
      {
        goto LABEL_14;
      }

      if (![(VCPMovieAssetWriter *)self->_assetWriter finish]&& [(FRCFrameInterpolator *)self->_frameInterpolator endSession]== -22000)
      {
        self->_FRCRecommendation = [(FRCFrameInterpolator *)self->_frameInterpolator recommendation];
        self->_FRCGatingFailure = [(FRCFrameInterpolator *)self->_frameInterpolator gated];
        [(FRCFrameInterpolator *)self->_frameInterpolator sessionConfidence];
        self->_FRCConfidence = v43;
        v44 = [(FRCFrameInterpolator *)self->_frameInterpolator sessionStatistics];
        FRCStatistics = self->_FRCStatistics;
        self->_FRCStatistics = v44;

        goto LABEL_3;
      }

LABEL_13:
      v8 = -18;
      goto LABEL_14;
    }
  }

  self->_processAborted = 1;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v28 = [v5 localizedDescription];
    LODWORD(time.value) = 138412290;
    *(&time.value + 4) = v28;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "FRC gating not passed: %@", &time, 0xCu);
  }

  [(FRCFrameInterpolator *)self->_frameInterpolator endSession];
  self->_FRCRecommendation = [(FRCFrameInterpolator *)self->_frameInterpolator recommendation];
  [(FRCFrameInterpolator *)self->_frameInterpolator sessionConfidence];
  self->_FRCConfidence = v29;
  v30 = [(FRCFrameInterpolator *)self->_frameInterpolator sessionStatistics];
  v31 = self->_FRCStatistics;
  self->_FRCStatistics = v30;

  self->_FRCGatingFailure = 1;
  [(VCPMovieAssetWriter *)self->_assetWriter cancel];
  v8 = 0;
LABEL_23:

  CF<__CVBuffer *>::~CF(&cf);
  CF<__CVBuffer *>::~CF(&target);

  return v8;
}

- (id)results
{
  v25[5] = *MEMORY[0x1E69E9840];
  v24[0] = @"settlingEffectVideoQualityGatingFailure";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_videoQualityGatingFailure];
  v25[0] = v3;
  v24[1] = @"settlingEffectMetadataIntegrityFailure";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_metadataIntegrityFailure];
  v25[1] = v4;
  v24[2] = @"settlingEffectFRCGatingFailure";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_FRCGatingFailure];
  v25[2] = v5;
  v24[3] = @"settlingEffectStillTransitionGatingFailure";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_stillTransitionGatingFailure];
  v25[3] = v6;
  v24[4] = @"settlingEffectMinSettlingDurationThresholdFailure";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_minSettlingDurationThresholdFailure];
  v25[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = v9;
  if (!self->_processAborted)
  {
    [v9 setObject:self->_filePath forKeyedSubscript:@"settlingEffectURL"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_FRCRecommendation];
  [v10 setObject:v11 forKeyedSubscript:@"FRCRecommendation"];

  *&v12 = self->_FRCConfidence;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [v10 setObject:v13 forKeyedSubscript:@"FRCConfidence"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_userInitiatedMode];
  [v10 setObject:v14 forKeyedSubscript:@"FRCUserInitiatedMode"];

  if ([(NSDictionary *)self->_FRCStatistics count])
  {
    [v10 setObject:self->_FRCStatistics forKeyedSubscript:@"FRCStatistics"];
  }

  [v10 setObject:v8 forKeyedSubscript:@"settlingEffectStatus"];
  v22 = @"SettlingEffectResults";
  v19 = @"attributes";
  v20 = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v23 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  return v17;
}

- (id)getPixelBasedHomographies:(id)a3 withCleanApertureSize:(CGSize)a4
{
  v4 = a3;
  v5 = [[VCPProtoMovieStabilizationRecipe alloc] initWithData:v4];
  v6 = [(VCPProtoMovieStabilizationRecipe *)v5 exportToLegacyDictionary];
  v7 = ICCreateCorrectionHomographiesWithNewImageCoordinates();

  return v7;
}

+ (id)getFramePTSList:(id)a3 before:(id *)a4 withOptions:(id)a5
{
  v26 = a3;
  v7 = a5;
  v25 = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc(MEMORY[0x1E6987E78]);
  v9 = [v26 asset];
  v10 = [v8 initWithAsset:v9 error:0];

  v11 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:v26];
  if (([v10 canAddOutput:v11] & 1) == 0 || (objc_msgSend(v10, "addOutput:", v11), !objc_msgSend(v10, "startReading")))
  {
    v19 = 0;
LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v13 = MEMORY[0x1E6960CC0];
  while (1)
  {
    v14 = [v11 copyNextSampleBuffer];
    v15 = v14;
    if (!v14)
    {
      break;
    }

    if (CMSampleBufferGetNumSamples(v14))
    {
      memset(&v29, 0, sizeof(v29));
      CMSampleBufferGetOutputPresentationTimeStamp(&v29, v15);
      time1 = v29;
      time2 = *v13;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        time1 = v29;
        time2 = *a4;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          CMTimeMake(&v27, 2, 600);
          time1 = v29;
          time2 = v27;
          CMTimeAdd(&v28, &time1, &time2);
          time1 = v28;
          time2 = *a4;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            time1 = v29;
            v16 = CMTimeCopyAsDictionary(&time1, 0);
            [v25 addObject:v16];
          }
        }
      }

      v17 = [v7 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
      if (v17)
      {
        time1 = v29;
        time2 = *a4;
        v18 = CMTimeCompare(&time1, &time2) == 0;

        v12 |= v18;
      }
    }

    CFRelease(v15);
  }

  v19 = [v25 sortedArrayUsingComparator:&__block_literal_global_2];
  if (![v19 count])
  {
    goto LABEL_14;
  }

  v23 = [v7 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
  v24 = (v23 == 0) | v12;

  if (v24)
  {
    v20 = v19;
  }

  else
  {
    v20 = [v19 subarrayWithRange:{0, objc_msgSend(v19, "count") - 1}];

    v19 = v20;
  }

LABEL_15:
  v21 = v20;

  return v20;
}

uint64_t __64__VCPSettlingEffectAnalyzer_getFramePTSList_before_withOptions___block_invoke(uint64_t a1, const __CFDictionary *a2, void *a3)
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

- (CGSize)getCleanApertureFrameSize:(id)a3
{
  v3 = [a3 formatDescriptions];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];

    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v4, 0, 1u);
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

- (__CVBuffer)resamplePixelBuffer:(__CVBuffer *)a3 cleanApertureRect:(CGRect)a4 cropRect:(CGRect)a5 homographyArray:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  x = a5.origin.x;
  y = a5.origin.y;
  v6 = a4.size.height;
  v7 = a4.size.width;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  v104[4] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 floatValue];
  v98 = v12;
  v13 = [v10 objectAtIndexedSubscript:1];
  [v13 floatValue];
  v95 = v14;
  v15 = [v10 objectAtIndexedSubscript:2];
  [v15 floatValue];
  v92 = v16;
  v17 = [v10 objectAtIndexedSubscript:3];
  [v17 floatValue];
  v85 = v18;
  v19 = [v10 objectAtIndexedSubscript:4];
  [v19 floatValue];
  v84 = v20;
  v21 = [v10 objectAtIndexedSubscript:5];
  [v21 floatValue];
  v83 = v22;
  v23 = [v10 objectAtIndexedSubscript:6];
  [v23 floatValue];
  v82 = v24;
  v25 = [v10 objectAtIndexedSubscript:7];
  [v25 floatValue];
  v81 = v26;
  v27 = [v10 objectAtIndexedSubscript:8];
  [v27 floatValue];
  v28 = v98;
  v28.i32[1] = v85;
  v28.i32[2] = v82;
  v99 = v28;
  v29 = v95;
  v29.i32[1] = v84;
  v29.i32[2] = v81;
  v96 = v29;
  v30 = v92;
  v30.i32[1] = v83;
  v30.i32[2] = v31;
  v93 = v30;

  v32 = 0;
  *v33.i32 = v6;
  v34.i32[0] = 0;
  v34.i32[1] = v33.i32[0];
  v34.i32[2] = 1.0;
  v35 = vzip1q_s32(xmmword_1C9F60520, v33);
  v35.i32[3] = 0;
  *&v101.a = xmmword_1C9F60530;
  *&v101.c = xmmword_1C9F60540;
  *&v101.tx = v35;
  do
  {
    *(&v102.a + v32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v101.a + v32))), v96, *(&v101.a + v32), 1), v93, *(&v101.a + v32), 2);
    v32 += 16;
  }

  while (v32 != 48);
  v36 = 0;
  v101 = v102;
  do
  {
    *(&v102.a + v36) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C9F60530, COERCE_FLOAT(*(&v101.a + v36))), xmmword_1C9F60540, *(&v101.a + v36), 1), v34, *(&v101.a + v36), 2);
    v36 += 16;
  }

  while (v36 != 48);
  v100 = *&v102.c;
  v94 = *&v102.a;
  v97 = *&v102.tx;
  v37 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a3];
  v38 = [v37 imageByCroppingToRect:{v9, v8, v7, v6}];
  CGAffineTransformMakeTranslation(&v102, -v9, -v8);
  v39 = [v38 imageByApplyingTransform:&v102];

  [v39 extent];
  MinX = CGRectGetMinX(v105);
  [v39 extent];
  MaxY = CGRectGetMaxY(v106);
  [v39 extent];
  MaxX = CGRectGetMaxX(v107);
  [v39 extent];
  v43 = CGRectGetMaxY(v108);
  [v39 extent];
  v44 = CGRectGetMinX(v109);
  [v39 extent];
  MinY = CGRectGetMinY(v110);
  [v39 extent];
  v46 = CGRectGetMaxX(v111);
  [v39 extent];
  v47 = CGRectGetMinY(v112);
  v48 = MinX;
  v49 = MaxY;
  v50 = vaddq_f32(v97, vmlaq_n_f32(vmulq_n_f32(v94, v48), v100, v49));
  v51 = vdiv_f32(*v50.i8, vdup_laneq_s32(v50, 2));
  v103[0] = @"inputTopLeft";
  v52 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v51.f32[0], v51.f32[1]}];
  v53 = v43;
  v54 = MaxX;
  v55 = vaddq_f32(v97, vmlaq_n_f32(vmulq_n_f32(v94, v54), v100, v53));
  *v55.i8 = vdiv_f32(*v55.i8, vdup_laneq_s32(v55, 2));
  v104[0] = v52;
  v103[1] = @"inputTopRight";
  v56 = [MEMORY[0x1E695F688] vectorWithCGPoint:{*v55.i32, *&v55.i32[1]}];
  v57 = v44;
  v58 = MinY;
  v59 = vaddq_f32(v97, vmlaq_n_f32(vmulq_n_f32(v94, v57), v100, v58));
  v60 = vdiv_f32(*v59.i8, vdup_laneq_s32(v59, 2));
  v104[1] = v56;
  v103[2] = @"inputBottomLeft";
  v61 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v60.f32[0], v60.f32[1]}];
  v62 = v46;
  v63 = v47;
  v64 = vaddq_f32(v97, vmlaq_n_f32(vmulq_n_f32(v94, v62), v100, v63));
  v65 = vdiv_f32(*v64.i8, vdup_laneq_s32(v64, 2));
  v104[2] = v61;
  v103[3] = @"inputBottomRight";
  v66 = [MEMORY[0x1E695F688] vectorWithCGPoint:{v65.f32[0], v65.f32[1]}];
  v104[3] = v66;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];
  v68 = [v39 imageByApplyingFilter:@"CIPerspectiveTransform" withInputParameters:v67];

  v113.origin.x = x;
  v113.origin.y = y;
  v113.size.height = height;
  v113.size.width = width;
  v69 = CGRectGetMinX(v113);
  [v39 extent];
  v70 = CGRectGetMinX(v114);
  [v39 extent];
  v71 = CGRectGetMaxY(v115);
  v116.origin.x = x;
  v116.origin.y = y;
  v116.size.height = height;
  v116.size.width = width;
  v72 = v69 - v70;
  v73 = v71 - CGRectGetMaxY(v116);
  v74 = [v68 imageByCroppingToRect:{v72, v73, width, height}];
  CGAffineTransformMakeTranslation(&v102, -v72, -v73);
  v75 = [v74 imageByApplyingTransform:&v102];

  bufferCreator = self->_bufferCreator;
  if (!bufferCreator)
  {
    v77 = [[VCPPoolBasedPixelBufferCreator alloc] initWithBufferWidth:width bufferHeight:height andPixelFormat:CVPixelBufferGetPixelFormatType(a3)];
    v78 = self->_bufferCreator;
    self->_bufferCreator = v77;

    bufferCreator = self->_bufferCreator;
  }

  v102.a = 0.0;
  if (![(VCPPoolBasedPixelBufferCreator *)bufferCreator createPixelBuffer:&v102])
  {
    [(CIContext *)self->_context render:v75 toCVPixelBuffer:*&v102.a];
    CVBufferPropagateAttachments(a3, *&v102.a);
    CVBufferRemoveAttachment(*&v102.a, *MEMORY[0x1E6965D70]);
  }

  a = v102.a;

  return *&a;
}

- (__CVBuffer)scaleStillImage:(__CVBuffer *)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:?];
  [(VCPSettlingEffectAnalyzer *)self getFrameSize:self->_originalTrack];
  v7 = v6;
  v9 = v8;
  [v5 extent];
  Width = CGRectGetWidth(v20);
  [v5 extent];
  Height = CGRectGetHeight(v21);
  CGAffineTransformMakeScale(&v17, v7 / Width, v9 / Height);
  v12 = [v5 imageByApplyingTransform:&v17];
  v17.a = 0.0;
  v18 = *MEMORY[0x1E69660D8];
  v19[0] = MEMORY[0x1E695E0F8];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferCreate(*MEMORY[0x1E695E480], v7, v9, PixelFormatType, v13, &v17);
  [(CIContext *)self->_context render:v12 toCVPixelBuffer:*&v17.a];
  CVBufferPropagateAttachments(a3, *&v17.a);
  CVBufferRemoveAttachment(*&v17.a, *MEMORY[0x1E6965D70]);
  a = v17.a;

  return *&a;
}

+ (id)getRetimingCurve
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:&unk_1F49BE698];
  [v2 addObject:&unk_1F49BE6B0];
  [v2 addObject:&unk_1F49BE6C8];
  [v2 addObject:&unk_1F49BE6E0];
  [v2 addObject:&unk_1F49BE6F8];
  [v2 addObject:&unk_1F49BE710];
  [v2 addObject:&unk_1F49BE728];
  [v2 addObject:&unk_1F49BE740];
  [v2 addObject:&unk_1F49BE758];
  [v2 addObject:&unk_1F49BE770];
  [v2 addObject:&unk_1F49BE788];
  [v2 addObject:&unk_1F49BE7A0];
  [v2 addObject:&unk_1F49BE7B8];

  return v2;
}

+ ($AFC8CF76A46F37F9FB23C20884F4FD99)getSettlingEffectTimeRange:(SEL)a3 withOptions:(id)a4
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];

  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
    CMTimeMakeFromDictionary(&lhs, v10);
  }

  else
  {
    v11 = [v7 asset];
    v10 = v11;
    if (v11)
    {
      [(__CFDictionary *)v11 vcp_livePhotoStillDisplayTime];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }
  }

  v22 = lhs;

  lhs = v22;
  v12 = [VCPSettlingEffectAnalyzer getFramePTSList:v7 before:&lhs withOptions:v8];
  v13 = [v8 objectForKeyedSubscript:@"CustomRetimingCurve"];
  if (v13)
  {
    [v8 objectForKeyedSubscript:@"CustomRetimingCurve"];
  }

  else
  {
    +[VCPSettlingEffectAnalyzer getRetimingCurve];
  }
  v14 = ;

  if ([v12 count])
  {
    v15 = [v12 count];
    if (v15 <= [v14 count])
    {
      [v12 objectAtIndexedSubscript:0];
    }

    else
    {
      [v12 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - objc_msgSend(v14, "count")}];
    }
    v16 = ;
    CMTimeMakeFromDictionary(&lhs, v16);
    v23 = lhs;

    start = v23;
    lhs = v22;
    rhs = v23;
    CMTimeSubtract(&duration, &lhs, &rhs);
    CMTimeRangeMake(retstr, &start, &duration);
  }

  else
  {
    v17 = MEMORY[0x1E6960C98];
    v18 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v18;
    *&retstr->var1.var1 = *(v17 + 32);
  }

  return result;
}

@end