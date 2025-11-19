@interface BWInferenceCompressedVideoRequirement
+ (id)newRequirementWithUncompressedRequirement:(id)a3 supportedCompressionType:(int)a4 supportedLossyCompressionLevel:(int)a5;
- (BOOL)isSatisfiedByRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)initWithUncompressedRequirement:(uint64_t)a3 compressedVideoFormat:;
@end

@implementation BWInferenceCompressedVideoRequirement

+ (id)newRequirementWithUncompressedRequirement:(id)a3 supportedCompressionType:(int)a4 supportedLossyCompressionLevel:(int)a5
{
  v8 = [objc_msgSend(objc_msgSend(a3 "videoFormat")];
  if ([objc_msgSend(a3 "videoFormat")])
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  v10 = FigCaptureCompressedPixelFormatForPixelFormat(v8, a4, v9);
  if (v8 == v10)
  {
    return 0;
  }

  v12 = v10;
  v13 = -[BWInferenceVideoFormatRequirements initWithFormat:]([BWInferenceVideoFormatRequirements alloc], "initWithFormat:", [a3 videoFormat]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v13, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
  v14 = v13;
  result = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
  if (result)
  {
    return [[BWInferenceCompressedVideoRequirement alloc] initWithUncompressedRequirement:a3 compressedVideoFormat:result];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceCompressedVideoRequirement;
  [(BWInferenceVideoRequirement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithVideoRequirement:", self}];
  v4[6] = [(BWInferenceVideoRequirement *)self->_uncompressedRequirement copy];
  return v4;
}

- (BOOL)isSatisfiedByRequirement:(id)a3
{
  v5 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self videoFormat] pixelFormat];
  if (v5 != [objc_msgSend(a3 "videoFormat")])
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWInferenceCompressedVideoRequirement;
  return [(BWInferenceVideoRequirement *)&v7 isSatisfiedByRequirement:a3];
}

- (void)initWithUncompressedRequirement:(uint64_t)a3 compressedVideoFormat:
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = BWInferenceCompressedVideoRequirement;
  v4 = objc_msgSendSuper2(&v6, sel_initWithAttachedMediaKey_videoFormat_, [a2 attachedMediaKey], a3);
  if (v4)
  {
    v4[6] = a2;
  }

  return v4;
}

@end