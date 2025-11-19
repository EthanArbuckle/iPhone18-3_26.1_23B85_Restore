@interface DownloadProgressButton
- (DownloadProgressButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DownloadProgressButton

- (DownloadProgressButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = DownloadProgressButton;
  v7 = [(DownloadProgressButton *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D28D18]) initWithFrame:{x, y, width, height}];
    progressView = v7->_progressView;
    v7->_progressView = v8;

    [(SFProgressView *)v7->_progressView setTrackWidth:3.0];
    v10 = [MEMORY[0x277D75348] labelColor];
    [(SFProgressView *)v7->_progressView setTintColor:v10];

    v11 = [MEMORY[0x277D75348] systemFillColor];
    [(SFProgressView *)v7->_progressView setTrackTintColor:v11];

    [(SFProgressView *)v7->_progressView setUserInteractionEnabled:0];
    [(DownloadProgressButton *)v7 addSubview:v7->_progressView];
    v12 = v7;
  }

  return v7;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DownloadProgressButton;
  [(DownloadProgressButton *)&v10 layoutSubviews];
  [(DownloadProgressButton *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetHeight(v12);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  [(SFProgressView *)self->_progressView setFrame:(v7 - v9) * 0.5, (v8 - v9) * 0.5, v9, v9];
  [(SFProgressView *)self->_progressView setRadius:v9 * 0.5];
}

@end