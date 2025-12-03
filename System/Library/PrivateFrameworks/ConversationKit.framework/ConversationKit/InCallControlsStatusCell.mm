@interface InCallControlsStatusCell
- (UIControl)actionButton;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)setActionButton:(id)button;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InCallControlsStatusCell

- (UILabel)titleLabel
{
  selfCopy = self;
  v3 = InCallControlsStatusCell.titleLabel.getter();

  return v3;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  InCallControlsStatusCell.titleLabel.setter(labelCopy);
}

- (UILabel)subtitleLabel
{
  selfCopy = self;
  v3 = InCallControlsStatusCell.subtitleLabel.getter();

  return v3;
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  InCallControlsStatusCell.subtitleLabel.setter(labelCopy);
}

- (UIControl)actionButton
{
  v2 = InCallControlsStatusCell.actionButton.getter();

  return v2;
}

- (void)setActionButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsStatusCell.actionButton.setter(button);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InCallControlsStatusCell.traitCollectionDidChange(_:)(v9);
}

@end