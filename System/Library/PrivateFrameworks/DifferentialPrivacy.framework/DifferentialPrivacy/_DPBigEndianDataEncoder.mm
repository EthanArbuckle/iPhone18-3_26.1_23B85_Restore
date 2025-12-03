@interface _DPBigEndianDataEncoder
- (BOOL)writeUInt24:(unsigned int)int24;
- (_DPBigEndianDataEncoder)init;
- (_DPBigEndianDataEncoder)initWithCapacity:(unint64_t)capacity;
- (void)appendData:(id)data;
- (void)writeUChar:(unsigned __int8)char;
- (void)writeUInt16:(unsigned __int16)int16;
- (void)writeUInt32:(unsigned int)int32;
- (void)writeUInt64:(unint64_t)int64;
@end

@implementation _DPBigEndianDataEncoder

- (_DPBigEndianDataEncoder)init
{
  v6.receiver = self;
  v6.super_class = _DPBigEndianDataEncoder;
  v2 = [(_DPBigEndianDataEncoder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

- (_DPBigEndianDataEncoder)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = _DPBigEndianDataEncoder;
  v4 = [(_DPBigEndianDataEncoder *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:capacity];
    buffer = v4->_buffer;
    v4->_buffer = v5;
  }

  return v4;
}

- (void)writeUInt64:(unint64_t)int64
{
  v4 = bswap64(int64);
  buffer = [(_DPBigEndianDataEncoder *)self buffer];
  [buffer appendBytes:&v4 length:8];
}

- (void)writeUInt32:(unsigned int)int32
{
  v4 = bswap32(int32);
  buffer = [(_DPBigEndianDataEncoder *)self buffer];
  [buffer appendBytes:&v4 length:4];
}

- (BOOL)writeUInt24:(unsigned int)int24
{
  v3 = HIBYTE(int24);
  if (!HIBYTE(int24))
  {
    int24Copy = int24;
    [(_DPBigEndianDataEncoder *)self writeUChar:BYTE2(int24)];
    [(_DPBigEndianDataEncoder *)self writeUChar:HIBYTE(int24Copy)];
    [(_DPBigEndianDataEncoder *)self writeUChar:int24Copy];
  }

  return v3 == 0;
}

- (void)writeUInt16:(unsigned __int16)int16
{
  v4 = __rev16(int16);
  buffer = [(_DPBigEndianDataEncoder *)self buffer];
  [buffer appendBytes:&v4 length:2];
}

- (void)writeUChar:(unsigned __int8)char
{
  charCopy = char;
  buffer = [(_DPBigEndianDataEncoder *)self buffer];
  [buffer appendBytes:&charCopy length:1];
}

- (void)appendData:(id)data
{
  if (data)
  {
    dataCopy = data;
    buffer = [(_DPBigEndianDataEncoder *)self buffer];
    [buffer appendData:dataCopy];
  }
}

@end