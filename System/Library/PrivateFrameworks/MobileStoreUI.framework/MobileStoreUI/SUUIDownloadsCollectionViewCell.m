@interface SUUIDownloadsCollectionViewCell
- (SUUIDownloadsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_reloadEditState;
- (void)layoutSubviews;
- (void)setCellState:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SUUIDownloadsCollectionViewCell

- (SUUIDownloadsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUIDownloadsCollectionViewCell;
  v3 = [(SUUIDownloadsCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIDownloadsCellView);
    cellView = v3->_cellView;
    v3->_cellView = v4;

    v6 = [(SUUIDownloadsCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_cellView];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIDownloadsCollectionViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = SUUIDownloadsCollectionViewCell;
  [(SUUIDownloadsCollectionViewCell *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    if (self->_cellState)
    {
      [(SUUIDownloadsCollectionViewCell *)self _reloadEditState];
    }
  }
}

- (void)setCellState:(int64_t)a3
{
  if (self->_cellState != a3)
  {
    self->_cellState = a3;
    [(SUUIDownloadsCollectionViewCell *)self _reloadEditState];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SUUIDownloadsCollectionViewCell;
  [(SUUIDownloadsCollectionViewCell *)&v21 layoutSubviews];
  v3 = [(SUUIDownloadsCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  editIndicator = self->_editIndicator;
  if (editIndicator)
  {
    [(UIImageView *)editIndicator sizeToFit];
    [(UIImageView *)self->_editIndicator frame];
    v14 = v13;
    v16 = v15;
    v17 = (v11 - v15) * 0.5;
    v18 = v7 + roundf(v17);
    [(UIImageView *)self->_editIndicator setFrame:v5 + 15.0, v18];
    v22.origin.x = v5 + 15.0;
    v22.origin.y = v18;
    v22.size.width = v14;
    v22.size.height = v16;
    MaxX = CGRectGetMaxX(v22);
  }

  else
  {
    MaxX = v5;
  }

  v20 = [(SUUIDownloadsCollectionViewCell *)self contentView];
  [v20 bounds];

  [(SUUIDownloadsCellView *)self->_cellView setFrame:MaxX, v7, v9 - (MaxX - v5), v11];
}

- (void)_reloadEditState
{
  cellState = self->_cellState;
  editIndicator = self->_editIndicator;
  if ((cellState - 1) > 1)
  {
    [(UIImageView *)editIndicator removeFromSuperview];
    v11 = self->_editIndicator;
    self->_editIndicator = 0;
  }

  else
  {
    if (!editIndicator)
    {
      v5 = objc_alloc_init(MEMORY[0x277D755E8]);
      v6 = self->_editIndicator;
      self->_editIndicator = v5;

      [(SUUIDownloadsCollectionViewCell *)self addSubview:self->_editIndicator];
      cellState = self->_cellState;
    }

    if (cellState == 2)
    {
      v7 = MEMORY[0x277D755B8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v7 imageNamed:@"EditControl" inBundle:v8];

      v10 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      v12 = [(SUUIDownloadsCollectionViewCell *)self isSelected];
      v13 = MEMORY[0x277D755B8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v12)
      {
        v9 = [v13 imageNamed:@"EditControlSelected" inBundle:v14];

        [(SUUIDownloadsCollectionViewCell *)self tintColor];
      }

      else
      {
        v9 = [v13 imageNamed:@"EditControl" inBundle:v14];

        [MEMORY[0x277D75348] lightGrayColor];
      }
      v10 = ;
    }

    v15 = v10;
    v11 = [v9 _flatImageWithColor:v10];

    [(UIImageView *)self->_editIndicator setImage:v11];
  }

  [(SUUIDownloadsCollectionViewCell *)self setNeedsLayout];
}

@end