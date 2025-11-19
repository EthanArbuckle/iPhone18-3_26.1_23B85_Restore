@interface SYInputStreamTransaction
- (SYInputStreamTransaction)initWithURL:(id)a3 metadata:(id)a4 decompressedSize:(unint64_t)a5;
@end

@implementation SYInputStreamTransaction

- (SYInputStreamTransaction)initWithURL:(id)a3 metadata:(id)a4 decompressedSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = SYInputStreamTransaction;
  v10 = [(SYInputStreamTransaction *)&v19 init];
  if (v10 && (v11 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:v8], stream = v10->_stream, v10->_stream = v11, stream, v10->_stream))
  {
    v13 = [v9 copy];
    metadata = v10->_metadata;
    v10->_metadata = v13;

    v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:a5];
    progress = v10->_progress;
    v10->_progress = v15;

    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end