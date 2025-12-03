@interface PARTask
- (PARSession)session;
- (void)resume;
@end

@implementation PARTask

- (void)resume
{
  session = [(PARTask *)self session];
  [session loadTask:self];
}

- (PARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end