@interface FigBWNodeRenderObserver
- (FigBWNodeRenderObserver)initWithBWNode:(id)node;
- (void)dealloc;
- (void)node:(id)node format:(id)format didBecomeLiveForInput:(id)input configurationID:(int64_t)d;
- (void)node:(id)node willRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation FigBWNodeRenderObserver

- (FigBWNodeRenderObserver)initWithBWNode:(id)node
{
  v7.receiver = self;
  v7.super_class = FigBWNodeRenderObserver;
  v4 = [(FigBWNodeRenderObserver *)&v7 init];
  if (v4)
  {
    nodeCopy = node;
    v4->_node = nodeCopy;
    [(BWNode *)nodeCopy setRenderDelegate:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(BWNode *)self->_node setRenderDelegate:0];

  v3.receiver = self;
  v3.super_class = FigBWNodeRenderObserver;
  [(FigBWNodeRenderObserver *)&v3 dealloc];
}

- (void)node:(id)node willRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  willRenderSampleBufferHandler = self->_willRenderSampleBufferHandler;
  if (willRenderSampleBufferHandler)
  {
    willRenderSampleBufferHandler[2](willRenderSampleBufferHandler, buffer, input);
  }
}

- (void)node:(id)node format:(id)format didBecomeLiveForInput:(id)input configurationID:(int64_t)d
{
  formatDidBecomeLiveHandler = self->_formatDidBecomeLiveHandler;
  if (formatDidBecomeLiveHandler)
  {
    formatDidBecomeLiveHandler[2](formatDidBecomeLiveHandler, format, input, d);
  }
}

@end