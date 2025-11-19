@interface SUUILoadMoreCell
- (SUUILoadMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SUUILoadMoreCell

- (SUUILoadMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = SUUILoadMoreCell;
  v4 = [(SUUITableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUUILoadMoreCell *)v4 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    indicator = v5->_indicator;
    v5->_indicator = v11;

    [(UIActivityIndicatorView *)v5->_indicator setAutoresizingMask:45];
    [(UIActivityIndicatorView *)v5->_indicator sizeToFit];
    [(UIActivityIndicatorView *)v5->_indicator frame];
    v14 = (v8 - v13) * 0.5;
    v16 = (v10 - v15) * 0.5;
    [(UIActivityIndicatorView *)v5->_indicator setFrame:floorf(v14), floorf(v16)];
    [v6 addSubview:v5->_indicator];
  }

  return v5;
}

@end