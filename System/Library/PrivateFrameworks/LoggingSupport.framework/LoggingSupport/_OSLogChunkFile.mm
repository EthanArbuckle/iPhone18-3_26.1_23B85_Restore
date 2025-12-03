@interface _OSLogChunkFile
- (_OSLogChunkFile)initWithFileDescriptor:(int)descriptor error:(id *)error;
- (void)dealloc;
@end

@implementation _OSLogChunkFile

- (void)dealloc
{
  ptr = self->super._ptr;
  if (ptr && munmap(ptr, self->super._sz) == -1)
  {
    v4 = *__error();
    _os_assumes_log();
  }

  v5.receiver = self;
  v5.super_class = _OSLogChunkFile;
  [(_OSLogChunkFile *)&v5 dealloc];
}

- (_OSLogChunkFile)initWithFileDescriptor:(int)descriptor error:(id *)error
{
  v25[128] = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v7 = _os_trace_mmap();
  if (v7)
  {
    v8 = v7;
    v9 = v25[0];
    if (fcntl(descriptor, 50, v25, 1024) == -1)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }

      v14 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
      pathComponents = [v10 pathComponents];
      v12 = [pathComponents count];
      v13 = v12 - 1;
      if (v12 > 1)
      {
        v16 = [pathComponents objectAtIndexedSubscript:v12 - 2];
        v17 = [pathComponents objectAtIndexedSubscript:v13];
        v18 = MEMORY[0x277CCACA8];
        v24[0] = v16;
        v24[1] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v14 = [v18 pathWithComponents:v19];
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"filePathAssemblerError" code:-1 userInfo:0];
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v23.receiver = self;
        v23.super_class = _OSLogChunkFile;
        v20 = [(_OSLogChunkStore *)&v23 initWithBytes:v8 size:v9];
        self = v20;
        if (v20)
        {
          [(_OSLogChunkStore *)v20 setFileName:v14];
          self = self;
          selfCopy = self;
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    selfCopy = 0;
    goto LABEL_18;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  selfCopy = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end