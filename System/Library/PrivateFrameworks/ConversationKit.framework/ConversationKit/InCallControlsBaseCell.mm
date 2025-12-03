@interface InCallControlsBaseCell
- (UILabel)titleLabel;
- (_TtC15ConversationKit19InCallControlButton)button;
- (void)didTapButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InCallControlsBaseCell

- (UILabel)titleLabel
{
  v2 = InCallControlsBaseCell.titleLabel.getter();

  return v2;
}

- (_TtC15ConversationKit19InCallControlButton)button
{
  v2 = InCallControlsBaseCell.button.getter();

  return v2;
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsBaseCell.didTapButton(_:)();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InCallControlsBaseCell.traitCollectionDidChange(_:)(v9);
}

@end