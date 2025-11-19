@interface CKUIBehaviorHUDPad
- (BOOL)entryFieldShouldUseBackdropView;
- (BOOL)joystickUsesWindow;
- (BOOL)usesActionMenu;
- (UIEdgeInsets)entryViewHorizontalCoverInsets;
- (UIEdgeInsets)entryViewVerticalCoverInsets;
- (id)theme;
@end

@implementation CKUIBehaviorHUDPad

- (id)theme
{
  if (theme_once_6350 != -1)
  {
    [CKUIBehaviorHUDPad theme];
  }

  v3 = theme_sBehavior_6349;

  return v3;
}

void __27__CKUIBehaviorHUDPad_theme__block_invoke()
{
  v0 = objc_alloc_init(CKUIThemeHUD);
  v1 = theme_sBehavior_6349;
  theme_sBehavior_6349 = v0;
}

- (BOOL)joystickUsesWindow
{
  if (joystickUsesWindow_once_6354 != -1)
  {
    [CKUIBehaviorHUDPad joystickUsesWindow];
  }

  return 0;
}

- (BOOL)entryFieldShouldUseBackdropView
{
  if (entryFieldShouldUseBackdropView_once_6358 != -1)
  {
    [CKUIBehaviorHUDPad entryFieldShouldUseBackdropView];
  }

  return 0;
}

- (BOOL)usesActionMenu
{
  if (usesActionMenu_once_6362 != -1)
  {
    [CKUIBehaviorHUDPad usesActionMenu];
  }

  return 0;
}

- (UIEdgeInsets)entryViewVerticalCoverInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CKUIBehaviorHUDPad_entryViewVerticalCoverInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewVerticalCoverInsets_once_6366 != -1)
  {
    dispatch_once(&entryViewVerticalCoverInsets_once_6366, block);
  }

  v3 = *(&entryViewVerticalCoverInsets_sBehavior_6365 + 1);
  v2 = *&entryViewVerticalCoverInsets_sBehavior_6365;
  v4 = *&qword_1EAD75B98;
  v5 = unk_1EAD75BA0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __50__CKUIBehaviorHUDPad_entryViewVerticalCoverInsets__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 _supportsForceTouch])
  {
    v8.receiver = *(a1 + 32);
    v8.super_class = CKUIBehaviorHUDPad;
    objc_msgSendSuper2(&v8, sel_entryViewVerticalCoverInsets);
    *&entryViewVerticalCoverInsets_sBehavior_6365 = v3;
    *(&entryViewVerticalCoverInsets_sBehavior_6365 + 1) = v4;
    qword_1EAD75B98 = v5;
    unk_1EAD75BA0 = v6;
  }

  else
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    entryViewVerticalCoverInsets_sBehavior_6365 = *MEMORY[0x1E69DDCE0];
    *&qword_1EAD75B98 = v7;
  }
}

- (UIEdgeInsets)entryViewHorizontalCoverInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CKUIBehaviorHUDPad_entryViewHorizontalCoverInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewHorizontalCoverInsets_once_6369 != -1)
  {
    dispatch_once(&entryViewHorizontalCoverInsets_once_6369, block);
  }

  v2 = *&entryViewHorizontalCoverInsets_sBehavior_6368_0;
  v3 = *&entryViewHorizontalCoverInsets_sBehavior_6368_1;
  v4 = *&entryViewHorizontalCoverInsets_sBehavior_6368_2;
  v5 = *&entryViewHorizontalCoverInsets_sBehavior_6368_3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __52__CKUIBehaviorHUDPad_entryViewHorizontalCoverInsets__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 _supportsForceTouch])
  {
    v7.receiver = *(a1 + 32);
    v7.super_class = CKUIBehaviorHUDPad;
    objc_msgSendSuper2(&v7, sel_entryViewHorizontalCoverInsets);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  entryViewHorizontalCoverInsets_sBehavior_6368_0 = v3;
  entryViewHorizontalCoverInsets_sBehavior_6368_1 = v4;
  entryViewHorizontalCoverInsets_sBehavior_6368_2 = v5;
  entryViewHorizontalCoverInsets_sBehavior_6368_3 = v6;
}

@end