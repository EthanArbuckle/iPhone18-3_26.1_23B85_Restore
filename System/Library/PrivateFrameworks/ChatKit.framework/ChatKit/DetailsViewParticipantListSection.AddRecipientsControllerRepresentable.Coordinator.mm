@interface DetailsViewParticipantListSection.AddRecipientsControllerRepresentable.Coordinator
- (BOOL)recipientSelectionIsGroup:(id)group;
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller;
- (_TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator)init;
- (void)handleCancelAction;
- (void)handleDoneAction;
- (void)recipientSelectionControllerEscapePressed:(id)pressed;
- (void)recipientSelectionControllerShouldResignFirstResponder:(id)responder;
@end

@implementation DetailsViewParticipantListSection.AddRecipientsControllerRepresentable.Coordinator

- (void)handleCancelAction
{
  selfCopy = self;
  sub_190C25574();
}

- (void)handleDoneAction
{
  selfCopy = self;
  sub_190C256F0();
}

- (void)recipientSelectionControllerEscapePressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_190C26004();
}

- (BOOL)recipientSelectionIsGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  LOBYTE(self) = sub_190C26138();

  return self & 1;
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)controller
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)recipientSelectionControllerShouldResignFirstResponder:(id)responder
{
  selfCopy = self;
  sub_190C256F0();
}

- (_TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end