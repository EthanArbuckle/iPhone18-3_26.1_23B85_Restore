@interface BWInferenceMediaRequirement
- (BWInferenceMediaRequirement)initWithAttachedMediaKey:(id)a3 count:(unint64_t)a4;
- (BWInferenceMediaRequirement)initWithMediaRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation BWInferenceMediaRequirement

- (BWInferenceMediaRequirement)initWithAttachedMediaKey:(id)a3 count:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceMediaRequirement;
  v6 = [(BWInferenceDataRequirement *)&v8 init];
  if (v6)
  {
    v6->_attachedMediaKey = [a3 copy];
    v6->_count = a4;
  }

  return v6;
}

- (BWInferenceMediaRequirement)initWithMediaRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceMediaRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 initWithDataRequirement:?];
  if (v4)
  {
    v4->_attachedMediaKey = [objc_msgSend(a3 "attachedMediaKey")];
    v4->_count = [a3 count];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceMediaRequirement;
  [(BWInferenceMediaRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithMediaRequirement:self];
}

@end