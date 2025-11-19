@interface CRKChunkedFile
+ (int64_t)preferredChunkSizeForFileDescriptor:(int)a3;
+ (void)assertFileDescriptorIsValid:(int)a3;
- (CRKChunkedFile)initWithFileDescriptor:(int)a3;
- (int64_t)readNextChunkIntoBuffer:(id)a3 error:(id *)a4;
@end

@implementation CRKChunkedFile

+ (void)assertFileDescriptorIsValid:(int)a3
{
  if (a3 <= 0)
  {
    [(CRKChunkedFile *)a2 assertFileDescriptorIsValid:a1];
  }
}

+ (int64_t)preferredChunkSizeForFileDescriptor:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 assertFileDescriptorIsValid:?];
  memset(&v7, 0, 512);
  memset(&v6, 0, sizeof(v6));
  if (fstatfs(a3, &v7) == -1)
  {
    if (fstat(a3, &v6) == -1)
    {
      return -1;
    }

    st_blksize = v6.st_blksize;
  }

  else
  {
    st_blksize = v7.f_iosize;
  }

  if (st_blksize > 0)
  {
    return st_blksize;
  }

  return -1;
}

- (CRKChunkedFile)initWithFileDescriptor:(int)a3
{
  [objc_opt_class() assertFileDescriptorIsValid:*&a3];
  v6.receiver = self;
  v6.super_class = CRKChunkedFile;
  result = [(CRKChunkedFile *)&v6 init];
  if (result)
  {
    result->mFileDescriptor = a3;
  }

  return result;
}

- (int64_t)readNextChunkIntoBuffer:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [CRKChunkedFile readNextChunkIntoBuffer:a2 error:self];
  }

  v8 = [v7 length];
  v9 = [v7 mutableBytes];
  v10 = [v7 length];
  while (2)
  {
    if (v10)
    {
      if (v8 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x7FFFFFFF)
      {
        v12 = 0x7FFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      while (1)
      {
        v13 = read(self->mFileDescriptor, v9, v12);
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          if (a4)
          {
            *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
          }

          v14 = -1;
          goto LABEL_20;
        }
      }

      if (v13)
      {
        v10 -= v13;
        v9 += v13;
        if (v13 >= v12)
        {
          continue;
        }
      }
    }

    break;
  }

  v14 = v8 - v10;
LABEL_20:

  return v14;
}

+ (void)assertFileDescriptorIsValid:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKChunkedFile.m" lineNumber:25 description:@"Negative file descriptor"];
}

- (void)readNextChunkIntoBuffer:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKChunkedFile.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];
}

@end