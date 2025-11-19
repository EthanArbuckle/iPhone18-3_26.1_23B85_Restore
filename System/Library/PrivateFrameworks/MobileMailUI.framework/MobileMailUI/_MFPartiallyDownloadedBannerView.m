@interface _MFPartiallyDownloadedBannerView
- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)a3 remainingBytes:(unint64_t)a4;
- (id)_messageStringForBytes:(uint64_t)a1 isDownloading:(uint64_t)a2 hasError:;
- (id)actionStringIsDownloading:(BOOL)a3;
- (void)updateBannerWithRemainingBytes:(unint64_t)a3 error:(id)a4;
@end

@implementation _MFPartiallyDownloadedBannerView

- (id)_messageStringForBytes:(uint64_t)a1 isDownloading:(uint64_t)a2 hasError:
{
  if (a1)
  {
    v3 = _EFLocalizedString();
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] mf_stringRepresentationForBytes:a2];
    v6 = [v4 stringWithFormat:v3, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_MFPartiallyDownloadedBannerView)initWithFrame:(CGRect)a3 remainingBytes:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = _MFPartiallyDownloadedBannerView;
  v5 = [(MFHasMoreContentBannerView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_remainingBytes = a4;
    v7 = [(MFSuggestionBannerView *)v5 banner];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"MESSAGE_PARTIALLY_DOWNLOADED" value:&stru_2826D1AD8 table:@"Main"];
    [v7 setTitle:v9];

    v10 = [(_MFPartiallyDownloadedBannerView *)v6 actionStringIsDownloading:0];
    [v7 setActionTitle:v10];

    [v7 setActionButtonType:0];
    [(MFSuggestionBannerView *)v6 setBanner:v7];
  }

  return v6;
}

- (id)actionStringIsDownloading:(BOOL)a3
{
  v4 = [(_MFPartiallyDownloadedBannerView *)self remainingBytes];
  [(_MFPartiallyDownloadedBannerView *)self hasError];

  return [_MFPartiallyDownloadedBannerView _messageStringForBytes:v4 isDownloading:? hasError:?];
}

- (void)updateBannerWithRemainingBytes:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  [(_MFPartiallyDownloadedBannerView *)self setRemainingBytes:a3];
  [(_MFPartiallyDownloadedBannerView *)self setHasError:v6 != 0];
  v7.receiver = self;
  v7.super_class = _MFPartiallyDownloadedBannerView;
  [(MFHasMoreContentBannerView *)&v7 updateBannerWithRemainingBytes:a3 error:v6];
}

@end