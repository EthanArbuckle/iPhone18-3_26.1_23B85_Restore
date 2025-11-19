@interface BWDeferredInferenceArrayIntermediate
- (BWDeferredInferenceArrayIntermediate)initWithArray:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6 URL:(id)a7;
- (BWDeferredInferenceArrayIntermediate)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWDeferredInferenceArrayIntermediate

- (BWDeferredInferenceArrayIntermediate)initWithArray:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6 URL:(id)a7
{
  v11.receiver = self;
  v11.super_class = BWDeferredInferenceArrayIntermediate;
  v9 = [(BWDeferredArrayIntermediate *)&v11 initWithArray:a3 tag:a4 URL:a7];
  if (v9)
  {
    v9->_inferenceAttachmentKey = a5;
    v9->_portType = a6;
  }

  return v9;
}

- (BWDeferredInferenceArrayIntermediate)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceArrayIntermediate;
  v4 = [(BWDeferredArrayIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_inferenceAttachmentKey = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAttachmentKey"];
    v4->_portType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"portType"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BWDeferredInferenceArrayIntermediate;
  [(BWDeferredArrayIntermediate *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_inferenceAttachmentKey forKey:@"inferenceAttachmentKey"];
  [a3 encodeObject:self->_portType forKey:@"portType"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredInferenceArrayIntermediate;
  [(BWDeferredArrayIntermediate *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)self->super._array description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@..."], -[NSString substringToIndex:](v5, "substringToIndex:", 512));
  }

  [v3 appendFormat:@"<%@ %p>: tag:%@ inferenceAttachmentKey:%@ portType:%@ array:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), self->_inferenceAttachmentKey, self->_portType, v5];
  objc_autoreleasePoolPop(v4);
  v6 = [v3 copy];

  return v6;
}

@end