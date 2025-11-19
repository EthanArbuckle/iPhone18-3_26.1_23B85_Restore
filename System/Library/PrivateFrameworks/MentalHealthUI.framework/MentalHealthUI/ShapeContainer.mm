@interface ShapeContainer
+ (Class)layerClass;
- (_TtC14MentalHealthUI14ShapeContainer)initWithCoder:(id)a3;
- (_TtC14MentalHealthUI14ShapeContainer)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation ShapeContainer

+ (Class)layerClass
{
  sub_258AFD0A4();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ShapeContainer *)&v3 layoutSubviews];
  sub_258AFB04C();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_258AFD58C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_258B02D44();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
  sub_258B02D24();
  v10 = v9;
  v11 = self;
  v12 = sub_258B02D14();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  sub_258A8F398(0, 0, v7, &unk_258B35800, v13);

  v15.receiver = v11;
  v15.super_class = ObjectType;
  [(ShapeContainer *)&v15 dealloc];
}

- (_TtC14MentalHealthUI14ShapeContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer) = 0;
  v9 = (self + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds);
  *v9 = 0u;
  v9[1] = 0u;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ShapeContainer *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC14MentalHealthUI14ShapeContainer)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer) = 0;
  v6 = (self + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds);
  *v6 = 0u;
  v6[1] = 0u;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(ShapeContainer *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end