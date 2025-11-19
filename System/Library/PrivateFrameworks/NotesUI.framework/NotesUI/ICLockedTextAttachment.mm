@interface ICLockedTextAttachment
- (int64_t)lockedAttachmentViewLayout;
@end

@implementation ICLockedTextAttachment

- (int64_t)lockedAttachmentViewLayout
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  if ([v3 isURL])
  {

    return 0;
  }

  v4 = [(ICAbstractTextAttachment *)self attachment];
  v5 = [v4 isScannedDocument];

  return !v5;
}

@end