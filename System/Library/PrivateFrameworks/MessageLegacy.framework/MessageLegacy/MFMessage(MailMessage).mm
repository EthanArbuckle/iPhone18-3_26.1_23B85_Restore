@interface MFMessage(MailMessage)
- (uint64_t)attachmentStorageLocation;
@end

@implementation MFMessage(MailMessage)

- (uint64_t)attachmentStorageLocation
{
  messageStore = [self messageStore];

  return [messageStore storagePath];
}

@end