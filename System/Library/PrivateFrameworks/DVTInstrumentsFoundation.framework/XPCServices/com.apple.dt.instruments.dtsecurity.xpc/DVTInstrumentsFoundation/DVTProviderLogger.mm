@interface DVTProviderLogger
- (DVTProviderLogger)initWithProviderName:(id)name;
- (NSArray)errors;
- (NSArray)warnings;
- (void)failWithReason:(id)reason;
- (void)warnWithMessage:(id)message;
@end

@implementation DVTProviderLogger

- (DVTProviderLogger)initWithProviderName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = DVTProviderLogger;
  v6 = [(DVTProviderLogger *)&v12 init];
  if (v6)
  {
    if (qword_100021B88 != -1)
    {
      sub_100012CAC();
    }

    objc_storeStrong(&v6->_log, qword_100021B80);
    objc_storeStrong(&v6->_providerName, name);
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

- (void)failWithReason:(id)reason
{
  reasonCopy = reason;
  v9[0] = NSLocalizedDescriptionKey;
  v9[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v10[0] = reasonCopy;
  v10[1] = providerName;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [NSError errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v6];

  [(NSMutableArray *)self->_errors addObject:v7];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100012CD4(reasonCopy, log);
  }
}

- (void)warnWithMessage:(id)message
{
  messageCopy = message;
  v11[0] = NSLocalizedDescriptionKey;
  v11[1] = @"DVTKtraceSessionProviderName";
  providerName = self->_providerName;
  v12[0] = messageCopy;
  v12[1] = providerName;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [NSError errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v6];

  [(NSMutableArray *)self->_warnings addObject:v7];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = messageCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Provider warning: %{public}@", &v9, 0xCu);
  }
}

@end