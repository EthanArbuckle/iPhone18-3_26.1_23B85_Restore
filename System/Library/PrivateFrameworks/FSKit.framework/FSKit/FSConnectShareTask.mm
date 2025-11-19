@interface FSConnectShareTask
- (void)didCompleteWithVolume:(id)a3;
@end

@implementation FSConnectShareTask

- (void)didCompleteWithVolume:(id)a3
{
  objc_storeStrong(&self->_result, a3);

  [(FSTask *)self didCompleteWithError:0];
}

@end