@interface HDAttachmentFileHandleReader
- (id)initAdoptingFileHandle:(id)a3;
- (id)readDataUpToLength:(unint64_t)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)close;
@end

@implementation HDAttachmentFileHandleReader

- (id)initAdoptingFileHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDAttachmentFileHandleReader;
  v6 = [(HDAttachmentFileHandleReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, a3);
  }

  return v7;
}

- (id)readDataUpToLength:(unint64_t)a3 offset:(unint64_t)a4 error:(id *)a5
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    if ([(NSFileHandle *)fileHandle seekToOffset:a4 error:a5])
    {
      v9 = [(NSFileHandle *)self->_fileHandle readDataUpToLength:a3 error:a5];
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:126 format:@"File handle has already been closed."];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)close
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    [(NSFileHandle *)fileHandle closeFile];
    v4 = self->_fileHandle;
    self->_fileHandle = 0;
  }
}

@end