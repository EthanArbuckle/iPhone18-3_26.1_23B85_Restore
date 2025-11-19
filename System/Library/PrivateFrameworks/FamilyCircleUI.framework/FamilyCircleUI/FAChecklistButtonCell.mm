@interface FAChecklistButtonCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation FAChecklistButtonCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = FAChecklistButtonCell;
  v4 = a3;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v6 = [(FAChecklistButtonCell *)self textLabel];
  [v6 setColor:v5];

  v7 = [(FAChecklistButtonCell *)self textLabel];
  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
  [v7 setFont:v8];

  v9 = [(FAChecklistButtonCell *)self textLabel];
  v10 = [v4 propertyForKey:*MEMORY[0x277D40170]];

  [v9 setText:v10];
  v11 = [(FAChecklistButtonCell *)self textLabel];
  [v11 setLineBreakMode:0];

  v12 = [(FAChecklistButtonCell *)self textLabel];
  [v12 setNumberOfLines:0];

  [(FAChecklistButtonCell *)self setIndentationWidth:51.75];
  [(FAChecklistButtonCell *)self setIndentationLevel:1];
  [(FAChecklistButtonCell *)self setNeedsLayout];
}

@end