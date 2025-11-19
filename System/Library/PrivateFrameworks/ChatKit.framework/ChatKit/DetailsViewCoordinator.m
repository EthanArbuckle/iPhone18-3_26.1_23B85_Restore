@interface DetailsViewCoordinator
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3;
- (_TtC7ChatKit22DetailsViewCoordinator)init;
- (id)toolbarItemForIdentifier:(id)a3;
- (void)closeBarButtonPressed;
- (void)configureWithToolbarController:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)handleCancelAction;
- (void)handleDoneAction;
- (void)previewControllerDidDismiss:(id)a3;
@end

@implementation DetailsViewCoordinator

- (void)contactPickerDidCancel:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;
  v5 = a3;
  v7 = self;

  v6 = *(&v7->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(&v7->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_19084DB94(v7);
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;
  v6 = a3;
  v8 = self;

  v7 = *(&v8->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(&v8->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)closeBarButtonPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsView];

    swift_unknownObjectRelease();
  }
}

- (void)configureWithToolbarController:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 setInspectorItemProvider_];
  [v4 reloadToolbarItems];
}

- (id)toolbarItemForIdentifier:(id)a3
{
  v3._countAndFlagsBits = sub_190D56F10();
  v4 = DetailsViewCoordinator.toolbarItem(forIdentifier:)(v3);

  return v4;
}

- (void)previewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _s7ChatKit22DetailsViewCoordinatorC27previewControllerDidDismissyySo09QLPreviewG0CF_0();
}

- (_TtC7ChatKit22DetailsViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleCancelAction
{
  v2 = self;
  sub_190BE8070();
}

- (void)handleDoneAction
{
  v2 = self;
  sub_190BE8254();
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a3;
  v4 = [v3 view];
  if (!v4)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v9 = v4;
  [v4 safeAreaInsets];
  v11 = v10;

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = v11;
LABEL_6:
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

@end