@interface CCPBDataReader
- (BOOL)readBOOL;
- (BOOL)seekToOffset:(unint64_t)a3;
- (CCPBDataReader)initWithData:(id)a3;
- (char)readInt8;
- (double)readDouble;
- (float)readFloat;
- (id)readBigEndianShortThenString;
- (id)readBytes:(unsigned int)a3;
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
- (void)readTag:(unsigned __int16 *)a3 andType:(char *)a4;
- (void)readTag:(unsigned int *)a3 type:(char *)a4;
- (void)updateData:(id)a3;
@end

@implementation CCPBDataReader

- (CCPBDataReader)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCPBDataReader;
  v6 = [(CCPBDataReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v7->_pos = 0;
    v7->_error = 0;
    v7->_length = [(NSData *)v7->_data length];
    v7->_bytes = [(NSData *)v7->_data bytes];
  }

  return v7;
}

- (void)updateData:(id)a3
{
  v5 = a3;
  data = self->_data;
  v7 = v5;
  if (data != v5)
  {
    objc_storeStrong(&self->_data, a3);
    data = self->_data;
  }

  self->_bytes = [(NSData *)data bytes];
  self->_length = [(NSData *)self->_data length];
}

- (BOOL)seekToOffset:(unint64_t)a3
{
  length = self->_length;
  if (length >= a3)
  {
    self->_pos = a3;
    self->_error = 0;
  }

  return length >= a3;
}

- (void)readTag:(unsigned int *)a3 type:(char *)a4
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
  *a4 = v6 & 7;
  *a3 = v6 >> 3;
}

- (void)readTag:(unsigned __int16 *)a3 andType:(char *)a4
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
  *a4 = v6 & 7;
  *a3 = v6 >> 3;
}

- (id)readProtoBuffer
{
  v3 = [(CCPBDataReader *)self readBigEndianFixed32];
  pos = self->_pos;
  length = self->_length;
  if (pos + v3 <= length && (v6 = v3, length - pos >= v3))
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

- (id)readBytes:(unsigned int)a3
{
  if ([(CCPBDataReader *)self hasError])
  {
    v5 = 0;
  }

  else
  {
    pos = self->_pos;
    if (__CFADD__(pos, a3) || pos + a3 > self->_length)
    {
      v5 = 0;
      self->_error = 1;
    }

    else
    {
      v5 = [(NSData *)self->_data subdataWithRange:?];
      self->_pos += a3;
    }
  }

  return v5;
}

- (id)readBigEndianShortThenString
{
  v3 = [(CCPBDataReader *)self readBigEndianFixed16];
  if ([(CCPBDataReader *)self hasError])
  {
    v4 = 0;
  }

  else
  {
    pos = self->_pos;
    v6 = __CFADD__(pos, v3);
    v7 = pos + v3;
    if (v6 || v7 > self->_length)
    {
      v4 = 0;
      self->_error = 1;
    }

    else
    {
      v8 = [(NSData *)self->_data bytes];
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v8[self->_pos] length:v3 encoding:4];
      self->_pos += v3;
    }
  }

  return v4;
}

@end