@interface TapbackPickerCollectionViewCell
- (BOOL)isSelected;
- (CGPoint)center;
- (CGRect)tapbackContentContainerRect;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCenter:(CGPoint)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation TapbackPickerCollectionViewCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  return [(TapbackPickerCollectionViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  v4 = v5.receiver;
  [(TapbackPickerCollectionViewCell *)&v5 setSelected:v3];
  [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190BD26BC();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_190D531F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D531E0();
  v8 = self;
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

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v2 = self;
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s7ChatKit31TapbackPickerCollectionViewCellC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0();

  return v9;
}

@end