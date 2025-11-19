@interface NSException(GC)
+ (id)gc_exceptionWithName:()GC error:;
- (id)gc_error;
@end

@implementation NSException(GC)

+ (id)gc_exceptionWithName:()GC error:
{
  v7 = [a4 userInfo];
  v8 = [v7 mutableCopy];

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
  v14 = [a4 domain];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"GC_NSExceptionErrorDomain"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a4, "code")}];
  [v8 setObject:v15 forKey:@"GC_NSExceptionErrorCode"];

  v16 = [a1 exceptionWithName:a3 reason:v13 userInfo:v8];

  return v16;
}

- (id)gc_error
{
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"GC_NSExceptionErrorDomain"];

  v4 = [a1 userInfo];
  v5 = [v4 gc_objectForKey:@"GC_NSExceptionErrorCode" ofClass:objc_opt_class() error:0];
  v6 = [v5 integerValue];

  v7 = [a1 userInfo];
  v8 = [v7 mutableCopy];

  [v8 removeObjectForKey:@"GC_NSExceptionErrorDomain"];
  [v8 removeObjectForKey:@"GC_NSExceptionErrorCode"];
  v9 = *MEMORY[0x1E696A578];
  v10 = [v8 objectForKey:*MEMORY[0x1E696A578]];

  if (!v10)
  {
    v11 = [a1 name];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"Exception";
    }

    [v8 setObject:v13 forKey:v9];
  }

  v14 = *MEMORY[0x1E696A588];
  v15 = [v8 objectForKey:*MEMORY[0x1E696A588]];
  if (!v15)
  {
    v16 = [a1 reason];

    if (!v16)
    {
      goto LABEL_10;
    }

    v15 = [a1 reason];
    [v8 setObject:v15 forKey:v14];
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

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v17 code:v6 userInfo:v8];

  return v18;
}

@end