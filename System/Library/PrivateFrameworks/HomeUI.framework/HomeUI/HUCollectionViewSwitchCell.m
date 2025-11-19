@interface HUCollectionViewSwitchCell
- (HFItem)item;
- (_TtC6HomeUI26HUCollectionViewSwitchCell)initWithCoder:(id)a3;
- (_TtP6HomeUI34HUCollectionViewSwitchCellDelegate_)delegate;
- (void)_toggleOn;
- (void)prepareForReuse;
- (void)setDelegate:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUCollectionViewSwitchCell

- (HFItem)item
{
  v3 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)setDisabled:(BOOL)a3
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) != a3)
  {
    *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) = a3;
    v4 = self;
    sub_20D096A38(0);
  }
}

- (_TtP6HomeUI34HUCollectionViewSwitchCellDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC6HomeUI26HUCollectionViewSwitchCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) = 0;
  v4 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView;
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate) = 0;
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HUCollectionViewSwitchCell();
  v2 = v3.receiver;
  [(HUCollectionViewSwitchCell *)&v3 prepareForReuse];
  if (v2[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled] == 1)
  {
    v2[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled] = 0;
    sub_20D096A38(0);
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_20D096A38(v3);
}

- (void)_toggleOn
{
  v2 = self;
  sub_20D096F28();
}

@end