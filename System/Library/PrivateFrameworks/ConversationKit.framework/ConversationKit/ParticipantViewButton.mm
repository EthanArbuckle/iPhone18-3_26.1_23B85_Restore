@interface ParticipantViewButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation ParticipantViewButton

- (BOOL)isSelected
{
  v2 = self;
  v3 = ParticipantViewButton.isSelected.getter();

  return v3 & 1;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  ParticipantViewButton.isSelected.setter(a3);
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = ParticipantViewButton.isHighlighted.getter();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  ParticipantViewButton.isHighlighted.setter(a3);
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = ParticipantViewButton.isEnabled.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  ParticipantViewButton.isEnabled.setter(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  ParticipantViewButton.layoutSubviews()();
}

@end