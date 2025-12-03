@interface VCPVideoStabilizer
+ (id)videoStabilizerforAnalysisType:(unint64_t)type withMetadata:(id)metadata sourceSize:(CGSize)size cropRect:(CGRect)rect;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange;
- (CGRect)cropRect;
- (CGSize)sourceSize;
- (VCPVideoStabilizer)init;
- (int)finishAnalysisPass:(id *)pass;
- (void)dealloc;
- (void)setTimeRange:(id *)range;
@end

@implementation VCPVideoStabilizer

- (VCPVideoStabilizer)init
{
  v8.receiver = self;
  v8.super_class = VCPVideoStabilizer;
  v2 = [(VCPVideoStabilizer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_cropFraction = 0.1;
    array = [MEMORY[0x1E695DF70] array];
    motionBlurVector = v3->_motionBlurVector;
    v3->_motionBlurVector = array;

    v3->_analysisConfidence = -1.0;
    v3->_validStabilization = 1;
    v3->_stabilizationFaild = 0;
    v6 = v3;
  }

  return v3;
}

+ (id)videoStabilizerforAnalysisType:(unint64_t)type withMetadata:(id)metadata sourceSize:(CGSize)size cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = size.height;
  v11 = size.width;
  typeCopy = type;
  metadataCopy = metadata;
  v14 = [metadataCopy count];
  if ((typeCopy & 0x10000000) != 0 && v14)
  {
    v15 = [VCPVideoGyroStabilizer alloc];
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v20[0] = *MEMORY[0x1E6960C98];
    v20[1] = v16;
    v20[2] = *(MEMORY[0x1E6960C98] + 32);
    height = [(VCPVideoGyroStabilizer *)v15 initWithMetadata:metadataCopy sourceSize:0 cropRect:v20 stillImageMetadata:v11 timeRange:v10, x, y, width, height];
  }

  else
  {
    height = objc_alloc_init(VCPVideoPixelStabilizer);
  }

  v18 = height;

  return v18;
}

- (void)dealloc
{
  if (self->_analysisResultRef)
  {
    ICDestroyResult();
    self->_analysisResultRef = 0;
  }

  if (self->_correctionResultRef)
  {
    ICDestroyResult();
    self->_correctionResultRef = 0;
  }

  v3.receiver = self;
  v3.super_class = VCPVideoStabilizer;
  [(VCPVideoStabilizer *)&v3 dealloc];
}

- (int)finishAnalysisPass:(id *)pass
{
  v111[1] = *MEMORY[0x1E69E9840];
  if (!+[VCPVideoStabilizer saveStabilizationRecipe]&& !self->_validStabilization)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(rect.origin.x) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "    Pixel Stabilization confidence doesn't pass the threshold", &rect, 2u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v62 = [MEMORY[0x1E696AD98] numberWithBool:self->_gyroStabilization];
    [dictionary setObject:v62 forKeyedSubscript:@"gyroStabilization"];

    *&v63 = self->_analysisConfidence;
    v64 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
    [dictionary setObject:v64 forKeyedSubscript:@"analysisConfidence"];

    v110 = @"VideoStabilizationResults";
    v107 = @"attributes";
    v108 = dictionary;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v109 = v6;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
    v111[0] = v65;
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:&v110 count:1];
    results = self->_results;
    self->_results = v66;

    goto LABEL_31;
  }

  ICGetResultConfidence();
  dictionary = ICGetResultStats();
  v4 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69A8BB0]];
  intValue = [v4 intValue];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69A8BD8]];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:(intValue - 1)];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69A8C08]];

  if ([(VCPVideoStabilizer *)self isPathConstraintsStabilization])
  {
    stillImageMetadata = [(VCPVideoStabilizer *)self stillImageMetadata];
    v10 = [stillImageMetadata objectAtIndexedSubscript:0];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [v10 objectForKeyedSubscript:@"attributes"];
    v13 = [v12 objectForKeyedSubscript:@"MetaStillImagePerspectiveTransformResults"];
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69A8B70]];

    v14 = [v10 objectForKeyedSubscript:@"attributes"];
    v15 = [v14 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69A8B78]];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v106 = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A8B68]];

    [(VCPVideoStabilizer *)self sourceSize];
    v113.size.width = v18;
    v113.size.height = v19;
    v113.origin.x = 0.0;
    v113.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v113);
    [v16 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E69A8B90]];

    [(VCPVideoStabilizer *)self cropRect];
    v21 = CGRectCreateDictionaryRepresentation(v114);
    [v16 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69A8B98]];

    [v16 setObject:&unk_1F49BC238 forKeyedSubscript:*MEMORY[0x1E69A8B60]];
    [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69A8BF0]];
    self->_cropFraction = 0.2;
  }

  if (self->_cropFraction >= 0.0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v6 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69A8BD0]];
  }

  if ([(NSMutableArray *)self->_motionBlurVector count])
  {
    [v6 setObject:self->_motionBlurVector forKeyedSubscript:*MEMORY[0x1E69A8C10]];
  }

  v81 = 0;
  v23 = ICCalcCinematicL1Corrections();
  self->_correctionResultRef = v23;
  if (v23)
  {
    goto LABEL_10;
  }

  if (![(VCPVideoStabilizer *)self isPathConstraintsStabilization])
  {
    goto LABEL_19;
  }

  if (self->_correctionResultRef)
  {
    goto LABEL_10;
  }

  if ([(VCPVideoStabilizer *)self isPathConstraintsStabilization])
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A8BE8]];
    v59 = ICCalcCinematicL1Corrections();
    self->_correctionResultRef = v59;
    if (v59)
    {
      goto LABEL_10;
    }

    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A8BE0]];
    correctionResultRef = ICCalcCinematicL1Corrections();
    self->_correctionResultRef = correctionResultRef;
  }

  else
  {
    correctionResultRef = self->_correctionResultRef;
  }

  if (!correctionResultRef)
  {
    if ([(VCPVideoStabilizer *)self isPathConstraintsStabilization])
    {
      self->_stabilizationFaild = 1;
    }

    v89 = @"PathConstraintsStabilizationResults";
    v86 = @"attributes";
    v84 = @"settlingEffectStatus";
    v82[0] = @"settlingEffectMissingMetadata";
    v82[1] = @"settlingEffectInvalidTimeRange";
    v83[0] = MEMORY[0x1E695E110];
    v83[1] = MEMORY[0x1E695E110];
    v82[2] = @"settlingEffectStabilizationFailure";
    v83[2] = MEMORY[0x1E695E118];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
    v85 = v24;
    dictionary2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v87 = dictionary2;
    dictionary3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v88 = dictionary3;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    v90 = v76;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v75 = self->_results;
    self->_results = v70;

LABEL_27:
    if (self->_analysisResultRef)
    {
      ICDestroyResult();
      self->_analysisResultRef = 0;
    }

    if (self->_correctionResultRef)
    {
      ICDestroyResult();
      v61 = 0;
      self->_correctionResultRef = 0;
      goto LABEL_32;
    }

LABEL_31:
    v61 = 0;
    goto LABEL_32;
  }

LABEL_10:
  v24 = ICGetResultHomographies();
  if (!v24)
  {
LABEL_19:
    v61 = -18;
    goto LABEL_32;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_gyroStabilization];
  [dictionary2 setObject:v25 forKeyedSubscript:@"gyroStabilization"];

  *&v26 = self->_analysisConfidence;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  [dictionary2 setObject:v27 forKeyedSubscript:@"analysisConfidence"];

  v76 = [VCPProtoMovieStabilizationRecipe resultFromLegacyDictionary:v24];
  data = [v76 data];
  [dictionary2 setObject:data forKeyedSubscript:@"stabilizationRecipe"];
  if (data)
  {
    v28 = [v24 objectForKeyedSubscript:*MEMORY[0x1E69A8B58]];
    CGRectMakeWithDictionaryRepresentation(v28, &rect);

    x = rect.origin.x;
    [(VCPVideoStabilizer *)self cropRect];
    v31 = v30;
    [(VCPVideoStabilizer *)self sourceSize];
    v33 = v32;
    y = rect.origin.y;
    [(VCPVideoStabilizer *)self cropRect];
    v36 = v35;
    [(VCPVideoStabilizer *)self sourceSize];
    v38 = v37;
    width = rect.size.width;
    [(VCPVideoStabilizer *)self cropRect];
    v73 = v40;
    v71 = width;
    v72 = v38;
    v41 = v36;
    v42 = v33;
    [(VCPVideoStabilizer *)self sourceSize];
    v44 = v43;
    height = rect.size.height;
    [(VCPVideoStabilizer *)self cropRect];
    v47 = v46;
    [(VCPVideoStabilizer *)self sourceSize];
    v115.origin.y = y * v41 / v72;
    v115.size.width = v71 * v73 / v44;
    v115.size.height = height * v47 / v48;
    v115.origin.x = x * v31 / v42;
    v49 = CGRectCreateDictionaryRepresentation(v115);
    [dictionary3 setObject:v49 forKeyedSubscript:@"StabilizationCrop"];

    [(VCPVideoStabilizer *)self cropRect];
    v50 = CGRectCreateDictionaryRepresentation(v116);
    [dictionary3 setObject:v50 forKeyedSubscript:@"CleanApertureCrop"];

    [(VCPVideoStabilizer *)self sourceSize];
    v51 = CGSizeCreateDictionaryRepresentation(v112);
    [dictionary3 setObject:v51 forKeyedSubscript:@"SourceSize"];

    v104[0] = @"settlingEffectMissingMetadata";
    v104[1] = @"settlingEffectInvalidTimeRange";
    v105[0] = MEMORY[0x1E695E110];
    v105[1] = MEMORY[0x1E695E110];
    v104[2] = @"settlingEffectStabilizationFailure";
    v105[2] = MEMORY[0x1E695E110];
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
    [dictionary3 setObject:v52 forKeyedSubscript:@"settlingEffectStatus"];

    if ([(VCPVideoStabilizer *)self isPathConstraintsStabilization])
    {
      v102[0] = @"VideoStabilizationResults";
      v99 = @"attributes";
      v100 = dictionary2;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v101 = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
      v102[1] = @"PathConstraintsStabilizationResults";
      v103[0] = v54;
      v96 = @"attributes";
      v97 = dictionary3;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v98 = v55;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
      v103[1] = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
      v58 = self->_results;
      self->_results = v57;
    }

    else
    {
      v94 = @"VideoStabilizationResults";
      v91 = @"attributes";
      v92 = dictionary2;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v93 = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
      v95 = v54;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v55 = self->_results;
      self->_results = v68;
    }

    goto LABEL_27;
  }

  v61 = -50;
LABEL_32:

  return v61;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)sourceSize
{
  width = self->_sourceSize.width;
  height = self->_sourceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_timeRange.start.value = *&range->var0.var0;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.duration.timescale = v3;
}

@end