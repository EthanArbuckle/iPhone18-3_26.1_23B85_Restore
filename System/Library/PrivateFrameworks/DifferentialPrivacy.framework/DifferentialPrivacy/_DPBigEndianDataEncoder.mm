@interface _DPBigEndianDataEncoder
- (BOOL)writeUInt24:(unsigned int)a3;
- (_DPBigEndianDataEncoder)init;
- (_DPBigEndianDataEncoder)initWithCapacity:(unint64_t)a3;
- (void)appendData:(id)a3;
- (void)writeUChar:(unsigned __int8)a3;
- (void)writeUInt16:(unsigned __int16)a3;
- (void)writeUInt32:(unsigned int)a3;
- (void)writeUInt64:(unint64_t)a3;
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

- (_DPBigEndianDataEncoder)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _DPBigEndianDataEncoder;
  v4 = [(_DPBigEndianDataEncoder *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a3];
    buffer = v4->_buffer;
    v4->_buffer = v5;
  }

  return v4;
}

- (void)writeUInt64:(unint64_t)a3
{
  v4 = bswap64(a3);
  v3 = [(_DPBigEndianDataEncoder *)self buffer];
  [v3 appendBytes:&v4 length:8];
}

- (void)writeUInt32:(unsigned int)a3
{
  v4 = bswap32(a3);
  v3 = [(_DPBigEndianDataEncoder *)self buffer];
  [v3 appendBytes:&v4 length:4];
}

- (BOOL)writeUInt24:(unsigned int)a3
{
  v3 = HIBYTE(a3);
  if (!HIBYTE(a3))
  {
    v4 = a3;
    [(_DPBigEndianDataEncoder *)self writeUChar:BYTE2(a3)];
    [(_DPBigEndianDataEncoder *)self writeUChar:HIBYTE(v4)];
    [(_DPBigEndianDataEncoder *)self writeUChar:v4];
  }

  return v3 == 0;
}

- (void)writeUInt16:(unsigned __int16)a3
{
  v4 = __rev16(a3);
  v3 = [(_DPBigEndianDataEncoder *)self buffer];
  [v3 appendBytes:&v4 length:2];
}

- (void)writeUChar:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(_DPBigEndianDataEncoder *)self buffer];
  [v3 appendBytes:&v4 length:1];
}

- (void)appendData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_DPBigEndianDataEncoder *)self buffer];
    [v5 appendData:v4];
  }
}

@end