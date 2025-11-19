@interface SIFTMatcher
- (BOOL)setupMetal;
- (SIFTMatcher)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (int)findMatchesBetweenDescriptor:(id)a3 objectCount:(int)a4 toTargetDescriptor:(id)a5 targetCount:(int)a6 matches:(id)a7;
- (int)findMatchesBetweenDescriptorEarlyExist:(id)a3 objectCount:(int)a4 keypt1:(id)a5 toTargetDescriptor:(id)a6 targetCount:(int)a7 keypt2:(id)a8 filteredIndex:(id)a9 matches:(id)a10;
- (int)sortMatchingPair:(id)a3 matchCount:(int)a4;
- (int64_t)encodeBestMatchFromFlow:(id)a3 im1:(id)a4 im2:(id)a5 matches:(id)a6 angle:(_regional_flow_directions *)a7 matchCount:(id)a8 flipFlowValue:(BOOL)a9 commandBuffer:(id)a10;
- (int64_t)findMatchesFromFlow:(id)a3 im1:(id)a4 im2:(id)a5 matches:(id)a6 background_angle:(_regional_flow_directions *)a7 matchCount:(id)a8 flipFlowValue:(BOOL)a9 commandBuffer:(id)a10;
- (void)dealloc;
- (void)encodeBestMatchEarlyExist:(id)a3 objectCount:(int)a4 keypt1:(id)a5 toTargetDescriptor:(id)a6 targetCount:(int)a7 keypt2:(id)a8 filteredIndex:(id)a9 matches:(id)a10 commandBuffer:(id)a11;
- (void)filterClosedKptPairFromKpt1:(id)a3 kpt2:(id)a4 count1:(int)a5 count2:(int)a6 filteredIndex:(id)a7 commandBuffer:(id)a8;
@end

@implementation SIFTMatcher

- (void)dealloc
{
  matchCount = self->matchCount;
  self->matchCount = 0;

  v4.receiver = self;
  v4.super_class = SIFTMatcher;
  [(SIFTMatcher *)&v4 dealloc];
}

- (void)filterClosedKptPairFromKpt1:(id)a3 kpt2:(id)a4 count1:(int)a5 count2:(int)a6 filteredIndex:(id)a7 commandBuffer:(id)a8
{
  v24 = a5;
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = [a8 computeCommandEncoder];
  v17 = v16;
  if (a6 >= 10000)
  {
    v18 = 10000;
  }

  else
  {
    v18 = a6;
  }

  v23 = v18;
  [v16 setComputePipelineState:self->_filterClosePairKernel];
  [v17 setBytes:&v24 length:4 atIndex:0];
  [v17 setBytes:&v23 length:4 atIndex:1];
  [v17 setBuffer:v15 offset:0 atIndex:2];

  [v17 setBuffer:v14 offset:0 atIndex:3];
  [v17 setBuffer:v13 offset:0 atIndex:4];

  v21 = (v24 + 255) >> 8;
  v22 = vdupq_n_s64(1uLL);
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v17 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v17 endEncoding];
}

- (void)encodeBestMatchEarlyExist:(id)a3 objectCount:(int)a4 keypt1:(id)a5 toTargetDescriptor:(id)a6 targetCount:(int)a7 keypt2:(id)a8 filteredIndex:(id)a9 matches:(id)a10 commandBuffer:(id)a11
{
  v27 = a4;
  v15 = a10;
  v16 = a9;
  v17 = a6;
  v18 = a3;
  v19 = [a11 computeCommandEncoder];
  v20 = v19;
  if (a7 >= 10000)
  {
    v21 = 10000;
  }

  else
  {
    v21 = a7;
  }

  v26 = v21;
  [v19 setComputePipelineState:self->_findBestMatchEarlyExist];
  [v20 setBuffer:v18 offset:0 atIndex:0];

  [v20 setBuffer:v17 offset:0 atIndex:1];
  [v20 setBuffer:v15 offset:0 atIndex:2];

  [v20 setBuffer:self->matchCount offset:0 atIndex:3];
  [v20 setBytes:&v27 length:4 atIndex:4];
  [v20 setBytes:&v26 length:4 atIndex:5];
  [v20 setBytes:&self->ratio length:4 atIndex:6];
  [v20 setBuffer:v16 offset:0 atIndex:7];

  v24 = (v27 + 31) >> 5;
  v25 = vdupq_n_s64(1uLL);
  v22 = 32;
  v23 = xmmword_2487C3978;
  [v20 dispatchThreadgroups:&v24 threadsPerThreadgroup:&v22];
  [v20 endEncoding];
}

- (int)findMatchesBetweenDescriptorEarlyExist:(id)a3 objectCount:(int)a4 keypt1:(id)a5 toTargetDescriptor:(id)a6 targetCount:(int)a7 keypt2:(id)a8 filteredIndex:(id)a9 matches:(id)a10
{
  v13 = *&a4;
  v15 = self;
  matchCount = self->matchCount;
  v25 = a10;
  v17 = a9;
  v18 = a8;
  v24 = a6;
  v19 = a5;
  v20 = a3;
  *[(MTLBuffer *)matchCount contents]= 0;
  v21 = [(MTLCommandQueue *)v15->super._commandQueue commandBuffer];
  v22 = [v21 blitCommandEncoder];
  [v22 fillBuffer:v17 range:0 value:{objc_msgSend(v17, "length"), 0}];
  [v22 endEncoding];
  [(SIFTMatcher *)v15 filterClosedKptPairFromKpt1:v19 kpt2:v18 count1:v13 count2:a7 filteredIndex:v17 commandBuffer:v21];
  [(SIFTMatcher *)v15 encodeBestMatchEarlyExist:v20 objectCount:v13 keypt1:v19 toTargetDescriptor:v24 targetCount:a7 keypt2:v18 filteredIndex:v17 matches:v25 commandBuffer:v21];

  [v21 commit];
  [(VEMetalBase *)v15 commandBufferWait:v21 flag:1];
  LODWORD(v15) = [(SIFTMatcher *)v15 sortMatchingPair:v25 matchCount:*[(MTLBuffer *)v15->matchCount contents]];

  return v15;
}

- (int64_t)findMatchesFromFlow:(id)a3 im1:(id)a4 im2:(id)a5 matches:(id)a6 background_angle:(_regional_flow_directions *)a7 matchCount:(id)a8 flipFlowValue:(BOOL)a9 commandBuffer:(id)a10
{
  v17 = a8;
  v18 = a10;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  *[v19 contents] = 0;
  v27 = *a7;
  LOBYTE(v26) = a9;
  v24 = [(SIFTMatcher *)self encodeBestMatchFromFlow:v23 im1:v22 im2:v21 matches:v20 angle:&v27 matchCount:v19 flipFlowValue:v26 commandBuffer:v18];

  return v24;
}

- (int)sortMatchingPair:(id)a3 matchCount:(int)a4
{
  v5 = [a3 contents];
  qsort(v5, a4, 0xCuLL, comp_match);
  if (a4 < 2)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = a4;
  v8 = (v5 + 12);
  v9 = v7 - 1;
  do
  {
    if (comp_match(&v5[12 * v6], v8))
    {
      v6 = v6 + 1;
      v10 = *v8;
      v11 = &v5[12 * v6];
      *(v11 + 2) = *(v8 + 8);
      *v11 = v10;
    }

    v8 += 12;
    --v9;
  }

  while (v9);
  return v6 + 1;
}

- (int)findMatchesBetweenDescriptor:(id)a3 objectCount:(int)a4 toTargetDescriptor:(id)a5 targetCount:(int)a6 matches:(id)a7
{
  v26 = a4;
  matchCount = self->matchCount;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  *[(MTLBuffer *)matchCount contents]= 0;
  v15 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v16 = [v15 computeCommandEncoder];
  v17 = v16;
  if (a6 >= 10000)
  {
    v18 = 10000;
  }

  else
  {
    v18 = a6;
  }

  v25 = v18;
  [v16 setComputePipelineState:self->_findBestMatch];
  [v17 setBuffer:v14 offset:0 atIndex:0];

  [v17 setBuffer:v13 offset:0 atIndex:1];
  [v17 setBuffer:v12 offset:0 atIndex:2];

  [v17 setBuffer:self->matchCount offset:0 atIndex:3];
  [v17 setBytes:&v26 length:4 atIndex:4];
  [v17 setBytes:&v25 length:4 atIndex:5];
  [v17 setBytes:&self->ratio length:4 atIndex:6];
  v23 = (v26 + 31) >> 5;
  v24 = vdupq_n_s64(1uLL);
  v21 = 32;
  v22 = xmmword_2487C3978;
  [v17 dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [v17 endEncoding];
  [v15 commit];
  [(VEMetalBase *)self commandBufferWait:v15 flag:1];
  v19 = *[(MTLBuffer *)self->matchCount contents];

  return v19;
}

- (SIFTMatcher)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v14.receiver = self;
  v14.super_class = SIFTMatcher;
  v4 = [(VEMetalBase *)&v14 initWithDevice:a3 commmandQueue:a4];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v8 = [(MTLDevice *)v4->super._device newLibraryWithURL:v7 error:0];
  mtlLibrary = v4->super._mtlLibrary;
  v4->super._mtlLibrary = v8;

  if (![(SIFTMatcher *)v4 setupMetal])
  {

LABEL_6:
    v12 = 0;
    goto LABEL_4;
  }

  v10 = [(MTLDevice *)v4->super._device newBufferWithLength:4 options:0];
  matchCount = v4->matchCount;
  v4->matchCount = v10;

  v4->ratio = 0.75;
  v12 = v4;
LABEL_4:

  return v12;
}

- (BOOL)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"findBestMatch"];
  OUTLINED_FUNCTION_6(v3);
  if (!self->_findBestMatch)
  {
    return 0;
  }

  v4 = [(VEMetalBase *)self createKernel:@"findBestMatchOptimized"];
  OUTLINED_FUNCTION_6(v4);
  if (!self->_findBestMatchOptimized)
  {
    return 0;
  }

  v5 = [(VEMetalBase *)self createKernel:@"findBestMatchEarlyExist"];
  OUTLINED_FUNCTION_6(v5);
  if (!self->_findBestMatchEarlyExist)
  {
    return 0;
  }

  v6 = [(VEMetalBase *)self createKernel:@"filter_closed_desc"];
  OUTLINED_FUNCTION_6(v6);
  if (!self->_filterClosePairKernel)
  {
    return 0;
  }

  v7 = [(VEMetalBase *)self createKernel:@"flow_find_match"];
  flow_find_match_kernel = self->_flow_find_match_kernel;
  self->_flow_find_match_kernel = v7;

  return 1;
}

- (int64_t)encodeBestMatchFromFlow:(id)a3 im1:(id)a4 im2:(id)a5 matches:(id)a6 angle:(_regional_flow_directions *)a7 matchCount:(id)a8 flipFlowValue:(BOOL)a9 commandBuffer:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = v20;
  v22 = 9;
  if (v17 && v18 && v19 && v20)
  {
    v23 = [a10 computeCommandEncoder];
    v24 = v23;
    if (v23)
    {
      [v23 setComputePipelineState:self->_flow_find_match_kernel];
      v31 = a9;
      v25 = [v17 width];
      v30 = v25 / [v16 width];
      [v24 setBuffer:v19 offset:0 atIndex:0];
      [v24 setBuffer:v21 offset:0 atIndex:1];
      [v24 setBytes:a7 length:20 atIndex:2];
      [v24 setBytes:&v31 length:4 atIndex:3];
      [v24 setBytes:&v30 length:4 atIndex:4];
      [v24 setTexture:v16 atIndex:0];
      [v24 setTexture:v17 atIndex:1];
      [v24 setTexture:v18 atIndex:2];
      v29[0] = ([v16 width] + 15) >> 4;
      v29[1] = ([v16 height] + 15) >> 4;
      v29[2] = 1;
      v27 = vdupq_n_s64(0x10uLL);
      v28 = 1;
      [v24 dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
      [v24 endEncoding];
      v22 = 0;
    }

    else
    {
      v22 = 9;
    }
  }

  return v22;
}

@end