@interface HDAttachmentEncryptedReader
- (id)initAdoptingArchive:(id)archive;
- (id)readDataUpToLength:(unint64_t)length offset:(unint64_t)offset error:(id *)error;
- (void)close;
@end

@implementation HDAttachmentEncryptedReader

- (id)initAdoptingArchive:(id)archive
{
  archiveCopy = archive;
  v9.receiver = self;
  v9.super_class = HDAttachmentEncryptedReader;
  v6 = [(HDAttachmentEncryptedReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archive, archive);
  }

  return v7;
}

- (id)readDataUpToLength:(unint64_t)length offset:(unint64_t)offset error:(id *)error
{
  archive = self->_archive;
  if (archive)
  {
    v6 = [(HDEncryptedArchive *)archive readDataOfLength:length offset:offset error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:126 format:@"Encrypted archive has already been closed."];
    v6 = 0;
  }

  return v6;
}

- (void)close
{
  archive = self->_archive;
  if (archive)
  {
    [(HDEncryptedArchive *)archive close];
    v4 = self->_archive;
    self->_archive = 0;
  }
}

@end