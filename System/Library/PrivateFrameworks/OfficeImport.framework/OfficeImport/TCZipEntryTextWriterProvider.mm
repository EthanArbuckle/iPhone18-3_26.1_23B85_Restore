@interface TCZipEntryTextWriterProvider
- (BOOL)setUp;
- (TCZipEntryTextWriterProvider)initWithEntryName:(id)name outputStream:(id)stream isCompressed:(BOOL)compressed;
@end

@implementation TCZipEntryTextWriterProvider

- (TCZipEntryTextWriterProvider)initWithEntryName:(id)name outputStream:(id)stream isCompressed:(BOOL)compressed
{
  nameCopy = name;
  streamCopy = stream;
  v14.receiver = self;
  v14.super_class = TCZipEntryTextWriterProvider;
  v10 = [(TCZipEntryTextWriterProvider *)&v14 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    entryName = v10->_entryName;
    v10->_entryName = v11;

    v10->_outputStream = streamCopy;
    v10->_isCompressed = compressed;
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