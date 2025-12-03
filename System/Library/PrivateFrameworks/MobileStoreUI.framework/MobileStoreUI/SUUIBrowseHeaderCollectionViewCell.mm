@interface SUUIBrowseHeaderCollectionViewCell
- (SUUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation SUUIBrowseHeaderCollectionViewCell

- (SUUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SUUIBrowseHeaderCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SUUIBrowseHeaderCollectionViewCell *)v3 contentView];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [contentView setBackgroundColor:v6];

    [(SUUIBrowseHeaderCollectionViewCell *)v4 setUserInteractionEnabled:0];
    v7 = objc_alloc_init(SUUIGroupedHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v7;

    [(SUUIGroupedHeaderView *)v4->_headerView setAutoresizingMask:18];
    v9 = v4->_headerView;
    contentView2 = [(SUUIBrowseHeaderCollectionViewCell *)v4 contentView];
    [contentView2 bounds];
    [(SUUIGroupedHeaderView *)v9 setFrame:?];

    contentView3 = [(SUUIBrowseHeaderCollectionViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_headerView];
  }

  return v4;
}

@end