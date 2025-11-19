@interface WDAccountDetailDeleteButtonCell
- (WDAccountDetailDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupUI;
@end

@implementation WDAccountDetailDeleteButtonCell

- (WDAccountDetailDeleteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDAccountDetailDeleteButtonCell;
  v4 = [(WDAccountDetailDeleteButtonCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WDAccountDetailDeleteButtonCell *)v4 _setupUI];
  }

  return v5;
}

- (void)_setupUI
{
  [(WDAccountDetailDeleteButtonCell *)self setSelectionStyle:3];
  [(WDAccountDetailDeleteButtonCell *)self setAccessoryType:0];
  [(WDAccountDetailDeleteButtonCell *)self setUserInteractionEnabled:1];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [(WDAccountDetailDeleteButtonCell *)self textLabel];
  [v4 setFont:v3];

  v6 = [MEMORY[0x1E69DC888] systemRedColor];
  v5 = [(WDAccountDetailDeleteButtonCell *)self textLabel];
  [v5 setTextColor:v6];
}

@end