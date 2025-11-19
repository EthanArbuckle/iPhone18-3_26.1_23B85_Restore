@interface ML3ImportOperation
+ (id)importOperationWithSourceType:(unint64_t)a3 databaseImport:(id)a4;
- (ML3ImportOperation)init;
- (ML3ImportOperation)initWithDatabaseImport:(id)a3;
- (id)_clientCompletionHandler;
- (id)longDescription;
- (void)_setClientCompletionHandler:(id)a3;
- (void)_writerTransactionWithBlock:(id)a3;
- (void)main;
- (void)setProgress:(float)a3;
@end

@implementation ML3ImportOperation

- (void)_setClientCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  clientCompletionHandler = self->_clientCompletionHandler;
  self->_clientCompletionHandler = v4;
}

- (id)_clientCompletionHandler
{
  v2 = MEMORY[0x2318CDB10](self->_clientCompletionHandler, a2);

  return v2;
}

- (void)_writerTransactionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ML3ServiceDatabaseImport *)self->_import writer];
  v6 = +[ML3Client daemonClient];
  v7 = [(ML3ServiceDatabaseImport *)self->_import library];
  v13 = 0;
  v8 = [v5 beginTransactionForLibrary:v7 withClient:v6 options:1 error:&v13];
  v9 = v13;

  v10 = [v8 connection];
  [v10 _setCloseConnectionWhenCheckingIn];

  [v8 setInUseByOperation:1];
  v11 = v4[2](v4, v8, v9);
  [v8 updateLastUsed];
  [v8 setInUseByOperation:0];
  v12 = [v8 identifier];
  [v5 endTransaction:v12 shouldCommit:v11 error:0];
}

- (void)setProgress:(float)a3
{
  self->_progress = a3;
  v5 = [(ML3ImportOperation *)self progressBlock];

  if (v5)
  {
    v6 = [(ML3ImportOperation *)self progressBlock];
    v6[2](a3);
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
  v5 = [(ML3ServiceDatabaseImport *)self->_import writer];
  v6 = [(ML3ServiceDatabaseImport *)self->_import library];
  v7 = [(ML3DatabaseImport *)self->_import trackData];
  v8 = [v7 length];
  success = self->_success;
  error = self->_error;
  v11 = [(ML3ImportOperation *)self isCancelled];
  v12 = @"NO";
  if (success)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (v11)
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

  v15 = [v3 stringWithFormat:@"%@:\n\twriter:             %p\n\tlibrary:            %@\n\timport data size:   %lu\n\tsuccess:            %@\n\terror:              %@\n\n\tcancelled:          %@\n\tsuspended:          %@\n", v4, v5, v6, v8, v13, error, v14, v12];

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

- (ML3ImportOperation)initWithDatabaseImport:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"import"}];
  }

  v7 = [v6 writer];

  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"import.writer"}];
  }

  v8 = [v6 library];

  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ML3ImportOperation.mm" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"import.library"}];
  }

  v15.receiver = self;
  v15.super_class = ML3ImportOperation;
  v9 = [(ML3ImportOperation *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_import, a3);
  }

  return v10;
}

+ (id)importOperationWithSourceType:(unint64_t)a3 databaseImport:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"ML3ImportOperation.mm" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"import"}];
  }

  v7 = [objc_alloc(objc_opt_class()) initWithDatabaseImport:v6];

  return v7;
}

@end