@interface GKChallengePlayerPickerCell
- (void)setSelected:(BOOL)selected;
@end

@implementation GKChallengePlayerPickerCell

- (void)setSelected:(BOOL)selected
{
  v6.receiver = self;
  v6.super_class = GKChallengePlayerPickerCell;
  [(GKDashboardPlayerPickerCell *)&v6 setSelected:selected];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
  contentView = [(GKChallengePlayerPickerCell *)self contentView];
  [contentView setBackgroundColor:v4];
}

@end