@interface BWInferenceLazyVideoRequirement
- (BWInferenceLazyVideoRequirement)initWithAttachedMediaKey:(id)key preparedByAttachedMediaKey:(id)mediaKey count:(unint64_t)count videoFormatProvider:(id)provider;
- (BWInferenceLazyVideoRequirement)initWithLazyVideoRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)prepareForInputInferenceVideoFormat:(id)format;
- (void)dealloc;
@end

@implementation BWInferenceLazyVideoRequirement

- (BWInferenceLazyVideoRequirement)initWithAttachedMediaKey:(id)key preparedByAttachedMediaKey:(id)mediaKey count:(unint64_t)count videoFormatProvider:(id)provider
{
  v10.receiver = self;
  v10.super_class = BWInferenceLazyVideoRequirement;
  v8 = [(BWInferenceVideoRequirement *)&v10 initWithAttachedMediaKey:key videoFormat:0 count:count];
  if (v8)
  {
    v8->_preparedByAttachedMediaKey = [mediaKey copy];
    v8->_videoFormatProvider = [provider copy];
  }

  return v8;
}

- (BWInferenceLazyVideoRequirement)initWithLazyVideoRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceLazyVideoRequirement;
  v4 = [(BWInferenceVideoRequirement *)&v6 initWithVideoRequirement:?];
  if (v4)
  {
    v4->_preparedByAttachedMediaKey = [objc_msgSend(requirement "preparedByAttachedMediaKey")];
    v4->_videoFormatProvider = [*(requirement + 7) copy];
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
  videoFormat = [(BWInferenceVideoRequirement *)self videoFormat];
  if (videoFormat)
  {
    v6 = videoFormat;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v4 stringWithFormat:@"%@", v6];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@(%ld) %p; attachedMediaKey %@; videoFormat = %@; count = %lu>", objc_opt_class(), -[BWInferenceDataRequirement identifier](self, "identifier"), self, -[BWInferenceMediaRequirement attachedMediaKey](self, "attachedMediaKey"), v7, -[BWInferenceMediaRequirement count](self, "count")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithLazyVideoRequirement:self];
}

- (int)prepareForInputInferenceVideoFormat:(id)format
{
  if (self->super._videoFormat)
  {
    return 0;
  }

  videoFormatProvider = self->_videoFormatProvider;
  if (videoFormatProvider && (v5 = videoFormatProvider[2](videoFormatProvider, format), (self->super._videoFormat = v5) != 0))
  {
    return 0;
  }

  else
  {
    return -31711;
  }
}

@end