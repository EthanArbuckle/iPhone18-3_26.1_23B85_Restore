@interface SUUIRedeemIdTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (SUUIRedeemIdTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SUUIRedeemIdTableViewCellDelegate)delegate;
- (void)_initializeTextField;
- (void)layoutSubviews;
- (void)setAutoCapitalizationType:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)textFieldDidChange:(id)a3;
@end

@implementation SUUIRedeemIdTableViewCell

- (SUUIRedeemIdTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemIdTableViewCell;
  v4 = [(SUUIRedeemIdTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SUUIRedeemIdTableViewCell *)v4 setSelectionStyle:0];
    [(SUUIRedeemIdTableViewCell *)v5 _initializeTextField];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3 = [(SUUIRedeemIdTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SUUIRedeemIdTableViewCell *)self separatorInset];
  v13 = v12;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21 = CGRectInset(v20, v13, 0.0);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v18 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v18 setFrame:{x, y, width, height}];

  v19.receiver = self;
  v19.super_class = SUUIRedeemIdTableViewCell;
  [(SUUIRedeemIdTableViewCell *)&v19 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v3 setUserInteractionEnabled:1];

  v4 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v4 becomeFirstResponder];

  return 1;
}

- (BOOL)resignFirstResponder
{
  v3 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v3 setUserInteractionEnabled:0];

  v4 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v4 resignFirstResponder];

  return 1;
}

- (void)setPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v5 setPlaceholder:v4];
}

- (void)setKeyboardType:(int64_t)a3
{
  v4 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v4 setKeyboardType:a3];
}

- (void)setReturnKeyType:(int64_t)a3
{
  v4 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v4 setReturnKeyType:a3];
}

- (void)setAutoCapitalizationType:(int64_t)a3
{
  v4 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v4 setAutocapitalizationType:a3];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(SUUIRedeemIdTableViewCell *)self delegate];
  v6 = [v4 text];

  [v5 redeemIdCell:self didReturnWithText:v6];
  return 1;
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v6 = [(SUUIRedeemIdTableViewCell *)self delegate];
  v5 = [v4 text];

  [v6 redeemIdCell:self didChangeToText:v5];
}

- (void)_initializeTextField
{
  v3 = objc_alloc(MEMORY[0x277D75BB8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SUUIRedeemIdTableViewCell *)self setTextField:v4];

  v5 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v5 setDelegate:self];

  v6 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v6 setUserInteractionEnabled:0];

  v7 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v7 setClearButtonMode:1];

  v8 = [(SUUIRedeemIdTableViewCell *)self textField];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v10 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  v12 = [(SUUIRedeemIdTableViewCell *)self contentView];
  v11 = [(SUUIRedeemIdTableViewCell *)self textField];
  [v12 addSubview:v11];
}

- (SUUIRedeemIdTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end