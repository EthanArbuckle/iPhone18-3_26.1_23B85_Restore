@interface BookmarksViewContentProvider
- (_TtC14MobileSafariUI28BookmarksViewContentProvider)init;
- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark;
- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info;
- (void)deleteBookmark:(id)bookmark userInfo:(id)info;
- (void)editBookmark:(id)bookmark userInfo:(id)info;
- (void)readingListItemDidUpdate:(id)update;
- (void)tabGroupManagerDidUpdateTabGroups:(id)groups;
@end

@implementation BookmarksViewContentProvider

- (void)readingListItemDidUpdate:(id)update
{
  v4 = sub_215A6F820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F800();
  selfCopy = self;
  sub_215A2B1FC();

  (*(v5 + 8))(v7, v4);
}

- (_TtC14MobileSafariUI28BookmarksViewContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editBookmark:(id)bookmark userInfo:(id)info
{
  if (info)
  {
    bookmarkCopy = bookmark;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    bookmarkCopy2 = bookmark;
    selfCopy2 = self;
  }

  sub_215A383BC(bookmark);

  sub_21583F14C(v10, &qword_27CA7E2E0);
}

- (void)deleteBookmark:(id)bookmark userInfo:(id)info
{
  if (info)
  {
    bookmarkCopy = bookmark;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    bookmarkCopy2 = bookmark;
    selfCopy2 = self;
  }

  sub_215A38734(bookmark, v10);

  sub_21583F14C(v10, &qword_27CA7E2E0);
}

- (void)bookmark:(id)bookmark didProduceNavigationIntent:(id)intent userInfo:(id)info
{
  if (info)
  {
    intentCopy = intent;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    intentCopy2 = intent;
    selfCopy2 = self;
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

- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark
{
  if (controller)
  {
    bookmarkCopy = bookmark;
    selfCopy = self;
    controllerCopy = controller;
    presentingViewController = [controllerCopy presentingViewController];
    v11 = presentingViewController;
    if (!presentingViewController)
    {
      presentingViewController = controllerCopy;
    }

    v13 = presentingViewController;
    v12 = v11;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)tabGroupManagerDidUpdateTabGroups:(id)groups
{
  v4 = self + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end