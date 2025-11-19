@interface OCDEncryptedReader
- (void)useUnencryptedDocument;
@end

@implementation OCDEncryptedReader

- (void)useUnencryptedDocument
{
  mDecryptor = self->mDecryptor;
  if (mDecryptor)
  {
    if (![(OCCDecryptor *)mDecryptor decrypt])
    {
      [TCMessageException raise:TCDecryptionFailedMessage];
    }

    [(OCDEncryptedReader *)self restartReaderToUseDecryptedDocument];
  }
}

@end