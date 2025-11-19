@interface PARTask
- (PARSession)session;
- (void)resume;
@end

@implementation PARTask

- (void)resume
{
  v3 = [(PARTask *)self session];
  [v3 loadTask:self];
}

- (PARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end