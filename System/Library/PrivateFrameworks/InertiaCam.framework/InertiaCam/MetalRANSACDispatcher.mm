@interface MetalRANSACDispatcher
- (CGSize)frameSize;
- (MetalRANSACDispatcher)initWithMaxCorrespondences:(unint64_t)correspondences;
- (void)assureSizeAndCopyToMetalBuffer:(id *)buffer fromData:(const void *)data dataSize:(unint64_t)size metalResourceOptions:(unint64_t)options;
- (void)performRansacOnData:(unsigned int)data firstPointSet:(const float *)set secondPointSet:(const float *)pointSet pointWeights:(const float *)weights homographies:(const ransac_homography_record *)homographies numHomographies:(unsigned int)numHomographies homScores:(float *)scores;
@end

@implementation MetalRANSACDispatcher

- (MetalRANSACDispatcher)initWithMaxCorrespondences:(unint64_t)correspondences
{
  v25.receiver = self;
  v25.super_class = MetalRANSACDispatcher;
  v4 = [(MetalRANSACDispatcher *)&v25 init];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = MTLCreateSystemDefaultDevice();
  m_metalDevice = v4->m_metalDevice;
  v4->m_metalDevice = v5;

  v7 = v4->m_metalDevice;
  if (!v7)
  {
LABEL_11:

    v4 = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:@"InertiaCamMetalLib" ofType:@"metallib"];
  v10 = [(MTLDevice *)v7 newLibraryWithFile:v9 error:0];
  m_metalLibrary = v4->m_metalLibrary;
  v4->m_metalLibrary = v10;

  if (!v4->m_metalLibrary || (v12 = [(MTLDevice *)v4->m_metalDevice newCommandQueue], m_metalCommandQueue = v4->m_metalCommandQueue, v4->m_metalCommandQueue = v12, m_metalCommandQueue, !v4->m_metalCommandQueue) || (v14 = [(MTLLibrary *)v4->m_metalLibrary newFunctionWithName:@"metal_ransac_kernel"], m_metalKernelFunction = v4->m_metalKernelFunction, v4->m_metalKernelFunction = v14, m_metalKernelFunction, (v16 = v4->m_metalKernelFunction) == 0))
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v17 = v4->m_metalDevice;
  v24 = 0;
  v18 = [(MTLDevice *)v17 newComputePipelineStateWithFunction:v16 error:&v24];
  v7 = v24;
  m_metalPipeline = v4->m_metalPipeline;
  v4->m_metalPipeline = v18;

  v20 = v4->m_metalPipeline;
  if (!v20)
  {
    goto LABEL_11;
  }

  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v20 maxTotalThreadsPerThreadgroup];
  v4->inlierLimit = 0.0;
  v22 = 32;
  if (maxTotalThreadsPerThreadgroup < 0x20)
  {
    v22 = maxTotalThreadsPerThreadgroup;
  }

  v4->frameSize.width = 0.0;
  v4->frameSize.height = 0.0;
  v4->_m_numThreadsPerGroup = v22;
  v4->_m_maxCorrespondences = correspondences;
LABEL_12:

  return v4;
}

- (void)performRansacOnData:(unsigned int)data firstPointSet:(const float *)set secondPointSet:(const float *)pointSet pointWeights:(const float *)weights homographies:(const ransac_homography_record *)homographies numHomographies:(unsigned int)numHomographies homScores:(float *)scores
{
  numHomographiesCopy = numHomographies;
  dataCopy = data;
  inlierLimit = self->inlierLimit;
  v25 = vcvt_f32_f64(self->frameSize);
  v15 = 8 * data;
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_mX fromData:set dataSize:v15 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_mXhat fromData:pointSet dataSize:v15 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_ScoreBuffer fromData:weights dataSize:4 * data metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_RansacParams fromData:&v25 dataSize:20 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_RansacHomographies fromData:homographies dataSize:36 * numHomographies metalResourceOptions:0];
  v16 = 4 * numHomographies;
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_ModelScores fromData:0 dataSize:v16 metalResourceOptions:0];
  m_numThreadsPerGroup = self->_m_numThreadsPerGroup;
  v18 = (m_numThreadsPerGroup + numHomographies - 1) / m_numThreadsPerGroup;
  commandBuffer = [(MTLCommandQueue *)self->m_metalCommandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->m_metalPipeline];
  [computeCommandEncoder setBuffer:self->_m_RansacParams offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_m_mX offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_m_mXhat offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_m_ScoreBuffer offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:self->_m_RansacHomographies offset:0 atIndex:4];
  [computeCommandEncoder setBuffer:self->_m_ModelScores offset:0 atIndex:5];
  v23 = v18;
  v24 = vdupq_n_s64(1uLL);
  v21 = m_numThreadsPerGroup;
  v22 = v24;
  [computeCommandEncoder dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  memcpy(scores, [(MTLBuffer *)self->_m_ModelScores contents], v16);
}

- (void)assureSizeAndCopyToMetalBuffer:(id *)buffer fromData:(const void *)data dataSize:(unint64_t)size metalResourceOptions:(unint64_t)options
{
  if (!*buffer)
  {
    goto LABEL_9;
  }

  if ([*buffer length] < size)
  {
    v11 = *buffer;
    *buffer = 0;
  }

  if (*buffer)
  {
    if (data)
    {
      contents = [*buffer contents];

      memcpy(contents, data, size);
    }
  }

  else
  {
LABEL_9:
    m_metalDevice = self->m_metalDevice;
    if (data)
    {
      v14 = [(MTLDevice *)m_metalDevice newBufferWithBytes:data length:size options:options];
    }

    else
    {
      v14 = [(MTLDevice *)m_metalDevice newBufferWithLength:size options:options];
    }

    *buffer = v14;

    MEMORY[0x2821F96F8]();
  }
}

- (CGSize)frameSize
{
  width = self->frameSize.width;
  height = self->frameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end