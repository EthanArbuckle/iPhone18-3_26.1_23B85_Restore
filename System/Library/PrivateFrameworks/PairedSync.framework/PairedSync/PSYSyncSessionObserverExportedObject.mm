@interface PSYSyncSessionObserverExportedObject
- (PSYSyncSessionObserverInterface)delegate;
- (void)invalidateSyncSession:(id)session;
- (void)syncSessionWillStart:(id)start;
- (void)updateSyncSession:(id)session;
@end

@implementation PSYSyncSessionObserverExportedObject

- (void)syncSessionWillStart:(id)start
{
  startCopy = start;
  delegate = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [delegate syncSessionWillStart:startCopy];
}

- (void)updateSyncSession:(id)session
{
  sessionCopy = session;
  delegate = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [delegate updateSyncSession:sessionCopy];
}

- (void)invalidateSyncSession:(id)session
{
  sessionCopy = session;
  delegate = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [delegate invalidateSyncSession:sessionCopy];
}

- (PSYSyncSessionObserverInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end