@interface InCallControlsBaseCell
- (UILabel)titleLabel;
- (_TtC15ConversationKit19InCallControlButton)button;
- (void)didTapButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)didTapButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsBaseCell.didTapButton(_:)();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InCallControlsBaseCell.traitCollectionDidChange(_:)(v9);
}

@end