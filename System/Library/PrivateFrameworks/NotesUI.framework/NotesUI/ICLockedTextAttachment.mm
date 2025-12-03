@interface ICLockedTextAttachment
- (int64_t)lockedAttachmentViewLayout;
@end

@implementation ICLockedTextAttachment

- (int64_t)lockedAttachmentViewLayout
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  if ([attachment isURL])
  {

    return 0;
  }

  attachment2 = [(ICAbstractTextAttachment *)self attachment];
  isScannedDocument = [attachment2 isScannedDocument];

  return !isScannedDocument;
}

@end