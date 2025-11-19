@interface HUTableViewCell
- (HUTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateDetailTextLabel;
- (void)_updateTitle;
- (void)prepareForReuse;
- (void)setTitleColorFollowsTintColor:(BOOL)a3;
- (void)setValueColorFollowsTintColor:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTableViewCell

- (HUTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUTableViewCell;
  result = [(HUTableViewCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
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

- (void)updateUIWithAnimation:(BOOL)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = [(HUTableViewCell *)self item];
  v5 = [v4 latestResults];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [(HUTableViewCell *)self textLabel];
  [v7 setText:v6];

  v8 = *MEMORY[0x277D13E20];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v9)
  {
    v21[0] = *MEMORY[0x277D740A8];
    v10 = [(HUTableViewCell *)self detailTextLabel];
    v11 = [v10 font];
    v22[0] = v11;
    v21[1] = *MEMORY[0x277D740C0];
    v12 = [(HUTableViewCell *)self detailTextLabel];
    v13 = [v12 textColor];
    v22[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v15 = [v5 objectForKeyedSubscript:v8];
    if ([v15 prefersDynamicString])
    {
      v16 = [(HUTableViewCell *)self detailTextLabel];
      [v16 bounds];
      v19 = [v15 dynamicStringForSize:v14 attributes:{v17, v18}];
      v20 = [(HUTableViewCell *)self detailTextLabel];
      [v20 setAttributedText:v19];
    }

    else
    {
      v16 = [v15 stringWithAttributes:v14];
      v19 = [(HUTableViewCell *)self detailTextLabel];
      [v19 setAttributedText:v16];
    }
  }

  [(HUTableViewCell *)self _updateTitle];
  [(HUTableViewCell *)self _updateDetailTextLabel];
}

- (void)setTitleColorFollowsTintColor:(BOOL)a3
{
  if (self->_titleColorFollowsTintColor != a3)
  {
    self->_titleColorFollowsTintColor = a3;
    [(HUTableViewCell *)self _updateTitle];
  }
}

- (void)setValueColorFollowsTintColor:(BOOL)a3
{
  if (self->_valueColorFollowsTintColor != a3)
  {
    self->_valueColorFollowsTintColor = a3;
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
  v4 = [(HUTableViewCell *)self textLabel];
  [v4 setTextColor:v3];
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
  v4 = [(HUTableViewCell *)self detailTextLabel];
  [v4 setTextColor:v3];
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