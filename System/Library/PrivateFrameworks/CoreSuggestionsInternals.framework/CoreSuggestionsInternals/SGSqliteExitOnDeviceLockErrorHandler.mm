@interface SGSqliteExitOnDeviceLockErrorHandler
- (SGSqliteExitOnDeviceLockErrorHandler)initWithExitCode:(int)code;
- (void)exitOnErrorIndicatingIOError:(int)error;
@end

@implementation SGSqliteExitOnDeviceLockErrorHandler

- (void)exitOnErrorIndicatingIOError:(int)error
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = sqlite3_errstr(error);
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Exiting due to SQLite error: %s", &v6, 0xCu);
  }

  SGDExit(self->_exitCode);
}

- (SGSqliteExitOnDeviceLockErrorHandler)initWithExitCode:(int)code
{
  v5.receiver = self;
  v5.super_class = SGSqliteExitOnDeviceLockErrorHandler;
  result = [(SGSqliteExitOnDeviceLockErrorHandler *)&v5 init];
  if (result)
  {
    result->_exitCode = code;
  }

  return result;
}

@end