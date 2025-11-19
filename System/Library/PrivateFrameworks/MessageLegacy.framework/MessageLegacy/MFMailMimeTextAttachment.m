@interface MFMailMimeTextAttachment
- (BOOL)shouldDownloadAttachmentOnDisplay;
@end

@implementation MFMailMimeTextAttachment

- (BOOL)shouldDownloadAttachmentOnDisplay
{
  if ([(MFMimeTextAttachment *)self hasBeenDownloaded])
  {
    return 1;
  }

  if ([+[MFNetworkController isOnWWAN] sharedInstance]
  {
    v4 = 0x20000;
  }

  else
  {
    v4 = 0x100000;
  }

  return [-[MFMimeTextAttachment _displayedMimePart](self "_displayedMimePart")] < v4;
}

@end