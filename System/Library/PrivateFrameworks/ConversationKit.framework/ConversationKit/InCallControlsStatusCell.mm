@interface InCallControlsStatusCell
- (UIControl)actionButton;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)setActionButton:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InCallControlsStatusCell

- (UILabel)titleLabel
{
  v2 = self;
  v3 = InCallControlsStatusCell.titleLabel.getter();

  return v3;
}

- (void)setTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsStatusCell.titleLabel.setter(v4);
}

- (UILabel)subtitleLabel
{
  v2 = self;
  v3 = InCallControlsStatusCell.subtitleLabel.getter();

  return v3;
}

- (void)setSubtitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsStatusCell.subtitleLabel.setter(v4);
}

- (UIControl)actionButton
{
  v2 = InCallControlsStatusCell.actionButton.getter();

  return v2;
}

- (void)setActionButton:(id)a3
{
  v5 = a3;
  v6 = self;
  InCallControlsStatusCell.actionButton.setter(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InCallControlsStatusCell.traitCollectionDidChange(_:)(v9);
}

@end