@interface FigCaptureDepthDataSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureDepthDataSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCaptureDepthDataSinkConfiguration

- (FigCaptureDepthDataSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureDepthDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "discardsLateDepthData");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(a3, "filteringEnabled");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCaptureDepthDataSinkConfiguration;
  v3 = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "discardsLateDepthData", [(FigCaptureDepthDataSinkConfiguration *)self discardsLateDepthData]);
  xpc_dictionary_set_BOOL(v3, "filteringEnabled", [(FigCaptureDepthDataSinkConfiguration *)self filteringEnabled]);
  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCaptureDepthDataSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ discards:%d filters:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCaptureDepthDataSinkConfiguration discardsLateDepthData](self, "discardsLateDepthData"), -[FigCaptureDepthDataSinkConfiguration filteringEnabled](self, "filteringEnabled")];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureDepthDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setDiscardsLateDepthData:{-[FigCaptureDepthDataSinkConfiguration discardsLateDepthData](self, "discardsLateDepthData")}];
  [v4 setFilteringEnabled:{-[FigCaptureDepthDataSinkConfiguration filteringEnabled](self, "filteringEnabled")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = FigCaptureDepthDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCaptureDepthDataSinkConfiguration discardsLateDepthData](self, "discardsLateDepthData"), v6 == [a3 discardsLateDepthData]))
    {
      v7 = [(FigCaptureDepthDataSinkConfiguration *)self filteringEnabled];
      LOBYTE(v5) = v7 ^ [a3 filteringEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end