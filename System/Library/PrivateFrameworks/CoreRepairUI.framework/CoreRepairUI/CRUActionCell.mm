@interface CRUActionCell
- (void)handleTapOnLabel;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CRUActionCell

- (void)handleTapOnLabel
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=BATTERY_USAGE&path=BATTERY_HEALTH"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CRUActionCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CRImageAlertKey", v8.receiver, v8.super_class}];

  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setAttributedText:v5];

  [(CRUActionCell *)self setUserInteractionEnabled:1];
  v7 = [objc_alloc(MEMORY[0x277D75B78]) initWithTarget:self action:sel_handleTapOnLabel];
  [(CRUActionCell *)self addGestureRecognizer:v7];
}

@end