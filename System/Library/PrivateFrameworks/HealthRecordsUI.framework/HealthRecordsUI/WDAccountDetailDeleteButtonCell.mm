@interface WDAccountDetailDeleteButtonCell
- (WDAccountDetailDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupUI;
@end

@implementation WDAccountDetailDeleteButtonCell

- (WDAccountDetailDeleteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDAccountDetailDeleteButtonCell;
  v4 = [(WDAccountDetailDeleteButtonCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  textLabel = [(WDAccountDetailDeleteButtonCell *)self textLabel];
  [textLabel setFont:v3];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  textLabel2 = [(WDAccountDetailDeleteButtonCell *)self textLabel];
  [textLabel2 setTextColor:systemRedColor];
}

@end