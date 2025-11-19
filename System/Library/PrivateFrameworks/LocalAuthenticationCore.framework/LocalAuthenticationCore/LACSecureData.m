@interface LACSecureData
+ (id)secureDataWithBytes:(const void *)a3 length:(unint64_t)a4;
+ (id)secureDataWithData:(id)a3;
+ (id)secureDataWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeLastCharacter;
- (LACSecureData)init;
- (LACSecureData)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (LACSecureData)initWithData:(id)a3;
- (LACSecureData)initWithString:(id)a3;
- (id)nullTerminatedCopy;
- (void)appendBytes:(const void *)a3 length:(unint64_t)a4;
- (void)appendData:(id)a3;
- (void)appendString:(id)a3;
- (void)dealloc;
- (void)prepareBuffer:(unint64_t)a3;
- (void)reset;
@end

@implementation LACSecureData

- (void)dealloc
{
  [(LACSecureData *)self reset];
  v3.receiver = self;
  v3.super_class = LACSecureData;
  [(LACSecureData *)&v3 dealloc];
}

- (void)prepareBuffer:(unint64_t)a3
{
  allocatedLength = self->_allocatedLength;
  if (allocatedLength >= a3)
  {
    [LACSecureData resetBytes:self->_bytes + a3 length:allocatedLength - a3];
  }

  else
  {
    v6 = malloc_type_malloc(a3, 0x3F171307uLL);
    if (!v6)
    {
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v10);
    }

    v7 = v6;
    [LACSecureData resetBytes:v6 length:a3];
    bytes = self->_bytes;
    if (bytes)
    {
      bytesLength = self->_bytesLength;
      if (bytesLength)
      {
        memcpy(v7, bytes, bytesLength);
        [(LACSecureData *)self reset];
      }
    }

    self->_allocatedLength = a3;
    self->_bytes = v7;
  }

  self->_bytesLength = a3;
}

- (LACSecureData)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init is not a valid initializer for the class LACSecureData" userInfo:0];
  objc_exception_throw(v2);
}

- (LACSecureData)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LACSecureData;
  v5 = [(LACSecureData *)&v8 init];
  if (v5)
  {
    v7 = 0;
    [v4 getBytes:0 maxLength:0 usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v4, "length"), 0}];
    [(LACSecureData *)v5 prepareBuffer:v7];
    [v4 getBytes:v5->_bytes maxLength:v5->_bytesLength usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v4, "length"), 0}];
  }

  return v5;
}

- (LACSecureData)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = LACSecureData;
  v6 = [(LACSecureData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(LACSecureData *)v6 prepareBuffer:a4];
    memcpy(v7->_bytes, a3, a4);
  }

  return v7;
}

- (LACSecureData)initWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [(LACSecureData *)self initWithBytes:v7 length:v8];
}

+ (id)secureDataWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v4 = [[LACSecureData alloc] initWithBytes:a3 length:a4];

  return v4;
}

+ (id)secureDataWithString:(id)a3
{
  v3 = a3;
  v4 = [[LACSecureData alloc] initWithString:v3];

  return v4;
}

+ (id)secureDataWithData:(id)a3
{
  v3 = a3;
  v4 = [[LACSecureData alloc] initWithData:v3];

  return v4;
}

- (id)nullTerminatedCopy
{
  v2 = [LACSecureData secureDataWithBytes:[(LACSecureData *)self bytes] length:[(LACSecureData *)self length]];
  v4 = 0;
  [v2 appendBytes:&v4 length:1];

  return v2;
}

- (void)reset
{
  bytes = self->_bytes;
  if (bytes)
  {
    [LACSecureData resetBytes:bytes length:self->_bytesLength];
    free(self->_bytes);
    self->_allocatedLength = 0;
    self->_bytes = 0;
    self->_bytesLength = 0;
  }
}

- (void)appendBytes:(const void *)a3 length:(unint64_t)a4
{
  bytesLength = self->_bytesLength;
  [(LACSecureData *)self prepareBuffer:bytesLength + a4];
  v8 = self->_bytes + bytesLength;

  memcpy(v8, a3, a4);
}

- (void)appendData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length];

  [(LACSecureData *)self appendBytes:v5 length:v6];
}

- (void)appendString:(id)a3
{
  v4 = [LACSecureData secureDataWithString:a3];
  [(LACSecureData *)self appendData:v4];
}

- (BOOL)removeLastCharacter
{
  bytes = self->_bytes;
  if (bytes)
  {
    bytesLength = self->_bytesLength;
    if (!bytesLength)
    {
      LOBYTE(bytes) = 0;
      return bytes;
    }

    if (bytesLength == 1)
    {
      goto LABEL_12;
    }

    v4 = &bytes[bytesLength];
    v5 = bytes - 1;
    v6 = 1;
    while ((v5[bytesLength] & 0xC0) == 0x80)
    {
      --v5;
      if (bytesLength == ++v6)
      {
        v6 = self->_bytesLength;
        break;
      }
    }

    if (v6 < 2)
    {
LABEL_12:
      v6 = 1;
    }

    else
    {
      LOBYTE(bytes) = 0;
      if (v6 > 6 || v4[-v6] < 0xC0u)
      {
        return bytes;
      }
    }

    [(LACSecureData *)self resize:bytesLength - v6];
    LOBYTE(bytes) = 1;
  }

  return bytes;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(LACSecureData *)self length];
  v6 = v5 == [v4 length] && timingsafe_bcmp(-[LACSecureData bytes](self, "bytes"), objc_msgSend(v4, "bytes"), -[LACSecureData length](self, "length")) == 0;

  return v6;
}

@end