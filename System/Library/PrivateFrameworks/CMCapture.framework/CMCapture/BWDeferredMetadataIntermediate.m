@interface BWDeferredMetadataIntermediate
- (BWDeferredMetadataIntermediate)initWithCoder:(id)a3;
- (BWDeferredMetadataIntermediate)initWithMetadata:(id)a3 tag:(id)a4 bufferTag:(id)a5 URL:(id)a6;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWDeferredMetadataIntermediate

- (BWDeferredMetadataIntermediate)initWithMetadata:(id)a3 tag:(id)a4 bufferTag:(id)a5 URL:(id)a6
{
  if (a5)
  {
    v9.receiver = self;
    v9.super_class = BWDeferredMetadataIntermediate;
    v7 = [(BWDeferredDictionaryIntermediate *)&v9 initWithDictionary:a3 tag:a4 URL:a6];
    if (v7)
    {
      v7->_bufferTag = a5;
    }
  }

  else
  {
    [BWDeferredMetadataIntermediate initWithMetadata:? tag:? bufferTag:? URL:?];
    return 0;
  }

  return v7;
}

- (BWDeferredMetadataIntermediate)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWDeferredMetadataIntermediate;
  v4 = [(BWDeferredDictionaryIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_bufferTag = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bufferTag"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BWDeferredMetadataIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_bufferTag forKey:@"bufferTag"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredMetadataIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSDictionary *)[(BWDeferredDictionaryIntermediate *)self dictionary] description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...}", -[NSString substringToIndex:](v5, "substringToIndex:", 512)];
  }

  [v3 appendFormat:@"<%@ %p>: tag:%@ bufferTag:%@ metadata:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), self->_bufferTag, v5];
  objc_autoreleasePoolPop(v4);
  v6 = [v3 copy];

  return v6;
}

- (void)initWithMetadata:(void *)a1 tag:bufferTag:URL:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

@end