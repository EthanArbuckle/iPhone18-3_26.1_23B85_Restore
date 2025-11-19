@interface FigBWNodeRenderObserver
- (FigBWNodeRenderObserver)initWithBWNode:(id)a3;
- (void)dealloc;
- (void)node:(id)a3 format:(id)a4 didBecomeLiveForInput:(id)a5 configurationID:(int64_t)a6;
- (void)node:(id)a3 willRenderSampleBuffer:(opaqueCMSampleBuffer *)a4 forInput:(id)a5;
@end

@implementation FigBWNodeRenderObserver

- (FigBWNodeRenderObserver)initWithBWNode:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigBWNodeRenderObserver;
  v4 = [(FigBWNodeRenderObserver *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_node = v5;
    [(BWNode *)v5 setRenderDelegate:v4];
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

- (void)node:(id)a3 willRenderSampleBuffer:(opaqueCMSampleBuffer *)a4 forInput:(id)a5
{
  willRenderSampleBufferHandler = self->_willRenderSampleBufferHandler;
  if (willRenderSampleBufferHandler)
  {
    willRenderSampleBufferHandler[2](willRenderSampleBufferHandler, a4, a5);
  }
}

- (void)node:(id)a3 format:(id)a4 didBecomeLiveForInput:(id)a5 configurationID:(int64_t)a6
{
  formatDidBecomeLiveHandler = self->_formatDidBecomeLiveHandler;
  if (formatDidBecomeLiveHandler)
  {
    formatDidBecomeLiveHandler[2](formatDidBecomeLiveHandler, a4, a5, a6);
  }
}

@end