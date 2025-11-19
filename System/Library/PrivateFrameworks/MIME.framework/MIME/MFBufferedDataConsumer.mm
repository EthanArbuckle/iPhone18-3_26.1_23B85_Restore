@interface MFBufferedDataConsumer
- (MFBufferedDataConsumer)init;
- (id)data;
- (int64_t)appendData:(id)a3;
- (void)dealloc;
- (void)done;
@end

@implementation MFBufferedDataConsumer

- (MFBufferedDataConsumer)init
{
  v4.receiver = self;
  v4.super_class = MFBufferedDataConsumer;
  v2 = [(MFBufferedDataConsumer *)&v4 init];
  if (v2)
  {
    v2->_unwritten = objc_alloc_init(MFMutableData);
    v2->_fd = -1;
  }

  return v2;
}

- (void)dealloc
{
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
  }

  path = self->_path;
  if (path)
  {
    MFRemoveItemAtPath(path);
  }

  v5.receiver = self;
  v5.super_class = MFBufferedDataConsumer;
  [(MFBufferedDataConsumer *)&v5 dealloc];
}

- (id)data
{
  complete = self->_complete;
  if (complete)
  {
    v3 = complete;
LABEL_3:

    return v3;
  }

  fd = self->_fd;
  unwritten = self->_unwritten;
  if (fd == -1)
  {
    v3 = [(NSMutableData *)unwritten copy];
    goto LABEL_3;
  }

  v8 = [(NSMutableData *)unwritten length];
  if (v8)
  {
    if (write(self->_fd, [(NSMutableData *)self->_unwritten bytes], v8) == -1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write while returning data: (%d)", *__error()}];
    }

    [(NSMutableData *)self->_unwritten setLength:0];
  }

  result = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self->_path options:8 error:0];
  if (!result)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to read incomplete data from disk."];
    return 0;
  }

  return result;
}

- (int64_t)appendData:(id)a3
{
  if (self->_complete)
  {
    return -1;
  }

  v3 = [a3 length];
  v6 = [(NSMutableData *)self->_unwritten length];
  if (v6 + v3 < sDefaultThreshold)
  {
    goto LABEL_13;
  }

  v7 = v6;
  if (!self->_path)
  {
    pthread_once(&sMFDataOnce, _MFDataInit);
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 mf_makeUniqueFileInDirectory:sMFDataPath];
    self->_path = v9;
    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to create temporary cache file path for append."];
      if (v7)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    fd = open([(NSString *)v9 fileSystemRepresentation], 1538, 438);
    self->_fd = fd;
    if (fd == -1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Could not create cache file for append at %@ (%d).", sMFDataPath, *__error()}];
      fd = self->_fd;
    }

    MFProtectFileDescriptor(fd, 3);
  }

  if (v7)
  {
LABEL_10:
    if (write(self->_fd, [(NSMutableData *)self->_unwritten bytes], v7) == -1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write while appending data: (%d)", *__error()}];
    }

    [(NSMutableData *)self->_unwritten setLength:0];
  }

LABEL_13:
  if (v3 < sDefaultThreshold)
  {
    [(NSMutableData *)self->_unwritten appendData:a3];
    return v3;
  }

  v3 = write(self->_fd, [a3 bytes], v3);
  if (v3 != -1)
  {
    return v3;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write while appending data: (%d)", *__error()}];
  return -1;
}

- (void)done
{
  if (!self->_complete)
  {
    v9[5] = v2;
    v9[6] = v3;
    fd = self->_fd;
    unwritten = self->_unwritten;
    if (fd == -1)
    {
      self->_complete = [(NSMutableData *)unwritten copy];

      self->_unwritten = 0;
    }

    else
    {
      v7 = [(NSMutableData *)unwritten length];
      if (v7 && write(self->_fd, [(NSMutableData *)self->_unwritten bytes], v7) == -1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write while completing: (%d)", *__error()}];
      }

      self->_unwritten = 0;
      v9[0] = 0;
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:self->_path options:8 error:v9];
      self->_complete = v8;
      if (!v8)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Failed to read complete data from disk: %@", objc_msgSend(v9[0], "ef_publicDescription")}];
      }

      close(self->_fd);
      self->_fd = -1;

      self->_path = 0;
    }
  }
}

@end