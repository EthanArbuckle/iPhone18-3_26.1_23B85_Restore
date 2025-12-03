@interface SYInputStreamTransaction
- (SYInputStreamTransaction)initWithURL:(id)l metadata:(id)metadata decompressedSize:(unint64_t)size;
@end

@implementation SYInputStreamTransaction

- (SYInputStreamTransaction)initWithURL:(id)l metadata:(id)metadata decompressedSize:(unint64_t)size
{
  lCopy = l;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = SYInputStreamTransaction;
  v10 = [(SYInputStreamTransaction *)&v19 init];
  if (v10 && (v11 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:lCopy], stream = v10->_stream, v10->_stream = v11, stream, v10->_stream))
  {
    v13 = [metadataCopy copy];
    metadata = v10->_metadata;
    v10->_metadata = v13;

    v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:size];
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