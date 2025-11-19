@interface FolderPageIndicatorProvider
- (_TtC15ControlCenterUI27FolderPageIndicatorProvider)init;
- (void)folder:(id)a3 didAddList:(id)a4;
- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5;
- (void)folder:(id)a3 listHiddenDidChange:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconList:(void *)a3 didRemoveIcon:;
@end

@implementation FolderPageIndicatorProvider

- (void)iconList:(void *)a3 didRemoveIcon:
{
  v4 = a3;
  v5 = a1;
  sub_21EA4D224(v4);
}

- (void)folder:(id)a3 didAddList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  if (([v6 isExtraList_] & 1) == 0)
  {
    [v7 addListObserver_];
  }

  sub_21EA4D0DC();
}

- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5
{
  v7 = sub_21EAA85C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EA4E894();
  v11 = sub_21EAA8EC0();
  sub_21EAA85B0();
  v12 = a3;
  v13 = self;
  sub_21EA4E4F8(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)folder:(id)a3 listHiddenDidChange:(id)a4
{
  v4 = self;
  sub_21EA4D0DC();
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v6 = a3;
  v7 = self;
  sub_21EA4D224(v6);
}

- (_TtC15ControlCenterUI27FolderPageIndicatorProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end