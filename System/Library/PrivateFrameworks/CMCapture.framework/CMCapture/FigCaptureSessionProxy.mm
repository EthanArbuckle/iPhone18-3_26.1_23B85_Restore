@interface FigCaptureSessionProxy
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (FigCaptureSessionProxy)initWithFigCaptureSession:(OpaqueFigCaptureSession *)a3 identifier:(int64_t)a4 clientAuditToken:(id *)a5 containsVideoSource:(BOOL)a6 containsStillImageSink:(BOOL)a7 containsMovieFileSink:(BOOL)a8;
- (int)openPreviewTapWithDelegate:(id)a3;
- (uint64_t)closePreviewTap;
- (void)closePreviewTap;
- (void)dealloc;
@end

@implementation FigCaptureSessionProxy

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureSessionProxy)initWithFigCaptureSession:(OpaqueFigCaptureSession *)a3 identifier:(int64_t)a4 clientAuditToken:(id *)a5 containsVideoSource:(BOOL)a6 containsStillImageSink:(BOOL)a7 containsMovieFileSink:(BOOL)a8
{
  if (!a3)
  {
    [FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:];
LABEL_10:

    return 0;
  }

  if (a4 <= 0)
  {
    [FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:];
    goto LABEL_10;
  }

  v15 = *&a5->var0[4];
  v20[0] = *a5->var0;
  v20[1] = v15;
  if (!FigCaptureAuditTokenIsValid(v20))
  {
    [FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:];
    goto LABEL_10;
  }

  v19.receiver = self;
  v19.super_class = FigCaptureSessionProxy;
  v16 = [(FigCaptureSessionProxy *)&v19 init];
  if (v16)
  {
    *(v16 + 1) = CFRetain(a3);
    *(v16 + 2) = a4;
    v17 = *&a5->var0[4];
    *(v16 + 24) = *a5->var0;
    *(v16 + 40) = v17;
    v16[56] = a6;
    v16[57] = a7;
    v16[58] = a8;
  }

  return v16;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    CFRelease(session);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureSessionProxy;
  [(FigCaptureSessionProxy *)&v4 dealloc];
}

- (int)openPreviewTapWithDelegate:(id)a3
{
  if (self->_previewTapOpened)
  {
    if ([FigCaptureSessionProxy openPreviewTapWithDelegate:?])
    {
      return 0;
    }

    v4 = v6;
LABEL_9:
    self->_previewTapDelegate = 0;
    return v4;
  }

  self->_previewTapDelegate = a3;
  v4 = FigCaptureSessionSetVideoPreviewTapCallback(self->_session, csp_previewTapCallback, self);
  if (v4)
  {
    [FigCaptureSessionProxy openPreviewTapWithDelegate:];
    goto LABEL_9;
  }

  self->_previewTapOpened = 1;
  return v4;
}

- (void)closePreviewTap
{
  p_previewTapOpened = &self->_previewTapOpened;
  if (self->_previewTapOpened)
  {
    v4 = FigCaptureSessionSetVideoPreviewTapCallback(self->_session, 0, 0);
    if (v4)
    {
      [(FigCaptureSessionProxy *)v4 closePreviewTap];
    }
  }
}

- (uint64_t)initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:.cold.1()
{
  v0 = OUTLINED_FUNCTION_2_68();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21();
  }

  return OUTLINED_FUNCTION_1_77();
}

- (uint64_t)initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:.cold.2()
{
  v0 = OUTLINED_FUNCTION_2_68();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21();
  }

  return OUTLINED_FUNCTION_1_77();
}

- (uint64_t)initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:.cold.3()
{
  v0 = OUTLINED_FUNCTION_2_68();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[FigCaptureSessionProxy initWithFigCaptureSession:identifier:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:]");
    OUTLINED_FUNCTION_21();
  }

  return OUTLINED_FUNCTION_1_77();
}

- (BOOL)openPreviewTapWithDelegate:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  FigDebugAssert3();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

- (uint64_t)closePreviewTap
{
  OUTLINED_FUNCTION_1_8();
  LODWORD(v7) = v5;
  FigDebugAssert3();
  result = [*(a2 + 64) captureSessionPreviewTapDidClose:{a2, v7}];
  *(a2 + 64) = 0;
  *a3 = 0;
  return result;
}

@end