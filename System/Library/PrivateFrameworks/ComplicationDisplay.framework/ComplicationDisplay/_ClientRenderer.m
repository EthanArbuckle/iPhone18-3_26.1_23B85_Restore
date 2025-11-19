@interface _ClientRenderer
- (_ClientRenderer)init;
- (void)_handleRenderStatsTime:(double)a3 cost:(double)a4;
- (void)renderWithViewData:(id)a3 scale:(double)a4 handler:(id)a5;
@end

@implementation _ClientRenderer

- (_ClientRenderer)init
{
  v19.receiver = self;
  v19.super_class = _ClientRenderer;
  v2 = [(_ClientRenderer *)&v19 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    sema = v2->_sema;
    v2->_sema = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[CDComplicationHostingView async];
    host = v2->_host;
    v2->_host = v5;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v2->_renderTime = _Q0;
    objc_initWeak(&location, v2);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __23___ClientRenderer_init__block_invoke;
    v16 = &unk_278DF3470;
    objc_copyWeak(&v17, &location);
    [(CDComplicationHostingView *)v2->_host setRenderStatsHandler:&v13];
    [(CDComplicationHostingView *)v2->_host setShouldCallRenderStatsHandlerOnMainQueue:0, v13, v14, v15, v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)renderWithViewData:(id)a3 scale:(double)a4 handler:(id)a5
{
  v16 = a3;
  v8 = a5;
  [(CDComplicationHostingView *)self->_host setViewData:v16];
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(_ClientRendererWindow);
  [(_ClientRendererWindow *)v10 setHidden:0];
  [(_ClientRendererWindow *)v10 setContentScaleFactor:a4];
  v11 = objc_alloc_init(MEMORY[0x277D75D28]);
  [(_ClientRendererWindow *)v10 setRootViewController:v11];
  v12 = [v11 view];
  [v12 addSubview:self->_host];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CDComplicationHostingView *)self->_host sizeToFit];
  [(CDComplicationHostingView *)self->_host setNeedsLayout];
  [(CDComplicationHostingView *)self->_host layoutIfNeeded];
  [(CDComplicationHostingView *)self->_host frame];
  [(_ClientRendererWindow *)v10 setFrame:?];
  v13 = [v11 view];
  [(CDComplicationHostingView *)self->_host frame];
  [v13 setFrame:?];

  [(_ClientRendererWindow *)v10 setNeedsLayout];
  [(_ClientRendererWindow *)v10 layoutIfNeeded];
  [(_ClientRendererWindow *)v10 setNeedsDisplay];
  [MEMORY[0x277CD9FF0] commit];
  [MEMORY[0x277CD9FF0] flush];
  [(CDComplicationHostingView *)self->_host waitForAsyncRendering];
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  [(CDComplicationHostingView *)self->_host removeFromSuperview];
  [(_ClientRendererWindow *)v10 setHidden:1];
  [(_ClientRendererWindow *)v10 setRootViewController:0];

  objc_autoreleasePoolPop(v9);
  os_unfair_lock_lock(&self->_lock);
  renderTime = self->_renderTime;
  renderCost = self->_renderCost;
  os_unfair_lock_unlock(&self->_lock);
  v8[2](v8, renderTime, renderCost);
}

- (void)_handleRenderStatsTime:(double)a3 cost:(double)a4
{
  os_unfair_lock_lock(&self->_lock);
  self->_renderTime = a3;
  self->_renderCost = a4;

  os_unfair_lock_unlock(&self->_lock);
}

@end