@interface MBProgressDrive
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (MBProgressDrive)initWithScript:(id)script delegate:(id)delegate;
- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion;
@end

@implementation MBProgressDrive

- (MBProgressDrive)initWithScript:(id)script delegate:(id)delegate
{
  scriptCopy = script;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MBProgressDrive;
  v9 = [(MBProgressDrive *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_script, script);
    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathCopy = path;
  v11 = +[MBDriveOperation operationToCreateDirectory];
  [(MBDriveScript *)script performingOperation:v11];

  LOBYTE(error) = [(MBDrive *)self->_delegate createDirectoryAtPath:pathCopy options:optionsCopy error:error];
  return error;
}

- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathCopy = path;
  v11 = +[MBDriveOperation operationForContentsOfDirectory];
  [(MBDriveScript *)script performingOperation:v11];

  v12 = [(MBDrive *)self->_delegate contentsOfDirectoryAtPath:pathCopy options:optionsCopy error:error];

  return v12;
}

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  toPathCopy = toPath;
  pathCopy = path;
  v14 = [MBDriveOperation operationToC0pyItemWithCount:-1 size:-1];
  [(MBDriveScript *)script performingOperation:v14];

  LOBYTE(error) = [(MBDrive *)self->_delegate copyItemAtPath:pathCopy toPath:toPathCopy options:optionsCopy error:error];
  return error;
}

- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathsCopy = paths;
  v13 = +[MBDriveOperation operationToUploadFilesWithCount:size:](MBDriveOperation, "operationToUploadFilesWithCount:size:", [pathsCopy count], -1);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(error) = [(MBDrive *)self->_delegate uploadFilesAtPaths:pathsCopy options:optionsCopy results:results error:error];
  return error;
}

- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion
{
  script = self->_script;
  completionCopy = completion;
  optionsCopy = options;
  batchCopy = batch;
  paths = [batchCopy paths];
  v12 = +[MBDriveOperation operationToUploadFilesWithCount:size:](MBDriveOperation, "operationToUploadFilesWithCount:size:", [paths count], -1);
  [(MBDriveScript *)script performingOperation:v12];

  [(MBDrive *)self->_delegate uploadBatch:batchCopy options:optionsCopy completion:completionCopy];
}

- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathsCopy = paths;
  v13 = +[MBDriveOperation operationToDownloadFilesWithCount:size:](MBDriveOperation, "operationToDownloadFilesWithCount:size:", [pathsCopy count], -1);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(error) = [(MBDrive *)self->_delegate downloadFilesAtPaths:pathsCopy options:optionsCopy results:results error:error];
  return error;
}

- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathsCopy = paths;
  v13 = +[MBDriveOperation operationToMoveItemsWithCount:](MBDriveOperation, "operationToMoveItemsWithCount:", [pathsCopy count]);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(error) = [(MBDrive *)self->_delegate moveItemsAtPaths:pathsCopy options:optionsCopy results:results error:error];
  return error;
}

- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  script = self->_script;
  optionsCopy = options;
  pathsCopy = paths;
  v13 = +[MBDriveOperation operationToRemoveItemsWithCount:](MBDriveOperation, "operationToRemoveItemsWithCount:", [pathsCopy count]);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(error) = [(MBDrive *)self->_delegate removeItemsAtPaths:pathsCopy options:optionsCopy results:results error:error];
  return error;
}

@end