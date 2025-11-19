@interface MBErrorInjector
+ (id)errorInjectorForRegex:(id)a3 maxFailureCount:(id)a4;
- (id)_initWithCompiledExpression:(id)a3 maxFailureCount:(id)a4;
- (id)errorIfMatches:(id)a3;
@end

@implementation MBErrorInjector

+ (id)errorInjectorForRegex:(id)a3 maxFailureCount:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MBIsInternalInstall() && [v5 length])
  {
    v12 = 0;
    v7 = [NSRegularExpression regularExpressionWithPattern:v5 options:0 error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = [[MBErrorInjector alloc] _initWithCompiledExpression:v7 maxFailureCount:v6];
    }

    else
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=error-injection= Failed to compile regex: %@", buf, 0xCu);
        _MBLog();
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithCompiledExpression:(id)a3 maxFailureCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBErrorInjector;
  v9 = [(MBErrorInjector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expression, a3);
    objc_storeStrong(&v10->_maxFailureCount, a4);
    atomic_store(0, &v10->_failureCount);
  }

  return v10;
}

- (id)errorIfMatches:(id)a3
{
  v4 = a3;
  if (!-[NSRegularExpression numberOfMatchesInString:options:range:](self->_expression, "numberOfMatchesInString:options:range:", v4, 0, 0, [v4 length]))
  {
    goto LABEL_5;
  }

  if (!self->_maxFailureCount)
  {
    [MBError errorWithCode:555 path:v4 format:@"Synthetic error for testing", v8, v9];
    goto LABEL_7;
  }

  add = atomic_fetch_add(&self->_failureCount, 1uLL);
  if (add >= [(NSNumber *)self->_maxFailureCount unsignedLongLongValue])
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  [MBError errorWithCode:557 path:v4 format:@"Synthetic retryable error code (%llu/%@)", add + 1, self->_maxFailureCount];
  v6 = LABEL_7:;
LABEL_8:

  return v6;
}

@end