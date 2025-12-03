@interface SUUIRedeemIdTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (SUUIRedeemIdTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SUUIRedeemIdTableViewCellDelegate)delegate;
- (void)_initializeTextField;
- (void)layoutSubviews;
- (void)setAutoCapitalizationType:(int64_t)type;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholderText:(id)text;
- (void)setReturnKeyType:(int64_t)type;
- (void)textFieldDidChange:(id)change;
@end

@implementation SUUIRedeemIdTableViewCell

- (SUUIRedeemIdTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemIdTableViewCell;
  v4 = [(SUUIRedeemIdTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  contentView = [(SUUIRedeemIdTableViewCell *)self contentView];
  [contentView bounds];
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

  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setFrame:{x, y, width, height}];

  v19.receiver = self;
  v19.super_class = SUUIRedeemIdTableViewCell;
  [(SUUIRedeemIdTableViewCell *)&v19 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setUserInteractionEnabled:1];

  textField2 = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField2 becomeFirstResponder];

  return 1;
}

- (BOOL)resignFirstResponder
{
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setUserInteractionEnabled:0];

  textField2 = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField2 resignFirstResponder];

  return 1;
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setPlaceholder:textCopy];
}

- (void)setKeyboardType:(int64_t)type
{
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setKeyboardType:type];
}

- (void)setReturnKeyType:(int64_t)type
{
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setReturnKeyType:type];
}

- (void)setAutoCapitalizationType:(int64_t)type
{
  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setAutocapitalizationType:type];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [(SUUIRedeemIdTableViewCell *)self delegate];
  text = [returnCopy text];

  [delegate redeemIdCell:self didReturnWithText:text];
  return 1;
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  delegate = [(SUUIRedeemIdTableViewCell *)self delegate];
  text = [changeCopy text];

  [delegate redeemIdCell:self didChangeToText:text];
}

- (void)_initializeTextField
{
  v3 = objc_alloc(MEMORY[0x277D75BB8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SUUIRedeemIdTableViewCell *)self setTextField:v4];

  textField = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField setDelegate:self];

  textField2 = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField2 setUserInteractionEnabled:0];

  textField3 = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField3 setClearButtonMode:1];

  textField4 = [(SUUIRedeemIdTableViewCell *)self textField];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [textField4 setBackgroundColor:clearColor];

  textField5 = [(SUUIRedeemIdTableViewCell *)self textField];
  [textField5 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  contentView = [(SUUIRedeemIdTableViewCell *)self contentView];
  textField6 = [(SUUIRedeemIdTableViewCell *)self textField];
  [contentView addSubview:textField6];
}

- (SUUIRedeemIdTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end