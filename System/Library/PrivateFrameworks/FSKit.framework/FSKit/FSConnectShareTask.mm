@interface FSConnectShareTask
- (void)didCompleteWithVolume:(id)volume;
@end

@implementation FSConnectShareTask

- (void)didCompleteWithVolume:(id)volume
{
  objc_storeStrong(&self->_result, volume);

  [(FSTask *)self didCompleteWithError:0];
}

@end