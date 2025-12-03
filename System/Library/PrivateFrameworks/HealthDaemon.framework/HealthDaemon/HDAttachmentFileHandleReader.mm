@interface HDAttachmentFileHandleReader
- (id)initAdoptingFileHandle:(id)handle;
- (id)readDataUpToLength:(unint64_t)length offset:(unint64_t)offset error:(id *)error;
- (void)close;
@end

@implementation HDAttachmentFileHandleReader

- (id)initAdoptingFileHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = HDAttachmentFileHandleReader;
  v6 = [(HDAttachmentFileHandleReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, handle);
  }

  return v7;
}

- (id)readDataUpToLength:(unint64_t)length offset:(unint64_t)offset error:(id *)error
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    if ([(NSFileHandle *)fileHandle seekToOffset:offset error:error])
    {
      v9 = [(NSFileHandle *)self->_fileHandle readDataUpToLength:length error:error];
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:126 format:@"File handle has already been closed."];
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