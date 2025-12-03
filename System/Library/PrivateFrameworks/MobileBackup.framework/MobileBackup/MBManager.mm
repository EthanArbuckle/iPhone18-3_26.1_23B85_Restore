@interface MBManager
- (MBManager)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue;
- (MBManager)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue error:(id *)error;
- (MBManager)initWithDelegate:(id)delegate eventQueue:(id)queue;
- (MBManager)initWithDelegate:(id)delegate eventQueue:(id)queue personaIdentifier:(id)identifier;
- (MBManagerDelegate)delegate;
- (id)_init;
- (void)fetchAppBundleIDsForSnapshot:(id)snapshot completion:(id)completion;
- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)completion;
- (void)fetchRestorableSnapshotsWithCompletion:(id)completion;
- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)completion;
- (void)saveBackgroundRestoreCellularAccess:(id)access completion:(id)completion;
- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataTransferWithCompletionHandler:(id)handler;
- (void)startPreflightWithCompletionHandler:(id)handler;
- (void)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD options:(id)options completion:(id)completion;
- (void)startRestoreForSnapshot:(id)snapshot options:(id)options completion:(id)completion;
@end

@implementation MBManager

- (MBManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MBManager)initWithDelegate:(id)delegate eventQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = [[MBXPCClient alloc] initWithDelegate:delegateCopy eventQueue:queueCopy];

  return &v8->super;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MBManager;
  return [(MBManager *)&v3 init];
}

- (MBManager)initWithDelegate:(id)delegate eventQueue:(id)queue personaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  delegateCopy = delegate;
  v11 = [[MBXPCClient alloc] initWithDelegate:delegateCopy eventQueue:queueCopy personaIdentifier:identifierCopy];

  return &v11->super;
}

- (MBManager)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  accountCopy = account;
  v11 = [[MBXPCClient alloc] initWithAccount:accountCopy delegate:delegateCopy eventQueue:queueCopy];

  return &v11->super;
}

- (MBManager)initWithAccount:(id)account delegate:(id)delegate eventQueue:(id)queue error:(id *)error
{
  queueCopy = queue;
  delegateCopy = delegate;
  accountCopy = account;
  v13 = [[MBXPCClient alloc] initWithAccount:accountCopy delegate:delegateCopy eventQueue:queueCopy error:error];

  return &v13->super;
}

- (void)fetchiCloudRestoreIsCompleteWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)saveBackgroundRestoreCellularAccess:(id)access completion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)fetchBackgroundRestoreCellularAccessWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)startRestoreForBackupUDID:(id)d snapshotID:(unint64_t)iD options:(id)options completion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)fetchAppBundleIDsForSnapshot:(id)snapshot completion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)fetchRestorableSnapshotsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)startRestoreForSnapshot:(id)snapshot options:(id)options completion:(id)completion
{
  completionCopy = completion;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)startPreflightWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  handlerCopy[2](handlerCopy, 0);
}

- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBManager *)self doesNotRecognizeSelector:a2];
  handlerCopy[2](handlerCopy, 0);
}

@end