@interface HUPopUpMenuIconCollectionListCell
- (HUPopUpMenuIconCollectionListCell)initWithCoder:(id)a3;
- (HUPopUpMenuIconCollectionListCell)initWithFrame:(CGRect)a3;
- (id)_buildAccessories;
- (void)prepareForReuse;
@end

@implementation HUPopUpMenuIconCollectionListCell

- (id)_buildAccessories
{
  v2 = self;
  sub_20CF87E7C();

  sub_20CECF940(0, &qword_27C81DBE8);
  v3 = sub_20D567A58();

  return v3;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  v2 = v5.receiver;
  [(HUPopUpMenuIconCollectionListCell *)&v5 prepareForReuse];
  v3 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v4 = *&v2[v3];
  *&v2[v3] = 0;
}

- (HUPopUpMenuIconCollectionListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  return [(HUIconCollectionListCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUPopUpMenuIconCollectionListCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  v4 = a3;
  v5 = [(HUPopUpMenuIconCollectionListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end