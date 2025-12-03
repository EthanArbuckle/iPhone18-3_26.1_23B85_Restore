@interface HUTableViewCell
- (HUTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateDetailTextLabel;
- (void)_updateTitle;
- (void)prepareForReuse;
- (void)setTitleColorFollowsTintColor:(BOOL)color;
- (void)setValueColorFollowsTintColor:(BOOL)color;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTableViewCell

- (HUTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = HUTableViewCell;
  result = [(HUTableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
  if (result)
  {
    result->_titleColorFollowsTintColor = 0;
    result->_valueColorFollowsTintColor = 0;
  }

  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUTableViewCell;
  [(HUTableViewCell *)&v3 prepareForReuse];
  [(HUTableViewCell *)self setItem:0];
  [(HUTableViewCell *)self setDisabled:0];
  [(HUTableViewCell *)self setTitleColorFollowsTintColor:0];
  [(HUTableViewCell *)self setValueColorFollowsTintColor:0];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v22[2] = *MEMORY[0x277D85DE8];
  item = [(HUTableViewCell *)self item];
  latestResults = [item latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [(HUTableViewCell *)self textLabel];
  [textLabel setText:v6];

  v8 = *MEMORY[0x277D13E20];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v9)
  {
    v21[0] = *MEMORY[0x277D740A8];
    detailTextLabel = [(HUTableViewCell *)self detailTextLabel];
    font = [detailTextLabel font];
    v22[0] = font;
    v21[1] = *MEMORY[0x277D740C0];
    detailTextLabel2 = [(HUTableViewCell *)self detailTextLabel];
    textColor = [detailTextLabel2 textColor];
    v22[1] = textColor;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v15 = [latestResults objectForKeyedSubscript:v8];
    if ([v15 prefersDynamicString])
    {
      detailTextLabel3 = [(HUTableViewCell *)self detailTextLabel];
      [detailTextLabel3 bounds];
      detailTextLabel5 = [v15 dynamicStringForSize:v14 attributes:{v17, v18}];
      detailTextLabel4 = [(HUTableViewCell *)self detailTextLabel];
      [detailTextLabel4 setAttributedText:detailTextLabel5];
    }

    else
    {
      detailTextLabel3 = [v15 stringWithAttributes:v14];
      detailTextLabel5 = [(HUTableViewCell *)self detailTextLabel];
      [detailTextLabel5 setAttributedText:detailTextLabel3];
    }
  }

  [(HUTableViewCell *)self _updateTitle];
  [(HUTableViewCell *)self _updateDetailTextLabel];
}

- (void)setTitleColorFollowsTintColor:(BOOL)color
{
  if (self->_titleColorFollowsTintColor != color)
  {
    self->_titleColorFollowsTintColor = color;
    [(HUTableViewCell *)self _updateTitle];
  }
}

- (void)setValueColorFollowsTintColor:(BOOL)color
{
  if (self->_valueColorFollowsTintColor != color)
  {
    self->_valueColorFollowsTintColor = color;
    [(HUTableViewCell *)self _updateDetailTextLabel];
  }
}

- (void)_updateTitle
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__HUTableViewCell__updateTitle__block_invoke;
  v5[3] = &unk_277DBF240;
  v5[4] = self;
  v3 = __31__HUTableViewCell__updateTitle__block_invoke(v5);
  textLabel = [(HUTableViewCell *)self textLabel];
  [textLabel setTextColor:v3];
}

id __31__HUTableViewCell__updateTitle__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    if ([*(a1 + 32) titleColorFollowsTintColor])
    {
      [*(a1 + 32) tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v2 = ;
  }

  return v2;
}

- (void)_updateDetailTextLabel
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HUTableViewCell__updateDetailTextLabel__block_invoke;
  v5[3] = &unk_277DBF240;
  v5[4] = self;
  v3 = __41__HUTableViewCell__updateDetailTextLabel__block_invoke(v5);
  detailTextLabel = [(HUTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v3];
}

id __41__HUTableViewCell__updateDetailTextLabel__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) != 0 || (objc_msgSend(*(a1 + 32), "valueColorFollowsTintColor") & 1) == 0)
  {
    v2 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v2 = [*(a1 + 32) tintColor];
  }

  return v2;
}

@end