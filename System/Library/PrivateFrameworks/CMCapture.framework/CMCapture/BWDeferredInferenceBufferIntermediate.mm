@interface BWDeferredInferenceBufferIntermediate
- (BWDeferredInferenceBufferIntermediate)initWithBuffer:(__CVBuffer *)buffer tag:(id)tag metadataTag:(id)metadataTag inferenceAttachedMediaKey:(id)key portType:(id)type compressionProfile:(int)profile URL:(id)l;
- (BWDeferredInferenceBufferIntermediate)initWithCoder:(id)coder;
- (id)_shortString;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredInferenceBufferIntermediate

- (BWDeferredInferenceBufferIntermediate)initWithBuffer:(__CVBuffer *)buffer tag:(id)tag metadataTag:(id)metadataTag inferenceAttachedMediaKey:(id)key portType:(id)type compressionProfile:(int)profile URL:(id)l
{
  v13.receiver = self;
  v13.super_class = BWDeferredInferenceBufferIntermediate;
  v10 = [(BWDeferredBufferIntermediate *)&v13 initWithBuffer:buffer tag:tag bufferType:16 captureFrameFlags:0 metadataTag:metadataTag portType:type compressionProfile:profile URL:l];
  if (v10)
  {
    v10->_inferenceAttachedMediaKey = key;
  }

  return v10;
}

- (BWDeferredInferenceBufferIntermediate)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceBufferIntermediate;
  v4 = [(BWDeferredBufferIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_inferenceAttachedMediaKey = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAttachedMediaKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BWDeferredInferenceBufferIntermediate;
  [(BWDeferredBufferIntermediate *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_inferenceAttachedMediaKey forKey:@"inferenceAttachedMediaKey"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredInferenceBufferIntermediate;
  [(BWDeferredBufferIntermediate *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: tag:%@ inferenceAttachedMediaKey:%@ bufferType:%@ portType:%@ bufferAttributes:%@", v4, self, -[BWDeferredIntermediate tag](self, "tag"), self->_inferenceAttachedMediaKey, BWStillImageBufferTypeToShortString(-[BWDeferredBufferIntermediate bufferType](self, "bufferType")), -[BWDeferredBufferIntermediate portType](self, "portType"), -[BWDeferredBufferIntermediate attributes](self, "attributes")];
}

- (id)_shortString
{
  attributes = [(BWDeferredBufferIntermediate *)self attributes];
  v4 = [-[NSDictionary objectForKeyedSubscript:](attributes objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}];
  attributes2 = [(BWDeferredBufferIntermediate *)self attributes];
  v6 = [-[NSDictionary objectForKeyedSubscript:](attributes2 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' ('%@', %dx%d)", self->_inferenceAttachedMediaKey, BWStringFromCVPixelFormatType(-[BWDeferredBufferIntermediate pixelFormat](self, "pixelFormat")), v4, v6];
}

@end