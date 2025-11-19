@interface BWInferenceLazyVideoRequirement
- (BWInferenceLazyVideoRequirement)initWithAttachedMediaKey:(id)a3 preparedByAttachedMediaKey:(id)a4 count:(unint64_t)a5 videoFormatProvider:(id)a6;
- (BWInferenceLazyVideoRequirement)initWithLazyVideoRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)prepareForInputInferenceVideoFormat:(id)a3;
- (void)dealloc;
@end

@implementation BWInferenceLazyVideoRequirement

- (BWInferenceLazyVideoRequirement)initWithAttachedMediaKey:(id)a3 preparedByAttachedMediaKey:(id)a4 count:(unint64_t)a5 videoFormatProvider:(id)a6
{
  v10.receiver = self;
  v10.super_class = BWInferenceLazyVideoRequirement;
  v8 = [(BWInferenceVideoRequirement *)&v10 initWithAttachedMediaKey:a3 videoFormat:0 count:a5];
  if (v8)
  {
    v8->_preparedByAttachedMediaKey = [a4 copy];
    v8->_videoFormatProvider = [a6 copy];
  }

  return v8;
}

- (BWInferenceLazyVideoRequirement)initWithLazyVideoRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceLazyVideoRequirement;
  v4 = [(BWInferenceVideoRequirement *)&v6 initWithVideoRequirement:?];
  if (v4)
  {
    v4->_preparedByAttachedMediaKey = [objc_msgSend(a3 "preparedByAttachedMediaKey")];
    v4->_videoFormatProvider = [*(a3 + 7) copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceLazyVideoRequirement;
  [(BWInferenceVideoRequirement *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<waiting for %@>", -[BWInferenceLazyVideoRequirement preparedByAttachedMediaKey](self, "preparedByAttachedMediaKey")];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(BWInferenceVideoRequirement *)self videoFormat];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v4 stringWithFormat:@"%@", v6];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@(%ld) %p; attachedMediaKey %@; videoFormat = %@; count = %lu>", objc_opt_class(), -[BWInferenceDataRequirement identifier](self, "identifier"), self, -[BWInferenceMediaRequirement attachedMediaKey](self, "attachedMediaKey"), v7, -[BWInferenceMediaRequirement count](self, "count")];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithLazyVideoRequirement:self];
}

- (int)prepareForInputInferenceVideoFormat:(id)a3
{
  if (self->super._videoFormat)
  {
    return 0;
  }

  videoFormatProvider = self->_videoFormatProvider;
  if (videoFormatProvider && (v5 = videoFormatProvider[2](videoFormatProvider, a3), (self->super._videoFormat = v5) != 0))
  {
    return 0;
  }

  else
  {
    return -31711;
  }
}

@end