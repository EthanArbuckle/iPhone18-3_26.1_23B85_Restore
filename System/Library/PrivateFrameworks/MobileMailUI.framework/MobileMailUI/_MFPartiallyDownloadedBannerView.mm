@interface _MFPartiallyDownloadedBannerView
- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)frame remainingBytes:(unint64_t)bytes;
- (id)_messageStringForBytes:(uint64_t)bytes isDownloading:(uint64_t)downloading hasError:;
- (id)actionStringIsDownloading:(BOOL)downloading;
- (void)updateBannerWithRemainingBytes:(unint64_t)bytes error:(id)error;
@end

@implementation _MFPartiallyDownloadedBannerView

- (id)_messageStringForBytes:(uint64_t)bytes isDownloading:(uint64_t)downloading hasError:
{
  if (bytes)
  {
    v3 = _EFLocalizedString();
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] mf_stringRepresentationForBytes:downloading];
    v6 = [v4 stringWithFormat:v3, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)frame remainingBytes:(unint64_t)bytes
{
  v12.receiver = self;
  v12.super_class = _MFPartiallyDownloadedBannerView;
  v5 = [(MFHasMoreContentBannerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_remainingBytes = bytes;
    banner = [(MFSuggestionBannerView *)v5 banner];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"MESSAGE_PARTIALLY_DOWNLOADED" value:&stru_2826D1AD8 table:@"Main"];
    [banner setTitle:v9];

    v10 = [(_MFPartiallyDownloadedBannerView *)v6 actionStringIsDownloading:0];
    [banner setActionTitle:v10];

    [banner setActionButtonType:0];
    [(MFSuggestionBannerView *)v6 setBanner:banner];
  }

  return v6;
}

- (id)actionStringIsDownloading:(BOOL)downloading
{
  remainingBytes = [(_MFPartiallyDownloadedBannerView *)self remainingBytes];
  [(_MFPartiallyDownloadedBannerView *)self hasError];

  return [_MFPartiallyDownloadedBannerView _messageStringForBytes:remainingBytes isDownloading:? hasError:?];
}

- (void)updateBannerWithRemainingBytes:(unint64_t)bytes error:(id)error
{
  errorCopy = error;
  [(_MFPartiallyDownloadedBannerView *)self setRemainingBytes:bytes];
  [(_MFPartiallyDownloadedBannerView *)self setHasError:errorCopy != 0];
  v7.receiver = self;
  v7.super_class = _MFPartiallyDownloadedBannerView;
  [(MFHasMoreContentBannerView *)&v7 updateBannerWithRemainingBytes:bytes error:errorCopy];
}

@end