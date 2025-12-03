@interface SFBookmarksCollectionViewController.DetailRowCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation SFBookmarksCollectionViewController.DetailRowCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_18BB84640();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  v9 = sub_18BC1F708();
  v10 = _s13DetailRowCellCMa();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(SFBookmarksCollectionViewController.DetailRowCell *)&v11 _bridgedUpdateConfigurationUsingState:v9];

  LOBYTE(v9) = sub_18BC1F6E8();
  [(UIView *)selfCopy safari_updateVisualStateIsSelected:v9 & 1 isEditing:sub_18BC1F728() & 1];

  (*(v5 + 8))(v7, v4);
}

@end