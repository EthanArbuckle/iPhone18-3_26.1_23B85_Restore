@interface SUUIDownloadsTableViewCell
- (SUUIDownloadsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation SUUIDownloadsTableViewCell

- (SUUIDownloadsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SUUIDownloadsTableViewCell;
  v4 = [(SUUIDownloadsTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(SUUIDownloadsCellView);
    cellView = v4->_cellView;
    v4->_cellView = v5;

    contentView = [(SUUIDownloadsTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_cellView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIDownloadsTableViewCell;
  [(SUUIDownloadsTableViewCell *)&v5 layoutSubviews];
  cellView = self->_cellView;
  contentView = [(SUUIDownloadsTableViewCell *)self contentView];
  [contentView bounds];
  [(SUUIDownloadsCellView *)cellView setFrame:?];
}

@end