@interface TCZipEntryTextWriterProvider
- (BOOL)setUp;
- (TCZipEntryTextWriterProvider)initWithEntryName:(id)a3 outputStream:(id)a4 isCompressed:(BOOL)a5;
@end

@implementation TCZipEntryTextWriterProvider

- (TCZipEntryTextWriterProvider)initWithEntryName:(id)a3 outputStream:(id)a4 isCompressed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = TCZipEntryTextWriterProvider;
  v10 = [(TCZipEntryTextWriterProvider *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    entryName = v10->_entryName;
    v10->_entryName = v11;

    v10->_outputStream = v9;
    v10->_isCompressed = a5;
  }

  return v10;
}

- (BOOL)setUp
{
  [(OISFUZipArchiveOutputStream *)self->_outputStream beginUnknownSizeEntryWithName:self->_entryName isCompressed:self->_isCompressed];
  IO = xmlOutputBufferCreateIO(SFUSimpleXmlOutputWriteCallback, SFUSimpleXmlOutputCloseCallback, self->_outputStream, 0);
  v4 = xmlNewTextWriter(IO);

  return [(TCXmlTextWriterProvider *)self setUpWithTextWriter:v4];
}

@end