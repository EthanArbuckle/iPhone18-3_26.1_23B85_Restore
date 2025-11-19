@interface MetalRANSACDispatcher
- (CGSize)frameSize;
- (MetalRANSACDispatcher)initWithMaxCorrespondences:(unint64_t)a3;
- (void)assureSizeAndCopyToMetalBuffer:(id *)a3 fromData:(const void *)a4 dataSize:(unint64_t)a5 metalResourceOptions:(unint64_t)a6;
- (void)performRansacOnData:(unsigned int)a3 firstPointSet:(const float *)a4 secondPointSet:(const float *)a5 pointWeights:(const float *)a6 homographies:(const ransac_homography_record *)a7 numHomographies:(unsigned int)a8 homScores:(float *)a9;
@end

@implementation MetalRANSACDispatcher

- (MetalRANSACDispatcher)initWithMaxCorrespondences:(unint64_t)a3
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

  v21 = [(MTLComputePipelineState *)v20 maxTotalThreadsPerThreadgroup];
  v4->inlierLimit = 0.0;
  v22 = 32;
  if (v21 < 0x20)
  {
    v22 = v21;
  }

  v4->frameSize.width = 0.0;
  v4->frameSize.height = 0.0;
  v4->_m_numThreadsPerGroup = v22;
  v4->_m_maxCorrespondences = a3;
LABEL_12:

  return v4;
}

- (void)performRansacOnData:(unsigned int)a3 firstPointSet:(const float *)a4 secondPointSet:(const float *)a5 pointWeights:(const float *)a6 homographies:(const ransac_homography_record *)a7 numHomographies:(unsigned int)a8 homScores:(float *)a9
{
  v27 = a8;
  v28 = a3;
  inlierLimit = self->inlierLimit;
  v25 = vcvt_f32_f64(self->frameSize);
  v15 = 8 * a3;
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_mX fromData:a4 dataSize:v15 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_mXhat fromData:a5 dataSize:v15 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_ScoreBuffer fromData:a6 dataSize:4 * a3 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_RansacParams fromData:&v25 dataSize:20 metalResourceOptions:0];
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_RansacHomographies fromData:a7 dataSize:36 * a8 metalResourceOptions:0];
  v16 = 4 * a8;
  [(MetalRANSACDispatcher *)self assureSizeAndCopyToMetalBuffer:&self->_m_ModelScores fromData:0 dataSize:v16 metalResourceOptions:0];
  m_numThreadsPerGroup = self->_m_numThreadsPerGroup;
  v18 = (m_numThreadsPerGroup + a8 - 1) / m_numThreadsPerGroup;
  v19 = [(MTLCommandQueue *)self->m_metalCommandQueue commandBuffer];
  v20 = [v19 computeCommandEncoder];
  [v20 setComputePipelineState:self->m_metalPipeline];
  [v20 setBuffer:self->_m_RansacParams offset:0 atIndex:0];
  [v20 setBuffer:self->_m_mX offset:0 atIndex:1];
  [v20 setBuffer:self->_m_mXhat offset:0 atIndex:2];
  [v20 setBuffer:self->_m_ScoreBuffer offset:0 atIndex:3];
  [v20 setBuffer:self->_m_RansacHomographies offset:0 atIndex:4];
  [v20 setBuffer:self->_m_ModelScores offset:0 atIndex:5];
  v23 = v18;
  v24 = vdupq_n_s64(1uLL);
  v21 = m_numThreadsPerGroup;
  v22 = v24;
  [v20 dispatchThreadgroups:&v23 threadsPerThreadgroup:&v21];
  [v20 endEncoding];
  [v19 commit];
  [v19 waitUntilCompleted];
  memcpy(a9, [(MTLBuffer *)self->_m_ModelScores contents], v16);
}

- (void)assureSizeAndCopyToMetalBuffer:(id *)a3 fromData:(const void *)a4 dataSize:(unint64_t)a5 metalResourceOptions:(unint64_t)a6
{
  if (!*a3)
  {
    goto LABEL_9;
  }

  if ([*a3 length] < a5)
  {
    v11 = *a3;
    *a3 = 0;
  }

  if (*a3)
  {
    if (a4)
    {
      v12 = [*a3 contents];

      memcpy(v12, a4, a5);
    }
  }

  else
  {
LABEL_9:
    m_metalDevice = self->m_metalDevice;
    if (a4)
    {
      v14 = [(MTLDevice *)m_metalDevice newBufferWithBytes:a4 length:a5 options:a6];
    }

    else
    {
      v14 = [(MTLDevice *)m_metalDevice newBufferWithLength:a5 options:a6];
    }

    *a3 = v14;

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