@interface NUVideoCompositionInstruction
+ (id)defaultInstructionForAsset:(id)asset error:(id *)error;
+ (id)instructionForVideoTrack:(id)track;
- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale;
- ($209B98C1CDF2DEBD503CBDE3C0ED7C90)timeRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstruction:(id)instruction;
- (NSString)description;
- (NURenderJob)renderJob;
- (NUVideoCompositionInstruction)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)metadataTrackIDForSourceIdentifier:(id)identifier;
- (id)trackIDForSourceIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)setTimeRange:(id *)range;
@end

@implementation NUVideoCompositionInstruction

- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale
{
  denominator = self->_renderScale.denominator;
  numerator = self->_renderScale.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- (NURenderJob)renderJob
{
  WeakRetained = objc_loadWeakRetained(&self->_renderJob);

  return WeakRetained;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = *&range->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- ($209B98C1CDF2DEBD503CBDE3C0ED7C90)timeRange
{
  v3 = *&self[3].var0.var1;
  *&retstr->var0.var0 = *&self[2].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var0;
  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NUVideoCompositionInstruction;
  return [(NUVideoCompositionInstruction *)&v3 hash];
}

- (BOOL)isEqualToInstruction:(id)instruction
{
  instructionCopy = instruction;
  v5 = instructionCopy;
  if (instructionCopy && ([instructionCopy renderJob], v6 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_renderJob), WeakRetained, v6, v6 == WeakRetained) && (objc_msgSend(v5, "videoRenderPrepareNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEquivalentToRenderNode:", self->_videoRenderPrepareNode), v8, v9) && (objc_msgSend(v5, "timeRange"), v10 = *&self->_timeRange.start.epoch, *&v20.start.value = *&self->_timeRange.start.value, *&v20.start.epoch = v10, *&v20.duration.timescale = *&self->_timeRange.duration.timescale, CMTimeRangeEqual(&range1, &v20)) && (v11 = objc_msgSend(v5, "renderScale"), NUScaleEqual(v11, v12, self->_renderScale.numerator, self->_renderScale.denominator)) && (objc_msgSend(v5, "requiredSourceTrackIDs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToArray:", self->_requiredSourceTrackIDs), v13, v14) && (v15 = objc_msgSend(v5, "containsTweening"), v15 == -[NUVideoCompositionInstruction containsTweening](self, "containsTweening")) && (v16 = objc_msgSend(v5, "passthroughTrackID"), v16 == -[NUVideoCompositionInstruction passthroughTrackID](self, "passthroughTrackID")) && (v17 = objc_msgSend(v5, "enablePostProcessing"), v17 == -[NUVideoCompositionInstruction enablePostProcessing](self, "enablePostProcessing")))
  {
    v18 = [v5[1] isEqual:self->_sourceIdentifiersByTrackID];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUVideoCompositionInstruction *)self isEqualToInstruction:equalCopy];
  }

  return v5;
}

- (id)metadataTrackIDForSourceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sourceIdentifiersByMetadataTrackID allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_sourceIdentifiersByMetadataTrackID objectForKeyedSubscript:v10];
        v12 = [v11 isEqual:identifierCopy];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
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

- (id)trackIDForSourceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sourceIdentifiersByTrackID allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_sourceIdentifiersByTrackID objectForKeyedSubscript:v10];
        v12 = [v11 isEqual:identifierCopy];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(NUVideoCompositionInstruction);
  v6 = *&self->_timeRange.start.epoch;
  v17[0] = *&self->_timeRange.start.value;
  v17[1] = v6;
  v17[2] = *&self->_timeRange.duration.timescale;
  [(NUVideoCompositionInstruction *)v5 setTimeRange:v17];
  v7 = [(NSArray *)self->_requiredSourceTrackIDs copyWithZone:zone];
  [(NUVideoCompositionInstruction *)v5 setRequiredSourceTrackIDs:v7];

  WeakRetained = objc_loadWeakRetained(&self->_renderJob);
  [(NUVideoCompositionInstruction *)v5 setRenderJob:WeakRetained];

  v9 = [(NUComposition *)self->_adjustmentComposition copyWithZone:zone];
  [(NUVideoCompositionInstruction *)v5 setAdjustmentComposition:v9];

  [(NUVideoCompositionInstruction *)v5 setVideoMedia:self->_videoMedia];
  v10 = [(NSArray *)self->_pipelineFilters copyWithZone:zone];
  [(NUVideoCompositionInstruction *)v5 setPipelineFilters:v10];

  [(NUVideoCompositionInstruction *)v5 setRenderScale:self->_renderScale.numerator, self->_renderScale.denominator];
  [(NUVideoCompositionInstruction *)v5 setColorSpace:self->_colorSpace];
  [(NUVideoCompositionInstruction *)v5 setIsDolbyVision:self->_isDolbyVision];
  *&v11 = self->_playbackRate;
  [(NUVideoCompositionInstruction *)v5 setPlaybackRate:v11];
  [(NUVideoCompositionInstruction *)v5 setName:self->_name];
  v12 = [(NSMutableDictionary *)self->_sourceIdentifiersByTrackID mutableCopyWithZone:zone];
  sourceIdentifiersByTrackID = v5->_sourceIdentifiersByTrackID;
  v5->_sourceIdentifiersByTrackID = v12;

  v14 = [(NSMutableDictionary *)self->_sourceIdentifiersByMetadataTrackID mutableCopyWithZone:zone];
  sourceIdentifiersByMetadataTrackID = v5->_sourceIdentifiersByMetadataTrackID;
  v5->_sourceIdentifiersByMetadataTrackID = v14;

  [(NUVideoCompositionInstruction *)v5 setSampleMode:self->_sampleMode];
  [(NUVideoCompositionInstruction *)v5 setVideoRenderPrepareNode:self->_videoRenderPrepareNode];
  [(NUVideoCompositionInstruction *)v5 setRequestedWindowOfSamples:self->_requestedWindowOfSamples];
  [(NUVideoCompositionInstruction *)v5 setMainTrackSourceIdentifier:self->_mainTrackSourceIdentifier];
  return v5;
}

- (NUVideoCompositionInstruction)init
{
  v8.receiver = self;
  v8.super_class = NUVideoCompositionInstruction;
  v2 = [(NUVideoCompositionInstruction *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(v2 + 2);
  *(v2 + 2) = v5;

  *(v2 + 120) = NUScaleOne;
  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(NUVideoCompositionInstruction *)self timeRange];
  v4 = *MEMORY[0x1E695E480];
  range = v8;
  v5 = CMTimeRangeCopyDescription(v4, &range);
  v6 = [v3 stringWithFormat:@"NUVideoCompositionInstruction <%p>:\ntimeRange:%@\nsourceIdentifiersByTrackID: %@\nsourceIdentifiersByMetadataTrackID:%@", self, v5, self->_sourceIdentifiersByTrackID, self->_sourceIdentifiersByMetadataTrackID];

  return v6;
}

+ (id)instructionForVideoTrack:(id)track
{
  v31[1] = *MEMORY[0x1E69E9840];
  trackCopy = track;
  if (!trackCopy)
  {
    v10 = NUAssertLogger_28024();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoTrack != nil"];
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_28024();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoCompositionInstruction instructionForVideoTrack:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositionInstruction.m", 61, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "videoTrack != nil");
  }

  v4 = trackCopy;
  v5 = objc_alloc_init(NUVideoCompositionInstruction);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "trackID")}];
  v31[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [(NUVideoCompositionInstruction *)v5 setRequiredSourceTrackIDs:v7];

  [v4 timeRange];
  *buf = v26;
  *&buf[16] = v27;
  v30 = v28;
  [(NUVideoCompositionInstruction *)v5 setTimeRange:buf];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "trackID")}];
  [(NUVideoCompositionInstruction *)v5 setSourceIdentifier:@"video" forTrackID:v8];

  return v5;
}

+ (id)defaultInstructionForAsset:(id)asset error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    v20 = NUAssertLogger_28024();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_28024();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVideoCompositionInstruction defaultInstructionForAsset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositionInstruction.m", 32, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "asset != nil");
  }

  v7 = assetCopy;
  v8 = [NUVideoUtilities firstEnabledVideoTrackInAsset:assetCopy error:error];
  if (v8)
  {
    v9 = [self instructionForVideoTrack:v8];
    v10 = [NUVideoUtilities auxiliaryTrackInAsset:v7 ofType:2 error:error];
    if (v10)
    {
      requiredSourceTrackIDs = [v9 requiredSourceTrackIDs];
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "trackID")}];
      v13 = [requiredSourceTrackIDs arrayByAddingObject:v12];
      [v9 setRequiredSourceTrackIDs:v13];

      v14 = @"Disparity";
      v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "trackID")}];
      [v9 setSourceIdentifier:@"Disparity" forTrackID:v15];
    }

    v16 = [NUVideoUtilities metadataTrackWithPortraitVideoDataInAsset:v7];
    v17 = v16;
    if (v16)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "trackID")}];
      [v9 setSourceIdentifier:@"portraitVideoMetadata" forMetadataTrackID:v18];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end