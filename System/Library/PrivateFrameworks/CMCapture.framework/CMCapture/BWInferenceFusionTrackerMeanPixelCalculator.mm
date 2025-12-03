@interface BWInferenceFusionTrackerMeanPixelCalculator
- (BWInferenceFusionTrackerMeanPixelCalculator)initWithCommandQueue:(id)queue;
- (void)asyncMeanPixelForBuffer:(__CVBuffer *)buffer completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation BWInferenceFusionTrackerMeanPixelCalculator

- (BWInferenceFusionTrackerMeanPixelCalculator)initWithCommandQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = BWInferenceFusionTrackerMeanPixelCalculator;
  v4 = [(BWInferenceFusionTrackerMeanPixelCalculator *)&v7 init];
  if (v4)
  {
    v4->_commandQueue = queue;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__19;
    v5 = getMPSImageStatisticsMeanClass_softClass;
    v13 = __Block_byref_object_dispose__19;
    v14 = getMPSImageStatisticsMeanClass_softClass;
    if (!getMPSImageStatisticsMeanClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getMPSImageStatisticsMeanClass_block_invoke;
      v8[3] = &unk_1E798FC38;
      v8[4] = &v9;
      __getMPSImageStatisticsMeanClass_block_invoke(v8);
      v5 = v10[5];
    }

    _Block_object_dispose(&v9, 8);
    v4->_meanFilter = [[v5 alloc] initWithDevice:{-[MTLCommandQueue device](v4->_commandQueue, "device")}];
    v4->_meanTexture = [-[MTLCommandQueue device](v4->_commandQueue "device")];
  }

  return v4;
}

- (void)asyncMeanPixelForBuffer:(__CVBuffer *)buffer completionHandler:(id)handler
{
  v7 = MEMORY[0x1E69741C0];
  Width = CVPixelBufferGetWidth(buffer);
  v9 = [v7 texture2DDescriptorWithPixelFormat:80 width:Width height:CVPixelBufferGetHeight(buffer) mipmapped:0];
  [v9 setUsage:1];
  v10 = [-[MTLCommandQueue device](self->_commandQueue "device")];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [(MPSImageStatisticsMean *)self->_meanFilter encodeToCommandBuffer:commandBuffer sourceTexture:v10 destinationTexture:self->_meanTexture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__BWInferenceFusionTrackerMeanPixelCalculator_asyncMeanPixelForBuffer_completionHandler___block_invoke;
  v12[3] = &unk_1E7991E70;
  v12[4] = self;
  v12[5] = handler;
  [commandBuffer addCompletedHandler:v12];
  [commandBuffer commit];
}

uint64_t __89__BWInferenceFusionTrackerMeanPixelCalculator_asyncMeanPixelForBuffer_completionHandler___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = *(*(a1 + 32) + 24);
  memset(v4, 0, sizeof(v4));
  v5 = vdupq_n_s64(1uLL);
  v6 = 1;
  [v2 getBytes:&v7 bytesPerRow:4 fromRegion:v4 mipmapLevel:0];
  return (*(*(a1 + 40) + 16))();
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceFusionTrackerMeanPixelCalculator;
  [(BWInferenceFusionTrackerMeanPixelCalculator *)&v3 dealloc];
}

@end