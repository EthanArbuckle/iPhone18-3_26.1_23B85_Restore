@interface ML3DatabaseFunctionPointer
- (BOOL)registerWithConnection:(id)a3;
@end

@implementation ML3DatabaseFunctionPointer

- (BOOL)registerWithConnection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_functionPointer)
  {
    v6 = [v4 _sqliteHandle];
    v7 = [(ML3DatabaseFunction *)self name];
    LODWORD(v6) = sqlite3_create_function_v2(v6, [v7 UTF8String], -[ML3DatabaseFunction argumentCount](self, "argumentCount"), 2049, -[ML3DatabaseFunctionPointer userData](self, "userData"), self->_functionPointer, 0, 0, 0);

    if (!v6)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v5 sqliteError];
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error registering function: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

@end