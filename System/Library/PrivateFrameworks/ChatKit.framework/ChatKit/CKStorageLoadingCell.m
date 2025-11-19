@interface CKStorageLoadingCell
- (CKStorageLoadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKStorageLoadingCell

- (CKStorageLoadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CKStorageLoadingCell;
  v4 = [(CKStorageLoadingCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    v7 = [(CKStorageLoadingCell *)v4 contentView];
    [v7 addSubview:v4->_spinner];
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
  v3 = [(CKStorageLoadingCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UIActivityIndicatorView *)self->_spinner setFrame:(v5 - v8) * 0.5, (v7 - v9) * 0.5];
}

@end