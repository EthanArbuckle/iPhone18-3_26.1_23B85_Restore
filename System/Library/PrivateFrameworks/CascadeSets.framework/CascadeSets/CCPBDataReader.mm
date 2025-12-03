@interface CCPBDataReader
- (BOOL)readBOOL;
- (BOOL)seekToOffset:(unint64_t)offset;
- (CCPBDataReader)initWithData:(id)data;
- (char)readInt8;
- (double)readDouble;
- (float)readFloat;
- (id)readBigEndianShortThenString;
- (id)readBytes:(unsigned int)bytes;
- (id)readProtoBuffer;
- (int)readInt32;
- (int)readSfixed32;
- (int)readSint32;
- (int64_t)readInt64;
- (int64_t)readSfixed64;
- (int64_t)readSint64;
- (int64_t)readVarInt;
- (unint64_t)readFixed64;
- (unint64_t)readUint64;
- (unsigned)readFixed32;
- (unsigned)readUint32;
- (void)readTag:(unsigned __int16 *)tag andType:(char *)type;
- (void)readTag:(unsigned int *)tag type:(char *)type;
- (void)updateData:(id)data;
@end

@implementation CCPBDataReader

- (CCPBDataReader)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CCPBDataReader;
  v6 = [(CCPBDataReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v7->_pos = 0;
    v7->_error = 0;
    v7->_length = [(NSData *)v7->_data length];
    v7->_bytes = [(NSData *)v7->_data bytes];
  }

  return v7;
}

- (void)updateData:(id)data
{
  dataCopy = data;
  data = self->_data;
  v7 = dataCopy;
  if (data != dataCopy)
  {
    objc_storeStrong(&self->_data, data);
    data = self->_data;
  }

  self->_bytes = [(NSData *)data bytes];
  self->_length = [(NSData *)self->_data length];
}

- (BOOL)seekToOffset:(unint64_t)offset
{
  length = self->_length;
  if (length >= offset)
  {
    self->_pos = offset;
    self->_error = 0;
  }

  return length >= offset;
}

- (void)readTag:(unsigned int *)tag type:(char *)type
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  pos = self->_pos;
  while (1)
  {
    v8 = pos + 1;
    if (pos == -1 || v8 > self->_length)
    {
      break;
    }

    v9 = self->_bytes[pos];
    self->_pos = v8;
    v6 |= (v9 & 0x7F) << v4;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v4 += 7;
    pos = v8;
    if (v5++ >= 9)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    v6 = 0;
  }

LABEL_11:
  *type = v6 & 7;
  *tag = v6 >> 3;
}

- (void)readTag:(unsigned __int16 *)tag andType:(char *)type
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  pos = self->_pos;
  while (1)
  {
    v8 = pos + 1;
    if (pos == -1 || v8 > self->_length)
    {
      break;
    }

    v9 = self->_bytes[pos];
    self->_pos = v8;
    v6 |= (v9 & 0x7F) << v4;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v4 += 7;
    pos = v8;
    if (v5++ >= 9)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    v6 = 0;
  }

LABEL_11:
  *type = v6 & 7;
  *tag = v6 >> 3;
}

- (id)readProtoBuffer
{
  readBigEndianFixed32 = [(CCPBDataReader *)self readBigEndianFixed32];
  pos = self->_pos;
  length = self->_length;
  if (pos + readBigEndianFixed32 <= length && (v6 = readBigEndianFixed32, length - pos >= readBigEndianFixed32))
  {
    v7 = [(NSData *)self->_data subdataWithRange:?];
    self->_pos += v6;
  }

  else
  {
    v7 = 0;
    self->_error = 1;
  }

  return v7;
}

- (char)readInt8
{
  pos = self->_pos;
  v3 = pos + 1;
  if (pos == -1 || v3 > self->_length)
  {
    v4 = 0;
    self->_error = 1;
  }

  else
  {
    v4 = self->_bytes[pos];
    self->_pos = v3;
  }

  return v4;
}

- (int64_t)readVarInt
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (double)readDouble
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFF7 && pos + 8 <= self->_length)
  {
    result = *&self->_bytes[pos];
    self->_pos = pos + 8;
  }

  else
  {
    self->_error = 1;
    return 0.0;
  }

  return result;
}

- (float)readFloat
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFFBLL && pos + 4 <= self->_length)
  {
    result = *&self->_bytes[pos];
    self->_pos = pos + 4;
  }

  else
  {
    self->_error = 1;
    return 0.0;
  }

  return result;
}

- (int)readInt32
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (int64_t)readInt64
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (unsigned)readUint32
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)readUint64
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (int)readSint32
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      LODWORD(v4) = 0;
      return -(v4 & 1) ^ (v4 >> 1);
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    LODWORD(v4) = 0;
  }

  return -(v4 & 1) ^ (v4 >> 1);
}

- (int64_t)readSint64
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      v4 = 0;
      return -(v4 & 1) ^ (v4 >> 1);
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    v4 = 0;
  }

  return -(v4 & 1) ^ (v4 >> 1);
}

- (unsigned)readFixed32
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFFBLL && (v3 = pos + 4, pos + 4 <= self->_length))
  {
    v4 = *&self->_bytes[pos];
    self->_pos = v3;
  }

  else
  {
    v4 = 0;
    self->_error = 1;
  }

  return v4;
}

- (unint64_t)readFixed64
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFF7 && (v3 = pos + 8, pos + 8 <= self->_length))
  {
    v4 = *&self->_bytes[pos];
    self->_pos = v3;
  }

  else
  {
    v4 = 0;
    self->_error = 1;
  }

  return v4;
}

- (int)readSfixed32
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFFBLL && (v3 = pos + 4, pos + 4 <= self->_length))
  {
    v4 = *&self->_bytes[pos];
    self->_pos = v3;
  }

  else
  {
    v4 = 0;
    self->_error = 1;
  }

  return v4;
}

- (int64_t)readSfixed64
{
  pos = self->_pos;
  if (pos <= 0xFFFFFFFFFFFFFFF7 && (v3 = pos + 8, pos + 8 <= self->_length))
  {
    v4 = *&self->_bytes[pos];
    self->_pos = v3;
  }

  else
  {
    v4 = 0;
    self->_error = 1;
  }

  return v4;
}

- (BOOL)readBOOL
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  pos = self->_pos;
  while (1)
  {
    v6 = pos + 1;
    if (pos == -1 || v6 > self->_length)
    {
      break;
    }

    v7 = self->_bytes[pos];
    self->_pos = v6;
    v4 |= (v7 & 0x7F) << v2;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v2 += 7;
    pos = v6;
    if (v3++ >= 9)
    {
      return 0;
    }
  }

  self->_error = 1;
LABEL_9:
  if (self->_error)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4 == 0;
  }

  return !v10;
}

- (id)readBytes:(unsigned int)bytes
{
  if ([(CCPBDataReader *)self hasError])
  {
    v5 = 0;
  }

  else
  {
    pos = self->_pos;
    if (__CFADD__(pos, bytes) || pos + bytes > self->_length)
    {
      v5 = 0;
      self->_error = 1;
    }

    else
    {
      v5 = [(NSData *)self->_data subdataWithRange:?];
      self->_pos += bytes;
    }
  }

  return v5;
}

- (id)readBigEndianShortThenString
{
  readBigEndianFixed16 = [(CCPBDataReader *)self readBigEndianFixed16];
  if ([(CCPBDataReader *)self hasError])
  {
    v4 = 0;
  }

  else
  {
    pos = self->_pos;
    v6 = __CFADD__(pos, readBigEndianFixed16);
    v7 = pos + readBigEndianFixed16;
    if (v6 || v7 > self->_length)
    {
      v4 = 0;
      self->_error = 1;
    }

    else
    {
      bytes = [(NSData *)self->_data bytes];
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&bytes[self->_pos] length:readBigEndianFixed16 encoding:4];
      self->_pos += readBigEndianFixed16;
    }
  }

  return v4;
}

@end