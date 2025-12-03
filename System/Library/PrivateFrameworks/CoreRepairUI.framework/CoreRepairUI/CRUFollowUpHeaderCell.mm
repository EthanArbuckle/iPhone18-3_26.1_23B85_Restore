@interface CRUFollowUpHeaderCell
- (CRUFollowUpHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)createFollowUpSubtitle;
- (id)createFollowUpTitle;
- (void)handleTapOnLabel;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation CRUFollowUpHeaderCell

- (id)createFollowUpTitle
{
  v2 = objc_alloc_init(MEMORY[0x277D756C0]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  v3 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D76990]];
  [v2 setFont:v3];

  appearance = [MEMORY[0x277D3FA48] appearance];
  textColor = [appearance textColor];
  if (textColor)
  {
    [v2 setTextColor:textColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75340] labelColor];
    [v2 setTextColor:labelColor];
  }

  LODWORD(v7) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];

  return v2;
}

- (id)createFollowUpSubtitle
{
  v2 = objc_alloc_init(MEMORY[0x277D756C0]);
  appearance = [MEMORY[0x277D3FA48] appearance];
  textColor = [appearance textColor];
  if (textColor)
  {
    [v2 setTextColor:textColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75340] labelColor];
    [v2 setTextColor:labelColor];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  v6 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D769C8]];
  [v2 setFont:v6];

  LODWORD(v7) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];

  return v2;
}

- (CRUFollowUpHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = CRUFollowUpHeaderCell;
  specifier = [(PSTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier, specifier];
  v6 = specifier;
  if (specifier)
  {
    createFollowUpTitle = [(CRUFollowUpHeaderCell *)specifier createFollowUpTitle];
    followTitle = v6->_followTitle;
    v6->_followTitle = createFollowUpTitle;

    createFollowUpSubtitle = [(CRUFollowUpHeaderCell *)v6 createFollowUpSubtitle];
    followSubtitle = v6->_followSubtitle;
    v6->_followSubtitle = createFollowUpSubtitle;

    contentView = [(CRUFollowUpHeaderCell *)v6 contentView];
    [contentView addSubview:v6->_followTitle];
    [contentView addSubview:v6->_followSubtitle];
    [(CRUFollowUpHeaderCell *)v6 layoutSubviews];
  }

  return v6;
}

- (void)handleTapOnLabel
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = MEMORY[0x277CBEBC0];
  v3 = objc_opt_new();
  v4 = [v3 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
  v5 = [v2 URLWithString:v4];
  [defaultWorkspace openURL:v5 configuration:0 completionHandler:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CRUFollowUpHeaderCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(CRUFollowUpHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = CRUFollowUpHeaderCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277CFE418], v18.receiver, v18.super_class}];

  title = [v5 title];
  [(UILabel *)self->_followTitle setText:title];

  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  informativeText = [v5 informativeText];
  v10 = [v8 initWithString:informativeText];

  informativeText2 = [v5 informativeText];
  v12 = [v7 localizedStringWithKey:@"LEARN_MORE_ELLIPSE" defaultString:@"LEARN_MORE_ELLIPSE"];
  v13 = [informativeText2 rangeOfString:v12];
  v15 = v14;

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 addAttribute:*MEMORY[0x277D740E0] value:&stru_28597A1D8 range:{v13, v15}];
  }

  [(UILabel *)self->_followSubtitle setAttributedText:v10];
  [(UILabel *)self->_followSubtitle setUserInteractionEnabled:1];
  followSubtitle = self->_followSubtitle;
  v17 = [objc_alloc(MEMORY[0x277D75B78]) initWithTarget:self action:sel_handleTapOnLabel];
  [(UILabel *)followSubtitle addGestureRecognizer:v17];

  [(CRUFollowUpHeaderCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_FollowtitleFol.isa, self->_followTitle, self->_followSubtitle, 0);
  v4 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_followTitle]-|" options:0 metrics:0 views:v3];
  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_followSubtitle]-|" options:0 metrics:0 views:v3];
  v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-11-[_followTitle]-[_followSubtitle]-11-|" options:0 metrics:0 views:v3];
  v7 = [v4 arrayByAddingObjectsFromArray:v5];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];
  constraints = self->_constraints;
  self->_constraints = v8;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v10.receiver = self;
  v10.super_class = CRUFollowUpHeaderCell;
  [(CRUFollowUpHeaderCell *)&v10 updateConstraints];
}

@end