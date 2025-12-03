@interface ScaleTestProcessor
- (BOOL)startPageAction:(id)action;
- (void)doneRendering:(id)rendering;
@end

@implementation ScaleTestProcessor

- (BOOL)startPageAction:(id)action
{
  v4 = *(&self->super._showRenderFps + 1);
  actionCopy = action;
  browserController = [(PageLoadTestRunner *)self browserController];
  LODWORD(v7) = v4;
  [browserController setZoomScale:v7];

  date = [MEMORY[0x277CBEAA8] date];
  [actionCopy startRenderTime:date];

  [(ScaleTestProcessor *)self performSelector:sel_doneRendering_ withObject:actionCopy afterDelay:0.0];
  return 1;
}

- (void)doneRendering:(id)rendering
{
  v4 = MEMORY[0x277CBEAA8];
  renderingCopy = rendering;
  date = [v4 date];
  [renderingCopy finishRenderTime:date];

  [(PageLoadTestRunner *)self finishPage:renderingCopy stats:0 error:0];
}

@end