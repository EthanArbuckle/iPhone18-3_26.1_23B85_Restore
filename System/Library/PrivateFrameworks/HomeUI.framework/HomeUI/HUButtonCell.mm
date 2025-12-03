@interface HUButtonCell
- (HUButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setHideTitle:(BOOL)title;
- (void)setTextAlignment:(int64_t)alignment;
- (void)tintColorDidChange;
- (void)updateTitle;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUButtonCell

- (HUButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = HUButtonCell;
  v4 = [(HUButtonCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUButtonCell *)v4 setTextColorFollowsTintColor:1];
    [(HUButtonCell *)v5 setTextAlignment:4];
    [(HUButtonCell *)v5 setHideTitle:0];
    textLabel = [(HUButtonCell *)v5 textLabel];
    [textLabel setNumberOfLines:0];
  }

  return v5;
}

- (void)setTextAlignment:(int64_t)alignment
{
  self->_textAlignment = alignment;
  textLabel = [(HUButtonCell *)self textLabel];
  [textLabel setTextAlignment:alignment];
}

- (void)setHideTitle:(BOOL)title
{
  self->_hideTitle = title;
  hideTitle = [(HUButtonCell *)self hideTitle];
  textLabel = [(HUButtonCell *)self textLabel];
  [textLabel setHidden:hideTitle];
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUButtonCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [(HUButtonCell *)self textLabel];
  [textLabel setText:v6];

  item2 = [(HUButtonCell *)self item];
  latestResults2 = [item2 latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUButtonCell *)self setAccessibilityIdentifier:v10];

  [(HUButtonCell *)self updateTitle];
}

- (void)updateTitle
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  textAlignment = [(HUButtonCell *)self textAlignment];
  if ([(HUButtonCell *)self textColorFollowsTintColor])
  {
    tintColor = [(HUButtonCell *)self tintColor];

    labelColor = tintColor;
  }

  if ([(HUButtonCell *)self isDestructive])
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];

    textAlignment = 4;
    labelColor = systemRedColor;
  }

  if ([(HUButtonCell *)self isDisabled])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];

    labelColor = systemGrayColor;
  }

  textLabel = [(HUButtonCell *)self textLabel];
  [textLabel setTextColor:labelColor];

  textLabel2 = [(HUButtonCell *)self textLabel];
  [textLabel2 setTextAlignment:textAlignment];
}

@end