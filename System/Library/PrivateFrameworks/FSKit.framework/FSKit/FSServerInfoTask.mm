@interface FSServerInfoTask
- (void)didCompleteWithServerInfo:(id)info;
@end

@implementation FSServerInfoTask

- (void)didCompleteWithServerInfo:(id)info
{
  objc_storeStrong(&self->_result, info);

  [(FSTask *)self didCompleteWithError:0];
}

@end