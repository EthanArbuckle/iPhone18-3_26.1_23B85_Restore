@interface FAChecklistButtonCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FAChecklistButtonCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = FAChecklistButtonCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  textLabel = [(FAChecklistButtonCell *)self textLabel];
  [textLabel setColor:systemBlueColor];

  textLabel2 = [(FAChecklistButtonCell *)self textLabel];
  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
  [textLabel2 setFont:v8];

  textLabel3 = [(FAChecklistButtonCell *)self textLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];

  [textLabel3 setText:v10];
  textLabel4 = [(FAChecklistButtonCell *)self textLabel];
  [textLabel4 setLineBreakMode:0];

  textLabel5 = [(FAChecklistButtonCell *)self textLabel];
  [textLabel5 setNumberOfLines:0];

  [(FAChecklistButtonCell *)self setIndentationWidth:51.75];
  [(FAChecklistButtonCell *)self setIndentationLevel:1];
  [(FAChecklistButtonCell *)self setNeedsLayout];
}

@end