@interface MFMessage(MailMessage)
- (uint64_t)attachmentStorageLocation;
@end

@implementation MFMessage(MailMessage)

- (uint64_t)attachmentStorageLocation
{
  v1 = [a1 messageStore];

  return [v1 storagePath];
}

@end