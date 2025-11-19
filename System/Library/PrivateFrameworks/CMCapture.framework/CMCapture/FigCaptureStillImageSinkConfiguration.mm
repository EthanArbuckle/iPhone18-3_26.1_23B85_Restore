@interface FigCaptureStillImageSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureStillImageSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCaptureStillImageSinkConfiguration

- (FigCaptureStillImageSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "stillImageZeroShutterLagEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(a3, "cameraSensorOrientationCompensationEnabled");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCaptureStillImageSinkConfiguration;
  v3 = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "stillImageZeroShutterLagEnabled", [(FigCaptureStillImageSinkConfiguration *)self zeroShutterLagEnabled]);
  xpc_dictionary_set_BOOL(v3, "cameraSensorOrientationCompensationEnabled", [(FigCaptureStillImageSinkConfiguration *)self cameraSensorOrientationCompensationEnabled]);
  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ zeroShutterLag:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled")];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setZeroShutterLagEnabled:{-[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled")}];
  [v4 setCameraSensorOrientationCompensationEnabled:{-[FigCaptureStillImageSinkConfiguration cameraSensorOrientationCompensationEnabled](self, "cameraSensorOrientationCompensationEnabled")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = FigCaptureStillImageSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCaptureStillImageSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled"), v6 == [a3 zeroShutterLagEnabled]))
    {
      v7 = [(FigCaptureStillImageSinkConfiguration *)self cameraSensorOrientationCompensationEnabled];
      LOBYTE(v5) = v7 ^ [a3 cameraSensorOrientationCompensationEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end