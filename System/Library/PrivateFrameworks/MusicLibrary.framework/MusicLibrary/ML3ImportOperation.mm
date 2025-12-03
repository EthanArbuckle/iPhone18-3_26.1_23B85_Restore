@interface ML3ImportOperation
+ (id)importOperationWithSourceType:(unint64_t)type databaseImport:(id)import;
- (ML3ImportOperation)init;
- (ML3ImportOperation)initWithDatabaseImport:(id)import;
- (id)_clientCompletionHandler;
- (id)longDescription;
- (void)_setClientCompletionHandler:(id)handler;
- (void)_writerTransactionWithBlock:(id)block;
- (void)main;
- (void)setProgress:(float)progress;
@end

@implementation ML3ImportOperation

- (void)_setClientCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [handlerCopy copy];
  clientCompletionHandler = self->_clientCompletionHandler;
  self->_clientCompletionHandler = v4;
}

- (id)_clientCompletionHandler
{
  v2 = MEMORY[0x2318CDB10](self->_clientCompletionHandler, a2);

  return v2;
}

- (void)_writerTransactionWithBlock:(id)block
{
  blockCopy = block;
  writer = [(ML3ServiceDatabaseImport *)self->_import writer];
  v6 = +[ML3Client daemonClient];
  library = [(ML3ServiceDatabaseImport *)self->_import library];
  v13 = 0;
  v8 = [writer beginTransactionForLibrary:library withClient:v6 options:1 error:&v13];
  v9 = v13;

  connection = [v8 connection];
  [connection _setCloseConnectionWhenCheckingIn];

  [v8 setInUseByOperation:1];
  v11 = blockCopy[2](blockCopy, v8, v9);
  [v8 updateLastUsed];
  [v8 setInUseByOperation:0];
  identifier = [v8 identifier];
  [writer endTransaction:identifier shouldCommit:v11 error:0];
}

- (void)setProgress:(float)progress
{
  self->_progress = progress;
  progressBlock = [(ML3ImportOperation *)self progressBlock];

  if (progressBlock)
  {
    progressBlock2 = [(ML3ImportOperation *)self progressBlock];
    progressBlock2[2](progress);
  }
}

- (void)main
{
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Warning: Empty import operation started.", v4, 2u);
  }

  [(ML3ImportOperation *)self setSuccess:1];
}

- (id)longDescription
{
  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = ML3ImportOperation;
  v4 = [(ML3ImportOperation *)&v17 description];
  writer = [(ML3ServiceDatabaseImport *)self->_import writer];
  library = [(ML3ServiceDatabaseImport *)self->_import library];
  trackData = [(ML3DatabaseImport *)self->_import trackData];
  v8 = [trackData length];
  success = self->_success;
  error = self->_error;
  isCancelled = [(ML3ImportOperation *)self isCancelled];
  v12 = @"NO";
  if (success)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (isCancelled)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_suspended)
  {
    v12 = @"YES";
  }

  v15 = [v3 stringWithFormat:@"%@:\n\twriter:             %p\n\tlibrary:            %@\n\timport data size:   %lu\n\tsuccess:            %@\n\terror:              %@\n\n\tcancelled:          %@\n\tsuspended:          %@\n", v4, writer, library, v8, v13, error, v14, v12];

  return v15;
}

- (ML3ImportOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_initWithDatabaseImport_);
  [v3 raise:*MEMORY[0x277CBE648] format:{@"You must provide %@ with a database import. Use %@ instead.", v4, v5}];

  return 0;
}

- (ML3ImportOperation)initWithDatabaseImport:(id)import
{
  importCopy = import;
  if (!importCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"import"}];
  }

  writer = [importCopy writer];

  if (!writer)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"import.writer"}];
  }

  library = [importCopy library];

  if (!library)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"import.library"}];
  }

  v15.receiver = self;
  v15.super_class = ML3ImportOperation;
  v9 = [(ML3ImportOperation *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_import, import);
  }

  return v10;
}

+ (id)importOperationWithSourceType:(unint64_t)type databaseImport:(id)import
{
  importCopy = import;
  if (!importCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"import"}];
  }

  v7 = [objc_alloc(objc_opt_class()) initWithDatabaseImport:importCopy];

  return v7;
}

@end