@interface FigCaptureRemoteQueueSinkPipeline
- (void)dealloc;
- (void)setSinkNode:(id)a3;
- (void)updateClientAuditToken:(id *)a3;
@end

@implementation FigCaptureRemoteQueueSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureRemoteQueueSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)setSinkNode:(id)a3
{
  if (self->_sinkNode)
  {
    [FigCaptureRemoteQueueSinkPipeline setSinkNode:];
  }

  self->_sinkNode = a3;
}

- (void)updateClientAuditToken:(id *)a3
{
  sinkNode = self->_sinkNode;
  v4 = *&a3->var0[4];
  v5[0] = *a3->var0;
  v5[1] = v4;
  [(BWRemoteQueueSinkNode *)sinkNode updateClientAuditToken:v5];
}

@end