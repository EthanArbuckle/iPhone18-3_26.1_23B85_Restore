@interface CKAvatarNavigationBar
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation CKAvatarNavigationBar

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18.receiver = self;
    v18.super_class = CKAvatarNavigationBar;
    [(CKAvatarNavigationBar *)&v18 sizeThatFits:width, height];
    v9 = v8;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 maxNavigationBarExpandedHeightValue];
    v12 = v11;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CKAvatarNavigationBar;
    [(CKAvatarNavigationBar *)&v17 sizeThatFits:width, height];
    v9 = v13;
    v12 = v14;
  }

  v15 = v9;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

@end