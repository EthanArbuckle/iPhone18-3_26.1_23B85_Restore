@interface NSException(GC)
+ (id)gc_exceptionWithName:()GC error:;
- (id)gc_error;
@end

@implementation NSException(GC)

+ (id)gc_exceptionWithName:()GC error:
{
  userInfo = [a4 userInfo];
  v8 = [userInfo mutableCopy];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v9, v10];
LABEL_8:
    v13 = v12;
    goto LABEL_9;
  }

  if (v9)
  {
    v12 = v9;
    goto LABEL_8;
  }

  if (v10)
  {
    v12 = v10;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:
  domain = [a4 domain];
  if (domain)
  {
    [v8 setObject:domain forKey:@"GC_NSExceptionErrorDomain"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a4, "code")}];
  [v8 setObject:v15 forKey:@"GC_NSExceptionErrorCode"];

  v16 = [self exceptionWithName:a3 reason:v13 userInfo:v8];

  return v16;
}

- (id)gc_error
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"GC_NSExceptionErrorDomain"];

  userInfo2 = [self userInfo];
  v5 = [userInfo2 gc_objectForKey:@"GC_NSExceptionErrorCode" ofClass:objc_opt_class() error:0];
  integerValue = [v5 integerValue];

  userInfo3 = [self userInfo];
  v8 = [userInfo3 mutableCopy];

  [v8 removeObjectForKey:@"GC_NSExceptionErrorDomain"];
  [v8 removeObjectForKey:@"GC_NSExceptionErrorCode"];
  v9 = *MEMORY[0x1E696A578];
  v10 = [v8 objectForKey:*MEMORY[0x1E696A578]];

  if (!v10)
  {
    name = [self name];
    v12 = name;
    if (name)
    {
      v13 = name;
    }

    else
    {
      v13 = @"Exception";
    }

    [v8 setObject:v13 forKey:v9];
  }

  v14 = *MEMORY[0x1E696A588];
  reason2 = [v8 objectForKey:*MEMORY[0x1E696A588]];
  if (!reason2)
  {
    reason = [self reason];

    if (!reason)
    {
      goto LABEL_10;
    }

    reason2 = [self reason];
    [v8 setObject:reason2 forKey:v14];
  }

LABEL_10:
  if (v3)
  {
    v17 = v3;
  }

  else
  {
    v17 = @"NSExceptionErrorDomain";
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v17 code:integerValue userInfo:v8];

  return v18;
}

@end