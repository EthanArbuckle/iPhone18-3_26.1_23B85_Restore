@interface NUVideoUtilities
+ ($0AC6E346AE4835514AAA8AC86D8F4844)encodedPixelSizeOfTrack:(id)track oriented:(BOOL)oriented;
+ ($0AC6E346AE4835514AAA8AC86D8F4844)naturalSizeOfTrack:(id)track oriented:(BOOL)oriented;
+ ($209B98C1CDF2DEBD503CBDE3C0ED7C90)conformRange:(SEL)range inRange:(id *)inRange;
+ ($209B98C1CDF2DEBD503CBDE3C0ED7C90)convertTimeRange:(SEL)range toMaximumTimeScaleOfRange:(id *)ofRange;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAsset:(SEL)asset;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAsset:(SEL)asset videoComposition:(id)composition;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAssetTrack:(SEL)track;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)readStillImageTimeFromVideoAsset:(SEL)asset;
+ ($41299696D20B6C925B74A5D5E4D5CC87)cleanApertureOfTrack:(SEL)track oriented:(id)oriented;
+ (BOOL)asset:(id)asset containsDuplicatePTSSamples:(BOOL *)samples assetTrack:(id)track error:(id *)error;
+ (BOOL)assetIsCinematicAudio:(id)audio;
+ (BOOL)assetIsPIPVideo:(id)video;
+ (BOOL)audioTrackIsCinematicAudio:(id)audio;
+ (BOOL)compositionInstructions:(id)instructions areEqualToCompositionInstructions:(id)compositionInstructions;
+ (BOOL)isAVAssetDolbyProfile5:(id)profile5 error:(id *)error;
+ (BOOL)isAVAssetHDR:(id)r error:(id *)error;
+ (BOOL)isAssetUnsupportedCorruptPortraitVideo:(id)video;
+ (BOOL)isAssetUnsupportedLegacyPortraitVideo:(id)video;
+ (BOOL)metadataTrack:(id)track containsIdentifier:(id)identifier;
+ (BOOL)metadataTrack:(id)track containsIdentifiers:(id)identifiers;
+ (BOOL)readFromReader:(id)reader andWriteToWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize progress:(id)self0 error:(id *)self1;
+ (BOOL)track:(id)track hasSamplesForEachSampleInTrack:(id)inTrack;
+ (BOOL)trimCompositionTracks:(id)tracks toRange:(id *)range error:(id *)error;
+ (BOOL)updateVideoMetadataAtURL:(id)l withItems:(id)items stillImageTime:(id *)time error:(id *)error;
+ (BOOL)validateMainVideoTrack:(id)track potentiallyCorruptedRange:(id *)range error:(id *)error;
+ (BOOL)videoTrackContainsDolbyVisionMetadata:(id)metadata;
+ (CGAffineTransform)preferredTransformFromOrientation:(SEL)orientation size:(int64_t)size;
+ (__CVBuffer)readVideoFrameAtTime:(id *)time fromAsset:(id)asset outputSettings:(id)settings videoComposition:(id)composition auxiliaryImageType:(int64_t)type error:(id *)error;
+ (__CVBuffer)readVideoFrameAtTime:(id *)time fromAsset:(id)asset reader:(id)reader readerOutput:(id)output error:(id *)error;
+ (float)nominalFrameRateForAsset:(id)asset error:(id *)error;
+ (id)_preferedPixelFormatsForUsage:(int64_t)usage;
+ (id)assetReaderAudioSettingsForTrackType:(BOOL)type;
+ (id)assetWriterAudioSettingsForAudioTrackFormatDescription:(opaqueCMFormatDescription *)description;
+ (id)assetWriterAudioSettingsForTrackWithSampleRate:(double)rate isAmbisonic:(BOOL)ambisonic;
+ (id)auxiliaryTrackInAsset:(id)asset ofType:(int64_t)type error:(id *)error;
+ (id)bestOutputSettingsPresetForTargetVideoSize:(id)size codec:(unsigned int)codec;
+ (id)cinematicAudioTrackInAsset:(id)asset;
+ (id)cleanApertureVideoSettingsFor:(id *)for scale:(id)scale videoSize:(id)size;
+ (id)compositionFromVideoComposition:(id)composition;
+ (id)computeMalformedTimeRangeTrackInAsset:(id)asset assetTrack:(id)track error:(id *)error;
+ (id)debugDescriptionOfAssetTrack:(id)track;
+ (id)deepMutableCopyVideoComposition:(id)composition;
+ (id)defaultExportCodecForHDRVideo:(BOOL)video;
+ (id)defaultVideoSettingsForAVAssetReader;
+ (id)firstEnabledVideoTrackInAsset:(id)asset error:(id *)error;
+ (id)getCinematicAudioParametersFromAudioMix:(id)mix;
+ (id)indexesOfSemanticStyleVideoSampleSlices:(id)slices;
+ (id)metadataTrackWithCinematicAudioDataInAsset:(id)asset;
+ (id)metadataTrackWithIdenfifier:(id)idenfifier forAsset:(id)asset;
+ (id)metadataTrackWithLivePhotoInfoInAsset:(id)asset;
+ (id)metadataTrackWithPortraitVideoDataInAsset:(id)asset;
+ (id)metadataTrackWithStillImageDimensionsInLivePhotoAsset:(id)asset;
+ (id)metadataTrackWithStillImageDisplayTimeMarkerInLivePhotoAsset:(id)asset;
+ (id)metadataTrackWithStillImageTransformInLivePhotoAsset:(id)asset;
+ (id)newPixelBufferOfSize:(id)size format:(unsigned int)format;
+ (id)originalCodecOfVideoTrack:(id)track;
+ (id)pixelFormatStringForCVPixelBuffer:(__CVBuffer *)buffer;
+ (id)readTimedMetadataGroupAtTime:(id *)time fromTrack:(id)track outputSettings:(id)settings videoComposition:(id)composition error:(id *)error;
+ (id)readerOutputForAsset:(id)asset outputSettings:(id)settings videoComposition:(id)composition auxiliaryImageType:(int64_t)type error:(id *)error;
+ (id)readerOutputForAssetTrack:(id)track outputSettings:(id)settings error:(id *)error;
+ (id)realTimeConsumptionAssetReaderForAsset:(id)asset error:(id *)error;
+ (id)repeatAudio:(id)audio count:(int64_t)count error:(id *)error;
+ (id)repeatVideo:(id)video count:(int64_t)count error:(id *)error;
+ (id)repeatVideoComposition:(id)composition count:(int64_t)count error:(id *)error;
+ (id)requiredVideoCompositionOutputTracksForAsset:(id)asset;
+ (id)rgbVideoSettingsForAVAssetReader;
+ (id)semanticStylePropertiesFromMetadataGroup:(id)group keyTime:(id *)time error:(id *)error;
+ (id)urlOfAVAsset:(id)asset;
+ (id)validateAsset:(id)asset error:(id *)error;
+ (id)videoCompositionDescription:(id)description;
+ (id)videoDescription:(id)description;
+ (int64_t)videoOrientationForAsset:(id)asset videoComposition:(id)composition;
+ (int64_t)videoOrientationForAssetPreferredTransform:(CGAffineTransform *)transform;
+ (unint64_t)nominalFrameRateRoundedToNearestTraditionalFrameRate:(float)rate;
+ (void)readNextPixelBuffer:(id)buffer output:(id)output block:(id)block;
+ (void)readNextSampleBuffer:(id)buffer output:(id)output block:(id)block;
@end

@implementation NUVideoUtilities

+ (BOOL)trimCompositionTracks:(id)tracks toRange:(id *)range error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  tracksCopy = tracks;
  v7 = [tracksCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = *v29;
    v9 = MEMORY[0x1E6960CC0];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(tracksCopy);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        *&time1.start.value = *&range->var1.var0;
        time1.start.epoch = range->var1.var3;
        *&time2.start.value = *v9;
        time2.start.epoch = *(v9 + 16);
        if (!CMTimeCompare(&time1.start, &time2.start))
        {
          v16 = *&range->var0.var3;
          *&time1.start.value = *&range->var0.var0;
          *&time1.start.epoch = v16;
          *&time1.duration.timescale = *&range->var1.var1;
          v17 = CMTimeRangeCopyDescription(*MEMORY[0x1E695E480], &time1);
          *error = [NUError errorWithCode:6 reason:@"duration of the trim is zero or -ve" object:v17];

          v15 = 0;
          goto LABEL_18;
        }

        memset(&time1, 0, sizeof(time1));
        if (v11)
        {
          [v11 timeRange];
        }

        v12 = *&range->var0.var3;
        *&v26.start.value = *&range->var0.var0;
        *&v26.start.epoch = v12;
        *&v26.duration.timescale = *&range->var1.var1;
        memset(&time2, 0, sizeof(time2));
        otherRange = time1;
        [NUVideoUtilities convertTimeRange:&v26 toMaximumTimeScaleOfRange:&otherRange];
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          memset(&otherRange, 0, sizeof(otherRange));
        }

        range = time2;
        Intersection = CMTimeRangeGetIntersection(&v26, &range, &otherRange);
        time2 = v26;
        if (__56__NUVideoUtilities_trimCompositionTracks_toRange_error___block_invoke(Intersection, &v26.start))
        {
          v26.start.value = 0;
          *&v26.start.timescale = &v26;
          v26.start.epoch = 0x3032000000;
          v26.duration.value = __Block_byref_object_copy__15239;
          *&v26.duration.timescale = __Block_byref_object_dispose__15240;
          v26.duration.epoch = objc_alloc_init(MEMORY[0x1E695DF70]);
          segments = [v11 segments];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __56__NUVideoUtilities_trimCompositionTracks_toRange_error___block_invoke_2;
          v20[3] = &unk_1E810A798;
          v23 = time2;
          v21 = &__block_literal_global_472;
          v22 = &v26;
          [segments enumerateObjectsUsingBlock:v20];

          [v11 setSegments:*(*&v26.start.timescale + 40)];
          _Block_object_dispose(&v26, 8);
        }
      }

      v7 = [tracksCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_18:

  return v15;
}

BOOL __56__NUVideoUtilities_trimCompositionTracks_toRange_error___block_invoke(uint64_t a1, CMTime *a2)
{
  flags = a2->flags;
  result = (flags & 1) != 0 && (v4 = a2[1].flags, (v4 & 1) != 0) && (a2[1].epoch || a2[1].value < 0 || (time1 = a2[1], v6 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v6)) && (flags = a2->flags, (flags & 1) != 0) && (v4 = a2[1].flags, (v4 & 1) != 0)) && !a2[1].epoch && ((v4 | flags) & 0x10) == 0 && (a2[1].value & 0x8000000000000000) == 0;
  return result;
}

void __56__NUVideoUtilities_trimCompositionTracks_toRange_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 timeMapping];
    v32 = v28;
    [v4 timeMapping];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    memset(&v28, 0, sizeof(v28));
    memset(&v32, 0, sizeof(v32));
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(&v26, 0, sizeof(v26));
  }

  v27 = v26;
  v5 = *(a1 + 64);
  *&range.start.value = *(a1 + 48);
  *&range.start.epoch = v5;
  *&range.duration.timescale = *(a1 + 80);
  memset(&v22, 0, sizeof(v22));
  otherRange = v26;
  CMTimeRangeGetIntersection(&v22, &range, &otherRange);
  v6 = *(*(a1 + 32) + 16);
  range = v22;
  if (v6())
  {
    if (([v4 isEmpty] & 1) == 0)
    {
      memset(&range, 0, 24);
      *&otherRange.start.value = *&v22.start.value;
      otherRange.start.epoch = v22.start.epoch;
      rhs = v27.start;
      CMTimeSubtract(&range.start, &otherRange.start, &rhs);
      memset(&otherRange, 0, 24);
      rhs = v22.duration;
      lhs = v27.duration;
      CMTimeSubtract(&otherRange.start, &rhs, &lhs);
      rhs = v32.start;
      lhs = range.start;
      CMTimeAdd(&v32.start, &rhs, &lhs);
      lhs = v32.duration;
      start = otherRange.start;
      CMTimeAdd(&rhs, &lhs, &start);
      v32.duration = rhs;
    }

    rhs = **&MEMORY[0x1E6960CC0];
    if ([*(*(*(a1 + 40) + 8) + 40) count])
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) lastObject];
      v8 = v7;
      if (v7)
      {
        [v7 timeMapping];
      }

      else
      {
        v15 = 0u;
        memset(&v16, 0, sizeof(v16));
        v13 = 0u;
        v14 = 0u;
      }

      range = v16;
      CMTimeRangeGetEnd(&rhs, &range);
    }

    v27.start = rhs;
    v27.duration = v22.duration;
    v9 = MEMORY[0x1E6987F60];
    v10 = [v4 sourceURL];
    v11 = [v4 sourceTrackID];
    range = v32;
    otherRange = v27;
    v12 = [v9 compositionTrackSegmentWithURL:v10 trackID:v11 sourceTimeRange:&range targetTimeRange:&otherRange];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
  }
}

+ (id)validateAsset:(id)asset error:(id *)error
{
  v124 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!error)
  {
    v82 = NUAssertLogger_15131();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v83;
      _os_log_error_impl(&dword_1C0184000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v85 = NUAssertLogger_15131();
    v86 = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v86)
      {
        v89 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v90 = MEMORY[0x1E696AF00];
        v91 = v89;
        callStackSymbols = [v90 callStackSymbols];
        v93 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v89;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v93;
        _os_log_error_impl(&dword_1C0184000, v85, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v86)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v88 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v88;
      _os_log_error_impl(&dword_1C0184000, v85, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities validateAsset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2593, @"Invalid parameter not satisfying: %s", v94, v95, v96, v97, "error != NULL");
  }

  v7 = assetCopy;
  v8 = MEMORY[0x1E6987FE0];
  metadata = [assetCopy metadata];
  v10 = [v8 metadataItemsFromArray:metadata withKey:*MEMORY[0x1E69878E0] keySpace:0];
  firstObject = [v10 firstObject];
  stringValue = [firstObject stringValue];

  v13 = MEMORY[0x1E6987FE0];
  metadata2 = [v7 metadata];
  v15 = [v13 metadataItemsFromArray:metadata2 withKey:*MEMORY[0x1E69878E8] keySpace:0];
  firstObject2 = [v15 firstObject];
  stringValue2 = [firstObject2 stringValue];

  if (![stringValue isEqualToString:@"Apple"] || !objc_msgSend(stringValue2, "containsString:", @"iPhone"))
  {
    v26 = MEMORY[0x1E695E0F0];
    goto LABEL_91;
  }

  v18 = MEMORY[0x1E6987FE0];
  metadata3 = [v7 metadata];
  v20 = [v18 metadataItemsFromArray:metadata3 withKey:*MEMORY[0x1E69878F0] keySpace:0];
  firstObject3 = [v20 firstObject];
  stringValue3 = [firstObject3 stringValue];

  v23 = stringValue3;
  if (stringValue3 && ([stringValue3 isEqualToString:@"18.0"] & 1) == 0 && (objc_msgSend(stringValue3, "isEqualToString:", @"18.1") & 1) == 0 && !objc_msgSend(stringValue3, "isEqualToString:", @"18.2"))
  {
    v26 = MEMORY[0x1E695E0F0];
    goto LABEL_90;
  }

  v24 = [self metadataTrackWithLivePhotoInfoInAsset:v7];
  if (!v24)
  {
    v26 = MEMORY[0x1E695E0F0];
    goto LABEL_89;
  }

  v25 = [objc_opt_class() firstEnabledVideoTrackInAsset:v7 error:error];
  if (!v25)
  {
    v26 = 0;
    goto LABEL_88;
  }

  v104 = v23;
  v102 = stringValue2;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = *(MEMORY[0x1E6960C98] + 16);
  *&buf.start.value = *MEMORY[0x1E6960C98];
  *&buf.start.epoch = v27;
  *&buf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v118 = 0;
  v28 = [NUVideoUtilities validateMainVideoTrack:v7 potentiallyCorruptedRange:&buf error:&v118];
  v29 = v118;
  if (!v28)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v35 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v29;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Could not determine if the asset has corrupted main video frames - assuming it's invalid. %{public}@", &range, 0xCu);
    }

    v30 = [[NUVideoCorruptionInfo alloc] initWithType:0];
    [v26 addObject:v30];
    goto LABEL_24;
  }

  if ((buf.start.flags & 1) != 0 && (buf.duration.flags & 1) != 0 && !buf.duration.epoch && (buf.duration.value & 0x8000000000000000) == 0)
  {
    range = buf;
    v30 = CMTimeRangeCopyAsDictionary(&range, 0);
    v31 = [NUVideoCorruptionInfo alloc];
    v121 = v30;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    v33 = v32 = v25;
    v34 = [(NUVideoCorruptionInfo *)v31 initWithType:1 corruptedRanges:v33];

    v25 = v32;
    [v26 addObject:v34];

LABEL_24:
  }

  v36 = MEMORY[0x1E6987FE0];
  metadata4 = [v7 metadata];
  v38 = [v36 metadataItemsFromArray:metadata4 withKey:NUQuickTimeMetadataKey_SmartStyleRenderingVersion keySpace:0];
  firstObject4 = [v38 firstObject];

  v103 = firstObject4;
  if (!firstObject4)
  {
    v44 = v26;
    stringValue2 = v102;
    goto LABEL_87;
  }

  v117 = 0;
  v116 = 0;
  v40 = [NUVideoUtilities asset:v7 containsDuplicatePTSSamples:&v117 assetTrack:v25 error:&v116];
  v41 = v116;

  if (v40)
  {
    v42 = 0x1E695D000;
    if ((v117 & 1) == 0)
    {
      goto LABEL_36;
    }

    v43 = 2;
  }

  else
  {
    v42 = 0x1E695D000uLL;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v45 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v41;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Could not determine if asset contains duplicate PTS for the main video track - assuming it's invalid. %{public}@", &range, 0xCu);
    }

    v43 = 0;
  }

  v46 = [[NUVideoCorruptionInfo alloc] initWithType:v43];
  [v26 addObject:v46];

LABEL_36:
  v98 = v41;
  metadata5 = [v7 metadata];

  v106 = v7;
  v99 = v24;
  v100 = stringValue;
  v101 = v25;
  if (!metadata5)
  {
LABEL_41:
    v52 = [&unk_1F3F82DC0 arrayByAddingObject:&unk_1F3F826E0];
    goto LABEL_42;
  }

  metadata6 = [v7 metadata];
  v49 = PFFind();

  if (!v49 || ([v49 numberValue], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "BOOLValue"), v50, (v51 & 1) == 0))
  {

    goto LABEL_41;
  }

  v52 = &unk_1F3F82DC0;
LABEL_42:
  v53 = objc_alloc_init(*(v42 + 3952));
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v52;
  v54 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v113;
    do
    {
      v57 = 0;
      do
      {
        if (*v113 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v112 + 1) + 8 * v57);
        v59 = NUMediaCharacteristicForAuxiliaryImageType([v58 integerValue]);
        if (v59)
        {
          [v53 addObject:v59];
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
          }

          v60 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            LODWORD(range.start.value) = 138412290;
            *(&range.start.value + 4) = v58;
            _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Unexpected image type %@", &range, 0xCu);
          }
        }

        ++v57;
      }

      while (v55 != v57);
      v55 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
    }

    while (v55);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v61 = v53;
  v62 = [v61 countByEnumeratingWithState:&v108 objects:v119 count:16];
  if (!v62)
  {
    v29 = v98;
    v7 = v106;
    goto LABEL_81;
  }

  v63 = v62;
  v64 = *v109;
  v29 = v98;
  v7 = v106;
  do
  {
    v65 = 0;
    do
    {
      if (*v109 != v64)
      {
        objc_enumerationMutation(v61);
      }

      v66 = *(*(&v108 + 1) + 8 * v65);
      v67 = [MEMORY[0x1E69C0708] tracksWithMediaCharacteristic:v66 forAsset:v7];
      if ([v67 count])
      {
        if (v66 != NUMediaCharacteristicStyleDelta)
        {
          goto LABEL_69;
        }

        firstObject5 = [v67 firstObject];
        formatDescriptions = [(NUVideoCorruptionInfo *)firstObject5 formatDescriptions];
        v70 = [formatDescriptions count];

        if (v70 >= 2)
        {
          v107 = 0;
          v71 = [NUVideoUtilities computeMalformedTimeRangeTrackInAsset:v106 assetTrack:firstObject5 error:&v107];
          v72 = v107;

          if (v71)
          {
            if ([v71 count])
            {
              v73 = [[NUVideoCorruptionInfo alloc] initWithType:4];
              [(NUVideoCorruptionInfo *)v73 setCorruptedRanges:v71];
              goto LABEL_76;
            }
          }

          else
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
            }

            v74 = _NULogger;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
            {
              LODWORD(range.start.value) = 138543362;
              *(&range.start.value + 4) = v72;
              _os_log_error_impl(&dword_1C0184000, v74, OS_LOG_TYPE_ERROR, "Could not determine malformed ranges for this delta track - assuming it's invalid. %{public}@", &range, 0xCu);
            }

            v73 = [[NUVideoCorruptionInfo alloc] initWithType:0];
LABEL_76:
            [v26 addObject:v73];
          }

          goto LABEL_68;
        }
      }

      else
      {
        firstObject5 = [[NUVideoCorruptionInfo alloc] initWithType:3];
        [(NUVideoCorruptionInfo *)firstObject5 setTrackMediaCharateristic:v66];
        [v26 addObject:firstObject5];
      }

      v72 = v29;
LABEL_68:

      v29 = v72;
      v7 = v106;
LABEL_69:

      ++v65;
    }

    while (v63 != v65);
    v75 = [v61 countByEnumeratingWithState:&v108 objects:v119 count:16];
    v63 = v75;
  }

  while (v75);
LABEL_81:

  v76 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:v7];
  v77 = PFFind();
  if (v77)
  {
    v25 = v101;
    v24 = v99;
    stringValue = v100;
    stringValue2 = v102;
    if (![NUVideoUtilities track:v77 hasSamplesForEachSampleInTrack:v101])
    {
      v78 = 6;
      goto LABEL_85;
    }
  }

  else
  {
    v78 = 5;
    v24 = v99;
    stringValue = v100;
    stringValue2 = v102;
LABEL_85:
    v79 = [[NUVideoCorruptionInfo alloc] initWithType:v78];
    [v26 addObject:v79];

    v25 = v101;
  }

  v80 = v26;

LABEL_87:
  v23 = v104;
LABEL_88:

LABEL_89:
LABEL_90:

LABEL_91:

  return v26;
}

uint64_t __40__NUVideoUtilities_validateAsset_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [v2 isEqual:NUQuicktimeMetadataKey_SmartStyleRenderingBypassed];

  return v3;
}

+ (BOOL)validateMainVideoTrack:(id)track potentiallyCorruptedRange:(id *)range error:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  if (!error)
  {
    v38 = NUAssertLogger_15131();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_15131();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v42)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities validateMainVideoTrack:potentiallyCorruptedRange:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2472, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "error != NULL");
  }

  if (!range)
  {
    v45 = NUAssertLogger_15131();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outRange != NULL"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_15131();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        callStackSymbols3 = [v62 callStackSymbols];
        v65 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2114;
        *&buf[14] = v65;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities validateMainVideoTrack:potentiallyCorruptedRange:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2473, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "outRange != NULL");
  }

  v9 = trackCopy;
  v10 = [[NUVideoMetadataExtractor alloc] initWithAVAsset:trackCopy];
  timedMetadataArray = [(NUVideoMetadataExtractor *)v10 timedMetadataArray];
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 0;
  v80[5] = MEMORY[0x1E69E9820];
  v80[6] = 3221225472;
  v80[7] = __75__NUVideoUtilities_validateMainVideoTrack_potentiallyCorruptedRange_error___block_invoke;
  v80[8] = &unk_1E810A708;
  v80[9] = &v83;
  v80[10] = v81;
  v12 = PFFilter();
  v13 = v12;
  if (*(v84 + 24) && [v12 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5010000000;
    v92 = &unk_1C03FE0EF;
    v73 = *(MEMORY[0x1E6960C98] + 16);
    v74 = *MEMORY[0x1E6960C98];
    v93 = *MEMORY[0x1E6960C98];
    v94 = v73;
    v72 = *(MEMORY[0x1E6960C98] + 32);
    v95 = v72;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __75__NUVideoUtilities_validateMainVideoTrack_potentiallyCorruptedRange_error___block_invoke_2;
    v80[3] = &unk_1E810A730;
    v80[4] = buf;
    [v13 enumerateObjectsUsingBlock:v80];
    v75 = [objc_opt_class() firstEnabledVideoTrackInAsset:v9 error:error];
    if (v75)
    {
      v14 = MEMORY[0x1E6987EA8];
      v89 = *MEMORY[0x1E6966130];
      v90 = &unk_1F3F824B8;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v16 = [v14 assetReaderTrackOutputWithTrack:v75 outputSettings:v15];

      v17 = [self realTimeConsumptionAssetReaderForAsset:v9 error:error];
      v18 = v17;
      if (v17)
      {
        if ([v17 canAddOutput:v16])
        {
          [v18 addOutput:v16];
          v19 = *(*&buf[8] + 48);
          *&v79.start.value = *(*&buf[8] + 32);
          *&v79.start.epoch = v19;
          *&v79.duration.timescale = *(*&buf[8] + 64);
          [v18 setTimeRange:&v79];
          [v18 startReading];
          v71 = v18;
          value = *MEMORY[0x1E6960C70];
          flags = *(MEMORY[0x1E6960C70] + 12);
          timescale = *(MEMORY[0x1E6960C70] + 8);
          epoch = *(MEMORY[0x1E6960C70] + 16);
          while (1)
          {
            copyNextSampleBuffer = [v16 copyNextSampleBuffer];
            v23 = copyNextSampleBuffer;
            if (!copyNextSampleBuffer)
            {
              break;
            }

            CMSampleBufferGetPresentationTimeStamp(&v79.start, copyNextSampleBuffer);
            value = v79.start.value;
            flags = v79.start.flags;
            timescale = v79.start.timescale;
            epoch = v79.start.epoch;
            CFRelease(v23);
          }

          status = [v71 status];
          if (status == 2)
          {
            v31 = 0;
            v70 = 0;
          }

          else
          {
            if (status == 3)
            {
              error = [v71 error];
              code = [error code];
              v30 = error;
              v31 = code == -11821;

              v32 = !v31;
            }

            else
            {
              v31 = 0;
              v32 = 1;
            }

            v70 = v32;
          }

          [v71 cancelReading];
          if (v70)
          {
            *error = [v71 error];
          }

          else
          {
            if (v31)
            {
              if (flags)
              {
                v35 = *(*&buf[8] + 48);
                *&range.start.value = *(*&buf[8] + 32);
                *&range.start.epoch = v35;
                *&range.duration.timescale = *(*&buf[8] + 64);
                CMTimeRangeGetEnd(&lhs, &range);
                rhs.value = value;
                rhs.timescale = timescale;
                rhs.flags = flags;
                rhs.epoch = epoch;
                CMTimeSubtract(&range.start, &lhs, &rhs);
                lhs.value = value;
                lhs.timescale = timescale;
                lhs.flags = flags;
                lhs.epoch = epoch;
                CMTimeRangeMake(&v79, &lhs, &range.start);
                v36 = *&v79.start.epoch;
                *&range->var0.var0 = *&v79.start.value;
                *&range->var0.var3 = v36;
                v33 = *&v79.duration.timescale;
              }

              else
              {
                v34 = *(*&buf[8] + 48);
                v33 = *(*&buf[8] + 64);
                *&range->var0.var0 = *(*&buf[8] + 32);
                *&range->var0.var3 = v34;
              }
            }

            else
            {
              *&range->var0.var0 = v74;
              *&range->var0.var3 = v73;
              v33 = v72;
            }

            *&range->var1.var1 = v33;
          }

          v26 = v70 ^ 1;
          v18 = v71;
        }

        else
        {
          [NUError failureError:@"Could not add output to reader" object:v9];
          *error = v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      [NUError missingError:@"Missing main video track" object:v9];
      *error = v26 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = MEMORY[0x1E6960C98];
    v25 = *(MEMORY[0x1E6960C98] + 16);
    *&range->var0.var0 = *MEMORY[0x1E6960C98];
    *&range->var0.var3 = v25;
    *&range->var1.var1 = *(v24 + 32);
    v26 = 1;
  }

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v83, 8);

  return v26;
}

uint64_t __75__NUVideoUtilities_validateMainVideoTrack_potentiallyCorruptedRange_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isMetadataValid])
  {
    goto LABEL_6;
  }

  if ([v3 interpolatedFrame])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = [v3 interpolatedFrameValid];
  v6 = v5;
  if (v4 != 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = v5;
    goto LABEL_8;
  }

  *(*(*(a1 + 40) + 8) + 24) = [v3 interpolatedFrameValid];
  if (v6)
  {
LABEL_8:
    v7 = [v3 interpolatedFrameValid];
    goto LABEL_9;
  }

LABEL_6:
  v7 = 1;
LABEL_9:

  return v7;
}

__n128 __75__NUVideoUtilities_validateMainVideoTrack_potentiallyCorruptedRange_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if ((*(v5 + 44) & 1) == 0 || (*(v5 + 68) & 1) == 0 || *(v5 + 72) || (*(v5 + 56) & 0x8000000000000000) != 0)
  {
    if (v3)
    {
      [v3 time];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    duration = **&MEMORY[0x1E6960CC0];
    v6 = &v19;
    v7 = &v19;
    p_start = &start;
    p_duration = &duration;
  }

  else
  {
    if (v3)
    {
      [v3 time];
      v14 = *(*(a1 + 32) + 8);
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
      v14 = v5;
    }

    v15 = *(v14 + 32);
    CMTimeSubtract(&start, &duration, &v15);
    duration = *(v5 + 32);
    v6 = v16;
    v7 = v16;
    p_start = &duration;
    p_duration = &start;
  }

  CMTimeRangeMake(v7, p_start, p_duration);
  v10 = *(*(a1 + 32) + 8);
  v12 = *&v6->start.epoch;
  v11 = *&v6->duration.timescale;
  v10[2] = *&v6->start.value;
  v10[3] = v12;
  v10[4] = v11;

  return result;
}

+ (BOOL)asset:(id)asset containsDuplicatePTSSamples:(BOOL *)samples assetTrack:(id)track error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  trackCopy = track;
  if (!error)
  {
    v18 = NUAssertLogger_15131();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_15131();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities asset:containsDuplicatePTSSamples:assetTrack:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2402, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  if (!samples)
  {
    v25 = NUAssertLogger_15131();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outDuplicatePTS != NULL"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_15131();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols3 = [v42 callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities asset:containsDuplicatePTSSamples:assetTrack:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2403, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "outDuplicatePTS != NULL");
  }

  samplesCopy = samples;
  errorCopy = error;
  v11 = [self realTimeConsumptionAssetReaderForAsset:assetCopy error:error];
  if (v11)
  {
    v12 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
    if ([v11 canAddOutput:v12])
    {
      [v11 addOutput:v12];
      if ([v11 startReading])
      {
        v64 = 0;
        v65 = &v64;
        v66 = 0x2020000000;
        v67 = 0;
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v69 = __Block_byref_object_copy__15239;
        v70 = __Block_byref_object_dispose__15240;
        v71 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__15239;
        v58 = __Block_byref_object_dispose__15240;
        v59 = 0;
        while ((v61[3] & 1) == 0)
        {
          v13 = objc_opt_class();
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __71__NUVideoUtilities_asset_containsDuplicatePTSSamples_assetTrack_error___block_invoke;
          v53[3] = &unk_1E810A6E0;
          v53[4] = &v54;
          v53[5] = &v60;
          v53[6] = buf;
          v53[7] = &v64;
          [v13 readNextSampleBuffer:v11 output:v12 block:v53];
        }

        [v11 cancelReading];
        v16 = v55[5];
        v14 = v16 == 0;
        if (v16)
        {
          *errorCopy = [NUError errorWithCode:1 reason:@"Could not read next sample buffer" object:assetCopy underlyingError:?];
        }

        else
        {
          *samplesCopy = *(v65 + 24);
        }

        _Block_object_dispose(&v54, 8);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&v64, 8);
        goto LABEL_17;
      }

      error = [v11 error];
    }

    else
    {
      error = [NUError unknownError:@"Cannot add track output to asset reader" object:v11];
    }

    v14 = 0;
    *errorCopy = error;
LABEL_17:

    goto LABEL_18;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

void __71__NUVideoUtilities_asset_containsDuplicatePTSSamples_assetTrack_error___block_invoke(void *a1, opaqueCMSampleBuffer *a2, void *a3, char a4)
{
  v8 = a3;
  if (!a2)
  {
    if ((a4 & 1) == 0)
    {
      objc_storeStrong((*(a1[4] + 8) + 40), a3);
    }

    v11 = *(a1[5] + 8);
LABEL_8:
    *(v11 + 24) = 1;
    goto LABEL_10;
  }

  if (CMSampleBufferGetNumSamples(a2))
  {
    memset(&v14, 0, sizeof(v14));
    CMSampleBufferGetPresentationTimeStamp(&v14, a2);
    v9 = *(*(a1[6] + 8) + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v14.value];
    LODWORD(v9) = [v9 containsObject:v10];

    if (!v9)
    {
      v12 = *(*(a1[6] + 8) + 40);
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v14.value];
      [v12 addObject:v13];

      goto LABEL_10;
    }

    *(*(a1[7] + 8) + 24) = 1;
    v11 = *(a1[5] + 8);
    goto LABEL_8;
  }

LABEL_10:
}

+ (id)metadataTrackWithLivePhotoInfoInAsset:(id)asset
{
  v3 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:asset];
  v4 = PFFind();

  return v4;
}

+ (id)computeMalformedTimeRangeTrackInAsset:(id)asset assetTrack:(id)track error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  trackCopy = track;
  if (!error)
  {
    v16 = NUAssertLogger_15131();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_15131();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities computeMalformedTimeRangeTrackInAsset:assetTrack:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2263, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  errorCopy = error;
  v9 = [self realTimeConsumptionAssetReaderForAsset:assetCopy error:error];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v35 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
  if ([v9 canAddOutput:v35])
  {
    [v9 addOutput:v35];
    if ([v9 startReading])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x2020000000;
      v61 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = __Block_byref_object_copy__15239;
      v54 = __Block_byref_object_dispose__15240;
      v55 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4810000000;
      memset(v65, 0, sizeof(v65));
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x4810000000;
      v46[3] = &unk_1C03FE0EF;
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
      v63 = &unk_1C03FE0EF;
      v64 = 0;
      *&v65[5] = *(MEMORY[0x1E6960C70] + 16);
      *&v65[1] = *MEMORY[0x1E6960C70];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __75__NUVideoUtilities_computeMalformedTimeRangeTrackInAsset_assetTrack_error___block_invoke;
      v43[3] = &unk_1E810A670;
      v32 = v10;
      v44 = v32;
      v45 = v60;
      v11 = MEMORY[0x1C68D98A0](v43);
      if ((v57[3] & 1) == 0)
      {
        do
        {
          v12 = objc_opt_class();
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __75__NUVideoUtilities_computeMalformedTimeRangeTrackInAsset_assetTrack_error___block_invoke_2;
          v36[3] = &unk_1E810A698;
          v38 = v60;
          v37 = v11;
          v39 = buf;
          v40 = v46;
          v41 = &v50;
          v42 = &v56;
          [v12 readNextSampleBuffer:v9 output:v35 block:v36];
        }

        while (!*(v57 + 24));
      }

      [v9 cancelReading];
      if (v51[5])
      {
        [NUError errorWithCode:1 reason:@"Could not read next sample buffer" object:assetCopy underlyingError:?];
        *errorCopy = v13 = 0;
      }

      else
      {
        v13 = v32;
      }

      _Block_object_dispose(v46, 8);
      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v50, 8);

      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(v60, 8);

      goto LABEL_15;
    }

    error = [v9 error];
  }

  else
  {
    error = [NUError unknownError:@"Cannot add track output to asset reader" object:v9];
  }

  v13 = 0;
  *errorCopy = error;
LABEL_15:

LABEL_16:

  return v13;
}

void __75__NUVideoUtilities_computeMalformedTimeRangeTrackInAsset_assetTrack_error___block_invoke(uint64_t a1, CMTime *a2, CMTime *a3)
{
  memset(&v11, 0, sizeof(v11));
  lhs = *a3;
  rhs = *a2;
  CMTimeSubtract(&v8.start, &lhs, &rhs);
  lhs = *a2;
  CMTimeRangeMake(&v11, &lhs, &v8.start);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E695E480];
  v8 = v11;
  v7 = CMTimeRangeCopyAsDictionary(&v8, v6);
  [v5 addObject:v7];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __75__NUVideoUtilities_computeMalformedTimeRangeTrackInAsset_assetTrack_error___block_invoke_2(void *a1, opaqueCMSampleBuffer *a2, void *a3, int a4)
{
  v8 = a3;
  if (a2)
  {
    if (CMSampleBufferGetNumSamples(a2))
    {
      v9 = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
      v10 = PFExists();

      *(*(a1[7] + 8) + 40) = v10;
      FormatDescription = CMSampleBufferGetFormatDescription(a2);
      if (FormatDescription)
      {
        v12 = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E6960000]);
        v13 = [v12 integerValue];
      }

      else
      {
        v13 = 0;
      }

      *(*(a1[7] + 8) + 32) = v13;
      if (*(*(a1[7] + 8) + 32))
      {
        CMSampleBufferGetPresentationTimeStamp(&v27, a2);
        *(*(a1[7] + 8) + 44) = v27;
        v17 = *(a1[6] + 8);
        if ((*(v17 + 56) & 1) == 0)
        {
          v18 = *(a1[7] + 8);
          v19 = *(v18 + 32);
          v20 = *(v18 + 48);
          *(v17 + 64) = *(v18 + 64);
          *(v17 + 32) = v19;
          *(v17 + 48) = v20;
          goto LABEL_25;
        }

        v21 = *(a1[7] + 8);
        if (*(v17 + 32) == *(v21 + 32))
        {
          if (*(v21 + 40) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (*(v17 + 40) != 1 || (*(v21 + 40) & 1) == 0)
        {
          if (!*(v21 + 40))
          {
            *(*(a1[5] + 8) + 24) = 1;
            goto LABEL_24;
          }

LABEL_22:
          v22 = *(a1[4] + 16);
          v30 = *(v17 + 44);
          v31 = *(v17 + 60);
          v28 = *(v21 + 44);
          v29 = *(v21 + 60);
          v22();
          v17 = *(a1[6] + 8);
          v21 = *(a1[7] + 8);
LABEL_23:
          v23 = *(v21 + 32);
          v24 = *(v21 + 48);
          *(v17 + 64) = *(v21 + 64);
          *(v17 + 32) = v23;
          *(v17 + 48) = v24;
LABEL_24:
          v25 = *(a1[7] + 8);
          v26 = MEMORY[0x1E6960C70];
          *(v25 + 44) = *MEMORY[0x1E6960C70];
          *(v25 + 60) = *(v26 + 16);
          goto LABEL_25;
        }

        if (*(*(a1[5] + 8) + 24) != 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    if (a4)
    {
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        v14 = *(a1[6] + 8);
        v15 = *(a1[7] + 8);
        v16 = *(a1[4] + 16);
        v30 = *(v14 + 44);
        v31 = *(v14 + 60);
        v28 = *(v15 + 44);
        v29 = *(v15 + 60);
        v16();
      }
    }

    else
    {
      objc_storeStrong((*(a1[8] + 8) + 40), a3);
    }

    *(*(a1[9] + 8) + 24) = 1;
  }

LABEL_25:
}

+ (id)indexesOfSemanticStyleVideoSampleSlices:(id)slices
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__NUVideoUtilities_indexesOfSemanticStyleVideoSampleSlices___block_invoke;
  v5[3] = &unk_1E810A648;
  v6 = &unk_1F3F82DA8;
  v3 = [slices indexesOfObjectsPassingTest:v5];

  return v3;
}

uint64_t __60__NUVideoUtilities_indexesOfSemanticStyleVideoSampleSlices___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 containsMetadataSampleForKey:NUSourceIdentifierSmartStyleVideoMetadata])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v15 + 1) + 8 * v8) integerValue];
          v10 = @"Invalid";
          if (v9 <= 0xB)
          {
            v10 = off_1E8109908[v9];
          }

          v11 = v10;
          v12 = [v3 containsVideoFrameForKey:v11];

          if (!v12)
          {
            v13 = 0;
            goto LABEL_15;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)semanticStylePropertiesFromMetadataGroup:(id)group keyTime:(id *)time error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (!groupCopy)
  {
    v14 = NUAssertLogger_15131();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadataGroup != nil"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_15131();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities semanticStylePropertiesFromMetadataGroup:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2189, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "metadataGroup != nil");
  }

  if (!error)
  {
    v21 = NUAssertLogger_15131();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_15131();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols3 = [v38 callStackSymbols];
        v41 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities semanticStylePropertiesFromMetadataGroup:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2190, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "error != NULL");
  }

  v8 = groupCopy;
  items = [groupCopy items];
  if ([items count])
  {
    firstObject = [items firstObject];
    value = [firstObject value];

    *buf = *&time->var0;
    *&buf[16] = time->var3;
    v12 = [_NUSemanticStyleProperties semanticStylePropertiesFromVideoMetadata:value keyTime:buf error:error];
  }

  else
  {
    [NUError errorWithCode:3 reason:@"Missing metadata group in sample" object:v8];
    *error = v12 = 0;
  }

  return v12;
}

+ (CGAffineTransform)preferredTransformFromOrientation:(SEL)orientation size:(int64_t)size
{
  var1 = a5.var1;
  var0 = a5.var0;
  v8 = NUOrientationConcat(size, 4);
  v9 = NUOrientationConcat(4, v8);

  return NUOrientationMakeTransformWithSizeAndOrigin(v9, var0, var1, 0, 0, retstr);
}

+ (id)urlOfAVAsset:(id)asset
{
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceURL3 = [assetCopy URL];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = assetCopy;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      tracks = [v5 tracks];
      v24 = [tracks countByEnumeratingWithState:&v31 objects:v36 count:16];
      sourceURL3 = 0;
      if (v24)
      {
        v7 = *v32;
        v22 = *v32;
        v23 = v5;
        v25 = tracks;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v32 != v7)
            {
              objc_enumerationMutation(tracks);
            }

            v9 = *(*(&v31 + 1) + 8 * i);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            segments = [v9 segments];
            v11 = [segments countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v28;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v28 != v13)
                  {
                    objc_enumerationMutation(segments);
                  }

                  v15 = *(*(&v27 + 1) + 8 * j);
                  sourceURL = [v15 sourceURL];

                  if (sourceURL)
                  {
                    sourceURL2 = [v15 sourceURL];
                    v18 = [sourceURL3 isEqual:sourceURL2];

                    if ((v18 & 1) == 0)
                    {
                      if (sourceURL3)
                      {
                        if (_NULogOnceToken != -1)
                        {
                          dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
                        }

                        v21 = _NULogger;
                        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "More than one url found in AVComposition. urlOfAVAsset will return nil.", buf, 2u);
                        }

                        v19 = 0;
                        goto LABEL_25;
                      }

                      sourceURL3 = [v15 sourceURL];
                    }
                  }
                }

                v12 = [segments countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            tracks = v25;
            v7 = v22;
          }

          v5 = v23;
          v24 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v24);
      }
    }

    else
    {
      sourceURL3 = 0;
    }
  }

  sourceURL3 = sourceURL3;
  v19 = sourceURL3;
LABEL_25:

  return v19;
}

+ (id)compositionFromVideoComposition:(id)composition
{
  v40 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  instructions = [compositionCopy instructions];
  v5 = [instructions count];

  adjustmentComposition = 0;
  if (!v5)
  {
LABEL_7:
    adjustmentComposition = adjustmentComposition;
    v14 = adjustmentComposition;
    goto LABEL_22;
  }

  v7 = 0;
  while (1)
  {
    instructions2 = [compositionCopy instructions];
    v9 = [instructions2 objectAtIndexedSubscript:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_6:

    ++v7;
    instructions3 = [compositionCopy instructions];
    v13 = [instructions3 count];

    if (v7 >= v13)
    {
      goto LABEL_7;
    }
  }

  v10 = v9;
  v11 = v10;
  if (!adjustmentComposition)
  {
    adjustmentComposition = [v10 adjustmentComposition];

    goto LABEL_6;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
  }

  v15 = _NUAssertLogger;
  if (!os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
  {
    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = v15;
  v18 = [v16 stringWithFormat:@"More than one NUComposition found in the AVVideoComposition. Cannot determine which to use."];
  *v37 = 138543362;
  *&v37[4] = v18;
  _os_log_impl(&dword_1C0184000, v17, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v37, 0xCu);

  v19 = _NULogOnceToken;
  if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (v19 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
    }

LABEL_19:
    v31 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v33 = MEMORY[0x1E696AF00];
      v34 = v31;
      callStackSymbols = [v33 callStackSymbols];
      v36 = [callStackSymbols componentsJoinedByString:@"\n"];
      *v37 = 138543362;
      *&v37[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v37, 0xCu);
    }

    goto LABEL_21;
  }

  if (v19 != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
  }

LABEL_15:
  v20 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v20;
    callStackSymbols2 = [v26 callStackSymbols];
    v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *v37 = 138543618;
    *&v37[4] = specific;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v37, 0x16u);
  }

LABEL_21:
  _NUAssertContinueHandler("+[NUVideoUtilities compositionFromVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 2131, @"More than one NUComposition found in the AVVideoComposition. Cannot determine which to use.", v21, v22, v23, v24, *v37);

  v14 = 0;
LABEL_22:

  return v14;
}

+ (id)pixelFormatStringForCVPixelBuffer:(__CVBuffer *)buffer
{
  if (buffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    v4 = objc_opt_new();
    v7 = bswap32(PixelFormatType);
    [(__CFString *)v4 appendFormat:@"(%.4s)", &v7];
    switch(PixelFormatType)
    {
      case 0x78343230u:
        v5 = @" - 10bit video range";
        break;
      case 0x34323076u:
        v5 = @" - 8bit video range";
        break;
      case 0x34323066u:
        v5 = @" - 8bit full range";
        break;
      default:
        goto LABEL_10;
    }

    [(__CFString *)v4 appendString:v5];
  }

  else
  {
    v4 = &stru_1F3F4BA98;
  }

LABEL_10:

  return v4;
}

+ (id)debugDescriptionOfAssetTrack:(id)track
{
  v3 = MEMORY[0x1E696AD60];
  trackCopy = track;
  v5 = [v3 alloc];
  v6 = [trackCopy description];
  v7 = [v5 initWithString:v6];

  segments = [trackCopy segments];

  v9 = [segments description];
  [v7 appendFormat:@"\nSegments:\n\t%@", v9];

  v10 = [v7 copy];

  return v10;
}

+ (id)cleanApertureVideoSettingsFor:(id *)for scale:(id)scale videoSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  v29[4] = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v7 = for->var1;
  v26 = for->var0;
  v27 = v7;
  NUPixelRectScaleRational(&v26, scale.var0, scale.var1, 1, &v20);
  *&v21 = NUEvenPixelSize(v21, *(&v21 + 1));
  *(&v21 + 1) = v8;
  *&v9 = var0;
  *(&v9 + 1) = var1;
  v26 = v20;
  v27 = v21;
  v24[0] = 0;
  v24[1] = 0;
  v25 = v9;
  v10 = NU::RectT<long>::Intersection(v22, v26.i64, v24);
  v11 = v23;
  v12 = v22[0] - var0 / 2 + v22[2] / 2;
  v13 = v22[1] - var1 / 2 + v23 / 2;
  v28[0] = *MEMORY[0x1E6987C98];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v29[0] = v14;
  v28[1] = *MEMORY[0x1E6987C78];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v29[1] = v15;
  v28[2] = *MEMORY[0x1E6987C80];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v29[2] = v16;
  v28[3] = *MEMORY[0x1E6987C90];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v29[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  return v18;
}

+ (BOOL)compositionInstructions:(id)instructions areEqualToCompositionInstructions:(id)compositionInstructions
{
  instructionsCopy = instructions;
  compositionInstructionsCopy = compositionInstructions;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  instructions = [instructionsCopy instructions];
  instructions2 = [compositionInstructionsCopy instructions];
  v9 = instructions2;
  if ((instructions == 0) == (instructions2 != 0))
  {
    *(v17 + 24) = 0;
  }

  if (instructions && instructions2)
  {
    v10 = [instructions count];
    if (v10 == [v9 count])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __78__NUVideoUtilities_compositionInstructions_areEqualToCompositionInstructions___block_invoke;
      v13[3] = &unk_1E810A620;
      v14 = v9;
      v15 = &v16;
      [instructions enumerateObjectsUsingBlock:v13];
    }

    else
    {
      *(v17 + 24) = 0;
    }
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __78__NUVideoUtilities_compositionInstructions_areEqualToCompositionInstructions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(a3) = [v8 isEqual:?];

  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (id)videoCompositionDescription:(id)description
{
  v38 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendFormat:@"Video Composition: %@\n", descriptionCopy];
  [v4 appendString:@"Instructions: \n"];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = descriptionCopy;
  instructions = [descriptionCopy instructions];
  v6 = [instructions countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(instructions);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = v11;
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        range = time;
        v13 = CMTimeRangeCopyDescription(v9, &range);
        adjustmentComposition = [v12 adjustmentComposition];
        [v4 appendFormat:@"instruction i:%@ tr:%@ c:%@\n", v12, v13, adjustmentComposition];
      }

      v7 = [instructions countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  instructions2 = [v23 instructions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [instructions2 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(instructions2);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        if (v20)
        {
          [*(*(&v26 + 1) + 8 * j) timeRange];
          *&range.start.value = v24;
          range.start.epoch = v25;
          Seconds = CMTimeGetSeconds(&range.start);
          [v20 timeRange];
        }

        else
        {
          v25 = 0;
          v24 = 0u;
          memset(&range, 0, 24);
          Seconds = CMTimeGetSeconds(&range.start);
          memset(&range, 0, sizeof(range));
        }

        CMTimeRangeGetEnd(&time.start, &range);
        [v4 appendFormat:@"| %5.3f  %5.3f |", *&Seconds, CMTimeGetSeconds(&time.start)];
      }

      v17 = [instructions2 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v17);
  }

  return v4;
}

+ (id)videoDescription:(id)description
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = descriptionCopy;
  obj = [descriptionCopy tracks];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    v9 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        mediaType = [v11 mediaType];
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          memset(&v18, 0, sizeof(v18));
        }

        range = v18;
        v13 = CMTimeRangeCopyDescription(v9, &range);
        segments = [v11 segments];
        [v4 appendFormat:@"#:%d  media:%@  range:%@  segments %@\n", v7, mediaType, v13, segments];

        v7 = (v7 + 1);
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)repeatVideo:(id)video count:(int64_t)count error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  videoCopy = video;
  if (!videoCopy)
  {
    v25 = NUAssertLogger_15131();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "video != nil"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_15131();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf[0].value) = 138543618;
        *(&buf[0].value + 4) = v46;
        LOWORD(buf[0].flags) = 2114;
        *(&buf[0].flags + 2) = v50;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideo:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1922, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "video != nil");
  }

  if (count <= 0)
  {
    v32 = NUAssertLogger_15131();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count > 0"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_15131();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols3 = [v56 callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(buf[0].value) = 138543618;
        *(&buf[0].value + 4) = v55;
        LOWORD(buf[0].flags) = 2114;
        *(&buf[0].flags + 2) = v59;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideo:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1923, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "count > 0");
  }

  if (!error)
  {
    v39 = NUAssertLogger_15131();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_15131();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols5 = [v65 callStackSymbols];
        v68 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(buf[0].value) = 138543618;
        *(&buf[0].value + 4) = v64;
        LOWORD(buf[0].flags) = 2114;
        *(&buf[0].flags + 2) = v68;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].value) = 138543362;
      *(&buf[0].value + 4) = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideo:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1924, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "error != nil");
  }

  v8 = videoCopy;
  if (count == 1)
  {
    v9 = videoCopy;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E6988048]);
    v11 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v8];
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = v12;
      memset(buf, 0, sizeof(buf));
      if (v12 && ([v12 timeRange], (buf[0].flags & 1) != 0) && (buf[1].flags & 1) != 0 && !buf[1].epoch && (buf[1].value & 0x8000000000000000) == 0)
      {
        v96 = buf[1];
        v95 = buf[0];
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        tracks = [v8 tracks];
        v75 = [tracks countByEnumeratingWithState:&v91 objects:v97 count:16];
        v16 = 0;
        if (v75)
        {
          v17 = *v92;
          v77 = tracks;
          v78 = v10;
          v73 = *v92;
          v74 = v13;
          do
          {
            v18 = 0;
            v19 = v16;
            while (2)
            {
              if (*v92 != v17)
              {
                objc_enumerationMutation(tracks);
              }

              v76 = v18;
              v20 = *(*(&v91 + 1) + 8 * v18);
              mediaType = [v20 mediaType];
              v22 = [v10 addMutableTrackWithMediaType:mediaType preferredTrackID:{objc_msgSend(v20, "trackID")}];

              if (v20)
              {
                [v20 preferredTransform];
              }

              else
              {
                v89 = 0u;
                v90 = 0u;
                v88 = 0u;
              }

              *rhs = v88;
              *&rhs[16] = v89;
              v87 = v90;
              [v22 setPreferredTransform:rhs];
              [v20 preferredVolume];
              [v22 setPreferredVolume:?];
              [v22 setNaturalTimeScale:{objc_msgSend(v20, "naturalTimeScale")}];
              memset(&v85, 0, sizeof(v85));
              if (v20)
              {
                [v20 timeRange];
              }

              else
              {
                v83 = 0u;
                v84 = 0u;
                v82 = 0u;
              }

              *rhs = v82;
              *&rhs[16] = v83;
              lhs = v95;
              CMTimeAdd(&v85, &lhs, rhs);
              countCopy = count;
              do
              {
                if (v20)
                {
                  [v20 timeRange];
                }

                else
                {
                  v87 = 0u;
                  memset(rhs, 0, sizeof(rhs));
                }

                v80 = v19;
                lhs = v85;
                v24 = [v22 insertTimeRange:rhs ofTrack:v20 atTime:&lhs error:&v80];
                v16 = v80;

                if (!v24)
                {
                  *error = [NUError errorWithCode:1 reason:@"Failed to update track" object:v22 underlyingError:v16];

                  v9 = 0;
                  v10 = v78;
                  v13 = v74;
                  goto LABEL_40;
                }

                lhs = v85;
                v79 = v96;
                CMTimeAdd(rhs, &lhs, &v79);
                v85 = *rhs;
                v19 = v16;
                --countCopy;
              }

              while (countCopy);

              v18 = v76 + 1;
              v19 = v16;
              tracks = v77;
              v10 = v78;
              v17 = v73;
              if (v76 + 1 != v75)
              {
                continue;
              }

              break;
            }

            v13 = v74;
            v75 = [v77 countByEnumeratingWithState:&v91 objects:v97 count:16];
          }

          while (v75);
        }

        v9 = v10;
LABEL_40:
      }

      else
      {
        [NUError errorWithCode:2 reason:@"primary video track timerange is invalid" object:v8];
        *error = v9 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:3 reason:@"No video tracks in input" object:v8];
      *error = v9 = 0;
    }
  }

  return v9;
}

+ (id)repeatAudio:(id)audio count:(int64_t)count error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  audioCopy = audio;
  if (!audioCopy)
  {
    v29 = NUAssertLogger_15131();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "audio != nil"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_15131();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols = [v51 callStackSymbols];
        v54 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v50;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v54;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatAudio:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1845, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "audio != nil");
  }

  if (count <= 0)
  {
    v36 = NUAssertLogger_15131();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count > 0"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_15131();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols3 = [v60 callStackSymbols];
        v63 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v59;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v63;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatAudio:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1846, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "count > 0");
  }

  if (!error)
  {
    v43 = NUAssertLogger_15131();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_15131();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v47)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        callStackSymbols5 = [v69 callStackSymbols];
        v72 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v68;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v72;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatAudio:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1847, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "error != nil");
  }

  v8 = audioCopy;
  if (count == 1 || ([audioCopy inputParameters], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    audioMix = [v8 copy];
  }

  else
  {
    v89 = 0;
    memset(&buf, 0, sizeof(buf));
    inputParameters = [v8 inputParameters];
    v12 = [inputParameters objectAtIndexedSubscript:0];

    v79 = *MEMORY[0x1E6960CC0];
    *&v88.value = *MEMORY[0x1E6960CC0];
    v13 = *(MEMORY[0x1E6960CC0] + 16);
    v88.epoch = v13;
    do
    {
      range.start = v88;
      v14 = [v12 getVolumeRampForTime:&range startVolume:&v89 + 4 endVolume:&v89 timeRange:&buf];
      range = buf;
      CMTimeRangeGetEnd(&v88, &range);
    }

    while ((v14 & 1) != 0);
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    inputParameters2 = [v8 inputParameters];
    v17 = [v15 initWithCapacity:{objc_msgSend(inputParameters2, "count")}];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v77 = v8;
    obj = [v8 inputParameters];
    v18 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v84;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v84 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v83 + 1) + 8 * i);
          v23 = [v22 mutableCopy];
          v24 = 1;
          do
          {
            *&range.start.value = v79;
            range.start.epoch = v13;
            if ([v22 getVolumeRampForTime:&range startVolume:&v89 + 4 endVolume:&v89 timeRange:&buf])
            {
              do
              {
                memset(&v82, 0, sizeof(v82));
                time.start = v88;
                CMTimeMultiplyByRatio(&range.start, &time.start, v24, 1);
                *&time.start.value = *&buf.start.value;
                time.start.epoch = buf.start.epoch;
                CMTimeAdd(&v82, &time.start, &range.start);
                memset(&range, 0, sizeof(range));
                time.start = v82;
                duration = buf.duration;
                CMTimeRangeMake(&range, &time.start, &duration);
                LODWORD(v25) = HIDWORD(v89);
                LODWORD(v26) = v89;
                time = range;
                [v23 setVolumeRampFromStartVolume:&time toEndVolume:v25 timeRange:v26];
                range = buf;
                CMTimeRangeGetEnd(&time.start, &range);
                *&range.start.value = *&time.start.value;
                range.start.epoch = time.start.epoch;
              }

              while (([v22 getVolumeRampForTime:&range startVolume:&v89 + 4 endVolume:&v89 timeRange:&buf] & 1) != 0);
            }

            range = buf;
            CMTimeRangeGetEnd(&time.start, &range);
            ++v24;
          }

          while (v24 != count);
          [v17 addObject:v23];
        }

        v19 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v19);
    }

    audioMix = [MEMORY[0x1E6988038] audioMix];
    [audioMix setInputParameters:v17];

    v8 = v77;
  }

  return audioMix;
}

+ (id)repeatVideoComposition:(id)composition count:(int64_t)count error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v29 = NUAssertLogger_15131();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoComposition != nil"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rhs, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_15131();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols = [v51 callStackSymbols];
        v54 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(rhs.start.value) = 138543618;
        *(&rhs.start.value + 4) = v50;
        LOWORD(rhs.start.flags) = 2114;
        *(&rhs.start.flags + 2) = v54;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rhs, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rhs, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideoComposition:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1793, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "videoComposition != nil");
  }

  if (count <= 0)
  {
    v36 = NUAssertLogger_15131();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count > 0"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rhs, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_15131();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols3 = [v60 callStackSymbols];
        v63 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(rhs.start.value) = 138543618;
        *(&rhs.start.value + 4) = v59;
        LOWORD(rhs.start.flags) = 2114;
        *(&rhs.start.flags + 2) = v63;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rhs, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rhs, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideoComposition:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1794, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "count > 0");
  }

  if (!error)
  {
    v43 = NUAssertLogger_15131();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rhs, 0xCu);
    }

    v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_15131();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v47)
      {
        v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v69 = MEMORY[0x1E696AF00];
        v70 = v68;
        callStackSymbols5 = [v69 callStackSymbols];
        v72 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(rhs.start.value) = 138543618;
        *(&rhs.start.value + 4) = v68;
        LOWORD(rhs.start.flags) = 2114;
        *(&rhs.start.flags + 2) = v72;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rhs, 0x16u);
      }
    }

    else if (v47)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rhs, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities repeatVideoComposition:count:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1795, @"Invalid parameter not satisfying: %s", v73, v74, v75, v76, "error != nil");
  }

  v8 = compositionCopy;
  if (count == 1)
  {
    v9 = compositionCopy;
  }

  else
  {
    instructions = [compositionCopy instructions];
    if ([instructions count])
    {
      v78 = v8;
      v80 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      v100.epoch = v11;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      *&v100.value = v80;
      v77 = instructions;
      v12 = instructions;
      v13 = [v12 countByEnumeratingWithState:&v96 objects:v103 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v97;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v97 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v96 + 1) + 8 * i);
            if (v17)
            {
              [v17 timeRange];
            }

            else
            {
              memset(v95, 0, sizeof(v95));
              v94 = 0u;
            }

            *&rhs.start.value = *(v95 + 8);
            rhs.start.epoch = *(&v95[1] + 1);
            lhs = v100;
            CMTimeAdd(&v100, &lhs, &rhs.start);
          }

          v14 = [v12 countByEnumeratingWithState:&v96 objects:v103 count:16];
        }

        while (v14);
      }

      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0;
      *&lhs.value = v80;
      lhs.epoch = v11;
      countCopy = count;
      do
      {
        v81 = v19;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v20 = v12;
        v21 = [v20 countByEnumeratingWithState:&v89 objects:v102 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v90;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v90 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v89 + 1) + 8 * j);
              v26 = [v25 copy];
              renderContext = [v25 renderContext];

              [v26 setRenderContext:renderContext];
              memset(&v88, 0, sizeof(v88));
              if (v26)
              {
                [v26 timeRange];
              }

              else
              {
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
              }

              *&rhs.start.value = v85;
              rhs.start.epoch = v86;
              start = lhs;
              CMTimeAdd(&v88, &rhs.start, &start);
              if (v26)
              {
                [v26 timeRange];
              }

              else
              {
                memset(v82, 0, sizeof(v82));
              }

              *&rhs.start.value = *(v82 + 8);
              rhs.start.epoch = *(&v82[1] + 1);
              start = v88;
              CMTimeRangeMake(&v83, &start, &rhs.start);
              rhs = v83;
              [v26 setTimeRange:&rhs];
              [v18 addObject:v26];
            }

            v22 = [v20 countByEnumeratingWithState:&v89 objects:v102 count:16];
          }

          while (v22);
        }

        rhs.start = lhs;
        v88 = v100;
        CMTimeAdd(&lhs, &rhs.start, &v88);
        v19 = v81 + 1;
      }

      while (v81 + 1 != countCopy);
      v8 = v78;
      v9 = [v78 copy];
      [v9 setInstructions:v18];

      instructions = v77;
    }

    else
    {
      [NUError errorWithCode:3 reason:@"missing instructions" object:v8];
      *error = v9 = 0;
    }
  }

  return v9;
}

+ ($209B98C1CDF2DEBD503CBDE3C0ED7C90)convertTimeRange:(SEL)range toMaximumTimeScaleOfRange:(id *)ofRange
{
  if (a5->var0.var1 <= a5->var1.var1)
  {
    var1 = a5->var1.var1;
  }

  else
  {
    var1 = a5->var0.var1;
  }

  memset(&v12, 0, sizeof(v12));
  time = ofRange->var0;
  CMTimeConvertScale(&v12, &time, var1, kCMTimeRoundingMethod_RoundAwayFromZero);
  memset(&time, 0, sizeof(time));
  start = ofRange->var1;
  CMTimeConvertScale(&time, &start, var1, kCMTimeRoundingMethod_RoundTowardZero);
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  start = v12;
  v9 = time;
  return CMTimeRangeMake(retstr, &start, &v9);
}

+ ($209B98C1CDF2DEBD503CBDE3C0ED7C90)conformRange:(SEL)range inRange:(id *)inRange
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v7 = *&inRange->var0.var3;
  *&range.start.value = *&inRange->var0.var0;
  *&range.start.epoch = v7;
  *&range.duration.timescale = *&inRange->var1.var1;
  v8 = *&a5->var0.var3;
  *&otherRange.start.value = *&a5->var0.var0;
  *&otherRange.start.epoch = v8;
  *&otherRange.duration.timescale = *&a5->var1.var1;
  [a2 convertTimeRange:&range toMaximumTimeScaleOfRange:&otherRange];
  v9 = *&a5->var0.var3;
  *&range.start.value = *&a5->var0.var0;
  *&range.start.epoch = v9;
  *&range.duration.timescale = *&a5->var1.var1;
  v10 = *&retstr->var0.var3;
  *&otherRange.start.value = *&retstr->var0.var0;
  *&otherRange.start.epoch = v10;
  *&otherRange.duration.timescale = *&retstr->var1.var1;
  result = CMTimeRangeContainsTimeRange(&range, &otherRange);
  if (!result)
  {
    v12 = *&a5->var0.var3;
    *&otherRange.start.value = *&a5->var0.var0;
    *&otherRange.start.epoch = v12;
    *&otherRange.duration.timescale = *&a5->var1.var1;
    v13 = *&retstr->var0.var3;
    *&v15.start.value = *&retstr->var0.var0;
    *&v15.start.epoch = v13;
    *&v15.duration.timescale = *&retstr->var1.var1;
    result = CMTimeRangeGetIntersection(&range, &otherRange, &v15);
    v14 = *&range.start.epoch;
    *&retstr->var0.var0 = *&range.start.value;
    *&retstr->var0.var3 = v14;
    *&retstr->var1.var1 = *&range.duration.timescale;
  }

  return result;
}

+ (id)newPixelBufferOfSize:(id)size format:(unsigned int)format
{
  var1 = size.var1;
  var0 = size.var0;
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = *MEMORY[0x1E696CF98];
  v27[0] = @"NUVideoUtilities";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v24 = *MEMORY[0x1E69660D8];
  v25 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  pixelBufferOut = 0;
  v9 = CVPixelBufferCreate(0, var0, var1, format, v8, &pixelBufferOut);
  if (v9)
  {
    v10 = v9;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v11 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      v17 = var0;
      v18 = 1024;
      v19 = var1;
      v20 = 1024;
      formatCopy = format;
      v22 = 1024;
      v23 = v10;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Failed to allocate CVPixelBuffer of size: %dx%d, format: %u, error: %d", buf, 0x1Au);
    }

    v12 = 0;
  }

  else
  {
    v13 = [NUCVPixelBuffer alloc];
    v12 = [(NUCVPixelBuffer *)v13 initWithCVPixelBuffer:pixelBufferOut];
    CVPixelBufferRelease(pixelBufferOut);
  }

  return v12;
}

+ ($41299696D20B6C925B74A5D5E4D5CC87)cleanApertureOfTrack:(SEL)track oriented:(id)oriented
{
  v5 = a5;
  orientedCopy = oriented;
  formatDescriptions = [orientedCopy formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  CleanAperture = CMVideoFormatDescriptionGetCleanAperture(firstObject, 0);
  NU::RectT<long>::RectT(v23, &CleanAperture, 1);
  v11 = v23[0];
  v12 = v23[1];
  retstr->var0 = v23[0];
  retstr->var1 = v12;
  if (v5)
  {
    v19 = v12;
    v20 = v11;
    v13 = [a2 encodedPixelSizeOfTrack:orientedCopy oriented:0];
    v15 = v14;
    if (orientedCopy)
    {
      [orientedCopy preferredTransform];
    }

    else
    {
      v22 = 0u;
      memset(&CleanAperture, 0, sizeof(CleanAperture));
    }

    v16 = [a2 videoOrientationForAssetPreferredTransform:&CleanAperture];
    CleanAperture.origin = v20;
    CleanAperture.size = v19;
    NU::RectT<long>::applyOrientation(&CleanAperture, v16, v13, v15);
    size = CleanAperture.size;
    retstr->var0 = CleanAperture.origin;
    retstr->var1 = size;
  }

  return result;
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)encodedPixelSizeOfTrack:(id)track oriented:(BOOL)oriented
{
  orientedCopy = oriented;
  trackCopy = track;
  formatDescriptions = [trackCopy formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  Dimensions = CMVideoFormatDescriptionGetDimensions(firstObject);
  v10 = Dimensions;
  v11 = Dimensions >> 32;
  if (((Dimensions | (Dimensions >> 32)) & 0x8000000000000000) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v16 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];

    if (!orientedCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!orientedCopy)
  {
    goto LABEL_7;
  }

  if (trackCopy)
  {
    [trackCopy preferredTransform];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v10 = NUOrientationTransformImageSize([self videoOrientationForAssetPreferredTransform:v17], v10, v11);
  v11 = v12;
LABEL_7:

  v13 = v10;
  v14 = v11;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)naturalSizeOfTrack:(id)track oriented:(BOOL)oriented
{
  orientedCopy = oriented;
  trackCopy = track;
  [trackCopy naturalSize];
  v8 = v7;
  [trackCopy naturalSize];
  v10 = v9;
  if ((v9 | v8) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v15 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];

    if (!orientedCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!orientedCopy)
  {
    goto LABEL_7;
  }

  if (trackCopy)
  {
    [trackCopy preferredTransform];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v8 = NUOrientationTransformImageSize([self videoOrientationForAssetPreferredTransform:v16], v8, v10);
  v10 = v11;
LABEL_7:

  v12 = v8;
  v13 = v10;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

+ (int64_t)videoOrientationForAsset:(id)asset videoComposition:(id)composition
{
  v13 = *MEMORY[0x1E69E9840];
  if (composition)
  {
    return 1;
  }

  v10 = 0;
  v6 = [NUVideoUtilities firstEnabledVideoTrackInAsset:asset error:&v10];
  v7 = v10;
  if (v6)
  {
    [v6 preferredTransform];
    v4 = [self videoOrientationForAssetPreferredTransform:buf];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Failed to get video track: %{public}@", buf, 0xCu);
    }

    v4 = 1;
  }

  return v4;
}

+ (int64_t)videoOrientationForAssetPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v3;
  v7[2] = *&transform->tx;
  v4 = NUOrientationFromCGAffineTransform(v7);
  v5 = NUOrientationConcat(v4, 4);

  return NUOrientationConcat(4, v5);
}

+ (id)readTimedMetadataGroupAtTime:(id *)time fromTrack:(id)track outputSettings:(id)settings videoComposition:(id)composition error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  settingsCopy = settings;
  compositionCopy = composition;
  if (!error)
  {
    v25 = NUAssertLogger_15131();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &range, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_15131();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(range.start.value) = 138543618;
        *(&range.start.value + 4) = v32;
        LOWORD(range.start.flags) = 2114;
        *(&range.start.flags + 2) = v36;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &range, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &range, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readTimedMetadataGroupAtTime:fromTrack:outputSettings:videoComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1625, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v15 = compositionCopy;
  asset = [trackCopy asset];
  v17 = [self realTimeConsumptionAssetReaderForAsset:asset error:error];
  if (!v17)
  {
    nextTimedMetadataGroup = 0;
    goto LABEL_14;
  }

  memset(&v44, 0, sizeof(v44));
  [NUVideoUtilities minimumFrameDurationForAsset:asset];
  if (trackCopy)
  {
    [trackCopy timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&lhs, &range);
  range.start = v44;
  CMTimeSubtract(&time2, &lhs, &range.start);
  lhs = *time;
  CMTimeMinimum(&range.start, &lhs, &time2);
  *&time->var0 = *&range.start.value;
  epoch = range.start.epoch;
  time->var3 = range.start.epoch;
  *&time2.value = *&time->var0;
  time2.epoch = epoch;
  lhs = **&MEMORY[0x1E6960CC0];
  CMTimeMaximum(&range.start, &time2, &lhs);
  *&time->var0 = *&range.start.value;
  v20 = range.start.epoch;
  time->var3 = range.start.epoch;
  *&range.start.value = *&time->var0;
  range.start.epoch = v20;
  time2 = v44;
  CMTimeRangeMake(&v41, &range.start, &time2);
  range = v41;
  [v17 setTimeRange:&range];
  v21 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:trackCopy outputSettings:settingsCopy];
  v22 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v21];
  if (([v17 canAddOutput:v21] & 1) == 0)
  {
    error = [NUError unknownError:@"Cannot add track output to asset reader" object:v17];
LABEL_12:
    nextTimedMetadataGroup = 0;
    *error = error;
    goto LABEL_13;
  }

  [v17 addOutput:v21];
  if (([v17 startReading] & 1) == 0)
  {
    error = [v17 error];
    goto LABEL_12;
  }

  nextTimedMetadataGroup = [v22 nextTimedMetadataGroup];
  [v17 cancelReading];
LABEL_13:

LABEL_14:

  return nextTimedMetadataGroup;
}

+ (__CVBuffer)readVideoFrameAtTime:(id *)time fromAsset:(id)asset reader:(id)reader readerOutput:(id)output error:(id *)error
{
  assetCopy = asset;
  readerCopy = reader;
  outputCopy = output;
  [outputCopy setAlwaysCopiesSampleData:1];
  CMTimeMake(&duration.start, 1, 240);
  start = *time;
  CMTimeRangeMake(&v28, &start, &duration.start);
  duration = v28;
  [readerCopy setTimeRange:&duration];
  if (([readerCopy canAddOutput:outputCopy] & 1) == 0)
  {
    error = [NUError unknownError:@"Cannot add track output to asset reader" object:readerCopy];
LABEL_6:
    v14 = 0;
    *error = error;
    goto LABEL_7;
  }

  [readerCopy addOutput:outputCopy];
  if (([readerCopy startReading] & 1) == 0)
  {
    error = [readerCopy error];
    goto LABEL_6;
  }

  duration.start.value = 0;
  *&duration.start.timescale = &duration;
  *&duration.start.epoch = 0x2020000000uLL;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __77__NUVideoUtilities_readVideoFrameAtTime_fromAsset_reader_readerOutput_error___block_invoke;
  v20 = &unk_1E810A5F8;
  p_duration = &duration;
  errorCopy = error;
  v24 = *&time->var0;
  var3 = time->var3;
  v21 = assetCopy;
  [NUVideoUtilities readNextPixelBuffer:readerCopy output:outputCopy block:&v17];
  [readerCopy cancelReading];
  v14 = *(*&duration.start.timescale + 24);

  _Block_object_dispose(&duration, 8);
LABEL_7:

  return v14;
}

void __77__NUVideoUtilities_readVideoFrameAtTime_fromAsset_reader_readerOutput_error___block_invoke(uint64_t a1, const void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a2)
  {
    CFRetain(a2);
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  else if (v7 || !a4)
  {
    v13 = v7;
    **(a1 + 48) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = *MEMORY[0x1E695E480];
    time = *(a1 + 56);
    v11 = CMTimeCopyDescription(v10, &time);
    v12 = *(a1 + 32);
    if (v12)
    {
      [v12 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = CMTimeCopyDescription(v10, &time);
    v15 = [v9 stringWithFormat:@"read past end of video. requestedTime:%@ assetDuration:%@", v11, v14];
    **(a1 + 48) = [NUError invalidError:v15 object:*(a1 + 32)];
  }
}

+ (__CVBuffer)readVideoFrameAtTime:(id *)time fromAsset:(id)asset outputSettings:(id)settings videoComposition:(id)composition auxiliaryImageType:(int64_t)type error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  settingsCopy = settings;
  compositionCopy = composition;
  if (!error)
  {
    v22 = NUAssertLogger_15131();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_15131();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readVideoFrameAtTime:fromAsset:outputSettings:videoComposition:auxiliaryImageType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1559, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "error != NULL");
  }

  v17 = compositionCopy;
  v18 = [self realTimeConsumptionAssetReaderForAsset:assetCopy error:error];
  if (v18)
  {
    v19 = [self readerOutputForAsset:assetCopy outputSettings:settingsCopy videoComposition:v17 auxiliaryImageType:type error:error];
    if (v19)
    {
      *buf = *&time->var0;
      *&buf[16] = time->var3;
      v20 = [self readVideoFrameAtTime:buf fromAsset:assetCopy reader:v18 readerOutput:v19 error:error];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)readerOutputForAssetTrack:(id)track outputSettings:(id)settings error:(id *)error
{
  trackCopy = track;
  settingsCopy = settings;
  v8 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:trackCopy outputSettings:settingsCopy];

  return v8;
}

+ (id)readerOutputForAsset:(id)asset outputSettings:(id)settings videoComposition:(id)composition auxiliaryImageType:(int64_t)type error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  settingsCopy = settings;
  compositionCopy = composition;
  if (!error)
  {
    v19 = NUAssertLogger_15131();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v36 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_15131();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readerOutputForAsset:outputSettings:videoComposition:auxiliaryImageType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1519, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != nil");
  }

  v15 = compositionCopy;
  if (compositionCopy)
  {
    v16 = [self requiredVideoCompositionOutputTracksForAsset:assetCopy];
    v17 = [objc_alloc(MEMORY[0x1E6987EB8]) initWithVideoTracks:v16 videoSettings:settingsCopy];
    [v17 setVideoComposition:v15];
  }

  else
  {
    if (type > 1)
    {
      [NUVideoUtilities auxiliaryTrackInAsset:assetCopy ofType:type error:error];
    }

    else
    {
      [NUVideoUtilities firstEnabledVideoTrackInAsset:assetCopy error:error];
    }
    v16 = ;
    if (v16)
    {
      v17 = [self readerOutputForAssetTrack:v16 outputSettings:settingsCopy error:error];
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (id)requiredVideoCompositionOutputTracksForAsset:(id)asset
{
  v3 = MEMORY[0x1E69C0708];
  v4 = *MEMORY[0x1E6987608];
  assetCopy = asset;
  v6 = [v3 tracksWithMediaType:v4 forAsset:assetCopy];
  v7 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875B0] forAsset:assetCopy];

  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

+ (id)deepMutableCopyVideoComposition:(id)composition
{
  v39 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v4 = [compositionCopy mutableCopy];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  instructions = [compositionCopy instructions];
  v7 = [instructions countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(instructions);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
          }

          v14 = _NUAssertLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"incorrect class of video instruction"];
            *buf = 138543362;
            v35 = v15;
            _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
          }

          specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_624);
          }

          v17 = _NUAssertLogger;
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (specific)
          {
            if (v18)
            {
              v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
              v22 = MEMORY[0x1E696AF00];
              v23 = v21;
              callStackSymbols = [v22 callStackSymbols];
              v25 = [callStackSymbols componentsJoinedByString:@"\n"];
              *buf = 138543618;
              v35 = v21;
              v36 = 2114;
              v37 = v25;
              _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
            }
          }

          else if (v18)
          {
            callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
            v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            v35 = v20;
            _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }

          _NUAssertFailHandler("+[NUVideoUtilities deepMutableCopyVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1494, @"incorrect class of video instruction", v26, v27, v28, v29, v30);
        }

        v12 = [v11 copy];
        [v5 addObject:v12];
      }

      v8 = [instructions countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }

  [v4 setInstructions:v5];

  return v4;
}

+ (BOOL)updateVideoMetadataAtURL:(id)l withItems:(id)items stillImageTime:(id *)time error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  lCopy = l;
  itemsCopy = items;
  if (!error)
  {
    v45 = NUAssertLogger_15131();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_15131();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities updateVideoMetadataAtURL:withItems:stillImageTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1312, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "error != NULL");
  }

  v12 = itemsCopy;
  v13 = [MEMORY[0x1E6987E28] assetWithURL:lCopy];
  v14 = [self realTimeConsumptionAssetReaderForAsset:v13 error:error];
  if (!v14)
  {
    LOBYTE(v40) = 0;
    goto LABEL_30;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v17 = MEMORY[0x1E695DFF8];
  v18 = NSTemporaryDirectory();
  v19 = [v17 fileURLWithPath:v18 isDirectory:1];

  v69 = v19;
  v20 = [v19 URLByAppendingPathComponent:uUIDString isDirectory:0];
  pathExtension = [lCopy pathExtension];
  v22 = [v20 URLByAppendingPathExtension:pathExtension];

  pathExtension2 = [lCopy pathExtension];
  v24 = NUFileTypeFromExtension(pathExtension2);

  v67 = v24;
  v68 = v22;
  v25 = [objc_alloc(MEMORY[0x1E6987ED8]) initWithURL:v22 fileType:v24 error:error];
  if (!v25)
  {
    LOBYTE(v40) = 0;
    v41 = v68;
    v42 = v69;
    v43 = v67;
    goto LABEL_29;
  }

  errorCopy = error;
  v63 = uUIDString;
  v66 = lCopy;
  metadata = [v13 metadata];
  v27 = [metadata mutableCopy];

  v65 = v12;
  [v27 addObjectsFromArray:v12];
  v61 = v27;
  [v25 setMetadata:v27];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v64 = v13;
  obj = [v13 tracks];
  v28 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (!v28)
  {
    goto LABEL_16;
  }

  v29 = v28;
  v30 = *v73;
  v70 = *MEMORY[0x1E69875D0];
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v73 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v72 + 1) + 8 * i);
      if (time->var2)
      {
        mediaType = [*(*(&v72 + 1) + 8 * i) mediaType];
        v34 = [mediaType isEqualToString:v70];

        if (v34)
        {
          continue;
        }
      }

      v35 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v32 outputSettings:0];
      [v35 setAlwaysCopiesSampleData:0];
      if ([v14 canAddOutput:v35])
      {
        [v14 addOutput:v35];
        v36 = objc_alloc(MEMORY[0x1E6987EE0]);
        mediaType2 = [v32 mediaType];
        v38 = [v36 initWithMediaType:mediaType2 outputSettings:0];

        if ([v25 canAddInput:v38])
        {
          [v25 addInput:v38];

          continue;
        }

        *errorCopy = [NUError unknownError:@"Cannot add track input to asset writer" object:v14];
      }

      else
      {
        *errorCopy = [NUError unknownError:@"Cannot add track output to asset reader" object:v14];
      }

      LOBYTE(v40) = 0;
      v12 = v65;
      lCopy = v66;
      uUIDString = v63;
      v13 = v64;
      v41 = v68;
      v42 = v69;
      goto LABEL_24;
    }

    v29 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_16:

  *buf = *&time->var0;
  *&buf[16] = time->var3;
  if (![NUVideoUtilities readFromReader:v14 andWriteToWriter:v25 stillImageTime:buf createCustomMetadata:1 geometryTransform:0 inputSize:0 outputSize:*MEMORY[0x1E695F060] progress:*(MEMORY[0x1E695F060] + 8) error:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), errorCopy])
  {
    LOBYTE(v40) = 0;
    v12 = v65;
    lCopy = v66;
    uUIDString = v63;
    v13 = v64;
    v41 = v68;
    v42 = v69;
LABEL_27:
    v43 = v67;
    goto LABEL_28;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  lCopy = v66;
  v40 = [defaultManager removeItemAtURL:v66 error:errorCopy];

  uUIDString = v63;
  v41 = v68;
  if (!v40)
  {
    v13 = v64;
    v12 = v65;
    v42 = v69;
    goto LABEL_27;
  }

  obj = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v40) = [obj moveItemAtURL:v68 toURL:v66 error:errorCopy];
  v13 = v64;
  v12 = v65;
  v42 = v69;
LABEL_24:
  v43 = v67;

LABEL_28:
LABEL_29:

LABEL_30:
  return v40;
}

+ (BOOL)readFromReader:(id)reader andWriteToWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize progress:(id)self0 error:(id *)self1
{
  metadataCopy = metadata;
  v161[1] = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  writerCopy = writer;
  transformCopy = transform;
  progressCopy = progress;
  if (!error)
  {
    v74 = NUAssertLogger_15131();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v75;
      _os_log_error_impl(&dword_1C0184000, v74, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v77 = NUAssertLogger_15131();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v78)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        callStackSymbols = [v82 callStackSymbols];
        v85 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v85;
        _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v78)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v80 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v80;
      _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readFromReader:andWriteToWriter:stillImageTime:createCustomMetadata:geometryTransform:inputSize:outputSize:progress:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1092, @"Invalid parameter not satisfying: %s", v86, v87, v88, v89, "error != NULL");
  }

  v109 = 0;
  timeCopy = time;
  if ((time->var2 & 1) != 0 && metadataCopy)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v16 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_INFO, "Creating custom metadata input for keyframe time", buf, 2u);
    }

    *buf = 0;
    v17 = *MEMORY[0x1E6960338];
    v159[0] = *MEMORY[0x1E6960348];
    v159[1] = v17;
    v18 = *MEMORY[0x1E6960288];
    v160[0] = *MEMORY[0x1E69629E0];
    v160[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:2];
    v161[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:1];

    CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v20, buf);
    v21 = objc_alloc(MEMORY[0x1E6987EE0]);
    v109 = [v21 initWithMediaType:*MEMORY[0x1E69875D0] outputSettings:0 sourceFormatHint:*buf];
    CFRelease(*buf);
    if (![writerCopy canAddInput:v109])
    {
      *error = [NUError unknownError:@"Cannot add metadata track input to asset writer" object:readerCopy];

      goto LABEL_22;
    }

    [writerCopy addInput:v109];
  }

  if ([readerCopy startReading])
  {
    if ([writerCopy startWriting])
    {
      v112 = *MEMORY[0x1E6960CC0];
      *buf = *MEMORY[0x1E6960CC0];
      v111 = *(MEMORY[0x1E6960CC0] + 16);
      *&buf[16] = v111;
      [writerCopy startSessionAtSourceTime:buf];
      if (v109)
      {
        v22 = -1;
      }

      else
      {
        v22 = 0;
      }

      outputs = [readerCopy outputs];
      v24 = [outputs count];
      inputs = [writerCopy inputs];
      v26 = v24 == [inputs count] + v22;

      if (!v26)
      {
        v90 = NUAssertLogger_15131();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reader outputs should match writer inputs"];
          *buf = 138543362;
          *&buf[4] = v91;
          _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v92 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v93 = NUAssertLogger_15131();
        v94 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
        if (v92)
        {
          if (v94)
          {
            v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v98 = MEMORY[0x1E696AF00];
            v99 = v97;
            callStackSymbols3 = [v98 callStackSymbols];
            v101 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v97;
            *&buf[12] = 2114;
            *&buf[14] = v101;
            _os_log_error_impl(&dword_1C0184000, v93, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v94)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v96 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v96;
          _os_log_error_impl(&dword_1C0184000, v93, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("+[NUVideoUtilities readFromReader:andWriteToWriter:stillImageTime:createCustomMetadata:geometryTransform:inputSize:outputSize:progress:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1127, @"Reader outputs should match writer inputs", v102, v103, v104, v105, v106);
      }

      v152 = *MEMORY[0x1E6960C70];
      v153 = *(MEMORY[0x1E6960C70] + 16);
      v151[0] = 0;
      v151[1] = v151;
      v151[2] = 0x2020000000;
      v151[3] = 0;
      v27 = MEMORY[0x1E6987608];
      if (progressCopy)
      {
        asset = [readerCopy asset];
        v29 = asset;
        if (asset)
        {
          [asset duration];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v152 = *buf;
        v153 = *&buf[16];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        outputs2 = [readerCopy outputs];
        v37 = 0;
        v39 = [outputs2 countByEnumeratingWithState:&v147 objects:v158 count:16];
        if (v39)
        {
          v40 = *v148;
          v41 = *v27;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v148 != v40)
              {
                objc_enumerationMutation(outputs2);
              }

              mediaType = [*(*(&v147 + 1) + 8 * i) mediaType];
              v44 = [mediaType isEqualToString:v41];

              v37 += v44;
            }

            v39 = [outputs2 countByEnumeratingWithState:&v147 objects:v158 count:16];
          }

          while (v39);
        }
      }

      else
      {
        v37 = 0;
      }

      v141 = 0;
      v142 = &v141;
      v143 = 0x3032000000;
      v144 = __Block_byref_object_copy__15239;
      v145 = __Block_byref_object_dispose__15240;
      v146 = 0;
      group = dispatch_group_create();
      v45 = 0;
      v110 = *v27;
      while (1)
      {
        outputs3 = [readerCopy outputs];
        v47 = v45 < [outputs3 count];

        if (!v47)
        {
          break;
        }

        inputs2 = [writerCopy inputs];
        v115 = [inputs2 objectAtIndexedSubscript:v45];

        outputs4 = [readerCopy outputs];
        v50 = [outputs4 objectAtIndexedSubscript:v45];

        if (progressCopy)
        {
          mediaType2 = [v50 mediaType];
          v52 = [mediaType2 isEqualToString:v110];
        }

        else
        {
          v52 = 0;
        }

        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"export_track_queue_%lu", v45];
        v54 = v53;
        uTF8String = [v53 UTF8String];
        v56 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v57 = dispatch_queue_create(uTF8String, v56);

        v139[0] = 0;
        v139[1] = v139;
        v139[2] = 0x2020000000;
        v140 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3810000000;
        v155 = &unk_1C03FE0EF;
        v156 = v112;
        v157 = v111;
        dispatch_group_enter(group);
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __142__NUVideoUtilities_readFromReader_andWriteToWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_progress_error___block_invoke;
        v126[3] = &unk_1E810A5A8;
        v138 = v52;
        v131 = v139;
        v132 = v151;
        v127 = progressCopy;
        v135 = v37;
        v58 = v115;
        v128 = v58;
        v59 = v50;
        v136 = v152;
        v137 = v153;
        v129 = v59;
        v133 = buf;
        v134 = &v141;
        v130 = group;
        [v58 requestMediaDataWhenReadyOnQueue:v57 usingBlock:v126];

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(v139, 8);

        ++v45;
      }

      if (v109)
      {
        v60 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v61 = dispatch_queue_create("metadata track queue", v60);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v155) = 0;
        dispatch_group_enter(group);
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __142__NUVideoUtilities_readFromReader_andWriteToWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_progress_error___block_invoke_301;
        v120[3] = &unk_1E810A5D0;
        v123 = buf;
        v121 = v109;
        v124 = *&timeCopy->var0;
        var3 = timeCopy->var3;
        v122 = group;
        [v121 requestMediaDataWhenReadyOnQueue:v61 usingBlock:v120];

        _Block_object_dispose(buf, 8);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_group_enter(group);
      if (progressCopy && [progressCopy isCancelled])
      {
        [readerCopy cancelReading];
        [writerCopy cancelWriting];
        dispatch_group_leave(group);
      }

      else
      {
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __142__NUVideoUtilities_readFromReader_andWriteToWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_progress_error___block_invoke_302;
        v118[3] = &unk_1E810B9A8;
        v119 = group;
        [writerCopy finishWritingWithCompletionHandler:v118];
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      if ([readerCopy status] == 3)
      {
        v62 = v142[5];
        if (v62)
        {
          v35 = 0;
          *error = v62;
LABEL_66:

          _Block_object_dispose(&v141, 8);
          _Block_object_dispose(v151, 8);
          goto LABEL_23;
        }

        error = [readerCopy error];
        v69 = [NUError errorWithCode:1 reason:@"Failed to read from AVAsset" object:readerCopy underlyingError:error];
        *error = v69;

        goto LABEL_65;
      }

      if ([readerCopy status] == 4)
      {
        error2 = [readerCopy error];
        *error = [NUError errorWithCode:10 reason:@"Cancelled read from AVAsset" object:readerCopy underlyingError:error2];

        goto LABEL_65;
      }

      if ([writerCopy status] != 3)
      {
        if ([writerCopy status] != 4)
        {
          v35 = 1;
          goto LABEL_66;
        }

        error3 = [writerCopy error];
        *error = [NUError errorWithCode:10 reason:@"Cancelled write to AVAsset" object:writerCopy underlyingError:error3];

LABEL_65:
        v35 = 0;
        goto LABEL_66;
      }

      error4 = [writerCopy error];
      domain = [error4 domain];
      if ([domain isEqualToString:*MEMORY[0x1E69874D8]])
      {
        v66 = [error4 code] == -11840;

        if (v66)
        {
          v67 = [NUError errorWithCode:12 reason:@"Failed to write AVAsset" object:writerCopy underlyingError:error4];
          goto LABEL_62;
        }
      }

      else
      {
      }

      v71 = v142[5];
      if (!v71)
      {
        error5 = [writerCopy error];
        v73 = [NUError errorWithCode:1 reason:@"Failed to write to AVAsset" object:writerCopy underlyingError:error5];
        *error = v73;

        goto LABEL_64;
      }

      v67 = v71;
LABEL_62:
      *error = v67;
LABEL_64:

      goto LABEL_65;
    }

    v31 = MEMORY[0x1E696AEC0];
    outputURL = [writerCopy outputURL];
    v33 = [v31 stringWithFormat:@"Could not start writing AVAsset %@", outputURL];

    error6 = [writerCopy error];
    *error = [NUError errorWithCode:1 reason:v33 object:writerCopy underlyingError:error6];
  }

  else
  {
    error7 = [readerCopy error];
    *error = [NUError errorWithCode:1 reason:@"Could not start reading AVAsset" object:readerCopy underlyingError:error7];
  }

LABEL_22:
  v35 = 0;
LABEL_23:

  return v35;
}

void __142__NUVideoUtilities_readFromReader_andWriteToWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_progress_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(a1 + 128) == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      [*(a1 + 32) setCompletedUnitCount:{(*(*(*(a1 + 72) + 8) + 24) / *(a1 + 96) * objc_msgSend(*(a1 + 32), "totalUnitCount"))}];
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v2 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1C0184000, v2, OS_LOG_TYPE_INFO, "media data ready after finished", &buf, 2u);
    }

    [*(a1 + 40) markAsFinished];
    return;
  }

  if ([*(a1 + 40) isReadyForMoreMediaData])
  {
    do
    {
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        break;
      }

      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 32);
      if (v4 && [v4 isCancelled])
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
        }

        v5 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_1C0184000, v5, OS_LOG_TYPE_INFO, "AVAsset reading and writing canceled via NSProgress", &buf, 2u);
        }

        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = [*(a1 + 48) copyNextSampleBuffer];
        objc_autoreleasePoolPop(v6);
        if (v7)
        {
          if (*(a1 + 128) == 1 && (*(a1 + 116) & 0x1D) == 1 && *(a1 + 104) >= 1)
          {
            memset(&buf, 0, sizeof(buf));
            CMSampleBufferGetDuration(&buf, v7);
            if ((buf.flags & 0x1D) == 1)
            {
              lhs = *(*(*(a1 + 80) + 8) + 32);
              rhs = buf;
              CMTimeAdd(&v14, &lhs, &rhs);
              *(*(*(a1 + 80) + 8) + 32) = v14;
              lhs = *(*(*(a1 + 80) + 8) + 32);
              Seconds = CMTimeGetSeconds(&lhs);
              lhs = *(a1 + 104);
              p_lhs = &lhs;
              goto LABEL_28;
            }

            memset(&lhs, 0, sizeof(lhs));
            CMSampleBufferGetPresentationTimeStamp(&lhs, v7);
            if ((lhs.flags & 0x1D) == 1)
            {
              *(*(*(a1 + 80) + 8) + 32) = lhs;
              rhs = *(*(*(a1 + 80) + 8) + 32);
              Seconds = CMTimeGetSeconds(&rhs);
              rhs = *(a1 + 104);
              p_lhs = &rhs;
LABEL_28:
              [*(a1 + 32) setCompletedUnitCount:{((fmin(Seconds / CMTimeGetSeconds(p_lhs), 1.0) + *(*(*(a1 + 72) + 8) + 24)) / *(a1 + 96) * objc_msgSend(*(a1 + 32), "totalUnitCount"))}];
            }
          }

          v10 = objc_autoreleasePoolPush();
          v11 = [*(a1 + 40) appendSampleBuffer:v7];
          objc_autoreleasePoolPop(v10);
          CFRelease(v7);
          *(*(*(a1 + 64) + 8) + 24) = v11 ^ 1;
          goto LABEL_30;
        }

        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

LABEL_30:
      objc_autoreleasePoolPop(v3);
    }

    while (([*(a1 + 40) isReadyForMoreMediaData] & 1) != 0);
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if (*(a1 + 128) == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      [*(a1 + 32) setCompletedUnitCount:{(*(*(*(a1 + 72) + 8) + 24) / *(a1 + 96) * objc_msgSend(*(a1 + 32), "totalUnitCount"))}];
    }

    [*(a1 + 40) markAsFinished];
    dispatch_group_leave(*(a1 + 56));
  }
}

void __142__NUVideoUtilities_readFromReader_andWriteToWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_progress_error___block_invoke_301(uint64_t a1)
{
  v105[1] = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v2 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.duration.value) = 0;
      _os_log_impl(&dword_1C0184000, v2, OS_LOG_TYPE_INFO, "media data ready after finished", &buf, 2u);
    }

    [*(a1 + 32) markAsFinished];
  }

  else
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    v5 = *(a1 + 68);
    formatDescriptionOut = 0;
    v96 = v5;
    v97 = *(a1 + 76);
    theBuffer = 0;
    sampleBufferOut = 0;
    v6 = *MEMORY[0x1E69629E0];
    v7 = *MEMORY[0x1E6960338];
    v103[0] = *MEMORY[0x1E6960348];
    v103[1] = v7;
    v8 = *MEMORY[0x1E6960288];
    v104[0] = v6;
    v104[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
    v105[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];

    v11 = *MEMORY[0x1E695E480];
    v12 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v10, &formatDescriptionOut);
    if (v12)
    {
      v22 = v12;
      v23 = NUAssertLogger_15131();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to CMMetadataFormatDescriptionCreateWithMetadataSpecifications: %d", v22];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v24;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v26 = NUAssertLogger_15131();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v27)
        {
          v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v55 = MEMORY[0x1E696AF00];
          v56 = v54;
          v57 = [v55 callStackSymbols];
          v58 = [v57 componentsJoinedByString:@"\n"];
          LODWORD(buf.duration.value) = 138543618;
          *(&buf.duration.value + 4) = v54;
          LOWORD(buf.duration.flags) = 2114;
          *(&buf.duration.flags + 2) = v58;
          _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v29;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("CMSampleBufferRef StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(CMTime, int32_t)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1389, @"Failed to CMMetadataFormatDescriptionCreateWithMetadataSpecifications: %d", v59, v60, v61, v62, v22);
    }

    LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
    v14 = CMBlockBufferCreateWithMemoryBlock(v11, 0, 9uLL, v11, 0, 0, 9uLL, 1u, &theBuffer);
    if (v14)
    {
      v30 = v14;
      v31 = NUAssertLogger_15131();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to CMBlockBufferCreateWithMemoryBlock: %d", v30];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v32;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v34 = NUAssertLogger_15131();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (v35)
        {
          v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v64 = MEMORY[0x1E696AF00];
          v65 = v63;
          v66 = [v64 callStackSymbols];
          v67 = [v66 componentsJoinedByString:@"\n"];
          LODWORD(buf.duration.value) = 138543618;
          *(&buf.duration.value + 4) = v63;
          LOWORD(buf.duration.flags) = 2114;
          *(&buf.duration.flags + 2) = v67;
          _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v35)
      {
        v36 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v37;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("CMSampleBufferRef StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(CMTime, int32_t)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1403, @"Failed to CMBlockBufferCreateWithMemoryBlock: %d", v68, v69, v70, v71, v30);
    }

    dataPointerOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      v38 = DataPointer;
      v39 = NUAssertLogger_15131();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to CMBlockBufferGetDataPointer: %d", v38];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v40;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v42 = NUAssertLogger_15131();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v43)
        {
          v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v73 = MEMORY[0x1E696AF00];
          v74 = v72;
          v75 = [v73 callStackSymbols];
          v76 = [v75 componentsJoinedByString:@"\n"];
          LODWORD(buf.duration.value) = 138543618;
          *(&buf.duration.value + 4) = v72;
          LOWORD(buf.duration.flags) = 2114;
          *(&buf.duration.flags + 2) = v76;
          _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v43)
      {
        v44 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        LODWORD(buf.duration.value) = 138543362;
        *(&buf.duration.value + 4) = v45;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("CMSampleBufferRef StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(CMTime, int32_t)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1407, @"Failed to CMBlockBufferGetDataPointer: %d", v77, v78, v79, v80, v38);
    }

    v16 = dataPointerOut;
    *dataPointerOut = 150994944;
    v16[8] = -1;
    dataPointerOut = v16 + 8;
    *(v16 + 1) = bswap32(LocalIDForMetadataIdentifyingFactors);
    if (v3)
    {
      v17 = v3;
    }

    else
    {
      v17 = 600;
    }

    memset(&v91, 0, sizeof(v91));
    CMTimeMake(&buf.duration, 1, v17);
    CMTimeConvertScale(&v91, &buf.duration, v3, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v18 = *(MEMORY[0x1E6960CF0] + 16);
    *&buf.duration.value = *MEMORY[0x1E6960CF0];
    *&buf.duration.epoch = v18;
    v19 = *(MEMORY[0x1E6960CF0] + 48);
    *&buf.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&buf.decodeTimeStamp.value = v19;
    buf.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
    buf.presentationTimeStamp.timescale = v3;
    HIDWORD(buf.presentationTimeStamp.epoch) = v97;
    *&buf.presentationTimeStamp.flags = v96;
    buf.duration = v91;
    buf.presentationTimeStamp.value = v4;
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    v20 = CMSampleBufferCreate(v11, theBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &buf, 1, &DataLength, &sampleBufferOut);
    if (v20)
    {
      v46 = v20;
      v47 = NUAssertLogger_15131();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to CMSampleBufferCreate: %d", v46];
        *v98 = 138543362;
        v99 = v48;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v98, 0xCu);
      }

      v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v50 = NUAssertLogger_15131();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
      if (v49)
      {
        if (v51)
        {
          v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v82 = MEMORY[0x1E696AF00];
          v83 = v81;
          v84 = [v82 callStackSymbols];
          v85 = [v84 componentsJoinedByString:@"\n"];
          *v98 = 138543618;
          v99 = v81;
          v100 = 2114;
          v101 = v85;
          _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v98, 0x16u);
        }
      }

      else if (v51)
      {
        v52 = [MEMORY[0x1E696AF00] callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *v98 = 138543362;
        v99 = v53;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v98, 0xCu);
      }

      _NUAssertFailHandler("CMSampleBufferRef StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(CMTime, int32_t)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 1423, @"Failed to CMSampleBufferCreate: %d", v86, v87, v88, v89, v46);
    }

    CFRelease(formatDescriptionOut);
    CFRelease(theBuffer);
    v21 = sampleBufferOut;

    [*(a1 + 32) appendSampleBuffer:v21];
    [*(a1 + 32) markAsFinished];
    dispatch_group_leave(*(a1 + 40));
    CFRelease(v21);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)readStillImageTimeFromVideoAsset:(SEL)asset
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v10 = [a2 metadataTrackWithStillImageDisplayTimeMarkerInLivePhotoAsset:v6];
  if (!v10)
  {
LABEL_9:
    retstr->var0 = value;
    retstr->var1 = timescale;
    retstr->var2 = flags;
    retstr->var3 = epoch;
    goto LABEL_15;
  }

  v11 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:v10];
  v18 = 0;
  v12 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v6 error:&v18];
  v13 = v18;
  [v12 setPreparesMediaDataForRealTimeConsumption:1];
  if ([v12 canAddOutput:v11])
  {
    [v12 addOutput:v11];
    [v12 startReading];
    do
    {
      copyNextSampleBuffer = [v11 copyNextSampleBuffer];
      if (!copyNextSampleBuffer)
      {
        break;
      }

      v15 = copyNextSampleBuffer;
      if (CMSampleBufferGetNumSamples(copyNextSampleBuffer))
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&v19, v15);
        value = v19.value;
        flags = v19.flags;
        timescale = v19.timescale;
        epoch = v19.epoch;
      }

      CFRelease(v15);
    }

    while ((flags & 1) == 0);
    [v12 cancelReading];

    goto LABEL_9;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
  }

  v16 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
  {
    LODWORD(v19.value) = 138412290;
    *(&v19.value + 4) = v12;
    _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_INFO, "Unable to add sampleOutput to reader: %@", &v19, 0xCu);
  }

  *&retstr->var0 = *v7;
  retstr->var3 = epoch;

LABEL_15:
  return result;
}

+ (BOOL)isAssetUnsupportedCorruptPortraitVideo:(id)video
{
  v22 = *MEMORY[0x1E69E9840];
  videoCopy = video;
  v19 = 0;
  v5 = [NUVideoUtilities firstEnabledVideoTrackInAsset:videoCopy error:&v19];
  v18 = 0;
  v6 = v19;
  v7 = [NUVideoUtilities auxiliaryTrackInAsset:videoCopy ofType:2 error:&v18];
  v8 = v18;

  v9 = [NUVideoUtilities metadataTrackWithPortraitVideoDataInAsset:videoCopy];
  v10 = v9;
  if (v5)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 != 0)
  {
    v14 = [self track:v7 hasSamplesForEachSampleInTrack:v5];
    if ((v14 & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }

      v15 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v21 = videoCopy;
      v16 = "Detected corrupt cinematic asset with mismatched disparity track. Effect will not be applied. %@";
      goto LABEL_22;
    }

    if (([self track:v10 hasSamplesForEachSampleInTrack:v5] & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }

      v15 = _NULogger;
      if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v21 = videoCopy;
      v16 = "Detected corrupt cinematic asset with mismatched metadata track. Effect will not be applied. %@";
LABEL_22:
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_19:
      v13 = 1;
      goto LABEL_20;
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

+ (BOOL)track:(id)track hasSamplesForEachSampleInTrack:(id)inTrack
{
  v62 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  inTrackCopy = inTrack;
  if (!trackCopy)
  {
    v15 = NUAssertLogger_15131();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "track"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_15131();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v29;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities track:hasSamplesForEachSampleInTrack:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 986, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "track");
  }

  v7 = inTrackCopy;
  if (!inTrackCopy)
  {
    v22 = NUAssertLogger_15131();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "referenceTrack"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_15131();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v38;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities track:hasSamplesForEachSampleInTrack:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 987, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "referenceTrack");
  }

  memset(&buf, 0, sizeof(buf));
  [trackCopy timeRange];
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  [v7 timeRange];
  v54 = 0;
  v55 = 0;
  v56 = 0;
  [v7 minFrameDuration];
  memset(&range, 0, sizeof(range));
  memset(&otherRange, 0, sizeof(otherRange));
  CMTimeRangeGetUnion(&range2, &range, &otherRange);
  range = buf;
  if (CMTimeRangeEqual(&range, &range2))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    segments = [trackCopy segments];
    v9 = [segments countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(segments);
          }

          if ([*(*(&v47 + 1) + 8 * i) isEmpty])
          {
            v13 = 0;
            goto LABEL_15;
          }
        }

        v10 = [segments countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_15:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)assetWriterAudioSettingsForAudioTrackFormatDescription:(opaqueCMFormatDescription *)description
{
  v14[3] = *MEMORY[0x1E69E9840];
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(description);
  if (StreamBasicDescription)
  {
    v4 = StreamBasicDescription;
    v5 = *MEMORY[0x1E69582B0];
    v14[0] = &unk_1F3F82680;
    v6 = *MEMORY[0x1E6958348];
    v13[0] = v5;
    v13[1] = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:StreamBasicDescription->mSampleRate];
    v14[1] = v7;
    v13[2] = *MEMORY[0x1E6958300];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4->mChannelsPerFrame];
    v14[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v10 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C0184000, v10, OS_LOG_TYPE_INFO, "AudioStreamBasicDescription missing", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)assetWriterAudioSettingsForTrackWithSampleRate:(double)rate isAmbisonic:(BOOL)ambisonic
{
  v23[6] = *MEMORY[0x1E69E9840];
  if (ambisonic)
  {
    v18 = xmmword_1C03C3F24;
    v19 = *&qword_1C03C3F34;
    v22[0] = *MEMORY[0x1E69582B0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{1634754915, 4028628997, 0, 0, unk_1C03C3F3C}];
    v23[0] = v5;
    v22[1] = *MEMORY[0x1E6958348];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v7 = *MEMORY[0x1E6958280];
    v23[1] = v6;
    v23[2] = &unk_1F3F82638;
    v8 = *MEMORY[0x1E6958300];
    v22[2] = v7;
    v22[3] = v8;
    v23[3] = &unk_1F3F825F0;
    v22[4] = *MEMORY[0x1E6958258];
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v18 length:32];
    v22[5] = *MEMORY[0x1E69582A0];
    v23[4] = v9;
    v23[5] = &unk_1F3F82650;
    v10 = MEMORY[0x1E695DF20];
    v11 = v23;
    v12 = v22;
    v13 = 6;
  }

  else
  {
    v18 = xmmword_1C03C3F44;
    v19 = *&qword_1C03C3F54;
    v20[0] = *MEMORY[0x1E69582B0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{1633772320, 6619138, 0, 0, unk_1C03C3F5C}];
    v21[0] = v5;
    v20[1] = *MEMORY[0x1E6958348];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v14 = *MEMORY[0x1E6958280];
    v21[1] = v6;
    v21[2] = &unk_1F3F82668;
    v15 = *MEMORY[0x1E6958300];
    v20[2] = v14;
    v20[3] = v15;
    v21[3] = &unk_1F3F82620;
    v20[4] = *MEMORY[0x1E6958258];
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v18 length:32];
    v21[4] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v21;
    v12 = v20;
    v13 = 5;
  }

  v16 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];

  return v16;
}

+ (id)assetReaderAudioSettingsForTrackType:(BOOL)type
{
  v21[5] = *MEMORY[0x1E69E9840];
  if (type)
  {
    v16 = xmmword_1C03C3F24;
    v17 = *&qword_1C03C3F34;
    v21[0] = &unk_1F3F825F0;
    v3 = *MEMORY[0x1E6958258];
    v20[0] = *MEMORY[0x1E6958300];
    v20[1] = v3;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v16 length:32];
    v21[1] = v4;
    v20[2] = *MEMORY[0x1E69582B0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1819304813];
    v6 = *MEMORY[0x1E69582C8];
    v21[2] = v5;
    v21[3] = &unk_1F3F82608;
    v7 = *MEMORY[0x1E69582E8];
    v20[3] = v6;
    v20[4] = v7;
    v21[4] = MEMORY[0x1E695E118];
    v8 = MEMORY[0x1E695DF20];
    v9 = v21;
    v10 = v20;
  }

  else
  {
    v16 = xmmword_1C03C3F44;
    v17 = *&qword_1C03C3F54;
    v19[0] = &unk_1F3F82620;
    v11 = *MEMORY[0x1E6958258];
    v18[0] = *MEMORY[0x1E6958300];
    v18[1] = v11;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v16 length:32];
    v19[1] = v4;
    v18[2] = *MEMORY[0x1E69582B0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1819304813];
    v12 = *MEMORY[0x1E69582C8];
    v19[2] = v5;
    v19[3] = &unk_1F3F82608;
    v13 = *MEMORY[0x1E69582E8];
    v18[3] = v12;
    v18[4] = v13;
    v19[4] = MEMORY[0x1E695E118];
    v8 = MEMORY[0x1E695DF20];
    v9 = v19;
    v10 = v18;
  }

  v14 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:5];

  return v14;
}

+ (id)cinematicAudioTrackInAsset:(id)asset
{
  v3 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:asset];
  v4 = PFFilter();

  firstObject = [v4 firstObject];

  return firstObject;
}

+ (BOOL)audioTrackIsCinematicAudio:(id)audio
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  formatDescriptions = [audio formatDescriptions];
  v4 = [formatDescriptions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(formatDescriptions);
        }

        if (FigAudioFormatDescriptionGetCinematicAudioEffectEligibility())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [formatDescriptions countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)assetIsCinematicAudio:(id)audio
{
  audioCopy = audio;
  v5 = [self cinematicAudioTrackInAsset:audioCopy];

  if (v5)
  {
    v6 = [self metadataTrackWithCinematicAudioDataInAsset:audioCopy];
    v7 = v6;
    if (v6 && [v6 totalSampleDataLength])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }

      v8 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Invalid cinematic audio metadata track detected - audio mix effects will be disabled", v10, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)assetIsPIPVideo:(id)video
{
  v3 = MEMORY[0x1E6987FE0];
  metadata = [video metadata];
  v5 = [v3 metadataItemsFromArray:metadata filteredByIdentifier:@"mdta/com.apple.quicktime.front-and-back-camera-composition"];

  firstObject = [v5 firstObject];
  numberValue = [firstObject numberValue];
  bOOLValue = [numberValue BOOLValue];

  return bOOLValue;
}

+ (id)metadataTrackWithCinematicAudioDataInAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self metadataTrackContainsCinematicAudioData:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)getCinematicAudioParametersFromAudioMix:(id)mix
{
  v3 = MEMORY[0x1E695DF90];
  mixCopy = mix;
  v5 = objc_alloc_init(v3);
  inputParameters = [mixCopy inputParameters];

  firstObject = [inputParameters firstObject];

  if (firstObject)
  {
    v27 = 0;
    v25 = *MEMORY[0x1E6960CC0];
    v23 = v25;
    v26 = *(MEMORY[0x1E6960CC0] + 16);
    v8 = v26;
    [firstObject getDialogMixBiasRampForTime:&v25 startValue:&v27 endValue:0 timeRange:0];
    LODWORD(v9) = v27;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [v5 setObject:v10 forKeyedSubscript:@"dialogMix"];

    v24 = 0.0;
    v25 = v23;
    v26 = v8;
    [firstObject getRenderingStyleRampForTime:&v25 startValue:&v24 endValue:0 timeRange:0];
    *&v11 = v24;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    [v5 setObject:v12 forKeyedSubscript:@"renderingStyle"];

    v13 = @"studio";
    *&v14 = v24;
    LODWORD(v15) = 1.0;
    v16 = @"camera";
    v17 = @"unknown";
    LODWORD(v18) = 2.0;
    if (v24 == 7.0)
    {
      v17 = @"original";
    }

    if (v24 != 2.0)
    {
      v16 = v17;
    }

    if (v24 != 1.0)
    {
      v13 = v16;
    }

    if (v24 == 0.0)
    {
      v19 = @"voice";
    }

    else
    {
      v19 = v13;
    }

    [v5 setObject:v19 forKeyedSubscript:{@"renderingStyleString", v14, v15, v18}];
    effects = [firstObject effects];
    firstObject2 = [effects firstObject];

    [v5 setObject:firstObject2 forKeyedSubscript:@"effect"];
  }

  return v5;
}

+ (id)metadataTrackWithIdenfifier:(id)idenfifier forAsset:(id)asset
{
  v20 = *MEMORY[0x1E69E9840];
  idenfifierCopy = idenfifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([self metadataTrack:v12 containsIdentifier:idenfifierCopy])
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)isAssetUnsupportedLegacyPortraitVideo:(id)video
{
  videoCopy = video;
  v5 = [self metadataTrackWithPortraitVideoDataInAsset:videoCopy];
  if (!v5)
  {
    goto LABEL_13;
  }

  v19 = 0;
  v6 = [MEMORY[0x1E6987E78] assetReaderWithAsset:videoCopy error:&v19];
  [v6 setPreparesMediaDataForRealTimeConsumption:1];
  if (v6)
  {
    memset(&v18, 0, sizeof(v18));
    [v5 minFrameDuration];
    if (0 >> 96)
    {
      *&v15.start.value = *MEMORY[0x1E6960CC0];
      v15.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      duration = v18;
      CMTimeRangeMake(&v17, &v15.start, &duration);
      v15 = v17;
      [v6 setTimeRange:&v15];
    }

    v7 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v5 outputSettings:0];
    if ([v6 canAddOutput:v7])
    {
      [v6 addOutput:v7];
      v8 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v7];
      if ([v6 startReading])
      {
        nextTimedMetadataGroup = [v8 nextTimedMetadataGroup];
        [v6 cancelReading];
        if (nextTimedMetadataGroup)
        {
          v10 = MEMORY[0x1E6987FE0];
          items = [nextTimedMetadataGroup items];
          v12 = [v10 metadataItemsFromArray:items filteredByIdentifier:@"mdta/com.apple.quicktime.formatInfo-dictionary"];

          v13 = [v12 count];
          if (v13)
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }

LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

+ (id)metadataTrackWithPortraitVideoDataInAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self metadataTrackContainsPortraitVideoData:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)metadataTrackWithStillImageDimensionsInLivePhotoAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self isMetadataTrackWithStillImageDimensionsInLivePhoto:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)metadataTrackWithStillImageTransformInLivePhotoAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self isMetadataTrackWithStillImageTransformInLivePhoto:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)metadataTrackWithStillImageDisplayTimeMarkerInLivePhotoAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:{asset, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self isMetadataTrackStillImageDisplayTimeMarkerInLivePhoto:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (BOOL)videoTrackContainsDolbyVisionMetadata:(id)metadata
{
  v26 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  mediaType = [metadataCopy mediaType];
  v5 = [mediaType isEqual:*MEMORY[0x1E6987608]];

  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [metadataCopy formatDescriptions];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v19 = metadataCopy;
      v8 = *v22;
      v9 = *MEMORY[0x1E6965F30];
      v10 = *MEMORY[0x1E6965F48];
      v11 = *MEMORY[0x1E69600A0];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v13 = CMFormatDescriptionGetExtensions(*(*(&v21 + 1) + 8 * i));
          v14 = [v13 objectForKeyedSubscript:v9];
          if ([v14 isEqualToString:v10])
          {
            v15 = [v13 objectForKeyedSubscript:v11];
            if (v15)
            {
              v16 = v15;
              v17 = [v15 objectForKeyedSubscript:@"dvvC"];

              if (v17)
              {

                LOBYTE(v5) = 1;
                goto LABEL_14;
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      LOBYTE(v5) = 0;
LABEL_14:
      metadataCopy = v19;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)metadataTrack:(id)track containsIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  formatDescriptions = [track formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  if (firstObject)
  {
    v8 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (![v8 containsObject:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)metadataTrack:(id)track containsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  formatDescriptions = [track formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  v10 = 0;
  if (firstObject)
  {
    v8 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
    v9 = [v8 containsObject:identifierCopy];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

+ (id)realTimeConsumptionAssetReaderForAsset:(id)asset error:(id *)error
{
  v5 = MEMORY[0x1E6987E78];
  assetCopy = asset;
  v7 = [[v5 alloc] initWithAsset:assetCopy error:error];

  [v7 setPreparesMediaDataForRealTimeConsumption:1];

  return v7;
}

+ (void)readNextSampleBuffer:(id)buffer output:(id)output block:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  outputCopy = output;
  blockCopy = block;
  if (!bufferCopy)
  {
    v17 = NUAssertLogger_15131();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "reader != nil"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_15131();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readNextSampleBuffer:output:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 564, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "reader != nil");
  }

  if (!blockCopy)
  {
    v24 = NUAssertLogger_15131();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_15131();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readNextSampleBuffer:output:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 565, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "block != nil");
  }

  copyNextSampleBuffer = [outputCopy copyNextSampleBuffer];
  if (copyNextSampleBuffer)
  {
    v10 = copyNextSampleBuffer;
    (*(blockCopy + 2))(blockCopy, copyNextSampleBuffer, 0, 0);
    CFRelease(v10);
    goto LABEL_15;
  }

  status = [bufferCopy status];
  if (status != 2)
  {
    if (status == 4)
    {
      v14 = @"Asset reader was canceled";
      v15 = 10;
    }

    else
    {
      if (status == 3)
      {
        error = [bufferCopy error];
        v13 = [NUError errorWithCode:1 reason:@"Failed to read next sample buffer from asset reader" object:bufferCopy underlyingError:error];

LABEL_13:
        v16 = 0;
        goto LABEL_14;
      }

      v14 = @"Unknown error reading from asset reader";
      v15 = 7;
    }

    v13 = [NUError errorWithCode:v15 reason:v14 object:bufferCopy];
    goto LABEL_13;
  }

  v13 = 0;
  v16 = 1;
LABEL_14:
  (*(blockCopy + 2))(blockCopy, 0, v13, v16);

LABEL_15:
}

+ (void)readNextPixelBuffer:(id)buffer output:(id)output block:(id)block
{
  v66 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  outputCopy = output;
  blockCopy = block;
  if (!bufferCopy)
  {
    v12 = NUAssertLogger_15131();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "reader != nil"];
      *buf = 138543362;
      v63 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_15131();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v33;
        v64 = 2114;
        v65 = v37;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readNextPixelBuffer:output:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 546, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "reader != nil");
  }

  if (!outputCopy)
  {
    v19 = NUAssertLogger_15131();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "output != nil"];
      *buf = 138543362;
      v63 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_15131();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols3 = [v43 callStackSymbols];
        v46 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v42;
        v64 = 2114;
        v65 = v46;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readNextPixelBuffer:output:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 547, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "output != nil");
  }

  if (!blockCopy)
  {
    v26 = NUAssertLogger_15131();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_15131();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        callStackSymbols5 = [v52 callStackSymbols];
        v55 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v51;
        v64 = 2114;
        v65 = v55;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities readNextPixelBuffer:output:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 548, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "block != nil");
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __53__NUVideoUtilities_readNextPixelBuffer_output_block___block_invoke;
  v60[3] = &unk_1E810A560;
  v61 = blockCopy;
  v11 = blockCopy;
  [self readNextSampleBuffer:bufferCopy output:outputCopy block:v60];
}

void __53__NUVideoUtilities_readNextPixelBuffer_output_block___block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v8 = v5;
    if (CMSampleBufferGetImageBuffer(a2))
    {
      v6 = v8;
    }

    else
    {
      v7 = [NUError missingError:@"unable to get imageBuffer from sampleBuffer" object:a2];

      v6 = v7;
    }
  }

  v9 = v6;
  (*(*(a1 + 32) + 16))();
}

+ (unint64_t)nominalFrameRateRoundedToNearestTraditionalFrameRate:(float)rate
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&unk_1F3F82D60 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    return 60;
  }

  v5 = v4;
  v6 = *v14;
  v7 = 60;
  v8 = 3.4028e38;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(&unk_1F3F82D60);
      }

      unsignedIntValue = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
      v11 = vabds_f32(unsignedIntValue, rate);
      if (v11 < v8)
      {
        v8 = v11;
        v7 = unsignedIntValue;
      }
    }

    v5 = [&unk_1F3F82D60 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);
  return v7;
}

+ (float)nominalFrameRateForAsset:(id)asset error:(id *)error
{
  v4 = [self firstEnabledVideoTrackInAsset:asset error:error];
  v5 = v4;
  if (v4)
  {
    [v4 nominalFrameRate];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAssetTrack:(SEL)track
{
  v5 = a4;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  CMTimeMake(retstr, 1, 60);
  memset(&v10, 0, sizeof(v10));
  CMTimeMake(&v10, 1, 240);
  memset(&v9, 0, sizeof(v9));
  if (v5)
  {
    [v5 minFrameDuration];
    if (v9.flags)
    {
      time1 = v9;
      v7 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &v7) >= 1)
      {
        *retstr = v9;
      }
    }
  }

  time1 = *retstr;
  v7 = v10;
  if (CMTimeCompare(&time1, &v7) < 0)
  {
    *retstr = v10;
  }

  return result;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAsset:(SEL)asset videoComposition:(id)composition
{
  v34 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v8 = a5;
  if (!compositionCopy)
  {
    v13 = NUAssertLogger_15131();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_15131();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities minimumFrameDurationForAsset:videoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 469, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "asset != nil");
  }

  v9 = MEMORY[0x1E6960C70];
  *&retstr->var0 = *MEMORY[0x1E6960C70];
  retstr->var3 = *(v9 + 16);
  if (v8)
  {
    sourceTrackIDForFrameTiming = [v8 sourceTrackIDForFrameTiming];
    if (sourceTrackIDForFrameTiming)
    {
      v11 = [MEMORY[0x1E69C0708] trackWithTrackID:sourceTrackIDForFrameTiming forAsset:compositionCopy];
      [a2 minimumFrameDurationForAssetTrack:v11];
    }

    else
    {
      [v8 frameDuration];
    }
  }

  else
  {
    [a2 minimumFrameDurationForAsset:compositionCopy];
  }

  return result;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDurationForAsset:(SEL)asset
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v11 = 0;
  v7 = [a2 firstEnabledVideoTrackInAsset:v6 error:&v11];
  v8 = v11;
  if (v7)
  {
    [a2 minimumFrameDurationForAssetTrack:v7];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v9 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Failed to get video track in asset: %@, error: %@", buf, 0x16u);
    }

    CMTimeMake(retstr, 1, 60);
  }

  return result;
}

+ (id)auxiliaryTrackInAsset:(id)asset ofType:(int64_t)type error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!error)
  {
    v29 = NUAssertLogger_15131();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v58 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_15131();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v36;
        v59 = 2114;
        v60 = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities auxiliaryTrackInAsset:ofType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 418, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v8 = assetCopy;
  v9 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875B0] forAsset:assetCopy];
  if ([v9 count])
  {
    v10 = NUMediaCharacteristicForAuxiliaryImageType(type);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          if (!v10 || [*(*(&v49 + 1) + 8 * i) hasMediaCharacteristic:v10])
          {
            firstObject = v16;
            goto LABEL_16;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
        firstObject = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      firstObject = 0;
    }

LABEL_16:

    if (type == 2 && !firstObject)
    {
      firstObject = [v11 firstObject];
      v55[0] = NUMediaCharacteristicPortraitEffectsMatte;
      v55[1] = NUMediaCharacteristicSkinMatte;
      v55[2] = NUMediaCharacteristicSkyMatte;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
      v54[0] = NUMediaCharacteristicStyleDelta;
      v54[1] = NUMediaCharacteristicOriginalStyleLinear;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
      v21 = [v19 arrayByAddingObjectsFromArray:v20];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v46;
        while (2)
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v22);
            }

            if ([firstObject hasMediaCharacteristic:*(*(&v45 + 1) + 8 * j)])
            {

              v18 = 0;
              goto LABEL_33;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }

      v27 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v27, OS_LOG_TYPE_INFO, "Could not find disparity track with expected media characteristic, using the first auxiliary track instead", buf, 2u);
      }
    }

    firstObject = firstObject;
    v18 = firstObject;
LABEL_33:
  }

  else
  {
    [NUError missingError:@"no auxiliary tracks" object:v8];
    *error = v18 = 0;
  }

  return v18;
}

+ (id)firstEnabledVideoTrackInAsset:(id)asset error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!error)
  {
    v49 = NUAssertLogger_15131();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v71 = v50;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v52 = NUAssertLogger_15131();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols = [v57 callStackSymbols];
        v60 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v71 = v56;
        v72 = 2114;
        v73 = v60;
        _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v71 = v55;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoUtilities firstEnabledVideoTrackInAsset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 386, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "error != nil");
  }

  v6 = assetCopy;
  [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:assetCopy];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = v68 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v66;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          v22 = v12;

          goto LABEL_28;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
  }

  v13 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v71 = v6;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "No enabled video tracks in asset %{public}@", buf, 0xCu);
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }
  }

  v14 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v24 = v14;
    tracks = [v6 tracks];
    v26 = [tracks count];
    *buf = 134217984;
    v71 = v26;
    _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Asset track count: %ld", buf, 0xCu);

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }
  }

  v15 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v27 = v15;
    tracks2 = [v6 tracks];
    firstObject = [tracks2 firstObject];
    segments = [firstObject segments];
    v31 = [segments count];
    *buf = 134217984;
    v71 = v31;
    _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Asset track edit count: %ld", buf, 0xCu);

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }
  }

  v16 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v32 = v16;
    tracks3 = [v6 tracks];
    *buf = 138543362;
    v71 = tracks3;
    _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Asset tracks: %{public}@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v6 URL];
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
    }

    v18 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v71 = v17;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Asset URL: %{public}@", buf, 0xCu);
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }
    }

    v19 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v34 = MEMORY[0x1E696AC08];
      v35 = v19;
      defaultManager = [v34 defaultManager];
      path = [v17 path];
      v38 = [defaultManager fileExistsAtPath:path];
      *buf = 67109120;
      LODWORD(v71) = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Asset file exists: %d", buf, 8u);

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }
    }

    v20 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v39 = MEMORY[0x1E696AC08];
      v40 = v20;
      defaultManager2 = [v39 defaultManager];
      path2 = [v17 path];
      v43 = [defaultManager2 isReadableFileAtPath:path2];
      *buf = 67109120;
      LODWORD(v71) = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Asset file readable: %d", buf, 8u);

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
      }
    }

    v21 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v44 = MEMORY[0x1E696AC08];
      v45 = v21;
      defaultManager3 = [v44 defaultManager];
      path3 = [v17 path];
      v48 = [defaultManager3 attributesOfItemAtPath:path3 error:0];
      *buf = 138543362;
      v71 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Asset file attributes: %{public}@", buf, 0xCu);
    }
  }

  [NUError missingError:@"no enabled video tracks" object:v6];
  *error = v22 = 0;
LABEL_28:

  return v22;
}

+ (id)bestOutputSettingsPresetForTargetVideoSize:(id)size codec:(unsigned int)codec
{
  var1 = size.var1;
  var0 = size.var0;
  availableOutputSettingsPresets = [MEMORY[0x1E6988080] availableOutputSettingsPresets];
  v8 = availableOutputSettingsPresets;
  v9 = var0 * var1;
  if (codec == 1752589105 && v9 > 4147200)
  {
    v10 = *MEMORY[0x1E6987970];
    if ([availableOutputSettingsPresets containsObject:*MEMORY[0x1E6987970]])
    {
      goto LABEL_19;
    }
  }

  else if (codec != 1752589105)
  {
    goto LABEL_7;
  }

  v10 = *MEMORY[0x1E6987968];
  if ([v8 containsObject:*MEMORY[0x1E6987968]])
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v9 > 4147200)
  {
    v10 = *MEMORY[0x1E6987950];
    if ([v8 containsObject:*MEMORY[0x1E6987950]])
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v9 > 1382400)
  {
LABEL_11:
    v10 = *MEMORY[0x1E6987948];
    if ([v8 containsObject:*MEMORY[0x1E6987948]])
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v9 < 691201)
  {
    if (v9 < 460801)
    {
LABEL_18:
      v10 = *MEMORY[0x1E6987958];
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_14:
  v10 = *MEMORY[0x1E6987940];
  if ([v8 containsObject:*MEMORY[0x1E6987940]])
  {
    goto LABEL_19;
  }

LABEL_17:
  v10 = *MEMORY[0x1E6987960];
  if (([v8 containsObject:*MEMORY[0x1E6987960]] & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v11 = v10;

  return v10;
}

+ (BOOL)isAVAssetDolbyProfile5:(id)profile5 error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  profile5Copy = profile5;
  v6 = [objc_opt_class() firstEnabledVideoTrackInAsset:profile5Copy error:error];
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    formatDescriptions = [v6 formatDescriptions];
    v9 = [formatDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(formatDescriptions);
          }

          v11 |= CMVideoFormatDescriptionGetVideoDynamicRange() == 5;
        }

        v10 = [formatDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

+ (BOOL)isAVAssetHDR:(id)r error:(id *)error
{
  rCopy = r;
  v6 = [objc_opt_class() firstEnabledVideoTrackInAsset:rCopy error:error];

  formatDescriptions = [v6 formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  v9 = CMFormatDescriptionGetExtension(firstObject, *MEMORY[0x1E6965F30]);
  if ([v9 isEqualToString:*MEMORY[0x1E6987E00]])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 isEqualToString:*MEMORY[0x1E6987DF0]];
  }

  return v10;
}

+ (id)defaultExportCodecForHDRVideo:(BOOL)video
{
  videoCopy = video;
  currentDeviceHEVCCapabilities = [MEMORY[0x1E69C0700] currentDeviceHEVCCapabilities];
  v5 = MEMORY[0x1E6987CF0];
  if (videoCopy || (currentDeviceHEVCCapabilities & 2) == 0)
  {
    v6 = videoCopy & ((currentDeviceHEVCCapabilities & 8) >> 3);
    if (!v6)
    {
      v5 = MEMORY[0x1E6987CE8];
    }

    if ((v6 & 1) == 0 && videoCopy)
    {
      if ((currentDeviceHEVCCapabilities & 4) != 0)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
        }

        v7 = _NULogger;
        if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v8 = "Asked to export an HDR composition, but HW encoders are instance-limited. We may use the software encoder";
        v9 = buf;
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_626);
        }

        v7 = _NULogger;
        if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v12 = 0;
        v8 = "Asked to export an HDR composition, but no HW encoder is available. We WILL use the software encoder";
        v9 = &v12;
      }

      _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
LABEL_17:
      v5 = MEMORY[0x1E6987CF0];
    }
  }

  v10 = *v5;

  return v10;
}

+ (id)originalCodecOfVideoTrack:(id)track
{
  formatDescriptions = [track formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  MediaSubType = CMFormatDescriptionGetMediaSubType(firstObject);

  return NUStringForTypeCode(MediaSubType);
}

+ (id)rgbVideoSettingsForAVAssetReader
{
  if (rgbVideoSettingsForAVAssetReader_onceToken != -1)
  {
    dispatch_once(&rgbVideoSettingsForAVAssetReader_onceToken, &__block_literal_global_138_15593);
  }

  v3 = rgbVideoSettingsForAVAssetReader_videoSettings;

  return v3;
}

void __52__NUVideoUtilities_rgbVideoSettingsForAVAssetReader__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6966130];
  v3[0] = &unk_1F3F82D48;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = rgbVideoSettingsForAVAssetReader_videoSettings;
  rgbVideoSettingsForAVAssetReader_videoSettings = v0;
}

+ (id)_preferedPixelFormatsForUsage:(int64_t)usage
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[NUPixelFormat supportsUniversalCompressionFormats];
  v6 = (usage - 3) < 0xFFFFFFFFFFFFFFFELL && v5;
  if ((usage - 3) >= 0xFFFFFFFFFFFFFFFELL && v5)
  {
    v6 = +[NUPixelFormat supportsRenderingToCompressedFormats];
  }

  if (usage != 1)
  {
    v7 = +[NUPixelFormat supportsPacked10BitsFormats];
    if (+[NUGlobalSettings disablePacked10BitPixelFormats])
    {
      v8 = 1;
    }

    else
    {
      v8 = !v7;
    }

    if (!v8)
    {
      if (v6)
      {
        if (usage != 2)
        {
          [v4 addObject:&unk_1F3F823E0];
        }

        [v4 addObject:&unk_1F3F823F8];
      }

      if (usage != 2)
      {
        [v4 addObject:&unk_1F3F82410];
      }

      [v4 addObject:&unk_1F3F82428];
    }

    if (usage == 2)
    {
      v9 = &unk_1F3F82458;
LABEL_23:
      [v4 addObject:v9];
      goto LABEL_24;
    }

    [v4 addObject:&unk_1F3F82440];
    [v4 addObject:&unk_1F3F82458];
  }

  if (v6)
  {
    [v4 addObject:&unk_1F3F82470];
    [v4 addObject:&unk_1F3F82488];
  }

  [v4 addObject:&unk_1F3F824A0];
  [v4 addObject:&unk_1F3F824B8];
  if (!usage)
  {
    [v4 addObject:&unk_1F3F824D0];
    [v4 addObject:&unk_1F3F824E8];
    v9 = &unk_1F3F82500;
    goto LABEL_23;
  }

LABEL_24:

  return v4;
}

+ (id)defaultVideoSettingsForAVAssetReader
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [self _preferedPixelFormatsForUsage:0];
  v5 = *MEMORY[0x1E6966130];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end