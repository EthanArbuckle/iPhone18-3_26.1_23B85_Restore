@interface BWDeferredInferenceDictionaryIntermediate
- (BWDeferredInferenceDictionaryIntermediate)initWithCoder:(id)a3;
- (BWDeferredInferenceDictionaryIntermediate)initWithDictionary:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6 URL:(id)a7;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWDeferredInferenceDictionaryIntermediate

- (BWDeferredInferenceDictionaryIntermediate)initWithDictionary:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6 URL:(id)a7
{
  v11.receiver = self;
  v11.super_class = BWDeferredInferenceDictionaryIntermediate;
  v9 = [(BWDeferredDictionaryIntermediate *)&v11 initWithDictionary:a3 tag:a4 URL:a7];
  if (v9)
  {
    v9->_inferenceAttachmentKey = a5;
    v9->_portType = a6;
  }

  return v9;
}

- (BWDeferredInferenceDictionaryIntermediate)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceDictionaryIntermediate;
  v4 = [(BWDeferredDictionaryIntermediate *)&v6 initWithCoder:?];
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
  v5.super_class = BWDeferredInferenceDictionaryIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_inferenceAttachmentKey forKey:@"inferenceAttachmentKey"];
  [a3 encodeObject:self->_portType forKey:@"portType"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredInferenceDictionaryIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSDictionary *)self->super._dictionary description];
  if ([(NSString *)v4 length]>= 0x201)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@..."], -[NSString substringToIndex:](v4, "substringToIndex:", 512));
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>: tag:%@ inferenceAttachmentKey:%@ portType:%@ array:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), self->_inferenceAttachmentKey, self->_portType, v4];
  objc_autoreleasePoolPop(v3);

  return v5;
}

@end