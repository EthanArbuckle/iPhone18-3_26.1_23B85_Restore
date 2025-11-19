@interface ImageReg
- (BOOL)allocResource;
- (BOOL)allocResourceFlowBasedHomography;
- (BOOL)setupResourcesWithFlowDerivedHomography:(BOOL)a3;
- (ImageReg)initWithDevice:(id)a3 commmandQueue:(id)a4 flowDerivedHomography:(BOOL)a5;
- (ImageReg)initWithSubmodules:(id)a3 WithDevice:(id)a4 commandQueue:(id)a5;
- (ImageReg)initWithSubmodules:(id)a3 WithDevice:(id)a4 commandQueue:(id)a5 flowDerivedHomography:(BOOL)a6;
- (_xform2D)extractHomographyFromFlow:(__CVBuffer *)a3 depth:(__CVBuffer *)a4 im1:(__CVBuffer *)a5 im2:(__CVBuffer *)a6 targetResolution:(CGSize)a7 currentPairFlow:(BOOL)a8;
- (_xform2D)extractHomographyFromPrev:(id)a3 ToCurr:(id)a4;
- (_xform2D)extractHomographyFromPrev:(id)a3 ToCurr:(id)a4 calculateIndex:(int)a5;
- (_xform2D)getHomographyWithMatches:(_matchPair *)a3 matchCount:(int)a4 keypoints1:(_keyPointHdr *)a5 Keypoints2:(_keyPointHdr *)a6 imageDim:(unint64_t)a7 imageDim:(unint64_t)a8;
- (_xform2D)registerImage0:(__CVBuffer *)a3 toImage1:(__CVBuffer *)a4 Normalize:(BOOL)a5;
- (double)normalizeHomography:(uint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (int64_t)asyncRansacFromMatchedPair:(id)a3 matchCount:(id)a4 homography:(_xform2D *)a5 index:(int)a6 height:(int)a7 width:(int)a8;
- (int64_t)preprocessFramesFromImage0:(__CVBuffer *)a3 Image1:(__CVBuffer *)a4;
- (uint64_t)preprocessFirst:(double)a3 warpedFirst:(double)a4 withHomography:(uint64_t)a5;
- (void)PrintMatchKptDistance:(_matchPair *)a3 matchCount:(int)a4 kpt1:(_keyPointHdr *)a5 kpt2:(_keyPointHdr *)a6 frameId:(int)a7;
- (void)Printkpt1:(_keyPointHdr *)a3 count:(int)a4;
- (void)checkRun2RunFromMatch1:(_matchPair *)a3 match2:(_matchPair *)a4 matchCount1:(int)a5 matchCount2:(int)a6 frameId:(int)a7;
- (void)dealloc;
- (void)filterMatchedCnadidateKpt1:(_keyPointHdr *)a3 kpt2:(_keyPointHdr *)a4 count1:(int)a5 count2:(int)a6 closedDesIndex:(_closedDesIndex *)a7;
- (void)freeResource;
- (void)freeResourceFlowBasedHomography;
- (void)getHomographyWithFlowMatches_async:(_flow_matchPair *)a3 matchCount:(int)a4 imageDim:(unint64_t)a5 imageDim:(unint64_t)a6 index:(int)a7 homoMatrix:(_xform2D *)a8;
@end

@implementation ImageReg

- (ImageReg)initWithSubmodules:(id)a3 WithDevice:(id)a4 commandQueue:(id)a5
{
  objc_storeStrong(&self->_homographyFlow, a3);
  v8 = a5;
  v9 = a4;
  v10 = [(ImageReg *)self initWithDevice:v9 commmandQueue:v8 flowDerivedHomography:0];

  return v10;
}

- (ImageReg)initWithSubmodules:(id)a3 WithDevice:(id)a4 commandQueue:(id)a5 flowDerivedHomography:(BOOL)a6
{
  v6 = a6;
  objc_storeStrong(&self->_homographyFlow, a3);
  v10 = a5;
  v11 = a4;
  v12 = [(ImageReg *)self initWithDevice:v11 commmandQueue:v10 flowDerivedHomography:v6];

  return v12;
}

- (void)dealloc
{
  [(ImageReg *)self freeResource];
  [(ImageReg *)self freeResourceFlowBasedHomography];
  homographyFlow = self->_homographyFlow;
  self->_homographyFlow = 0;

  for (i = 48; i != 80; i += 8)
  {
    v5 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  SIFTMatcher = self->_SIFTMatcher;
  self->_SIFTMatcher = 0;

  RansacEstimation = self->_RansacEstimation;
  self->_RansacEstimation = 0;

  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = 0;

  v9.receiver = self;
  v9.super_class = ImageReg;
  [(ImageReg *)&v9 dealloc];
}

- (BOOL)allocResource
{
  v3 = 0;
  keyPoints = self->_keyPoints;
  descriptors = self->_descriptors;
  X = self->_X;
  Y = self->_Y;
  for (i = 1; ; i = 0)
  {
    v9 = i;
    v10 = [(MTLDevice *)self->_device newBufferWithLength:1179648 options:0];
    v11 = keyPoints[v3];
    keyPoints[v3] = v10;

    v12 = [(MTLDevice *)self->_device newBufferWithLength:0x400000 options:0];
    v13 = descriptors[v3];
    descriptors[v3] = v12;

    v14 = [(MTLDevice *)self->_device newBufferWithLength:0x20000 options:0];
    v15 = X[v3];
    X[v3] = v14;

    v16 = [(MTLDevice *)self->_device newBufferWithLength:0x20000 options:0];
    v17 = Y[v3];
    Y[v3] = v16;

    if (!X[v3] || !Y[v3] || !keyPoints[v3] || !descriptors[v3])
    {
      break;
    }

    v3 = 1;
    if ((v9 & 1) == 0)
    {
      v18 = [(MTLDevice *)self->_device newBufferWithLength:393216 options:0];
      matches = self->_matches;
      self->_matches = v18;

      v20 = [(MTLDevice *)self->_device newBufferWithLength:131203072 options:0];
      closeDesIndex = self->_closeDesIndex;
      self->_closeDesIndex = v20;

      self->_grayBuf0 = CreatePixelBuffer(0x280uLL, 0x168uLL, 1278226534);
      PixelBuffer = CreatePixelBuffer(0x280uLL, 0x168uLL, 1278226534);
      self->_grayBuf1 = PixelBuffer;
      return self->_matches && self->_closeDesIndex && self->_grayBuf0 && PixelBuffer;
    }
  }

  return 0;
}

- (void)freeResourceFlowBasedHomography
{
  Y1 = self->Y1;
  v4 = 5;
  do
  {
    v5 = *(Y1 - 5);
    *(Y1 - 5) = 0;

    v6 = *Y1;
    *Y1 = 0;

    v7 = Y1[5];
    Y1[5] = 0;

    v8 = Y1[10];
    Y1[10] = 0;

    v9 = Y1[20];
    Y1[20] = 0;

    v10 = Y1[15];
    Y1[15] = 0;

    ++Y1;
    --v4;
  }

  while (v4);
  dispatchGroup = self->_dispatchGroup;
  self->_dispatchGroup = 0;

  concurrent_queue = self->_concurrent_queue;
  self->_concurrent_queue = 0;
}

- (void)freeResource
{
  v3 = self->_keyPoints[0];
  self->_keyPoints[0] = 0;

  v4 = self->_descriptors[0];
  self->_descriptors[0] = 0;

  v5 = self->_keyPoints[1];
  self->_keyPoints[1] = 0;

  v6 = self->_descriptors[1];
  self->_descriptors[1] = 0;

  closeDesIndex = self->_closeDesIndex;
  self->_closeDesIndex = 0;

  CVPixelBufferRelease(self->_grayBuf0);
  CVPixelBufferRelease(self->_grayBuf1);
  *&self->_grayBuf0 = 0u;
  grayBuf0Texture = self->_grayBuf0Texture;
  self->_grayBuf0Texture = 0;

  grayBuf1Texture = self->_grayBuf1Texture;
  self->_grayBuf1Texture = 0;

  self->_processedFrameNum = 0;
}

- (_xform2D)getHomographyWithMatches:(_matchPair *)a3 matchCount:(int)a4 keypoints1:(_keyPointHdr *)a5 Keypoints2:(_keyPointHdr *)a6 imageDim:(unint64_t)a7 imageDim:(unint64_t)a8
{
  v9 = v8;
  v10 = *(MEMORY[0x277D860B0] + 16);
  v34 = *MEMORY[0x277D860B0];
  v35 = v10;
  v36 = *(MEMORY[0x277D860B0] + 32);
  v37 = 0uLL;
  if (!a3 || !a5 || !a6)
  {
    goto LABEL_9;
  }

  v13 = *&a4;
  v16 = a8;
  v17 = [(MTLBuffer *)self->_X[0] contents];
  v18 = [(MTLBuffer *)self->_Y[0] contents];
  v19 = [(MTLBuffer *)self->_X[1] contents];
  v20 = [(MTLBuffer *)self->_Y[1] contents];
  if (v13)
  {
    v23 = v13;
    p_var1 = &a3->var1;
    do
    {
      v25 = &a5[*(p_var1 - 1)];
      *v17++ = LODWORD(v25->var0);
      *v18++ = LODWORD(v25->var1);
      v26 = &a6[*p_var1];
      *v19++ = LODWORD(v26->var0);
      *v20++ = LODWORD(v26->var1);
      p_var1 += 3;
      --v23;
    }

    while (v23);
  }

  *&v21 = self->_xscaleFactor;
  *&v22 = self->_yscaleFactor;
  LOBYTE(v32) = 1;
  LODWORD(v31) = v16;
  v27 = [self->_RansacEstimation ApplyRansacEstimation:self->_X[0] desMatchInput:self->_Y[0] desMatchInput:self->_X[1] desMatchInput:self->_Y[1] desMatchCountInput:v13 xscaleFactorInput:a7 yscaleFactorInput:v21 imageDimInput:v22 imageDimInput:v31 homographyMatrixOutput:&v34 waitForComplete:v32];
  if (v27)
  {
    v29 = v35;
    *v9 = v34;
    v9[1] = v29;
    v30 = v37;
    v9[2] = v36;
    v9[3] = v30;
  }

  else
  {
LABEL_9:
    [ImageReg getHomographyWithMatches:v9 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
  }

  result.width = v28;
  result.height = HIDWORD(v28);
  result.confidence = *&v27;
  result.inlierCnt = HIDWORD(v27);
  return result;
}

- (void)getHomographyWithFlowMatches_async:(_flow_matchPair *)a3 matchCount:(int)a4 imageDim:(unint64_t)a5 imageDim:(unint64_t)a6 index:(int)a7 homoMatrix:(_xform2D *)a8
{
  v30 = a6;
  v25 = *(MEMORY[0x277D860B0] + 16);
  v26 = *MEMORY[0x277D860B0];
  v31 = *MEMORY[0x277D860B0];
  v32 = v25;
  v24 = *(MEMORY[0x277D860B0] + 32);
  v33 = v24;
  v11 = a7;
  v34 = 0;
  X1 = self->X1;
  v12 = [(MTLBuffer *)self->X1[a7] contents];
  v13 = [(MTLBuffer *)self->Y1[a7] contents];
  v14 = [(MTLBuffer *)self->X2[a7] contents];
  v15 = [(MTLBuffer *)self->Y2[a7] contents];
  if (a4)
  {
    v18 = a4;
    p_var2 = &a3->var2;
    do
    {
      *v12++ = *(p_var2 - 2);
      *v13++ = *p_var2;
      *v14++ = *(p_var2 - 1);
      *v15++ = *(p_var2 + 1);
      p_var2 += 5;
      --v18;
    }

    while (v18);
  }

  *&v16 = self->_xscaleFactor;
  *&v17 = self->_yscaleFactor;
  LOBYTE(v23) = 1;
  LODWORD(v22) = v30;
  if ([RansacEstimation ApplyRansacEstimation:"ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:" desMatchInput:X1[v11] desMatchInput:self->Y1[v11] desMatchInput:self->X2[v11] desMatchCountInput:self->Y2[v11] xscaleFactorInput:v16 yscaleFactorInput:v17 imageDimInput:v22 imageDimInput:&v31 homographyMatrixOutput:v23 waitForComplete:?])
  {
    v20 = v32;
    *a8 = v31;
    a8[1] = v20;
    v21 = v34;
    a8[2] = v33;
    a8[3] = v21;
  }

  else
  {
    *a8 = v26;
    a8[1] = v25;
    a8[2] = v24;
    *&a8[3].confidence = 0;
    *&a8[3].width = 0;
  }
}

- (int64_t)asyncRansacFromMatchedPair:(id)a3 matchCount:(id)a4 homography:(_xform2D *)a5 index:(int)a6 height:(int)a7 width:(int)a8
{
  v14 = a3;
  v15 = a4;
  dispatchGroup = self->_dispatchGroup;
  concurrent_queue = self->_concurrent_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__ImageReg_asyncRansacFromMatchedPair_matchCount_homography_index_height_width___block_invoke;
  v21[3] = &unk_278F53768;
  v22 = v14;
  v23 = v15;
  v26 = a8;
  v27 = a7;
  v28 = a6;
  v24 = self;
  v25 = a5;
  v18 = v15;
  v19 = v14;
  dispatch_group_async(dispatchGroup, concurrent_queue, v21);

  return 0;
}

uint64_t __80__ImageReg_asyncRansacFromMatchedPair_matchCount_homography_index_height_width___block_invoke(uint64_t a1)
{
  v4 = 0;
  sortFlowMatchingPair(*(a1 + 32), *[*(a1 + 40) contents], &v4);
  v2 = [*(a1 + 32) contents];
  return [*(a1 + 48) getHomographyWithFlowMatches_async:v2 matchCount:v4 imageDim:*(a1 + 64) imageDim:*(a1 + 68) index:*(a1 + 72) homoMatrix:*(a1 + 56)];
}

- (_xform2D)registerImage0:(__CVBuffer *)a3 toImage1:(__CVBuffer *)a4 Normalize:(BOOL)a5
{
  v6 = v5;
  if (!a3 || !a4 || (v8 = a5, !self->_SIFTSetup) && ![(ImageReg *)self setupResourcesWithFlowDerivedHomography:0]|| [(ImageReg *)self preprocessFramesFromImage0:a3 Image1:a4])
  {
    [ImageReg getHomographyWithMatches:v6 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
    goto LABEL_18;
  }

  [(SIFTFeatureExtraction *)self->_featureExtractor setStreamingMode:self->_streamingMode];
  if (self->_streamingMode)
  {
    if (self->_refreshCalculation)
    {
      self->_processedFrameNum = 0;
      [(SIFTFeatureExtraction *)self->_featureExtractor setRefreshCalculation:1];
    }

    v11 = [(ImageReg *)self extractHomographyFromPrev:self->_grayBuf0Texture ToCurr:self->_grayBuf1Texture calculateIndex:LODWORD(self->_processedFrameNum)];
    v13 = *buf;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    self->_processedFrameNum = self->_processedFrameNum == 0;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v11 = [(ImageReg *)self extractHomographyFromPrev:self->_grayBuf0Texture ToCurr:self->_grayBuf1Texture];
  v13 = *buf;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  if (v8)
  {
LABEL_12:
    v23 = *&v14;
    v25 = *&v13;
    v21 = *&v15;
    Width = CVPixelBufferGetWidth(a3);
    v11 = [(ImageReg *)self normalizeHomography:Width width:CVPixelBufferGetHeight(a3) height:v25, v23, v21];
    if ((global_logLevel & 4) != 0)
    {
      v22 = v15;
      v24 = v14;
      v26 = v13;
      v20 = global_logger;
      v11 = os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO);
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_24874B000, v20, OS_LOG_TYPE_INFO, "Normalize homography matrix .\n", buf, 2u);
      }

      v14 = v24;
      v13 = v26;
      v15 = v22;
    }
  }

LABEL_16:
  *v6 = v13;
  *(v6 + 16) = v14;
  *(v6 + 32) = v15;
  *(v6 + 48) = v16;
  *(v6 + 52) = v17;
  *(v6 + 60) = v18;
LABEL_18:
  result.width = v12;
  result.height = HIDWORD(v12);
  result.confidence = *&v11;
  result.inlierCnt = HIDWORD(v11);
  return result;
}

- (_xform2D)extractHomographyFromPrev:(id)a3 ToCurr:(id)a4
{
  v7 = v4;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  v26 = *MEMORY[0x277D860B0];
  v27 = *(MEMORY[0x277D860B0] + 16);
  v28 = *(MEMORY[0x277D860B0] + 32);
  v12 = 0;
  v13 = 0;
  if (v8 && v9)
  {
    if ([(SIFTFeatureExtraction *)self->_featureExtractor detect1:v8 toHdr1:self->_keyPoints[0] detect2:v9 toHdr2:self->_keyPoints[1] count1:self->count count2:&self->count[1], 0.0]|| (!self->_streamingMode || self->_refreshCalculation) && [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:self->_keyPoints[0] keypointsCount:self->count[0] intoHdr:self->_descriptors[0] waitForComplete:0 ind:0]|| [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:self->_keyPoints[1] keypointsCount:self->count[1] intoHdr:self->_descriptors[1] waitForComplete:0 ind:1])
    {
      [ImageReg getHomographyWithMatches:v7 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
      goto LABEL_13;
    }

    v14 = [self->_SIFTMatcher findMatchesBetweenDescriptorEarlyExist:self->_descriptors[0] objectCount:self->count[0] keypt1:self->_keyPoints[0] toTargetDescriptor:self->_descriptors[1] targetCount:self->count[1] keypt2:self->_keyPoints[1] filteredIndex:self->_closeDesIndex matches:self->_matches];
    v15 = [(MTLBuffer *)self->_keyPoints[0] contents];
    v16 = [(MTLBuffer *)self->_keyPoints[1] contents];
    v17 = [(MTLBuffer *)self->_matches contents];
    v11 = 0;
    v12 = 0;
    if (v15 && v16 && v17)
    {
      -[ImageReg getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:](self, "getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:", v17, v14, v15, v16, [v8 width], objc_msgSend(v8, "height"));
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v13 = v23;
      v12 = v24;
      v11 = v25;
    }
  }

  *v7 = v26;
  *(v7 + 16) = v27;
  *(v7 + 32) = v28;
  *(v7 + 48) = v13;
  *(v7 + 52) = v12;
  *(v7 + 60) = v11;
LABEL_13:

  result.width = v19;
  result.height = HIDWORD(v19);
  result.confidence = *&v18;
  result.inlierCnt = HIDWORD(v18);
  return result;
}

- (_xform2D)extractHomographyFromFlow:(__CVBuffer *)a3 depth:(__CVBuffer *)a4 im1:(__CVBuffer *)a5 im2:(__CVBuffer *)a6 targetResolution:(CGSize)a7 currentPairFlow:(BOOL)a8
{
  v9 = v8;
  v10 = 0;
  v85 = *MEMORY[0x277D85DE8];
  v11 = *(MEMORY[0x277D860B0] + 16);
  v12 = *(MEMORY[0x277D860B0] + 32);
  v82 = *MEMORY[0x277D860B0];
  v83 = v11;
  v84 = v12;
  v13 = vmovn_s64(vcvtq_s64_f64(a7));
  v14 = 0;
  if (!a3 || !a5 || !a6)
  {
    v38 = v13;
LABEL_39:
    v60 = &v82;
    v13 = v38;
    goto LABEL_43;
  }

  v19 = self;
  width = a7.width;
  height = a7.height;
  if (!self->_flowDerivedSetup)
  {
    self = [(ImageReg *)self setupResourcesWithFlowDerivedHomography:1];
    if (!self)
    {
      v10 = 0;
      goto LABEL_41;
    }
  }

  v20 = createRGBATextureFromCVPixelBuffer(a5, v19->_device);
  v21 = createRGBATextureFromCVPixelBuffer(a6, v19->_device);
  v22 = createTexturesFromCVPixelBuffer(a3, v19->_device, 2, 1uLL);
  if (a4)
  {
    v23 = createTexturesFromCVPixelBuffer(a4, v19->_device, 2, 1uLL);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v22 width];
  v25 = width;
  v19->_xscaleFactor = v24 / v25;
  v26 = [v22 height];
  v27 = height;
  v19->_yscaleFactor = v26 / v27;
  v72 = 0uLL;
  v73 = 0;
  v28 = [(HomographyFlow *)v19->_homographyFlow analyzeRegionalFlowInformation:v22 depth:v23 quart1_angle:v78 quart2_angle:v79 quart3_angle:v80 quart4_angle:v81 depth_angle:&v72];
  if (v19->_streamingMode)
  {
    if (v78[0] == 0.0)
    {
      v78[0] = v19->_prev_quart1.angle;
    }

    else
    {
      v19->_prev_quart1.angle = v78[0];
    }

    angle = v79[0];
    if (v79[0] == 0.0)
    {
      angle = v19->_prev_quart2.angle;
      v79[0] = angle;
    }

    else
    {
      v19->_prev_quart2.angle = v79[0];
    }

    if (v80[0] == 0.0)
    {
      v80[0] = v19->_prev_quart3.angle;
    }

    else
    {
      v19->_prev_quart3.angle = angle;
    }

    if (v81[0] == 0.0)
    {
      v81[0] = v19->_prev_quart4.angle;
    }

    else
    {
      v19->_prev_quart4.angle = v81[0];
    }
  }

  v67 = v23;
  v65 = v9;
  v30 = [(MTLCommandQueue *)v19->_commandQueue commandBuffer];
  v31 = v30;
  v63 = v28;
  v69 = v20;
  if (v28 == 1)
  {
    SIFTMatcher = v19->_SIFTMatcher;
    v33 = v19->flow_match[4];
    v34 = v19->flow_count[4];
    v74 = v72;
    LODWORD(v75) = v73;
    v35 = v31;
    LOBYTE(v62) = a8;
    v36 = v21;
    if ([SIFTMatcher findMatchesFromFlow:v22 im1:v20 im2:v21 matches:v33 background_angle:&v74 matchCount:v34 flipFlowValue:v62 commandBuffer:v31])
    {
      v10 = 0;
      v37 = 0;
      v38 = v13;
      v39 = v69;
      v40 = v67;
      v41 = v35;
    }

    else
    {
LABEL_29:
      v41 = v35;
      [v35 commit];
      [v35 waitUntilCompleted];
      if (v63 == 1)
      {
        v49 = sortFlowMatchingPair_org(v19->flow_match[4], *[(MTLBuffer *)v19->flow_count[4] contents]);
        v50 = [(MTLBuffer *)v19->flow_match[4] contents];
        v76 = 0u;
        v77[0] = 0u;
        v74 = 0u;
        v75 = 0u;
        -[ImageReg getHomographyWithFlowMatches_async:matchCount:imageDim:imageDim:index:homoMatrix:](v19, "getHomographyWithFlowMatches_async:matchCount:imageDim:imageDim:index:homoMatrix:", v50, v49, [v22 width], objc_msgSend(v22, "height"), 0, &v74);
        v82 = v74;
        v83 = v75;
        v84 = v76;
        v14 = v77[0];
        v10 = DWORD1(v77[0]);
        v38 = *(v77 + 8);
        v51 = v69;
        v52 = v23;
      }

      else
      {
        v53 = v35;
        v54 = 0;
        v55 = &v74;
        do
        {
          -[ImageReg asyncRansacFromMatchedPair:matchCount:homography:index:height:width:](v19, "asyncRansacFromMatchedPair:matchCount:homography:index:height:width:", v19->flow_match[v54], v19->flow_count[v54], v55, v54, [v22 height], objc_msgSend(v22, "width"));
          ++v54;
          v55 += 4;
        }

        while (v54 != 4);
        dispatch_barrier_sync(v19->_concurrent_queue, &__block_literal_global_0);
        dispatch_group_wait(v19->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
        v56 = 0;
        v10 = 0;
        v14 = 0;
        v38 = v13;
        v51 = v69;
        v52 = v67;
        v41 = v53;
        do
        {
          v57 = &v74 + v56 * 16;
          v58 = DWORD1(v77[v56]);
          if (v58 > v10)
          {
            v59 = *(v57 + 1);
            v82 = *v57;
            v83 = v59;
            v84 = *(v57 + 2);
            v14 = *(v57 + 12);
            v38 = *(v57 + 56);
            v10 = v58;
          }

          v56 += 4;
        }

        while (v56 != 16);
      }

      v39 = 0;
      v36 = 0;
      v22 = 0;
      v40 = 0;
      v37 = 1;
    }

    v9 = v65;
    if (v37)
    {
      goto LABEL_39;
    }

    v10 = 0;
    v14 = 0;
LABEL_41:
    v60 = MEMORY[0x277D860B0];
    goto LABEL_43;
  }

  v35 = v30;
  v36 = v21;
  v42 = 0;
  flow_count = v19->flow_count;
  while (1)
  {
    v44 = *(flow_count - 5);
    v74 = *&v78[v42];
    *&v75 = v78[v42 + 4];
    v45 = *flow_count;
    v46 = v19->_SIFTMatcher;
    v70 = v74;
    v71 = v75;
    v47 = v44;
    LOBYTE(v62) = a8;
    v48 = [(SIFTMatcher *)v46 findMatchesFromFlow:v22 im1:v69 im2:v36 matches:v47 background_angle:&v70 matchCount:v45 flipFlowValue:v62 commandBuffer:v35];

    if (v48)
    {
      break;
    }

    ++flow_count;
    v42 += 5;
    if (v42 == 20)
    {
      goto LABEL_29;
    }
  }

  v10 = 0;
  v14 = 0;
  v60 = MEMORY[0x277D860B0];
  v9 = v65;
LABEL_43:
  v61 = v60[1];
  *v9 = *v60;
  *(v9 + 16) = v61;
  *(v9 + 32) = v60[2];
  *(v9 + 48) = v14;
  *(v9 + 52) = v10;
  *(v9 + 56) = v13;
  result.width = a2;
  result.height = HIDWORD(a2);
  result.confidence = *&self;
  result.inlierCnt = HIDWORD(self);
  return result;
}

- (_xform2D)extractHomographyFromPrev:(id)a3 ToCurr:(id)a4 calculateIndex:(int)a5
{
  v9 = v5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  v29 = *MEMORY[0x277D860B0];
  v30 = *(MEMORY[0x277D860B0] + 16);
  v31 = *(MEMORY[0x277D860B0] + 32);
  if (self->_streamingMode)
  {
    v14 = a5;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 == 0;
  v16 = 0;
  v17 = 0;
  if (v10 && v11)
  {
    keyPoints = self->_keyPoints;
    v19 = &self->count[v15];
    v20 = &self->count[v14];
    if ([(SIFTFeatureExtraction *)self->_featureExtractor detect1:v10 toHdr1:self->_keyPoints[v15] detect2:v11 toHdr2:self->_keyPoints[v14] count1:v19 count2:v20, 0.0, 0.0]|| (!self->_streamingMode || self->_refreshCalculation) && [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:keyPoints[v15] keypointsCount:*v19 intoHdr:self->_descriptors[v15] waitForComplete:0 ind:0]|| [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:keyPoints[v14] keypointsCount:*v20 intoHdr:self->_descriptors[v14] waitForComplete:0 ind:1])
    {
      [ImageReg getHomographyWithMatches:v9 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
      goto LABEL_14;
    }

    -[ImageReg getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:](self, "getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:", -[MTLBuffer contents](self->_matches, "contents"), -[SIFTMatcher findMatchesBetweenDescriptorEarlyExist:objectCount:keypt1:toTargetDescriptor:targetCount:keypt2:filteredIndex:matches:](self->_SIFTMatcher, "findMatchesBetweenDescriptorEarlyExist:objectCount:keypt1:toTargetDescriptor:targetCount:keypt2:filteredIndex:matches:", self->_descriptors[v15], *v19, keyPoints[v15], self->_descriptors[v14], *v20, keyPoints[v14], self->_closeDesIndex, self->_matches), -[MTLBuffer contents](keyPoints[v15], "contents"), -[MTLBuffer contents](keyPoints[v14], "contents"), [v10 width], objc_msgSend(v10, "height"));
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v17 = v26;
    v16 = v27;
    v13 = v28;
    if (self->_streamingMode)
    {
      self->_refreshCalculation = 0;
    }
  }

  *v9 = v29;
  *(v9 + 16) = v30;
  *(v9 + 32) = v31;
  *(v9 + 48) = v17;
  *(v9 + 52) = v16;
  *(v9 + 60) = v13;
LABEL_14:

  result.width = v22;
  result.height = HIDWORD(v22);
  result.confidence = *&v21;
  result.inlierCnt = HIDWORD(v21);
  return result;
}

- (double)normalizeHomography:(uint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v5 = a1.columns[1];
  v6 = a1.columns[0];
  v7 = 0;
  a1.columns[0].i32[1] = 0;
  a1.columns[0].i64[1] = 0;
  a1.columns[0].f32[0] = 1.0 / a4;
  a1.columns[1].i32[0] = 0;
  a1.columns[1].i64[1] = 0;
  a1.columns[1].f32[1] = 1.0 / a5;
  v13.columns[0] = v6;
  v13.columns[1] = v5;
  v13.columns[2] = a1.columns[2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    *(&v14 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(*&v13.columns[v7])), a1.columns[1], *v13.columns[v7].f32, 1), xmmword_2487C38A0, v13.columns[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  a1.columns[2] = xmmword_2487C38A0;
  v11 = v15;
  v12 = v14;
  v10 = v16;
  v17 = __invert_f3(a1);
  v8 = 0;
  v13 = v17;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    *(&v14 + v8 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*&v13.columns[v8])), v11, *v13.columns[v8].f32, 1), v10, v13.columns[v8], 2);
    ++v8;
  }

  while (v8 != 3);
  return *v14.i64;
}

- (void)checkRun2RunFromMatch1:(_matchPair *)a3 match2:(_matchPair *)a4 matchCount1:(int)a5 matchCount2:(int)a6 frameId:(int)a7
{
  v40 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    v8 = 0;
    v9 = a5;
    p_var2 = &a4->var2;
    v11 = &a3->var2;
    do
    {
      if ((*(v11 - 2) != *(p_var2 - 2) || *(v11 - 1) != *(p_var2 - 1) || *v11 != *p_var2) && (global_logLevel & 4) != 0)
      {
        v12 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          v13 = *(v11 - 2);
          v14 = *(v11 - 1);
          v15 = *(p_var2 - 2);
          v16 = *(p_var2 - 1);
          v17 = *v11;
          v18 = *p_var2;
          *buf = 67111424;
          v21 = a7;
          v22 = 1024;
          v23 = v8;
          v24 = 1024;
          v25 = v13;
          v26 = 1024;
          v27 = v15;
          v28 = 1024;
          v29 = v14;
          v30 = 1024;
          v31 = v16;
          v32 = 2048;
          v33 = v17;
          v34 = 2048;
          v35 = v18;
          v36 = 1024;
          v37 = v9;
          v38 = 1024;
          v39 = a6;
          _os_log_impl(&dword_24874B000, v12, OS_LOG_TYPE_INFO, "The frame %d %d matched pair does not match : %d vs %d, %d vs %d. %.4f vs %.4f, total count:%d %d.\n", buf, 0x46u);
        }
      }

      ++v8;
      p_var2 += 3;
      v11 += 3;
    }

    while (v9 != v8);
  }
}

- (void)filterMatchedCnadidateKpt1:(_keyPointHdr *)a3 kpt2:(_keyPointHdr *)a4 count1:(int)a5 count2:(int)a6 closedDesIndex:(_closedDesIndex *)a7
{
  v26 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    v9 = 0;
    v10 = a5;
    p_var8 = &a4->var8;
    v11 = a6;
    do
    {
      if (a6 < 1)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = p_var8;
        v15 = &a3[v9];
        v16 = *&v15->var0;
        do
        {
          v17 = vaddv_f32(vabd_f32(v16, *(v14 - 8))) >= 150.0 || v15->var4 == *(v14 - 4);
          if (!v17 && (v15->var8 - *v14) < 120.0 && v13 <= 999)
          {
            a7[v9].var0[v13++] = v12;
          }

          ++v12;
          v14 += 9;
        }

        while (v11 != v12);
      }

      v18 = v13 - 1;
      if (!v13)
      {
        v18 = 0;
      }

      a7[v9].var1 = v18;
      if ((global_logLevel & 4) != 0)
      {
        v19 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v23 = v13;
          v24 = 1024;
          v25 = a6;
          _os_log_impl(&dword_24874B000, v19, OS_LOG_TYPE_INFO, "Number of matched count:%d Total key pt:%d.\n", buf, 0xEu);
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

- (void)PrintMatchKptDistance:(_matchPair *)a3 matchCount:(int)a4 kpt1:(_keyPointHdr *)a5 kpt2:(_keyPointHdr *)a6 frameId:(int)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = global_logLevel;
  if (a4 < 1)
  {
    v11 = 0;
    if ((global_logLevel & 4) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v11 = 0;
  v12 = a4;
  do
  {
    v13 = &a5[a3->var0];
    v14 = &a6[a3->var1];
    v15 = vabds_f32(v13->var0, v14->var0) + vabds_f32(v13->var1, v14->var1);
    v16 = v13->var8 - v14->var8;
    v17 = v13->var4 - v14->var4;
    if ((v7 & 4) != 0)
    {
      v18 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        var4 = a5[a3->var0].var4;
        *buf = 67110400;
        v26 = a7;
        v27 = 1024;
        v28 = v11;
        v29 = 1024;
        v30 = var4;
        v31 = 1024;
        *v32 = v17;
        *&v32[4] = 2048;
        *&v32[6] = v16;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_INFO, "The frame %d: %d paired pts octave :%d octave dist:%d, angle dist:%.2f xy_dist:%.2f .\n", buf, 0x2Eu);
      }

      v7 = global_logLevel;
    }

    if (v15 < 200.0 && v16 < 120.0)
    {
      if (v17 >= 0)
      {
        v21 = v17;
      }

      else
      {
        v21 = -v17;
      }

      if (v21 < 3)
      {
        ++v11;
      }
    }

    ++a3;
    --v12;
  }

  while (v12);
  if ((v7 & 4) != 0)
  {
LABEL_21:
    v22 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      v26 = a7;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = a4;
      v31 = 2048;
      *v32 = ((v11 / a4) * 100.0);
      _os_log_impl(&dword_24874B000, v22, OS_LOG_TYPE_INFO, "The frame %d: %d paired pts larger than max_dist, total count:%d , perc:%.4f .\n", buf, 0x1Eu);
    }
  }
}

- (void)Printkpt1:(_keyPointHdr *)a3 count:(int)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = a4;
    v6 = global_logLevel;
    p_var5 = &a3->var5;
    do
    {
      if ((v6 & 4) != 0)
      {
        v8 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          v9 = *(p_var5 - 1);
          v10 = *p_var5;
          *buf = 67109632;
          v12 = v4;
          v13 = 1024;
          v14 = v9;
          v15 = 1024;
          v16 = v10;
          _os_log_impl(&dword_24874B000, v8, OS_LOG_TYPE_INFO, "The kpt %d octave %d later %d.\n", buf, 0x14u);
        }

        v6 = global_logLevel;
      }

      ++v4;
      p_var5 += 9;
    }

    while (v5 != v4);
  }
}

- (BOOL)setupResourcesWithFlowDerivedHomography:(BOOL)a3
{
  if (a3)
  {
    if (!self->_flowDerivedSetup)
    {
      p_flowDerivedSetup = &self->_flowDerivedSetup;
      v5 = 48;
      while (1)
      {
        v6 = [[RansacEstimation alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
        v7 = *(&self->super.isa + v5);
        *(&self->super.isa + v5) = v6;

        if (!*(&self->super.isa + v5))
        {
          goto LABEL_18;
        }

        v5 += 8;
        if (v5 == 80)
        {
          v8 = [(ImageReg *)self allocResourceFlowBasedHomography];
          if (!v8)
          {
            return v8;
          }

          v9 = dispatch_group_create();
          dispatchGroup = self->_dispatchGroup;
          self->_dispatchGroup = v9;

          v11 = dispatch_queue_create("Dispatch queue for RANSAC", MEMORY[0x277D85CD8]);
          concurrent_queue = self->_concurrent_queue;
          self->_concurrent_queue = v11;

          if (self->_dispatchGroup && self->_concurrent_queue)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        }
      }
    }

    goto LABEL_11;
  }

  if (self->_SIFTSetup)
  {
LABEL_11:
    LOBYTE(v8) = 1;
    return v8;
  }

  v13 = [[SIFTFeatureExtraction alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = v13;

  if (!self->_featureExtractor || (v15 = [[RansacEstimation alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue], RansacEstimation = self->_RansacEstimation, self->_RansacEstimation = v15, RansacEstimation, !self->_RansacEstimation))
  {
LABEL_18:
    LOBYTE(v8) = 0;
    return v8;
  }

  v8 = [(ImageReg *)self allocResource];
  if (v8)
  {
    p_flowDerivedSetup = &self->_SIFTSetup;
LABEL_16:
    LOBYTE(v8) = 1;
    *p_flowDerivedSetup = 1;
  }

  return v8;
}

- (ImageReg)initWithDevice:(id)a3 commmandQueue:(id)a4 flowDerivedHomography:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = ImageReg;
  v11 = [(ImageReg *)&v23 init];
  v12 = v11;
  if (v11 && ((v11->_SIFTSetup = 0, v11->_flowDerivedSetup = 0, !v9) || !v10 ? (v14 = MTLCreateSystemDefaultDevice(), device = v12->_device, v12->_device = v14, device, v13 = [(MTLDevice *)v12->_device newCommandQueue]) : (objc_storeStrong(&v11->_device, a3), v13 = v10), (commandQueue = v12->_commandQueue, v12->_commandQueue = v13, commandQueue, v12->_device) && v12->_commandQueue && (v17 = [[SIFTMatcher alloc] initWithDevice:v12->_device commmandQueue:v12->_commandQueue], SIFTMatcher = v12->_SIFTMatcher, v12->_SIFTMatcher = v17, SIFTMatcher, v12->_SIFTMatcher) && (v19 = [[MetalToolBox alloc] initWithDevice:v12->_device commmandQueue:v12->_commandQueue], toolBox = v12->_toolBox, v12->_toolBox = v19, toolBox, v12->_toolBox) && [(ImageReg *)v12 setupResourcesWithFlowDerivedHomography:v5]))
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)allocResourceFlowBasedHomography
{
  v3 = 0;
  v4 = 0;
  Y1 = self->Y1;
  do
  {
    v6 = OUTLINED_FUNCTION_1_11();
    v7 = *(Y1 - 5);
    *(Y1 - 5) = v6;

    v8 = OUTLINED_FUNCTION_1_11();
    v9 = Y1[5];
    Y1[5] = v8;

    v10 = OUTLINED_FUNCTION_1_11();
    v11 = *Y1;
    *Y1 = v10;

    v12 = OUTLINED_FUNCTION_1_11();
    v13 = Y1[10];
    Y1[10] = v12;

    v14 = [(MTLDevice *)self->_device newBufferWithLength:655360 options:0];
    v15 = Y1[15];
    Y1[15] = v14;

    v16 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
    v17 = Y1[20];
    Y1[20] = v16;

    if (!*(Y1 - 5))
    {
      break;
    }

    if (!Y1[5])
    {
      break;
    }

    if (!*Y1)
    {
      break;
    }

    if (!Y1[10])
    {
      break;
    }

    if (!Y1[15])
    {
      break;
    }

    if (!Y1[20])
    {
      break;
    }

    v4 = v3 > 3;
    ++Y1;
    ++v3;
  }

  while (v3 != 5);
  return v4;
}

- (int64_t)preprocessFramesFromImage0:(__CVBuffer *)a3 Image1:(__CVBuffer *)a4
{
  v7 = isPackedRGBA(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  self->_xscaleFactor = 640.0 / Width;
  self->_yscaleFactor = 360.0 / Height;
  v10 = self->_refreshCalculation || self->_testingMode;
  if (!self->_image0Texture || self->_grayBuf0Texture == 0 || v10)
  {
    device = self->_device;
    if (v7)
    {
      createRGBATextureFromCVPixelBuffer(a3, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(a3, device, 1, 3uLL);
    }
    v12 = ;
    image0Texture = self->_image0Texture;
    self->_image0Texture = v12;

    if (!self->_image0Texture)
    {
      return 9;
    }

    v14 = createTextureFromCVPixelBuffer(self->_grayBuf0, self->_device, 0);
    grayBuf0Texture = self->_grayBuf0Texture;
    self->_grayBuf0Texture = v14;

    if (!self->_grayBuf0Texture)
    {
      return 9;
    }
  }

  if (!self->_image1Texture || self->_grayBuf1Texture == 0 || v10)
  {
    v16 = self->_device;
    if (v7)
    {
      createRGBATextureFromCVPixelBuffer(a4, v16);
    }

    else
    {
      createTexturesFromCVPixelBuffer(a4, v16, 1, 3uLL);
    }
    v17 = ;
    image1Texture = self->_image1Texture;
    self->_image1Texture = v17;

    if (!self->_image1Texture)
    {
      return 9;
    }

    v19 = createTextureFromCVPixelBuffer(self->_grayBuf1, self->_device, 0);
    grayBuf1Texture = self->_grayBuf1Texture;
    self->_grayBuf1Texture = v19;

    if (!self->_grayBuf1Texture)
    {
      return 9;
    }
  }

  [(ImageReg *)self preProcessInput:self->_image0Texture outputGray:self->_grayBuf0Texture];
  [(ImageReg *)self preProcessInput:self->_image1Texture outputGray:self->_grayBuf1Texture];
  return 0;
}

- (uint64_t)preprocessFirst:(double)a3 warpedFirst:(double)a4 withHomography:(uint64_t)a5
{
  if (!a6 || !a7)
  {
    return 12;
  }

  Width = CVPixelBufferGetWidth(a6);
  *&v11 = Width / CVPixelBufferGetWidth(a7);
  [*(a1 + 88) convertHomographyWithFactor:v11 input:{a2, a3, a4}];
  v12 = *(a1 + 88);

  return [v12 proprocessFirst:a6 warpedFirst:a7 withHomography:?];
}

@end