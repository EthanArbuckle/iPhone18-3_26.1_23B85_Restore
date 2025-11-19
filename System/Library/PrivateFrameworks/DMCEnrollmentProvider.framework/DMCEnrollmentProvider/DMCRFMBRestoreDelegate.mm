@interface DMCRFMBRestoreDelegate
- (DMCRFMBRestoreDelegate)initWithDelegate:(id)a3 source:(id)a4;
- (DMCRFSnapshotSource)snapshotSource;
- (DMCRFSnapshotSourceDelegate)delegate;
- (void)managerDidFinishRestore:(id)a3;
@end

@implementation DMCRFMBRestoreDelegate

- (DMCRFMBRestoreDelegate)initWithDelegate:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DMCRFMBRestoreDelegate;
  v8 = [(DMCRFMBRestoreDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_snapshotSource, v7);
  }

  return v9;
}

- (void)managerDidFinishRestore:(id)a3
{
  v4 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "managed restore, DMCRFMBRestoreDelegate calling linked delegate", v7, 2u);
  }

  v5 = [(DMCRFMBRestoreDelegate *)self delegate];
  v6 = [(DMCRFMBRestoreDelegate *)self snapshotSource];
  [v5 snapshotSourceDidFinishRestore:v6];
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