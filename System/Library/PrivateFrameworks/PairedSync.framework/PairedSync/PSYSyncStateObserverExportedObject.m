@interface PSYSyncStateObserverExportedObject
- (PSYSyncStateObserverInterface)delegate;
- (void)didUpdateSyncForPairingID:(id)a3;
@end

@implementation PSYSyncStateObserverExportedObject

- (void)didUpdateSyncForPairingID:(id)a3
{
  v4 = a3;
  v5 = [(PSYSyncStateObserverExportedObject *)self delegate];
  [v5 didUpdateSyncForPairingID:v4];
}

- (PSYSyncStateObserverInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end