@interface FigCameraViewfinderLocal
+ (id)cameraViewfinder;
+ (void)initialize;
- (FigCameraViewfinderLocal)init;
- (float)photoThumbnailQuality;
- (int)photoThumbnailMaxDimension;
- (void)_updateActiveViewfinderSession:(int)session sessionStatus:;
- (void)captureSession:(int64_t)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp;
- (void)captureSessionDidFinishMovieRecording:(int64_t)recording;
- (void)captureSessionDidReconfigureWhileRunning:(id)running;
- (void)captureSessionDidStart:(id)start;
- (void)captureSessionDidStartMovieRecording:(int64_t)recording;
- (void)captureSessionDidStop:(int64_t)stop;
- (void)captureSessionWillStart:(id)start;
- (void)dealloc;
- (void)startWithOptions:(id)options;
- (void)stop;
@end

@implementation FigCameraViewfinderLocal

+ (id)cameraViewfinder
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (FigCameraViewfinderLocal)init
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderLocal;
  return [(FigCameraViewfinder *)&v3 init];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderLocal;
  [(FigCameraViewfinder *)&v3 dealloc];
}

- (void)startWithOptions:(id)options
{
  self->_options = [options copy];
  [+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")];
  self->_observing = 1;
}

- (void)stop
{
  if (self->_observing)
  {
    self->_observing = 0;
    [+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")];
    objc_sync_enter(self);
    [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:0 sessionStatus:?];

    objc_sync_exit(self);
  }
}

- (void)captureSessionWillStart:(id)start
{
  if ([start containsVideoSource])
  {
    objc_sync_enter(self);
    activeViewfinderSession = self->_activeViewfinderSession;
    if (activeViewfinderSession && (v6 = -[FigCameraViewfinderSessionLocal identifier](activeViewfinderSession, "identifier"), v6 > [start identifier]))
    {
      v7 = 0;
    }

    else
    {
      v7 = [[FigCameraViewfinderSessionLocal alloc] _initWithOwningViewfinder:self captureSessionProxy:start delegateStorage:self->super._delegateStorage];
      [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:v7 sessionStatus:1];
    }

    objc_sync_exit(self);
  }
}

- (void)captureSessionDidStart:(id)start
{
  if ([start containsVideoSource])
  {
    objc_sync_enter(self);
    identifier = [(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier];
    identifier2 = [start identifier];
    activeViewfinderSession = self->_activeViewfinderSession;
    if (identifier == identifier2)
    {
      delegateStorage = self->super._delegateStorage;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__FigCameraViewfinderLocal_captureSessionDidStart___block_invoke;
      v11[3] = &unk_1E7997528;
      v11[4] = self;
      v11[5] = activeViewfinderSession;
      [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v11];
    }

    else if (!activeViewfinderSession || (v9 = -[FigCameraViewfinderSessionLocal identifier](activeViewfinderSession, "identifier"), v9 <= [start identifier]))
    {
      v10 = [[FigCameraViewfinderSessionLocal alloc] _initWithOwningViewfinder:self captureSessionProxy:start delegateStorage:self->super._delegateStorage];
      [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:v10 sessionStatus:2];
      goto LABEL_8;
    }

    v10 = 0;
LABEL_8:
    objc_sync_exit(self);
  }
}

- (void)captureSessionDidReconfigureWhileRunning:(id)running
{
  objc_sync_enter(self);
  identifier = [(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier];
  if (identifier == [running identifier])
  {
    if (([running containsVideoSource] & 1) == 0)
    {
      [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:0 sessionStatus:?];
    }
  }

  else
  {
    identifier2 = [(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier];
    identifier3 = [running identifier];
    containsVideoSource = [running containsVideoSource];
    if (identifier2 <= identifier3)
    {
      v9 = containsVideoSource;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      v10 = [[FigCameraViewfinderSessionLocal alloc] _initWithOwningViewfinder:self captureSessionProxy:running delegateStorage:self->super._delegateStorage];
      [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:v10 sessionStatus:2];
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:
  objc_sync_exit(self);
}

- (void)captureSessionDidStop:(int64_t)stop
{
  objc_sync_enter(self);
  if ([(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier]== stop)
  {
    [(FigCameraViewfinderLocal *)self _updateActiveViewfinderSession:0 sessionStatus:?];
  }

  objc_sync_exit(self);
}

- (void)captureSession:(int64_t)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp
{
  if (session)
  {
    v8 = *&status;
    objc_sync_enter(self);
    if ([(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier]== session)
    {
      activeViewfinderSession = self->_activeViewfinderSession;
      v12 = *&timestamp->var0;
      var3 = timestamp->var3;
      [(FigCameraViewfinderSessionLocal *)activeViewfinderSession _captureSessionDidCapturePhotoWithStatus:v8 thumbnailData:data timestamp:&v12];
    }

    objc_sync_exit(self);
  }
}

- (int)photoThumbnailMaxDimension
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"PhotoThumbnailMaxDimension"];

  return [v2 intValue];
}

- (float)photoThumbnailQuality
{
  [-[NSDictionary objectForKeyedSubscript:](self->_options objectForKeyedSubscript:{@"PhotoThumbnailQuality", "floatValue"}];
  v3 = 0.0;
  if (result < 0.0 || (v3 = 1.0, result > 1.0))
  {
    if ((photoThumbnailQuality_haveWarnedAboutOutOfRangeValues & 1) == 0)
    {
      photoThumbnailQuality_haveWarnedAboutOutOfRangeValues = 1;
    }

    return v3;
  }

  return result;
}

- (void)captureSessionDidStartMovieRecording:(int64_t)recording
{
  objc_sync_enter(self);
  if ([(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier]== recording)
  {
    [(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession _captureSessionDidStartMovieRecording];
  }

  objc_sync_exit(self);
}

- (void)captureSessionDidFinishMovieRecording:(int64_t)recording
{
  objc_sync_enter(self);
  if ([(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession identifier]== recording)
  {
    [(FigCameraViewfinderSessionLocal *)self->_activeViewfinderSession _captureSessionDidFinishMovieRecording];
  }

  objc_sync_exit(self);
}

uint64_t __73__FigCameraViewfinderLocal__updateActiveViewfinderSession_sessionStatus___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) setDelegateActiveViewfinderSession:0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [a2 cameraViewfinder:v4 viewfinderSessionDidEnd:v5];
}

uint64_t __73__FigCameraViewfinderLocal__updateActiveViewfinderSession_sessionStatus___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setDelegateActiveViewfinderSession:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3 == 2)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return [v7 cameraViewfinder:v8 viewfinderSessionDidBegin:v9];
  }

  else if (v3 == 1)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v4 cameraViewfinder:v5 viewfinderSessionWillBegin:v6];
  }

  return result;
}

- (void)_updateActiveViewfinderSession:(int)session sessionStatus:
{
  if (self)
  {
    v5 = *(self + 40);
    if (v5 != a2)
    {
      if (v5)
      {
        *(self + 40) = 0;
        [v5 _captureSessionDidStop];
        v7 = *(self + 8);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __73__FigCameraViewfinderLocal__updateActiveViewfinderSession_sessionStatus___block_invoke;
        v11[3] = &unk_1E7997528;
        v11[4] = self;
        v11[5] = v5;
        [v7 invokeDelegateCallbackWithBlock:v11];
      }

      if (a2)
      {
        *(self + 40) = a2;
        v8 = *(self + 8);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __73__FigCameraViewfinderLocal__updateActiveViewfinderSession_sessionStatus___block_invoke_2;
        v9[3] = &unk_1E7997550;
        v9[4] = self;
        v9[5] = a2;
        sessionCopy = session;
        [v8 invokeDelegateCallbackWithBlock:v9];
      }
    }
  }
}

@end