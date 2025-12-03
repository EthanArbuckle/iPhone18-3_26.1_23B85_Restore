@interface RecentsCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)trailingAccessoryView;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didDoubleTapWithGesture:(id)gesture;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RecentsCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  RecentsCollectionViewCell.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = RecentsCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  RecentsCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
}

- (void)didDoubleTapWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  RecentsCollectionViewCell.didDoubleTap(gesture:)(gestureCopy);
}

- (UIView)trailingAccessoryView
{
  selfCopy = self;
  v3 = RecentsCollectionViewCell.trailingAccessoryView.getter();

  return v3;
}

@end