@interface BWDeferredInferenceArrayIntermediate
- (BWDeferredInferenceArrayIntermediate)initWithArray:(id)array tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type URL:(id)l;
- (BWDeferredInferenceArrayIntermediate)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredInferenceArrayIntermediate

- (BWDeferredInferenceArrayIntermediate)initWithArray:(id)array tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type URL:(id)l
{
  v11.receiver = self;
  v11.super_class = BWDeferredInferenceArrayIntermediate;
  v9 = [(BWDeferredArrayIntermediate *)&v11 initWithArray:array tag:tag URL:l];
  if (v9)
  {
    v9->_inferenceAttachmentKey = key;
    v9->_portType = type;
  }

  return v9;
}

- (BWDeferredInferenceArrayIntermediate)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceArrayIntermediate;
  v4 = [(BWDeferredArrayIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_inferenceAttachmentKey = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAttachmentKey"];
    v4->_portType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"portType"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BWDeferredInferenceArrayIntermediate;
  [(BWDeferredArrayIntermediate *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_inferenceAttachmentKey forKey:@"inferenceAttachmentKey"];
  [coder encodeObject:self->_portType forKey:@"portType"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredInferenceArrayIntermediate;
  [(BWDeferredArrayIntermediate *)&v3 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)self->super._array description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@..."], -[NSString substringToIndex:](v5, "substringToIndex:", 512));
  }

  [string appendFormat:@"<%@ %p>: tag:%@ inferenceAttachmentKey:%@ portType:%@ array:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), self->_inferenceAttachmentKey, self->_portType, v5];
  objc_autoreleasePoolPop(v4);
  v6 = [string copy];

  return v6;
}

@end