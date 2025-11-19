@interface FSServerSessionInfoTask
- (void)didCompleteWithServerSessionInfo:(id)a3;
@end

@implementation FSServerSessionInfoTask

- (void)didCompleteWithServerSessionInfo:(id)a3
{
  objc_storeStrong(&self->_result, a3);

  [(FSTask *)self didCompleteWithError:0];
}

@end