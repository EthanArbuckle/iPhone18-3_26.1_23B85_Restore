@interface PTPDataPacket
- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andData:(id)data;
- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andDataSource:(id)source;
- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andFilepath:(id)filepath;
- (PTPDataPacket)initWithUSBBuffer:(void *)buffer;
- (_PTPRange)range;
- (id)contentForUSB;
- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity;
- (id)description;
- (int)setRange:(_PTPRange)range;
- (int64_t)copyDataToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport fromOffset:(unint64_t)offset;
- (int64_t)copyFromBuffer:(void *)buffer numBytes:(int64_t)bytes;
- (int64_t)copyHeaderToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport;
- (int64_t)copyToBuffer:(void *)buffer numBytes:(int64_t)bytes;
- (int64_t)copyToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport;
- (void)dealloc;
- (void)setData:(id)data;
@end

@implementation PTPDataPacket

- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = PTPDataPacket;
  v10 = [(PTPDataPacket *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_operationCode = code;
    v10->_transactionID = d;
    objc_storeStrong(&v10->_data, data);
    v12 = [v11->_data length];
    v11->_bufferSize = v12;
    v11->_offsetInBuffer = 0;
    v11->_range.location = 0;
    v11->_range.length = v12;
  }

  return v11;
}

- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = PTPDataPacket;
  v10 = [(PTPDataPacket *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_operationCode = code;
    v10->_transactionID = d;
    objc_storeStrong(&v10->_dataSource, source);
    v12 = [v11->_dataSource length];
    v11->_bufferSize = v12;
    v11->_offsetInBuffer = 0;
    v11->_range.location = 0;
    v11->_range.length = v12;
  }

  return v11;
}

- (PTPDataPacket)initWithOperationCode:(unsigned __int16)code transactionID:(unsigned int)d andFilepath:(id)filepath
{
  filepathCopy = filepath;
  v17.receiver = self;
  v17.super_class = PTPDataPacket;
  v10 = [(PTPDataPacket *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_operationCode = code;
    v10->_transactionID = d;
    objc_storeStrong(&v10->_filepath, filepath);
    v12 = open([(NSString *)v11->_filepath fileSystemRepresentation], 0, 0);
    v11->_fd = v12;
    if (v12 >= 1)
    {
      v13 = lseek(v12, 0, 2);
      v11->_bufferSize = v13;
      if (v13 != -1)
      {
        v11->_range.length = v13;
        v14 = lseek(v11->_fd, 0, 0);
        v11->_offsetInBuffer = v14;
        if (v14 != -1)
        {
          v11->_range.location = v14;
          goto LABEL_9;
        }
      }

      fd = v11->_fd;
      if (fd >= 1)
      {
        close(fd);
      }
    }

    v11 = 0;
  }

LABEL_9:

  return v11;
}

- (PTPDataPacket)initWithUSBBuffer:(void *)buffer
{
  v3 = (*buffer - 12);
  if (*buffer >= 0xCu && *(buffer + 2) == 2)
  {
    v13.receiver = self;
    v13.super_class = PTPDataPacket;
    v7 = [(PTPDataPacket *)&v13 init];
    if (v7)
    {
      v12 = buffer + 6;
      v7->_operationCode = ReadUInt16(&v12);
      v7->_transactionID = ReadUInt32(&v12);
      v8 = objc_alloc(MEMORY[0x29EDB8DF8]);
      v9 = [v8 initWithBytes:v12 length:v3];
      data = v7->_data;
      v7->_data = v9;

      v7->_bufferSize = v3;
      v7->_offsetInBuffer = 0;
      v7->_range.location = 0;
      v7->_range.length = v3;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  fd = self->_fd;
  if (fd >= 1)
  {
    close(fd);
  }

  if ([(PTPDataPacket *)self unlinkWhenDone])
  {
    filepath = [(PTPDataPacket *)self filepath];
    unlink([filepath fileSystemRepresentation]);
  }

  v5.receiver = self;
  v5.super_class = PTPDataPacket;
  [(PTPDataPacket *)&v5 dealloc];
}

- (id)contentForUSB
{
  v3 = self->_range.length + 12;
  v4 = [PTPWrappedBytes wrappedBytesWithCapacity:v3];
  __buf = ([v4 mutableBytes] + 4);
  WriteUInt16(&__buf, 2);
  WriteUInt16(&__buf, self->_operationCode);
  WriteUInt32(&__buf, self->_transactionID);
  if (!self->_range.length)
  {
LABEL_11:
    __buf = [v4 mutableBytes];
    if (HIDWORD(v3))
    {
      v9 = -2;
    }

    else
    {
      v9 = v3;
    }

    WriteUInt32(&__buf, v9);
    [v4 setLength:v3];
    goto LABEL_15;
  }

  data = self->_data;
  if (data)
  {
    memcpy(__buf, ([data bytes] + self->_range.location), self->_range.length);
    v3 += self->_range.length;
    goto LABEL_11;
  }

  dataSource = self->_dataSource;
  if (self->_fd <= 0)
  {
    if (!dataSource)
    {
      goto LABEL_11;
    }
  }

  else if (!dataSource)
  {
    v7 = pread(self->_fd, __buf, self->_range.length, self->_range.location);
    goto LABEL_9;
  }

  location = self->_range.location;
  v7 = [dataSource read:__buf length:? offset:?];
LABEL_9:
  if (v7 != -1)
  {
    v3 += v7;
    goto LABEL_11;
  }

  printerrno();

  v4 = 0;
LABEL_15:

  return v4;
}

- (id)contentForUSBUsingBuffer:(void *)buffer capacity:(unsigned int)capacity
{
  if (self->_range.length + 12 > capacity)
  {
    goto LABEL_2;
  }

  __buf = buffer + 4;
  WriteUInt16(&__buf, 2);
  WriteUInt16(&__buf, self->_operationCode);
  WriteUInt32(&__buf, self->_transactionID);
  if (!self->_range.length)
  {
    goto LABEL_14;
  }

  data = self->_data;
  if (data)
  {
    memcpy(__buf, ([data bytes] + self->_range.location), self->_range.length);
    length = self->_range.length;
    goto LABEL_12;
  }

  dataSource = self->_dataSource;
  if (self->_fd <= 0)
  {
    if (dataSource)
    {
      goto LABEL_10;
    }

LABEL_14:
    __buf = buffer;
    v12 = 12;
    goto LABEL_15;
  }

  if (!dataSource)
  {
    length = pread(self->_fd, __buf, self->_range.length, self->_range.location);
    goto LABEL_11;
  }

LABEL_10:
  location = self->_range.location;
  length = [dataSource read:__buf length:? offset:?];
LABEL_11:
  if (length == -1)
  {
    printerrno();
LABEL_2:
    v4 = 0;
    goto LABEL_17;
  }

LABEL_12:
  v12 = length + 12;
  __buf = buffer;
  if (!((length + 12) >> 32))
  {
LABEL_15:
    v13 = v12;
    goto LABEL_16;
  }

  v13 = -2;
LABEL_16:
  WriteUInt32(&__buf, v13);
  v4 = [PTPWrappedBytes wrappedBytesWithBytes:buffer capacity:capacity];
  [v4 setLength:v12];
LABEL_17:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = stringForOperationCode(self->_operationCode);
  v5 = [v3 stringWithFormat:@"<PTPDataPacket %p>{\n  _operationCode:  %@\n  _transactionID:  %lu\n  _data:           <%lu bytes>\n  _filepath:       %@\n  _bufferSize:     %llu\n  _offsetInBuffer: %llu\n  _range.location: %llu\n  _range.length:   %llu\n}", self, v4, self->_transactionID, objc_msgSend(self->_data, "length"), self->_filepath, self->_bufferSize, self->_offsetInBuffer, self->_range.location, self->_range.length];

  return v5;
}

- (void)setData:(id)data
{
  dataCopy = data;
  p_data = &self->_data;
  if (self->_data != dataCopy)
  {
    v7 = dataCopy;
    objc_storeStrong(p_data, data);
    self->_offsetInBuffer = 0;
    p_data = [self->_data length];
    dataCopy = v7;
    self->_bufferSize = p_data;
    self->_range.location = self->_offsetInBuffer;
    self->_range.length = p_data;
  }

  MEMORY[0x2A1C71028](p_data, dataCopy);
}

- (_PTPRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (int)setRange:(_PTPRange)range
{
  bufferSize = self->_bufferSize;
  if (bufferSize < range.location)
  {
    return -1;
  }

  if (!range.length)
  {
    return -2;
  }

  result = 0;
  if (range.location + range.length <= bufferSize)
  {
    length = range.length;
  }

  else
  {
    length = bufferSize - range.location;
  }

  self->_range.location = range.location;
  self->_range.length = length;
  self->_offsetInBuffer = range.location;
  return result;
}

- (int64_t)copyToBuffer:(void *)buffer numBytes:(int64_t)bytes
{
  if (bytes < 1)
  {
    return 0;
  }

  v5 = self->_range.length + self->_range.location;
  offsetInBuffer = self->_offsetInBuffer;
  v7 = (v5 - offsetInBuffer) >= bytes ? bytes : v5 - offsetInBuffer;
  if (v5 == offsetInBuffer)
  {
    return 0;
  }

  data = self->_data;
  if (data)
  {
    memcpy(buffer, ([data bytes] + self->_offsetInBuffer), v7);
LABEL_15:
    self->_offsetInBuffer += v7;
    return v7;
  }

  fd = self->_fd;
  dataSource = self->_dataSource;
  if (fd <= 0)
  {
    if (!dataSource)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (dataSource)
  {
LABEL_13:
    v11 = [self->_dataSource read:buffer length:v7 offset:?];
    goto LABEL_14;
  }

  v11 = pread(fd, buffer, v7, offsetInBuffer);
LABEL_14:
  v7 = v11;
  if (v11 != -1)
  {
    goto LABEL_15;
  }

  printerrno();
  return 0;
}

- (int64_t)copyToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport
{
  transportCopy = transport;
  bytesCopy = bytes;
  capacity = [bytesCopy capacity];
  mutableBytes = [bytesCopy mutableBytes];
  v28 = mutableBytes;
  if (capacity < 0xC)
  {
    goto LABEL_31;
  }

  v9 = mutableBytes;
  if ((transportCopy - 1) >= 2)
  {
    if (transportCopy == 3)
    {
      v10 = capacity - 12;
      if (capacity == 12)
      {
        WriteUInt32(&v28, 12);
        WriteUInt32(&v28, 10);
        goto LABEL_8;
      }

      v18 = self->_range.location - self->_offsetInBuffer;
      if (!v18)
      {
        length = self->_range.length;
        v20 = length - 4294967284u;
        v21 = length + 12;
        if (v20 < 0xFFFFFFFF00000000)
        {
          v22 = -1;
        }

        else
        {
          v22 = v21;
        }

        WriteUInt32(&v28, v22);
        v27 = v28;
        WriteUInt32(&v28, 10);
        WriteUInt32(&v28, self->_transactionID);
        v10 = [(PTPDataPacket *)self copyToBuffer:v28 numBytes:capacity - 12, v27];
        if (v10 < capacity || self->_range.length + self->_range.location == self->_offsetInBuffer)
        {
          WriteUInt32(&v27, 12);
        }

        goto LABEL_24;
      }

      v23 = v18 + self->_range.length;
      if (v23 > v10)
      {
        if (v23 <= capacity)
        {
          v25 = capacity - 1;
          selfCopy2 = self;
          goto LABEL_28;
        }

LABEL_27:
        selfCopy2 = self;
        v25 = capacity;
LABEL_28:
        v10 = [(PTPDataPacket *)selfCopy2 copyToBuffer:v9 numBytes:v25];
        v11 = bytesCopy;
        v12 = v10;
        goto LABEL_29;
      }

      WriteUInt32(&v28, 12);
      WriteUInt32(&v28, 12);
      WriteUInt32(&v28, self->_transactionID);
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = capacity - 12;
  if (capacity != 12)
  {
    if (self->_offsetInBuffer == self->_range.location)
    {
      v13 = self->_range.length;
      v14 = v13 - 4294967284u;
      v15 = v13 + 12;
      if (transportCopy == 1)
      {
        v16 = -2;
      }

      else
      {
        v16 = -1;
      }

      if (v14 >= 0xFFFFFFFF00000000)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      WriteUInt32(&v28, v17);
      WriteUInt16(&v28, 2);
      WriteUInt16(&v28, self->_operationCode);
      WriteUInt32(&v28, self->_transactionID);
      v10 = [(PTPDataPacket *)self copyToBuffer:v28 numBytes:capacity - 12];
LABEL_24:
      v12 = (v10 + 12);
      v11 = bytesCopy;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  WriteUInt32(&v28, 12);
  WriteUInt16(&v28, 2);
  WriteUInt16(&v28, self->_operationCode);
LABEL_8:
  WriteUInt32(&v28, self->_transactionID);
  v11 = bytesCopy;
  v12 = 12;
LABEL_29:
  [v11 setLength:v12];
LABEL_32:

  return v10;
}

- (int64_t)copyDataToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport fromOffset:(unint64_t)offset
{
  bytesCopy = bytes;
  capacity = [bytesCopy capacity];
  mutableBytes = [bytesCopy mutableBytes];
  self->_offsetInBuffer = offset;
  v10 = [(PTPDataPacket *)self copyToBuffer:mutableBytes numBytes:capacity];
  [bytesCopy setLength:v10];

  return v10;
}

- (int64_t)copyHeaderToWrappedBytes:(id)bytes forTransport:(unsigned __int16)transport
{
  transportCopy = transport;
  bytesCopy = bytes;
  capacity = [bytesCopy capacity];
  mutableBytes = [bytesCopy mutableBytes];
  if (capacity < 0xC)
  {
    goto LABEL_16;
  }

  if ((transportCopy - 1) >= 2)
  {
    if (transportCopy == 3)
    {
      v13 = self->_range.length + self->_range.location - self->_offsetInBuffer;
      v14 = v13 - 4294967284u;
      v15 = v13 + 12;
      if (v14 < 0xFFFFFFFF00000000)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
      }

      WriteUInt32(&mutableBytes, v16);
      WriteUInt32(&mutableBytes, 10);
      goto LABEL_15;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v8 = self->_range.length + self->_range.location - self->_offsetInBuffer;
  v9 = v8 - 4294967284u;
  v10 = v8 + 12;
  if (transportCopy == 1)
  {
    v11 = -2;
  }

  else
  {
    v11 = -1;
  }

  if (v9 >= 0xFFFFFFFF00000000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  WriteUInt32(&mutableBytes, v12);
  WriteUInt16(&mutableBytes, 2);
  WriteUInt16(&mutableBytes, self->_operationCode);
LABEL_15:
  WriteUInt32(&mutableBytes, self->_transactionID);
  v17 = 12;
  [bytesCopy setLength:12];
LABEL_17:

  return v17;
}

- (int64_t)copyFromBuffer:(void *)buffer numBytes:(int64_t)bytes
{
  if (bytes < 1)
  {
    return 0;
  }

  bytesCopy = bytes;
  offsetInBuffer = self->_offsetInBuffer;
  v8 = offsetInBuffer - self->_bufferSize + bytesCopy;
  data = self->_data;
  if (!data)
  {
    if (v8 >= 1)
    {
      self->_bufferSize = offsetInBuffer + bytesCopy;
    }

    v14 = pwrite(self->_fd, buffer, bytesCopy, offsetInBuffer);
    if (v14 != -1)
    {
      bytesCopy = v14;
      self->_offsetInBuffer += v14;
      if (!v14)
      {
        return bytesCopy;
      }

      goto LABEL_8;
    }

    printerrno();
    return 0;
  }

  if ([data isMemberOfClass:objc_opt_class()])
  {
    v10 = self->_data;
    v11 = [v10 mutableCopy];
    v12 = self->_data;
    self->_data = v11;
  }

  if (v8 >= 1)
  {
    [self->_data increaseLengthBy:v8];
    self->_bufferSize += v8;
  }

  memcpy(([self->_data mutableBytes] + self->_offsetInBuffer), buffer, bytesCopy);
  self->_offsetInBuffer += bytesCopy;
LABEL_8:
  bufferSize = self->_bufferSize;
  self->_range.location = 0;
  self->_range.length = bufferSize;
  return bytesCopy;
}

@end