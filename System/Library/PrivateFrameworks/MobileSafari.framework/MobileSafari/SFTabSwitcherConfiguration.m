@interface SFTabSwitcherConfiguration
- (id)borrowedCapsuleViewProvider;
- (id)borrowedContentViewProvider;
- (id)canHandleDropSession;
- (id)canShowTips;
- (id)dragItemProvider;
- (id)dropDestinationProvider;
- (id)dropHandler;
- (id)dropOperationProvider;
- (id)itemCloseHandler;
- (id)itemMoveHandler;
- (id)itemPinHandler;
- (id)itemSelectionHandler;
- (id)pageRetitleHandler;
- (id)pageTitleMenuProvider;
- (id)profileMenuProvider;
- (id)recentlyClosedMenuProvider;
- (id)relinquishBorrowedCapsuleView;
- (id)relinquishBorrowedContentView;
- (id)showPagePickerSheet;
- (id)toggleSidebarHandler;
@end

@implementation SFTabSwitcherConfiguration

- (id)relinquishBorrowedCapsuleView
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedCapsuleView + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedCapsuleView);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B8370CC;
  v5[3] = &block_descriptor_293_0;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)showPagePickerSheet
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_showPagePickerSheet + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_showPagePickerSheet);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA892B8;
  v5[3] = &block_descriptor_280;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)toggleSidebarHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_toggleSidebarHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_toggleSidebarHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B7B0DB0;
  v5[3] = &block_descriptor_259;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)borrowedCapsuleViewProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedCapsuleViewProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedCapsuleViewProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA93DEC;
  v5[3] = &block_descriptor_444;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)borrowedContentViewProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedContentViewProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_borrowedContentViewProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA93DEC;
  v5[3] = &block_descriptor_438;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)canHandleDropSession
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_canHandleDropSession + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_canHandleDropSession);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA87CA8;
  v5[3] = &block_descriptor_425;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)canShowTips
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_canShowTips + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_canShowTips);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA87DBC;
  v5[3] = &block_descriptor_419;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)dragItemProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dragItemProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dragItemProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA87F04;
  v5[3] = &block_descriptor_399;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)dropDestinationProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropDestinationProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropDestinationProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA880C4;
  v5[3] = &block_descriptor_393;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)dropHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B8370CC;
  v5[3] = &block_descriptor_387;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)dropOperationProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropOperationProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_dropOperationProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA882B8;
  v5[3] = &block_descriptor_381;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)itemCloseHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemCloseHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemCloseHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA88404;
  v5[3] = &block_descriptor_368;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)itemMoveHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemMoveHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemMoveHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA8881C;
  v5[3] = &block_descriptor_349;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)itemPinHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemPinHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemPinHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA889E8;
  v5[3] = &block_descriptor_343;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)itemSelectionHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemSelectionHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_itemSelectionHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B8370CC;
  v5[3] = &block_descriptor_337;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)pageRetitleHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_pageRetitleHandler + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_pageRetitleHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA88C68;
  v5[3] = &block_descriptor_324;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)pageTitleMenuProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_pageTitleMenuProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_pageTitleMenuProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA88DB0;
  v5[3] = &block_descriptor_318;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)profileMenuProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_profileMenuProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_profileMenuProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B9CBA44;
  v5[3] = &block_descriptor_312;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)recentlyClosedMenuProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_recentlyClosedMenuProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_recentlyClosedMenuProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA93DEC;
  v5[3] = &block_descriptor_306;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (id)relinquishBorrowedContentView
{
  v2 = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedContentView + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSwitcherConfiguration_relinquishBorrowedContentView);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA89234;
  v5[3] = &block_descriptor_286;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

@end