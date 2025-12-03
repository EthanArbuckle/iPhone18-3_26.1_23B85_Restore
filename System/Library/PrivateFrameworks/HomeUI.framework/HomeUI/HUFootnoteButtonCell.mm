@interface HUFootnoteButtonCell
- (HUFootnoteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateTextColor;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)tintColorDidChange;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUFootnoteButtonCell

- (HUFootnoteButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32.receiver = self;
  v32.super_class = HUFootnoteButtonCell;
  v4 = [(HUFootnoteButtonCell *)&v32 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUFootnoteButtonCell *)v4 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [(HUFootnoteButtonCell *)v4 contentView];
    [contentView setBackgroundColor:clearColor2];

    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    titleButton = v4->_titleButton;
    v4->_titleButton = v8;

    [(UIButton *)v4->_titleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    titleLabel = [(UIButton *)v4->_titleButton titleLabel];
    [titleLabel setFont:v10];

    titleLabel2 = [(UIButton *)v4->_titleButton titleLabel];
    [titleLabel2 setTextAlignment:1];

    [(UIButton *)v4->_titleButton setUserInteractionEnabled:0];
    contentView2 = [(HUFootnoteButtonCell *)v4 contentView];
    [contentView2 addSubview:v4->_titleButton];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(UIButton *)v4->_titleButton leadingAnchor];
    contentView3 = [(HUFootnoteButtonCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v18];

    trailingAnchor = [(UIButton *)v4->_titleButton trailingAnchor];
    contentView4 = [(HUFootnoteButtonCell *)v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v22];

    topAnchor = [(UIButton *)v4->_titleButton topAnchor];
    contentView5 = [(HUFootnoteButtonCell *)v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v26];

    bottomAnchor = [(UIButton *)v4->_titleButton bottomAnchor];
    contentView6 = [(HUFootnoteButtonCell *)v4 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUFootnoteButtonCell;
  [(HUFootnoteButtonCell *)&v3 prepareForReuse];
  [(HUFootnoteButtonCell *)self setItem:0];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUFootnoteButtonCell;
  [(HUFootnoteButtonCell *)&v3 tintColorDidChange];
  [(HUFootnoteButtonCell *)self _updateTextColor];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = HUFootnoteButtonCell;
  [(HUFootnoteButtonCell *)&v3 didMoveToSuperview];
  [(HUFootnoteButtonCell *)self _updateTextColor];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = HUFootnoteButtonCell;
  [(HUFootnoteButtonCell *)&v7 setHighlighted:highlighted animated:animated];
  titleButton = [(HUFootnoteButtonCell *)self titleButton];
  [titleButton setHighlighted:highlightedCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUFootnoteButtonCell *)self item];
  latestResults = [item latestResults];

  titleButton = [(HUFootnoteButtonCell *)self titleButton];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [titleButton setTitle:v6 forState:0];

  [(HUFootnoteButtonCell *)self _updateTextColor];
  [(HUFootnoteButtonCell *)self setSelectionStyle:0];
}

- (void)_updateTextColor
{
  tintColor = [(HUFootnoteButtonCell *)self tintColor];
  if ([(HUFootnoteButtonCell *)self isDisabled])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];

    tintColor = systemGrayColor;
  }

  titleButton = [(HUFootnoteButtonCell *)self titleButton];
  titleLabel = [titleButton titleLabel];
  [titleLabel setTextColor:tintColor];
}

@end