@interface SFEditBookmarkCollectionViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC12MobileSafari38SFEditBookmarkCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC12MobileSafari38SFEditBookmarkCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)deleteBookmark;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SFEditBookmarkCollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_18B9B2FA8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SFEditBookmarkCollectionViewController();
  v4 = v7.receiver;
  [(SFEditBookmarkCollectionViewController *)&v7 viewDidAppear:v3];
  if ([objc_opt_self() isInHardwareKeyboardMode])
  {
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_titleField];
    if (v5)
    {
      v6 = v5;
      [v6 becomeFirstResponder];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFEditBookmarkCollectionViewController();
  v4 = v5.receiver;
  [(SFEditBookmarkCollectionViewController *)&v5 viewDidDisappear:v3];
  if (v4[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_shouldSaveAtDismissal] == 1 && (v4[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isDeletingBookmark] & 1) == 0 && sub_18B9B068C())
  {
    sub_18B9B3D1C();
  }
}

- (void)deleteBookmark
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isDeletingBookmark) = 1;
  v3 = (self + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = self;
    sub_18B824D48(v4);
    v4(v5);

    sub_18B7B171C(v4);
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_18B9B8348();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  sub_18B9B4240(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC12MobileSafari38SFEditBookmarkCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12MobileSafari38SFEditBookmarkCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end