@interface CAMShutterButton(CKActionMenuItemView)
+ (uint64_t)actionMenuShutterButton;
- (uint64_t)setSelected:()CKActionMenuItemView animated:;
- (void)setEnabled:()CKActionMenuItemView animated:;
@end

@implementation CAMShutterButton(CKActionMenuItemView)

+ (uint64_t)actionMenuShutterButton
{
  v0 = MEMORY[0x1E69938E0];
  CAMShutterButtonSpecMake();

  return [v0 shutterButtonWithSpec:?];
}

- (void)setEnabled:()CKActionMenuItemView animated:
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CAMShutterButton_CKActionMenuItemView__setEnabled_animated___block_invoke;
  v7[3] = &unk_1E72ED8D8;
  v7[4] = self;
  v8 = a3;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (a4)
  {
    [CKActionMenuItem animate:v5 completion:0];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

- (uint64_t)setSelected:()CKActionMenuItemView animated:
{
  result = [self mode];
  if ((result & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (a3)
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    return [self setMode:v8 animated:a4];
  }

  return result;
}

@end