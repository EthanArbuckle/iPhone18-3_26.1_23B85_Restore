@interface BWInferenceSimpleStorage
- (BWInferenceSimpleStorage)initWithRequirementsNeedingPools:(id)pools;
- (void)clear;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer forRequirement:(id)requirement;
- (void)setPixelBufferPool:(id)pool forRequirement:(id)requirement;
@end

@implementation BWInferenceSimpleStorage

- (BWInferenceSimpleStorage)initWithRequirementsNeedingPools:(id)pools
{
  v6.receiver = self;
  v6.super_class = BWInferenceSimpleStorage;
  v4 = [(BWInferenceSimpleStorage *)&v6 init];
  if (v4)
  {
    v4->_pixelBufferByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_pixelBufferPoolByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_requirementsNeedingPixelBufferPools = pools;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSimpleStorage;
  [(BWInferenceSimpleStorage *)&v3 dealloc];
}

- (void)clear
{
  [(NSMutableDictionary *)self->_pixelBufferByRequirement removeAllObjects];

  self->_inputSampleBufferAttachments = 0;
  self->_mutableInferenceMetadata = 0;
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