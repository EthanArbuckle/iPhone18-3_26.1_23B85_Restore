@interface BWInferenceCloneVideoRequirement
- (BWInferenceCloneVideoRequirement)initWithAttachedMediaKey:(id)a3 sourceVideoRequirement:(id)a4;
- (BWInferenceCloneVideoRequirement)initWithCloneVideoRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation BWInferenceCloneVideoRequirement

- (BWInferenceCloneVideoRequirement)initWithAttachedMediaKey:(id)a3 sourceVideoRequirement:(id)a4
{
  v7.receiver = self;
  v7.super_class = BWInferenceCloneVideoRequirement;
  v5 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:](&v7, sel_initWithAttachedMediaKey_videoFormat_, a3, [a4 videoFormat]);
  if (v5)
  {
    v5->_sourceVideoRequirement = a4;
  }

  return v5;
}

- (BWInferenceCloneVideoRequirement)initWithCloneVideoRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceCloneVideoRequirement;
  v4 = [(BWInferenceVideoRequirement *)&v6 initWithVideoRequirement:?];
  if (v4)
  {
    v4->_sourceVideoRequirement = [a3 sourceVideoRequirement];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceCloneVideoRequirement;
  [(BWInferenceVideoRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithCloneVideoRequirement:self];
}

@end