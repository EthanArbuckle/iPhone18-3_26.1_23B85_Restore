@interface BWDeferredInferenceBufferIntermediate
- (BWDeferredInferenceBufferIntermediate)initWithBuffer:(__CVBuffer *)a3 tag:(id)a4 metadataTag:(id)a5 inferenceAttachedMediaKey:(id)a6 portType:(id)a7 compressionProfile:(int)a8 URL:(id)a9;
- (BWDeferredInferenceBufferIntermediate)initWithCoder:(id)a3;
- (id)_shortString;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWDeferredInferenceBufferIntermediate

- (BWDeferredInferenceBufferIntermediate)initWithBuffer:(__CVBuffer *)a3 tag:(id)a4 metadataTag:(id)a5 inferenceAttachedMediaKey:(id)a6 portType:(id)a7 compressionProfile:(int)a8 URL:(id)a9
{
  v13.receiver = self;
  v13.super_class = BWDeferredInferenceBufferIntermediate;
  v10 = [(BWDeferredBufferIntermediate *)&v13 initWithBuffer:a3 tag:a4 bufferType:16 captureFrameFlags:0 metadataTag:a5 portType:a7 compressionProfile:a8 URL:a9];
  if (v10)
  {
    v10->_inferenceAttachedMediaKey = a6;
  }

  return v10;
}

- (BWDeferredInferenceBufferIntermediate)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceBufferIntermediate;
  v4 = [(BWDeferredBufferIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_inferenceAttachedMediaKey = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAttachedMediaKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BWDeferredInferenceBufferIntermediate;
  [(BWDeferredBufferIntermediate *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_inferenceAttachedMediaKey forKey:@"inferenceAttachedMediaKey"];
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
  v3 = [(BWDeferredBufferIntermediate *)self attributes];
  v4 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}];
  v5 = [(BWDeferredBufferIntermediate *)self attributes];
  v6 = [-[NSDictionary objectForKeyedSubscript:](v5 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' ('%@', %dx%d)", self->_inferenceAttachedMediaKey, BWStringFromCVPixelFormatType(-[BWDeferredBufferIntermediate pixelFormat](self, "pixelFormat")), v4, v6];
}

@end