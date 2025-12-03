@interface GPVFXView
- (CGRect)frame;
- (_TtC23ImagePlaygroundInternal9GPVFXView)init;
- (_TtC23ImagePlaygroundInternal9GPVFXView)initWithFrame:(CGRect)frame;
- (_TtC23ImagePlaygroundInternal9GPVFXView)initWithFrame:(CGRect)frame options:(id)options;
- (void)setFrame:(CGRect)frame;
@end

@implementation GPVFXView

- (_TtC23ImagePlaygroundInternal9GPVFXView)init
{
  v2 = [(GPVFXView *)self initWithFrame:0 options:0.0, 0.0, 0.0, 0.0];
  sub_1D2878568();
  v5[2] = v2;
  v3 = v2;
  sub_1D239DDE8(sub_1D277BEE8, v5);

  return v3;
}

- (_TtC23ImagePlaygroundInternal9GPVFXView)initWithFrame:(CGRect)frame options:(id)options
{
  if (options)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v8 = sub_1D2877E98();
    frame.origin.x = x;
    frame.origin.y = y;
    frame.size.width = width;
    frame.size.height = height;
  }

  else
  {
    v8 = 0;
  }

  return sub_1D277AC70(v8, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(GPVFXView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v21 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v23.receiver = self;
  v23.super_class = ObjectType;
  selfCopy = self;
  [(GPVFXView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v18 = height;
  v19 = CGRectGetHeight(v24);
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  if (CGRectGetHeight(v25) < v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [(GPVFXView *)selfCopy setContentMode:v20];
  v22.receiver = selfCopy;
  v22.super_class = ObjectType;
  [(GPVFXView *)&v22 setFrame:x, y, v21, v18];
}

- (_TtC23ImagePlaygroundInternal9GPVFXView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end