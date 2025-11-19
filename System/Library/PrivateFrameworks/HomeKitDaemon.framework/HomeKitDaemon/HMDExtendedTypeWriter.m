@interface HMDExtendedTypeWriter
- (HMDExtendedTypeWriter)initWithWriter:(id)a3 options:(unint64_t)a4;
- (void)_beginExtensionValueWithTag:(uint64_t)a1;
- (void)writeData:(id)a3;
- (void)writeDate:(id)a3;
- (void)writeNull;
- (void)writeUUID:(id)a3;
@end

@implementation HMDExtendedTypeWriter

- (void)writeUUID:(id)a3
{
  if ((self->_options & 8) != 0)
  {
    v5 = a3;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    v7 = [v5 UUIDString];

    [(HMDStructuredWriter *)writer writeString:v7];
    v8 = self->_writer;

    [(HMDStructuredWriter *)v8 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    v9 = a3;
    [(HMDStructuredWriter *)v4 writeUUID:v9];
  }
}

- (void)_beginExtensionValueWithTag:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = a2;
    [v3 beginDictionaryOfSize:1];
    [*(a1 + 16) writeDictionaryKey:v4];
  }
}

- (void)writeDate:(id)a3
{
  if ((self->_options & 4) != 0)
  {
    v5 = a3;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    v7 = HMDExtendedTypeDateFormatter();
    v8 = [v7 stringFromDate:v5];

    [(HMDStructuredWriter *)writer writeString:v8];
    v9 = self->_writer;

    [(HMDStructuredWriter *)v9 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    v10 = a3;
    [(HMDStructuredWriter *)v4 writeDate:v10];
  }
}

- (void)writeData:(id)a3
{
  if ((self->_options & 2) != 0)
  {
    v5 = a3;
    [(HMDExtendedTypeWriter *)self _beginExtensionValueWithTag:?];
    writer = self->_writer;
    v7 = [v5 base64EncodedStringWithOptions:0];

    [(HMDStructuredWriter *)writer writeString:v7];
    v8 = self->_writer;

    [(HMDStructuredWriter *)v8 endDictionary];
  }

  else
  {
    v4 = self->_writer;
    v9 = a3;
    [(HMDStructuredWriter *)v4 writeData:v9];
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

- (HMDExtendedTypeWriter)initWithWriter:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDExtendedTypeWriter;
  v8 = [(HMDExtendedTypeWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_writer, a3);
    v9->_options = a4;
  }

  return v9;
}

@end