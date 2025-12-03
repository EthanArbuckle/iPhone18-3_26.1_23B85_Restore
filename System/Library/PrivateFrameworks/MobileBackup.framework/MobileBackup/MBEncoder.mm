@interface MBEncoder
+ (MBEncoder)encoderWithOutputStream:(id)stream;
+ (id)encoderToFile:(id)file error:(id *)error;
+ (id)encoderToMemory;
- (MBEncoder)initWithOutputStream:(id)stream;
- (id)data;
- (void)close;
- (void)encodeBytes:(const void *)bytes length:(unint64_t)length;
- (void)encodeData:(id)data;
- (void)encodeDate:(id)date;
- (void)encodeString:(id)string;
- (void)encodeVersion:(double)version;
- (void)flush;
@end

@implementation MBEncoder

+ (id)encoderToMemory
{
  v2 = +[NSOutputStream outputStreamToMemory];
  [v2 open];
  v3 = [MBEncoder encoderWithOutputStream:v2];

  return v3;
}

+ (id)encoderToFile:(id)file error:(id *)error
{
  v5 = [NSOutputStream outputStreamToFileAtPath:file append:0];
  [v5 open];
  streamError = [v5 streamError];

  if (streamError)
  {
    if (error)
    {
      [v5 streamError];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [MBEncoder encoderWithOutputStream:v5];
  }

  return v7;
}

+ (MBEncoder)encoderWithOutputStream:(id)stream
{
  streamCopy = stream;
  v4 = [[MBEncoder alloc] initWithOutputStream:streamCopy];

  return v4;
}

- (MBEncoder)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v11.receiver = self;
  v11.super_class = MBEncoder;
  v6 = [(MBEncoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, stream);
    v8 = [[NSMutableData alloc] initWithCapacity:0x4000];
    buffer = v7->_buffer;
    v7->_buffer = v8;
  }

  return v7;
}

- (void)flush
{
  bytes = [(NSMutableData *)self->_buffer bytes];
  v4 = [(NSMutableData *)self->_buffer length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i < v5; i += v7)
    {
      v7 = [(NSOutputStream *)self->_outputStream write:&bytes[i] maxLength:v5 - i];
      if (v7 < 0)
      {
        v9 = [MBException alloc];
        streamError = [(NSOutputStream *)self->_outputStream streamError];
        v11 = [v9 initWithCode:100 format:{@"Output stream write error: %@", streamError}];
        v12 = v11;

        objc_exception_throw(v11);
      }
    }
  }

  buffer = self->_buffer;

  [(NSMutableData *)buffer setLength:0];
}

- (void)close
{
  [(MBEncoder *)self flush];
  outputStream = self->_outputStream;

  [(NSOutputStream *)outputStream close];
}

- (void)encodeVersion:(double)version
{
  versionCopy = version;
  v7 = llround((version - version) * 10.0);
  if (version + v7 * 0.1 != version)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MBEncoder.m" lineNumber:93 description:{@"Couldn't split version number: %0.1f", *&version}];
  }

  if (versionCopy <= 0)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBEncoder.m" lineNumber:94 description:{@"Invalid major version: %0.1f", *&version}];
  }

  if (v7 >= 0xA)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MBEncoder.m" lineNumber:95 description:{@"Invalid minor version: %0.1f", *&version}];
  }

  [(MBEncoder *)self encodeInt8:versionCopy];

  [(MBEncoder *)self encodeInt8:v7];
}

- (void)encodeData:(id)data
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    v5 = [dataCopy length];
    if (v5 >= 0x8000)
    {
      [NSException raise:NSInvalidArgumentException format:@"Data too long to encode: %d", v5];
    }

    v6 = malloc_type_malloc(v5, 0x661F529DuLL);
    [v7 getBytes:v6 length:v5];
    [(MBEncoder *)self encodeInt16:v5];
    [(MBEncoder *)self encodeBytes:v6 length:v5];
    free(v6);
  }

  else
  {
    [(MBEncoder *)self encodeInt16:0xFFFFFFFFLL];
  }
}

- (void)encodeDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  [(MBEncoder *)self encodeInt32:v5];
}

- (void)encodeString:(id)string
{
  stringCopy = string;
  v6 = stringCopy;
  if (stringCopy)
  {
    v7 = [stringCopy maximumLengthOfBytesUsingEncoding:4];
    v8 = malloc_type_malloc(v7, 0xCDBF1515uLL);
    v11 = 0;
    if (([v6 getBytes:v8 maxLength:v7 usedLength:&v11 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v6, "length"), 0}] & 1) == 0)
    {
      v10 = +[NSAssertionHandler currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"MBEncoder.m" lineNumber:137 description:@"Error encoding string"];
    }

    v9 = v11;
    if (v11 >= 0x8000)
    {
      [NSException raise:NSInvalidArgumentException format:@"String too long to encode: %d", v11];
      v9 = v11;
    }

    [(MBEncoder *)self encodeInt16:v9];
    [(MBEncoder *)self encodeBytes:v8 length:v11];
    free(v8);
  }

  else
  {
    [(MBEncoder *)self encodeInt16:0xFFFFFFFFLL];
  }
}

- (void)encodeBytes:(const void *)bytes length:(unint64_t)length
{
  [(NSMutableData *)self->_buffer appendBytes:bytes length:?];
  self->_offset += length;
  if ([(NSMutableData *)self->_buffer length]>= 0x4000)
  {

    [(MBEncoder *)self flush];
  }
}

- (id)data
{
  [(MBEncoder *)self close];
  outputStream = self->_outputStream;

  return [(NSOutputStream *)outputStream propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
}

@end