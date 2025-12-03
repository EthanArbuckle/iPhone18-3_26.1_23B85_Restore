@interface DMCRFMBRestoreDelegate
- (DMCRFMBRestoreDelegate)initWithDelegate:(id)delegate source:(id)source;
- (DMCRFSnapshotSource)snapshotSource;
- (DMCRFSnapshotSourceDelegate)delegate;
- (void)managerDidFinishRestore:(id)restore;
@end

@implementation DMCRFMBRestoreDelegate

- (DMCRFMBRestoreDelegate)initWithDelegate:(id)delegate source:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = DMCRFMBRestoreDelegate;
  v8 = [(DMCRFMBRestoreDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_snapshotSource, sourceCopy);
  }

  return v9;
}

- (void)managerDidFinishRestore:(id)restore
{
  v4 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "managed restore, DMCRFMBRestoreDelegate calling linked delegate", v7, 2u);
  }

  delegate = [(DMCRFMBRestoreDelegate *)self delegate];
  snapshotSource = [(DMCRFMBRestoreDelegate *)self snapshotSource];
  [delegate snapshotSourceDidFinishRestore:snapshotSource];
}

- (DMCRFSnapshotSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DMCRFSnapshotSource)snapshotSource
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotSource);

  return WeakRetained;
}

@end