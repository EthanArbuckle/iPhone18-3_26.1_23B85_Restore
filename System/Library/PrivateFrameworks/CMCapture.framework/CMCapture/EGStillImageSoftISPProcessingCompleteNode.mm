@interface EGStillImageSoftISPProcessingCompleteNode
- (EGStillImageSoftISPProcessingCompleteNode)initWithName:(id)name resourceCoordinator:(id)coordinator numInputs:(int)inputs;
- (void)dealloc;
- (void)receiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageSoftISPProcessingCompleteNode

- (EGStillImageSoftISPProcessingCompleteNode)initWithName:(id)name resourceCoordinator:(id)coordinator numInputs:(int)inputs
{
  v14.receiver = self;
  v14.super_class = EGStillImageSoftISPProcessingCompleteNode;
  v7 = [(EGNode *)&v14 initWithName:name];
  if (v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = [[EGInputGroup alloc] initWithName:@"processingCompleteInputs"];
    if (inputs >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [EGInput alloc];
        v12 = -[EGInput initWithName:](v11, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"processingComplete%d", v10]);
        [(EGInputGroup *)v9 installInput:v12];
        [array addObject:v12];
        v10 = (v10 + 1);
      }

      while (inputs != v10);
    }

    [(EGNode *)v7 installInputGroup:v9];
    v7->_processingCompleteInputs = [array copy];
    v7->_resourceCoordinator = coordinator;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSoftISPProcessingCompleteNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)data fromInputGroup:(id)group
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator flushSoftISPOutputBufferPools:data];
  resourceCoordinator = self->_resourceCoordinator;

  [(BWPhotonicEngineNodeResourceCoordinator *)resourceCoordinator flushUltraHighResolutionBufferPools];
}

@end