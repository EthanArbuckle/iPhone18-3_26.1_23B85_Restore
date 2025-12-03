@interface DetailsViewCoordinator
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller;
- (_TtC7ChatKit22DetailsViewCoordinator)init;
- (id)toolbarItemForIdentifier:(id)identifier;
- (void)closeBarButtonPressed;
- (void)configureWithToolbarController:(id)controller;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)handleCancelAction;
- (void)handleDoneAction;
- (void)previewControllerDidDismiss:(id)dismiss;
@end

@implementation DetailsViewCoordinator

- (void)contactPickerDidCancel:(id)cancel
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;
  cancelCopy = cancel;
  selfCopy = self;

  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_19084DB94(contactCopy);
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact);
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlySelectedContact) = 0;
  controllerCopy = controller;
  selfCopy = self;

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_currentlyPresentedContactSelectionNavigationController) = 0;

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
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

- (void)configureWithToolbarController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  [controllerCopy setInspectorItemProvider_];
  [controllerCopy reloadToolbarItems];
}

- (id)toolbarItemForIdentifier:(id)identifier
{
  v3._countAndFlagsBits = sub_190D56F10();
  v4 = DetailsViewCoordinator.toolbarItem(forIdentifier:)(v3);

  return v4;
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
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
  selfCopy = self;
  sub_190BE8070();
}

- (void)handleDoneAction
{
  selfCopy = self;
  sub_190BE8254();
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller
{
  if (!controller)
  {
    __break(1u);
    goto LABEL_5;
  }

  controllerCopy = controller;
  view = [controllerCopy view];
  if (!view)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v9 = view;
  [view safeAreaInsets];
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