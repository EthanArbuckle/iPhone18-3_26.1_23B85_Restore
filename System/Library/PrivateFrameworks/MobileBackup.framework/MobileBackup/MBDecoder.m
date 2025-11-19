@interface MBDecoder
+ (MBDecoder)decoderWithData:(id)a3;
- (MBDecoder)initWithData:(id)a3;
- (char)decodeInt8;
- (double)decodeVersion;
- (id)decodeData;
- (id)decodeDate;
- (id)decodeString;
- (int)decodeInt32;
- (int64_t)decodeInt64;
- (signed)decodeInt16;
- (void)close;
- (void)decodeBytes:(void *)a3 length:(unint64_t)a4;
- (void)reset;
- (void)setOffset:(unint64_t)a3;
@end

@implementation MBDecoder

+ (MBDecoder)decoderWithData:(id)a3
{
  v3 = a3;
  v4 = [[MBDecoder alloc] initWithData:v3];

  return v4;
}

- (MBDecoder)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBDecoder;
  v6 = [(MBDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    *&v7->_offset = xmmword_1002BA2B0;
  }

  return v7;
}

- (void)setOffset:(unint64_t)a3
{
  if ([(NSData *)self->_data length]< a3)
  {
    objc_exception_throw([[MBException alloc] initWithCode:12 format:{@"Offset out of range: offset=%lu, length=%lu", a3, -[NSData length](self->_data, "length")}]);
  }

  self->_offset = a3;
}

- (char)decodeInt8
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:1];
  return v3;
}

- (signed)decodeInt16
{
  v4 = 0;
  [(MBDecoder *)self decodeBytes:&v4 length:2];
  return bswap32(v4) >> 16;
}

- (int)decodeInt32
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:4];
  return bswap32(v3);
}

- (int64_t)decodeInt64
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:8];
  return bswap64(v3);
}

- (double)decodeVersion
{
  v3 = [(MBDecoder *)self decodeInt8];
  v4 = [(MBDecoder *)self decodeInt8];
  if (v3 <= 0)
  {
    v6 = [[MBException alloc] initWithCode:11 format:{@"Invalid major version: %d", v3}];
    goto LABEL_6;
  }

  if (v4 >= 0xA)
  {
    v6 = [[MBException alloc] initWithCode:11 format:{@"Invalid minor version: %d", v4}];
LABEL_6:
    objc_exception_throw(v6);
  }

  return v3 + v4 * 0.1;
}

- (id)decodeData
{
  v3 = [(MBDecoder *)self decodeInt16];
  if (v3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3, 0xA64561BCuLL);
    [(MBDecoder *)self decodeBytes:v5 length:v4];
    v6 = [[NSData alloc] initWithBytesNoCopy:v5 length:v4 freeWhenDone:1];
  }

  return v6;
}

- (id)decodeDate
{
  v2 = [(MBDecoder *)self decodeInt32];
  if ((v2 & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:v2];
  }

  return v3;
}

- (id)decodeString
{
  v3 = [(MBDecoder *)self decodeInt16];
  if (v3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = malloc_type_malloc(v3, 0xC4DA71ABuLL);
    [(MBDecoder *)self decodeBytes:v5 length:v4];
    v6 = [[NSString alloc] initWithBytesNoCopy:v5 length:v4 encoding:4 freeWhenDone:1];
  }

  return v6;
}

- (void)decodeBytes:(void *)a3 length:(unint64_t)a4
{
  v7 = self->_offset + a4;
  if (v7 > [(NSData *)self->_data length])
  {
    objc_exception_throw([[MBException alloc] initWithCode:12 format:{@"Bytes out of range: bytes=%lu, offset=%lu, length=%lu", a4, self->_offset, -[NSData length](self->_data, "length")}]);
  }

  [(NSData *)self->_data getBytes:a3 range:self->_offset, a4];
  self->_offset += a4;
}

- (void)reset
{
  mark = self->_mark;
  if ((mark & 0x8000000000000000) != 0)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MBDecoder.m" lineNumber:127 description:@"Mark not set"];

    mark = self->_mark;
  }

  self->_offset = mark;
  self->_mark = -1;
}

- (void)close
{
  data = self->_data;
  self->_data = 0;
  _objc_release_x1();
}

@end