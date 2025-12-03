@interface FigCaptureRemoteQueueSinkPipeline
- (void)dealloc;
- (void)setSinkNode:(id)node;
- (void)updateClientAuditToken:(id *)token;
@end

@implementation FigCaptureRemoteQueueSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureRemoteQueueSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)setSinkNode:(id)node
{
  if (self->_sinkNode)
  {
    [FigCaptureRemoteQueueSinkPipeline setSinkNode:];
  }

  self->_sinkNode = node;
}

- (void)updateClientAuditToken:(id *)token
{
  sinkNode = self->_sinkNode;
  v4 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v4;
  [(BWRemoteQueueSinkNode *)sinkNode updateClientAuditToken:v5];
}

@end