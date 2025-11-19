@interface FigCapturePointCloudDataSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCapturePointCloudDataSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCapturePointCloudDataSinkConfiguration

- (FigCapturePointCloudDataSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigCapturePointCloudDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "discardsLatePointCloudData");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCapturePointCloudDataSinkConfiguration;
  v3 = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "discardsLatePointCloudData", [(FigCapturePointCloudDataSinkConfiguration *)self discardsLatePointCloudData]);
  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCapturePointCloudDataSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ discards:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCapturePointCloudDataSinkConfiguration discardsLatePointCloudData](self, "discardsLatePointCloudData")];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCapturePointCloudDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setDiscardsLatePointCloudData:{-[FigCapturePointCloudDataSinkConfiguration discardsLatePointCloudData](self, "discardsLatePointCloudData")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = FigCapturePointCloudDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FigCapturePointCloudDataSinkConfiguration *)self discardsLatePointCloudData];
      LOBYTE(v5) = v6 ^ [a3 discardsLatePointCloudData] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end