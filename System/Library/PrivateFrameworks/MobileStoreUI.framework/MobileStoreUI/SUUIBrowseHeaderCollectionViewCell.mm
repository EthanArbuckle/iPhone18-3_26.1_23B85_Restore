@interface SUUIBrowseHeaderCollectionViewCell
- (SUUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation SUUIBrowseHeaderCollectionViewCell

- (SUUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SUUIBrowseHeaderCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUIBrowseHeaderCollectionViewCell *)v3 contentView];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [v5 setBackgroundColor:v6];

    [(SUUIBrowseHeaderCollectionViewCell *)v4 setUserInteractionEnabled:0];
    v7 = objc_alloc_init(SUUIGroupedHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v7;

    [(SUUIGroupedHeaderView *)v4->_headerView setAutoresizingMask:18];
    v9 = v4->_headerView;
    v10 = [(SUUIBrowseHeaderCollectionViewCell *)v4 contentView];
    [v10 bounds];
    [(SUUIGroupedHeaderView *)v9 setFrame:?];

    v11 = [(SUUIBrowseHeaderCollectionViewCell *)v4 contentView];
    [v11 addSubview:v4->_headerView];
  }

  return v4;
}

@end