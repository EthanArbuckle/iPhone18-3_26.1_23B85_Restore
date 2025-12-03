@interface PTPWrappedBytes
+ (id)wrappedBytesWithBytes:(void *)bytes capacity:(unint64_t)capacity;
+ (id)wrappedBytesWithCapacity:(unint64_t)capacity;
- (PTPWrappedBytes)initWithBytes:(void *)bytes capacity:(unint64_t)capacity;
- (PTPWrappedBytes)initWithCapacity:(unint64_t)capacity;
- (PTPWrappedBytes)initWithFileDescriptor:(int)descriptor capacity:(unint64_t)capacity;
- (double)percentFull;
- (id)description;
- (unint64_t)appendBytes:(const void *)bytes length:(unint64_t)length;
- (unint64_t)appendData:(id)data;
- (unint64_t)rewindBytesToPosition64:(unint64_t)position64;
- (unint64_t)updateCapacity:(unint64_t)capacity;
- (void)dealloc;
- (void)replaceBytesInRange:(_NSRange)range withBytes:(const void *)bytes;
- (void)setLength:(unint64_t)length;
@end

@implementation PTPWrappedBytes

+ (id)wrappedBytesWithCapacity:(unint64_t)capacity
{
  v3 = [[PTPWrappedBytes alloc] initWithCapacity:capacity];

  return v3;
}

+ (id)wrappedBytesWithBytes:(void *)bytes capacity:(unint64_t)capacity
{
  v4 = [[PTPWrappedBytes alloc] initWithBytes:bytes capacity:capacity];

  return v4;
}

- (PTPWrappedBytes)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = PTPWrappedBytes;
  v4 = [(PTPWrappedBytes *)&v6 init];
  if (v4)
  {
    if (capacity)
    {
      v4->_bytes = malloc_type_malloc(capacity, 0xE23C6C59uLL);
    }

    v4->_capacity = capacity;
    v4->_offset = 0;
    *&v4->_allocatedBytes = 257;
  }

  return v4;
}

- (PTPWrappedBytes)initWithBytes:(void *)bytes capacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = PTPWrappedBytes;
  result = [(PTPWrappedBytes *)&v7 init];
  if (result)
  {
    result->_bytes = bytes;
    result->_capacity = capacity;
    result->_offset = 0;
    *&result->_allocatedBytes = 256;
  }

  return result;
}

- (PTPWrappedBytes)initWithFileDescriptor:(int)descriptor capacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = PTPWrappedBytes;
  result = [(PTPWrappedBytes *)&v7 init];
  if (result)
  {
    result->_fd = descriptor;
    result->_capacity = capacity;
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

- (unint64_t)updateCapacity:(unint64_t)capacity
{
  result = self->_capacity;
  if (result < capacity)
  {
    v6 = malloc_type_realloc(self->_bytes, capacity, 0x5BBA3FCEuLL);
    if (v6)
    {
      self->_bytes = v6;
      self->_capacity = capacity;
      return capacity;
    }

    else
    {
      return self->_capacity;
    }
  }

  return result;
}

- (void)setLength:(unint64_t)length
{
  capacity = self->_capacity;
  if (capacity >= length)
  {
    capacity = length;
  }

  self->_offset = capacity;
}

- (unint64_t)appendData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
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
      memcpy(&bytes[offset], [dataCopy bytes], v6);
    }

    else
    {
      v6 = write(self->_fd, [dataCopy bytes], v6);
    }

    self->_offset += v6;
  }

LABEL_12:
  self->_excessDataLength += [dataCopy length] - v6;

  return v6;
}

- (unint64_t)appendBytes:(const void *)bytes length:(unint64_t)length
{
  if (__PAIR64__(self->_useByteBuffer, self->_allocatedBytes) != 0x100000001)
  {
    offset = self->_offset;
    if (self->_capacity - offset >= length)
    {
      lengthCopy3 = length;
    }

    else
    {
      lengthCopy3 = self->_capacity - offset;
    }

    goto LABEL_8;
  }

  offset = self->_offset;
  lengthCopy3 = length;
  if (self->_capacity - offset >= length)
  {
    goto LABEL_8;
  }

  capacity = offset + length;
  v10 = malloc_type_realloc(self->_bytes, offset + length, 0xFBA8BADAuLL);
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
  lengthCopy3 = capacity - offset;
  if (v13)
  {
LABEL_8:
    if (!lengthCopy3)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  lengthCopy3 = length;
LABEL_9:
  bytes = self->_bytes;
  if (bytes)
  {
    memcpy(&bytes[offset], bytes, lengthCopy3);
  }

  else
  {
    lengthCopy3 = write(self->_fd, bytes, lengthCopy3);
  }

  self->_offset += lengthCopy3;
LABEL_13:
  self->_excessDataLength += length - lengthCopy3;
  return lengthCopy3;
}

- (unint64_t)rewindBytesToPosition64:(unint64_t)position64
{
  self->_offset = position64;
  if (!self->_bytes)
  {
    lseek(self->_fd, position64, 0);
    return self->_offset;
  }

  return position64;
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

- (void)replaceBytesInRange:(_NSRange)range withBytes:(const void *)bytes
{
  if (!self->_bytes)
  {
    length = range.length;
    offset = self->_offset;
    lseek(self->_fd, range.location, 0);
    [(PTPWrappedBytes *)self appendBytes:bytes length:length];
    if (self->_offset <= offset)
    {
      fd = self->_fd;

      lseek(fd, offset, 0);
    }
  }
}

@end