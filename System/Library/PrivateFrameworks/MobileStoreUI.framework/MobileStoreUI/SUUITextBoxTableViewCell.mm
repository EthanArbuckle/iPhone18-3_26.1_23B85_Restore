@interface SUUITextBoxTableViewCell
- (SUUITextBoxTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)textBoxInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUITextBoxTableViewCell

- (SUUITextBoxTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = SUUITextBoxTableViewCell;
  v4 = [(SUUITableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUUITextBoxTableViewCell *)v4 contentView];
    v7 = *(MEMORY[0x277D768C8] + 16);
    *&v5->_textBoxInsets.top = *MEMORY[0x277D768C8];
    *&v5->_textBoxInsets.bottom = v7;
    v8 = [SUUITextBoxView alloc];
    [v6 bounds];
    v9 = [(SUUITextBoxView *)v8 initWithFrame:?];
    textBoxView = v5->_textBoxView;
    v5->_textBoxView = v9;

    [(SUUITextBoxView *)v5->_textBoxView setEnabled:0];
    [v6 addSubview:v5->_textBoxView];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SUUITextBoxTableViewCell;
  [(SUUITableViewCell *)&v4 prepareForReuse];
  v3 = *(MEMORY[0x277D768C8] + 16);
  *&self->_textBoxInsets.top = *MEMORY[0x277D768C8];
  *&self->_textBoxInsets.bottom = v3;
}

- (void)setBackgroundColor:(id)a3
{
  textBoxView = self->_textBoxView;
  v5 = a3;
  [(SUUITextBoxView *)textBoxView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUITextBoxTableViewCell;
  [(SUUITextBoxTableViewCell *)&v6 setBackgroundColor:v5];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SUUITextBoxTableViewCell;
  [(SUUITableViewCell *)&v8 layoutSubviews];
  textBoxView = self->_textBoxView;
  [(SUUITextBoxTableViewCell *)self bounds];
  [(SUUITextBoxView *)textBoxView setFrame:v4 + self->_textBoxInsets.left, v5 + self->_textBoxInsets.top, v6 - (self->_textBoxInsets.left + self->_textBoxInsets.right), v7 - (self->_textBoxInsets.top + self->_textBoxInsets.bottom)];
}

- (UIEdgeInsets)textBoxInsets
{
  top = self->_textBoxInsets.top;
  left = self->_textBoxInsets.left;
  bottom = self->_textBoxInsets.bottom;
  right = self->_textBoxInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end