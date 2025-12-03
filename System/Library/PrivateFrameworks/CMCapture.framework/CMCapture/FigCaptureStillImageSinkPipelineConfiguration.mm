@interface FigCaptureStillImageSinkPipelineConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureStillImageSinkPipelineConfiguration)initWithCoder:(id)coder;
- (uint64_t)setClientPID:(uint64_t)result;
- (uint64_t)setGnrHDRSupported:(uint64_t)result;
- (uint64_t)setHdrSupported:(uint64_t)result;
- (uint64_t)setIsIrisSupported:(uint64_t)result;
- (uint64_t)setStereoFusionSupported:(uint64_t)result;
- (uint64_t)setStillImageISPChromaNoiseReductionEnabled:(uint64_t)result;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setStillImageColorInfoForFramesOriginatingFromVideoStream:(void *)stream;
@end

@implementation FigCaptureStillImageSinkPipelineConfiguration

- (FigCaptureStillImageSinkPipelineConfiguration)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkPipelineConfiguration;
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_clientPID = [coder decodeInt32ForKey:@"clientPID"];
    v4->_stillImageColorInfoForFramesOriginatingFromVideoStream = [coder decodeObjectOfClass:objc_opt_class() forKey:@"stillImageColorInfoForFramesOriginatingFromVideoStream"];
    v4->_stillImageISPChromaNoiseReductionEnabled = [coder decodeBoolForKey:@"stillImageISPChromaNoiseReductionEnabled"];
    v4->_stereoFusionSupported = [coder decodeBoolForKey:@"stereoFusionSupported"];
    v4->_isIrisSupported = [coder decodeBoolForKey:@"isIrisSupported"];
    v4->_hdrSupported = [coder decodeBoolForKey:@"hdrSupported"];
    v4->_gnrHDRSupported = [coder decodeBoolForKey:@"gnrHDRSupported"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FigCaptureStillImageSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v5 encodeWithCoder:?];
  [coder encodeInt32:self->_clientPID forKey:@"clientPID"];
  [coder encodeObject:self->_stillImageColorInfoForFramesOriginatingFromVideoStream forKey:@"stillImageColorInfoForFramesOriginatingFromVideoStream"];
  [coder encodeBool:self->_stillImageISPChromaNoiseReductionEnabled forKey:@"stillImageISPChromaNoiseReductionEnabled"];
  [coder encodeBool:self->_stereoFusionSupported forKey:@"stereoFusionSupported"];
  [coder encodeBool:self->_isIrisSupported forKey:@"isIrisSupported"];
  [coder encodeBool:self->_hdrSupported forKey:@"hdrSupported"];
  [coder encodeBool:self->_gnrHDRSupported forKey:@"gnrHDRSupported"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(FigCaptureStillImageSinkPipelineConfiguration *)self isEqual:equal, &v8];
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v3 dealloc];
}

- (uint64_t)setClientPID:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

- (void)setStillImageColorInfoForFramesOriginatingFromVideoStream:(void *)stream
{
  if (stream)
  {
    objc_setProperty_nonatomic(stream, newValue, newValue, 104);
  }
}

- (uint64_t)setStillImageISPChromaNoiseReductionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)setStereoFusionSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 113) = a2;
  }

  return result;
}

- (uint64_t)setIsIrisSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 114) = a2;
  }

  return result;
}

- (uint64_t)setHdrSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 115) = a2;
  }

  return result;
}

- (uint64_t)setGnrHDRSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 116) = a2;
  }

  return result;
}

- (void)isEqual:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    v6 = *(a1 + 96);
    if (a2)
    {
LABEL_3:
      v7 = *(a2 + 96);
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 != v7)
  {
LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  if (a1)
  {
    v8 = *(a1 + 104);
    if (a2)
    {
LABEL_7:
      v9 = *(a2 + 104);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_8:
  if (v8 == v9)
  {
    goto LABEL_13;
  }

  if (a1)
  {
    v10 = *(a1 + 104);
    if (a2)
    {
LABEL_11:
      v11 = *(a2 + 104);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  if (([v10 isEqual:v11] & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_13:
  if (!a1)
  {
    if (!a2)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_24;
    }

    if (*(a2 + 112) & 1) != 0 || (*(a2 + 113) & 1) != 0 || (*(a2 + 114) & 1) != 0 || (*(a2 + 115))
    {
      goto LABEL_39;
    }

    v14 = 0;
    goto LABEL_23;
  }

  v12 = *(a1 + 112);
  if (a2)
  {
    if (v12 != *(a2 + 112))
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_3_65();
    if (!v13)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_3_65();
    if (!v13)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_3_65();
    if (!v13)
    {
      goto LABEL_39;
    }

    v14 = *(a1 + 116);
LABEL_23:
    v15 = *(a2 + 116);
    goto LABEL_24;
  }

  if (v12 & 1) != 0 || (*(a1 + 113) & 1) != 0 || (*(a1 + 114) & 1) != 0 || (*(a1 + 115))
  {
    goto LABEL_39;
  }

  v15 = 0;
  v14 = *(a1 + 116);
LABEL_24:
  v16 = v14 ^ v15 ^ 1;
LABEL_40:
  *a3 = v16 & 1;
}

@end