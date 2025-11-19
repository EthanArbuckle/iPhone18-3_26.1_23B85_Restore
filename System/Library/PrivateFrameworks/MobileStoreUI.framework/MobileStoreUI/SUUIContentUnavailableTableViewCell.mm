@interface SUUIContentUnavailableTableViewCell
- (SUUIContentUnavailableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation SUUIContentUnavailableTableViewCell

- (SUUIContentUnavailableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = SUUIContentUnavailableTableViewCell;
  v4 = [(SUUITableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SUUIContentUnavailableTableViewCell *)v4 setUserInteractionEnabled:0];
    v6 = objc_alloc(MEMORY[0x277D75E78]);
    v7 = [v6 initWithFrame:0 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    view = v5->_view;
    v5->_view = v7;

    v9 = [(SUUIContentUnavailableTableViewCell *)v5 contentView];
    [v9 addSubview:v5->_view];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SUUIContentUnavailableTableViewCell;
  [(SUUITableViewCell *)&v12 layoutSubviews];
  v3 = [(SUUIContentUnavailableTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(_UIContentUnavailableView *)self->_view setFrame:v5, v7, v9, v11];
}

@end