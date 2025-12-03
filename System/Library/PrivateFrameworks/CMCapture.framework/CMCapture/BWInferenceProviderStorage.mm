@interface BWInferenceProviderStorage
- (BWInferenceProviderStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingCloneRequirement:(id)requirement;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)clear;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer forRequirement:(id)requirement;
- (void)setPixelBufferPool:(id)pool forRequirement:(id)requirement;
@end

@implementation BWInferenceProviderStorage

- (BWInferenceProviderStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools
{
  v10.receiver = self;
  v10.super_class = BWInferenceProviderStorage;
  v6 = [(BWInferenceProviderStorage *)&v10 init];
  if (v6)
  {
    v6->_requirementsNeedingPixelBuffers = [buffers copy];
    v7 = [buffers count];
    if (v7)
    {
      v6->_pixelBufferByRequirement = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v7];
    }

    v6->_requirementsNeedingPixelBufferPools = [pools copy];
    v8 = [pools count];
    if (v8)
    {
      v6->_pixelBufferPoolByRequirement = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceProviderStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)clear
{
  [(NSMutableDictionary *)self->_pixelBufferByRequirement removeAllObjects];

  self->_inputSampleBufferAttachments = 0;
  self->_mutableInferenceMetadata = 0;
}

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v7 = 0;
  cf = 0;
  v5 = [(BWInferenceProviderStorage *)self pixelBufferForRequirement:requirement];
  if (v5)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(buffer, v5, 0, &cf, &v7);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    [BWInferenceProviderStorage newSampleBufferSatisfyingRequirement:withPropagationSampleBuffer:];
  }

  return v7;
}

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingCloneRequirement:(id)requirement
{
  v8 = 0;
  v7 = 0;
  v3 = -[BWInferenceProviderStorage pixelBufferForRequirement:](self, "pixelBufferForRequirement:", [requirement sourceVideoRequirement]);
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  BWSampleBufferCreateFromPixelBuffer(v3, &v5, &v8, &v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

- (void)setPixelBuffer:(__CVBuffer *)buffer forRequirement:(id)requirement
{
  if (buffer)
  {
    TypeID = CVPixelBufferGetTypeID();
    v8 = CFGetTypeID(buffer);
    if (requirement)
    {
      if (TypeID == v8)
      {
        pixelBufferByRequirement = self->_pixelBufferByRequirement;

        [(NSMutableDictionary *)pixelBufferByRequirement setObject:buffer forKeyedSubscript:requirement];
      }
    }
  }
}

- (void)setPixelBufferPool:(id)pool forRequirement:(id)requirement
{
  if (pool)
  {
    if (requirement)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

@end