@interface LACSecureData
+ (id)secureDataWithBytes:(const void *)bytes length:(unint64_t)length;
+ (id)secureDataWithData:(id)data;
+ (id)secureDataWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeLastCharacter;
- (LACSecureData)init;
- (LACSecureData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (LACSecureData)initWithData:(id)data;
- (LACSecureData)initWithString:(id)string;
- (id)nullTerminatedCopy;
- (void)appendBytes:(const void *)bytes length:(unint64_t)length;
- (void)appendData:(id)data;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)prepareBuffer:(unint64_t)buffer;
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

- (void)prepareBuffer:(unint64_t)buffer
{
  allocatedLength = self->_allocatedLength;
  if (allocatedLength >= buffer)
  {
    [LACSecureData resetBytes:self->_bytes + buffer length:allocatedLength - buffer];
  }

  else
  {
    v6 = malloc_type_malloc(buffer, 0x3F171307uLL);
    if (!v6)
    {
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v10);
    }

    v7 = v6;
    [LACSecureData resetBytes:v6 length:buffer];
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

    self->_allocatedLength = buffer;
    self->_bytes = v7;
  }

  self->_bytesLength = buffer;
}

- (LACSecureData)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init is not a valid initializer for the class LACSecureData" userInfo:0];
  objc_exception_throw(v2);
}

- (LACSecureData)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = LACSecureData;
  v5 = [(LACSecureData *)&v8 init];
  if (v5)
  {
    v7 = 0;
    [stringCopy getBytes:0 maxLength:0 usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(stringCopy, "length"), 0}];
    [(LACSecureData *)v5 prepareBuffer:v7];
    [stringCopy getBytes:v5->_bytes maxLength:v5->_bytesLength usedLength:&v7 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(stringCopy, "length"), 0}];
  }

  return v5;
}

- (LACSecureData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v9.receiver = self;
  v9.super_class = LACSecureData;
  v6 = [(LACSecureData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(LACSecureData *)v6 prepareBuffer:length];
    memcpy(v7->_bytes, bytes, length);
  }

  return v7;
}

- (LACSecureData)initWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  return [(LACSecureData *)self initWithBytes:bytes length:v8];
}

+ (id)secureDataWithBytes:(const void *)bytes length:(unint64_t)length
{
  v4 = [[LACSecureData alloc] initWithBytes:bytes length:length];

  return v4;
}

+ (id)secureDataWithString:(id)string
{
  stringCopy = string;
  v4 = [[LACSecureData alloc] initWithString:stringCopy];

  return v4;
}

+ (id)secureDataWithData:(id)data
{
  dataCopy = data;
  v4 = [[LACSecureData alloc] initWithData:dataCopy];

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

- (void)appendBytes:(const void *)bytes length:(unint64_t)length
{
  bytesLength = self->_bytesLength;
  [(LACSecureData *)self prepareBuffer:bytesLength + length];
  v8 = self->_bytes + bytesLength;

  memcpy(v8, bytes, length);
}

- (void)appendData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = [dataCopy length];

  [(LACSecureData *)self appendBytes:bytes length:v6];
}

- (void)appendString:(id)string
{
  v4 = [LACSecureData secureDataWithString:string];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(LACSecureData *)self length];
  v6 = v5 == [equalCopy length] && timingsafe_bcmp(-[LACSecureData bytes](self, "bytes"), objc_msgSend(equalCopy, "bytes"), -[LACSecureData length](self, "length")) == 0;

  return v6;
}

@end