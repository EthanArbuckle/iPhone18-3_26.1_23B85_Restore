@interface BWInferenceVideoRequirement
- (BWInferenceVideoRequirement)initWithAttachedMediaKey:(id)key videoFormat:(id)format count:(unint64_t)count;
- (BWInferenceVideoRequirement)initWithVideoRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation BWInferenceVideoRequirement

- (BWInferenceVideoRequirement)initWithAttachedMediaKey:(id)key videoFormat:(id)format count:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = BWInferenceVideoRequirement;
  v6 = [(BWInferenceMediaRequirement *)&v8 initWithAttachedMediaKey:key count:count];
  if (v6)
  {
    v6->_videoFormat = format;
  }

  return v6;
}

- (BWInferenceVideoRequirement)initWithVideoRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceVideoRequirement;
  v4 = [(BWInferenceMediaRequirement *)&v6 initWithMediaRequirement:?];
  if (v4)
  {
    v4->_videoFormat = [objc_msgSend(requirement "videoFormat")];
    v4->_videoStorageType = [requirement videoStorageType];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoRequirement;
  [(BWInferenceMediaRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithVideoRequirement:self];
}

@end