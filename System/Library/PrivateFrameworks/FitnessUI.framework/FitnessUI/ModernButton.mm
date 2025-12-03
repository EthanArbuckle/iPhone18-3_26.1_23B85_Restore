@interface ModernButton
- (_TtC9FitnessUI12ModernButton)initWithCoder:(id)coder;
- (_TtC9FitnessUI12ModernButton)initWithFrame:(CGRect)frame;
- (void)touchCancel:(id)cancel;
- (void)touchDown:(id)down;
- (void)touchDownRepeat:(id)repeat;
- (void)touchDragEnter:(id)enter;
- (void)touchDragExit:(id)exit;
- (void)touchDragInside:(id)inside;
- (void)touchDragOutside:(id)outside;
- (void)touchUpInside:(id)inside;
- (void)touchUpOutside:(id)outside;
@end

@implementation ModernButton

- (void)touchDown:(id)down
{
  selfCopy = self;
  sub_1E5D83E6C(1);
}

- (void)touchDownRepeat:(id)repeat
{
  selfCopy = self;
  sub_1E5D83E6C(2);
}

- (void)touchDragInside:(id)inside
{
  selfCopy = self;
  sub_1E5D83E6C(4);
}

- (void)touchDragOutside:(id)outside
{
  selfCopy = self;
  sub_1E5D83E6C(8);
}

- (void)touchDragEnter:(id)enter
{
  selfCopy = self;
  sub_1E5D83E6C(16);
}

- (void)touchDragExit:(id)exit
{
  selfCopy = self;
  sub_1E5D83E6C(32);
}

- (void)touchUpInside:(id)inside
{
  selfCopy = self;
  sub_1E5D83E6C(64);
}

- (void)touchUpOutside:(id)outside
{
  selfCopy = self;
  sub_1E5D83E6C(128);
}

- (void)touchCancel:(id)cancel
{
  selfCopy = self;
  sub_1E5D83E6C(256);
}

- (_TtC9FitnessUI12ModernButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents) = MEMORY[0x1E69E7CC8];
  v8.receiver = self;
  v8.super_class = type metadata accessor for ModernButton();
  return [(ModernButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9FitnessUI12ModernButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9FitnessUI12ModernButton_handlersForControlEvents) = MEMORY[0x1E69E7CC8];
  v7.receiver = self;
  v7.super_class = type metadata accessor for ModernButton();
  coderCopy = coder;
  v5 = [(ModernButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end