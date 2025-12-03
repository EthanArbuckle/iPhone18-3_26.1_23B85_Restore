@interface SFBookmarksCollectionViewController.BookmarkTileCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation SFBookmarksCollectionViewController.BookmarkTileCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  v9 = sub_18BC1F708();
  v10 = _s16BookmarkTileCellCMa();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  [(SFBookmarksCollectionViewController.BookmarkTileCell *)&v14 _bridgedUpdateConfigurationUsingState:v9];

  LOBYTE(v9) = sub_18BC1F6E8();
  [(UIView *)selfCopy safari_updateVisualStateIsSelected:v9 & 1 isEditing:sub_18BC1F728() & 1];
  contentView = [(SFBookmarksCollectionViewController.BookmarkTileCell *)selfCopy contentView];
  v12 = sub_18BC1F728();
  v13 = 1.0;
  if (v12)
  {
    v13 = 0.5;
  }

  [contentView setAlpha_];

  (*(v5 + 8))(v7, v4);
}

@end