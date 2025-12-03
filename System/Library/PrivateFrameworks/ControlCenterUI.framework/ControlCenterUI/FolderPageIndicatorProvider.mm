@interface FolderPageIndicatorProvider
- (_TtC15ControlCenterUI27FolderPageIndicatorProvider)init;
- (void)folder:(id)folder didAddList:(id)list;
- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)folder:(id)folder listHiddenDidChange:(id)change;
- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconList:(void *)list didRemoveIcon:;
@end

@implementation FolderPageIndicatorProvider

- (void)iconList:(void *)list didRemoveIcon:
{
  listCopy = list;
  selfCopy = self;
  sub_21EA4D224(listCopy);
}

- (void)folder:(id)folder didAddList:(id)list
{
  folderCopy = folder;
  listCopy = list;
  selfCopy = self;
  if (([folderCopy isExtraList_] & 1) == 0)
  {
    [listCopy addListObserver_];
  }

  sub_21EA4D0DC();
}

- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes
{
  v7 = sub_21EAA85C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EA4E894();
  v11 = sub_21EAA8EC0();
  sub_21EAA85B0();
  folderCopy = folder;
  selfCopy = self;
  sub_21EA4E4F8(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)folder:(id)folder listHiddenDidChange:(id)change
{
  selfCopy = self;
  sub_21EA4D0DC();
}

- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  listCopy = list;
  selfCopy = self;
  sub_21EA4D224(listCopy);
}

- (_TtC15ControlCenterUI27FolderPageIndicatorProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end