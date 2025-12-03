@interface _MFPlainTextBannerView
- (_MFPlainTextBannerView)initWithFrame:(CGRect)frame;
- (id)actionStringIsDownloading:(BOOL)downloading;
@end

@implementation _MFPlainTextBannerView

- (_MFPlainTextBannerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _MFPlainTextBannerView;
  v3 = [(MFHasMoreContentBannerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    banner = [(MFSuggestionBannerView *)v3 banner];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"WAS_DOWNLOADED_AS_PLAIN" value:&stru_2826D1AD8 table:@"Main"];
    [banner setTitle:v7];

    v8 = [(_MFPlainTextBannerView *)v4 actionStringIsDownloading:0];
    [banner setActionTitle:v8];

    [banner setActionButtonType:0];
    [(MFSuggestionBannerView *)v4 setBanner:banner];
  }

  return v4;
}

- (id)actionStringIsDownloading:(BOOL)downloading
{
  downloadingCopy = downloading;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (downloadingCopy)
  {
    v6 = @"DOWNLOADING_FULL_MESSAGE";
  }

  else
  {
    v6 = @"DOWNLOAD_FULL_MESSAGE";
  }

  v7 = [mainBundle localizedStringForKey:v6 value:&stru_2826D1AD8 table:@"Main"];

  return v7;
}

@end