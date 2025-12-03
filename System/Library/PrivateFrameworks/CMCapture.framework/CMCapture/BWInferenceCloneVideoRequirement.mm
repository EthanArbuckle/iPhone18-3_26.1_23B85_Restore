@interface BWInferenceCloneVideoRequirement
- (BWInferenceCloneVideoRequirement)initWithAttachedMediaKey:(id)key sourceVideoRequirement:(id)requirement;
- (BWInferenceCloneVideoRequirement)initWithCloneVideoRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation BWInferenceCloneVideoRequirement

- (BWInferenceCloneVideoRequirement)initWithAttachedMediaKey:(id)key sourceVideoRequirement:(id)requirement
{
  v7.receiver = self;
  v7.super_class = BWInferenceCloneVideoRequirement;
  v5 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:](&v7, sel_initWithAttachedMediaKey_videoFormat_, key, [requirement videoFormat]);
  if (v5)
  {
    v5->_sourceVideoRequirement = requirement;
  }

  return v5;
}

- (BWInferenceCloneVideoRequirement)initWithCloneVideoRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceCloneVideoRequirement;
  v4 = [(BWInferenceVideoRequirement *)&v6 initWithVideoRequirement:?];
  if (v4)
  {
    v4->_sourceVideoRequirement = [requirement sourceVideoRequirement];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceCloneVideoRequirement;
  [(BWInferenceVideoRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithCloneVideoRequirement:self];
}

@end