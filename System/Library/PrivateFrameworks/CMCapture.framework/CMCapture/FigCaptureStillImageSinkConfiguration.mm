@interface FigCaptureStillImageSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureStillImageSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCaptureStillImageSinkConfiguration

- (FigCaptureStillImageSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "stillImageZeroShutterLagEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(encoding, "cameraSensorOrientationCompensationEnabled");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCaptureStillImageSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "stillImageZeroShutterLagEnabled", [(FigCaptureStillImageSinkConfiguration *)self zeroShutterLagEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "cameraSensorOrientationCompensationEnabled", [(FigCaptureStillImageSinkConfiguration *)self cameraSensorOrientationCompensationEnabled]);
  return copyXPCEncoding;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ zeroShutterLag:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:zone];
  [v4 setZeroShutterLagEnabled:{-[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled")}];
  [v4 setCameraSensorOrientationCompensationEnabled:{-[FigCaptureStillImageSinkConfiguration cameraSensorOrientationCompensationEnabled](self, "cameraSensorOrientationCompensationEnabled")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = FigCaptureStillImageSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled"), v6 == [equal zeroShutterLagEnabled]))
    {
      cameraSensorOrientationCompensationEnabled = [(FigCaptureStillImageSinkConfiguration *)self cameraSensorOrientationCompensationEnabled];
      LOBYTE(v5) = cameraSensorOrientationCompensationEnabled ^ [equal cameraSensorOrientationCompensationEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end