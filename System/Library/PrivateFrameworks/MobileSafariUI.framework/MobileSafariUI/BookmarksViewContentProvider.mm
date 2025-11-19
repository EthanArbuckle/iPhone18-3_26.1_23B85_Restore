@interface BookmarksViewContentProvider
- (_TtC14MobileSafariUI28BookmarksViewContentProvider)init;
- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5;
- (void)bookmark:(id)a3 didProduceNavigationIntent:(id)a4 userInfo:(id)a5;
- (void)deleteBookmark:(id)a3 userInfo:(id)a4;
- (void)editBookmark:(id)a3 userInfo:(id)a4;
- (void)readingListItemDidUpdate:(id)a3;
- (void)tabGroupManagerDidUpdateTabGroups:(id)a3;
@end

@implementation BookmarksViewContentProvider

- (void)readingListItemDidUpdate:(id)a3
{
  v4 = sub_215A6F820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F800();
  v8 = self;
  sub_215A2B1FC();

  (*(v5 + 8))(v7, v4);
}

- (_TtC14MobileSafariUI28BookmarksViewContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editBookmark:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_215A383BC(a3);

  sub_21583F14C(v10, &qword_27CA7E2E0);
}

- (void)deleteBookmark:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_215A38734(a3, v10);

  sub_21583F14C(v10, &qword_27CA7E2E0);
}

- (void)bookmark:(id)a3 didProduceNavigationIntent:(id)a4 userInfo:(id)a5
{
  if (a5)
  {
    v7 = a4;
    v8 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v9 = a4;
    v10 = self;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dispatchNavigationIntent_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21583F14C(v12, &qword_27CA7E2E0);
}

- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = self;
    v9 = a3;
    v10 = [v9 presentingViewController];
    v11 = v10;
    if (!v10)
    {
      v10 = v9;
    }

    v13 = v10;
    v12 = v11;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)a3
{
  v4 = self + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end