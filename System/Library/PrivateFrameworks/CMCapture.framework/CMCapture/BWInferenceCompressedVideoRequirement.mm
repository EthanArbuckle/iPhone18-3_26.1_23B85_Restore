@interface BWInferenceCompressedVideoRequirement
+ (id)newRequirementWithUncompressedRequirement:(id)requirement supportedCompressionType:(int)type supportedLossyCompressionLevel:(int)level;
- (BOOL)isSatisfiedByRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)initWithUncompressedRequirement:(uint64_t)requirement compressedVideoFormat:;
@end

@implementation BWInferenceCompressedVideoRequirement

+ (id)newRequirementWithUncompressedRequirement:(id)requirement supportedCompressionType:(int)type supportedLossyCompressionLevel:(int)level
{
  v8 = [objc_msgSend(objc_msgSend(requirement "videoFormat")];
  if ([objc_msgSend(requirement "videoFormat")])
  {
    levelCopy = 0;
  }

  else
  {
    levelCopy = level;
  }

  v10 = FigCaptureCompressedPixelFormatForPixelFormat(v8, type, levelCopy);
  if (v8 == v10)
  {
    return 0;
  }

  v12 = v10;
  v13 = -[BWInferenceVideoFormatRequirements initWithFormat:]([BWInferenceVideoFormatRequirements alloc], "initWithFormat:", [requirement videoFormat]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v13, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
  v14 = v13;
  result = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
  if (result)
  {
    return [[BWInferenceCompressedVideoRequirement alloc] initWithUncompressedRequirement:requirement compressedVideoFormat:result];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceCompressedVideoRequirement;
  [(BWInferenceVideoRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithVideoRequirement:", self}];
  v4[6] = [(BWInferenceVideoRequirement *)self->_uncompressedRequirement copy];
  return v4;
}

- (BOOL)isSatisfiedByRequirement:(id)requirement
{
  pixelFormat = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self videoFormat] pixelFormat];
  if (pixelFormat != [objc_msgSend(requirement "videoFormat")])
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWInferenceCompressedVideoRequirement;
  return [(BWInferenceVideoRequirement *)&v7 isSatisfiedByRequirement:requirement];
}

- (void)initWithUncompressedRequirement:(uint64_t)requirement compressedVideoFormat:
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = BWInferenceCompressedVideoRequirement;
  v4 = objc_msgSendSuper2(&v6, sel_initWithAttachedMediaKey_videoFormat_, [a2 attachedMediaKey], requirement);
  if (v4)
  {
    v4[6] = a2;
  }

  return v4;
}

@end