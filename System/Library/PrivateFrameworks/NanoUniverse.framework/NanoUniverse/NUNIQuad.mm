@interface NUNIQuad
- (BOOL)prepareForTime:(double)time;
- (NUNIQuad)initWithScreenScale:(double)scale renderer:(id)renderer;
- (NUNIViewport)_viewport;
- (id)spheroidAtPoint:(CGPoint)point;
- (void)performOffscreenPassesWithCommandBuffer:(id)buffer;
- (void)renderFailedForReason:(unint64_t)reason;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
@end

@implementation NUNIQuad

- (NUNIQuad)initWithScreenScale:(double)scale renderer:(id)renderer
{
  rendererCopy = renderer;
  v14.receiver = self;
  v14.super_class = NUNIQuad;
  v8 = [(CLKUIQuad *)&v14 init];
  v9 = v8;
  if (v8)
  {
    scaleCopy = scale;
    v8->_screenScale = scaleCopy;
    objc_storeStrong(&v8->_renderer, renderer);
    v11 = dispatch_semaphore_create(3);
    renderSemaphore = v9->_renderSemaphore;
    v9->_renderSemaphore = v11;
  }

  return v9;
}

- (NUNIViewport)_viewport
{
  quadView = [(CLKUIQuad *)self quadView];
  [quadView frame];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  screenScale = self->_screenScale;
  v10 = (screenScale * v8);
  v11 = v7;
  return (v10 | ((screenScale * v11) << 32));
}

- (void)performOffscreenPassesWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  scene = [(NUNIQuad *)self scene];
  if (scene)
  {
    [(NUNIRenderer *)self->_renderer renderOffscreenWithScene:scene viewport:[(NUNIQuad *)self _viewport] commandBuffer:bufferCopy];
  }
}

- (BOOL)prepareForTime:(double)time
{
  scene = [(NUNIQuad *)self scene];
  if (scene)
  {
    renderSemaphore = self->_renderSemaphore;
    v6 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(renderSemaphore, v6))
    {
      [scene updateFromDateIfNeeded];
      v9 = CACurrentMediaTime() - self->_baseTime;
      *&v9 = v9;
      [scene update:v9];
      v8 = 1;
      goto LABEL_8;
    }

    v7 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NUNIQuad prepareForTime:v7];
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  scene = [(NUNIQuad *)self scene];
  if (scene)
  {
    [(NUNIRenderer *)self->_renderer renderWithScene:scene viewport:[(NUNIQuad *)self _viewport] commandBuffer:bufferCopy passDescriptor:descriptorCopy];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy_;
    v10[4] = __Block_byref_object_dispose_;
    v11 = self->_renderSemaphore;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__NUNIQuad_renderWithCommandBuffer_passDescriptor___block_invoke;
    v9[3] = &unk_27995F460;
    v9[4] = v10;
    [bufferCopy addCompletedHandler:v9];
    _Block_object_dispose(v10, 8);
  }
}

- (void)renderFailedForReason:(unint64_t)reason
{
  reasonCopy = reason;
  v5 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(NUNIQuad *)reasonCopy renderFailedForReason:v5];
  }

  dispatch_semaphore_signal(self->_renderSemaphore);
}

- (id)spheroidAtPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  _viewport = [(NUNIQuad *)self _viewport];
  renderer = self->_renderer;
  v6.f64[0] = x;
  v6.f64[1] = y;
  v7 = COERCE_DOUBLE(vmul_n_f32(vcvt_f32_f64(v6), self->_screenScale));
  scene = self->_scene;

  return [(NUNIRenderer *)renderer spheroidAtPoint:scene scene:_viewport viewport:v7];
}

- (void)renderFailedForReason:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "NUNIQuad render failed (reason=%d).", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end