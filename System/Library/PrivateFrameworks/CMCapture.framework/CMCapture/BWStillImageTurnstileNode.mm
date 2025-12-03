@interface BWStillImageTurnstileNode
- (BWStillImageTurnstileNode)initWithStillImageCoordinator:(id)coordinator;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageTurnstileNode

- (BWStillImageTurnstileNode)initWithStillImageCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = BWStillImageTurnstileNode;
  v4 = [(BWNode *)&v10 init];
  if (v4)
  {
    v4->_stillImageCoordinator = coordinator;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v5 setFormatRequirements:v6];

    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(BWNode *)v4 addInput:v5];

    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    v8 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v7 setFormatRequirements:v8];
    [(BWNodeOutput *)v7 setPassthroughMode:1];

    [(BWNode *)v4 addOutput:v7];
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageTurnstileNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  [(BWStillImageCoordinatorNode *)self->_stillImageCoordinator clientReceivedPayloadForSettings:CMGetAttachment(buffer status:@"StillImageSettings" clientIsMidStillImageGraph:0), 0, 1];
  output = self->super._output;

  [(BWNodeOutput *)output emitSampleBuffer:buffer];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  -[BWStillImageCoordinatorNode clientReceivedPayloadForSettings:status:clientIsMidStillImageGraph:](self->_stillImageCoordinator, "clientReceivedPayloadForSettings:status:clientIsMidStillImageGraph:", [objc_msgSend(error "stillImageSettings")], objc_msgSend(error, "errorCode"), 1);
  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error];
}

@end