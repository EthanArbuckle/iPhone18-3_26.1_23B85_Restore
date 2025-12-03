@interface CRXUBitBuffer
- (BOOL)readBool:(BOOL *)bool;
- (BOOL)readData:(id)data bitWidth:(unint64_t)width;
- (BOOL)readUInteger:(unint64_t *)integer bitWidth:(unint64_t)width;
- (BOOL)skipBits:(unint64_t)bits;
- (BOOL)writeBool:(BOOL)bool;
- (BOOL)writeData:(id)data bitWidth:(unint64_t)width;
- (BOOL)writeUInteger:(unint64_t)integer bitWidth:(unint64_t)width;
- (CRXUBitBuffer)initWithData:(id)data;
- (CRXUBitBuffer)initWithMutableData:(id)data;
- (void)nextByte;
- (void)rewind;
@end

@implementation CRXUBitBuffer

- (CRXUBitBuffer)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CRXUBitBuffer;
  v6 = [(CRXUBitBuffer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputData, data);
    v7->_byteCount = [(NSData *)v7->_inputData length];
    v7->_bitCount = 8 * [(NSData *)v7->_inputData length];
    bytes = [(NSData *)v7->_inputData bytes];
    v7->_inputPtr = bytes;
    v7->_inputEndPtr = (bytes + [(NSData *)v7->_inputData length]);
    v7->_curInputByte = *v7->_inputPtr;
    v7->_bitOffset = 0;
    v7->_bitOffsetInByte = 0;
  }

  return v7;
}

- (CRXUBitBuffer)initWithMutableData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CRXUBitBuffer;
  v6 = [(CRXUBitBuffer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputData, data);
    v7->_byteCount = [(NSMutableData *)v7->_outputData length];
    v7->_bitCount = 8 * [(NSMutableData *)v7->_outputData length];
    mutableBytes = [(NSMutableData *)v7->_outputData mutableBytes];
    v7->_outputPtr = mutableBytes;
    v7->_bitOffset = 0;
    v7->_bitOffsetInByte = 0;
    bzero(mutableBytes, [(NSMutableData *)v7->_outputData length]);
  }

  return v7;
}

- (void)rewind
{
  inputData = self->_inputData;
  if (inputData)
  {
    bytes = [(NSData *)inputData bytes];
    self->_inputPtr = bytes;
    self->_curInputByte = *bytes;
  }

  else
  {
    mutableBytes = [(NSMutableData *)self->_outputData mutableBytes];
    self->_outputPtr = mutableBytes;
    bzero(mutableBytes, [(NSMutableData *)self->_outputData length]);
  }

  self->_bitOffset = 0;
  self->_bitOffsetInByte = 0;
}

- (BOOL)skipBits:(unint64_t)bits
{
  v4 = self->_bitCount - self->_bitOffset;
  if (bits - 1 < v4)
  {
    bitsCopy = bits;
    do
    {
      bitOffsetInByte = self->_bitOffsetInByte;
      if (8 - bitOffsetInByte >= bitsCopy)
      {
        v8 = bitsCopy;
      }

      else
      {
        v8 = 8 - bitOffsetInByte;
      }

      if (v8 == 8 || (!self->_inputData ? (*self->_outputPtr = *self->_outputPtr << v8, bitOffsetInByte = self->_bitOffsetInByte) : (self->_curInputByte <<= v8), v9 = bitOffsetInByte + v8, self->_bitOffsetInByte = v9, v9 == 8))
      {
        [(CRXUBitBuffer *)self nextByte];
      }

      self->_bitOffset += v8;
      bitsCopy -= v8;
    }

    while (bitsCopy);
  }

  return v4 >= bits;
}

- (BOOL)readBool:(BOOL *)bool
{
  if (!self->_inputData)
  {
    return 0;
  }

  bitOffset = self->_bitOffset;
  if (bitOffset == self->_bitCount)
  {
    return 0;
  }

  *bool = self->_curInputByte >> 7;
  self->_curInputByte *= 2;
  v7 = self->_bitOffsetInByte + 1;
  self->_bitOffset = bitOffset + 1;
  self->_bitOffsetInByte = v7;
  if (v7 == 8)
  {
    [(CRXUBitBuffer *)self nextByte:v3];
  }

  return 1;
}

- (BOOL)writeBool:(BOOL)bool
{
  outputData = self->_outputData;
  if (outputData)
  {
    if (self->_bitOffset == self->_bitCount)
    {
      LOBYTE(outputData) = 0;
    }

    else
    {
      *self->_outputPtr *= 2;
      *self->_outputPtr |= bool;
      LOBYTE(outputData) = 1;
      v6 = vaddq_s64(*&self->_bitOffset, vdupq_n_s64(1uLL));
      *&self->_bitOffset = v6;
      if (v6.i64[1] == 8)
      {
        [(CRXUBitBuffer *)self nextByte:v3];
        LOBYTE(outputData) = 1;
      }
    }
  }

  return outputData;
}

- (BOOL)readUInteger:(unint64_t *)integer bitWidth:(unint64_t)width
{
  result = 0;
  if (width <= 0x40 && self->_inputData)
  {
    widthCopy = width;
    if (self->_bitCount - self->_bitOffset >= width)
    {
      *integer = 0;
      if (width)
      {
        do
        {
          if (8 - self->_bitOffsetInByte >= widthCopy)
          {
            v8 = widthCopy;
          }

          else
          {
            v8 = 8 - self->_bitOffsetInByte;
          }

          v9 = *integer << v8;
          *integer = v9;
          *integer = v9 | (self->_curInputByte >> (8 - v8));
          self->_curInputByte <<= v8;
          v10 = self->_bitOffsetInByte + v8;
          self->_bitOffset += v8;
          self->_bitOffsetInByte = v10;
          if (v10 == 8)
          {
            [(CRXUBitBuffer *)self nextByte];
          }

          widthCopy -= v8;
        }

        while (widthCopy);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)writeUInteger:(unint64_t)integer bitWidth:(unint64_t)width
{
  result = 0;
  if (width <= 0x40 && self->_outputData)
  {
    widthCopy = width;
    if (self->_bitCount - self->_bitOffset >= width)
    {
      if (width)
      {
        v7 = (0xFFFFFFFFFFFFFFFFLL >> -width) & integer;
        widthCopy2 = width;
        do
        {
          if (8 - self->_bitOffsetInByte >= widthCopy)
          {
            v9 = widthCopy;
          }

          else
          {
            v9 = 8 - self->_bitOffsetInByte;
          }

          *self->_outputPtr = *self->_outputPtr << v9;
          widthCopy2 -= v9;
          *self->_outputPtr |= v7 >> widthCopy2;
          v10 = self->_bitOffsetInByte + v9;
          self->_bitOffsetInByte = v10;
          if (v10 == 8)
          {
            [(CRXUBitBuffer *)self nextByte];
          }

          self->_bitOffset += v9;
          widthCopy -= v9;
        }

        while (widthCopy);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)readData:(id)data bitWidth:(unint64_t)width
{
  dataCopy = data;
  v7 = dataCopy;
  if (self->_inputData && ((bitCount = self->_bitCount, bitOffset = self->_bitOffset, v10 = 8 * [dataCopy length], v10 >= width) ? (v11 = bitCount - bitOffset >= width) : (v11 = 0), v11))
  {
    mutableBytes = [v7 mutableBytes];
    if (width)
    {
      v14 = mutableBytes;
      v15 = v10 - width;
      if (v10 < width)
      {
        v15 = 0;
      }

      do
      {
        v21 = 0;
        if (v15 <= 7)
        {
          if (width >= 8)
          {
            widthCopy = 8;
          }

          else
          {
            widthCopy = width;
          }

          widthCopy2 = 8 - v15;
          if (8 - v15 >= width)
          {
            widthCopy2 = width;
          }

          if (v15)
          {
            v17 = widthCopy2;
          }

          else
          {
            v17 = widthCopy;
          }

          [(CRXUBitBuffer *)self readUInteger:&v21 bitWidth:v17];
          v15 = 0;
          v16 = v21;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v15 -= 8;
        }

        *v14++ = v16;
        width -= v17;
      }

      while (width);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)writeData:(id)data bitWidth:(unint64_t)width
{
  dataCopy = data;
  v7 = dataCopy;
  if (self->_outputData)
  {
    bitCount = self->_bitCount;
    bitOffset = self->_bitOffset;
    v10 = 0;
    if (width <= 8 * [dataCopy length] && bitCount - bitOffset >= width)
    {
      bytes = [v7 bytes];
      if (width)
      {
        v12 = bytes;
        if ((width & 7) != 0)
        {
          v13 = width & 7;
        }

        else
        {
          v13 = 8;
        }

        do
        {
          v14 = *v12++;
          [(CRXUBitBuffer *)self writeUInteger:v14 bitWidth:v13];
          width -= v13;
          v13 = 8;
        }

        while (width);
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)nextByte
{
  if (self->_inputData)
  {
    inputEndPtr = self->_inputEndPtr;
    v3 = self->_inputPtr + 1;
    self->_inputPtr = v3;
    if (v3 < inputEndPtr)
    {
      self->_curInputByte = *v3;
    }
  }

  else
  {
    ++self->_outputPtr;
  }

  self->_bitOffsetInByte = 0;
}

@end