@interface _MFPlainTextBannerView
- (_MFPlainTextBannerView)initWithFrame:(CGRect)a3;
- (id)actionStringIsDownloading:(BOOL)a3;
@end

@implementation _MFPlainTextBannerView

- (_MFPlainTextBannerView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _MFPlainTextBannerView;
  v3 = [(MFHasMoreContentBannerView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFSuggestionBannerView *)v3 banner];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"WAS_DOWNLOADED_AS_PLAIN" value:&stru_2826D1AD8 table:@"Main"];
    [v5 setTitle:v7];

    v8 = [(_MFPlainTextBannerView *)v4 actionStringIsDownloading:0];
    [v5 setActionTitle:v8];

    [v5 setActionButtonType:0];
    [(MFSuggestionBannerView *)v4 setBanner:v5];
  }

  return v4;
}

- (id)actionStringIsDownloading:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"DOWNLOADING_FULL_MESSAGE";
  }

  else
  {
    v6 = @"DOWNLOAD_FULL_MESSAGE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2826D1AD8 table:@"Main"];

  return v7;
}

@end