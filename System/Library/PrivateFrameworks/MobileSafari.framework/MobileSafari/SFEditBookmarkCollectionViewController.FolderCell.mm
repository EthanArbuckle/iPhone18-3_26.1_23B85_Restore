@interface SFEditBookmarkCollectionViewController.FolderCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation SFEditBookmarkCollectionViewController.FolderCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_18BB6F260();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  sub_18BB6F3B8(v7);

  (*(v5 + 8))(v7, v4);
}

@end