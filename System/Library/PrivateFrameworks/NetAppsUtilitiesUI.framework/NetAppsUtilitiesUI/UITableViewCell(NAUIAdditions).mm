@interface UITableViewCell(NAUIAdditions)
+ (double)naui_estimatedTableRowHeight;
+ (double)naui_tableRowHeight;
+ (id)naui_prototypeCell;
@end

@implementation UITableViewCell(NAUIAdditions)

+ (id)naui_prototypeCell
{
  v0 = [objc_alloc(objc_opt_class()) initWithStyle:0 reuseIdentifier:0];

  return v0;
}

+ (double)naui_tableRowHeight
{
  naui_supportsAutoLayout = [self naui_supportsAutoLayout];
  result = *MEMORY[0x277D76F30];
  if (!naui_supportsAutoLayout)
  {
    return 44.0;
  }

  return result;
}

+ (double)naui_estimatedTableRowHeight
{
  naui_prototypeCell = [self naui_prototypeCell];
  [naui_prototypeCell updateConstraintsIfNeeded];
  [naui_prototypeCell layoutIfNeeded];
  [naui_prototypeCell systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v3 = v2;

  return v3;
}

@end