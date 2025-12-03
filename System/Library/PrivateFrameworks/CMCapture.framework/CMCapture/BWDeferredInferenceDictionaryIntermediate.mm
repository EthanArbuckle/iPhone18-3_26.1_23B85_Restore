@interface BWDeferredInferenceDictionaryIntermediate
- (BWDeferredInferenceDictionaryIntermediate)initWithCoder:(id)coder;
- (BWDeferredInferenceDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type URL:(id)l;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredInferenceDictionaryIntermediate

- (BWDeferredInferenceDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type URL:(id)l
{
  v11.receiver = self;
  v11.super_class = BWDeferredInferenceDictionaryIntermediate;
  v9 = [(BWDeferredDictionaryIntermediate *)&v11 initWithDictionary:dictionary tag:tag URL:l];
  if (v9)
  {
    v9->_inferenceAttachmentKey = key;
    v9->_portType = type;
  }

  return v9;
}

- (BWDeferredInferenceDictionaryIntermediate)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BWDeferredInferenceDictionaryIntermediate;
  v4 = [(BWDeferredDictionaryIntermediate *)&v6 initWithCoder:?];
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
  v5.super_class = BWDeferredInferenceDictionaryIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_inferenceAttachmentKey forKey:@"inferenceAttachmentKey"];
  [coder encodeObject:self->_portType forKey:@"portType"];
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