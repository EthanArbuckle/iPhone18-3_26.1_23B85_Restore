@interface FigCaptureMovieFileSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureMovieFileSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkConfiguration

- (FigCaptureMovieFileSinkConfiguration)initWithXPCEncoding:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigCaptureMovieFileSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v7 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(a3, "trueVideoCaptureEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(a3, "multiCamClientCompositingEnabled");
    string = xpc_dictionary_get_string(a3, "multiCamClientCompositingPrimaryConnectionID");
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
  v3 = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "trueVideoCaptureEnabled", [(FigCaptureMovieFileSinkConfiguration *)self trueVideoCaptureEnabled]);
  xpc_dictionary_set_BOOL(v3, "multiCamClientCompositingEnabled", [(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingEnabled]);
  if ([(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID])
  {
    xpc_dictionary_set_string(v3, "multiCamClientCompositingPrimaryConnectionID", [(NSString *)[(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID] UTF8String]);
  }

  return v3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureMovieFileSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:a3];
  [v4 setTrueVideoCaptureEnabled:{-[FigCaptureMovieFileSinkConfiguration trueVideoCaptureEnabled](self, "trueVideoCaptureEnabled")}];
  [v4 setMultiCamClientCompositingEnabled:{-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled")}];
  [v4 setMultiCamClientCompositingPrimaryConnectionID:{-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v10.receiver = self;
  v10.super_class = FigCaptureMovieFileSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v10 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCaptureMovieFileSinkConfiguration trueVideoCaptureEnabled](self, "trueVideoCaptureEnabled"), v6 == [a3 trueVideoCaptureEnabled]) && (v7 = -[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled"), v7 == objc_msgSend(a3, "multiCamClientCompositingEnabled")))
    {
      v8 = [(FigCaptureMovieFileSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID];
      if (v8 == [a3 multiCamClientCompositingPrimaryConnectionID] || (v5 = -[NSString isEqualToString:](-[FigCaptureMovieFileSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID"), "isEqualToString:", objc_msgSend(a3, "multiCamClientCompositingPrimaryConnectionID"))))
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