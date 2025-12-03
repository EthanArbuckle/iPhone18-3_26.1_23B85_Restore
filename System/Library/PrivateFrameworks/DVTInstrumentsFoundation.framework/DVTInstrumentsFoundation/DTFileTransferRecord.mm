@interface DTFileTransferRecord
- (void)closeFileTransfer;
- (void)dealloc;
@end

@implementation DTFileTransferRecord

- (void)closeFileTransfer
{
  writeHandle = self->_writeHandle;
  if (writeHandle)
  {
    [(NSFileHandle *)writeHandle closeFile];
    v4 = self->_writeHandle;
    self->_writeHandle = 0;
  }
}

- (void)dealloc
{
  [(DTFileTransferRecord *)self closeFileTransfer];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:self->_destinationDirectoryURLToRemoveOnDealloc error:0];

  v4.receiver = self;
  v4.super_class = DTFileTransferRecord;
  [(DTFileTransferRecord *)&v4 dealloc];
}

@end