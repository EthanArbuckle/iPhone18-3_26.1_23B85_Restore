@interface EGStillImageGraph
- (EGStillImageGraph)initWithName:(id)name stillImageSettings:(id)settings delegate:(id)delegate;
- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)captureComplete;
- (void)dealloc;
- (void)didEncounterError:(int)error description:(id)description element:(id)element;
- (void)didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer description:(id)description;
@end

@implementation EGStillImageGraph

- (EGStillImageGraph)initWithName:(id)name stillImageSettings:(id)settings delegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = EGStillImageGraph;
  v7 = [(EGGraph *)&v9 initWithName:name];
  if (v7)
  {
    v7->_stillImageSettings = settings;
    objc_storeWeak(&v7->_weakDelegate, delegate);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageGraph;
  [(EGGraph *)&v3 dealloc];
}

- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sampleBufferEntryPoint = self->_sampleBufferEntryPoint;
  if (sampleBufferEntryPoint)
  {
    return [(EGStillImageGraphSampleBufferEntryPoint *)sampleBufferEntryPoint enqueueSampleBuffer:buffer];
  }

  else
  {
    return -12780;
  }
}

- (void)didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer description:(id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained processingCoordinator:self didFinishProcessingSampleBuffer:buffer description:description];
  }
}

- (void)didEncounterError:(int)error description:(id)description element:(id)element
{
  v6 = *&error;
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained processingCoordinator:self didEncounterError:v6 stillImageSettings:self->_stillImageSettings description:description];
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