@interface FSServerSessionInfoTask
- (void)didCompleteWithServerSessionInfo:(id)info;
@end

@implementation FSServerSessionInfoTask

- (void)didCompleteWithServerSessionInfo:(id)info
{
  objc_storeStrong(&self->_result, info);

  [(FSTask *)self didCompleteWithError:0];
}

@end