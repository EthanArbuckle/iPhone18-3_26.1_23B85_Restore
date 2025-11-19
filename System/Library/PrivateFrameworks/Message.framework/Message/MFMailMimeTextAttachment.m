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
  v5 = [v4 isOnWWAN];

  v6 = [(MFMimeTextAttachment *)self _displayedMimePart];
  v7 = [v6 approximateRawSize];
  if (v5)
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0x100000;
  }

  v3 = v7 < v8;

  return v3;
}

@end