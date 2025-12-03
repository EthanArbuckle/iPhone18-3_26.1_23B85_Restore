@interface MFMutableData
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (BOOL)writeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (MFMutableData)init;
- (MFMutableData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (MFMutableData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (MFMutableData)initWithCapacity:(unint64_t)capacity;
- (MFMutableData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error;
- (MFMutableData)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
- (MFMutableData)initWithData:(id)data;
- (MFMutableData)initWithLength:(unint64_t)length;
- (const)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)subdataWithRange:(_NSRange)range;
- (uint64_t)mutableBytes;
- (void)_flushToDisk:(unint64_t)disk capacity:(unint64_t)capacity;
- (void)_mapMutableData:(BOOL)data;
- (void)appendBytes:(const void *)bytes length:(unint64_t)length;
- (void)appendData:(id)data;
- (void)dealloc;
- (void)mf_makeImmutable;
- (void)mutableBytes;
- (void)setLength:(unint64_t)length;
- (void)setMappingThreshold:(unsigned int)threshold;
@end

@implementation MFMutableData

- (MFMutableData)init
{
  v6.receiver = self;
  v6.super_class = MFMutableData;
  v2 = [(MFMutableData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_threshold = sDefaultThreshold;
    v2->_fd = -1;
    v2->_capacity = 8;
    v2->_bytes = malloc_type_malloc(8uLL, 0x4F86C423uLL);
    capacity = v3->_capacity;
    __memset_chk();
    v3->_length = 0;
  }

  return v3;
}

- (MFMutableData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v23.receiver = self;
  v23.super_class = MFMutableData;
  v6 = [(MFMutableData *)&v23 init];
  if (!v6)
  {
    return v6;
  }

  if ((length & 0x8000000000000000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(), "length", length, 0x7FFFFFFFFFFFFFFFLL}];
  }

  v7 = sDefaultThreshold;
  v6->_threshold = sDefaultThreshold;
  v6->_fd = -1;
  if (v7 <= length)
  {
    pthread_once(&sMFDataOnce, _MFDataInit);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [objc_msgSend(defaultManager mf_makeUniqueFileInDirectory:{sMFDataPath), "fileSystemRepresentation"}];
    if (v11)
    {
      v12 = strdup(v11);
      v6->_path = v12;
      if (v12)
      {
        v13 = open(v12, 1538, 438);
        v6->_fd = v13;
        if (v13 != -1)
        {
          MFProtectFileDescriptor(v13, 3);
          v6->_capacity = length;
          v6->_length = length;
          if (write(v6->_fd, bytes, length) == -1)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write: (%d)", *__error()}];
          }

          v6->_flush = 1;
          v14 = 64;
          goto LABEL_18;
        }

        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D930];
        v21 = sMFDataPath;
        v22 = *__error();
        v17 = @"Could not create mutable cache file at %@ (%d).";
        v15 = v18;
        v16 = v19;
      }

      else
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695DA18];
        v17 = @"Failed to allocate path for mutable cache file.";
      }
    }

    else
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D930];
      v17 = @"Failed to create temporary mutable cache file path.";
    }

    [v15 raise:v16 format:{v17, v21, v22}];
    goto LABEL_23;
  }

  if (length <= 8)
  {
    lengthCopy = 8;
  }

  else
  {
    lengthCopy = length;
  }

  v6->_capacity = lengthCopy;
  v9 = malloc_type_malloc(lengthCopy, 0x1F73EB5AuLL);
  v6->_bytes = v9;
  if (length)
  {
    memmove(v9, bytes, length);
  }

  else
  {
    bzero(v9, v6->_capacity);
  }

  v14 = 16;
LABEL_18:
  *(&v6->super.super.super.isa + v14) = length;
LABEL_23:
  if (!v6->_bytes && !v6->_path)
  {

    return 0;
  }

  return v6;
}

- (MFMutableData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  v7 = [(MFMutableData *)self initWithBytes:copy length:length];
  if (doneCopy)
  {
    free(copy);
  }

  return v7;
}

- (MFMutableData)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  if ([l isFileURL])
  {
    path = [l path];

    return [(MFMutableData *)self initWithContentsOfFile:path options:options error:error];
  }

  else
  {

    return 0;
  }
}

- (MFMutableData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error
{
  pthread_once(&sMFDataOnce, _MFDataInit);
  v10.receiver = self;
  v10.super_class = MFMutableData;
  v7 = [(MFMutableData *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_threshold = sDefaultThreshold;
    v7->_fd = -1;
    v7->_path = [file fileSystemRepresentation];
    [(MFMutableData *)v8 _mapMutableData:1];
    v8->_path = 0;
  }

  return v8;
}

- (MFMutableData)initWithData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  return [(MFMutableData *)self initWithBytes:bytes length:v6];
}

- (MFMutableData)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = MFMutableData;
  v4 = [(MFMutableData *)&v7 init];
  if (v4)
  {
    if ((capacity & 0x8000000000000000) != 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(), "capacity", capacity, 0x7FFFFFFFFFFFFFFFLL}];
    }

    v4->_threshold = sDefaultThreshold;
    v4->_fd = -1;
    if (capacity >> 30)
    {
      capacityCopy = capacity;
    }

    else
    {
      capacityCopy = (capacity + (capacity >> 2) + 3) & 0xFFFFFFFC;
    }

    v4->_capacity = capacityCopy;
    if (capacityCopy >= 0x80000)
    {
      v4->_capacity = NSRoundUpToMultipleOfPageSize(capacityCopy);
    }
  }

  return v4;
}

- (MFMutableData)initWithLength:(unint64_t)length
{
  v7.receiver = self;
  v7.super_class = MFMutableData;
  v4 = [(MFMutableData *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_threshold = sDefaultThreshold;
    v4->_fd = -1;
    [(MFMutableData *)v4 setLength:length];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MFData allocWithZone:zone];

  return [(MFData *)v4 initWithData:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithData:self];
}

- (void)dealloc
{
  bytes = self->_bytes;
  if (bytes)
  {
    if (self->_vm)
    {
      if (bytes != -1)
      {
        NSDeallocateMemoryPages(bytes, self->_mappedLength);
      }
    }

    else
    {
      free(bytes);
    }
  }

  path = self->_path;
  if (path)
  {
    unlink(path);
    free(self->_path);
  }

  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
  }

  v6.receiver = self;
  v6.super_class = MFMutableData;
  [(MFMutableData *)&v6 dealloc];
}

- (const)bytes
{
  if (!self->_bytes)
  {
    if (self->_path || ([(MFMutableData *)self setLength:self->_capacity], self->_path))
    {
      [(MFMutableData *)self _mapMutableData:0];
    }
  }

  return self->_bytes;
}

- (void)mutableBytes
{
  if (self->_immutable)
  {
    [(MFMutableData *)a2 mutableBytes];
  }

  [(MFMutableData *)self bytes];
  self->_flush = 1;
  self->_flushFrom = 0;
  return self->_bytes;
}

- (void)appendBytes:(const void *)bytes length:(unint64_t)length
{
  if (length)
  {
    v8 = [(MFMutableData *)self length];
    if (__CFADD__(length, v8))
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695DA20];
      v11 = _NSMethodExceptionProem();
      v19.location = v8;
      v19.length = length;
      [v9 raise:v10 format:{@"%@: range %@ causes integer overflow", v11, NSStringFromRange(v19)}];
    }

    bytes = self->_bytes;
    if (bytes)
    {
      v13 = bytes > bytes;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || &bytes[v8] <= bytes)
    {
      v15 = 0;
      v14 = 0;
    }

    else
    {
      if (bytes + length > &bytes[v8])
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
        bytes = self->_bytes;
      }

      v14 = (bytes - bytes);
      v15 = 1;
    }

    [(MFMutableData *)self setLength:v8 + length];
    if (!self->_flush)
    {
      self->_flush = 1;
      self->_flushFrom = v8;
    }

    if (v8 + length > self->_capacity)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Not enough capacity to append bytes. Capacity: (%lu). New length: (%lu):", self->_capacity, v8 + length}];
    }

    v16 = self->_bytes;
    if (!v16)
    {
      [(MFMutableData *)self _mapMutableData:0];
      v16 = self->_bytes;
      if (!v16)
      {
        [MFMutableData appendBytes:length:];
      }
    }

    if (v15)
    {
      bytesCopy = &v14[v16];
    }

    else
    {
      bytesCopy = bytes;
    }

    memmove(v16 + v8, bytesCopy, length);
  }
}

- (void)appendData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  [(MFMutableData *)self appendBytes:bytes length:v6];
}

- (id)subdataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (sDefaultThreshold <= range.length && self->_immutable)
  {
    v6 = [MFData alloc];
    v7 = location;
    v8 = length;
    selfCopy2 = self;
    v10 = 1;
  }

  else
  {
    v6 = [MFData alloc];
    v7 = location;
    v8 = length;
    selfCopy2 = self;
    v10 = 0;
  }

  v11 = [(MFData *)v6 _initWithRange:v7 from:v8 retainingParent:selfCopy2, v10];

  return v11;
}

- (void)setLength:(unint64_t)length
{
  if (self->_immutable)
  {
    [(MFMutableData *)a2 setLength:?];
  }

  if ((length & 0x8000000000000000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(), "length", length, 0x7FFFFFFFFFFFFFFFLL}];
  }

  else if (!length)
  {
    goto LABEL_46;
  }

  capacity = self->_capacity;
  if (capacity < length || !self->_bytes)
  {
    threshold = self->_threshold;
    if (threshold <= length)
    {
      v13 = length + 0x100000;
      if (length >> 21 > 4)
      {
        v13 = length + 0x200000;
      }

      if (length >> 19)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v15 = (length >> v14) + length;
      if (length >> 20 <= 4)
      {
        v16 = v15;
      }

      else
      {
        v16 = v13;
      }

      if (capacity != v16 || !self->_path)
      {
        self->_flush = 1;
        [(MFMutableData *)self _flushToDisk:[(MFMutableData *)self length] capacity:v16];
      }
    }

    else
    {
      v7 = 1;
      if (length >> 19)
      {
        v7 = 2;
      }

      v8 = (length >> v7) + length;
      if (capacity > v8)
      {
        v8 = self->_capacity;
      }

      if (threshold >= v8)
      {
        threshold = v8;
      }

      if (threshold <= 8)
      {
        v9 = 8;
      }

      else
      {
        v9 = threshold;
      }

      self->_capacity = v9;
      if (capacity != v9 || !self->_bytes)
      {
        if (self->_vm)
        {
          mutableBytes = [(MFMutableData *)self mutableBytes];
          if (!mutableBytes)
          {
            [MFMutableData setLength:];
          }

          v11 = mutableBytes;
          bytes = 0;
          self->_bytes = 0;
          v9 = self->_capacity;
        }

        else
        {
          v11 = 0;
          bytes = self->_bytes;
        }

        v17 = reallocf(bytes, v9);
        self->_bytes = v17;
        if (!v17)
        {
          [MFMutableData setLength:];
        }

        if (self->_vm)
        {
          mappedLength = self->_mappedLength;
          memmove(v17, v11, mappedLength);
          NSDeallocateMemoryPages(v11, mappedLength);
        }

        else
        {
          length = self->_length;
          if (length < length)
          {
            bzero(&v17[length], self->_capacity - length);
          }
        }

        path = self->_path;
        if (path)
        {
          unlink(path);
          free(self->_path);
          self->_path = 0;
        }

        fd = self->_fd;
        if (fd != -1)
        {
          close(fd);
          self->_fd = -1;
        }

        self->_flush = 0;
        self->_vm = 0;
      }
    }
  }

LABEL_46:
  self->_length = length;
}

- (void)setMappingThreshold:(unsigned int)threshold
{
  self->_threshold = threshold;
  if ([(MFMutableData *)self length]> threshold)
  {
    v4 = [(MFMutableData *)self length];
    v5 = [(MFMutableData *)self length];

    [(MFMutableData *)self _flushToDisk:v4 capacity:v5];
  }
}

- (void)mf_makeImmutable
{
  if (!self->_immutable)
  {
    self->_immutable = 1;
    threshold = self->_threshold;
    if (threshold < [(MFMutableData *)self length])
    {
      v4 = [(MFMutableData *)self length];
      v5 = [(MFMutableData *)self length];

      [(MFMutableData *)self _flushToDisk:v4 capacity:v5];
    }
  }
}

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  if (!self->_immutable || !self->_path)
  {
    goto LABEL_15;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  MFRemoveItemAtPath(file);
  if (!self->_bytes)
  {
    [(MFMutableData *)self _mapMutableData:1];
  }

  fd = self->_fd;
  if (fd == -1)
  {
    path = self->_path;
    v13 = [(MFMutableData *)self length];
    self->_capacity = v13;
    if (truncate(path, v13) == -1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to truncate file: (%d)", *__error()}];
    }
  }

  else
  {
    v11 = [(MFMutableData *)self length];
    self->_capacity = v11;
    if (ftruncate(fd, v11) == -1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to truncate file: (%d)", *__error()}];
    }

    close(self->_fd);
    self->_fd = -1;
  }

  if ([defaultManager moveItemAtPath:objc_msgSend(MEMORY[0x1E696AEC0] toPath:"stringWithUTF8String:" error:{self->_path), file, 0}])
  {
    v14 = (options & 0xF0000000) - 0x10000000;
    if (!(v14 >> 30))
    {
      [defaultManager mf_protectFileAtPath:file withClass:*(&unk_1D36EFE18 + (v14 >> 25)) error:0];
    }

    free(self->_path);
    self->_path = 0;
    return 1;
  }

  else
  {
LABEL_15:
    v16.receiver = self;
    v16.super_class = MFMutableData;
    return [(MFMutableData *)&v16 writeToFile:file options:options error:error];
  }
}

- (BOOL)writeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  if ([l isFileURL])
  {
    path = [l path];

    return [(MFMutableData *)self writeToFile:path options:options error:error];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFMutableData;
    return [(MFMutableData *)&v11 writeToURL:l options:options error:error];
  }
}

- (void)_flushToDisk:(unint64_t)disk capacity:(unint64_t)capacity
{
  path = self->_path;
  if (!path)
  {
    pthread_once(&sMFDataOnce, _MFDataInit);
    self->_flush = 1;
    self->_flushFrom = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [objc_msgSend(defaultManager mf_makeUniqueFileInDirectory:{sMFDataPath), "fileSystemRepresentation"}];
    if (v9)
    {
      v10 = strdup(v9);
      self->_path = v10;
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!self->_path)
    {
LABEL_4:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to create or copy temporary cache file path."];
    }
  }

LABEL_5:
  if (self->_flush)
  {
    fd = self->_fd;
    if (fd == -1 && (fd = open(self->_path, 514, 438), self->_fd = fd, fd == -1))
    {
      if (!path)
      {
        free(self->_path);
        self->_path = 0;
      }
    }

    else
    {
      MFProtectFileDescriptor(fd, 3);
      if (self->_length)
      {
        if (lseek(self->_fd, self->_flushFrom, 0) == -1)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured during lseek while flushing to disk: (%d)", *__error()}];
        }

        flushFrom = self->_flushFrom;
        v13 = disk >= flushFrom;
        v14 = disk - flushFrom;
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (write(self->_fd, [(MFMutableData *)self bytes]+ self->_flushFrom, v15) == -1)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured writing while flushing to disk: (%d)", *__error()}];
        }
      }

      if (disk != capacity && self->_capacity != capacity && ftruncate(self->_fd, capacity) == -1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in truncate while flushing to disk: (%d)", *__error()}];
      }

      bytes = self->_bytes;
      if (bytes)
      {
        if (self->_vm)
        {
          NSDeallocateMemoryPages(bytes, self->_mappedLength);
        }

        else
        {
          free(bytes);
        }

        self->_bytes = 0;
        self->_vm = 0;
      }

      self->_capacity = capacity;
      self->_flush = 0;
    }
  }
}

- (void)_mapMutableData:(BOOL)data
{
  dataCopy = data;
  fd = self->_fd;
  if (fd != -1 || (fd = open(self->_path, 0, 438), fd != -1))
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v16.st_blksize = v6;
    *v16.st_qspare = v6;
    v16.st_birthtimespec = v6;
    *&v16.st_size = v6;
    v16.st_mtimespec = v6;
    v16.st_ctimespec = v6;
    *&v16.st_uid = v6;
    v16.st_atimespec = v6;
    *&v16.st_dev = v6;
    if (fstat(fd, &v16) || (v16.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_22;
    }

    st_size = v16.st_size;
    if (v16.st_size <= 0 && self->_threshold > self->_capacity)
    {
      self->_vm = 0;
      self->_length = 0;
      self->_capacity = 8;
      self->_bytes = malloc_type_calloc(8uLL, 1uLL, 0x87A7FE4FuLL);
LABEL_22:
      if (self->_fd != fd)
      {
        close(fd);
      }

      return;
    }

    self->_vm = 1;
    if (dataCopy)
    {
      self->_length = st_size;
    }

    if (st_size)
    {
      self->_capacity = st_size;
    }

    else
    {
      capacity = self->_capacity;
      if (!capacity)
      {
        st_size = self->_mappedLength;
        goto LABEL_17;
      }

      if (ftruncate(self->_fd, capacity) == -1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in truncate while mapping data with capacity: (%lu) : (%d)", self->_capacity, *__error()}];
      }

      st_size = self->_capacity;
    }

    self->_mappedLength = st_size;
LABEL_17:
    if (self->_immutable)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    v10 = mmap(0, st_size, v9, 2, fd, 0);
    self->_bytes = v10;
    if (v10 == -1)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D930];
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      [v11 raise:v12 format:{@"mmap() failed with error %d - %s (File Size: %lu | Protection Class: %d)", v13, v15, self->_mappedLength, fcntl(fd, 63)}];
    }

    goto LABEL_22;
  }
}

- (uint64_t)mutableBytes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  return [currentHandler handleFailureInMethod:self object:a2 file:@"MFData.m" lineNumber:676 description:@"Attempting to get mutableBytes on an immutable MFMutableData."];
}

- (uint64_t)setLength:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MFData.m" lineNumber:749 description:@"Attempting to setLength: on an immutable MFMutableData."];
}

@end