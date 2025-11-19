@interface BWInferenceProviderStorage
- (BWInferenceProviderStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingCloneRequirement:(id)a3;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)a3 withPropagationSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)clear;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3 forRequirement:(id)a4;
- (void)setPixelBufferPool:(id)a3 forRequirement:(id)a4;
@end

@implementation BWInferenceProviderStorage

- (BWInferenceProviderStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4
{
  v10.receiver = self;
  v10.super_class = BWInferenceProviderStorage;
  v6 = [(BWInferenceProviderStorage *)&v10 init];
  if (v6)
  {
    v6->_requirementsNeedingPixelBuffers = [a3 copy];
    v7 = [a3 count];
    if (v7)
    {
      v6->_pixelBufferByRequirement = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v7];
    }

    v6->_requirementsNeedingPixelBufferPools = [a4 copy];
    v8 = [a4 count];
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

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)a3 withPropagationSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v7 = 0;
  cf = 0;
  v5 = [(BWInferenceProviderStorage *)self pixelBufferForRequirement:a3];
  if (v5)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(a4, v5, 0, &cf, &v7);
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

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingCloneRequirement:(id)a3
{
  v8 = 0;
  v7 = 0;
  v3 = -[BWInferenceProviderStorage pixelBufferForRequirement:](self, "pixelBufferForRequirement:", [a3 sourceVideoRequirement]);
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  BWSampleBufferCreateFromPixelBuffer(v3, &v5, &v8, &v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

- (void)setPixelBuffer:(__CVBuffer *)a3 forRequirement:(id)a4
{
  if (a3)
  {
    TypeID = CVPixelBufferGetTypeID();
    v8 = CFGetTypeID(a3);
    if (a4)
    {
      if (TypeID == v8)
      {
        pixelBufferByRequirement = self->_pixelBufferByRequirement;

        [(NSMutableDictionary *)pixelBufferByRequirement setObject:a3 forKeyedSubscript:a4];
      }
    }
  }
}

- (void)setPixelBufferPool:(id)a3 forRequirement:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

@end