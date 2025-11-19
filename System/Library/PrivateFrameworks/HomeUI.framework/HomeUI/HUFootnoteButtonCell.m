@interface HUFootnoteButtonCell
- (HUFootnoteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateTextColor;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUFootnoteButtonCell

- (HUFootnoteButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32.receiver = self;
  v32.super_class = HUFootnoteButtonCell;
  v4 = [(HUFootnoteButtonCell *)&v32 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(HUFootnoteButtonCell *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [(HUFootnoteButtonCell *)v4 contentView];
    [v7 setBackgroundColor:v6];

    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    titleButton = v4->_titleButton;
    v4->_titleButton = v8;

    [(UIButton *)v4->_titleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v11 = [(UIButton *)v4->_titleButton titleLabel];
    [v11 setFont:v10];

    v12 = [(UIButton *)v4->_titleButton titleLabel];
    [v12 setTextAlignment:1];

    [(UIButton *)v4->_titleButton setUserInteractionEnabled:0];
    v13 = [(HUFootnoteButtonCell *)v4 contentView];
    [v13 addSubview:v4->_titleButton];

    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(UIButton *)v4->_titleButton leadingAnchor];
    v16 = [(HUFootnoteButtonCell *)v4 contentView];
    v17 = [v16 leadingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v14 addObject:v18];

    v19 = [(UIButton *)v4->_titleButton trailingAnchor];
    v20 = [(HUFootnoteButtonCell *)v4 contentView];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v14 addObject:v22];

    v23 = [(UIButton *)v4->_titleButton topAnchor];
    v24 = [(HUFootnoteButtonCell *)v4 contentView];
    v25 = [v24 topAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v14 addObject:v26];

    v27 = [(UIButton *)v4->_titleButton bottomAnchor];
    v28 = [(HUFootnoteButtonCell *)v4 contentView];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v14 addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:v14];
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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HUFootnoteButtonCell;
  [(HUFootnoteButtonCell *)&v7 setHighlighted:a3 animated:a4];
  v6 = [(HUFootnoteButtonCell *)self titleButton];
  [v6 setHighlighted:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUFootnoteButtonCell *)self item];
  v7 = [v4 latestResults];

  v5 = [(HUFootnoteButtonCell *)self titleButton];
  v6 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v5 setTitle:v6 forState:0];

  [(HUFootnoteButtonCell *)self _updateTextColor];
  [(HUFootnoteButtonCell *)self setSelectionStyle:0];
}

- (void)_updateTextColor
{
  v6 = [(HUFootnoteButtonCell *)self tintColor];
  if ([(HUFootnoteButtonCell *)self isDisabled])
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];

    v6 = v3;
  }

  v4 = [(HUFootnoteButtonCell *)self titleButton];
  v5 = [v4 titleLabel];
  [v5 setTextColor:v6];
}

@end