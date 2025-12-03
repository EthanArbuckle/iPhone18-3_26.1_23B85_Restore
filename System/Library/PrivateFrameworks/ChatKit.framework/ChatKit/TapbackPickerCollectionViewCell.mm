@interface TapbackPickerCollectionViewCell
- (BOOL)isSelected;
- (CGPoint)center;
- (CGRect)tapbackContentContainerRect;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCenter:(CGPoint)center;
- (void)setSelected:(BOOL)selected;
@end

@implementation TapbackPickerCollectionViewCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  return [(TapbackPickerCollectionViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  v4 = v5.receiver;
  [(TapbackPickerCollectionViewCell *)&v5 setSelected:selectedCopy];
  [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190BD26BC();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_190D531F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D531E0();
  selfCopy = self;
  sub_190BD2860();

  (*(v5 + 8))(v7, v4);
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  [(TapbackPickerCollectionViewCell *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  v5 = v7.receiver;
  [(TapbackPickerCollectionViewCell *)&v7 setCenter:x, y];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackPickerCellCenterPointDidChange_];
    swift_unknownObjectRelease();
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_190BD4300();
}

- (CGRect)tapbackContentContainerRect
{
  [(TapbackPickerCollectionViewCell *)self bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s7ChatKit31TapbackPickerCollectionViewCellC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0();

  return v9;
}

@end