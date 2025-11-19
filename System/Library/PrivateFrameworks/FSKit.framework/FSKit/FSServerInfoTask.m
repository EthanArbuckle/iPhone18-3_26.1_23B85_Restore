@interface FSServerInfoTask
- (void)didCompleteWithServerInfo:(id)a3;
@end

@implementation FSServerInfoTask

- (void)didCompleteWithServerInfo:(id)a3
{
  objc_storeStrong(&self->_result, a3);

  [(FSTask *)self didCompleteWithError:0];
}

@end