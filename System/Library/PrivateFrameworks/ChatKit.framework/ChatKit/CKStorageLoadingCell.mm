@interface CKStorageLoadingCell
- (CKStorageLoadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKStorageLoadingCell

- (CKStorageLoadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CKStorageLoadingCell;
  v4 = [(CKStorageLoadingCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    contentView = [(CKStorageLoadingCell *)v4 contentView];
    [contentView addSubview:v4->_spinner];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKStorageLoadingCell;
  [(CKStorageLoadingCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CKStorageLoadingCell;
  [(CKStorageLoadingCell *)&v10 layoutSubviews];
  contentView = [(CKStorageLoadingCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UIActivityIndicatorView *)self->_spinner setFrame:(v5 - v8) * 0.5, (v7 - v9) * 0.5];
}

@end