@interface HDAttachmentEncryptedReader
- (id)initAdoptingArchive:(id)a3;
- (id)readDataUpToLength:(unint64_t)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)close;
@end

@implementation HDAttachmentEncryptedReader

- (id)initAdoptingArchive:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDAttachmentEncryptedReader;
  v6 = [(HDAttachmentEncryptedReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archive, a3);
  }

  return v7;
}

- (id)readDataUpToLength:(unint64_t)a3 offset:(unint64_t)a4 error:(id *)a5
{
  archive = self->_archive;
  if (archive)
  {
    v6 = [(HDEncryptedArchive *)archive readDataOfLength:a3 offset:a4 error:a5];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:126 format:@"Encrypted archive has already been closed."];
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