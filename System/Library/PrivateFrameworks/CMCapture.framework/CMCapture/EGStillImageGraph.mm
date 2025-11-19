@interface EGStillImageGraph
- (EGStillImageGraph)initWithName:(id)a3 stillImageSettings:(id)a4 delegate:(id)a5;
- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)captureComplete;
- (void)dealloc;
- (void)didEncounterError:(int)a3 description:(id)a4 element:(id)a5;
- (void)didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a3 description:(id)a4;
@end

@implementation EGStillImageGraph

- (EGStillImageGraph)initWithName:(id)a3 stillImageSettings:(id)a4 delegate:(id)a5
{
  v9.receiver = self;
  v9.super_class = EGStillImageGraph;
  v7 = [(EGGraph *)&v9 initWithName:a3];
  if (v7)
  {
    v7->_stillImageSettings = a4;
    objc_storeWeak(&v7->_weakDelegate, a5);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageGraph;
  [(EGGraph *)&v3 dealloc];
}

- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  sampleBufferEntryPoint = self->_sampleBufferEntryPoint;
  if (sampleBufferEntryPoint)
  {
    return [(EGStillImageGraphSampleBufferEntryPoint *)sampleBufferEntryPoint enqueueSampleBuffer:a3];
  }

  else
  {
    return -12780;
  }
}

- (void)didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a3 description:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained processingCoordinator:self didFinishProcessingSampleBuffer:a3 description:a4];
  }
}

- (void)didEncounterError:(int)a3 description:(id)a4 element:(id)a5
{
  v6 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained processingCoordinator:self didEncounterError:v6 stillImageSettings:self->_stillImageSettings description:a4];
  }
}

- (void)captureComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained processingCoordinatorComplete:self];
  }
}

@end