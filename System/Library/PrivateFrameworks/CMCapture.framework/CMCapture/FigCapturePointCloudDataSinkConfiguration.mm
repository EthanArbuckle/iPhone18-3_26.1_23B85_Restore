@interface FigCapturePointCloudDataSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCapturePointCloudDataSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCapturePointCloudDataSinkConfiguration

- (FigCapturePointCloudDataSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v6.receiver = self;
  v6.super_class = FigCapturePointCloudDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "discardsLatePointCloudData");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCapturePointCloudDataSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "discardsLatePointCloudData", [(FigCapturePointCloudDataSinkConfiguration *)self discardsLatePointCloudData]);
  return copyXPCEncoding;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCapturePointCloudDataSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ discards:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCapturePointCloudDataSinkConfiguration discardsLatePointCloudData](self, "discardsLatePointCloudData")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCapturePointCloudDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:zone];
  [v4 setDiscardsLatePointCloudData:{-[FigCapturePointCloudDataSinkConfiguration discardsLatePointCloudData](self, "discardsLatePointCloudData")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = FigCapturePointCloudDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      discardsLatePointCloudData = [(FigCapturePointCloudDataSinkConfiguration *)self discardsLatePointCloudData];
      LOBYTE(v5) = discardsLatePointCloudData ^ [equal discardsLatePointCloudData] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end