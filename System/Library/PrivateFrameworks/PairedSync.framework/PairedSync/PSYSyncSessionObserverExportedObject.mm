@interface PSYSyncSessionObserverExportedObject
- (PSYSyncSessionObserverInterface)delegate;
- (void)invalidateSyncSession:(id)a3;
- (void)syncSessionWillStart:(id)a3;
- (void)updateSyncSession:(id)a3;
@end

@implementation PSYSyncSessionObserverExportedObject

- (void)syncSessionWillStart:(id)a3
{
  v4 = a3;
  v5 = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [v5 syncSessionWillStart:v4];
}

- (void)updateSyncSession:(id)a3
{
  v4 = a3;
  v5 = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [v5 updateSyncSession:v4];
}

- (void)invalidateSyncSession:(id)a3
{
  v4 = a3;
  v5 = [(PSYSyncSessionObserverExportedObject *)self delegate];
  [v5 invalidateSyncSession:v4];
}

- (PSYSyncSessionObserverInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end