@interface ML3DatabaseFunctionPointer
- (BOOL)registerWithConnection:(id)connection;
@end

@implementation ML3DatabaseFunctionPointer

- (BOOL)registerWithConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = connectionCopy;
  if (self->_functionPointer)
  {
    _sqliteHandle = [connectionCopy _sqliteHandle];
    name = [(ML3DatabaseFunction *)self name];
    LODWORD(_sqliteHandle) = sqlite3_create_function_v2(_sqliteHandle, [name UTF8String], -[ML3DatabaseFunction argumentCount](self, "argumentCount"), 2049, -[ML3DatabaseFunctionPointer userData](self, "userData"), self->_functionPointer, 0, 0, 0);

    if (!_sqliteHandle)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      sqliteError = [v5 sqliteError];
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = sqliteError;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error registering function: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

@end