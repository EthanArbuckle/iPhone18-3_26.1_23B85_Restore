@interface SUUIDownloadsTableViewCell
- (SUUIDownloadsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation SUUIDownloadsTableViewCell

- (SUUIDownloadsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUUIDownloadsTableViewCell;
  v4 = [(SUUIDownloadsTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SUUIDownloadsCellView);
    cellView = v4->_cellView;
    v4->_cellView = v5;

    v7 = [(SUUIDownloadsTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_cellView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIDownloadsTableViewCell;
  [(SUUIDownloadsTableViewCell *)&v5 layoutSubviews];
  cellView = self->_cellView;
  v4 = [(SUUIDownloadsTableViewCell *)self contentView];
  [v4 bounds];
  [(SUUIDownloadsCellView *)cellView setFrame:?];
}

@end