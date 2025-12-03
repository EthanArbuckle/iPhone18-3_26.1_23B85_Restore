@interface VCPImageHandsAnalyzer
- (BOOL)keypointsOutsideInset:(CGPoint)inset[21] handRegion:(id)region;
- (VCPImageHandsAnalyzer)initWithKeypointsOption:(int)option forceCPU:(BOOL)u sharedModel:(BOOL)model enableHandDetection:(BOOL)detection enableANSTHandDetection:(BOOL)handDetection enableRejectHandsNearBoundaries:(BOOL)boundaries enableHandObject:(BOOL)object sourceWidth:(int)self0 sourceHeight:(int)self1 modelName:(id)self2 revision:(int)self3 options:(id)self4;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer rotationInDegrees:(id)degrees flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)configForAspectRatio:(id)ratio;
- (int)convertSingleResultToDict:(CGPoint)dict[21] keypointConfidence:(float *)confidence box:(id)box handHoldsObjectConfidence:(float)objectConfidence results:(id)results;
- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5;
- (int)updateMaxNumHands:(id)hands;
- (int)updateModelForSourceWidth:(int)width sourceHeight:(int)height;
- (int64_t)getClosestAspectRatio:(id)ratio;
@end

@implementation VCPImageHandsAnalyzer

- (VCPImageHandsAnalyzer)initWithKeypointsOption:(int)option forceCPU:(BOOL)u sharedModel:(BOOL)model enableHandDetection:(BOOL)detection enableANSTHandDetection:(BOOL)handDetection enableRejectHandsNearBoundaries:(BOOL)boundaries enableHandObject:(BOOL)object sourceWidth:(int)self0 sourceHeight:(int)self1 modelName:(id)self2 revision:(int)self3 options:(id)self4
{
  handDetectionCopy = handDetection;
  uCopy = u;
  detectionCopy = detection;
  modelCopy = model;
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = VCPImageHandsAnalyzer;
  v20 = [(VCPImageHandsAnalyzer *)&v46 init];
  v21 = v20;
  if (v20)
  {
    resConfig = v20->_resConfig;
    v20->_resConfig = @"res_384x384";

    v21->_inputWidth = 720;
    v21->_inputHeight = 720;
    v21->_sourceWidth = width;
    v21->_sourceHeight = height;
    v21->_optimizeForDistance = 0;
    v21->_enableRejectHandsNearBoundaries = boundaries;
    [objc_opt_class() getInsetForRejectingHands];
    v21->_inset = *&v23;
    sourceWidth = v21->_sourceWidth;
    if (sourceWidth >= 1 && (sourceHeight = v21->_sourceHeight, sourceHeight >= 1) && (*&v23 = sourceWidth / sourceHeight, [MEMORY[0x1E696AD98] numberWithFloat:v23], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [v26 floatValue];
        *buf = 134217984;
        v48 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: input image aspectRatio = %f", buf, 0xCu);
      }

      if ([(VCPImageHandsAnalyzer *)v21 configForAspectRatio:v26])
      {
        v28 = 0;
LABEL_24:
        v35 = v28;

        goto LABEL_25;
      }

      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (option >= 6)
    {
      optionCopy = 6;
    }

    else
    {
      optionCopy = option;
    }

    if (option <= 1)
    {
      optionCopy = 1;
    }

    v21->_maxNumRegions = optionCopy;
    [objc_opt_class() getExtendRatio];
    v21->_extendRatio = v31;
    if (detectionCopy)
    {
      if (handDetectionCopy && DeviceHasANE())
      {
        *&v32 = v21->_extendRatio;
        v33 = [VCPANSTHandsDetector anstHandsDetectorWithExtendRatio:optionsCopy options:v32];
        v34 = &OBJC_IVAR___VCPImageHandsAnalyzer__anstHandsDetector;
      }

      else
      {
        v33 = [VCPCNNHandsDetector detector:v21->_maxNumRegions forceCPU:uCopy sharedModel:modelCopy inputConfig:v21->_resConfig revision:revision];
        v34 = &OBJC_IVAR___VCPImageHandsAnalyzer__handsDetector;
      }

      v36 = *v34;
      v37 = *(&v21->super.super.isa + v36);
      *(&v21->super.super.isa + v36) = v33;
    }

    v38 = [VCPCNNHandKeypointsDetector detector:uCopy sharedModel:modelCopy modelName:nameCopy enableHandObject:object options:optionsCopy];
    handsKeypointsDetector = v21->_handsKeypointsDetector;
    v21->_handsKeypointsDetector = v38;

    array = [MEMORY[0x1E695DF70] array];
    results = v21->_results;
    v21->_results = array;

    v26 = v29;
    v28 = v21;
    goto LABEL_24;
  }

  v35 = 0;
LABEL_25:

  return v35;
}

- (int64_t)getClosestAspectRatio:(id)ratio
{
  ratioCopy = ratio;
  v4 = [&unk_1F49BEF50 indexOfObject:ratioCopy inSortedRange:0 options:objc_msgSend(&unk_1F49BEF50 usingComparator:{"count"), 1280, &__block_literal_global_60}];
  v5 = [&unk_1F49BEF50 count];
  if (v4 >= v5 - 1)
  {
    v4 = v5 - 1;
  }

  return v4;
}

- (int)configForAspectRatio:(id)ratio
{
  v30 = *MEMORY[0x1E69E9840];
  ratioCopy = ratio;
  v5 = ratioCopy;
  if (ratioCopy)
  {
    v6 = MEMORY[0x1E696AD98];
    [ratioCopy floatValue];
    v8 = v7;
    [v5 floatValue];
    *&v9 = 1.0 / *&v9;
    if (v8 >= *&v9)
    {
      *&v9 = v8;
    }

    v10 = [v6 numberWithFloat:v9];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v28 = v5;
      *&v28[8] = 2112;
      v29 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: aspectRatio = %@, queryAspectRatioVal = %@", buf, 0x16u);
    }

    v11 = [(VCPImageHandsAnalyzer *)self getClosestAspectRatio:v10];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v28 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: feasibleShapeIndex = %d", buf, 8u);
    }

    [v5 floatValue];
    v13 = (&kFeasibleInputShape + 8 * v11);
    v14 = (*v13 < v13[1]) ^ (v12 > 1.0);
    if (v14)
    {
      v15 = *v13;
    }

    else
    {
      v15 = v13[1];
    }

    if (v14)
    {
      v16 = v13[1];
    }

    else
    {
      v16 = *v13;
    }

    v17 = v16;
    v18 = v15;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v28 = v16;
      *&v28[4] = 1024;
      *&v28[6] = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: detectorHeight = %d, detectorWidth = %d", buf, 0xEu);
    }

    sourceWidth = self->_sourceWidth;
    v20 = 2.5;
    if (sourceWidth >= 1)
    {
      sourceHeight = self->_sourceHeight;
      if (sourceHeight >= 1 && self->_optimizeForDistance)
      {
        v20 = fmaxf(fminf(sourceWidth / v18, sourceHeight / v17), 2.5);
      }
    }

    self->_inputWidth = (v20 * v18);
    self->_inputHeight = (v20 * v17);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      *buf = 67109376;
      *v28 = inputWidth;
      *&v28[4] = 1024;
      *&v28[6] = inputHeight;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: preferred source width = %d, preferred source height = %d", buf, 0xEu);
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"res_%dx%d", v15, v16];
    resConfig = self->_resConfig;
    self->_resConfig = v24;
  }

  return 0;
}

- (int)updateMaxNumHands:(id)hands
{
  v11 = *MEMORY[0x1E69E9840];
  handsCopy = hands;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = handsCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ImageHandAnalyzer: maxNumHands from options = %@", &v9, 0xCu);
  }

  if (handsCopy)
  {
    intValue = [handsCopy intValue];
    if (intValue >= 6)
    {
      v6 = 6;
    }

    else
    {
      v6 = intValue;
    }

    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    self->_maxNumRegions = v7;
    [(VCPCNNHandsDetector *)self->_handsDetector updateMaxNumRegions:?];
  }

  return 0;
}

- (int)updateModelForSourceWidth:(int)width sourceHeight:(int)height
{
  v7 = self->_resConfig;
  self->_sourceWidth = width;
  self->_sourceHeight = height;
  v9 = -50;
  if (width >= 1 && height >= 1)
  {
    *&v8 = width / height;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v9 = [(VCPImageHandsAnalyzer *)self configForAspectRatio:v10];

    if (!v9)
    {
      if (v7 != self->_resConfig)
      {
        handsDetector = self->_handsDetector;
        if (handsDetector)
        {
          [(VCPCNNHandsDetector *)handsDetector updateModelWithResConfig:?];
        }
      }

      v9 = 0;
    }
  }

  return v9;
}

- (int)convertSingleResultToDict:(CGPoint)dict[21] keypointConfidence:(float *)confidence box:(id)box handHoldsObjectConfidence:(float)objectConfidence results:(id)results
{
  v80[6] = *MEMORY[0x1E69E9840];
  boxCopy = box;
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = MEMORY[0x1E696AD98];
  [boxCopy minX];
  v11 = [v10 numberWithFloat:?];
  v80[0] = v11;
  v12 = MEMORY[0x1E696AD98];
  [boxCopy minY];
  v13 = [v12 numberWithFloat:?];
  v80[1] = v13;
  v14 = MEMORY[0x1E696AD98];
  [boxCopy maxX];
  v15 = [v14 numberWithFloat:?];
  v80[2] = v15;
  v16 = MEMORY[0x1E696AD98];
  [boxCopy maxY];
  v17 = [v16 numberWithFloat:?];
  v80[3] = v17;
  v18 = MEMORY[0x1E696AD98];
  [boxCopy confidence];
  v19 = [v18 numberWithFloat:?];
  v80[4] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
  v80[5] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:6];
  [array2 addObject:v21];

  [boxCopy minX];
  v23 = v22;
  [boxCopy minY];
  v25 = v24;
  [boxCopy maxX];
  v27 = v26;
  [boxCopy minX];
  v29 = v28;
  [boxCopy maxY];
  v31 = v30;
  [boxCopy minY];
  v32 = 0;
  v68 = (v27 - v29);
  v69 = v23;
  v66 = v25;
  v67 = (v31 - v33);
  p_y = &dict->y;
  do
  {
    [boxCopy maxX];
    v36 = v35;
    [boxCopy minX];
    v38 = v37;
    [boxCopy maxY];
    v40 = v39;
    [boxCopy minY];
    v42 = v41;
    if (*(p_y - 1) == 0.0 && (v43 = *p_y, *p_y == 0.0))
    {
      v78[0] = &unk_1F49BB1E8;
      v78[1] = &unk_1F49BB1E8;
      *&v43 = confidence[v32];
      v51 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
      v78[2] = v51;
      v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
      v78[3] = v53;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:4];
      [array addObject:v55];
    }

    else
    {
      [boxCopy minX];
      v45 = v44;
      v46 = *(p_y - 1);
      [boxCopy minY];
      v48 = v47;
      v49 = v45 + v46 / 192.0 * (v36 - v38);
      *&v49 = v49;
      v50 = *p_y;
      v51 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
      v52 = v48 + v50 / 192.0 * (v40 - v42);
      *&v52 = v52;
      *&v52 = 1.0 - *&v52;
      v79[0] = v51;
      v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
      v79[1] = v53;
      *&v54 = confidence[v32];
      v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
      v79[2] = v55;
      v56 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "classIndex")}];
      v79[3] = v56;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:4];
      [array addObject:v57];
    }

    ++v32;
    p_y += 2;
  }

  while (v32 != 21);
  [dictionary setObject:array forKeyedSubscript:@"handsKeypoints"];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "trackID")}];
  [dictionary setObject:v58 forKeyedSubscript:@"handsTrackingID"];

  v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(boxCopy, "groupID")}];
  [dictionary setObject:v59 forKeyedSubscript:@"handsGroupID"];

  v81.size.height = v67;
  v81.origin.y = 1.0 - v66 - v67;
  v81.size.width = v68;
  v81.origin.x = v69;
  v60 = NSStringFromRect(v81);
  [dictionary setObject:v60 forKeyedSubscript:@"handsBounds"];

  LODWORD(v61) = 0.5;
  *&v62 = objectConfidence;
  if (objectConfidence > 0.5)
  {
    *&v61 = objectConfidence;
    v63 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
    [dictionary setObject:v63 forKeyedSubscript:@"handsHoldObject"];
  }

  v76 = @"attributes";
  v77 = dictionary;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:{1, v61, v62}];
  [resultsCopy addObject:v64];

  return 0;
}

- (BOOL)keypointsOutsideInset:(CGPoint)inset[21] handRegion:(id)region
{
  v57 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    inset = self->_inset;
    *buf = 134217984;
    insetCopy = inset;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPImageHandsAnalyzer - inset for rejecting hands near frame boundaries = %f", buf, 0xCu);
  }

  [regionCopy maxX];
  v9 = v8;
  [regionCopy minX];
  v11 = v10;
  [regionCopy maxY];
  v13 = v12;
  [regionCopy minY];
  v15 = v14;
  [regionCopy minX];
  v16 = v9 - v11;
  if (v17 == 0.0)
  {
    v18 = self->_inset;
    if ((v16 * 0.1) >= (v16 - v18))
    {
      v19 = v16 * 0.1;
    }

    else
    {
      v19 = v16 - v18;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = v16;
  }

  [regionCopy maxX];
  if (v20 == 1.0)
  {
    if ((v16 * 0.1) >= (v19 - self->_inset))
    {
      v19 = v16 * 0.1;
    }

    else
    {
      v19 = v19 - self->_inset;
    }
  }

  [regionCopy minY];
  v22 = v13 - v15;
  v23 = self->_inset;
  v24 = (v13 - v15) * 0.1;
  v25 = v22 - v23;
  if (v24 >= (v22 - v23))
  {
    v25 = v24;
  }

  if (v21 >= v23)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v21 >= v23)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = self->_inset;
  }

  [regionCopy maxY];
  if (v28 == 1.0)
  {
    if (v24 >= (v26 - self->_inset))
    {
      v26 = v24;
    }

    else
    {
      v26 = v26 - self->_inset;
    }
  }

  [regionCopy minX];
  v30 = v29;
  [regionCopy minY];
  v31 = 0;
  v53 = (v27 + v32);
  v54 = (v18 + v30);
  rect = v19;
  v33 = v26;
  p_y = &inset->y;
  v35 = 21;
  do
  {
    [regionCopy minX];
    v37 = v36;
    v38 = *(p_y - 1);
    [regionCopy maxX];
    v40 = v39;
    [regionCopy minX];
    v42 = v41;
    [regionCopy minY];
    v44 = v43;
    v45 = *p_y;
    [regionCopy maxY];
    v47 = v46;
    [regionCopy minY];
    v48 = v37 + v38 / 192.0 * (v40 - v42);
    v50 = v44 + v45 / 192.0 * (v47 - v49);
    v58.x = v48;
    v58.y = v50;
    v59.origin.y = v53;
    v59.origin.x = v54;
    v59.size.width = rect;
    v59.size.height = v33;
    v31 += CGRectContainsPoint(v59, v58);
    p_y += 2;
    --v35;
  }

  while (v35);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(insetCopy) = 21 - v31;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPImageHandAnalyzer - number of keypoints outside inset = %d", buf, 8u);
  }

  return v31 < 0x15;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer rotationInDegrees:(id)degrees flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v95 = *MEMORY[0x1E69E9840];
  degreesCopy = degrees;
  cancelCopy = cancel;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  resultsCopy = results;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v89 = Width;
    v90 = 1024;
    v91 = Height;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "HandPoseInputBuffer: width = %d,  height = %d", buf, 0xEu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  [(NSMutableArray *)self->_results removeAllObjects];
  if (self->_anstHandsDetector)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "HandPoseInputBuffer: running VCPANSTHandsDetector", buf, 2u);
    }

    v14 = VCPSignPostLog();
    v15 = os_signpost_id_generate(v14);

    v16 = VCPSignPostLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPImageHandsAnalyzer_anstHandDetection", "", buf, 2u);
    }

    v18 = [(VCPANSTHandsDetector *)self->_anstHandsDetector handsDetection:buffer rotationInDegrees:degreesCopy handsRegions:array cancel:cancelCopy];
    if (v18)
    {
      goto LABEL_56;
    }

    v19 = VCPSignPostLog();
    v20 = v19;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v15, "VCPImageHandsAnalyzer_anstHandDetection", "", buf, 2u);
    }
  }

  else
  {
    if (!self->_handsDetector)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v75 = 120;
      obj = self->_handObjects;
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v92 count:16];
      if (v26)
      {
        v27 = Width;
        v28 = *v83;
        v29 = Height;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v83 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v82 + 1) + 8 * i);
            [v31 bounds];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v40 = [VCPBoundingBox alloc];
            [v31 confidence];
            LODWORD(v42) = v41;
            *&v43 = v39;
            *&v44 = v37;
            v45 = 1.0 - v35 - v39;
            *&v46 = v45;
            *&v45 = v33;
            v47 = [(VCPBoundingBox *)v40 initWithXYAndSize:v45 y:v46 width:v44 height:v43 confidence:v42];
            -[VCPBoundingBox setClassIndex:](v47, "setClassIndex:", [v31 chirality]);
            -[VCPBoundingBox setTrackID:](v47, "setTrackID:", [v31 handID]);
            -[VCPBoundingBox setGroupID:](v47, "setGroupID:", [v31 groupID]);
            [(VCPBoundingBox *)v47 minX];
            *&v49 = v48 * v27;
            [(VCPBoundingBox *)v47 setMinX:v49];
            [(VCPBoundingBox *)v47 maxX];
            *&v51 = v50 * v27;
            [(VCPBoundingBox *)v47 setMaxX:v51];
            [(VCPBoundingBox *)v47 minY];
            *&v53 = v52 * v29;
            [(VCPBoundingBox *)v47 setMinY:v53];
            [(VCPBoundingBox *)v47 maxY];
            *&v55 = v54 * v29;
            [(VCPBoundingBox *)v47 setMaxY:v55];
            *&v56 = self->_extendRatio;
            *&v57 = v27;
            *&v58 = v29;
            v18 = [(VCPBoundingBox *)v47 extendBoxBy:v56 scaleX:v57 scaleY:v58];
            if (v18)
            {

              goto LABEL_56;
            }

            [array addObject:v47];
          }

          v26 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v92 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v59 = [*(&self->super.super.isa + v75) count];
        *buf = 67109120;
        v89 = v59;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPImageHandAnalyzer - analyze %d handObjects", buf, 8u);
      }

      goto LABEL_39;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "HandPoseInputBuffer: running VCPCNNHandsDetector", buf, 2u);
    }

    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPImageHandsAnalyzer_handDetection", "", buf, 2u);
    }

    v18 = [(VCPCNNHandsDetector *)self->_handsDetector handsDetection:buffer handsRegions:array cancel:cancelCopy];
    if (v18)
    {
      goto LABEL_56;
    }

    v25 = VCPSignPostLog();
    v20 = v25;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v22, "VCPImageHandsAnalyzer_handDetection", "", buf, 2u);
    }
  }

LABEL_39:
  for (j = 0; [array count] > j; ++j)
  {
    v61 = VCPSignPostLog();
    v62 = os_signpost_id_generate(v61);

    v63 = VCPSignPostLog();
    v64 = v63;
    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      *v81 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_BEGIN, v62, "VCPImageHandsAnalyzer_keypointsPerHand", "", v81, 2u);
    }

    *v81 = 0;
    handsKeypointsDetector = self->_handsKeypointsDetector;
    v66 = [array objectAtIndexedSubscript:j];
    v18 = [(VCPCNNHandKeypointsDetector *)handsKeypointsDetector handKeypointsDetection:buffer box:v66 keypoints:buf keypointConfidence:v93 handHoldsObjectConfidence:v81];

    if (v18)
    {
      goto LABEL_56;
    }

    v67 = VCPSignPostLog();
    v68 = v67;
    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      *v80 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v68, OS_SIGNPOST_INTERVAL_END, v62, "VCPImageHandsAnalyzer_keypointsPerHand", "", v80, 2u);
    }

    if (self->_enableRejectHandsNearBoundaries)
    {
      v69 = [array objectAtIndexedSubscript:j];
      v70 = [(VCPImageHandsAnalyzer *)self keypointsOutsideInset:buf handRegion:v69];

      if (v70)
      {
        continue;
      }
    }

    v71 = [array objectAtIndexedSubscript:j];
    LODWORD(v72) = *v81;
    [(VCPImageHandsAnalyzer *)self convertSingleResultToDict:buf keypointConfidence:v93 box:v71 handHoldsObjectConfidence:self->_results results:v72];
  }

  results = self->_results;
  if (results)
  {
    v86 = @"HandsResults";
    resultsCopy2 = results;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&resultsCopy2 forKeys:&v86 count:1];
    *resultsCopy = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_56:

  return v18;
}

- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  result = -50;
  if (format && height && a5)
  {
    *format = self->_inputWidth;
    *height = self->_inputHeight;
    *a5 = 1111970369;
    if (MediaAnalysisLogLevel() >= 7)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      inputWidth = self->_inputWidth;
      inputHeight = self->_inputHeight;
      v9[0] = 67109376;
      v9[1] = inputWidth;
      v10 = 1024;
      v11 = inputHeight;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "preferredInputFormat:  width = %d,  height = %d", v9, 0xEu);
    }

    return 0;
  }

  return result;
}

@end