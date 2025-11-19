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

  objc_setAssociatedObject(a1, &_MergedGlobals_638, value, 3);
  v4 = value;
  if (value)
  {
    (off_2811221E8)(a1, sel_setSeparatorStyle_, [value unsignedIntegerValue]);
    v4 = value;
  }
}

- (void)turnOffRounding
{
  v2 = [a1 layer];
  [v2 setCornerRadius:0.0];

  v3 = [a1 layer];
  [v3 setMasksToBounds:0];
}

- (void)removeMargins
{
  v2 = [a1 contentView];
  [v2 setPreservesSuperviewLayoutMargins:0];

  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  [a1 setLayoutMargins:{*MEMORY[0x277D768C8], v4, v5, v6}];
  v7 = [a1 contentView];
  [v7 setLayoutMargins:{v3, v4, v5, v6}];
}

@end