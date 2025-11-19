@interface AddedBookmarkToastViewController
- (AddedBookmarkToastViewController)initWithBookmark:(id)a3 bookmarkCollection:(id)a4 dismissCompletionHandler:(id)a5;
- (AddedBookmarkToastViewController)initWithCoder:(id)a3;
- (AddedBookmarkToastViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)suggestedFolders;
- (TabGroupProvider)tabGroupProvider;
- (UIEdgeInsets)toastObscuredEdgeInsets;
- (id)dismissCompletionHandler;
- (int64_t)toastPlacement;
- (void)cancelDismissTimer;
- (void)loadView;
- (void)presentEditBookmarkController;
- (void)setDismissTimer:(id)a3;
- (void)setSuggestedFolders:(id)a3;
- (void)setToastObscuredEdgeInsets:(UIEdgeInsets)a3;
- (void)setToastPlacement:(int64_t)a3;
- (void)startDismissTimer;
- (void)viewDidLoad;
@end

@implementation AddedBookmarkToastViewController

- (AddedBookmarkToastViewController)initWithBookmark:(id)a3 bookmarkCollection:(id)a4 dismissCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_215A54FD4(a3, a4, sub_215A5769C, v8);
}

- (AddedBookmarkToastViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR___AddedBookmarkToastViewController_dismissTimer) = 0;
  *(self + OBJC_IVAR___AddedBookmarkToastViewController_suggestedFolders) = MEMORY[0x277D84F90];
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets);
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  v4[1] = v5;
  result = sub_215A70CB0();
  __break(1u);
  return result;
}

- (id)dismissCompletionHandler
{
  v2 = *(self + OBJC_IVAR___AddedBookmarkToastViewController_dismissCompletionHandler + 8);
  v5[4] = *(self + OBJC_IVAR___AddedBookmarkToastViewController_dismissCompletionHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2159F7E08;
  v5[3] = &block_descriptor_42;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setDismissTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR___AddedBookmarkToastViewController_dismissTimer);
  *(self + OBJC_IVAR___AddedBookmarkToastViewController_dismissTimer) = a3;
  v3 = a3;
}

- (NSArray)suggestedFolders
{
  swift_beginAccess();
  sub_2159F7DA8(0, &unk_2811A28A0);

  v2 = sub_215A705D0();

  return v2;
}

- (void)setSuggestedFolders:(id)a3
{
  sub_2159F7DA8(0, &unk_2811A28A0);
  v4 = sub_215A705E0();
  v5 = OBJC_IVAR___AddedBookmarkToastViewController_suggestedFolders;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (TabGroupProvider)tabGroupProvider
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIEdgeInsets)toastObscuredEdgeInsets
{
  v2 = (self + OBJC_IVAR___AddedBookmarkToastViewController_toastObscuredEdgeInsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setToastObscuredEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  AddedBookmarkToastViewController.toastObscuredEdgeInsets.setter(top, left, bottom, right);
}

- (int64_t)toastPlacement
{
  v2 = self;
  result = [(AddedBookmarkToastViewController *)v2 view];
  if (result)
  {
    v4 = result;

    type metadata accessor for AddedBookmarkToastInteractionView();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC14MobileSafariUI33AddedBookmarkToastInteractionView_toastPlacement);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setToastPlacement:(int64_t)a3
{
  v4 = self;
  AddedBookmarkToastViewController.toastPlacement.setter(a3);
}

- (void)loadView
{
  v2 = self;
  AddedBookmarkToastViewController.loadView()();
}

- (void)viewDidLoad
{
  v3 = sub_215A700D0();
  MEMORY[0x28223BE20](v3);
  v5.receiver = self;
  v5.super_class = AddedBookmarkToastViewController;
  v4 = self;
  [(AddedBookmarkToastViewController *)&v5 viewDidLoad];
  sub_215A70970();
  sub_215A700B0();
  sub_215A70980();
}

- (void)startDismissTimer
{
  v2 = self;
  sub_215A563F8();
}

- (void)cancelDismissTimer
{
  v3 = self;
  v2 = [(AddedBookmarkToastViewController *)v3 dismissTimer];
  [(NSTimer *)v2 invalidate];

  [(AddedBookmarkToastViewController *)v3 setDismissTimer:0];
}

- (void)presentEditBookmarkController
{
  v2 = self;
  sub_215A56658();
}

- (AddedBookmarkToastViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end