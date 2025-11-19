@interface MBManager
- (MBManager)initWithAccount:(id)a3 delegate:(id)a4 eventQueue:(id)a5;
- (MBManager)initWithAccount:(id)a3 delegate:(id)a4 eventQueue:(id)a5 error:(id *)a6;
- (MBManager)initWithDelegate:(id)a3 eventQueue:(id)a4;
- (MBManager)initWithDelegate:(id)a3 eventQueue:(id)a4 personaIdentifier:(id)a5;
- (MBManagerDelegate)delegate;
- (id)_init;
- (void)fetchAppBundleIDsForSnapshot:(id)a3 completion:(id)a4;
- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)a3;
- (void)fetchRestorableSnapshotsWithCompletion:(id)a3;
- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)a3;
- (void)saveBackgroundRestoreCellularAccess:(id)a3 completion:(id)a4;
- (void)startDataTransferWithPreflightInfo:(id)a3 completionHandler:(id)a4;
- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completionHandler:(id)a4;
- (void)startKeychainDataTransferWithCompletionHandler:(id)a3;
- (void)startPreflightWithCompletionHandler:(id)a3;
- (void)startRestoreForBackupUDID:(id)a3 snapshotID:(unint64_t)a4 options:(id)a5 completion:(id)a6;
- (void)startRestoreForSnapshot:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MBManager

- (MBManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MBManager)initWithDelegate:(id)a3 eventQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MBXPCClient alloc] initWithDelegate:v7 eventQueue:v6];

  return &v8->super;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MBManager;
  return [(MBManager *)&v3 init];
}

- (MBManager)initWithDelegate:(id)a3 eventQueue:(id)a4 personaIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MBXPCClient alloc] initWithDelegate:v10 eventQueue:v9 personaIdentifier:v8];

  return &v11->super;
}

- (MBManager)initWithAccount:(id)a3 delegate:(id)a4 eventQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MBXPCClient alloc] initWithAccount:v10 delegate:v9 eventQueue:v8];

  return &v11->super;
}

- (MBManager)initWithAccount:(id)a3 delegate:(id)a4 eventQueue:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MBXPCClient alloc] initWithAccount:v12 delegate:v11 eventQueue:v10 error:a6];

  return &v13->super;
}

- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)a3
{
  v5 = a3;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v5 + 2))(v5, 0, 0);
}

- (void)saveBackgroundRestoreCellularAccess:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)a3
{
  v5 = a3;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v5 + 2))(v5, 0, 0);
}

- (void)startRestoreForBackupUDID:(id)a3 snapshotID:(unint64_t)a4 options:(id)a5 completion:(id)a6
{
  v8 = a6;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  v8[2](v8, 0);
}

- (void)fetchAppBundleIDsForSnapshot:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v6 + 2))(v6, 0, 0);
}

- (void)fetchRestorableSnapshotsWithCompletion:(id)a3
{
  v5 = a3;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v5 + 2))(v5, 0, 0);
}

- (void)startRestoreForSnapshot:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  v7[2](v7, 0);
}

- (void)startPreflightWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v5 + 2))(v5, 0, 0);
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(v5 + 2))(v5, 0, 0);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

- (void)startDataTransferWithPreflightInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

@end