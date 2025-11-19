@interface ScaleTestProcessor
- (BOOL)startPageAction:(id)a3;
- (void)doneRendering:(id)a3;
@end

@implementation ScaleTestProcessor

- (BOOL)startPageAction:(id)a3
{
  v4 = *(&self->super._showRenderFps + 1);
  v5 = a3;
  v6 = [(PageLoadTestRunner *)self browserController];
  LODWORD(v7) = v4;
  [v6 setZoomScale:v7];

  v8 = [MEMORY[0x277CBEAA8] date];
  [v5 startRenderTime:v8];

  [(ScaleTestProcessor *)self performSelector:sel_doneRendering_ withObject:v5 afterDelay:0.0];
  return 1;
}

- (void)doneRendering:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v5 = [v4 date];
  [v6 finishRenderTime:v5];

  [(PageLoadTestRunner *)self finishPage:v6 stats:0 error:0];
}

@end