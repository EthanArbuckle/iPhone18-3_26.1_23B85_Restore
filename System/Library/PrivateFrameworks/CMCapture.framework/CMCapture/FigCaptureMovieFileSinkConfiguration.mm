@interface FigCaptureMovieFileSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureMovieFileSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkConfiguration

- (FigCaptureMovieFileSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v7.receiver = self;
  v7.super_class = FigCaptureMovieFileSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v7 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "trueVideoCaptureEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(encoding, "multiCamClientCompositingEnabled");
    string = xpc_dictionary_get_string(encoding, "multiCamClientCompositingPrimaryConnectionID");
    if (string)
    {
      *&v4->_trueVideoCaptureEnabled = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCaptureMovieFileSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "trueVideoCaptureEnabled", [(FigCaptureMovieFileSinkConfiguration *)self trueVideoCaptureEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "multiCamClientCompositingEnabled", [(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingEnabled]);
  if ([(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID])
  {
    xpc_dictionary_set_string(copyXPCEncoding, "multiCamClientCompositingPrimaryConnectionID", [(NSString *)[(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID] UTF8String]);
  }

  return copyXPCEncoding;
}

- (id)description
{
  if (*(&self->super._deferredStartEnabled + 2))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (multiCamClientCompositing ON)"];
  }

  else
  {
    v3 = &stru_1F216A3D0;
  }

  v5.receiver = self;
  v5.super_class = FigCaptureMovieFileSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ trueVideo:%d%@", -[FigCaptureSinkConfiguration description](&v5, sel_description), -[FigCaptureMovieFileSinkConfiguration trueVideoCaptureEnabled](self, "trueVideoCaptureEnabled"), v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureMovieFileSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:zone];
  [v4 setTrueVideoCaptureEnabled:{-[FigCaptureMovieFileSinkConfiguration trueVideoCaptureEnabled](self, "trueVideoCaptureEnabled")}];
  [v4 setMultiCamClientCompositingEnabled:{-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled")}];
  [v4 setMultiCamClientCompositingPrimaryConnectionID:{-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10.receiver = self;
  v10.super_class = FigCaptureMovieFileSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v10 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCaptureMovieFileSinkConfiguration trueVideoCaptureEnabled](self, "trueVideoCaptureEnabled"), v6 == [equal trueVideoCaptureEnabled]) && (v7 = -[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled"), v7 == objc_msgSend(equal, "multiCamClientCompositingEnabled")))
    {
      multiCamClientCompositingPrimaryConnectionID = [(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID];
      if (multiCamClientCompositingPrimaryConnectionID == [equal multiCamClientCompositingPrimaryConnectionID] || (v5 = -[NSString isEqualToString:](-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID"), "isEqualToString:", objc_msgSend(equal, "multiCamClientCompositingPrimaryConnectionID"))))
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end