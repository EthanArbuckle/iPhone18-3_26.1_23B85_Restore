@interface FigCameraViewfinderSession
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)usesMovieFileOutput;
- (BOOL)usesPhotoOutput;
- (FigCameraViewfinderSession)init;
- (id)description;
- (id)initSubclass;
- (void)closePreviewStream;
- (void)dealloc;
- (void)openPreviewStreamWithOptions:(id)options;
@end

@implementation FigCameraViewfinderSession

- (id)initSubclass
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderSession;
  return [(FigCameraViewfinderSession *)&v3 init];
}

- (FigCameraViewfinderSession)init
{
  initSubclass = [(FigCameraViewfinderSession *)self initSubclass];
  if (initSubclass)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = objc_opt_class();
      [v4 raise:v5 format:{@"*** -%@ cannot be instantiated directly, it is vended by FigCameraViewfinder!", NSStringFromClass(v6)}];

      return 0;
    }
  }

  return initSubclass;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderSession;
  [(FigCameraViewfinderSession *)&v3 dealloc];
}

- (id)description
{
  if (self)
  {
    [(FigCameraViewfinderSession *)self clientAuditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v7);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@: %p pid:%d photoOutput:%d movieFileOutput:%d>", NSStringFromClass(v5), self, PIDFromAuditToken, -[FigCameraViewfinderSession usesPhotoOutput](self, "usesPhotoOutput"), -[FigCameraViewfinderSession usesMovieFileOutput](self, "usesMovieFileOutput")];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v6 = objc_opt_class();
  result = _requestConcreteImplementation(self, a3, v6);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *retstr->var0 = v8;
  *&retstr->var0[4] = v8;
  return result;
}

- (BOOL)usesPhotoOutput
{
  v4 = objc_opt_class();
  _requestConcreteImplementation(self, a2, v4);
  return 0;
}

- (BOOL)usesMovieFileOutput
{
  v4 = objc_opt_class();
  _requestConcreteImplementation(self, a2, v4);
  return 0;
}

- (void)openPreviewStreamWithOptions:(id)options
{
  v5 = objc_opt_class();

  _requestConcreteImplementation(self, a2, v5);
}

- (void)closePreviewStream
{
  v4 = objc_opt_class();

  _requestConcreteImplementation(self, a2, v4);
}

@end