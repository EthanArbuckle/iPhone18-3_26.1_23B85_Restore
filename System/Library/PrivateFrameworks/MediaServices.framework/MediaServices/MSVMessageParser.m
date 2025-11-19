@interface MSVMessageParser
+ (id)createHeader:(unint64_t)a3;
- (MSVMessageParserDelegate)delegate;
- (void)_notifyDelegate:(id)a3;
- (void)processData:(id)a3;
@end

@implementation MSVMessageParser

+ (id)createHeader:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:v6 length:PBDataWriterWriteBareVarint()];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MSVMessageParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_notifyDelegate:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained parser:self didParseMessage:v5];
  }

  [(MSVMessageParser *)self setUnhandledPartialObjectData:0];
  [(MSVMessageParser *)self setUnhandledObjectDataExpectedLength:0];
}

- (void)processData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length];
  unhandledPartialData = self->_unhandledPartialData;
  if (unhandledPartialData)
  {
    [(NSMutableData *)unhandledPartialData appendData:v4];
    v5 = [(NSMutableData *)self->_unhandledPartialData bytes];
    v6 = [(NSMutableData *)self->_unhandledPartialData length];
  }

  unhandledPartialObjectData = self->_unhandledPartialObjectData;
  if (unhandledPartialObjectData)
  {
    unhandledObjectDataExpectedLength = self->_unhandledObjectDataExpectedLength;
    v10 = [(NSMutableData *)unhandledPartialObjectData length];
    v11 = unhandledObjectDataExpectedLength - v10;
    if (unhandledObjectDataExpectedLength - v10 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = unhandledObjectDataExpectedLength - v10;
    }

    v13 = [MEMORY[0x1E695DF88] dataWithBytesNoCopy:v5 length:v12 freeWhenDone:0];
    -[NSMutableData appendBytes:length:](self->_unhandledPartialObjectData, "appendBytes:length:", [v13 bytes], objc_msgSend(v13, "length"));
    if (v11 <= v6)
    {
      [(MSVMessageParser *)self _notifyDelegate:self->_unhandledPartialObjectData];
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 >= v6)
  {
LABEL_17:
    v16 = self->_unhandledPartialData;
    self->_unhandledPartialData = 0;
  }

  else
  {
    while (PBReaderReadVarIntBuf())
    {
      v14 = v5 + v12;
      if (v6 - v12 >= 0)
      {
        v15 = [MEMORY[0x1E695DF88] dataWithBytesNoCopy:v14 length:0 freeWhenDone:0];
        [(MSVMessageParser *)self _notifyDelegate:v15];
      }

      else
      {
        v15 = [MEMORY[0x1E695DF88] dataWithBytes:v14 length:?];
        [(MSVMessageParser *)self setUnhandledPartialObjectData:v15];
        [(MSVMessageParser *)self setUnhandledObjectDataExpectedLength:0];
      }

      v12 += [v15 length];

      if (v12 >= v6)
      {
        goto LABEL_17;
      }
    }

    v17 = [MEMORY[0x1E695DF88] dataWithBytes:v5 + v12 length:v6 - v12];
    v16 = self->_unhandledPartialData;
    self->_unhandledPartialData = v17;
  }
}

@end