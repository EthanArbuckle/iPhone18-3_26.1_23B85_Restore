@interface EGStillImageSoftISPProcessingCompleteNode
- (EGStillImageSoftISPProcessingCompleteNode)initWithName:(id)a3 resourceCoordinator:(id)a4 numInputs:(int)a5;
- (void)dealloc;
- (void)receiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageSoftISPProcessingCompleteNode

- (EGStillImageSoftISPProcessingCompleteNode)initWithName:(id)a3 resourceCoordinator:(id)a4 numInputs:(int)a5
{
  v14.receiver = self;
  v14.super_class = EGStillImageSoftISPProcessingCompleteNode;
  v7 = [(EGNode *)&v14 initWithName:a3];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [[EGInputGroup alloc] initWithName:@"processingCompleteInputs"];
    if (a5 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [EGInput alloc];
        v12 = -[EGInput initWithName:](v11, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"processingComplete%d", v10]);
        [(EGInputGroup *)v9 installInput:v12];
        [v8 addObject:v12];
        v10 = (v10 + 1);
      }

      while (a5 != v10);
    }

    [(EGNode *)v7 installInputGroup:v9];
    v7->_processingCompleteInputs = [v8 copy];
    v7->_resourceCoordinator = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSoftISPProcessingCompleteNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)a3 fromInputGroup:(id)a4
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator flushSoftISPOutputBufferPools:a3];
  resourceCoordinator = self->_resourceCoordinator;

  [(BWPhotonicEngineNodeResourceCoordinator *)resourceCoordinator flushUltraHighResolutionBufferPools];
}

@end