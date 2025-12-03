@interface CompositionalLayout
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithCoder:(id)coder;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)section;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation CompositionalLayout

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  selfCopy = self;
  v9 = sub_18BC1ED68();
  v10 = type metadata accessor for CompositionalLayout();
  v13.receiver = selfCopy;
  v13.super_class = v10;
  v11 = [(CompositionalLayout *)&v13 layoutAttributesForItemAtIndexPath:v9];

  if (v11)
  {
    sub_18BA0F87C(v11);
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_18BA0F534(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_18B7B0AC0(0, &qword_1EA9D5BC8);
    v10 = sub_18BC20D88();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)section
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CompositionalLayout();
  return [(CompositionalLayout *)&v5 initWithSection:section];
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositionalLayout();
  return [(CompositionalLayout *)&v7 initWithSection:section configuration:configuration];
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  aBlock[4] = sub_18BA11230;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_104;
  v6 = _Block_copy(aBlock);
  sub_18BC1E1A8();

  v9.receiver = self;
  v9.super_class = type metadata accessor for CompositionalLayout();
  v7 = [(CompositionalLayout *)&v9 initWithSectionProvider:v6];

  _Block_release(v6);
  return v7;
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  aBlock[4] = sub_18BA0FE3C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_9;
  v8 = _Block_copy(aBlock);
  configurationCopy = configuration;
  sub_18BC1E1A8();

  v12.receiver = self;
  v12.super_class = type metadata accessor for CompositionalLayout();
  v10 = [(CompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:configurationCopy];

  _Block_release(v8);
  return v10;
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositionalLayout();
  coderCopy = coder;
  v5 = [(CompositionalLayout *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end