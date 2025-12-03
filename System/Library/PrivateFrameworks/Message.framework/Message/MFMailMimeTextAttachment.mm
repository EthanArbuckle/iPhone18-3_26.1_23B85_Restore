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

  v4 = +[MFNetworkController sharedInstance];
  isOnWWAN = [v4 isOnWWAN];

  _displayedMimePart = [(MFMimeTextAttachment *)self _displayedMimePart];
  approximateRawSize = [_displayedMimePart approximateRawSize];
  if (isOnWWAN)
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0x100000;
  }

  v3 = approximateRawSize < v8;

  return v3;
}

@end