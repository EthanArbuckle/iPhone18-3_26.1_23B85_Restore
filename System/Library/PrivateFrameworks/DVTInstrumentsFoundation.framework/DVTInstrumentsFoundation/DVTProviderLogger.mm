@interface DVTProviderLogger
- (DVTProviderLogger)initWithProviderName:(id)a3;
- (NSArray)errors;
- (NSArray)warnings;
- (void)failWithReason:(id)a3;
- (void)warnWithMessage:(id)a3;
@end

@implementation DVTProviderLogger

- (DVTProviderLogger)initWithProviderName:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DVTProviderLogger;
  v6 = [(DVTProviderLogger *)&v12 init];
  if (v6)
  {
    if (qword_27EE84200 != -1)
    {
      sub_24802C154();
    }

    objc_storeStrong(&v6->_log, qword_27EE841F8);
    objc_storeStrong(&v6->_providerName, a3);
    v7 = objc_opt_new();
    errors = v6->_errors;
    v6->_errors = v7;

    v9 = objc_opt_new();
    warnings = v6->_warnings;
    v6->_warnings = v9;
  }

  return v6;
}

- (NSArray)errors
{
  v2 = [(NSMutableArray *)self->_errors copy];

  return v2;
}

- (NSArray)warnings
{
  v2 = [(NSMutableArray *)self->_warnings copy];

  return v2;
}

- (void)failWithReason:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCA9B8];
  v11[0] = *MEMORY[0x277CCA450];
  v11[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v12[0] = v4;
  v12[1] = providerName;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v5 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v7];

  [(NSMutableArray *)self->_errors addObject:v8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_24802C17C(v4, log);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)warnWithMessage:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCA9B8];
  v13[0] = *MEMORY[0x277CCA450];
  v13[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v14[0] = v4;
  v14[1] = providerName;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v8 = [v5 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v7];

  [(NSMutableArray *)self->_warnings addObject:v8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_247F67000, log, OS_LOG_TYPE_DEFAULT, "Provider warning: %{public}@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end