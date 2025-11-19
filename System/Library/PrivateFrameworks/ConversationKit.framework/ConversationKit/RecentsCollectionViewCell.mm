@interface RecentsCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)trailingAccessoryView;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didDoubleTapWithGesture:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RecentsCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  RecentsCollectionViewCell.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = RecentsCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  RecentsCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
}

- (void)didDoubleTapWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsCollectionViewCell.didDoubleTap(gesture:)(v4);
}

- (UIView)trailingAccessoryView
{
  v2 = self;
  v3 = RecentsCollectionViewCell.trailingAccessoryView.getter();

  return v3;
}

@end