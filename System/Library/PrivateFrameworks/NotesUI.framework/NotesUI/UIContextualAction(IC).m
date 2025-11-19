@interface UIContextualAction(IC)
+ (id)contextualActionWithTitle:()IC systemImageName:style:color:actionBlock:;
+ (id)ic_deleteContextualActionWithBlock:()IC;
+ (id)ic_moveContextualActionWithBlock:()IC;
+ (id)ic_pinContextualActionWithPinned:()IC pinBlock:;
+ (id)ic_removeContextualActionWithBlock:()IC;
+ (id)ic_replyContextualActionWithBlock:()IC;
+ (id)ic_shareContextualActionWithBlock:()IC;
@end

@implementation UIContextualAction(IC)

+ (id)ic_deleteContextualActionWithBlock:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Delete", @"Delete", 0, 1);
  v6 = [a1 contextualActionWithTitle:v5 systemImageName:@"trash.fill" style:1 color:0 actionBlock:v4];

  return v6;
}

+ (id)ic_removeContextualActionWithBlock:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Remove", @"Remove", 0, 1);
  v6 = [a1 contextualActionWithTitle:v5 systemImageName:@"minus.circle" style:1 color:0 actionBlock:v4];

  return v6;
}

+ (id)ic_moveContextualActionWithBlock:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Move", @"Move", 0, 1);
  v6 = [MEMORY[0x1E69DC888] ICMoveActionBackgroundColor];
  v7 = [a1 contextualActionWithTitle:v5 systemImageName:@"folder.fill" style:0 color:v6 actionBlock:v4];

  return v7;
}

+ (id)ic_pinContextualActionWithPinned:()IC pinBlock:
{
  v6 = a4;
  if (a3)
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Unpin", @"Unpin", 0, 1);
    v8 = @"pin.slash.fill";
  }

  else
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Pin", @"Pin", 0, 1);
    v8 = @"pin.fill";
  }

  v9 = [MEMORY[0x1E69DC888] ICPinActionColor];
  v10 = [a1 contextualActionWithTitle:v7 systemImageName:v8 style:0 color:v9 actionBlock:v6];

  return v10;
}

+ (id)ic_shareContextualActionWithBlock:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Share", @"Share", 0, 1);
  v6 = [MEMORY[0x1E69DC888] ICShareActionBackgroundColor];
  v7 = [a1 contextualActionWithTitle:v5 systemImageName:@"square.and.arrow.up.fill" style:0 color:v6 actionBlock:v4];

  return v7;
}

+ (id)ic_replyContextualActionWithBlock:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Reply", @"Reply", 0, 1);
  v6 = [MEMORY[0x1E69DC888] ICShareActionBackgroundColor];
  v7 = [a1 contextualActionWithTitle:v5 systemImageName:@"arrowshape.turn.up.left" style:0 color:v6 actionBlock:v4];

  return v7;
}

+ (id)contextualActionWithTitle:()IC systemImageName:style:color:actionBlock:
{
  v11 = a7;
  v12 = MEMORY[0x1E69DC8E8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__UIContextualAction_IC__contextualActionWithTitle_systemImageName_style_color_actionBlock___block_invoke;
  v19[3] = &unk_1E846B448;
  v20 = v11;
  v13 = v11;
  v14 = a6;
  v15 = a4;
  v16 = [v12 contextualActionWithStyle:a5 title:a3 handler:v19];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v15];

  [v16 setImage:v17];
  [v16 setBackgroundColor:v14];

  return v16;
}

@end