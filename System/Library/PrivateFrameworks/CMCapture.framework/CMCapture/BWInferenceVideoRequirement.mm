@interface BWInferenceVideoRequirement
- (BWInferenceVideoRequirement)initWithAttachedMediaKey:(id)a3 videoFormat:(id)a4 count:(unint64_t)a5;
- (BWInferenceVideoRequirement)initWithVideoRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation BWInferenceVideoRequirement

- (BWInferenceVideoRequirement)initWithAttachedMediaKey:(id)a3 videoFormat:(id)a4 count:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = BWInferenceVideoRequirement;
  v6 = [(BWInferenceMediaRequirement *)&v8 initWithAttachedMediaKey:a3 count:a5];
  if (v6)
  {
    v6->_videoFormat = a4;
  }

  return v6;
}

- (BWInferenceVideoRequirement)initWithVideoRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceVideoRequirement;
  v4 = [(BWInferenceMediaRequirement *)&v6 initWithMediaRequirement:?];
  if (v4)
  {
    v4->_videoFormat = [objc_msgSend(a3 "videoFormat")];
    v4->_videoStorageType = [a3 videoStorageType];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoRequirement;
  [(BWInferenceMediaRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithVideoRequirement:self];
}

@end