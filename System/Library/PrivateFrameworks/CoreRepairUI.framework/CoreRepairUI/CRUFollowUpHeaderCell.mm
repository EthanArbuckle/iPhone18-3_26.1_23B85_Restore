@interface CRUFollowUpHeaderCell
- (CRUFollowUpHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)createFollowUpSubtitle;
- (id)createFollowUpTitle;
- (void)handleTapOnLabel;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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

  v4 = [MEMORY[0x277D3FA48] appearance];
  v5 = [v4 textColor];
  if (v5)
  {
    [v2 setTextColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D75340] labelColor];
    [v2 setTextColor:v6];
  }

  LODWORD(v7) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];

  return v2;
}

- (id)createFollowUpSubtitle
{
  v2 = objc_alloc_init(MEMORY[0x277D756C0]);
  v3 = [MEMORY[0x277D3FA48] appearance];
  v4 = [v3 textColor];
  if (v4)
  {
    [v2 setTextColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D75340] labelColor];
    [v2 setTextColor:v5];
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

- (CRUFollowUpHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v13.receiver = self;
  v13.super_class = CRUFollowUpHeaderCell;
  v5 = [(PSTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4, a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(CRUFollowUpHeaderCell *)v5 createFollowUpTitle];
    followTitle = v6->_followTitle;
    v6->_followTitle = v7;

    v9 = [(CRUFollowUpHeaderCell *)v6 createFollowUpSubtitle];
    followSubtitle = v6->_followSubtitle;
    v6->_followSubtitle = v9;

    v11 = [(CRUFollowUpHeaderCell *)v6 contentView];
    [v11 addSubview:v6->_followTitle];
    [v11 addSubview:v6->_followSubtitle];
    [(CRUFollowUpHeaderCell *)v6 layoutSubviews];
  }

  return v6;
}

- (void)handleTapOnLabel
{
  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = MEMORY[0x277CBEBC0];
  v3 = objc_opt_new();
  v4 = [v3 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
  v5 = [v2 URLWithString:v4];
  [v6 openURL:v5 configuration:0 completionHandler:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CRUFollowUpHeaderCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(CRUFollowUpHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v18.receiver = self;
  v18.super_class = CRUFollowUpHeaderCell;
  v4 = a3;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{*MEMORY[0x277CFE418], v18.receiver, v18.super_class}];

  v6 = [v5 title];
  [(UILabel *)self->_followTitle setText:v6];

  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [v5 informativeText];
  v10 = [v8 initWithString:v9];

  v11 = [v5 informativeText];
  v12 = [v7 localizedStringWithKey:@"LEARN_MORE_ELLIPSE" defaultString:@"LEARN_MORE_ELLIPSE"];
  v13 = [v11 rangeOfString:v12];
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