@interface BWInferenceCompressibleLazyVideoRequirement
- (BWInferenceCompressibleLazyVideoRequirement)initWithLazyVideoRequirement:(id)a3;
- (int)prepareForInputInferenceVideoFormat:(id)a3;
- (void)dealloc;
@end

@implementation BWInferenceCompressibleLazyVideoRequirement

- (BWInferenceCompressibleLazyVideoRequirement)initWithLazyVideoRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceCompressibleLazyVideoRequirement;
  v4 = [(BWInferenceLazyVideoRequirement *)&v6 initWithLazyVideoRequirement:?];
  if (v4)
  {
    v4->_underlyingLazyVideoRequirement = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceCompressibleLazyVideoRequirement;
  [(BWInferenceLazyVideoRequirement *)&v3 dealloc];
}

- (int)prepareForInputInferenceVideoFormat:(id)a3
{
  v5 = [(BWInferenceLazyVideoRequirement *)self->_underlyingLazyVideoRequirement prepareForInputInferenceVideoFormat:?];
  if (![(BWInferenceVideoRequirement *)self->_underlyingLazyVideoRequirement videoFormat])
  {
    return -31711;
  }

  v6 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_underlyingLazyVideoRequirement videoFormat] pixelFormat];
  if (v6 == [a3 uncompressedEquivalent])
  {
    v7 = [[BWInferenceVideoFormatRequirements alloc] initWithFormat:[(BWInferenceVideoRequirement *)self->_underlyingLazyVideoRequirement videoFormat]];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v7, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
    v10 = v7;
    v8 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
    if (v8)
    {
      self->super.super._videoFormat = v8;
      return v5;
    }

    return -31711;
  }

  return v5;
}

@end