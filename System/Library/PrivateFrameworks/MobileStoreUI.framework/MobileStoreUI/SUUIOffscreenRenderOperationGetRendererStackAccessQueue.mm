@interface SUUIOffscreenRenderOperationGetRendererStackAccessQueue
@end

@implementation SUUIOffscreenRenderOperationGetRendererStackAccessQueue

uint64_t ___SUUIOffscreenRenderOperationGetRendererStackAccessQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIOffscreenRenderOperation.RendererStackAccessQueue", MEMORY[0x277D85CD8]);
  v1 = _SUUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue;
  _SUUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end