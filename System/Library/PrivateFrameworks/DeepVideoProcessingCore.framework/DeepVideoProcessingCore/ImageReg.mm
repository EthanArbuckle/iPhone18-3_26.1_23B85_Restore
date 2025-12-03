@interface ImageReg
- (BOOL)allocResource;
- (BOOL)allocResourceFlowBasedHomography;
- (BOOL)setupResourcesWithFlowDerivedHomography:(BOOL)homography;
- (ImageReg)initWithDevice:(id)device commmandQueue:(id)queue flowDerivedHomography:(BOOL)homography;
- (ImageReg)initWithSubmodules:(id)submodules WithDevice:(id)device commandQueue:(id)queue;
- (ImageReg)initWithSubmodules:(id)submodules WithDevice:(id)device commandQueue:(id)queue flowDerivedHomography:(BOOL)homography;
- (_xform2D)extractHomographyFromFlow:(__CVBuffer *)flow depth:(__CVBuffer *)depth im1:(__CVBuffer *)im1 im2:(__CVBuffer *)im2 targetResolution:(CGSize)resolution currentPairFlow:(BOOL)pairFlow;
- (_xform2D)extractHomographyFromPrev:(id)prev ToCurr:(id)curr;
- (_xform2D)extractHomographyFromPrev:(id)prev ToCurr:(id)curr calculateIndex:(int)index;
- (_xform2D)getHomographyWithMatches:(_matchPair *)matches matchCount:(int)count keypoints1:(_keyPointHdr *)keypoints1 Keypoints2:(_keyPointHdr *)keypoints2 imageDim:(unint64_t)dim imageDim:(unint64_t)imageDim;
- (_xform2D)registerImage0:(__CVBuffer *)image0 toImage1:(__CVBuffer *)image1 Normalize:(BOOL)normalize;
- (double)normalizeHomography:(uint64_t)homography width:(unint64_t)width height:(unint64_t)height;
- (int64_t)asyncRansacFromMatchedPair:(id)pair matchCount:(id)count homography:(_xform2D *)homography index:(int)index height:(int)height width:(int)width;
- (int64_t)preprocessFramesFromImage0:(__CVBuffer *)image0 Image1:(__CVBuffer *)image1;
- (uint64_t)preprocessFirst:(double)first warpedFirst:(double)warpedFirst withHomography:(uint64_t)homography;
- (void)PrintMatchKptDistance:(_matchPair *)distance matchCount:(int)count kpt1:(_keyPointHdr *)kpt1 kpt2:(_keyPointHdr *)kpt2 frameId:(int)id;
- (void)Printkpt1:(_keyPointHdr *)printkpt1 count:(int)count;
- (void)checkRun2RunFromMatch1:(_matchPair *)match1 match2:(_matchPair *)match2 matchCount1:(int)count1 matchCount2:(int)count2 frameId:(int)id;
- (void)dealloc;
- (void)filterMatchedCnadidateKpt1:(_keyPointHdr *)kpt1 kpt2:(_keyPointHdr *)kpt2 count1:(int)count1 count2:(int)count2 closedDesIndex:(_closedDesIndex *)index;
- (void)freeResource;
- (void)freeResourceFlowBasedHomography;
- (void)getHomographyWithFlowMatches_async:(_flow_matchPair *)matches_async matchCount:(int)count imageDim:(unint64_t)dim imageDim:(unint64_t)imageDim index:(int)index homoMatrix:(_xform2D *)matrix;
@end

@implementation ImageReg

- (ImageReg)initWithSubmodules:(id)submodules WithDevice:(id)device commandQueue:(id)queue
{
  objc_storeStrong(&self->_homographyFlow, submodules);
  queueCopy = queue;
  deviceCopy = device;
  v10 = [(ImageReg *)self initWithDevice:deviceCopy commmandQueue:queueCopy flowDerivedHomography:0];

  return v10;
}

- (ImageReg)initWithSubmodules:(id)submodules WithDevice:(id)device commandQueue:(id)queue flowDerivedHomography:(BOOL)homography
{
  homographyCopy = homography;
  objc_storeStrong(&self->_homographyFlow, submodules);
  queueCopy = queue;
  deviceCopy = device;
  v12 = [(ImageReg *)self initWithDevice:deviceCopy commmandQueue:queueCopy flowDerivedHomography:homographyCopy];

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

- (_xform2D)getHomographyWithMatches:(_matchPair *)matches matchCount:(int)count keypoints1:(_keyPointHdr *)keypoints1 Keypoints2:(_keyPointHdr *)keypoints2 imageDim:(unint64_t)dim imageDim:(unint64_t)imageDim
{
  v9 = v8;
  v10 = *(MEMORY[0x277D860B0] + 16);
  v34 = *MEMORY[0x277D860B0];
  v35 = v10;
  v36 = *(MEMORY[0x277D860B0] + 32);
  v37 = 0uLL;
  if (!matches || !keypoints1 || !keypoints2)
  {
    goto LABEL_9;
  }

  v13 = *&count;
  imageDimCopy = imageDim;
  contents = [(MTLBuffer *)self->_X[0] contents];
  contents2 = [(MTLBuffer *)self->_Y[0] contents];
  contents3 = [(MTLBuffer *)self->_X[1] contents];
  contents4 = [(MTLBuffer *)self->_Y[1] contents];
  if (v13)
  {
    v23 = v13;
    p_var1 = &matches->var1;
    do
    {
      v25 = &keypoints1[*(p_var1 - 1)];
      *contents++ = LODWORD(v25->var0);
      *contents2++ = LODWORD(v25->var1);
      v26 = &keypoints2[*p_var1];
      *contents3++ = LODWORD(v26->var0);
      *contents4++ = LODWORD(v26->var1);
      p_var1 += 3;
      --v23;
    }

    while (v23);
  }

  *&v21 = self->_xscaleFactor;
  *&v22 = self->_yscaleFactor;
  LOBYTE(v32) = 1;
  LODWORD(v31) = imageDimCopy;
  v27 = [self->_RansacEstimation ApplyRansacEstimation:self->_X[0] desMatchInput:self->_Y[0] desMatchInput:self->_X[1] desMatchInput:self->_Y[1] desMatchCountInput:v13 xscaleFactorInput:dim yscaleFactorInput:v21 imageDimInput:v22 imageDimInput:v31 homographyMatrixOutput:&v34 waitForComplete:v32];
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

- (void)getHomographyWithFlowMatches_async:(_flow_matchPair *)matches_async matchCount:(int)count imageDim:(unint64_t)dim imageDim:(unint64_t)imageDim index:(int)index homoMatrix:(_xform2D *)matrix
{
  imageDimCopy = imageDim;
  v25 = *(MEMORY[0x277D860B0] + 16);
  v26 = *MEMORY[0x277D860B0];
  v31 = *MEMORY[0x277D860B0];
  v32 = v25;
  v24 = *(MEMORY[0x277D860B0] + 32);
  v33 = v24;
  indexCopy = index;
  v34 = 0;
  X1 = self->X1;
  contents = [(MTLBuffer *)self->X1[index] contents];
  contents2 = [(MTLBuffer *)self->Y1[index] contents];
  contents3 = [(MTLBuffer *)self->X2[index] contents];
  contents4 = [(MTLBuffer *)self->Y2[index] contents];
  if (count)
  {
    countCopy = count;
    p_var2 = &matches_async->var2;
    do
    {
      *contents++ = *(p_var2 - 2);
      *contents2++ = *p_var2;
      *contents3++ = *(p_var2 - 1);
      *contents4++ = *(p_var2 + 1);
      p_var2 += 5;
      --countCopy;
    }

    while (countCopy);
  }

  *&v16 = self->_xscaleFactor;
  *&v17 = self->_yscaleFactor;
  LOBYTE(v23) = 1;
  LODWORD(v22) = imageDimCopy;
  if ([RansacEstimation ApplyRansacEstimation:"ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:" desMatchInput:X1[indexCopy] desMatchInput:self->Y1[indexCopy] desMatchInput:self->X2[indexCopy] desMatchCountInput:self->Y2[indexCopy] xscaleFactorInput:v16 yscaleFactorInput:v17 imageDimInput:v22 imageDimInput:&v31 homographyMatrixOutput:v23 waitForComplete:?])
  {
    v20 = v32;
    *matrix = v31;
    matrix[1] = v20;
    v21 = v34;
    matrix[2] = v33;
    matrix[3] = v21;
  }

  else
  {
    *matrix = v26;
    matrix[1] = v25;
    matrix[2] = v24;
    *&matrix[3].confidence = 0;
    *&matrix[3].width = 0;
  }
}

- (int64_t)asyncRansacFromMatchedPair:(id)pair matchCount:(id)count homography:(_xform2D *)homography index:(int)index height:(int)height width:(int)width
{
  pairCopy = pair;
  countCopy = count;
  dispatchGroup = self->_dispatchGroup;
  concurrent_queue = self->_concurrent_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__ImageReg_asyncRansacFromMatchedPair_matchCount_homography_index_height_width___block_invoke;
  v21[3] = &unk_278F53768;
  v22 = pairCopy;
  v23 = countCopy;
  widthCopy = width;
  heightCopy = height;
  indexCopy = index;
  selfCopy = self;
  homographyCopy = homography;
  v18 = countCopy;
  v19 = pairCopy;
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

- (_xform2D)registerImage0:(__CVBuffer *)image0 toImage1:(__CVBuffer *)image1 Normalize:(BOOL)normalize
{
  v6 = v5;
  if (!image0 || !image1 || (v8 = normalize, !self->_SIFTSetup) && ![(ImageReg *)self setupResourcesWithFlowDerivedHomography:0]|| [(ImageReg *)self preprocessFramesFromImage0:image0 Image1:image1])
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
    Width = CVPixelBufferGetWidth(image0);
    v11 = [(ImageReg *)self normalizeHomography:Width width:CVPixelBufferGetHeight(image0) height:v25, v23, v21];
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

- (_xform2D)extractHomographyFromPrev:(id)prev ToCurr:(id)curr
{
  v7 = v4;
  prevCopy = prev;
  currCopy = curr;
  v10 = currCopy;
  v11 = 0;
  v26 = *MEMORY[0x277D860B0];
  v27 = *(MEMORY[0x277D860B0] + 16);
  v28 = *(MEMORY[0x277D860B0] + 32);
  v12 = 0;
  v13 = 0;
  if (prevCopy && currCopy)
  {
    if ([(SIFTFeatureExtraction *)self->_featureExtractor detect1:prevCopy toHdr1:self->_keyPoints[0] detect2:currCopy toHdr2:self->_keyPoints[1] count1:self->count count2:&self->count[1], 0.0]|| (!self->_streamingMode || self->_refreshCalculation) && [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:self->_keyPoints[0] keypointsCount:self->count[0] intoHdr:self->_descriptors[0] waitForComplete:0 ind:0]|| [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:self->_keyPoints[1] keypointsCount:self->count[1] intoHdr:self->_descriptors[1] waitForComplete:0 ind:1])
    {
      [ImageReg getHomographyWithMatches:v7 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
      goto LABEL_13;
    }

    v14 = [self->_SIFTMatcher findMatchesBetweenDescriptorEarlyExist:self->_descriptors[0] objectCount:self->count[0] keypt1:self->_keyPoints[0] toTargetDescriptor:self->_descriptors[1] targetCount:self->count[1] keypt2:self->_keyPoints[1] filteredIndex:self->_closeDesIndex matches:self->_matches];
    contents = [(MTLBuffer *)self->_keyPoints[0] contents];
    contents2 = [(MTLBuffer *)self->_keyPoints[1] contents];
    contents3 = [(MTLBuffer *)self->_matches contents];
    v11 = 0;
    v12 = 0;
    if (contents && contents2 && contents3)
    {
      -[ImageReg getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:](self, "getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:", contents3, v14, contents, contents2, [prevCopy width], objc_msgSend(prevCopy, "height"));
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

- (_xform2D)extractHomographyFromFlow:(__CVBuffer *)flow depth:(__CVBuffer *)depth im1:(__CVBuffer *)im1 im2:(__CVBuffer *)im2 targetResolution:(CGSize)resolution currentPairFlow:(BOOL)pairFlow
{
  v9 = v8;
  v10 = 0;
  v85 = *MEMORY[0x277D85DE8];
  v11 = *(MEMORY[0x277D860B0] + 16);
  v12 = *(MEMORY[0x277D860B0] + 32);
  v82 = *MEMORY[0x277D860B0];
  v83 = v11;
  v84 = v12;
  v13 = vmovn_s64(vcvtq_s64_f64(resolution));
  v14 = 0;
  if (!flow || !im1 || !im2)
  {
    v38 = v13;
LABEL_39:
    v60 = &v82;
    v13 = v38;
    goto LABEL_43;
  }

  selfCopy = self;
  width = resolution.width;
  height = resolution.height;
  if (!self->_flowDerivedSetup)
  {
    self = [(ImageReg *)self setupResourcesWithFlowDerivedHomography:1];
    if (!self)
    {
      v10 = 0;
      goto LABEL_41;
    }
  }

  v20 = createRGBATextureFromCVPixelBuffer(im1, selfCopy->_device);
  v21 = createRGBATextureFromCVPixelBuffer(im2, selfCopy->_device);
  v22 = createTexturesFromCVPixelBuffer(flow, selfCopy->_device, 2, 1uLL);
  if (depth)
  {
    v23 = createTexturesFromCVPixelBuffer(depth, selfCopy->_device, 2, 1uLL);
  }

  else
  {
    v23 = 0;
  }

  width = [v22 width];
  v25 = width;
  selfCopy->_xscaleFactor = width / v25;
  height = [v22 height];
  v27 = height;
  selfCopy->_yscaleFactor = height / v27;
  v72 = 0uLL;
  v73 = 0;
  v28 = [(HomographyFlow *)selfCopy->_homographyFlow analyzeRegionalFlowInformation:v22 depth:v23 quart1_angle:v78 quart2_angle:v79 quart3_angle:v80 quart4_angle:v81 depth_angle:&v72];
  if (selfCopy->_streamingMode)
  {
    if (v78[0] == 0.0)
    {
      v78[0] = selfCopy->_prev_quart1.angle;
    }

    else
    {
      selfCopy->_prev_quart1.angle = v78[0];
    }

    angle = v79[0];
    if (v79[0] == 0.0)
    {
      angle = selfCopy->_prev_quart2.angle;
      v79[0] = angle;
    }

    else
    {
      selfCopy->_prev_quart2.angle = v79[0];
    }

    if (v80[0] == 0.0)
    {
      v80[0] = selfCopy->_prev_quart3.angle;
    }

    else
    {
      selfCopy->_prev_quart3.angle = angle;
    }

    if (v81[0] == 0.0)
    {
      v81[0] = selfCopy->_prev_quart4.angle;
    }

    else
    {
      selfCopy->_prev_quart4.angle = v81[0];
    }
  }

  v67 = v23;
  v65 = v9;
  commandBuffer = [(MTLCommandQueue *)selfCopy->_commandQueue commandBuffer];
  v31 = commandBuffer;
  v63 = v28;
  v69 = v20;
  if (v28 == 1)
  {
    SIFTMatcher = selfCopy->_SIFTMatcher;
    v33 = selfCopy->flow_match[4];
    v34 = selfCopy->flow_count[4];
    v74 = v72;
    LODWORD(v75) = v73;
    v35 = v31;
    LOBYTE(v62) = pairFlow;
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
        v49 = sortFlowMatchingPair_org(selfCopy->flow_match[4], *[(MTLBuffer *)selfCopy->flow_count[4] contents]);
        contents = [(MTLBuffer *)selfCopy->flow_match[4] contents];
        v76 = 0u;
        v77[0] = 0u;
        v74 = 0u;
        v75 = 0u;
        -[ImageReg getHomographyWithFlowMatches_async:matchCount:imageDim:imageDim:index:homoMatrix:](selfCopy, "getHomographyWithFlowMatches_async:matchCount:imageDim:imageDim:index:homoMatrix:", contents, v49, [v22 width], objc_msgSend(v22, "height"), 0, &v74);
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
          -[ImageReg asyncRansacFromMatchedPair:matchCount:homography:index:height:width:](selfCopy, "asyncRansacFromMatchedPair:matchCount:homography:index:height:width:", selfCopy->flow_match[v54], selfCopy->flow_count[v54], v55, v54, [v22 height], objc_msgSend(v22, "width"));
          ++v54;
          v55 += 4;
        }

        while (v54 != 4);
        dispatch_barrier_sync(selfCopy->_concurrent_queue, &__block_literal_global_0);
        dispatch_group_wait(selfCopy->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
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

  v35 = commandBuffer;
  v36 = v21;
  v42 = 0;
  flow_count = selfCopy->flow_count;
  while (1)
  {
    v44 = *(flow_count - 5);
    v74 = *&v78[v42];
    *&v75 = v78[v42 + 4];
    v45 = *flow_count;
    v46 = selfCopy->_SIFTMatcher;
    v70 = v74;
    v71 = v75;
    v47 = v44;
    LOBYTE(v62) = pairFlow;
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

- (_xform2D)extractHomographyFromPrev:(id)prev ToCurr:(id)curr calculateIndex:(int)index
{
  v9 = v5;
  prevCopy = prev;
  currCopy = curr;
  v12 = currCopy;
  v13 = 0;
  v29 = *MEMORY[0x277D860B0];
  v30 = *(MEMORY[0x277D860B0] + 16);
  v31 = *(MEMORY[0x277D860B0] + 32);
  if (self->_streamingMode)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = 1;
  }

  v15 = indexCopy == 0;
  v16 = 0;
  v17 = 0;
  if (prevCopy && currCopy)
  {
    keyPoints = self->_keyPoints;
    v19 = &self->count[v15];
    v20 = &self->count[indexCopy];
    if ([(SIFTFeatureExtraction *)self->_featureExtractor detect1:prevCopy toHdr1:self->_keyPoints[v15] detect2:currCopy toHdr2:self->_keyPoints[indexCopy] count1:v19 count2:v20, 0.0, 0.0]|| (!self->_streamingMode || self->_refreshCalculation) && [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:keyPoints[v15] keypointsCount:*v19 intoHdr:self->_descriptors[v15] waitForComplete:0 ind:0]|| [(SIFTFeatureExtraction *)self->_featureExtractor calculateDescriptorsForKeypoints:keyPoints[indexCopy] keypointsCount:*v20 intoHdr:self->_descriptors[indexCopy] waitForComplete:0 ind:1])
    {
      [ImageReg getHomographyWithMatches:v9 matchCount:? keypoints1:? Keypoints2:? imageDim:? imageDim:?];
      goto LABEL_14;
    }

    -[ImageReg getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:](self, "getHomographyWithMatches:matchCount:keypoints1:Keypoints2:imageDim:imageDim:", -[MTLBuffer contents](self->_matches, "contents"), -[SIFTMatcher findMatchesBetweenDescriptorEarlyExist:objectCount:keypt1:toTargetDescriptor:targetCount:keypt2:filteredIndex:matches:](self->_SIFTMatcher, "findMatchesBetweenDescriptorEarlyExist:objectCount:keypt1:toTargetDescriptor:targetCount:keypt2:filteredIndex:matches:", self->_descriptors[v15], *v19, keyPoints[v15], self->_descriptors[indexCopy], *v20, keyPoints[indexCopy], self->_closeDesIndex, self->_matches), -[MTLBuffer contents](keyPoints[v15], "contents"), -[MTLBuffer contents](keyPoints[indexCopy], "contents"), [prevCopy width], objc_msgSend(prevCopy, "height"));
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

- (double)normalizeHomography:(uint64_t)homography width:(unint64_t)width height:(unint64_t)height
{
  v5 = self.columns[1];
  v6 = self.columns[0];
  v7 = 0;
  self.columns[0].i32[1] = 0;
  self.columns[0].i64[1] = 0;
  self.columns[0].f32[0] = 1.0 / width;
  self.columns[1].i32[0] = 0;
  self.columns[1].i64[1] = 0;
  self.columns[1].f32[1] = 1.0 / height;
  v13.columns[0] = v6;
  v13.columns[1] = v5;
  v13.columns[2] = self.columns[2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  do
  {
    *(&v14 + v7 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(self.columns[0], COERCE_FLOAT(*&v13.columns[v7])), self.columns[1], *v13.columns[v7].f32, 1), xmmword_2487C38A0, v13.columns[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  self.columns[2] = xmmword_2487C38A0;
  v11 = v15;
  v12 = v14;
  v10 = v16;
  v17 = __invert_f3(self);
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

- (void)checkRun2RunFromMatch1:(_matchPair *)match1 match2:(_matchPair *)match2 matchCount1:(int)count1 matchCount2:(int)count2 frameId:(int)id
{
  v40 = *MEMORY[0x277D85DE8];
  if (count1 >= 1)
  {
    v8 = 0;
    count1Copy = count1;
    p_var2 = &match2->var2;
    v11 = &match1->var2;
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
          idCopy = id;
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
          v37 = count1Copy;
          v38 = 1024;
          count2Copy = count2;
          _os_log_impl(&dword_24874B000, v12, OS_LOG_TYPE_INFO, "The frame %d %d matched pair does not match : %d vs %d, %d vs %d. %.4f vs %.4f, total count:%d %d.\n", buf, 0x46u);
        }
      }

      ++v8;
      p_var2 += 3;
      v11 += 3;
    }

    while (count1Copy != v8);
  }
}

- (void)filterMatchedCnadidateKpt1:(_keyPointHdr *)kpt1 kpt2:(_keyPointHdr *)kpt2 count1:(int)count1 count2:(int)count2 closedDesIndex:(_closedDesIndex *)index
{
  v26 = *MEMORY[0x277D85DE8];
  if (count1 >= 1)
  {
    v9 = 0;
    count1Copy = count1;
    p_var8 = &kpt2->var8;
    count2Copy = count2;
    do
    {
      if (count2 < 1)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = p_var8;
        v15 = &kpt1[v9];
        v16 = *&v15->var0;
        do
        {
          v17 = vaddv_f32(vabd_f32(v16, *(v14 - 8))) >= 150.0 || v15->var4 == *(v14 - 4);
          if (!v17 && (v15->var8 - *v14) < 120.0 && v13 <= 999)
          {
            index[v9].var0[v13++] = v12;
          }

          ++v12;
          v14 += 9;
        }

        while (count2Copy != v12);
      }

      v18 = v13 - 1;
      if (!v13)
      {
        v18 = 0;
      }

      index[v9].var1 = v18;
      if ((global_logLevel & 4) != 0)
      {
        v19 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v23 = v13;
          v24 = 1024;
          count2Copy2 = count2;
          _os_log_impl(&dword_24874B000, v19, OS_LOG_TYPE_INFO, "Number of matched count:%d Total key pt:%d.\n", buf, 0xEu);
        }
      }

      ++v9;
    }

    while (v9 != count1Copy);
  }
}

- (void)PrintMatchKptDistance:(_matchPair *)distance matchCount:(int)count kpt1:(_keyPointHdr *)kpt1 kpt2:(_keyPointHdr *)kpt2 frameId:(int)id
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = global_logLevel;
  if (count < 1)
  {
    v11 = 0;
    if ((global_logLevel & 4) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v11 = 0;
  countCopy = count;
  do
  {
    v13 = &kpt1[distance->var0];
    v14 = &kpt2[distance->var1];
    v15 = vabds_f32(v13->var0, v14->var0) + vabds_f32(v13->var1, v14->var1);
    v16 = v13->var8 - v14->var8;
    v17 = v13->var4 - v14->var4;
    if ((v7 & 4) != 0)
    {
      v18 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        var4 = kpt1[distance->var0].var4;
        *buf = 67110400;
        idCopy2 = id;
        v27 = 1024;
        v28 = v11;
        v29 = 1024;
        countCopy2 = var4;
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

    ++distance;
    --countCopy;
  }

  while (countCopy);
  if ((v7 & 4) != 0)
  {
LABEL_21:
    v22 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      idCopy2 = id;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      countCopy2 = count;
      v31 = 2048;
      *v32 = ((v11 / count) * 100.0);
      _os_log_impl(&dword_24874B000, v22, OS_LOG_TYPE_INFO, "The frame %d: %d paired pts larger than max_dist, total count:%d , perc:%.4f .\n", buf, 0x1Eu);
    }
  }
}

- (void)Printkpt1:(_keyPointHdr *)printkpt1 count:(int)count
{
  v17 = *MEMORY[0x277D85DE8];
  if (count >= 1)
  {
    v4 = 0;
    countCopy = count;
    v6 = global_logLevel;
    p_var5 = &printkpt1->var5;
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

    while (countCopy != v4);
  }
}

- (BOOL)setupResourcesWithFlowDerivedHomography:(BOOL)homography
{
  if (homography)
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
          allocResourceFlowBasedHomography = [(ImageReg *)self allocResourceFlowBasedHomography];
          if (!allocResourceFlowBasedHomography)
          {
            return allocResourceFlowBasedHomography;
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
    LOBYTE(allocResourceFlowBasedHomography) = 1;
    return allocResourceFlowBasedHomography;
  }

  v13 = [[SIFTFeatureExtraction alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = v13;

  if (!self->_featureExtractor || (v15 = [[RansacEstimation alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue], RansacEstimation = self->_RansacEstimation, self->_RansacEstimation = v15, RansacEstimation, !self->_RansacEstimation))
  {
LABEL_18:
    LOBYTE(allocResourceFlowBasedHomography) = 0;
    return allocResourceFlowBasedHomography;
  }

  allocResourceFlowBasedHomography = [(ImageReg *)self allocResource];
  if (allocResourceFlowBasedHomography)
  {
    p_flowDerivedSetup = &self->_SIFTSetup;
LABEL_16:
    LOBYTE(allocResourceFlowBasedHomography) = 1;
    *p_flowDerivedSetup = 1;
  }

  return allocResourceFlowBasedHomography;
}

- (ImageReg)initWithDevice:(id)device commmandQueue:(id)queue flowDerivedHomography:(BOOL)homography
{
  homographyCopy = homography;
  deviceCopy = device;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = ImageReg;
  v11 = [(ImageReg *)&v23 init];
  v12 = v11;
  if (v11 && ((v11->_SIFTSetup = 0, v11->_flowDerivedSetup = 0, !deviceCopy) || !queueCopy ? (v14 = MTLCreateSystemDefaultDevice(), device = v12->_device, v12->_device = v14, device, v13 = [(MTLDevice *)v12->_device newCommandQueue]) : (objc_storeStrong(&v11->_device, device), v13 = queueCopy), (commandQueue = v12->_commandQueue, v12->_commandQueue = v13, commandQueue, v12->_device) && v12->_commandQueue && (v17 = [[SIFTMatcher alloc] initWithDevice:v12->_device commmandQueue:v12->_commandQueue], SIFTMatcher = v12->_SIFTMatcher, v12->_SIFTMatcher = v17, SIFTMatcher, v12->_SIFTMatcher) && (v19 = [[MetalToolBox alloc] initWithDevice:v12->_device commmandQueue:v12->_commandQueue], toolBox = v12->_toolBox, v12->_toolBox = v19, toolBox, v12->_toolBox) && [(ImageReg *)v12 setupResourcesWithFlowDerivedHomography:homographyCopy]))
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

- (int64_t)preprocessFramesFromImage0:(__CVBuffer *)image0 Image1:(__CVBuffer *)image1
{
  v7 = isPackedRGBA(image0);
  Width = CVPixelBufferGetWidth(image0);
  Height = CVPixelBufferGetHeight(image0);
  self->_xscaleFactor = 640.0 / Width;
  self->_yscaleFactor = 360.0 / Height;
  v10 = self->_refreshCalculation || self->_testingMode;
  if (!self->_image0Texture || self->_grayBuf0Texture == 0 || v10)
  {
    device = self->_device;
    if (v7)
    {
      createRGBATextureFromCVPixelBuffer(image0, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(image0, device, 1, 3uLL);
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
      createRGBATextureFromCVPixelBuffer(image1, v16);
    }

    else
    {
      createTexturesFromCVPixelBuffer(image1, v16, 1, 3uLL);
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

- (uint64_t)preprocessFirst:(double)first warpedFirst:(double)warpedFirst withHomography:(uint64_t)homography
{
  if (!a6 || !a7)
  {
    return 12;
  }

  Width = CVPixelBufferGetWidth(a6);
  *&v11 = Width / CVPixelBufferGetWidth(a7);
  [*(self + 88) convertHomographyWithFactor:v11 input:{a2, first, warpedFirst}];
  v12 = *(self + 88);

  return [v12 proprocessFirst:a6 warpedFirst:a7 withHomography:?];
}

@end