@interface HUButtonCell
- (HUButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setHideTitle:(BOOL)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)tintColorDidChange;
- (void)updateTitle;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUButtonCell

- (HUButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUButtonCell;
  v4 = [(HUButtonCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUButtonCell *)v4 setTextColorFollowsTintColor:1];
    [(HUButtonCell *)v5 setTextAlignment:4];
    [(HUButtonCell *)v5 setHideTitle:0];
    v6 = [(HUButtonCell *)v5 textLabel];
    [v6 setNumberOfLines:0];
  }

  return v5;
}

- (void)setTextAlignment:(int64_t)a3
{
  self->_textAlignment = a3;
  v4 = [(HUButtonCell *)self textLabel];
  [v4 setTextAlignment:a3];
}

- (void)setHideTitle:(BOOL)a3
{
  self->_hideTitle = a3;
  v4 = [(HUButtonCell *)self hideTitle];
  v5 = [(HUButtonCell *)self textLabel];
  [v5 setHidden:v4];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUButtonCell;
  [(HUButtonCell *)&v3 prepareForReuse];
  [(HUButtonCell *)self setDestructive:0];
  [(HUButtonCell *)self setTextColorFollowsTintColor:1];
  [(HUButtonCell *)self setTextAlignment:4];
  [(HUButtonCell *)self setHideTitle:0];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUButtonCell;
  [(HUButtonCell *)&v3 tintColorDidChange];
  [(HUButtonCell *)self updateTitle];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = HUButtonCell;
  [(HUButtonCell *)&v3 didMoveToSuperview];
  [(HUButtonCell *)self updateTitle];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUButtonCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [(HUButtonCell *)self textLabel];
  [v7 setText:v6];

  v8 = [(HUButtonCell *)self item];
  v9 = [v8 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUButtonCell *)self setAccessibilityIdentifier:v10];

  [(HUButtonCell *)self updateTitle];
}

- (void)updateTitle
{
  v9 = [MEMORY[0x277D75348] labelColor];
  v3 = [(HUButtonCell *)self textAlignment];
  if ([(HUButtonCell *)self textColorFollowsTintColor])
  {
    v4 = [(HUButtonCell *)self tintColor];

    v9 = v4;
  }

  if ([(HUButtonCell *)self isDestructive])
  {
    v5 = [MEMORY[0x277D75348] systemRedColor];

    v3 = 4;
    v9 = v5;
  }

  if ([(HUButtonCell *)self isDisabled])
  {
    v6 = [MEMORY[0x277D75348] systemGrayColor];

    v9 = v6;
  }

  v7 = [(HUButtonCell *)self textLabel];
  [v7 setTextColor:v9];

  v8 = [(HUButtonCell *)self textLabel];
  [v8 setTextAlignment:v3];
}

@end