@interface CompositionalLayout
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithCoder:(id)a3;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)a3;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
@end

@implementation CompositionalLayout

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v8 = self;
  v9 = sub_18BC1ED68();
  v10 = type metadata accessor for CompositionalLayout();
  v13.receiver = v8;
  v13.super_class = v10;
  v11 = [(CompositionalLayout *)&v13 layoutAttributesForItemAtIndexPath:v9];

  if (v11)
  {
    sub_18BA0F87C(v11);
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CompositionalLayout();
  return [(CompositionalLayout *)&v5 initWithSection:a3];
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositionalLayout();
  return [(CompositionalLayout *)&v7 initWithSection:a3 configuration:a4];
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)a3
{
  v4 = _Block_copy(a3);
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

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
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
  v9 = a4;
  sub_18BC1E1A8();

  v12.receiver = self;
  v12.super_class = type metadata accessor for CompositionalLayout();
  v10 = [(CompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:v9];

  _Block_release(v8);
  return v10;
}

- (_TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositionalLayout();
  v4 = a3;
  v5 = [(CompositionalLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end