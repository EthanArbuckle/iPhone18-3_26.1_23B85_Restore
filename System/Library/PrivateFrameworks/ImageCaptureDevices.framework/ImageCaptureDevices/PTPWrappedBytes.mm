@interface PTPWrappedBytes
+ (id)wrappedBytesWithBytes:(void *)a3 capacity:(unint64_t)a4;
+ (id)wrappedBytesWithCapacity:(unint64_t)a3;
- (PTPWrappedBytes)initWithBytes:(void *)a3 capacity:(unint64_t)a4;
- (PTPWrappedBytes)initWithCapacity:(unint64_t)a3;
- (PTPWrappedBytes)initWithFileDescriptor:(int)a3 capacity:(unint64_t)a4;
- (double)percentFull;
- (id)description;
- (unint64_t)appendBytes:(const void *)a3 length:(unint64_t)a4;
- (unint64_t)appendData:(id)a3;
- (unint64_t)rewindBytesToPosition64:(unint64_t)a3;
- (unint64_t)updateCapacity:(unint64_t)a3;
- (void)dealloc;
- (void)replaceBytesInRange:(_NSRange)a3 withBytes:(const void *)a4;
- (void)setLength:(unint64_t)a3;
@end

@implementation PTPWrappedBytes

+ (id)wrappedBytesWithCapacity:(unint64_t)a3
{
  v3 = [[PTPWrappedBytes alloc] initWithCapacity:a3];

  return v3;
}

+ (id)wrappedBytesWithBytes:(void *)a3 capacity:(unint64_t)a4
{
  v4 = [[PTPWrappedBytes alloc] initWithBytes:a3 capacity:a4];

  return v4;
}

- (PTPWrappedBytes)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PTPWrappedBytes;
  v4 = [(PTPWrappedBytes *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      v4->_bytes = malloc_type_malloc(a3, 0xE23C6C59uLL);
    }

    v4->_capacity = a3;
    v4->_offset = 0;
    *&v4->_allocatedBytes = 257;
  }

  return v4;
}

- (PTPWrappedBytes)initWithBytes:(void *)a3 capacity:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PTPWrappedBytes;
  result = [(PTPWrappedBytes *)&v7 init];
  if (result)
  {
    result->_bytes = a3;
    result->_capacity = a4;
    result->_offset = 0;
    *&result->_allocatedBytes = 256;
  }

  return result;
}

- (PTPWrappedBytes)initWithFileDescriptor:(int)a3 capacity:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PTPWrappedBytes;
  result = [(PTPWrappedBytes *)&v7 init];
  if (result)
  {
    result->_fd = a3;
    result->_capacity = a4;
    result->_offset = 0;
    *&result->_allocatedBytes = 0;
  }

  return result;
}

- (void)dealloc
{
  if (self->_allocatedBytes)
  {
    free(self->_bytes);
  }

  v3.receiver = self;
  v3.super_class = PTPWrappedBytes;
  [(PTPWrappedBytes *)&v3 dealloc];
}

- (unint64_t)updateCapacity:(unint64_t)a3
{
  result = self->_capacity;
  if (result < a3)
  {
    v6 = malloc_type_realloc(self->_bytes, a3, 0x5BBA3FCEuLL);
    if (v6)
    {
      self->_bytes = v6;
      self->_capacity = a3;
      return a3;
    }

    else
    {
      return self->_capacity;
    }
  }

  return result;
}

- (void)setLength:(unint64_t)a3
{
  capacity = self->_capacity;
  if (capacity >= a3)
  {
    capacity = a3;
  }

  self->_offset = capacity;
}

- (unint64_t)appendData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v5;
  if (__PAIR64__(self->_useByteBuffer, self->_allocatedBytes) != 0x100000001)
  {
    offset = self->_offset;
    if (v5 >= self->_capacity - offset)
    {
      v6 = self->_capacity - offset;
    }

LABEL_7:
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  offset = self->_offset;
  if (self->_capacity - offset >= v5)
  {
    goto LABEL_7;
  }

  capacity = offset + v5;
  v9 = malloc_type_realloc(self->_bytes, offset + v5, 0x284D7614uLL);
  if (v9)
  {
    self->_bytes = v9;
    self->_capacity = capacity;
  }

  else
  {
    syslog(3, "Unable to realloc() buffer in PTPWrappedBytes\n");
    capacity = self->_capacity;
  }

  offset = self->_offset;
  if (capacity <= offset || (v6 = capacity - offset, capacity != offset))
  {
LABEL_8:
    bytes = self->_bytes;
    if (bytes)
    {
      memcpy(&bytes[offset], [v4 bytes], v6);
    }

    else
    {
      v6 = write(self->_fd, [v4 bytes], v6);
    }

    self->_offset += v6;
  }

LABEL_12:
  self->_excessDataLength += [v4 length] - v6;

  return v6;
}

- (unint64_t)appendBytes:(const void *)a3 length:(unint64_t)a4
{
  if (__PAIR64__(self->_useByteBuffer, self->_allocatedBytes) != 0x100000001)
  {
    offset = self->_offset;
    if (self->_capacity - offset >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = self->_capacity - offset;
    }

    goto LABEL_8;
  }

  offset = self->_offset;
  v8 = a4;
  if (self->_capacity - offset >= a4)
  {
    goto LABEL_8;
  }

  capacity = offset + a4;
  v10 = malloc_type_realloc(self->_bytes, offset + a4, 0xFBA8BADAuLL);
  if (v10)
  {
    self->_bytes = v10;
    self->_capacity = capacity;
  }

  else
  {
    syslog(3, "Unable to realloc() buffer in PTPWrappedBytes\n");
    capacity = self->_capacity;
  }

  offset = self->_offset;
  v13 = capacity > offset;
  v8 = capacity - offset;
  if (v13)
  {
LABEL_8:
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v8 = a4;
LABEL_9:
  bytes = self->_bytes;
  if (bytes)
  {
    memcpy(&bytes[offset], a3, v8);
  }

  else
  {
    v8 = write(self->_fd, a3, v8);
  }

  self->_offset += v8;
LABEL_13:
  self->_excessDataLength += a4 - v8;
  return v8;
}

- (unint64_t)rewindBytesToPosition64:(unint64_t)a3
{
  self->_offset = a3;
  if (!self->_bytes)
  {
    lseek(self->_fd, a3, 0);
    return self->_offset;
  }

  return a3;
}

- (double)percentFull
{
  capacity = self->_capacity;
  if (capacity)
  {
    return self->_offset * 100.0 / capacity;
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v2 = "NO";
  if (self->_allocatedBytes)
  {
    v2 = "YES";
  }

  return [MEMORY[0x29EDBA050] stringWithFormat:@"<PTPWrappedBytes %p>{\n  _offset:           %llu\n  _capacity:         %llu\n  _allocatedBytes:   %s\n  _bytes:            <%p>\n  _fd:               %d\n  _excessDataLength: %llu}", self, self->_offset, self->_capacity, v2, self->_bytes, self->_fd, self->_excessDataLength];
}

- (void)replaceBytesInRange:(_NSRange)a3 withBytes:(const void *)a4
{
  if (!self->_bytes)
  {
    length = a3.length;
    offset = self->_offset;
    lseek(self->_fd, a3.location, 0);
    [(PTPWrappedBytes *)self appendBytes:a4 length:length];
    if (self->_offset <= offset)
    {
      fd = self->_fd;

      lseek(fd, offset, 0);
    }
  }
}

@end