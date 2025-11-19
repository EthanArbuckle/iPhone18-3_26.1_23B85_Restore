@interface BWInferenceSimpleStorage
- (BWInferenceSimpleStorage)initWithRequirementsNeedingPools:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3 forRequirement:(id)a4;
- (void)setPixelBufferPool:(id)a3 forRequirement:(id)a4;
@end

@implementation BWInferenceSimpleStorage

- (BWInferenceSimpleStorage)initWithRequirementsNeedingPools:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceSimpleStorage;
  v4 = [(BWInferenceSimpleStorage *)&v6 init];
  if (v4)
  {
    v4->_pixelBufferByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_pixelBufferPoolByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_requirementsNeedingPixelBufferPools = a3;
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