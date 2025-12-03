@interface BTWarningCell
- (BTWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation BTWarningCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BTWarningCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(BTWarningCell *)self setNeedsUpdateConstraints];
}

- (BTWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = BTWarningCell;
  v4 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:0];
  if (v4)
  {
    v5 = createWarningCellTitle();
    titleTextView = v4->_titleTextView;
    v4->_titleTextView = v5;

    v7 = createWarningCellBody();
    bodyTextView = v4->_bodyTextView;
    v4->_bodyTextView = v7;

    [(UITextView *)v4->_bodyTextView setDelegate:v4];
    contentView = [(BTWarningCell *)v4 contentView];
    [contentView addSubview:v4->_titleTextView];
    [contentView addSubview:v4->_bodyTextView];
    [(BTWarningCell *)v4 layoutSubviews];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v24.receiver = self;
  v24.super_class = BTWarningCell;
  [(PSTableCell *)&v24 refreshCellContentsWithSpecifier:specifier];
  v4 = *MEMORY[0x277D3FCE0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  userInfo = [WeakRetained userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"warning-cell-title"];

  v8 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  userInfo2 = [v8 userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"warning-cell-body-link-text"];

  v11 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  userInfo3 = [v11 userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"warning-cell-body-url"];

  [(UITextView *)self->_titleTextView setText:v7];
  v14 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  userInfo4 = [v14 userInfo];
  v16 = [userInfo4 objectForKeyedSubscript:@"warning-cell-body"];

  if (v10 && v13)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16];
    [v17 setAsLink:v10 linkURL:v13];
    v18 = *MEMORY[0x277D740A8];
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v17 addAttribute:v18 value:v19 range:{0, objc_msgSend(v17, "length")}];

    v20 = *MEMORY[0x277D740C0];
    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];
    blackColor = textColor;
    if (!textColor)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    [v17 addAttribute:v20 value:blackColor range:{0, objc_msgSend(v17, "length")}];
    if (!textColor)
    {
    }

    [(UITextView *)self->_bodyTextView setAttributedText:v17];
  }

  else
  {
    [(UITextView *)self->_bodyTextView setText:v16];
  }

  [(BTWarningCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_TitletextviewB.isa, self->_titleTextView, self->_bodyTextView, 0);
  v4 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_titleTextView]-|" options:0 metrics:0 views:v3];
  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_bodyTextView]-|" options:0 metrics:0 views:v3];
  v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-11-[_titleTextView]-[_bodyTextView]-11-|" options:0 metrics:0 views:v3];
  v7 = [v4 arrayByAddingObjectsFromArray:v5];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];
  constraints = self->_constraints;
  self->_constraints = v8;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v10.receiver = self;
  v10.super_class = BTWarningCell;
  [(BTWarningCell *)&v10 updateConstraints];
}

@end