@interface DetailsViewParticipantListSection.AddRecipientsControllerRepresentable.Coordinator
- (BOOL)recipientSelectionIsGroup:(id)a3;
- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3;
- (_TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator)init;
- (void)handleCancelAction;
- (void)handleDoneAction;
- (void)recipientSelectionControllerEscapePressed:(id)a3;
- (void)recipientSelectionControllerShouldResignFirstResponder:(id)a3;
@end

@implementation DetailsViewParticipantListSection.AddRecipientsControllerRepresentable.Coordinator

- (void)handleCancelAction
{
  v2 = self;
  sub_190C25574();
}

- (void)handleDoneAction
{
  v2 = self;
  sub_190C256F0();
}

- (void)recipientSelectionControllerEscapePressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190C26004();
}

- (BOOL)recipientSelectionIsGroup:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_190C26138();

  return self & 1;
}

- (UIEdgeInsets)navigationBarInsetsForRecipientSelectionController:(id)a3
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

- (void)recipientSelectionControllerShouldResignFirstResponder:(id)a3
{
  v3 = self;
  sub_190C256F0();
}

- (_TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end