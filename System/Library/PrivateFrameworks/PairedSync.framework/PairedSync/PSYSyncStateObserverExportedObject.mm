@interface PSYSyncStateObserverExportedObject
- (PSYSyncStateObserverInterface)delegate;
- (void)didUpdateSyncForPairingID:(id)d;
@end

@implementation PSYSyncStateObserverExportedObject

- (void)didUpdateSyncForPairingID:(id)d
{
  dCopy = d;
  delegate = [(PSYSyncStateObserverExportedObject *)self delegate];
  [delegate didUpdateSyncForPairingID:dCopy];
}

- (PSYSyncStateObserverInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end