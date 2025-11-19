@interface TCMemoryBufferTextWriterProvider
- (BOOL)setUp;
- (TCMemoryBufferTextWriterProvider)initWithMemoryBuffer:(id)a3;
@end

@implementation TCMemoryBufferTextWriterProvider

- (TCMemoryBufferTextWriterProvider)initWithMemoryBuffer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TCMemoryBufferTextWriterProvider;
  v6 = [(TCMemoryBufferTextWriterProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoryBuffer, a3);
  }

  return v7;
}

- (BOOL)setUp
{
  IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, self->_memoryBuffer, 0);
  if (IO)
  {
    v4 = xmlNewTextWriter(IO);

    LOBYTE(IO) = [(TCXmlTextWriterProvider *)self setUpWithTextWriter:v4];
  }

  return IO;
}

@end