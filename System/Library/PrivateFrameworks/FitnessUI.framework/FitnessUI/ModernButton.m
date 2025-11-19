@interface ModernButton
- (_TtC9FitnessUI12ModernButton)initWithCoder:(id)a3;
- (_TtC9FitnessUI12ModernButton)initWithFrame:(CGRect)a3;
- (void)touchCancel:(id)a3;
- (void)touchDown:(id)a3;
- (void)touchDownRepeat:(id)a3;
- (void)touchDragEnter:(id)a3;
- (void)touchDragExit:(id)a3;
- (void)touchDragInside:(id)a3;
- (void)touchDragOutside:(id)a3;
- (void)touchUpInside:(id)a3;
- (void)touchUpOutside:(id)a3;
@end

@implementation ModernButton

- (void)touchDown:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(1);
}

- (void)touchDownRepeat:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(2);
}

- (void)touchDragInside:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(4);
}

- (void)touchDragOutside:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(8);
}

- (void)touchDragEnter:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(16);
}

- (void)touchDragExit:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(32);
}

- (void)touchUpInside:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(64);
}

- (void)touchUpOutside:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(128);
}

- (void)touchCancel:(id)a3
{
  v3 = self;
  sub_1E5D83E6C(256);
}

- (_TtC9FitnessUI12ModernButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents) = MEMORY[0x1E69E7CC8];
  v8.receiver = self;
  v8.super_class = type metadata accessor for ModernButton();
  return [(ModernButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9FitnessUI12ModernButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents) = MEMORY[0x1E69E7CC8];
  v7.receiver = self;
  v7.super_class = type metadata accessor for ModernButton();
  v4 = a3;
  v5 = [(ModernButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end