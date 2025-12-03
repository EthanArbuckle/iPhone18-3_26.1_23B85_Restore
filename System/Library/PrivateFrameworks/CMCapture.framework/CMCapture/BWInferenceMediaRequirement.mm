@interface BWInferenceMediaRequirement
- (BWInferenceMediaRequirement)initWithAttachedMediaKey:(id)key count:(unint64_t)count;
- (BWInferenceMediaRequirement)initWithMediaRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation BWInferenceMediaRequirement

- (BWInferenceMediaRequirement)initWithAttachedMediaKey:(id)key count:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = BWInferenceMediaRequirement;
  v6 = [(BWInferenceDataRequirement *)&v8 init];
  if (v6)
  {
    v6->_attachedMediaKey = [key copy];
    v6->_count = count;
  }

  return v6;
}

- (BWInferenceMediaRequirement)initWithMediaRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceMediaRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 initWithDataRequirement:?];
  if (v4)
  {
    v4->_attachedMediaKey = [objc_msgSend(requirement "attachedMediaKey")];
    v4->_count = [requirement count];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceMediaRequirement;
  [(BWInferenceMediaRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithMediaRequirement:self];
}

@end