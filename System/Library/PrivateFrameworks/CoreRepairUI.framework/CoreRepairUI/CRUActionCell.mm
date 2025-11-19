@interface CRUActionCell
- (void)handleTapOnLabel;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CRUActionCell

- (void)handleTapOnLabel
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=BATTERY_USAGE&path=BATTERY_HEALTH"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRUActionCell;
  v4 = a3;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"CRImageAlertKey", v8.receiver, v8.super_class}];

  v6 = [(PSTableCell *)self valueLabel];
  [v6 setAttributedText:v5];

  [(CRUActionCell *)self setUserInteractionEnabled:1];
  v7 = [objc_alloc(MEMORY[0x277D75B78]) initWithTarget:self action:sel_handleTapOnLabel];
  [(CRUActionCell *)self addGestureRecognizer:v7];
}

@end