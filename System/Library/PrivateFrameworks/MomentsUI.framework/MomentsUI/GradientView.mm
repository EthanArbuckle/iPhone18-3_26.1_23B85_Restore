@interface GradientView
- (_TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView)initWithCoder:(id)coder;
- (_TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation GradientView

- (_TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView_gradient) = v9;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v10 = v9;
  height = [(GradientView *)&v14 initWithFrame:x, y, width, height];
  v12 = [(GradientView *)height layer:v14.receiver];
  [v12 addSublayer_];

  return height;
}

- (_TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(GradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9MomentsUIP33_F25610CE9E90E29B6B7C67E2D8ADA9C612GradientView_gradient];
  [v2 frame];
  [v3 setFrame_];
}

@end