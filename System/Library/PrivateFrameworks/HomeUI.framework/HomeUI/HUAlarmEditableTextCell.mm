@interface HUAlarmEditableTextCell
- (BOOL)textFieldShouldReturn:(id)a3;
- (HUAlarmEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (int64_t)autocapitalizationType;
- (void)layoutSubviews;
- (void)setAutocapitalizationType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation HUAlarmEditableTextCell

- (HUAlarmEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = HUAlarmEditableTextCell;
  v4 = [(HUAlarmEditableTextCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    [(HUAlarmEditableTextCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x277D75BB8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v5->_textField;
    v5->_textField = v7;

    [(UITextField *)v5->_textField setBorderStyle:0];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UITextField *)v5->_textField setFont:v9];

    [(UITextField *)v5->_textField setAdjustsFontSizeToFitWidth:1];
    [(UITextField *)v5->_textField setReturnKeyType:9];
    [(UITextField *)v5->_textField setClearButtonMode:3];
    [(UITextField *)v5->_textField setDelegate:v5];
    [(UITextField *)v5->_textField setEnablesReturnKeyAutomatically:1];
    v10 = [(UITextField *)v5->_textField _clearButton];
    v11 = [v10 imageForState:0];

    v12 = [MEMORY[0x277D75348] hu_alarmsPrimaryColor];
    v13 = [v11 _flatImageWithColor:v12];

    v14 = [(UITextField *)v5->_textField _clearButton];
    [v14 setImage:v13 forState:0];

    v15 = [(HUAlarmEditableTextCell *)v5 contentView];
    [v15 addSubview:v5->_textField];
  }

  return v5;
}

- (int64_t)autocapitalizationType
{
  v2 = [(HUAlarmEditableTextCell *)self textField];
  v3 = [v2 autocapitalizationType];

  return v3;
}

- (void)setAutocapitalizationType:(int64_t)a3
{
  v4 = [(HUAlarmEditableTextCell *)self textField];
  [v4 setAutocapitalizationType:a3];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUAlarmEditableTextCell;
  [(HUAlarmEditableTextCell *)&v15 layoutSubviews];
  v3 = [(HUAlarmEditableTextCell *)self textField];
  [v3 isUserInteractionEnabled];

  v4 = [(HUAlarmEditableTextCell *)self contentView];
  [v4 bounds];
  v5 = [(HUAlarmEditableTextCell *)self contentView];
  [v5 bounds];
  UIRectCenteredYInRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(HUAlarmEditableTextCell *)self textField];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:kHUEditAlarmTitleFinishedNotification object:0];
  }

  return v4 != 0;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(HUAlarmEditableTextCell *)self isUserInteractionEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = HUAlarmEditableTextCell;
    [(HUAlarmEditableTextCell *)&v5 setUserInteractionEnabled:v3];
    [(UITextField *)self->_textField setUserInteractionEnabled:v3];
    [(HUAlarmEditableTextCell *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  [(HUAlarmEditableTextCell *)self setUserInteractionEnabled:?];
  v5 = [(HUAlarmEditableTextCell *)self textField];
  [v5 setEnabled:v3];

  v6 = [(HUAlarmEditableTextCell *)self textField];
  [v6 setUserInteractionEnabled:v3];

  if (v3)
  {
    v7 = [MEMORY[0x277D75348] labelColor];
    v8 = 3;
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    v8 = 0;
  }

  v9 = [(HUAlarmEditableTextCell *)self textField];
  [v9 setTextColor:v7];

  v10 = [(HUAlarmEditableTextCell *)self textField];
  [v10 setClearButtonMode:v8];
}

@end