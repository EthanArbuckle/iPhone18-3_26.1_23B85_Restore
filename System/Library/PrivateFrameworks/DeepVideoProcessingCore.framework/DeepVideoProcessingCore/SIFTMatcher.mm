@interface SIFTMatcher
- (BOOL)setupMetal;
- (SIFTMatcher)initWithDevice:(id)device commmandQueue:(id)queue;
- (int)findMatchesBetweenDescriptor:(id)descriptor objectCount:(int)count toTargetDescriptor:(id)targetDescriptor targetCount:(int)targetCount matches:(id)matches;
- (int)findMatchesBetweenDescriptorEarlyExist:(id)exist objectCount:(int)count keypt1:(id)keypt1 toTargetDescriptor:(id)descriptor targetCount:(int)targetCount keypt2:(id)keypt2 filteredIndex:(id)index matches:(id)self0;
- (int)sortMatchingPair:(id)pair matchCount:(int)count;
- (int64_t)encodeBestMatchFromFlow:(id)flow im1:(id)im1 im2:(id)im2 matches:(id)matches angle:(_regional_flow_directions *)angle matchCount:(id)count flipFlowValue:(BOOL)value commandBuffer:(id)self0;
- (int64_t)findMatchesFromFlow:(id)flow im1:(id)im1 im2:(id)im2 matches:(id)matches background_angle:(_regional_flow_directions *)background_angle matchCount:(id)count flipFlowValue:(BOOL)value commandBuffer:(id)self0;
- (void)dealloc;
- (void)encodeBestMatchEarlyExist:(id)exist objectCount:(int)count keypt1:(id)keypt1 toTargetDescriptor:(id)descriptor targetCount:(int)targetCount keypt2:(id)keypt2 filteredIndex:(id)index matches:(id)self0 commandBuffer:(id)self1;
- (void)filterClosedKptPairFromKpt1:(id)kpt1 kpt2:(id)kpt2 count1:(int)count1 count2:(int)count2 filteredIndex:(id)index commandBuffer:(id)buffer;
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

- (void)filterClosedKptPairFromKpt1:(id)kpt1 kpt2:(id)kpt2 count1:(int)count1 count2:(int)count2 filteredIndex:(id)index commandBuffer:(id)buffer
{
  count1Copy = count1;
  indexCopy = index;
  kpt2Copy = kpt2;
  kpt1Copy = kpt1;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v17 = computeCommandEncoder;
  if (count2 >= 10000)
  {
    count2Copy = 10000;
  }

  else
  {
    count2Copy = count2;
  }

  v23 = count2Copy;
  [computeCommandEncoder setComputePipelineState:self->_filterClosePairKernel];
  [v17 setBytes:&count1Copy length:4 atIndex:0];
  [v17 setBytes:&v23 length:4 atIndex:1];
  [v17 setBuffer:kpt1Copy offset:0 atIndex:2];

  [v17 setBuffer:kpt2Copy offset:0 atIndex:3];
  [v17 setBuffer:indexCopy offset:0 atIndex:4];

  v21 = (count1Copy + 255) >> 8;
  v22 = vdupq_n_s64(1uLL);
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v17 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v17 endEncoding];
}

- (void)encodeBestMatchEarlyExist:(id)exist objectCount:(int)count keypt1:(id)keypt1 toTargetDescriptor:(id)descriptor targetCount:(int)targetCount keypt2:(id)keypt2 filteredIndex:(id)index matches:(id)self0 commandBuffer:(id)self1
{
  countCopy = count;
  matchesCopy = matches;
  indexCopy = index;
  descriptorCopy = descriptor;
  existCopy = exist;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v20 = computeCommandEncoder;
  if (targetCount >= 10000)
  {
    targetCountCopy = 10000;
  }

  else
  {
    targetCountCopy = targetCount;
  }

  v26 = targetCountCopy;
  [computeCommandEncoder setComputePipelineState:self->_findBestMatchEarlyExist];
  [v20 setBuffer:existCopy offset:0 atIndex:0];

  [v20 setBuffer:descriptorCopy offset:0 atIndex:1];
  [v20 setBuffer:matchesCopy offset:0 atIndex:2];

  [v20 setBuffer:self->matchCount offset:0 atIndex:3];
  [v20 setBytes:&countCopy length:4 atIndex:4];
  [v20 setBytes:&v26 length:4 atIndex:5];
  [v20 setBytes:&self->ratio length:4 atIndex:6];
  [v20 setBuffer:indexCopy offset:0 atIndex:7];

  v24 = (countCopy + 31) >> 5;
  v25 = vdupq_n_s64(1uLL);
  v22 = 32;
  v23 = xmmword_2487C3978;
  [v20 dispatchThreadgroups:&v24 threadsPerThreadgroup:&v22];
  [v20 endEncoding];
}

- (int)findMatchesBetweenDescriptorEarlyExist:(id)exist objectCount:(int)count keypt1:(id)keypt1 toTargetDescriptor:(id)descriptor targetCount:(int)targetCount keypt2:(id)keypt2 filteredIndex:(id)index matches:(id)self0
{
  v13 = *&count;
  selfCopy = self;
  matchCount = self->matchCount;
  matchesCopy = matches;
  indexCopy = index;
  keypt2Copy = keypt2;
  descriptorCopy = descriptor;
  keypt1Copy = keypt1;
  existCopy = exist;
  *[(MTLBuffer *)matchCount contents]= 0;
  commandBuffer = [(MTLCommandQueue *)selfCopy->super._commandQueue commandBuffer];
  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  [blitCommandEncoder fillBuffer:indexCopy range:0 value:{objc_msgSend(indexCopy, "length"), 0}];
  [blitCommandEncoder endEncoding];
  [(SIFTMatcher *)selfCopy filterClosedKptPairFromKpt1:keypt1Copy kpt2:keypt2Copy count1:v13 count2:targetCount filteredIndex:indexCopy commandBuffer:commandBuffer];
  [(SIFTMatcher *)selfCopy encodeBestMatchEarlyExist:existCopy objectCount:v13 keypt1:keypt1Copy toTargetDescriptor:descriptorCopy targetCount:targetCount keypt2:keypt2Copy filteredIndex:indexCopy matches:matchesCopy commandBuffer:commandBuffer];

  [commandBuffer commit];
  [(VEMetalBase *)selfCopy commandBufferWait:commandBuffer flag:1];
  LODWORD(selfCopy) = [(SIFTMatcher *)selfCopy sortMatchingPair:matchesCopy matchCount:*[(MTLBuffer *)selfCopy->matchCount contents]];

  return selfCopy;
}

- (int64_t)findMatchesFromFlow:(id)flow im1:(id)im1 im2:(id)im2 matches:(id)matches background_angle:(_regional_flow_directions *)background_angle matchCount:(id)count flipFlowValue:(BOOL)value commandBuffer:(id)self0
{
  countCopy = count;
  bufferCopy = buffer;
  countCopy2 = count;
  matchesCopy = matches;
  im2Copy = im2;
  im1Copy = im1;
  flowCopy = flow;
  *[countCopy2 contents] = 0;
  v27 = *background_angle;
  LOBYTE(v26) = value;
  v24 = [(SIFTMatcher *)self encodeBestMatchFromFlow:flowCopy im1:im1Copy im2:im2Copy matches:matchesCopy angle:&v27 matchCount:countCopy2 flipFlowValue:v26 commandBuffer:bufferCopy];

  return v24;
}

- (int)sortMatchingPair:(id)pair matchCount:(int)count
{
  contents = [pair contents];
  qsort(contents, count, 0xCuLL, comp_match);
  if (count < 2)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  countCopy = count;
  v8 = (contents + 12);
  v9 = countCopy - 1;
  do
  {
    if (comp_match(&contents[12 * v6], v8))
    {
      v6 = v6 + 1;
      v10 = *v8;
      v11 = &contents[12 * v6];
      *(v11 + 2) = *(v8 + 8);
      *v11 = v10;
    }

    v8 += 12;
    --v9;
  }

  while (v9);
  return v6 + 1;
}

- (int)findMatchesBetweenDescriptor:(id)descriptor objectCount:(int)count toTargetDescriptor:(id)targetDescriptor targetCount:(int)targetCount matches:(id)matches
{
  countCopy = count;
  matchCount = self->matchCount;
  matchesCopy = matches;
  targetDescriptorCopy = targetDescriptor;
  descriptorCopy = descriptor;
  *[(MTLBuffer *)matchCount contents]= 0;
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v17 = computeCommandEncoder;
  if (targetCount >= 10000)
  {
    targetCountCopy = 10000;
  }

  else
  {
    targetCountCopy = targetCount;
  }

  v25 = targetCountCopy;
  [computeCommandEncoder setComputePipelineState:self->_findBestMatch];
  [v17 setBuffer:descriptorCopy offset:0 atIndex:0];

  [v17 setBuffer:targetDescriptorCopy offset:0 atIndex:1];
  [v17 setBuffer:matchesCopy offset:0 atIndex:2];

  [v17 setBuffer:self->matchCount offset:0 atIndex:3];
  [v17 setBytes:&countCopy length:4 atIndex:4];
  [v17 setBytes:&v25 length:4 atIndex:5];
  [v17 setBytes:&self->ratio length:4 atIndex:6];
  v23 = (countCopy + 31) >> 5;
  v24 = vdupq_n_s64(1uLL);
  v21 = 32;
  v22 = xmmword_2487C3978;
  [v17 dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [v17 endEncoding];
  [commandBuffer commit];
  [(VEMetalBase *)self commandBufferWait:commandBuffer flag:1];
  v19 = *[(MTLBuffer *)self->matchCount contents];

  return v19;
}

- (SIFTMatcher)initWithDevice:(id)device commmandQueue:(id)queue
{
  v14.receiver = self;
  v14.super_class = SIFTMatcher;
  v4 = [(VEMetalBase *)&v14 initWithDevice:device commmandQueue:queue];
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

- (int64_t)encodeBestMatchFromFlow:(id)flow im1:(id)im1 im2:(id)im2 matches:(id)matches angle:(_regional_flow_directions *)angle matchCount:(id)count flipFlowValue:(BOOL)value commandBuffer:(id)self0
{
  flowCopy = flow;
  im1Copy = im1;
  im2Copy = im2;
  matchesCopy = matches;
  countCopy = count;
  v21 = countCopy;
  v22 = 9;
  if (im1Copy && im2Copy && matchesCopy && countCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    v24 = computeCommandEncoder;
    if (computeCommandEncoder)
    {
      [computeCommandEncoder setComputePipelineState:self->_flow_find_match_kernel];
      valueCopy = value;
      width = [im1Copy width];
      v30 = width / [flowCopy width];
      [v24 setBuffer:matchesCopy offset:0 atIndex:0];
      [v24 setBuffer:v21 offset:0 atIndex:1];
      [v24 setBytes:angle length:20 atIndex:2];
      [v24 setBytes:&valueCopy length:4 atIndex:3];
      [v24 setBytes:&v30 length:4 atIndex:4];
      [v24 setTexture:flowCopy atIndex:0];
      [v24 setTexture:im1Copy atIndex:1];
      [v24 setTexture:im2Copy atIndex:2];
      v29[0] = ([flowCopy width] + 15) >> 4;
      v29[1] = ([flowCopy height] + 15) >> 4;
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