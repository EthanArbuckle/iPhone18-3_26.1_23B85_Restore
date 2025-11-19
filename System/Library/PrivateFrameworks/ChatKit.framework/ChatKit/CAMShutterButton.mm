@interface CAMShutterButton
@end

@implementation CAMShutterButton

uint64_t __62__CAMShutterButton_CKActionMenuItemView__setEnabled_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) & 1) == 0;

  return [v2 setShowDisabled:v3];
}

@end