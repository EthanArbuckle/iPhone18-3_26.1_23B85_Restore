@interface DBAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (NSArray)keysToAnimate;
- (_TtC9DashBoard15DBAnimationView)initWithCoder:(id)a3;
- (_TtC9DashBoard15DBAnimationView)initWithFrame:(CGRect)a3;
- (void)setKeysToAnimate:(id)a3;
@end

@implementation DBAnimationView

- (NSArray)keysToAnimate
{
  swift_beginAccess();

  v2 = sub_248383B00();

  return v2;
}

- (void)setKeysToAnimate:(id)a3
{
  v4 = sub_248383B10();
  v5 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DBAnimationView._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (_TtC9DashBoard15DBAnimationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate) = MEMORY[0x277D84F90];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DBAnimationView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC9DashBoard15DBAnimationView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate) = MEMORY[0x277D84F90];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DBAnimationView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end