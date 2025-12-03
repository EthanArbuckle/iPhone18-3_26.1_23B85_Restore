@interface HMDExtendedTypeWriter
- (HMDExtendedTypeWriter)initWithWriter:(id)writer options:(unint64_t)options;
- (void)_beginExtensionValueWithTag:(uint64_t)tag;
- (void)writeData:(id)data;
- (void)writeDate:(id)date;
- (void)writeNull;
- (void)writeUUID:(id)d;
@end

@implementation HMDExtendedTypeWriter

- (void)writeUUID:(id)d
{
  if ((self->_options & 8) != 0)
  {
    dCopy = d;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    uUIDString = [dCopy UUIDString];

    [(HMDStructuredWriter *)writer writeString:uUIDString];
    v8 = self->_writer;

    [(HMDStructuredWriter *)v8 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    dCopy2 = d;
    [(HMDStructuredWriter *)v4 writeUUID:dCopy2];
  }
}

- (void)_beginExtensionValueWithTag:(uint64_t)tag
{
  if (tag)
  {
    v3 = *(tag + 16);
    v4 = a2;
    [v3 beginDictionaryOfSize:1];
    [*(tag + 16) writeDictionaryKey:v4];
  }
}

- (void)writeDate:(id)date
{
  if ((self->_options & 4) != 0)
  {
    dateCopy = date;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    v7 = HMDExtendedTypeDateFormatter();
    v8 = [v7 stringFromDate:dateCopy];

    [(HMDStructuredWriter *)writer writeString:v8];
    v9 = self->_writer;

    [(HMDStructuredWriter *)v9 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    dateCopy2 = date;
    [(HMDStructuredWriter *)v4 writeDate:dateCopy2];
  }
}

- (void)writeData:(id)data
{
  if ((self->_options & 2) != 0)
  {
    dataCopy = data;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    v7 = [dataCopy base64EncodedStringWithOptions:0];

    [(HMDStructuredWriter *)writer writeString:v7];
    v8 = self->_writer;

    [(HMDStructuredWriter *)v8 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    dataCopy2 = data;
    [(HMDStructuredWriter *)v4 writeData:dataCopy2];
  }
}

- (void)writeNull
{
  if (self->_options)
  {
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    [(HMDStructuredWriter *)self->_writer writeString:&stru_283CF9D50];
    writer = self->_writer;

    [(HMDStructuredWriter *)writer endDictionary];
  }

  else
  {
    v3 = self->_writer;

    [(HMDStructuredWriter *)v3 writeNull];
  }
}

- (HMDExtendedTypeWriter)initWithWriter:(id)writer options:(unint64_t)options
{
  writerCopy = writer;
  v11.receiver = self;
  v11.super_class = HMDExtendedTypeWriter;
  v8 = [(HMDExtendedTypeWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_writer, writer);
    v9->_options = options;
  }

  return v9;
}

@end