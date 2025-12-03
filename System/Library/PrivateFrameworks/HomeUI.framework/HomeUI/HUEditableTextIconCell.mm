@interface HUEditableTextIconCell
- (HFItem)item;
- (void)prepareForReuse;
- (void)setItem:(id)item;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUEditableTextIconCell

- (HFItem)item
{
  v3 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.super.isa + v3);
}

- (void)setItem:(id)item
{
  v5 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.super.isa + v5) = item;
  itemCopy = item;
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  selfCopy = self;
  sub_20D0290D8(animation);
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_20D02955C();
}

@end