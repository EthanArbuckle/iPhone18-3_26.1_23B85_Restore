@interface MBDigest
+ (id)sha1;
+ (id)sha1ForData:(id)data;
+ (id)sha1ForFileAtPath:(id)path error:(id *)error;
+ (id)sha1ForString:(id)string;
+ (id)sha1HmacForString:(id)string key:(id)key;
+ (id)sha256;
+ (id)sha256ForData:(id)data;
+ (id)sha256ForFileAtPath:(id)path error:(id *)error;
- (BOOL)updateWithFile:(id)file error:(id *)error;
- (id)digestForData:(id)data;
- (id)digestForFileAtPath:(id)path error:(id *)error;
- (id)digestForString:(id)string;
- (void)updateWithData:(id)data;
- (void)updateWithDate:(id)date;
- (void)updateWithString:(id)string;
@end

@implementation MBDigest

+ (id)sha1
{
  v2 = objc_alloc_init(MBDigestSHA1);

  return v2;
}

+ (id)sha256
{
  v2 = objc_alloc_init(MBDigestSHA256);

  return v2;
}

+ (id)sha256ForData:(id)data
{
  v4 = +[MBDigest sha256];

  return [v4 digestForData:data];
}

+ (id)sha256ForFileAtPath:(id)path error:(id *)error
{
  v6 = +[MBDigest sha256];

  return [v6 digestForFileAtPath:path error:error];
}

+ (id)sha1ForData:(id)data
{
  v4 = +[MBDigest sha1];

  return [v4 digestForData:data];
}

+ (id)sha1ForFileAtPath:(id)path error:(id *)error
{
  v6 = +[MBDigest sha1];

  return [v6 digestForFileAtPath:path error:error];
}

+ (id)sha1ForString:(id)string
{
  v4 = +[MBDigest sha1];

  return [v4 digestForString:string];
}

+ (id)sha1HmacForString:(id)string key:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    +[MBDigest sha1HmacForString:key:];
  }

  [key bytes];
  [key length];
  [string UTF8String];
  [string lengthOfBytesUsingEncoding:4];
  CCHmacOneShot();
  result = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:20];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)digestForData:(id)data
{
  [(MBDigest *)self updateWithData:data];

  return [(MBDigest *)self final];
}

- (id)digestForFileAtPath:(id)path error:(id *)error
{
  if (![(MBDigest *)self updateWithFile:path error:error])
  {
    return 0;
  }

  return [(MBDigest *)self final];
}

- (id)digestForString:(id)string
{
  [(MBDigest *)self updateWithString:string];

  return [(MBDigest *)self final];
}

- (void)updateWithData:(id)data
{
  if (data && [data length])
  {
    bytes = [data bytes];
    v6 = [data length];

    [(MBDigest *)self updateWithBytes:bytes length:v6];
  }
}

- (void)updateWithDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  [(MBDigest *)self updateWithInt64:v4];
}

- (BOOL)updateWithFile:(id)file error:(id *)error
{
  if (!file)
  {
    [MBDigest updateWithFile:error:];
  }

  v7 = getpagesize();
  if (!v7)
  {
    [MBDigest updateWithFile:error:];
  }

  v8 = v7;
  v9 = open([file fileSystemRepresentation], 256);
  if (v9 != -1)
  {
    v10 = v9;
    memset(&v26, 0, sizeof(v26));
    if (fstat(v9, &v26))
    {
      v11 = [MBError posixErrorWithPath:file format:@"Failed to fstat src file"];
    }

    else if ((v26.st_mode & 0xF000) == 0x8000)
    {
      v14 = v8;
      st_size = v26.st_size;
      v16 = v26.st_size % v8;
      if (v16)
      {
        v17 = v8 - v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + v26.st_size;
      if (v18 >= v8 << 15)
      {
        v19 = v8 << 15;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= v8)
      {
        v20 = v8;
      }

      else
      {
        v20 = v19;
      }

      if (v26.st_size < 1)
      {
LABEL_27:
        v12 = 0;
        v13 = 1;
        goto LABEL_31;
      }

      v21 = 0;
      while (1)
      {
        v22 = mmap(0, v20, 1, 2, v10, v21);
        if (v22 == -1)
        {
          break;
        }

        v23 = v22;
        if (v19 > v14)
        {
          madvise(v22, v20, 2);
        }

        if (st_size - v21 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = st_size - v21;
        }

        [(MBDigest *)self updateWithBytes:v23 length:v24];
        munmap(v23, v20);
        v21 += v24;
        if (v21 >= st_size)
        {
          goto LABEL_27;
        }
      }

      v11 = [MBError posixErrorWithFormat:@"Failed to mmap the file at offset:%lld, mapSize:%ld", v21, v20];
    }

    else
    {
      v11 = [MBError errorWithCode:1 path:file format:@"Not a regular file"];
    }

    v12 = v11;
    v13 = 0;
LABEL_31:
    close(v10);
    if (!error)
    {
      return v13;
    }

    goto LABEL_32;
  }

  v12 = [MBError posixErrorWithPath:file format:@"Failed to open src file"];
  v13 = 0;
  if (!error)
  {
    return v13;
  }

LABEL_32:
  if (!v13)
  {
    *error = v12;
  }

  return v13;
}

- (void)updateWithString:(id)string
{
  if (string && [string length])
  {
    v5 = [string maximumLengthOfBytesUsingEncoding:4];
    v6 = malloc_type_malloc(v5, 0x653901B2uLL);
    v7 = 0;
    if (([string getBytes:v6 maxLength:v5 usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(string, "length"), 0}] & 1) == 0)
    {
      [MBDigest updateWithString:];
    }

    [(MBDigest *)self updateWithBytes:v6 length:v7];
    free(v6);
  }
}

+ (uint64_t)sha1HmacForString:key:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)updateWithString:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end