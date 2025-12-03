@interface MBErrorInjector
+ (id)errorInjectorForRegex:(id)regex maxFailureCount:(id)count;
- (id)_initWithCompiledExpression:(id)expression maxFailureCount:(id)count;
- (id)errorIfMatches:(id)matches;
@end

@implementation MBErrorInjector

+ (id)errorInjectorForRegex:(id)regex maxFailureCount:(id)count
{
  regexCopy = regex;
  countCopy = count;
  if (MBIsInternalInstall() && [regexCopy length])
  {
    v12 = 0;
    v7 = [NSRegularExpression regularExpressionWithPattern:regexCopy options:0 error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = [[MBErrorInjector alloc] _initWithCompiledExpression:v7 maxFailureCount:countCopy];
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

- (id)_initWithCompiledExpression:(id)expression maxFailureCount:(id)count
{
  expressionCopy = expression;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = MBErrorInjector;
  v9 = [(MBErrorInjector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expression, expression);
    objc_storeStrong(&v10->_maxFailureCount, count);
    atomic_store(0, &v10->_failureCount);
  }

  return v10;
}

- (id)errorIfMatches:(id)matches
{
  matchesCopy = matches;
  if (!-[NSRegularExpression numberOfMatchesInString:options:range:](self->_expression, "numberOfMatchesInString:options:range:", matchesCopy, 0, 0, [matchesCopy length]))
  {
    goto LABEL_5;
  }

  if (!self->_maxFailureCount)
  {
    [MBError errorWithCode:555 path:matchesCopy format:@"Synthetic error for testing", v8, v9];
    goto LABEL_7;
  }

  add = atomic_fetch_add(&self->_failureCount, 1uLL);
  if (add >= [(NSNumber *)self->_maxFailureCount unsignedLongLongValue])
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  [MBError errorWithCode:557 path:matchesCopy format:@"Synthetic retryable error code (%llu/%@)", add + 1, self->_maxFailureCount];
  v6 = LABEL_7:;
LABEL_8:

  return v6;
}

@end