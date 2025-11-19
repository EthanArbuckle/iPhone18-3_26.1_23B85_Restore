@interface SIFTFeatureExtraction
- (BOOL)setupMetal;
- (SIFTFeatureExtraction)initWithAll:(id)a3 commmandQueue:(id)a4 NumberOfOctaveLayers:(int)a5 withSigma:(float)a6 contrastThreshold:(float)a7 edgeThreshold:(float)a8 accuracyMode:(BOOL)a9;
- (SIFTFeatureExtraction)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (__CVBuffer)getDoGPyramidBufferImageOfOctave:(int)a3 andLayer:(int)a4 ind:(int)a5;
- (__CVBuffer)getGaussPyramidBufferImageOfOctave:(int)a3 andLayer:(int)a4 ind:(int)a5;
- (int)removeDuplicatedSorted:(id)a3 keypointsCount:(int)a4;
- (int64_t)ExtractKeyPointFromInput1:(id)a3 toHdr1:(id)a4 Input2:(id)a5 toHdr2:(id)a6 count1:(int *)a7 count2:(int *)a8;
- (int64_t)adjustLocalExtremasWithThreshold:(float)a3 waitForComplete:(BOOL)a4 edgeThreshold:(float)a5 ind:(int)a6;
- (int64_t)allocateResourceWidth:(unsigned int)a3 andHeight:(unsigned int)a4 ind:(int)a5;
- (int64_t)calculateDescriptorsForKeypoints:(id)a3 keypointsCount:(int)a4 intoHdr:(id)a5 waitForComplete:(BOOL)a6 ind:(int)a7;
- (int64_t)calculateOrientations:(id)a3 withCounterBuffer:(id)a4 waitForComplete:(BOOL)a5 ind:(int)a6;
- (int64_t)detect1:(id)a3 toHdr1:(id)a4 detect2:(id)a5 toHdr2:(id)a6 count1:(int *)a7 count2:(int *)a8;
- (int64_t)findScaleSpaceExtremaWithWaitForComplete:(BOOL)a3 ind:(int)a4;
- (int64_t)generateDoGImagesOctaveWaitForComplete:(BOOL)a3 ind:(int)a4;
- (void)cleanResources;
- (void)dealloc;
- (void)freeResourceFromind:(int)a3;
@end

@implementation SIFTFeatureExtraction

- (SIFTFeatureExtraction)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  self->_refreshCalculation = 1;
  LODWORD(v4) = 1070386381;
  LODWORD(v5) = 1025758986;
  LODWORD(v6) = 10.0;
  return [(SIFTFeatureExtraction *)self initWithAll:a3 commmandQueue:a4 NumberOfOctaveLayers:3 withSigma:0 contrastThreshold:v4 edgeThreshold:v5 accuracyMode:v6];
}

- (void)dealloc
{
  [(SIFTFeatureExtraction *)self freeResourceFromind:0];
  v3 = 1;
  [(SIFTFeatureExtraction *)self freeResourceFromind:1];
  v4 = 0;
  do
  {
    v5 = v3;
    v6 = &self->super.super.isa + 10 * v4;
    v7 = 10;
    do
    {
      v8 = v6[38];
      v6[38] = 0;

      v9 = v6[58];
      v6[58] = 0;

      v10 = v6[78];
      v6[78] = 0;

      ++v6;
      --v7;
    }

    while (v7);
    v11 = self->_finalCount[v4];
    self->_finalCount[v4] = 0;

    v3 = 0;
    v4 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = 0;
  gradual_gaussianCoeffs = self->gradual_gaussianCoeffs;
  do
  {
    v14 = gradual_gaussianCoeffs[v12];
    gradual_gaussianCoeffs[v12] = 0;

    v15 = self->direct_gaussianCoeffs[v12];
    self->direct_gaussianCoeffs[v12] = 0;

    ++v12;
  }

  while (v12 != 8);
  v16.receiver = self;
  v16.super_class = SIFTFeatureExtraction;
  [(SIFTFeatureExtraction *)&v16 dealloc];
}

- (void)freeResourceFromind:(int)a3
{
  v5 = self->scaled_input_texture[a3];
  self->scaled_input_texture[a3] = 0;

  v6 = self->base_image[a3];
  self->base_image[a3] = 0;

  v7 = self->intermedia_base_image[a3];
  self->intermedia_base_image[a3] = 0;

  v8 = &self->super.super.isa + 80 * a3;
  v9 = 80;
  do
  {
    CVPixelBufferRelease(v8[151]);
    v8[151] = 0;
    v10 = v8[315];
    v8[315] = 0;

    CVPixelBufferRelease(v8[475]);
    v8[475] = 0;
    v11 = v8[635];
    v8[635] = 0;

    ++v8;
    --v9;
  }

  while (v9);
  v12 = self->base_image_buffer[a3];
  if (v12)
  {
    CVPixelBufferRelease(v12);
    self->base_image_buffer[a3] = 0;
  }

  intermedia_base_image_buffer = self->intermedia_base_image_buffer;
  v14 = intermedia_base_image_buffer[a3];
  if (v14)
  {
    CVPixelBufferRelease(v14);
    intermedia_base_image_buffer[a3] = 0;
  }
}

- (void)cleanResources
{
  v3 = 0;
  LODWORD(num_octaves) = self->_num_octaves;
  v5 = 1;
  do
  {
    v6 = v5;
    if (num_octaves >= 1)
    {
      v7 = 0;
      v8 = (&self->super.super.isa + 10 * v3);
      do
      {
        *[v8[58] contents] = 0;
        *[v8[78] contents] = 0;
        ++v7;
        num_octaves = self->_num_octaves;
        ++v8;
      }

      while (v7 < num_octaves);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  finalCount = self->_finalCount;
  *[*finalCount contents] = 0;
  *[finalCount[1] contents] = 0;
}

- (__CVBuffer)getGaussPyramidBufferImageOfOctave:(int)a3 andLayer:(int)a4 ind:(int)a5
{
  v5 = a4 + self->_num_intervals * a3;
  v6 = self->_gaussPyrImagesBuffer[a5];
  copyTextureToBuffer1DCustomSize(self->_gaussPyrImagesTexture[a5][v5], v6[v5]);
  return v6[v5];
}

- (__CVBuffer)getDoGPyramidBufferImageOfOctave:(int)a3 andLayer:(int)a4 ind:(int)a5
{
  v5 = a4 + self->_num_intervals * a3;
  v6 = self->_DoGImagesBuffer[a5];
  copyTextureToBuffer1DCustomSize(self->_DoGImagesTexture[a5][v5], v6[v5]);
  return v6[v5];
}

- (int64_t)generateDoGImagesOctaveWaitForComplete:(BOOL)a3 ind:(int)a4
{
  v16 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v17 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if (self->_num_octaves < 1)
  {
LABEL_12:
    [v17 commit];
    [(VEMetalBase *)self commandBufferWait:v17 flag:v16];
    v12 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v21 = 0u;
      v22 = 0u;
      *location = 0u;
      v20 = 0u;
      memset(v18, 0, sizeof(v18));
      LODWORD(num_intervals) = self->_num_intervals;
      if (num_intervals >= 1)
      {
        v9 = 0;
        v10 = v18;
        v11 = location;
        do
        {
          objc_storeStrong(v11, *(&self->_gaussPyrImagesTexture[v7][v9] + v6 * num_intervals));
          objc_storeStrong(v10, *(&self->_DoGImagesTexture[v7][v9++] + self->_num_intervals * v6));
          num_intervals = self->_num_intervals;
          ++v10;
          ++v11;
        }

        while (v9 < num_intervals);
      }

      v12 = encodesubtractKernelOctaveToCommandBuffer(v17, self->_subtractKernelOctave, 16, location, v18, num_intervals);
      for (i = 56; i != -8; i -= 8)
      {
      }

      for (j = 7; j != -1; --j)
      {
      }

      if (v12)
      {
        break;
      }

      if (++v6 >= self->_num_octaves)
      {
        goto LABEL_12;
      }
    }
  }

  return v12;
}

- (int64_t)adjustLocalExtremasWithThreshold:(float)a3 waitForComplete:(BOOL)a4 edgeThreshold:(float)a5 ind:(int)a6
{
  v17 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v18 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if (self->_num_octaves < 1)
  {
LABEL_10:
    [v18 commit];
    [(VEMetalBase *)self commandBufferWait:v18 flag:v17];
    v14 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a6;
    v10 = a6;
    while (1)
    {
      v21 = 0u;
      v22 = 0u;
      *location = 0u;
      v20 = 0u;
      LODWORD(num_intervals) = self->_num_intervals;
      if (num_intervals >= 1)
      {
        v12 = 0;
        v13 = location;
        do
        {
          objc_storeStrong(v13, *(&self->_DoGImagesTexture[v9][v12++] + v8 * num_intervals));
          num_intervals = self->_num_intervals;
          ++v13;
        }

        while (v12 < num_intervals);
      }

      v14 = encodeAdjustLocalExtremasWithThreshold(v18, self->_refineExterma, 32, location, self->_keyPoints[v10][v8], self->nOctaveLayers, self->_adjustedKeyPointsCount[v10][v8], self->_keyPointsCount[v10][v8], num_intervals);
      for (i = 7; i != -1; --i)
      {
      }

      if (v14)
      {
        break;
      }

      if (++v8 >= self->_num_octaves)
      {
        goto LABEL_10;
      }
    }
  }

  return v14;
}

- (int)removeDuplicatedSorted:(id)a3 keypointsCount:(int)a4
{
  v5 = [a3 contents];
  qsort(v5, a4, 0x24uLL, comp);
  if (a4 < 2)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = a4;
  v8 = (v5 + 36);
  v9 = v7 - 1;
  do
  {
    if (comp(&v5[36 * v6], v8))
    {
      v6 = v6 + 1;
      v10 = &v5[36 * v6];
      v11 = *v8;
      v12 = *(v8 + 16);
      *(v10 + 8) = *(v8 + 32);
      *v10 = v11;
      *(v10 + 1) = v12;
    }

    v8 += 36;
    --v9;
  }

  while (v9);
  return v6 + 1;
}

- (SIFTFeatureExtraction)initWithAll:(id)a3 commmandQueue:(id)a4 NumberOfOctaveLayers:(int)a5 withSigma:(float)a6 contrastThreshold:(float)a7 edgeThreshold:(float)a8 accuracyMode:(BOOL)a9
{
  v16 = a3;
  v68.receiver = self;
  v68.super_class = SIFTFeatureExtraction;
  v17 = [(VEMetalBase *)&v68 initWithDevice:v16 commmandQueue:a4];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
  v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v19];
  v21 = [(MTLDevice *)v17->super._device newLibraryWithURL:v20 error:0];
  mtlLibrary = v17->super._mtlLibrary;
  v17->super._mtlLibrary = v21;

  if (![(SIFTFeatureExtraction *)v17 setupMetal])
  {

LABEL_16:
    v62 = 0;
    goto LABEL_14;
  }

  v64 = v20;
  v65 = v19;
  v66 = v18;
  v23 = v16;
  v17->_sigma = a6;
  v24 = a6 * a6 + -1.0;
  if (v24 < 0.01)
  {
    v24 = 0.01;
  }

  v25 = sqrt(v24);
  v17->sigma_diff = v25;
  v17->contrastThreshold = a7;
  v17->edgeThreshold = a8;
  v17->_accuracyMode = a9;
  v17->imageScale = 255.0;
  v17->nOctaveLayers = a5;
  v17->_num_intervals = a5 + 3;
  v17->width = 0;
  v17->height = 0;
  gradual_guassian_kernel_sigmas = v17->gradual_guassian_kernel_sigmas;
  gradualCoefsWidth = v17->gradualCoefsWidth;
  generateGradualGaussianKernels(v17->_num_intervals, v17->nOctaveLayers, v17->gradual_guassian_kernel_sigmas, v17->gradualCoefsWidth, v17->_sigma);
  direct_guassian_kernel_sigmas = v17->direct_guassian_kernel_sigmas;
  directCoefsWidth = v17->directCoefsWidth;
  generateDirectGaussianKernels(v17->_num_intervals, v17->nOctaveLayers, v17->direct_guassian_kernel_sigmas, v17->directCoefsWidth, v17->_sigma);
  v30 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:v17->super._device];
  MPSscale = v17->MPSscale;
  v17->MPSscale = v30;

  v67 = v23;
  if (v17->_num_intervals >= 1)
  {
    v32 = 0;
    do
    {
      v33 = [(MTLDevice *)v17->super._device newBufferWithLength:4 * gradualCoefsWidth[v32] options:0];
      v34 = v17->gradual_gaussianCoeffs[v32];
      v17->gradual_gaussianCoeffs[v32] = v33;

      getGaussianKernel(gradualCoefsWidth[v32], [(MTLBuffer *)v17->gradual_gaussianCoeffs[v32] contents], *&gradual_guassian_kernel_sigmas[4 * v32]);
      v35 = [v23 newBufferWithLength:4 * directCoefsWidth[v32] options:0];
      v36 = v17->direct_gaussianCoeffs[v32];
      v17->direct_gaussianCoeffs[v32] = v35;

      getGaussianKernel(directCoefsWidth[v32], [(MTLBuffer *)v17->direct_gaussianCoeffs[v32] contents], *&direct_guassian_kernel_sigmas[4 * v32]);
      v37 = objc_alloc(MEMORY[0x277CD7500]);
      device = v17->super._device;
      v39 = gradualCoefsWidth[v32];
      OUTLINED_FUNCTION_3_5([v37 initWithDevice:device kernelWidth:v39 kernelHeight:1 weights:{-[MTLBuffer contents](v17->gradual_gaussianCoeffs[v32], "contents")}], 928);
      v40 = objc_alloc(MEMORY[0x277CD7500]);
      v41 = -[MTLDevice initWithDevice:kernelWidth:kernelHeight:weights:](device, "initWithDevice:kernelWidth:kernelHeight:weights:", v39, v37, 1, [OUTLINED_FUNCTION_8_1() contents]);
      OUTLINED_FUNCTION_3_5(v41, 1056);
      v42 = objc_alloc(MEMORY[0x277CD7500]);
      v43 = v17->super._device;
      v44 = gradualCoefsWidth[v32];
      OUTLINED_FUNCTION_3_5([v42 initWithDevice:v43 kernelWidth:1 kernelHeight:v44 weights:{-[MTLBuffer contents](v17->gradual_gaussianCoeffs[v32], "contents")}], 992);
      v45 = objc_alloc(MEMORY[0x277CD7500]);
      gradual_guassian_kernel_sigmas = v17->gradual_guassian_kernel_sigmas;
      v46 = [OUTLINED_FUNCTION_8_1() contents];
      v47 = v42;
      direct_guassian_kernel_sigmas = v17->direct_guassian_kernel_sigmas;
      v48 = v43;
      v23 = v67;
      OUTLINED_FUNCTION_3_5([v47 initWithDevice:v48 kernelWidth:1 kernelHeight:v44 weights:v46], 1120);
      ++v32;
    }

    while (v32 < v17->_num_intervals);
  }

  v49 = 0;
  v50 = 1;
  do
  {
    v51 = v50;
    v52 = &v17->super.super.isa + 10 * v49;
    v53 = -10;
    do
    {
      v54 = [(MTLDevice *)v17->super._device newBufferWithLength:0x120000u >> (v53 + 10) options:0];
      v55 = v52[38];
      v52[38] = v54;

      v56 = OUTLINED_FUNCTION_6_1();
      v57 = v52[58];
      v52[58] = v56;

      v58 = OUTLINED_FUNCTION_6_1();
      v59 = v52[78];
      v52[78] = v58;

      ++v52;
    }

    while (!__CFADD__(v53++, 1));
    v61 = OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_5(v61, 784);
    v50 = 0;
    v49 = 1;
  }

  while ((v51 & 1) != 0);

  v62 = v17;
  v16 = v67;
LABEL_14:

  return v62;
}

- (BOOL)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"HorizontalFilter"];
  OUTLINED_FUNCTION_6(v3);
  result = 0;
  if (self->_HorFilterGuass)
  {
    v4 = [(VEMetalBase *)self createKernel:@"verticalFilter"];
    OUTLINED_FUNCTION_6(v4);
    if (self->_VerFilterGuass)
    {
      v5 = [(VEMetalBase *)self createKernel:@"subtractKernel"];
      OUTLINED_FUNCTION_6(v5);
      if (self->_SubtractKernel)
      {
        v6 = [(VEMetalBase *)self createKernel:@"isExtermum"];
        OUTLINED_FUNCTION_6(v6);
        if (self->_IsExtermum)
        {
          v7 = [(VEMetalBase *)self createKernel:@"resizeKernel"];
          OUTLINED_FUNCTION_6(v7);
          if (self->_ResizeKernel)
          {
            v8 = [(VEMetalBase *)self createKernel:@"refineExterma"];
            OUTLINED_FUNCTION_6(v8);
            if (self->_refineExterma)
            {
              v9 = [(VEMetalBase *)self createKernel:@"calculateOrientation"];
              OUTLINED_FUNCTION_6(v9);
              if (self->_calculateOrientation)
              {
                v10 = [(VEMetalBase *)self createKernel:@"calcSIFTDescriptor"];
                OUTLINED_FUNCTION_6(v10);
                if (self->_calcSIFTDescriptor)
                {
                  v11 = [(VEMetalBase *)self createKernel:@"mergeSort"];
                  OUTLINED_FUNCTION_6(v11);
                  if (self->_mergeSort)
                  {
                    v12 = [(VEMetalBase *)self createKernel:@"unique"];
                    OUTLINED_FUNCTION_6(v12);
                    if (self->_unique)
                    {
                      v13 = [(VEMetalBase *)self createKernel:@"imageScale"];
                      OUTLINED_FUNCTION_6(v13);
                      if (self->_scaleKernel)
                      {
                        v14 = [(VEMetalBase *)self createKernel:@"subtractKernelOctave"];
                        OUTLINED_FUNCTION_6(v14);
                        if (self->_subtractKernelOctave)
                        {
                          return 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)allocateResourceWidth:(unsigned int)a3 andHeight:(unsigned int)a4 ind:(int)a5
{
  v9 = 2 * a3;
  v10 = 2 * a4;
  v11 = OUTLINED_FUNCTION_9_0();
  self->base_image_buffer[a5] = v11;
  if (!v11)
  {
    return 9;
  }

  OUTLINED_FUNCTION_7_1();
  v15 = createTextureFromCVPixelBuffer(v12, v13, v14);
  v16 = self->base_image[a5];
  self->base_image[a5] = v15;

  if (!self->base_image[a5])
  {
    return 9;
  }

  v17 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a3 height:a4 mipmapped:0];
  [v17 setUsage:3];
  v18 = [(MTLDevice *)self->super._device newTextureWithDescriptor:v17];
  v19 = self->scaled_input_texture[a5];
  self->scaled_input_texture[a5] = v18;

  v20 = OUTLINED_FUNCTION_9_0();
  self->intermedia_base_image_buffer[a5] = v20;
  if (!v20)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_1();
  v24 = createTextureFromCVPixelBuffer(v21, v22, v23);
  v25 = self->intermedia_base_image[a5];
  self->intermedia_base_image[a5] = v24;

  if (!self->intermedia_base_image[a5])
  {
    goto LABEL_23;
  }

  v26 = computeNumberOfOctaves(v9, v10);
  num_octaves = v26 >= 10 ? 10 : v26;
  self->_num_octaves = num_octaves;
  if (!self->scaled_input_texture[a5])
  {
    goto LABEL_23;
  }

  self->threshold = floorf(((self->contrastThreshold * 0.5) / self->nOctaveLayers) * 255.0) / (255.0 / self->imageScale);
  if (v26 >= 1)
  {
    v55 = v17;
    v28 = 0;
    num_intervals = self->_num_intervals;
    while (num_intervals < 1)
    {
LABEL_19:
      v9 >>= 1;
      v10 >>= 1;
      if (++v28 >= num_octaves)
      {
        v53 = 0;
        v17 = v55;
        goto LABEL_24;
      }
    }

    v30 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_2_5();
      *(v31 + 640 * a5 + 8 * v33) = v32;
      if (!v32)
      {
        break;
      }

      OUTLINED_FUNCTION_7_1();
      createTextureFromCVPixelBuffer(v34, v35, v36);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_2_5();
      v38 = v37 + 640 * a5;
      v40 = *(v38 + 8 * v39);
      *(v38 + 8 * v39) = v41;

      if (!*(v38 + 8 * (v30 + self->_num_intervals * v28)))
      {
        break;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_2_5();
      *(v42 + 640 * a5 + 8 * v44) = v43;
      if (!v43)
      {
        break;
      }

      OUTLINED_FUNCTION_7_1();
      createTextureFromCVPixelBuffer(v45, v46, v47);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_2_5();
      v49 = v48 + 640 * a5;
      v51 = *(v49 + 8 * v50);
      *(v49 + 8 * v50) = v52;

      num_intervals = self->_num_intervals;
      if (!*(v49 + 8 * (v30 + v28 * num_intervals)))
      {
        break;
      }

      if (++v30 >= num_intervals)
      {
        num_octaves = self->_num_octaves;
        goto LABEL_19;
      }
    }

    v17 = v55;
LABEL_23:
    v53 = 9;
    goto LABEL_24;
  }

  v53 = 0;
LABEL_24:

  return v53;
}

- (int64_t)detect1:(id)a3 toHdr1:(id)a4 detect2:(id)a5 toHdr2:(id)a6 count1:(int *)a7 count2:(int *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v17;
  v19 = 12;
  if (v14 && v15 && v16 && v17)
  {
    v22 = 0;
    v20 = [(SIFTFeatureExtraction *)self ExtractKeyPointFromInput1:v14 toHdr1:v15 Input2:v16 toHdr2:v17 count1:&v22 + 4 count2:&v22];
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      if (!self->_streamingMode || self->_refreshCalculation)
      {
        HIDWORD(v22) = [(SIFTFeatureExtraction *)self removeDuplicatedSorted:v15 keypointsCount:HIDWORD(v22)];
        *a7 = HIDWORD(v22);
      }

      v19 = 0;
      LODWORD(v22) = [(SIFTFeatureExtraction *)self removeDuplicatedSorted:v18 keypointsCount:v22];
      *a8 = v22;
      self->_refreshCalculation = 0;
    }
  }

  return v19;
}

- (int64_t)ExtractKeyPointFromInput1:(id)a3 toHdr1:(id)a4 Input2:(id)a5 toHdr2:(id)a6 count1:(int *)a7 count2:(int *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v17;
  v19 = 12;
  if (v14 && v15 && v16 && v17)
  {
    v20 = [v14 width];
    v21 = [v14 height];
    if ([OUTLINED_FUNCTION_5_1() isResourceAllocationNeededWidth:? Height:?])
    {
      [OUTLINED_FUNCTION_1_9() freeResourceFromind:?];
      [(SIFTFeatureExtraction *)self freeResourceFromind:1];
      v22 = [OUTLINED_FUNCTION_5_1() allocateResourceWidth:? andHeight:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_5_1() allocateResourceWidth:? andHeight:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }
    }

    [(SIFTFeatureExtraction *)self cleanResources];
    self->width = v20;
    self->height = v21;
    if (self->_refreshCalculation || !self->_streamingMode)
    {
      v22 = [(SIFTFeatureExtraction *)self generateBaseImage:v14 waitForComplete:0 ind:0];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = OUTLINED_FUNCTION_11_0();
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_1_9() generateGaussianImagesWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_0_8() generateGaussianImagesWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_1_9() generateDoGImagesOctaveWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_0_8() generateDoGImagesOctaveWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_1_9() findScaleSpaceExtremaWithWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [(SIFTFeatureExtraction *)self findScaleSpaceExtremaWithWaitForComplete:1 ind:1];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_1_9() adjustLocalExtremasWithThreshold:? waitForComplete:? edgeThreshold:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v23 = 1;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_11_0();
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_0_8() generateGaussianImagesWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [OUTLINED_FUNCTION_0_8() generateDoGImagesOctaveWaitForComplete:? ind:?];
      if (v22)
      {
        goto LABEL_33;
      }

      v22 = [(SIFTFeatureExtraction *)self findScaleSpaceExtremaWithWaitForComplete:1 ind:1];
      if (v22)
      {
        goto LABEL_33;
      }

      v23 = 0;
    }

    v22 = [OUTLINED_FUNCTION_0_8() adjustLocalExtremasWithThreshold:? waitForComplete:? edgeThreshold:? ind:?];
    if (!v22)
    {
      finalCount = self->_finalCount;
      if (v23)
      {
        v22 = [(SIFTFeatureExtraction *)self calculateOrientations:v15 withCounterBuffer:*finalCount waitForComplete:0 ind:0];
        if (!v22)
        {
          v22 = OUTLINED_FUNCTION_10_0(0, v27, v28, self->_finalCount[1]);
          if (!v22)
          {
            *a7 = *[(MTLBuffer *)*finalCount contents];
            v29 = &self->_finalCount[1];
LABEL_31:
            v19 = 0;
            *a8 = *[*v29 contents];
            goto LABEL_32;
          }
        }
      }

      else
      {
        v29 = &self->_finalCount[1];
        v22 = OUTLINED_FUNCTION_10_0(0, v24, v25, self->_finalCount[1]);
        if (!v22)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_33:
    v19 = v22;
  }

LABEL_32:

  return v19;
}

- (int64_t)findScaleSpaceExtremaWithWaitForComplete:(BOOL)a3 ind:(int)a4
{
  HIDWORD(v14) = a3;
  v16 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  num_octaves = self->_num_octaves;
  if (num_octaves < 1)
  {
LABEL_9:
    v10 = v16;
    [v16 commit];
    [(VEMetalBase *)self commandBufferWait:v16 flag:v15];
    v11 = 0;
  }

  else
  {
    v6 = 0;
    num_intervals = self->_num_intervals;
    while (num_intervals < 4)
    {
LABEL_8:
      if (++v6 >= num_octaves)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    while (1)
    {
      HIDWORD(v13) = v6;
      LODWORD(v14) = v8 + 1;
      LODWORD(v13) = 5;
      encodeFindScaleSpaceExtermaToCommandBuffer();
      if (v9)
      {
        break;
      }

      num_intervals = self->_num_intervals;
      if (++v8 + 1 >= num_intervals - 2)
      {
        num_octaves = self->_num_octaves;
        goto LABEL_8;
      }
    }

    v11 = v9;
    v10 = v16;
  }

  return v11;
}

- (int64_t)calculateOrientations:(id)a3 withCounterBuffer:(id)a4 waitForComplete:(BOOL)a5 ind:(int)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 12;
  v31 = v10;
  if (v10 && v11)
  {
    HIDWORD(v27) = v7;
    v14 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v15 = v14;
    v30 = 7036;
    if (self->_num_octaves < 1)
    {
LABEL_13:
      [v15 commit];
      [(VEMetalBase *)self commandBufferWait:v15 flag:HIDWORD(v27)];
      v13 = 0;
    }

    else
    {
      v16 = 0;
      v28 = v14;
      v29 = 5 * a6;
      while (1)
      {
        v17.i32[1] = 0;
        v17.i64[1] = 0;
        v34 = 0u;
        v35 = 0u;
        *location = 0u;
        v33 = 0u;
        LODWORD(num_intervals) = self->_num_intervals;
        if (num_intervals > 0)
        {
          v19 = v12;
          v20 = 0;
          v21 = location;
          do
          {
            objc_storeStrong(v21, *(&self->_gaussPyrImagesTexture[a6][v20++] + v16 * num_intervals));
            num_intervals = self->_num_intervals;
            ++v21;
          }

          while (v20 < num_intervals);
          v12 = v19;
          v15 = v28;
        }

        v17.i32[0] = LODWORD(self->imageScale);
        *(&v25 + 1) = __PAIR64__(num_intervals, v16);
        *&v25 = *(&self->_keyPointsCount[0][2 * v29] + v16);
        EncodeCalculateOrientationsOptimized2(v15, self->_calculateOrientation, 32, location, *(&self->_keyPoints[0][2 * v29] + v16), v31, self->nOctaveLayers, v12, v25, v26, v27, v28, v17, v29, SHIDWORD(v29), v30, v31, location[0], location[1], v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41, v42);
        v13 = v22;
        for (i = 7; i != -1; --i)
        {
        }

        if (v13)
        {
          break;
        }

        if (++v16 >= *(&self->super.super.isa + v30))
        {
          goto LABEL_13;
        }
      }
    }
  }

  return v13;
}

- (int64_t)calculateDescriptorsForKeypoints:(id)a3 keypointsCount:(int)a4 intoHdr:(id)a5 waitForComplete:(BOOL)a6 ind:(int)a7
{
  v7 = 12;
  if (a3 && a5)
  {
    v8 = a6;
    commandQueue = self->super._commandQueue;
    v12 = a5;
    v13 = a3;
    v14 = [(MTLCommandQueue *)commandQueue commandBuffer];
    encodeCalculateDescriptorsToCommandBuffer();
    v7 = v15;

    if (!v7)
    {
      [v14 commit];
      [(VEMetalBase *)self commandBufferWait:v14 flag:v8];
    }
  }

  return v7;
}

@end