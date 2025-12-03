@interface UITableViewCell(HUAdditions)
- (void)hu_setForcedSeparatorStyle:()HUAdditions;
- (void)removeMargins;
- (void)turnOffRounding;
@end

@implementation UITableViewCell(HUAdditions)

- (void)hu_setForcedSeparatorStyle:()HUAdditions
{
  value = a3;
  if (qword_2811221E0 != -1)
  {
    dispatch_once(&qword_2811221E0, &__block_literal_global_274);
  }

  objc_setAssociatedObject(self, &_MergedGlobals_638, value, 3);
  v4 = value;
  if (value)
  {
    (off_2811221E8)(self, sel_setSeparatorStyle_, [value unsignedIntegerValue]);
    v4 = value;
  }
}

- (void)turnOffRounding
{
  layer = [self layer];
  [layer setCornerRadius:0.0];

  layer2 = [self layer];
  [layer2 setMasksToBounds:0];
}

- (void)removeMargins
{
  contentView = [self contentView];
  [contentView setPreservesSuperviewLayoutMargins:0];

  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  [self setLayoutMargins:{*MEMORY[0x277D768C8], v4, v5, v6}];
  contentView2 = [self contentView];
  [contentView2 setLayoutMargins:{v3, v4, v5, v6}];
}

@end