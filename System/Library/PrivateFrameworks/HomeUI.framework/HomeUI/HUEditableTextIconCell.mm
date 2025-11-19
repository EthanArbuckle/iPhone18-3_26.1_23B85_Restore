@interface HUEditableTextIconCell
- (HFItem)item;
- (void)prepareForReuse;
- (void)setItem:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUEditableTextIconCell

- (HFItem)item
{
  v3 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)a3
{
  v5 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EditableTextIconCell();
  v2 = v5.receiver;
  [(HUEditableTextCollectionListCell *)&v5 prepareForReuse];
  v3 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  swift_beginAccess();
  *&v2[v3] = 1;
  v4 = sub_20D028A84();
  [v4 updateWithIconDescriptor:0 displayStyle:*&v2[v3] animated:0];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = self;
  sub_20D0290D8(a3);
}

- (void)updateConstraints
{
  v2 = self;
  sub_20D02955C();
}

@end