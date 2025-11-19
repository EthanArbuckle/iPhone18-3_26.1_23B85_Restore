@interface FCANEFHeader
- (FCANEFHeader)init;
- (void)initWithFileHandle:(void *)a1;
- (void)initWithFilePath:(void *)a1;
- (void)initWithHeaderData:(void *)a3 wrappingKeyID:(void *)a4 wrappedKey:(void *)a5 contentType:;
@end

@implementation FCANEFHeader

- (void)initWithHeaderData:(void *)a3 wrappingKeyID:(void *)a4 wrappedKey:(void *)a5 contentType:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23.receiver = a1;
  v23.super_class = FCANEFHeader;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  if (v13)
  {
    v14 = [v9 copy];
    v15 = v13[4];
    v13[4] = v14;

    v16 = [v10 copy];
    v17 = v13[1];
    v13[1] = v16;

    v18 = [v11 copy];
    v19 = v13[2];
    v13[2] = v18;

    v20 = [v12 copy];
    v21 = v13[3];
    v13[3] = v20;
  }

  return v13;
}

- (void)initWithFilePath:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a2];
    v4 = [(FCANEFHeader *)v2 initWithFileHandle:v3];
    [v3 closeFile];
    v2 = v4;
  }

  return v2;
}

- (void)initWithFileHandle:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 readDataOfLength:4];
    if ([v5 length] == 4 && *objc_msgSend(v5, "bytes") == 1178947137)
    {
      v8 = [v4 readDataOfLength:2];
      if ([v8 length] == 2)
      {
        v9 = [v4 readDataOfLength:{bswap32(*objc_msgSend(v8, "bytes")) >> 16}];
        if ([v9 length])
        {
          v10 = [v9 subdataWithRange:{0, 1}];
          v11 = *[v10 bytes];
          if ([v9 length] <= v11)
          {
            v6 = 0;
          }

          else
          {
            v12 = [v9 subdataWithRange:{1, v11}];
            v13 = v11 + 2;
            if (v11 + 2 <= [v9 length])
            {
              v27 = v12;
              v14 = [v9 subdataWithRange:{v11 + 1, 1}];
              v15 = *[v14 bytes];
              v16 = v13 + v15;
              if (v13 + v15 <= [v9 length])
              {
                v17 = [v9 subdataWithRange:{v13, v15}];
                if (v16 >= [v9 length])
                {
                  v6 = 0;
                  v12 = v27;
                }

                else
                {
                  v26 = v17;
                  v18 = v16 + 1;
                  v25 = [v9 subdataWithRange:{v16, 1}];
                  v19 = *[v25 bytes];
                  if (v18 + v19 <= [v9 length])
                  {
                    v20 = [v9 subdataWithRange:{v18, v19}];
                    v23 = v20;
                    if ([v20 length])
                    {
                      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:{4, v20}];
                    }

                    else
                    {
                      v21 = 0;
                    }

                    v12 = v27;
                    v22 = [MEMORY[0x1E695DF88] data];
                    [v22 appendData:v5];
                    [v22 appendData:v8];
                    [v22 appendData:v9];
                    a1 = [(FCANEFHeader *)a1 initWithHeaderData:v22 wrappingKeyID:v27 wrappedKey:v26 contentType:v21];

                    v6 = a1;
                  }

                  else
                  {
                    v6 = 0;
                    v12 = v27;
                  }

                  v17 = v26;
                }
              }

              else
              {
                v6 = 0;
                v12 = v27;
              }
            }

            else
            {
              v6 = 0;
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FCANEFHeader)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCANEFHeader init]";
    v10 = 2080;
    v11 = "FCANEFHeader.m";
    v12 = 1024;
    v13 = 206;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCANEFHeader init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

@end