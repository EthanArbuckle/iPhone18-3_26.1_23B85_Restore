@interface DBAnimationView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (NSArray)keysToAnimate;
- (_TtC9DashBoard15DBAnimationView)initWithCoder:(id)coder;
- (_TtC9DashBoard15DBAnimationView)initWithFrame:(CGRect)frame;
- (void)setKeysToAnimate:(id)animate;
@end

@implementation DBAnimationView

- (NSArray)keysToAnimate
{
  swift_beginAccess();

  v2 = sub_248383B00();

  return v2;
}

- (void)setKeysToAnimate:(id)animate
{
  v4 = sub_248383B10();
  v5 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DBAnimationView._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (_TtC9DashBoard15DBAnimationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate) = MEMORY[0x277D84F90];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DBAnimationView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC9DashBoard15DBAnimationView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate) = MEMORY[0x277D84F90];
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(DBAnimationView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end