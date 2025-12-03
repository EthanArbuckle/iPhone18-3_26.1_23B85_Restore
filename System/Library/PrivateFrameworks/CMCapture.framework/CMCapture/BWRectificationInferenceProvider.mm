@interface BWRectificationInferenceProvider
- (BWRectificationInferenceProvider)initWithRefInputRequirement:(id)requirement auxInputRequirement:(id)inputRequirement refKeypointsInputRequirement:(id)keypointsInputRequirement auxKeypointsInputRequirement:(id)auxKeypointsInputRequirement refOutputRequirement:(id)outputRequirement auxOutputRequirement:(id)auxOutputRequirement opticalFlowOutputRequirement:(id)flowOutputRequirement originalRefRequirement:(id)self0 originalAuxRequirement:(id)self1 resourceProvider:(id)self2 configuration:(id)self3;
- (NSArray)inputVideoRequirements;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_applyRollingShutterCorrectionToKeypointsRef:(uint64_t)ref andAux:(unsigned int)aux withCount:(uint64_t)count inverseRefHomographies:(int)homographies refHomographyCount:(uint64_t)homographyCount refHomographyStep:(int)step inverseAuxHomographies:(float)auxHomographies auxHomographyCount:(float)self0 auxHomographyStep:;
- (uint64_t)_detectKeypointsLKTFlowWithMagnification:(uint64_t)magnification preShift:(_DWORD *)shift refTex:(float)tex auxTex:(float32x2_t)auxTex keypointsCountOut:;
- (unint64_t)_rscForBuffer:(void *)buffer withHomograhies:(void *)homograhies andInverseHomographies:(float *)homographies withHomographyStep:;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWRectificationInferenceProvider

- (BWRectificationInferenceProvider)initWithRefInputRequirement:(id)requirement auxInputRequirement:(id)inputRequirement refKeypointsInputRequirement:(id)keypointsInputRequirement auxKeypointsInputRequirement:(id)auxKeypointsInputRequirement refOutputRequirement:(id)outputRequirement auxOutputRequirement:(id)auxOutputRequirement opticalFlowOutputRequirement:(id)flowOutputRequirement originalRefRequirement:(id)self0 originalAuxRequirement:(id)self1 resourceProvider:(id)self2 configuration:(id)self3
{
  v21.receiver = self;
  v21.super_class = BWRectificationInferenceProvider;
  v19 = [(BWRectificationInferenceProvider *)&v21 init];
  if (v19)
  {
    *(v19 + 2) = requirement;
    *(v19 + 3) = inputRequirement;
    *(v19 + 4) = keypointsInputRequirement;
    *(v19 + 5) = auxKeypointsInputRequirement;
    *(v19 + 6) = outputRequirement;
    *(v19 + 7) = auxOutputRequirement;
    *(v19 + 8) = flowOutputRequirement;
    *(v19 + 9) = refRequirement;
    *(v19 + 10) = auxRequirement;
    *(v19 + 90) = [configuration cameraInfoByPortType];
    *(v19 + 92) = [objc_msgSend(provider "defaultDeviceMetalContext")];
    v19[792] = 1;
    *(v19 + 204) = 2;
    *(v19 + 103) = 1;
    v19[840] = 1;
    *(v19 + 844) = 0;
    *(v19 + 852) = 0x3A83126F00000000;
    *(v19 + 50) = 0u;
  }

  return v19;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  zoomedAux = self->_zoomedAux;
  if (zoomedAux)
  {
    CFRelease(zoomedAux);
  }

  adaptiveCorrectionKeypointsReferenceDistorted = self->_adaptiveCorrectionKeypointsReferenceDistorted;
  if (adaptiveCorrectionKeypointsReferenceDistorted)
  {
    self->_adaptiveCorrectionKeypointsReferenceDistorted = 0;
    free(adaptiveCorrectionKeypointsReferenceDistorted);
  }

  adaptiveCorrectionKeypointsAuxiliaryDistorted = self->_adaptiveCorrectionKeypointsAuxiliaryDistorted;
  if (adaptiveCorrectionKeypointsAuxiliaryDistorted)
  {
    self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = 0;
    free(adaptiveCorrectionKeypointsAuxiliaryDistorted);
  }

  v7.receiver = self;
  v7.super_class = BWRectificationInferenceProvider;
  [(BWRectificationInferenceProvider *)&v7 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/DisparityV5.bundle"];
  if (!v4)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v5 = v4;
  self->_metalContext = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v4 andOptionalCommandQueue:self->_commandQueue];
  if (![v5 classNamed:@"Calibration"])
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v6 = objc_opt_new();
  self->_calibration = v6;
  if (!v6)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
LABEL_20:
    LODWORD(opticalFlowOutputRequirement) = 0;
    return opticalFlowOutputRequirement;
  }

  v7 = [v5 classNamed:@"DisparityTuningParameters"];
  if (!v7)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [v5 classNamed:@"LKTKeypointDetector"];
  if (!v9)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v10 = v9;
  v11 = [v5 classNamed:@"Demosaic"];
  if (!v11)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v12 = v11;
  cameraParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraParameters];
  if (!cameraParameters)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v14 = *off_1E798A9D0;
  v15 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](cameraParameters objectForKeyedSubscript:{*off_1E798A9D0), "objectForKeyedSubscript:", @"Common", "objectForKeyedSubscript:", @"StereoDisparity"}];
  v16 = [v15 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"V5"}];
  v17 = [[v8 alloc] initWithTuningDictionary:objc_msgSend(v16 cameraInfoByPortType:{"objectForKeyedSubscript:", @"BaseConfiguration", self->_cameraInfoByPortType}];
  self->_disparityTuningParameters = v17;
  if (!v17)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  if (-[DisparityTuningParameters updateTuningParametersWith:](v17, "updateTuningParametersWith:", [v16 objectForKeyedSubscript:@"CinematicVideo"]))
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v18 = *off_1E798A970;
  v51[0] = v14;
  v51[1] = v18;
  cameraInfoByPortType = self->_cameraInfoByPortType;
  v52[0] = v16;
  v52[1] = cameraInfoByPortType;
  self->_calibrationOptions = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
  videoFormat = [(BWInferenceVideoRequirement *)self->_refInputRequirement videoFormat];
  videoFormat2 = [(BWInferenceVideoRequirement *)self->_auxInputRequirement videoFormat];
  self->_rectificationWidth = [(BWInferenceVideoFormat *)videoFormat width];
  self->_rectificationHeight = [(BWInferenceVideoFormat *)videoFormat height];
  lastScale = [(DisparityTuningParameters *)self->_disparityTuningParameters lastScale];
  v23 = self->_rectificationWidth >> lastScale;
  self->_keypointGridWidth = v23 / [(DisparityTuningParameters *)self->_disparityTuningParameters blockSize];
  v24 = self->_rectificationHeight >> lastScale;
  v25 = v24 / [(DisparityTuningParameters *)self->_disparityTuningParameters blockSize];
  self->_keypointGridHeight = v25;
  v26 = v25 * LODWORD(self->_keypointGridWidth);
  [(Calibration *)self->_calibration allocateResourcesForMaxNumPoints:v26];
  width = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_originalRefInputRequirement videoFormat] width];
  height = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_originalRefInputRequirement videoFormat] height];
  self->_calibrationWidth = width;
  self->_calibrationHeight = height;
  [(Calibration *)self->_calibration setReferenceBufferDimensions:width | (height << 32) auxillaryBufferDimensions:width | (height << 32) normalizedReferenceFinalCropRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  [(Calibration *)self->_calibration setTemporalCorrectionEnabled:1];
  [(Calibration *)self->_calibration setPixelBufferScalingEnabled:1];
  self->_adcFramesConverged = 0;
  v29 = [[v12 alloc] initWithMetalContext:self->_metalContext];
  self->_auxiliaryDemosaic = v29;
  if (!v29)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_20;
  }

  self->_lktKeypointDetector = [[v10 alloc] initWithMetalContext:self->_metalContext width:self->_rectificationWidth height:self->_rectificationHeight nscales:0xFFFFFFFFLL lastScale:lastScale];
  [(LKTKeypointDetector *)self->_lktKeypointDetector setNwarpings:[(DisparityTuningParameters *)self->_disparityTuningParameters nwarps]];
  width2 = [(BWInferenceVideoFormat *)videoFormat width];
  if (width2 != [(BWInferenceVideoFormat *)videoFormat2 width]|| (v31 = [(BWInferenceVideoFormat *)videoFormat height], v31 != [(BWInferenceVideoFormat *)videoFormat2 height]))
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
LABEL_36:
    LODWORD(opticalFlowOutputRequirement) = -31710;
    return opticalFlowOutputRequirement;
  }

  self->_refInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:self->_rectificationWidth height:self->_rectificationHeight mipmapped:0];
  self->_auxInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:self->_rectificationWidth height:self->_rectificationHeight mipmapped:0];
  self->_refKeypointsInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:self->_rectificationWidth height:self->_rectificationHeight mipmapped:0];
  self->_auxKeypointsInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:self->_rectificationWidth height:self->_rectificationHeight mipmapped:0];
  self->_refOutputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_refOutputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_refOutputRequirement, "videoFormat"), "height"), 0];
  self->_auxOutputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_auxOutputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_auxOutputRequirement, "videoFormat"), "height"), 0];
  v32 = [objc_alloc(MEMORY[0x1E6991790]) initWithOptionalCommandQueue:{-[FigMetalContext commandQueue](self->_metalContext, "commandQueue")}];
  self->_gdcTransform = v32;
  if (!v32)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  self->_zoomedAux = CreatePixelBuffer();
  v33 = 16 * v26;
  v34 = malloc_type_malloc(v33, 0x100004000313F17uLL);
  self->_adaptiveCorrectionKeypointsReferenceDistorted = v34;
  if (!v34)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  v35 = malloc_type_malloc(v33, 0x100004000313F17uLL);
  self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = v35;
  if (!v35)
  {
    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    goto LABEL_36;
  }

  opticalFlowOutputRequirement = self->_opticalFlowOutputRequirement;
  if (opticalFlowOutputRequirement)
  {
    self->_opticalFlowDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](opticalFlowOutputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_opticalFlowOutputRequirement, "videoFormat"), "height"), 0];
    disparityPostProcessor = self->_disparityPostProcessor;
    if (disparityPostProcessor)
    {
    }

    width3 = [(MTLTextureDescriptor *)self->_refOutputDescriptor width];
    height2 = [(MTLTextureDescriptor *)self->_refOutputDescriptor height];
    width4 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_opticalFlowOutputRequirement videoFormat] width];
    height3 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_opticalFlowOutputRequirement videoFormat] height];
    width5 = [(MTLTextureDescriptor *)self->_refOutputDescriptor width];
    height4 = [(MTLTextureDescriptor *)self->_refOutputDescriptor height];
    v44 = objc_alloc(getPTDisparityPostProcessingClass());
    commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
    v50[0] = width3;
    v50[1] = height2;
    v50[2] = 1;
    v49[0] = width5;
    v49[1] = height4;
    v49[2] = 1;
    v48[0] = width4;
    v48[1] = height3;
    v48[2] = 1;
    v46 = [v44 initWithCommandQueue:commandQueue disparitySize:v50 filteredDisparitySize:v49 disparityPixelFormat:25 colorSize:v48 colorPixelFormat:71 sensorPort:&stru_1F216A3D0];
    self->_disparityPostProcessor = v46;
    if (v46)
    {
      goto LABEL_20;
    }

    [BWRectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    LODWORD(opticalFlowOutputRequirement) = -31702;
  }

  return opticalFlowOutputRequirement;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
  v11 = *off_1E798A3C8;
  v12 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  if (!v12)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v132 = 0;
    v15 = 0;
    v122 = 0;
    v124 = 0;
    v126 = 0;
    v13 = 0;
LABEL_113:
    v118 = 0;
    cf = 0;
LABEL_114:
    v77 = 0;
    v78 = 0;
LABEL_142:
    handlerCopy4 = handler;
    goto LABEL_79;
  }

  v13 = CMGetAttachment(buffer, v11, 0);
  if (!v13)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
    v122 = 0;
    v124 = 0;
    v126 = 0;
    goto LABEL_113;
  }

  storageCopy = storage;
  target = buffer;
  v130 = v12;
  if (self->_applyRollingShutterCorrection)
  {
    v128 = [(BWRectificationInferenceProvider *)self _rscForBuffer:buffer withHomograhies:&v195 andInverseHomographies:&v194 withHomographyStep:&v191 + 1];
    if (v128 <= 0)
    {
      [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      goto LABEL_119;
    }

    v112 = [(BWRectificationInferenceProvider *)self _rscForBuffer:&v193 withHomograhies:&v192 andInverseHomographies:&v191 withHomographyStep:?];
    if (v112 <= 0)
    {
      [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      goto LABEL_119;
    }

    width = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_originalAuxInputRequirement videoFormat] width];
    height = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_originalAuxInputRequirement videoFormat] height];
    v88 = self->_calibrationWidth / width;
    calibrationHeight = self->_calibrationHeight;
    v90 = calibrationHeight / height;
    if (v88 != 1.0 || v90 != 1.0)
    {
      v92 = 0;
      v93 = LODWORD(v88);
      v94.i32[0] = 0;
      v94.i64[1] = 0;
      v94.f32[1] = calibrationHeight / height;
      v95 = 0uLL;
      v116 = v94.f32[1];
      v123 = COERCE_UNSIGNED_INT(1.0 / v88);
      LODWORD(v96) = 0;
      *(&v96 + 1) = 1.0 / v90;
      *cfa = v96;
      v98 = v192;
      v97 = v193;
      v99 = xmmword_1ACF06340;
      v125 = v94.u64[0];
      v127 = v93.u32[0];
      do
      {
        v100 = 0;
        v101 = v97 + 48 * v92;
        v102 = *(v101 + 1);
        v103 = *(v101 + 2);
        v196 = *v101;
        v197 = v102;
        v198 = v103;
        v159 = v95;
        v160 = v95;
        v161 = v95;
        do
        {
          *(&v159 + v100) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v196 + v100))), v94, *(&v196 + v100), 1), v99, *(&v196 + v100), 2);
          v100 += 16;
        }

        while (v100 != 48);
        v104 = 0;
        v105 = v159;
        v106 = v160;
        v107 = v161;
        v196 = v123;
        v197 = *cfa;
        v198 = xmmword_1ACF06340;
        v159 = v95;
        v160 = v95;
        v161 = v95;
        do
        {
          *(&v159 + v104) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*(&v196 + v104))), v106, *(&v196 + v104), 1), v107, *(&v196 + v104), 2);
          v104 += 16;
        }

        while (v104 != 48);
        v108 = v159.f64[0];
        v109 = v160;
        v110 = v161;
        *(v101 + 2) = LODWORD(v159.f64[1]);
        *v101 = v108;
        *(v101 + 6) = v109.i32[2];
        *(v101 + 10) = v110.i32[2];
        *(v101 + 2) = v109.i64[0];
        *(v101 + 4) = v110.i64[0];
        v111 = &v98[48 * v92];
        v199 = __invert_f3(*v101);
        *(v111 + 2) = v199.columns[0].i32[2];
        *v111 = v199.columns[0].i64[0];
        *(v111 + 6) = v199.columns[1].i32[2];
        *(v111 + 2) = v199.columns[1].i64[0];
        *(v111 + 10) = v199.columns[2].i32[2];
        ++v92;
        *(v111 + 4) = v199.columns[2].i64[0];
        v94 = v125;
        v93 = v127;
        v95 = 0uLL;
        v99 = xmmword_1ACF06340;
      }

      while (v92 != v112);
      *&v191 = v116 * *&v191;
      storage = storageCopy;
    }
  }

  else
  {
    v112 = 0;
    v128 = 0;
  }

  v12 = [storage pixelBufferForRequirement:self->_refInputRequirement];
  if (!v12)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
LABEL_121:
    v132 = 0;
    v15 = 0;
    goto LABEL_122;
  }

  v14 = [storage pixelBufferForRequirement:self->_refKeypointsInputRequirement];
  if (!v14)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
LABEL_120:
    v12 = 0;
    goto LABEL_121;
  }

  v15 = [storage pixelBufferForRequirement:self->_auxInputRequirement];
  if (!v15)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
LABEL_122:
    v122 = 0;
    v124 = 0;
    v126 = 0;
    v13 = 0;
    v118 = 0;
    cf = 0;
LABEL_141:
    v77 = 0;
    v78 = 4294935584;
    goto LABEL_142;
  }

  v16 = [storage pixelBufferForRequirement:self->_auxKeypointsInputRequirement];
  if (!v16)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_119:
    v20 = 0;
    v76 = 0;
    v14 = 0;
    goto LABEL_120;
  }

  v17 = v16;
  v18 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_refOutputRequirement), "newPixelBuffer"}];
  if (!v18)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
    v122 = 0;
    v124 = 0;
    v126 = 0;
    v13 = 0;
    v118 = 0;
    cf = 0;
LABEL_125:
    v77 = 0;
    v78 = 4294935578;
    goto LABEL_142;
  }

  v19 = v18;
  v20 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_auxOutputRequirement), "newPixelBuffer"}];
  cf = v19;
  if (!v20)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
    v122 = 0;
    v124 = 0;
    v126 = 0;
    v13 = 0;
    v118 = 0;
    goto LABEL_125;
  }

  [storage setPixelBuffer:v19 forRequirement:self->_refOutputRequirement];
  [storage setPixelBuffer:v20 forRequirement:self->_auxOutputRequirement];
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  v126 = [objc_msgSend(commandQueue "device")];
  v124 = [objc_msgSend(commandQueue "device")];
  v122 = [objc_msgSend(commandQueue "device")];
  calibrationOptions = self->_calibrationOptions;
  calibration = self->_calibration;
  disparityTuningParameters = self->_disparityTuningParameters;
  if (disparityTuningParameters)
  {
    [(DisparityTuningParameters *)disparityTuningParameters adaptiveCorrectionConfig];
  }

  else
  {
    v190 = 0u;
    v189 = 0u;
    v188 = 0u;
    v187 = 0u;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
  }

  v118 = v20;
  if ([(Calibration *)calibration extractParametersFromReferenceMetadata:v13 auxiliaryMetadata:v130 options:calibrationOptions adaptiveCorrectionConfig:&v159 useReferenceFrame:1])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  if ([(Calibration *)self->_calibration computeInitialCalibration])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  [CMGetAttachment(target @"TotalZoomFactor"];
  v26 = v25;
  v27 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  v28 = vabds_f32(v26, self->_oldZoomFactor) > self->_zoomDeltaThreshold || v27 != self->_oldQuadraBinningFactor;
  self->_oldZoomFactor = v26;
  self->_oldQuadraBinningFactor = v27;
  if (!(self->_adcFrameCounter % self->_adcFrequency) && self->_adcSkipOnConflictWithSmartStyleLearning && [v13 objectForKeyedSubscript:*off_1E798A8E8])
  {
    self->_adcSkipOnConflictWithSmartStyleLearning = 0;
    ++self->_adcFrameCounter;
  }

  numFramesSinceAdcSkipOnConflictWithSmartStyleLearning = self->_numFramesSinceAdcSkipOnConflictWithSmartStyleLearning;
  self->_numFramesSinceAdcSkipOnConflictWithSmartStyleLearning = numFramesSinceAdcSkipOnConflictWithSmartStyleLearning + 1;
  if (numFramesSinceAdcSkipOnConflictWithSmartStyleLearning >= 59)
  {
    self->_numFramesSinceAdcSkipOnConflictWithSmartStyleLearning = 0;
    self->_adcSkipOnConflictWithSmartStyleLearning = 1;
  }

  v158 = 0;
  if (!v28 && self->_adcFrameCounter % self->_adcFrequency && self->_adcFramesConverged >= self->_adcMinFramesToConverge)
  {
    [(Calibration *)self->_calibration applyCurrentTemporalState];
    goto LABEL_29;
  }

  [(Calibration *)self->_calibration referenceMagnification];
  if (v81 <= 0.0)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_114;
  }

  v82 = v81;
  v159.f64[0] = 0.0;
  if ([(Calibration *)self->_calibration computeAuxiliaryImageShiftForKeypoints:&v159])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  [self->_auxiliaryDemosaic resampleLuma:v124 toLuma:v122 magnification:COERCE_DOUBLE(__PAIR64__(HIDWORD(v159.f64[0]) preShift:LODWORD(v82))), COERCE_DOUBLE(vmul_f32(*&v159.f64[0], vdiv_f32(vcvt_f32_u32(*&self->_rectificationWidth), vcvt_f32_f64(vcvtq_f64_u64(*&self->_calibrationWidth)))))];
  if ([(BWRectificationInferenceProvider *)self _detectKeypointsLKTFlowWithMagnification:v126 preShift:v122 refTex:&v158 auxTex:v82 keypointsCountOut:*&v159.f64[0]])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  v83 = v158;
  if (self->_applyRollingShutterCorrection && [(BWRectificationInferenceProvider *)self _applyRollingShutterCorrectionToKeypointsRef:self->_adaptiveCorrectionKeypointsAuxiliaryDistorted andAux:v158 withCount:v194 inverseRefHomographies:v128 refHomographyCount:v192 refHomographyStep:v112 inverseAuxHomographies:*(&v191 + 1) auxHomographyCount:*&v191 auxHomographyStep:?])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_131:
    v20 = 0;
    v76 = 0;
    v14 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
LABEL_132:
    v13 = 0;
    v77 = 0;
    v78 = 4294935586;
    goto LABEL_142;
  }

  [(Calibration *)self->_calibration setKeypointsForReference:self->_adaptiveCorrectionKeypointsReferenceDistorted auxiliary:self->_adaptiveCorrectionKeypointsAuxiliaryDistorted keypointCount:v83];
  computeCalibration = [(Calibration *)self->_calibration computeCalibration];
  adcFramesConverged = self->_adcFramesConverged;
  if (!computeCalibration)
  {
    ++adcFramesConverged;
  }

  self->_adcFramesConverged = adcFramesConverged;
LABEL_29:
  *self->_gdcParametersReference.distortPolynomCoefficients = 0u;
  self->_gdcParametersReference.originalCropRect.size.height = 0.0;
  *&self->_gdcParametersReference.applyRollingShutterCorrection = 0u;
  *&self->_gdcParametersReference.originalCropRect.origin.y = 0u;
  *&self->_gdcParametersReference.canvasResolution.height = 0u;
  *&self->_gdcParametersReference.rollingShutterCorrectionHomographies = 0u;
  *&self->_gdcParametersReference.inverseHomography[4] = 0u;
  *&self->_gdcParametersReference.inverseHomography[8] = 0u;
  *&self->_gdcParametersReference.homography[5] = 0u;
  *self->_gdcParametersReference.inverseHomography = 0u;
  *&self->_gdcParametersReference.originalImageWidth = 0u;
  *&self->_gdcParametersReference.homography[1] = 0u;
  *&self->_gdcParametersReference.undistortPolynomCoefficients[4] = 0u;
  *&self->_gdcParametersReference.centerX = 0u;
  *&self->_gdcParametersReference.distortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersReference.undistortPolynomCoefficients = 0u;
  *self->_gdcParametersAuxiliary.distortPolynomCoefficients = 0u;
  self->_gdcParametersAuxiliary.originalCropRect.size.height = 0.0;
  *&self->_gdcParametersAuxiliary.distortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersAuxiliary.undistortPolynomCoefficients = 0u;
  *&self->_gdcParametersAuxiliary.undistortPolynomCoefficients[4] = 0u;
  *&self->_gdcParametersAuxiliary.centerX = 0u;
  *&self->_gdcParametersAuxiliary.originalImageWidth = 0u;
  *&self->_gdcParametersAuxiliary.homography[1] = 0u;
  *&self->_gdcParametersAuxiliary.homography[5] = 0u;
  *self->_gdcParametersAuxiliary.inverseHomography = 0u;
  *&self->_gdcParametersAuxiliary.inverseHomography[4] = 0u;
  *&self->_gdcParametersAuxiliary.inverseHomography[8] = 0u;
  *&self->_gdcParametersAuxiliary.canvasResolution.height = 0u;
  *&self->_gdcParametersAuxiliary.rollingShutterCorrectionHomographies = 0u;
  *&self->_gdcParametersAuxiliary.applyRollingShutterCorrection = 0u;
  *&self->_gdcParametersAuxiliary.originalCropRect.origin.y = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v30 = self->_calibration;
  if (v30)
  {
    [(Calibration *)v30 distModelFor:0];
    v31 = self->_calibration;
    v154 = v165;
    v155 = v166;
    v156 = v167;
    v157 = v168;
    v150 = v161;
    v151 = v162;
    v152 = v163;
    v153 = v164;
    v148 = v159;
    v149 = v160;
    if (v31)
    {
      [(Calibration *)v31 undistModelFor:0];
      goto LABEL_34;
    }
  }

  else
  {
    v156 = 0uLL;
    v157 = 0uLL;
    v154 = 0uLL;
    v155 = 0uLL;
    v152 = 0uLL;
    v153 = 0uLL;
    v150 = 0uLL;
    v151 = 0uLL;
    v148 = 0uLL;
    v149 = 0uLL;
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
LABEL_34:
  v144 = v165;
  v145 = v166;
  v146 = v167;
  v147 = v168;
  v140 = v161;
  v141 = v162;
  v142 = v163;
  v143 = v164;
  v138 = v159;
  v139 = v160;
  if (fillGDCParametersFromDistortionModels(&v148, v138.f64, &self->_gdcParametersReference, self->_calibrationWidth, self->_calibrationHeight))
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  v32 = self->_calibration;
  if (v32)
  {
    [(Calibration *)v32 distModelFor:1];
    v33 = self->_calibration;
    v154 = v165;
    v155 = v166;
    v156 = v167;
    v157 = v168;
    v150 = v161;
    v151 = v162;
    v152 = v163;
    v153 = v164;
    v148 = v159;
    v149 = v160;
    if (v33)
    {
      [(Calibration *)v33 undistModelFor:1];
      goto LABEL_40;
    }
  }

  else
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
LABEL_40:
  v144 = v165;
  v145 = v166;
  v146 = v167;
  v147 = v168;
  v140 = v161;
  v141 = v162;
  v142 = v163;
  v143 = v164;
  v138 = v159;
  v139 = v160;
  if (fillGDCParametersFromDistortionModels(&v148, v138.f64, &self->_gdcParametersAuxiliary, self->_calibrationWidth, self->_calibrationHeight))
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  LODWORD(v34) = 15.0;
  if ([(Calibration *)self->_calibration computeStereoRectificationHomographies:7.67384672e21 alignedToAngle:v34])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_131;
  }

  [(Calibration *)self->_calibration rectReferenceToReference];
  v35 = 0;
  homography = self->_gdcParametersReference.homography;
  v159 = v37;
  v160 = v38;
  v161 = v39;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      homography[i] = *((&v159 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v35 & 3)));
    }

    ++v35;
    homography += 3;
  }

  while (v35 != 3);
  [(Calibration *)self->_calibration referenceToRectReference];
  v41 = 0;
  inverseHomography = self->_gdcParametersReference.inverseHomography;
  v159 = v43;
  v160 = v44;
  v161 = v45;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      inverseHomography[j] = *((&v159 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3)));
    }

    ++v41;
    inverseHomography += 3;
  }

  while (v41 != 3);
  width2 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_auxOutputRequirement videoFormat] width];
  v131 = width2 / [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_refOutputRequirement videoFormat] width];
  height2 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_auxOutputRequirement videoFormat] height];
  height3 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_refOutputRequirement videoFormat] height];
  [(Calibration *)self->_calibration rectReferenceToAuxiliary];
  v115 = v51;
  v117 = v50;
  v114 = v52;
  [(Calibration *)self->_calibration auxiliaryPaddingHInv];
  v53 = 0;
  v196 = v54;
  v197 = v55;
  v198 = v56;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  do
  {
    *(&v159 + v53) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*(&v196 + v53))), v115, *(&v196 + v53), 1), v114, *(&v196 + v53), 2);
    v53 += 16;
  }

  while (v53 != 48);
  v57 = 0;
  LODWORD(v58) = 0;
  *(&v58 + 1) = height2 / height3;
  v59 = v159;
  v60 = v160;
  v61 = v161;
  v196 = LODWORD(v131);
  v197 = v58;
  v198 = xmmword_1ACF06340;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  do
  {
    *(&v159 + v57) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v196 + v57))), v60, *(&v196 + v57), 1), v61, *(&v196 + v57), 2);
    v57 += 16;
  }

  while (v57 != 48);
  v62 = 0;
  v63 = v159;
  v64 = v160;
  v65 = v161;
  HIDWORD(v63.f64[1]) = 0;
  v64.i32[3] = 0;
  v65.i32[3] = 0;
  v66 = self->_gdcParametersAuxiliary.homography;
  v159 = v63;
  v160 = v64;
  v161 = v65;
  do
  {
    for (k = 0; k != 3; ++k)
    {
      v66[k] = *((&v159 + k) & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    }

    ++v62;
    v66 += 3;
  }

  while (v62 != 3);
  commandBuffer = [commandQueue commandBuffer];
  v14 = [objc_msgSend(commandQueue "device")];
  if (!v14)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v12 = 0;
    v132 = 0;
    v15 = 0;
LABEL_140:
    v13 = 0;
    goto LABEL_141;
  }

  v15 = [objc_msgSend(commandQueue "device")];
  if (!v15)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v12 = 0;
LABEL_139:
    v132 = 0;
    goto LABEL_140;
  }

  width3 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_auxOutputRequirement videoFormat] width];
  height4 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_auxOutputRequirement videoFormat] height];
  self->_gdcParametersAuxiliary.canvasResolution.width = width3;
  self->_gdcParametersAuxiliary.canvasResolution.height = height4;
  self->_gdcParametersAuxiliary.applyZTransform = 0;
  self->_gdcParametersAuxiliary.samplerType = 1;
  if (self->_applyRollingShutterCorrection)
  {
    self->_gdcParametersAuxiliary.rollingShutterCorrectionHomographies = v193;
    self->_gdcParametersAuxiliary.numRollingShutterCorrectionHomographies = v112;
    LODWORD(self->_gdcParametersAuxiliary.rollingShutterCorrectionHomographyStep) = v191;
    self->_gdcParametersAuxiliary.applyRollingShutterCorrection = 1;
  }

  LODWORD(height4) = 1.0;
  if ([(GDCTransform *)self->_gdcTransform transformFrom:v14 to:v15 withParameters:&self->_gdcParametersAuxiliary withScale:1 withMode:commandBuffer andCommandBuffer:height4])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v12 = 0;
    v132 = 0;
    goto LABEL_132;
  }

  v12 = [objc_msgSend(commandQueue "device")];
  if (!v12)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_138:
    v20 = 0;
    v76 = 0;
    goto LABEL_139;
  }

  v132 = [objc_msgSend(commandQueue "device")];
  if (!v132)
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_138;
  }

  width4 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_refOutputRequirement videoFormat] width];
  height5 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_refOutputRequirement videoFormat] height];
  self->_gdcParametersReference.canvasResolution.width = width4;
  self->_gdcParametersReference.canvasResolution.height = height5;
  self->_gdcParametersReference.applyZTransform = 0;
  self->_gdcParametersReference.samplerType = 1;
  if (self->_applyRollingShutterCorrection)
  {
    self->_gdcParametersReference.rollingShutterCorrectionHomographies = v195;
    self->_gdcParametersReference.numRollingShutterCorrectionHomographies = v128;
    self->_gdcParametersReference.rollingShutterCorrectionHomographyStep = *(&v191 + 1);
    self->_gdcParametersReference.applyRollingShutterCorrection = 1;
  }

  LODWORD(height5) = 1.0;
  if ([(GDCTransform *)self->_gdcTransform transformFrom:v12 to:v132 withParameters:&self->_gdcParametersReference withScale:1 withMode:commandBuffer andCommandBuffer:height5])
  {
    [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v20 = 0;
    v76 = 0;
    v13 = 0;
    v77 = 0;
    v78 = 4294935586;
    handlerCopy4 = handler;
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E696B098] value:&self->_gdcParametersReference withObjCType:"{?=[8f][8f]fffffff[9f][9f]{CGSize=dd}Bi^{?}ifBf{CGRect={CGPoint=dd}{CGSize=dd}}}"], @"gdcParametersReference");
    v137 = 0;
    memset(v136, 0, sizeof(v136));
    v73 = self->_calibration;
    if (v73)
    {
      [(Calibration *)v73 correctedCalibration];
    }

    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E696B098] value:v136 withObjCType:"{CalModel=[2d][2d][2d][12d]d[2d][2d]}"], @"calModel");
    [(Calibration *)self->_calibration orientationVector];
    v135 = v74;
    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DEF0] dataWithBytes:&v135 length:8], @"orientationVector");
    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DEF0] dataWithBytes:v194 length:48 * v128], @"refRollingShutterCorrectionHomographiesInv");
    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v128], @"refRollingShutterRowCount");
    LODWORD(v75) = HIDWORD(v191);
    -[__CVBuffer setObject:forKeyedSubscript:](v20, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v75], @"refRollingShutterHomographyStep");
    CMSetAttachment(target, @"unrectifyData", v20, 1u);
    if (self->_opticalFlowOutputRequirement)
    {
      v13 = [objc_msgSend(storageCopy "pixelBufferPoolForRequirement:"newPixelBuffer"")];
      if (!v13)
      {
        [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
        v76 = 0;
        v77 = 0;
        v78 = 4294935578;
        goto LABEL_146;
      }

      [storageCopy setPixelBuffer:v13 forRequirement:self->_opticalFlowOutputRequirement];
      v76 = [objc_msgSend(commandQueue "device")];
      if (!v76)
      {
        [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
        v77 = 0;
        v78 = 4294935584;
        goto LABEL_146;
      }

      if ([(PTDisparityPostProcessing *)self->_disparityPostProcessor computeOpticalFlow:commandBuffer inRGBA:v12 outDisplacement:v76])
      {
        [BWRectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
        v77 = 0;
        v78 = 0;
LABEL_146:
        handlerCopy4 = handler;
        goto LABEL_79;
      }
    }

    else
    {
      v76 = 0;
      v13 = 0;
    }

    if (handler)
    {
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = __118__BWRectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v133[3] = &unk_1E798FB70;
      v134 = 0;
      v133[4] = self;
      v133[5] = handler;
      [commandBuffer addScheduledHandler:v133];
    }

    [commandBuffer commit];
    v78 = 0;
    v77 = 1;
    handlerCopy4 = handler;
  }

LABEL_79:
  *&self->_frameIndex = vaddq_s64(*&self->_frameIndex, vdupq_n_s64(1uLL));
  if (handlerCopy4 && (v77 & 1) == 0)
  {
    handlerCopy4[2](handlerCopy4, v78, self);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  free(v195);
  free(v194);
  free(v193);
  free(v192);
  return v78;
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (id)newStorage
{
  v3 = [BWInferenceProviderStorage alloc];
  v4 = *&self->_refKeypointsInputRequirement;
  v7[0] = *&self->_refInputRequirement;
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v3, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", v5, [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_refOutputRequirement, self->_auxOutputRequirement, self->_opticalFlowOutputRequirement, 0}]);
}

- (NSArray)inputVideoRequirements
{
  v2 = *&self->_refKeypointsInputRequirement;
  v4[0] = *&self->_refInputRequirement;
  v4[1] = v2;
  v4[2] = *&self->_originalRefInputRequirement;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
}

- (unint64_t)_rscForBuffer:(void *)buffer withHomograhies:(void *)homograhies andInverseHomographies:(float *)homographies withHomographyStep:
{
  if (!self)
  {
    return 0;
  }

  v8 = CMGetAttachment(target, *off_1E798D448, 0);
  v9 = v8;
  if (!v8)
  {
LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return v9;
  }

  v10 = [v8 length];
  if (v10 <= 0x24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v11 = v10;
  bytes = [v9 bytes];
  v13 = bytes[6];
  v9 = bytes[7];
  *homographies = v13;
  if ((v9 - 50) <= 0xFFFFFFCE)
  {
    goto LABEL_14;
  }

  v14 = bytes;
  if (bytes[8] != 1 || v13 <= 0 || v11 != 36 * v9 + 36)
  {
    goto LABEL_14;
  }

  *buffer = malloc_type_malloc(48 * v9, 0x1000040EED21634uLL);
  v15 = 0;
  *homograhies = malloc_type_malloc(48 * v9, 0x1000040EED21634uLL);
  v16 = v14 + 17;
  do
  {
    v17 = *(v16 - 8);
    v18.i32[0] = *(v16 - 6);
    v19 = *(v16 - 5);
    v20 = v16 - 3;
    v21 = *(v16 - 1);
    v22 = *v16;
    v16 += 9;
    v23 = (*buffer + v15);
    v18.i32[1] = *v20;
    v23[1].i32[0] = v21;
    *v23 = vzip1_s32(v17, v19);
    v23[3].i32[0] = HIDWORD(v21);
    v23[2] = vzip2_s32(v17, v19);
    v23[5].i32[0] = v22;
    v23[4] = v18;
    v24 = *homograhies + v15;
    v26 = __invert_f3(*(*buffer + v15));
    *(v24 + 2) = v26.columns[0].i32[2];
    *v24 = v26.columns[0].i64[0];
    *(v24 + 6) = v26.columns[1].i32[2];
    *(v24 + 2) = v26.columns[1].i64[0];
    *(v24 + 10) = v26.columns[2].i32[2];
    v15 += 48;
    *(v24 + 4) = v26.columns[2].i64[0];
  }

  while (48 * v9 != v15);
  return v9;
}

- (uint64_t)_detectKeypointsLKTFlowWithMagnification:(uint64_t)magnification preShift:(_DWORD *)shift refTex:(float)tex auxTex:(float32x2_t)auxTex keypointsCountOut:
{
  if (result)
  {
    v12 = result;
    v51 = 0;
    lastScale = [*(result + 88) lastScale];
    v49 = *(v12 + 752);
    v14 = *(v12 + 768);
    [*(v12 + 88) estimateFlowFromReference:a2 target:magnification];
    v15 = *(v12 + 88);
    uv_fwd = [v15 uv_fwd];
    uv_bwd = [*(v12 + 88) uv_bwd];
    conf_fwd = [*(v12 + 88) conf_fwd];
    conf_bwd = [*(v12 + 88) conf_bwd];
    [*(v12 + 104) bidirectionalError];
    v21 = v20;
    [*(v12 + 104) confidenceRadialWeight];
    v23 = v22;
    [*(v12 + 104) confidenceMinimum];
    v25 = v24;
    blockSize = [*(v12 + 104) blockSize];
    LODWORD(v27) = v21;
    LODWORD(v28) = v23;
    LODWORD(v29) = v25;
    [v15 computeKeypointsFromForwardFlow:uv_fwd backwardFlow:uv_bwd forwardConfidence:conf_fwd backwardConfidence:conf_bwd bidirectionalError:blockSize confidenceRadialWeight:&v51 confidenceMinimum:v27 blockSize:v28 outNumKeypoints:v29];
    [*(v12 + 88) waitUntilCompleted];
    if (*(v12 + 784) * *(v12 + 776) < v51)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v34 = 0;
      result = 4294954516;
    }

    else
    {
      v30 = [objc_msgSend(*(v12 + 88) "keypoints")];
      v31 = [objc_msgSend(*(v12 + 88) "keypoints_confidence")];
      if (v51)
      {
        v33 = 0;
        v34 = 0;
        v35 = 1.0 / tex;
        v36 = vcvt_f32_f64(vcvtq_f64_u64(v49));
        v37 = vdiv_f32(vmul_n_f32(v36, (1 << lastScale)), vcvt_f32_u32(v14));
        v38 = vmul_n_f32(v37, v35);
        v39 = vmla_n_f32(auxTex, v36, (1.0 - v35) * 0.5);
        v40 = (v31 + 6);
        v41 = (v30 + 4);
        do
        {
          LODWORD(v32.f64[0]) = *(v41 - 1);
          *&v32.f64[0] = vmul_f32(v37, vadd_f32(*&vcvtq_f32_f16(*&v32.f64[0]), 0x3F0000003F000000));
          if ((LODWORD(v32.f64[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v50 = *&v32.f64[0];
            v6.i32[0] = *v41;
            _H0 = *v40;
            __asm { FCVT            S13, H0 }

            [*(v12 + 104) confidenceMinimum];
            if (*v32.f64 <= _S13)
            {
              v48 = 16 * v34;
              *(*(v12 + 624) + v48) = vcvtq_f64_f32(v50);
              v32 = vcvtq_f64_f32(vmla_f32(v39, v38, vadd_f32(*&vcvtq_f32_f16(v6), 0x3F0000003F000000)));
              *(*(v12 + 632) + v48) = v32;
              ++v34;
            }
          }

          ++v33;
          v40 += 4;
          v41 += 2;
        }

        while (v33 < v51);
      }

      else
      {
        v34 = 0;
      }

      result = 0;
    }

    *shift = v34;
  }

  return result;
}

- (uint64_t)_applyRollingShutterCorrectionToKeypointsRef:(uint64_t)ref andAux:(unsigned int)aux withCount:(uint64_t)count inverseRefHomographies:(int)homographies refHomographyCount:(uint64_t)homographyCount refHomographyStep:(int)step inverseAuxHomographies:(float)auxHomographies auxHomographyCount:(float)self0 auxHomographyStep:
{
  if (result)
  {
    if (!count || !homographyCount)
    {
LABEL_15:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
      return 1;
    }

    if (aux)
    {
      v10 = 0;
      while (1)
      {
        v12 = *(a2 + 8 * (v10 + 1));
        v13 = (v12 / auxHomographies);
        if (v13 >= homographies)
        {
          v13 = homographies - 1;
        }

        v14 = (count + 48 * (v13 & ~(v13 >> 31)));
        v11 = *(a2 + 8 * v10);
        v15 = vaddq_f32(v14[2], vmlaq_n_f32(vmulq_n_f32(*v14, v11), v14[1], v12));
        if (*&v15.i32[2] == 0.0)
        {
          break;
        }

        v16 = *(ref + 8 * (v10 + 1));
        v17 = (v16 / auxHomographyCount);
        if (v17 >= step)
        {
          v17 = step - 1;
        }

        v18 = *(ref + 8 * v10);
        v19 = (homographyCount + 48 * (v17 & ~(v17 >> 31)));
        v20 = vaddq_f32(v19[2], vmlaq_n_f32(vmulq_n_f32(*v19, v18), v19[1], v16));
        if (*&v20.i32[2] == 0.0)
        {
          break;
        }

        *(a2 + 8 * v10) = vcvtq_f64_f32(vdiv_f32(*v15.i8, vdup_laneq_s32(v15, 2)));
        *(ref + 8 * v10) = vcvtq_f64_f32(vdiv_f32(*v20.i8, vdup_laneq_s32(v20, 2)));
        v10 += 2;
        if (2 * aux == v10)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.22()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.24()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.25()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.26()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.27()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.28()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end