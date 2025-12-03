@interface MTUITonePickerStyleProvider
- (UIEdgeInsets)tonePickerHeaderTextPaddingInsets;
- (UIEdgeInsets)vibrationPickerHeaderTextPaddingInsets;
- (UIOffset)tonePickerHeaderTextShadowOffset;
- (UIOffset)vibrationPickerHeaderTextShadowOffset;
- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)cell;
- (id)newBackgroundViewForSelectedVibrationPickerCell:(BOOL)cell;
@end

@implementation MTUITonePickerStyleProvider

- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)cell
{
  if (!cell)
  {
    return 0;
  }

  v3 = objc_opt_new();
  mtui_cellHighlightColor = [MEMORY[0x277D75348] mtui_cellHighlightColor];
  [v3 setBackgroundColor:mtui_cellHighlightColor];

  return v3;
}

- (UIOffset)tonePickerHeaderTextShadowOffset
{
  v2 = *MEMORY[0x277D76DA8];
  v3 = *(MEMORY[0x277D76DA8] + 8);
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)tonePickerHeaderTextPaddingInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)newBackgroundViewForSelectedVibrationPickerCell:(BOOL)cell
{
  if (!cell)
  {
    return 0;
  }

  v3 = objc_opt_new();
  mtui_cellHighlightColor = [MEMORY[0x277D75348] mtui_cellHighlightColor];
  [v3 setBackgroundColor:mtui_cellHighlightColor];

  return v3;
}

- (UIOffset)vibrationPickerHeaderTextShadowOffset
{
  v2 = *MEMORY[0x277D76DA8];
  v3 = *(MEMORY[0x277D76DA8] + 8);
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)vibrationPickerHeaderTextPaddingInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end