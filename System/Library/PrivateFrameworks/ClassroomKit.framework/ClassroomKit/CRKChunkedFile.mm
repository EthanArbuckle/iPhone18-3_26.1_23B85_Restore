@interface CRKChunkedFile
+ (int64_t)preferredChunkSizeForFileDescriptor:(int)descriptor;
+ (void)assertFileDescriptorIsValid:(int)valid;
- (CRKChunkedFile)initWithFileDescriptor:(int)descriptor;
- (int64_t)readNextChunkIntoBuffer:(id)buffer error:(id *)error;
@end

@implementation CRKChunkedFile

+ (void)assertFileDescriptorIsValid:(int)valid
{
  if (valid <= 0)
  {
    [(CRKChunkedFile *)a2 assertFileDescriptorIsValid:self];
  }
}

+ (int64_t)preferredChunkSizeForFileDescriptor:(int)descriptor
{
  v8 = *MEMORY[0x277D85DE8];
  [self assertFileDescriptorIsValid:?];
  memset(&v7, 0, 512);
  memset(&v6, 0, sizeof(v6));
  if (fstatfs(descriptor, &v7) == -1)
  {
    if (fstat(descriptor, &v6) == -1)
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

- (CRKChunkedFile)initWithFileDescriptor:(int)descriptor
{
  [objc_opt_class() assertFileDescriptorIsValid:*&descriptor];
  v6.receiver = self;
  v6.super_class = CRKChunkedFile;
  result = [(CRKChunkedFile *)&v6 init];
  if (result)
  {
    result->mFileDescriptor = descriptor;
  }

  return result;
}

- (int64_t)readNextChunkIntoBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    [CRKChunkedFile readNextChunkIntoBuffer:a2 error:self];
  }

  v8 = [bufferCopy length];
  mutableBytes = [bufferCopy mutableBytes];
  v10 = [bufferCopy length];
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
        v13 = read(self->mFileDescriptor, mutableBytes, v12);
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
          }

          v14 = -1;
          goto LABEL_20;
        }
      }

      if (v13)
      {
        v10 -= v13;
        mutableBytes += v13;
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